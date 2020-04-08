Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C721A266E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 17:55:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EZO7moB14qCi7Cf2uPpVs7Bo36Dbw2RgvGLUdo6yO8A=; b=QQ5v7SAfuQy/Fp
	k3labxXKRkG3XSI8gMfd1PYuELMalq6N8CnYUZ6lzPagwLn++B3achub/d2Rilh08JjJHXTgasLEz
	ZTjoos9tEoAmjgTOTBXvlUUpKh5Ar/FX8gslPrJogKxcvWmbD9j/NOgbTjTmCP4orWP4/Q08QCJPL
	p06YyiJd1KjaVqL5QxmL1D0H9Ygs0c0K67cgUeI4LLVNrvlqgRggGk3fcCDh+yIgRk38We/CSB4ou
	ul2JFUaVhPEDOLRIjHtqqSlfu87oCUyVd8FRLfrzMACvkj2udgpgEkkFIQ+tbSPF6ItWohE+XnC1j
	mwFo21nxLH9pBLByyRFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMD2q-0005Lj-V0; Wed, 08 Apr 2020 15:55:16 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMD2a-0004GU-QU; Wed, 08 Apr 2020 15:55:04 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MFL8J-1jWtE512Xx-00FjXx; Wed, 08 Apr 2020 17:54:52 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH] remoteproc: mtk_scp: use dma_addr_t for DMA API
Date: Wed,  8 Apr 2020 17:54:29 +0200
Message-Id: <20200408155450.2186471-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:ZXUS0WnSgpDrLDUPXUv4WC9aMIcDFvE3FAcQZyRtm4Fcfz/PImX
 YbWkCxd19WeDTGPPYTgd612QtlZrf+VzZzOOCH0pmwqI038hD+0qc+LvVJdMPjMhgM1pVhu
 go5ASoaJNzp5rdg5N+pmgTNW3g41CDoPdsEkpZtV+L3XewxdrTSjHqU22VZ0PWae5Kwq3Pw
 h3o9mR8BPo8jgPE5vh0FA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5giCQrLFcdI=:WP8aJCXVXjHUf1G2MYPuKx
 yJgLARtxvOSu8qnX/bKwmAycVMI9Ku5uj0yyzrVB9nW58PfVRJs65pUuF0H9Qo2W2ZTAEq49k
 3y699LxloIhuwMoS6hVUlgwvGGnSJzmojo9Mf02Mhy3Z+xOEIQguuikvibM7y/s/PCWwZ8spK
 IPwHZh1MMY9ecU2slK/xFv8VpyAzGsc/1Sjg7JstBxpCj02136j2qruVF12gi7icZ9SGMaCeX
 0KX1sJJ3RYI7c2NsBZ3/fuTmMT9temdtJY6QJykBNzjUuelBIzv5uQ57q0kTi5GjZcZ40sos+
 /Prhow+ydB2cQ6XADUXKMdqf7mdWQKxwV6DJnWXnd4uePBWjc/Z6izEFm/qzemKPwMuuKl7/E
 kfvGKCgV2uytBJtiywdWD6YckByPYzdVMoB6NM9rhjF4h7gAAxcsTM1off2NJSezjna6g8wBO
 JFZe//nrHSIdXnsDvQnwAgxoGrg8FsRDQbACxTKdrl2dyUr46J+GjPKfTyshbml4gTpmhFWEj
 fyooy45R9craWPeDTRYesoJojzRqOXKxUEfeNqG8oslev52UPYKWNfq516U34lK624xThg12j
 GCXZi9chpCTIKNkY/yTUtqdpwQA4Cqj+T0WtAStWR8d02WOYb7ddNRZSTYzJJUsBMsG4WCexW
 7dklVzWRJBNxwLvFhT3WBCHwhRJ7YeXv5YaCatUgzDssoQxxCl4kWjlIsHoWE870RHmlFNRdh
 qiYH1+2a1wdf9Ig4cFndjwm+df8zZFPPNKnyZYtbGEl3BUrY85gfILecuR9g5HEvkdtYtGz2e
 8Mkud02TZqOwHPqE1+pvDbza+thSWuOz71bUxIf99neDgi6ZCY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_085503_506642_7A670774 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.74 listed in wl.mailspike.net]
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
Cc: Nicolas Boichat <drinkcat@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Erin Lo <erin.lo@mediatek.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Pi-Hsun Shih <pihsun@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dma_addr_t and phys_addr_t are distinct types and must not be
mixed, as both the values and the size of the type may be
different depending on what the remote device uses.

