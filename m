Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A0019F7BC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 16:16:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oKP3796sP7Dz4+PF1qfsTxpo/FIQsm4H7TJydNcEOk0=; b=QkSf+iT6uUaBus
	MWqLCjEPJcoRj6whEBTM6xoni/jUInjfrs2+6KdrpzcAm0Etbt7jcdskpDPGkRe64Agw4LuI9K+9w
	hQsQsUnopOQSWs0PW6yi1/3dHtuECZP3sOBc2XS6NvO4Ury8Tqu24hFz6xrk64x/70b8LzxIAIG76
	e4R5kWw89x4fs/n2YHIKBtf/EjdfZGf4KtJ1HSPgWARh1cv6mWz0FhhOT0HviGW8fUk3ccFal9yko
	28t31V76L8btOgtMZeYAcsFboMVfpT1yCZfKUBHA5B8IAPWDmOaKtrJ7ZP/LaT5qHDRxTbF0gRzhz
	xi0zPUp45SO2IX6LM0kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLSY1-0007kj-5I; Mon, 06 Apr 2020 14:16:21 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLSXv-0007jo-45
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 14:16:16 +0000
X-Originating-IP: 84.210.220.251
Received: from [192.168.1.123] (cm-84.210.220.251.getinternet.no
 [84.210.220.251]) (Authenticated sender: fredrik@strupe.net)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 114CC20005;
 Mon,  6 Apr 2020 14:16:07 +0000 (UTC)
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Will Deacon <will.deacon@arm.com>, Catalin Marinas <catalin.marinas@arm.com>
From: Fredrik Strupe <fredrik@strupe.net>
Subject: [PATCH] arm64: armv8_deprecated: Fix undef_hook mask for thumb setend
Message-ID: <911db2f1-e078-a460-32ee-154a0b4de5d4@strupe.net>
Date: Mon, 6 Apr 2020 16:16:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_071615_297338_39736AEE 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use a full 32-bit mask to prevent accidental matchings of thumb32
instructions where the second half-word is equal to the thumb16 setend
encoding.

This fixes the same problem as the following patch:

     https://lkml.org/lkml/2020/3/16/341

but for setend emulation instead.

Signed-off-by: Fredrik Strupe <fredrik@strupe.net>
---
  arch/arm64/kernel/armv8_deprecated.c | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/armv8_deprecated.c b/arch/arm64/kernel/armv8_deprecated.c
index 9d3442d62..8c06dfee0 100644
--- a/arch/arm64/kernel/armv8_deprecated.c
+++ b/arch/arm64/kernel/armv8_deprecated.c
@@ -609,7 +609,7 @@ static struct undef_hook setend_hooks[] = {
  	},
  	{
  		/* Thumb mode */
-		.instr_mask	= 0x0000fff7,
+		.instr_mask	= 0xfffffff7,
  		.instr_val	= 0x0000b650,
  		.pstate_mask	= (PSR_AA32_T_BIT | PSR_AA32_MODE_MASK),
  		.pstate_val	= (PSR_AA32_T_BIT | PSR_AA32_MODE_USR),
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
