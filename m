Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3C21A28FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 20:59:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N0cC+L1rpQ9qCpUuN/xQTv9jUWorm+3j0S3YI9bMt2g=; b=gN6/aokwc42yfG
	9HWyHF0TaosR2kfQghr+VAjhpuTid2xkiYTdepMVA5MbKWtCLt+24gWD7IMca9TLjAbCoThNmPN1p
	GxZHlpPw6vFI+wJcGGwSjK0UXKhHj3xV/32E+uOzsaTBC0rJlpMPF1RT9Zi8/W8nquhQ5dCRBjn17
	9TkxioeLL+ZT/s+Aa4mzZVRvCHAFxSOkhMJvdNXQxoSCbeUrwNx9XVWwJolnAFpmN/uvX6U1S61W0
	ZnaCr53gWBktZwIVTae6kTPcizwME7aO4MekLaxjQlNOh7wU196y94wAWVDlOF3mwuHzkAnUdBvBz
	5jLb3XjOKkZGdWGkskXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMFuw-0000nA-JT; Wed, 08 Apr 2020 18:59:18 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMFuo-0000mR-Te
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 18:59:12 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1N6bwO-1jEDIr0wbW-017z1G; Wed, 08 Apr 2020 20:59:07 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org, Roy Pledge <Roy.Pledge@nxp.com>,
 Li Yang <leoyang.li@nxp.com>, Youri Querry <youri.querry_1@nxp.com>
Subject: [PATCH] soc: fsl: dpio: fix incorrect pointer conversions
Date: Wed,  8 Apr 2020 20:58:58 +0200
Message-Id: <20200408185904.460563-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:8xAGrYaZ/ujoUnW7cL3AgjFcL40IGeG2n3NvTC+XDJlofwfuA9K
 oDFxnwY0ZfyisID+BW0V1T8NRMPjmB3xcBsR+gAoLr8CFBfD7f3APxjKC2BV/SNoszVmYKi
 M0vLAM6kpZDaIOc9U6uLbXIFBw4m8GPBgO2DAfYAG2EYz9K1cExMvMJxDJ9+eo/SJEcpqF1
 w11Qw2RA0RNyEzk/w9iqg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:R+zWTu3qJj8=:PMGN84S59S9E8FL82EdxEJ
 TeslY7JBQpC5GCPlSgAgF3eIo1VO8kNJRe2MVvFc/9hhZWzMy8XCJ/t6q9kbIotaEZwNP5wxv
 XXIP1hlNYDVLdTEnQptpDzyWzLFe5NZQNVi0ZHyXlokmJe8KW2jwAhTM5CJaWLJo/RI2qtirj
 pFw6gVf3ZNjOmyeQQOUc57sTvCIM2x3EKEZM8B2xbaf8oYuQmdXryQpkVMCa5J9oioRs7wZZv
 pSTe1hdBBSx6XeUOIo5UQJlQEeR4WuQ8AKkHy9OGRcWUsCRA5chF+JpUKmne+5SKtdg3FLtVO
 qJdgR4m0M1ljY0FjehKF8CSGE0+m3/9cFzNRYZ+YQuvEAvuTakT5F+jzbXR9hACZyjhzdxO4H
 L6PP2laJwIXphFwUkhbaTteys5sJB4BqVq6c1ms3pKXWA8rRBwX8JzXG4AyF6MHQ692YAjE+E
 fAwGo1+g4HTiS6shj85WDM447Ulks22Wpawgbwz9AepxlouwBS7Le06xw2WOUfXwlwygbezJw
 5zM1aKcny8zNiQxMmMsXX0ZnuG4w0mFQjX2oTcb+liispyO8EXdeatlV/dMDX2ZoOGI7lCK+A
 KONEcvszOwwAejQqC4XhcPOk5X0gj8O0Z/P4PWTt2n2B+WivcR2xhEA4T36+BkPIaYo4bQuG7
 qgobEcWg1p+oaO/4TOaG3t48QvfZsaID0fdeYdmkWj66QwA5z3/OkK6j+0sJLWz9x+viE3XCU
 xThvkh8aFqpv+AMSwmU9Nf8dZ/fm0wyX0fSXFwdm7GsDL2uz/ud6i5D4j6wvubOJ+0MGlqE00
 HtZKofaIn4bqehBC1pdMSkpxk94rZbbIYRjEe7hcCLXpLnDCcY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_115911_243996_18F89803 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Roy Pledge <roy.pledge@nxp.com>,
 linux-kernel@vger.kernel.org, Colin Ian King <colin.king@canonical.com>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Building dpio for 32 bit shows a new compiler warning from converting