In this driver the compiler warns when the two types are different:

drivers/remoteproc/mtk_scp.c: In function 'scp_map_memory_region':
drivers/remoteproc/mtk_scp.c:454:9: error: passing argument 3 of 'dma_alloc_coherent' from incompatible pointer type [-Werror=incompatible-pointer-types]
  454 |         &scp->phys_addr, GFP_KERNEL);
      |         ^~~~~~~~~~~~~~~
      |         |
      |         phys_addr_t * {aka unsigned int *}
In file included from drivers/remoteproc/mtk_scp.c:7:
include/linux/dma-mapping.h:642:15: note: expected 'dma_addr_t *' {aka 'long long unsigned int *'} but argument is of type 'phys_addr_t *' {aka 'unsigned int *'}
  642 |   dma_addr_t *dma_handle, gfp_t gfp)

Change the phys_addr member to be typed and named according
to how it is allocated.

Fixes: 63c13d61eafe ("remoteproc/mediatek: add SCP support for mt8183")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/remoteproc/mtk_common.h | 2 +-
 drivers/remoteproc/mtk_scp.c    | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/remoteproc/mtk_common.h b/drivers/remoteproc/mtk_common.h
index deb20096146a..0066c83636d0 100644
--- a/drivers/remoteproc/mtk_common.h
+++ b/drivers/remoteproc/mtk_common.h
@@ -68,7 +68,7 @@ struct mtk_scp {
 	wait_queue_head_t ack_wq;
 
 	void __iomem *cpu_addr;
-	phys_addr_t phys_addr;
+	dma_addr_t dma_addr;
 	size_t dram_size;
 
 	struct rproc_subdev *rpmsg_subdev;
diff --git a/drivers/remoteproc/mtk_scp.c b/drivers/remoteproc/mtk_scp.c
index ea3743e7e794..2bead57c9cf9 100644
--- a/drivers/remoteproc/mtk_scp.c
+++ b/drivers/remoteproc/mtk_scp.c
@@ -330,7 +330,7 @@ static void *scp_da_to_va(struct rproc *rproc, u64 da, size_t len)
 		if (offset >= 0 && (offset + len) < scp->sram_size)
 			return (void __force *)scp->sram_base + offset;
 	} else {
-		offset = da - scp->phys_addr;
+		offset = da - scp->dma_addr;
 		if (offset >= 0 && (offset + len) < scp->dram_size)
 			return (void __force *)scp->cpu_addr + offset;
 	}
@@ -451,7 +451,7 @@ static int scp_map_memory_region(struct mtk_scp *scp)
 	/* Reserved SCP code size */
 	scp->dram_size = MAX_CODE_SIZE;
 	scp->cpu_addr = dma_alloc_coherent(scp->dev, scp->dram_size,
-					   &scp->phys_addr, GFP_KERNEL);
+					   &scp->dma_addr, GFP_KERNEL);
 	if (!scp->cpu_addr)
 		return -ENOMEM;
 
@@ -461,7 +461,7 @@ static int scp_map_memory_region(struct mtk_scp *scp)
 static void scp_unmap_memory_region(struct mtk_scp *scp)
 {
 	dma_free_coherent(scp->dev, scp->dram_size, scp->cpu_addr,
-			  scp->phys_addr);
+			  scp->dma_addr);
 	of_reserved_mem_device_release(scp->dev);
 }
 
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
