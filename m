Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62DD987D04
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:44:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uxqJ4vskrbn4DSmDyVkAw/tUFrX1NZo254YLNzIMEHY=; b=J9aoWKRjvNFAIX
	AfH45eBWgAO0ipefxZjMaeEaGVmZorbgXPt2K3lSUikaiX2JI5Qs1opkUbyNWB6v0z5f6oPjvYUlT
	QjTNhPx4MRT+64dCL82u0+GkiZaRVDKNgrc3f1elJzg5vV8fSoA+HwY75befpAZ/ZYp1/O7Q1a40T
	3x7vKeiZmAH7ulQ0HX2FfDeS9mv6h8GDdS01lBDibf3xJHL3zf9FZpsi6PkUTRFSms3cWdUUNsaZg
	+YzaVa6CmV9DbqR3ypk2Y6qaDUnGBtjtqOkb1PDHR0tlzk8Krh7n/RMMrBTsZ7W9VzCZyZDJ+ekOM
	tD3pHZ9ozK5UziJkyiDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw68G-00068L-KI; Fri, 09 Aug 2019 14:44:40 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw682-00067Z-3y
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:44:27 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MeDYt-1iUKLc3gKV-00bKl6; Fri, 09 Aug 2019 16:44:12 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org
Subject: [PATCH v2 08/13] net: lpc-enet: fix badzero.cocci warnings
Date: Fri,  9 Aug 2019 16:40:34 +0200
Message-Id: <20190809144043.476786-9-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190809144043.476786-1-arnd@arndb.de>
References: <20190809144043.476786-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:ymJswPYKYUfJcYhkgzxASapbRky55SNMKmN45E1N1FA/lD9wVRt
 nEkanG7MtJ/Pqveg+h6/6LAG+DrFlq4SuhWOfaZiZETH7gs4em9A42H4Zt4uT3VfWrhsRIe
 CulwVh+XfSAkba94KTZX+nwNfSPRHjC2+ey++8db5AJWpxOhnI+dyS0vb26UIXRYODolgss
 ynV1gvQMpkNJsma+aWNww==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:DJdco6j8rD4=:dQhHBR77IFlKfKZRM8eVPy
 V4nC2W/CrV/kLoRpyM40abNGXn7N9t/aH3K6fSYmFvDJr7DP0iiwcuYczFi4+CUVeoUIdbnMI
 arj1+4IXw5yJCeQTYabD611KpdLgrW7/n+Sc3ySzEvRoON9NljdOTWLx1riZgBH8a+wiRXA+L
 Eq7ZMP3kqlqu1mdz6XZUdwfunBrF7kR81tnf374XRy0wcH9UI9pI1LPhQu4CxyQlr85VMyZbg
 MhS/+C5PMG7Lyc9niJLsIzIHqazyAa9QgashCgryO59fbkX7/lpkbilsIGUSCuQ/IzaJcH6cV
 Q0dtBElm1MOZYc7+F4ZRBk/XAnZH40dzJpa3NYDI+N4O/wKzd1jnNyobsVqrxesXszSXszE9a
 CU6nIAwn9meG1N+GkMf+kB32G+m2gqCI7O0myYNCfDswYe0kxTEI6pCxJIZHoavUtj7pPfAt/
 3ZlaoDE6Od+cEXOij5a2FrcdIj94CHIauGWDuM/3zIsqw7SBVPobAgPkN7iGhLnSCQVB1GvMU
 5wUJ8aM5BAQMSMG8/TVMdRjFtlbnsBbq1cVqM5oSyJVzfFfum40hbwvFTL4i2BqXgJBWgzk8E
 gAvKXfQuhMQL0z7O1bJJyFvZ1oZ8MoFzb8fhiwTteLjiO2a+OB0LVNxbmJTw++1xInAJgDDgO
 0G/+Jii877WgDnTQ4DecrPqaIx+F4QDoF2YK8KG7GHUHKoeZqLRr5CHs2p7m1l9QYrih/gVOv
 BKbi3SN3knrMlI+s1+mASE3vWQVTBTatnNgMew==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_074426_454412_DE7B8072 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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
Cc: kbuild test robot <lkp@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Vladimir Zapolskiy <vz@mleia.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: kbuild test robot <lkp@intel.com>

drivers/net/ethernet/nxp/lpc_eth.c:1316:31-32: WARNING comparing pointer to 0

 Compare pointer-typed values to NULL rather than 0

Semantic patch information:
 This makes an effort to choose between !x and x == NULL.  !x is used
 if it has previously been used with the function used to initialize x.
 This relies on type information.  More type information can be obtained
 using the option -all_includes and the option -I to specify an
 include path.

Generated by: scripts/coccinelle/null/badzero.cocci

Fixes: e42016eb3844 ("net: lpc-enet: allow compile testing")
Signed-off-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/ethernet/nxp/lpc_eth.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/nxp/lpc_eth.c b/drivers/net/ethernet/nxp/lpc_eth.c
index 0893b77c385d..797bdbbcef76 100644
--- a/drivers/net/ethernet/nxp/lpc_eth.c
+++ b/drivers/net/ethernet/nxp/lpc_eth.c
@@ -1312,7 +1312,7 @@ static int lpc_eth_drv_probe(struct platform_device *pdev)
 		}
 	}
 
-	if (pldat->dma_buff_base_v == 0) {
+	if (pldat->dma_buff_base_v == NULL) {
 		ret = dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(32));
 		if (ret)
 			goto err_out_free_irq;
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