a pointer to a u64:

drivers/soc/fsl/dpio/qbman-portal.c: In function 'qbman_swp_enqueue_multiple_desc_direct':
drivers/soc/fsl/dpio/qbman-portal.c:870:14: warning: cast from pointer to integer of different size [-Wpointer-to-int-cast]
  870 |  addr_cena = (uint64_t)s->addr_cena;

The variable is not used anywhere, so removing the assignment seems
to be the correct workaround. After spotting what seemed to be
some confusion about address spaces, I ran the file through sparse,
which showed more warnings:

drivers/soc/fsl/dpio/qbman-portal.c:756:42: warning: incorrect type in argument 1 (different address spaces)
drivers/soc/fsl/dpio/qbman-portal.c:756:42:    expected void const volatile [noderef] <asn:2> *addr
drivers/soc/fsl/dpio/qbman-portal.c:756:42:    got unsigned int [usertype] *[assigned] p
drivers/soc/fsl/dpio/qbman-portal.c:902:42: warning: incorrect type in argument 1 (different address spaces)
drivers/soc/fsl/dpio/qbman-portal.c:902:42:    expected void const volatile [noderef] <asn:2> *addr
drivers/soc/fsl/dpio/qbman-portal.c:902:42:    got unsigned int [usertype] *[assigned] p

Here, the problem is passing a token from memremap() into __raw_readl(),
which is only defined to work on MMIO addresses but not RAM. Turning
this into a simple pointer dereference avoids this warning as well.

Fixes: 3b2abda7d28c ("soc: fsl: dpio: Replace QMAN array mode with ring mode enqueue")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/soc/fsl/dpio/qbman-portal.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/soc/fsl/dpio/qbman-portal.c b/drivers/soc/fsl/dpio/qbman-portal.c
index d1f49caa5b13..804b8ba9bf5c 100644
--- a/drivers/soc/fsl/dpio/qbman-portal.c
+++ b/drivers/soc/fsl/dpio/qbman-portal.c
@@ -753,7 +753,7 @@ int qbman_swp_enqueue_multiple_mem_back(struct qbman_swp *s,
 	if (!s->eqcr.available) {
 		eqcr_ci = s->eqcr.ci;
 		p = s->addr_cena + QBMAN_CENA_SWP_EQCR_CI_MEMBACK;
-		s->eqcr.ci = __raw_readl(p) & full_mask;
+		s->eqcr.ci = *p & full_mask;
 		s->eqcr.available = qm_cyc_diff(s->eqcr.pi_ring_size,
 					eqcr_ci, s->eqcr.ci);
 		if (!s->eqcr.available) {
@@ -823,7 +823,6 @@ int qbman_swp_enqueue_multiple_desc_direct(struct qbman_swp *s,
 	const uint32_t *cl;
 	uint32_t eqcr_ci, eqcr_pi, half_mask, full_mask;
 	int i, num_enqueued = 0;
-	uint64_t addr_cena;
 
 	half_mask = (s->eqcr.pi_ci_mask>>1);
 	full_mask = s->eqcr.pi_ci_mask;
@@ -867,7 +866,6 @@ int qbman_swp_enqueue_multiple_desc_direct(struct qbman_swp *s,
 
 	/* Flush all the cacheline without load/store in between */
 	eqcr_pi = s->eqcr.pi;
-	addr_cena = (uint64_t)s->addr_cena;
 	for (i = 0; i < num_enqueued; i++)
 		eqcr_pi++;
 	s->eqcr.pi = eqcr_pi & full_mask;
@@ -901,7 +899,7 @@ int qbman_swp_enqueue_multiple_desc_mem_back(struct qbman_swp *s,
 	if (!s->eqcr.available) {
 		eqcr_ci = s->eqcr.ci;
 		p = s->addr_cena + QBMAN_CENA_SWP_EQCR_CI_MEMBACK;
-		s->eqcr.ci = __raw_readl(p) & full_mask;
+		s->eqcr.ci = *p & full_mask;
 		s->eqcr.available = qm_cyc_diff(s->eqcr.pi_ring_size,
 					eqcr_ci, s->eqcr.ci);
 		if (!s->eqcr.available)
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
