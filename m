Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8D68583E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 04:38:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f8Fs7ecGbaxJqKRXlAKvDenrEpngDcZ/NCsf02D9NHo=; b=QTVKQNbrzke2sO
	VGI8yc4/l9plLOTznCIAowtj0VKo1yIM8pd3Iu6723mfWbzYcSrCHEbB6YP83kGbkiutl1ck3SzvK
	0mW+bMQFfFAqAbWiIKKMCByBjGNLtOwJ0BNL0/YJBPASWHOBMlzPP0hmcjSSbhrCcWzGnafZzIf/Z
	HcCCUQ/j2p4JBIrSGd50P0fm0reTWDeb/+us2/YVJ6lbMT0Fqh5tnaJbRIXoCPIku8PuxEqiiOEkA
	RziHlVfgEv6+N7UYveQCqJgonHvHF8GL3XeROTgxMMtc1izVYy5gRlRaXhC+xa29ZMLf++F0Z3PfJ
	ITWev2jPhmDkqmqm51cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvYJy-0006qU-IF; Thu, 08 Aug 2019 02:38:30 +0000
Received: from gateway32.websitewelcome.com ([192.185.145.119])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvYJk-0006qC-R2
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 02:38:18 +0000
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
 by gateway32.websitewelcome.com (Postfix) with ESMTP id 82D1B1BBC03
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  7 Aug 2019 21:38:14 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id vYJih3uhviQervYJihREN4; Wed, 07 Aug 2019 21:38:14 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w1RwkvHqtPdK7/AYAKy9lm1SQOT6wXcGzEyuBPgukXs=; b=iZLEYn7q3mZHuiGswr40xVFFlS
 /arE8YYN5eZrF1eMoIs/gi8JC2gB43UC99ugzMRpjryYZToRvUih7YhjG2b77ThWVX5tWMQfRujle
 fl7bjJeiGimpDVaOebzmjpxAO8n+6QF8w0yzxu6l2arcFo1LQy2SPSvm9WRwlPNma7YWGzflAPSEP
 EkYcwRa7TDoXB1/gN3d+fqb3PU0TeSEgXerNHnaL4YRTKZPLTuLpWnHqWL3fPqoNSN3W9upwHx9B3
 J9vGNU7VepvWZP0GT657zplqIGT8uowUy6SJgmEqBXFWIpkgADoWDnSIApbQdcepjzzlRxGd00H2p
 /3axGsSQ==;
Received: from [187.192.11.120] (port=32960 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1hvYJh-001Kkt-Cq; Wed, 07 Aug 2019 21:38:13 -0500
Date: Wed, 7 Aug 2019 21:38:11 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Hartley Sweeten <hsweeten@visionengravers.com>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Russell King <linux@armlinux.org.uk>
Subject: [PATCH] ARM: ep93xx: Mark expected switch fall-through
Message-ID: <20190808023811.GA14001@embeddedor>
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
X-Exim-ID: 1hvYJh-001Kkt-Cq
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [187.192.11.120]:32960
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 4
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_193816_956409_7839299B 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.145.119 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mark switch cases where we are expecting to fall through.

Fix the following warnings (Building: arm-ep93xx_defconfig arm):

arch/arm/mach-ep93xx/crunch.c: In function 'crunch_do':
arch/arm/mach-ep93xx/crunch.c:46:3: warning: this statement may
fall through [-Wimplicit-fallthrough=]
      memset(crunch_state, 0, sizeof(*crunch_state));
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm/mach-ep93xx/crunch.c:53:2: note: here
     case THREAD_NOTIFY_EXIT:
     ^~~~

Notice that, in this particular case, the code comment is
modified in accordance with what GCC is expecting to find.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 arch/arm/mach-ep93xx/crunch.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-ep93xx/crunch.c b/arch/arm/mach-ep93xx/crunch.c
index 1c9a4be8b503..1c05c5bf7e5c 100644
--- a/arch/arm/mach-ep93xx/crunch.c
+++ b/arch/arm/mach-ep93xx/crunch.c
@@ -49,6 +49,7 @@ static int crunch_do(struct notifier_block *self, unsigned long cmd, void *t)
 		 * FALLTHROUGH: Ensure we don't try to overwrite our newly
 		 * initialised state information on the first fault.
 		 */
+		/* Fall through */
 
 	case THREAD_NOTIFY_EXIT:
 		crunch_task_release(thread);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
