Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85502782BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 02:13:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QpZkRdL4us8GSEBvCrzDmKP8mO8yEW6cqvtH5MJ2kKk=; b=IaWD0xKjKZZ4V4
	2+TbM2yIWBfoksDgF3TnjsKiLHtU9rn3he6Im7Zby08zfTwsR/VFbGG3GmIxJxz88rR3PTJG5nc22
	ULGhSqh2djyaQTWqsGWxDlDRBBstPRQLpCyEcHZFvG0fm0Gx/T7VtuWiGjdmjPDZu0XuSupKwef/I
	EUuvCA5Z+NZtQ7DGGn/i/ZbLfnaGjsvAyjLGqyBMlVgsxjVWJVSw9DLjbp2ZaqYCYxF515PnNP2qO
	RBFPYDOwXvaeUW0jBmFrVO5VPXz8GKGzxRy3mpJEZYiRwc7CigvGmKvub7eOR2Y7FGVUecaRGR6wZ
	PVdCDLY+8OYDemV5hGeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrtIL-0003hE-P7; Mon, 29 Jul 2019 00:13:41 +0000
Received: from gateway22.websitewelcome.com ([192.185.46.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrtHw-0003gu-UV
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 00:13:18 +0000
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
 by gateway22.websitewelcome.com (Postfix) with ESMTP id 06B4553AF
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 19:13:16 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id rtHvhyc6eYTGMrtHvhmn4Z; Sun, 28 Jul 2019 19:13:16 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y6S+Zz8Uy/4dcVHVPaSAGOHjMzOacfIZTOtYvDlJxZ4=; b=K8k/eeoysyU5u65TqLUOqVETuM
 WA6h3NGrolPCBXsQ+1W90mTzaMF70a1+Q7qyFZk32+ck5QrD6497mhM6YmxWFaGNh6B3PNOnAgqii
 spNvlmB0gcP7iG6wdjAYcFx5AjJkwFFxcqFCgGZTsMax6fpaNsBiHOFCPb1I1kQzXGrzUbDHXF08j
 V4IuQc/JZLDnwsYcNB27+mf31AH20AZKt92VC+WLJ2un719GJ4o8/y4g3Sv1XgTZsbxt6Klvt5VVs
 HNSrrcQsSr2OcVJLLJOhHpO9youp4L8MjOtR72hhxdu5dST2NMgJTNDHKE03PK4DOw2xnY6u0hsXG
 Be7T/3hA==;
Received: from [187.192.11.120] (port=39726 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1hrtHu-003tFF-Vh; Sun, 28 Jul 2019 19:13:15 -0500
Date: Sun, 28 Jul 2019 19:13:14 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH] ARM: signal: Mark expected switch fall-through
Message-ID: <20190729001314.GA24747@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.192.11.120
X-Source-L: No
X-Exim-ID: 1hrtHu-003tFF-Vh
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [187.192.11.120]:39726
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 25
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_171317_251043_40EDC427 
X-CRM114-Status: UNSURE (   5.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.46.194 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kees Cook <keescook@chromium.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mark switch cases where we are expecting to fall through.

This patch fixes the following warning:

arch/arm/kernel/signal.c: In function 'do_signal':
arch/arm/kernel/signal.c:598:12: warning: this statement may fall through [-Wimplicit-fallthrough=]
    restart -= 2;
    ~~~~~~~~^~~~
arch/arm/kernel/signal.c:599:3: note: here
   case -ERESTARTNOHAND:
   ^~~~

Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 arch/arm/kernel/signal.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/kernel/signal.c b/arch/arm/kernel/signal.c
index 09f6fdd41974..ab2568996ddb 100644
--- a/arch/arm/kernel/signal.c
+++ b/arch/arm/kernel/signal.c
@@ -596,6 +596,7 @@ static int do_signal(struct pt_regs *regs, int syscall)
 		switch (retval) {
 		case -ERESTART_RESTARTBLOCK:
 			restart -= 2;
+			/* Fall through */
 		case -ERESTARTNOHAND:
 		case -ERESTARTSYS:
 		case -ERESTARTNOINTR:
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
