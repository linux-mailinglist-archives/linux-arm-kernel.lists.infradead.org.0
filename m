Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B3BF50F2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 17:21:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l8+nQJ9yRjMErjkUG1CMMpsGgsjw6wZCyvNEQEGOIdc=; b=GYA9wWCdow0QjR
	upQsF0nYRKW3vU5Cftw388rwOd5wNB1ZNxWxqeJ3eMmfDNM/m31PhiYoT5LBoLlj+llKc1NrHIlAQ
	ejWx38yXGPMJ8eKHzwyU1eOaZZnw8vd5vZeMU9PfXGUCgvPm3OqpQKRsJT+EnrJkCZxGWGWb0C5kA
	Q+/6TkVCKP0/RCr1soxtgPGOaWsW0dGlQRcJk1DOYikfIcxuDhpLSAQ9OX4N8llQSn8DsaJ7ullcC
	TG5tgEBb9HTXeJhU/obGI0/x5KegwBU5UnWchLRLemR4vtTjpdqthizr20ktVhUqBvgorcS6T50iU
	UbN4UHtA1neQ8vpAXZxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT70F-00034s-Nd; Fri, 08 Nov 2019 16:20:51 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT6zX-00025W-W6
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 16:20:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V43qp90K/37TJcN7KLrJZAIG6gwk6BfFwBs5NUeTePc=; b=g9ST0HRb7DolASkmVe7bCp6mI
 6xWPb2VhlMSD1eDwt+Q9Qb97XxUMxDvHP4STKFE4F/O5F56sX99W92bsPXk7bOxnb4B22ankqgSUi
 FSegagLIjjodIBHGWIdXg/bOsc1+koUW/Qp/Odw2w0JhJNUD+vawk++4dZdxWqeZJl0F8=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iT6zT-0007du-N9; Fri, 08 Nov 2019 16:20:03 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id C46D22741450; Fri,  8 Nov 2019 16:20:02 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v3 0/2] Improve KASLR diagnostics
Date: Fri,  8 Nov 2019 16:19:59 +0000
Message-Id: <20191108162001.11737-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_082008_046539_BC505FA3 
X-CRM114-Status: UNSURE (   7.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series provides diagnostics on boot for KASLR to improve usability
at runtime.

v3: Still mask the seed from FDT when disabling from the command line.
v2: Defer the print to a core_initcall() so we don't try and print
    before printk() can cope, covering other less common error cases as
    well and also an explicit message when KASLR is enabled.

Mark Brown (2):
  arm64: kaslr: Announce KASLR status on boot
  arm64: kaslr: Check command line before looking for a seed

 arch/arm64/kernel/kaslr.c | 44 +++++++++++++++++++++++++++++++++++----
 1 file changed, 40 insertions(+), 4 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
