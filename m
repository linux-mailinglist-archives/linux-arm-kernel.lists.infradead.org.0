Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBBFD84E8D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 16:19:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oKPXP6ktDM9QHRennJeBgHU4KjiffjINvIOLe9y/594=; b=V0FW4aZ05yx4aB
	uzozZ/CnPueuxZU/jbAme1w7P6YB6uY2uklU/MOKWAhbvhW9iDNdRtRr1r0bl/Jj6E+CUkWBS4YB+
	YsE6jVpIyI1ZTBgT2pSon4Ww0wET3Imnorx2VXOLzqdj5zmTRTCC4gxDbCWC/JRCHNDsgfeNAOBKL
	wMza7jOveLS0DcHEsGoKBUXhMFmw/vUg4VZdXmCW4uIfSttayeF/z/APLHIZg3w3Z0DtXo6rgqYCK
	V9OI74trQ2FgP35ZwtARR0abEcmHInksyMhxvWTj4aanmVgfDmZfD1ubLyJYDEc18iy8Uore+MHER
	CWd8fpSppy176KMjTgaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvMmq-0000WI-Ik; Wed, 07 Aug 2019 14:19:32 +0000
Received: from gateway32.websitewelcome.com ([192.185.145.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvMmb-0000UJ-1T
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 14:19:18 +0000
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
 by gateway32.websitewelcome.com (Postfix) with ESMTP id 59D7D592056
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  7 Aug 2019 09:19:00 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id vMmKhge26dnCevMmKh8KCM; Wed, 07 Aug 2019 09:19:00 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q4XlPP8r8yKUbSLfBeAIYz2SX/WPMQPawI2raqSQbRQ=; b=drMMWUFk1dFukbXswk0QM29P4T
 6q/nUfiCSWASASq7IlnUVX4PQoGKupHId0MBy2lqYQBGBTyLJQMtAS1OsjvtWsULh22vHI7BwN7wM
 PAi1I/hc7mAEwoQP4yJdPrXOh0g0ncp8MPpq6YIJbXv/e5cV88nML+zY9QglDOfKDEYdITAQ1ovkK
 xRQRC1/PpGRXZi0L9QyXUjpqpqr0rOCQSVlnH5nCS1qkQ+s2VTK+bbsVwzxDxZdszANqjtw0h5t0U
 3qYpsfpQMvyV1xJuAnx5DyZuUw7VjqKTKy7c37dbT4CQzzFRBIJe3OKv5l6CF5I6uQc5HGZ7cdfUQ
 JhBBuzng==;
Received: from [187.192.11.120] (port=53418 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1hvMmI-003qOi-V3; Wed, 07 Aug 2019 09:18:59 -0500
Date: Wed, 7 Aug 2019 09:18:57 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Marc Zyngier <maz@kernel.org>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: KVM: hyp: debug-sr: Mark expected switch fall-throughs
Message-ID: <20190807141857.GA4198@embeddedor>
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
X-Exim-ID: 1hvMmI-003qOi-V3
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [187.192.11.120]:53418
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 7
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_071917_167944_FA731CAB 
X-CRM114-Status: UNSURE (   5.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.145.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.185.145.187 listed in wl.mailspike.net]
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
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mark switch cases where we are expecting to fall through.

This patch fixes the following warnings (Building: allmodconfig arm64):

arch/arm64/kvm/hyp/debug-sr.c:20:19: warning: this statement may fall through [-Wimplicit-fallthrough=]
arch/arm64/kvm/hyp/debug-sr.c:21:19: warning: this statement may fall through [-Wimplicit-fallthrough=]
arch/arm64/kvm/hyp/debug-sr.c:22:19: warning: this statement may fall through [-Wimplicit-fallthrough=]
arch/arm64/kvm/hyp/debug-sr.c:23:19: warning: this statement may fall through [-Wimplicit-fallthrough=]
arch/arm64/kvm/hyp/debug-sr.c:24:19: warning: this statement may fall through [-Wimplicit-fallthrough=]
arch/arm64/kvm/hyp/debug-sr.c:25:19: warning: this statement may fall through [-Wimplicit-fallthrough=]
arch/arm64/kvm/hyp/debug-sr.c:26:18: warning: this statement may fall through [-Wimplicit-fallthrough=]
arch/arm64/kvm/hyp/debug-sr.c:27:18: warning: this statement may fall through [-Wimplicit-fallthrough=]
arch/arm64/kvm/hyp/debug-sr.c:28:18: warning: this statement may fall through [-Wimplicit-fallthrough=]
arch/arm64/kvm/hyp/debug-sr.c:29:18: warning: this statement may fall through [-Wimplicit-fallthrough=]
arch/arm64/kvm/hyp/debug-sr.c:30:18: warning: this statement may fall through [-Wimplicit-fallthrough=]
arch/arm64/kvm/hyp/debug-sr.c:31:18: warning: this statement may fall through [-Wimplicit-fallthrough=]
arch/arm64/kvm/hyp/debug-sr.c:32:18: warning: this statement may fall through [-Wimplicit-fallthrough=]
arch/arm64/kvm/hyp/debug-sr.c:33:18: warning: this statement may fall through [-Wimplicit-fallthrough=]
arch/arm64/kvm/hyp/debug-sr.c:34:18: warning: this statement may fall through [-Wimplicit-fallthrough=]

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 arch/arm64/kvm/hyp/debug-sr.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/kvm/hyp/debug-sr.c b/arch/arm64/kvm/hyp/debug-sr.c
index 26781da3ad3e..0fc9872a1467 100644
--- a/arch/arm64/kvm/hyp/debug-sr.c
+++ b/arch/arm64/kvm/hyp/debug-sr.c
@@ -18,40 +18,70 @@
 #define save_debug(ptr,reg,nr)						\
 	switch (nr) {							\
 	case 15:	ptr[15] = read_debug(reg, 15);			\
+			/* Fall through */				\
 	case 14:	ptr[14] = read_debug(reg, 14);			\
+			/* Fall through */				\
 	case 13:	ptr[13] = read_debug(reg, 13);			\
+			/* Fall through */				\
 	case 12:	ptr[12] = read_debug(reg, 12);			\
+			/* Fall through */				\
 	case 11:	ptr[11] = read_debug(reg, 11);			\
+			/* Fall through */				\
 	case 10:	ptr[10] = read_debug(reg, 10);			\
+			/* Fall through */				\
 	case 9:		ptr[9] = read_debug(reg, 9);			\
+			/* Fall through */				\
 	case 8:		ptr[8] = read_debug(reg, 8);			\
+			/* Fall through */				\
 	case 7:		ptr[7] = read_debug(reg, 7);			\
+			/* Fall through */				\
 	case 6:		ptr[6] = read_debug(reg, 6);			\
+			/* Fall through */				\
 	case 5:		ptr[5] = read_debug(reg, 5);			\
+			/* Fall through */				\
 	case 4:		ptr[4] = read_debug(reg, 4);			\
+			/* Fall through */				\
 	case 3:		ptr[3] = read_debug(reg, 3);			\
+			/* Fall through */				\
 	case 2:		ptr[2] = read_debug(reg, 2);			\
+			/* Fall through */				\
 	case 1:		ptr[1] = read_debug(reg, 1);			\
+			/* Fall through */				\
 	default:	ptr[0] = read_debug(reg, 0);			\
 	}
 
 #define restore_debug(ptr,reg,nr)					\
 	switch (nr) {							\
 	case 15:	write_debug(ptr[15], reg, 15);			\
+			/* Fall through */				\
 	case 14:	write_debug(ptr[14], reg, 14);			\
+			/* Fall through */				\
 	case 13:	write_debug(ptr[13], reg, 13);			\
+			/* Fall through */				\
 	case 12:	write_debug(ptr[12], reg, 12);			\
+			/* Fall through */				\
 	case 11:	write_debug(ptr[11], reg, 11);			\
+			/* Fall through */				\
 	case 10:	write_debug(ptr[10], reg, 10);			\
+			/* Fall through */				\
 	case 9:		write_debug(ptr[9], reg, 9);			\
+			/* Fall through */				\
 	case 8:		write_debug(ptr[8], reg, 8);			\
+			/* Fall through */				\
 	case 7:		write_debug(ptr[7], reg, 7);			\
+			/* Fall through */				\
 	case 6:		write_debug(ptr[6], reg, 6);			\
+			/* Fall through */				\
 	case 5:		write_debug(ptr[5], reg, 5);			\
+			/* Fall through */				\
 	case 4:		write_debug(ptr[4], reg, 4);			\
+			/* Fall through */				\
 	case 3:		write_debug(ptr[3], reg, 3);			\
+			/* Fall through */				\
 	case 2:		write_debug(ptr[2], reg, 2);			\
+			/* Fall through */				\
 	case 1:		write_debug(ptr[1], reg, 1);			\
+			/* Fall through */				\
 	default:	write_debug(ptr[0], reg, 0);			\
 	}
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
