Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6168A61EB0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 14:43:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lAbt7dM2YQcBM2rqalVHveu49JumydiLWipuc0TGQac=; b=qKJMVvkkRpZuG4
	LDv3f+mEFic3BMPd/l7umluS1aQWqkkY4XSijPRrisJDJKoRAqlmY4xHqRjnNPufa+vGdV7Nb611I
	H5uYDXOeiynZM0usk39+PwTbCJ69tyqEVYigAPVK1bYEqksLYmSvsENxhoh9B/f0NpjY99/b+MLme
	wXYMTpBR0wGuW7c16A732b9pP5ZMS5ydooU/89v5RPA8enMr4062eCcv1rnyqNbb09n2/gf43s2/x
	WW/tDUDTxNhEOHsQDHEAwzgkHKb2KXygg6fYpkTlE026SwF+lpNh+mnyxxdK+m8qgdxZVc+sqoxem
	xZhIPrgefG6LuuPt7Ojg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkSza-0006pg-Ut; Mon, 08 Jul 2019 12:43:39 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkSzK-0006oq-UZ
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 12:43:24 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1N9Mh8-1iY7ev3NFE-015Mij; Mon, 08 Jul 2019 14:43:13 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
Subject: [PATCH] remoteproc: stm32: fix building without ARM SMCC
Date: Mon,  8 Jul 2019 14:42:51 +0200
Message-Id: <20190708124311.3448056-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:AkGDgfgp15g2CwVR7Facqvx2UQWGiD85o226q8pCrj+7T3ngYhv
 IfLF3dxuiyn7foiSJbI+CjDMOWeNFw4kgugGEH9s7CEP/ITyLDc0js2XWpv06vcn8jwcVdi
 htFSeTonIiSmWhiJ6NokkctrmpdXI6ajXctroI5KnraqIYGMuHO339AkvcR2SGhILxsSPPp
 oXbARlZOVAkKCNuffxW2g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:NOG3AWT7dhY=:I1yuk6/XhruMMQoRCnVKYH
 Dprmazilp2kNoyya7NhsRMMlH3fEEHyN+t7vYmASH7wZsnO8z9QnyNDYZD8PoF3PYbRSudiJr
 beYiBGXOaQDkiZAklGiIcNdrspzn35663iyk0GQfGE9iK7UrGgJIHznTWOtzrtjtNLGhAYLRr
 vVp1P2qtvMpmIk01cKQUB4BMDTDMHGU7IkkZHt+PtfqbkJD4ZqaPyNwpAKBnnFtEHJThM/rOc
 mTKdXDWuUc0e8XsvFrwD8FN+5L4eBVlO0fkt2Bj8deLez+mlSgC75Bk++RkbBTAXKgtqYwlj5
 4Ir7mGd2pIZRTZk1Hyb5EKQdvhWXWClUp2sRj1lKVTQ5wBq2zhdk63UKWUmr16rgK+CdZZteb
 XEKXOIEAfhTry3H0vfA8bm8WyJy4ZaJF7vFLzmxLit52Lt73TE9XN6giBVvGYS+hdoNcbNm3C
 GCDm3qZZYwx9kM2wq/NoJE3S7283goKM3I7NfeaNIzon+gR9SQCxDQIE1OJOvrIPulXpjd51R
 0tUD9uoBueidEyEuuoRo+70FeDZZgh+PxOSgJFtOFxfS25GLarZZN5Ezaq+wacrZQ4DVFqZ8S
 kmm1yamO+hiwkGBvfEC17KEgSZoRmfRDrGYdwG1X842K8zQCkf/Yrxw5PaPEQMtlk28+F2Qie
 Clb7hFMAFS8EayWbwBwUwmuGm8WCiTDZ+uff7WLeLLuCyLgm+yfCb2YL/PGJrq56E4kUi6UcY
 asXjZrOREjS+2fK2M//YtVvqIQpUbo66EFHOQg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_054323_274791_2E5A6699 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Loic Pallardy <loic.pallardy@st.com>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fabien Dessenne <fabien.dessenne@st.com>,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 Ludovic Barre <ludovic.barre@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When compile testing this driver without SMCC support enabled,
we get a link error:

drivers/remoteproc/stm32_rproc.o: In function `stm32_rproc_start':
stm32_rproc.c:(.text+0x776): undefined reference to `__arm_smccc_smc'
drivers/remoteproc/stm32_rproc.o: In function `stm32_rproc_stop':
stm32_rproc.c:(.text+0x92c): undefined reference to `__arm_smccc_smc'

Make the actual call to arm_smccc_smc conditional on the Kconfig
symbol controlling its implementation.

Fixes: 13140de09cc2 ("remoteproc: stm32: add an ST stm32_rproc driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/remoteproc/stm32_rproc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index e83077b9ebf5..e2da7198b65f 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -344,7 +344,7 @@ static int stm32_rproc_set_hold_boot(struct rproc *rproc, bool hold)
 
 	val = hold ? HOLD_BOOT : RELEASE_BOOT;
 
-	if (ddata->secured_soc) {
+	if (IS_ENABLED(CONFIG_HAVE_ARM_SMCCC) && ddata->secured_soc) {
 		arm_smccc_smc(STM32_SMC_RCC, STM32_SMC_REG_WRITE,
 			      hold_boot.reg, val, 0, 0, 0, 0, &smc_res);
 		err = smc_res.a0;
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
