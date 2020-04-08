Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCB21A28F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 20:58:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6CMlEsnwWQgifVrEedhgJFGJypN59qkWAjBv+4rBVAo=; b=G98QNFhrc7R7Lw
	eH2bYxkFvk5lGgiuzx4e7VQGuxBxpHWZAzFHj/5nRgj1/UHEREDZMpqnwRVT032zfzo3Mj71dDP50
	S0yNmpGyvL+/huPFBPIEj4tKZHbUPz8+3s3KWlLUw7V3tmuh7GL9eU4sKTnwz2Y6pim9R5mcgRqtI
	ijqzdkW5GNti0ua6hVivbQfEDWkWGk/gOs7tJ5PxW8RXmVqWVRDjD1yLcqh41x2lSUK8o65sy+ThT
	7Ys3HcnI0BpF0xPpAeu51AobRIm1588IbtOCNelbUYoyPqVQMgfS3HShdF5Y0bYSODMvsWCRN5xCn
	RMFQBblcj2MdqPw2t5Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMFuV-0000WY-E4; Wed, 08 Apr 2020 18:58:51 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMFuN-0000VY-Vd
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 18:58:45 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MGygv-1jZCCz0Nmt-00E1gj; Wed, 08 Apr 2020 20:58:38 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org, Roy Pledge <Roy.Pledge@nxp.com>,
 Li Yang <leoyang.li@nxp.com>, Youri Querry <youri.querry_1@nxp.com>
Subject: [PATCH] soc: fsl: dpio: avoid stack usage warning
Date: Wed,  8 Apr 2020 20:58:16 +0200
Message-Id: <20200408185834.434784-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:OMkgMNWoYNK/PYjxHVjJrtynoXO5dAEnVqvJJrotBwWM8OSqNDq
 n4/wTu1RDdSuijIRMT/mKwLuNyQZl8Spgdi3psfPPgmqchFO/006ZOGM6IvvXihw0jMEQi1
 56J/m8kvXJHYcy8SPcnZjVa8G7StP/ndGlz4sf5dHsUPDnKJRVesO0rqywtdqf/bapOepvt
 OKslwjMqHRgGccZbrwpSA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FCcX7YDJ1SE=:HKXDNdhc8sGxe1mtuppB6o
 mNmFSw1aHUeW3PHd0utVq7MbM9hZtK7P2kMs3wB2sMRmfTu/sR6BDCNGTHKA55YiFdHkcgSdk
 G4rrvwRO9Y7We+a/w1sUviQ2Upxly0ybzU1ScFiEWt20sBqo8HdsFSCLiTry+cDfDJuGdeeap
 Ra8FVq9WaPa/TLihjdGNIm2CZoNIrKPZwTrL5xUamTWFb6jeSEK8I7JdzwRYuSj5lXyCD8Oz+
 22/0yaF1jJpg/foiBFWY22N0BlLyAPmwWCV29dBaSuIehw7HYzdI57fShMwCahgGFtfxUQ3fg
 rmijtfbgc6/9CPp+QaowH7fqTzzkzs1UVOr8hfBp633edwVB6qSzwyxwu4JP0NU5QPhCPrrI2
 vknJvrsqOqRxVEVIVi78WAD/MMpi3WqU9H3yqG9X67NBrxwqJVZuIVJCtaiXdSIts11AU6FxE
 1u3MRAHSlkupxEJCouNKVFy5A/27Svui8cB7KORPGf7dtjZyMk2pm/prIoL6dDyajoqx4Q9jt
 nijZNRuQ3Euk0z0kzZPl/pDi90tyUEBfauhsg7de9/1qFisE9djOrhPS4n3fdLUVaiiCTrhXc
 y+ns+bzzl9rK5NZVudSB1S6zagkOt80k7LaDRsGsh/7A+LZet1d728v9O6oLlmLHzKRYqjU7X
 qKSS+UB5g8NRHKbLs8gw0BR0xDkSm3xRJs6LLZGpbSSa1xYtAi/E3DM1Zl+gYKmqrmDfe9kST
 71mI0JqqwZtL2U96/Q0xxshmDYju3wXhyVa9pU5rD4d/RFpf0iWcf/bOinHQ80kU0VOxA2fij
 +c1oqQ1Wz1S1s/QeXDjC94W/u7iM/Sl8ZFB85P88QApLfSF3Tg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_115844_317747_CA3FC2D2 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A 1024 byte variable on the stack will warn on any 32-bit architecture
during compile-testing, and is generally a bad idea anyway:

fsl/dpio/dpio-service.c: In function 'dpaa2_io_service_enqueue_multiple_desc_fq':
fsl/dpio/dpio-service.c:495:1: error: the frame size of 1032 bytes is larger than 1024 bytes [-Werror=frame-larger-than=]

There are currently no callers of this function, so I cannot tell whether
dynamic memory allocation is allowed once callers are added. Change
it to kcalloc for now, if anyone gets a warning about calling this in
atomic context after they start using it, they can fix it later.

Fixes: 9d98809711ae ("soc: fsl: dpio: Adding QMAN multiple enqueue interface")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/soc/fsl/dpio/dpio-service.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/soc/fsl/dpio/dpio-service.c b/drivers/soc/fsl/dpio/dpio-service.c
index cd4f6410e8c2..ff0ef8cbdbff 100644
--- a/drivers/soc/fsl/dpio/dpio-service.c
+++ b/drivers/soc/fsl/dpio/dpio-service.c
@@ -478,12 +478,17 @@ int dpaa2_io_service_enqueue_multiple_desc_fq(struct dpaa2_io *d,
 				const struct dpaa2_fd *fd,
 				int nb)
 {
-	int i;
-	struct qbman_eq_desc ed[32];
+	struct qbman_eq_desc *ed = kcalloc(sizeof(struct qbman_eq_desc), 32, GFP_KERNEL);
+	int i, ret;
+
+	if (!ed)
+		return -ENOMEM;
 
 	d = service_select(d);
-	if (!d)
-		return -ENODEV;
+	if (!d) {
+		ret = -ENODEV;
+		goto out;
+	}
 
 	for (i = 0; i < nb; i++) {
 		qbman_eq_desc_clear(&ed[i]);
@@ -491,7 +496,10 @@ int dpaa2_io_service_enqueue_multiple_desc_fq(struct dpaa2_io *d,
 		qbman_eq_desc_set_fq(&ed[i], fqid[i]);
 	}
 
-	return qbman_swp_enqueue_multiple_desc(d->swp, &ed[0], fd, nb);
+	ret = qbman_swp_enqueue_multiple_desc(d->swp, &ed[0], fd, nb);
+out:
+	kfree(ed);
+	return ret;
 }
 EXPORT_SYMBOL(dpaa2_io_service_enqueue_multiple_desc_fq);
 
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
