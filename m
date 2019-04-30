Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BFE4EDBD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 02:30:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R7Z6/Xr/X28U+XSvoO7d9kPcKyCOdHJzHRQfE53x7Mw=; b=sg7iPCYjBNzmZc
	ZJ2UF0K3qxf99+CGmzEdMEr/mm+7HB7mdf/VNVpmDtzIvguHttLttLURyypFE2qHHjwTXp7Bidfbw
	DxenFOMTDZn+tTeh634LG6laOTKKampx6yja+xJCH2zxfvnXdd6EgYMSvznKbcsC4j2A9eWHOPp7E
	iOmt2SIdogoV9pWWB57Y32RjKNgvFshEGSaDVEh/DTx1Bt4bdBA2I3rRmvoqcmr4CnvRXJ/8xBlqz
	lZqIQJ10FfuvwuvQXcFCSh7zpktlsMhsrTz6/pd4sm2Zydp+0VRxKiOSw2Iy0VRfIHrUSlXkswuPB
	KEr+zTMkVCOW2OSRqW7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLGfW-0000gC-Fk; Tue, 30 Apr 2019 00:30:46 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLGfO-0000f9-19
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 00:30:39 +0000
Received: by mail-ed1-x543.google.com with SMTP id a6so10777452edv.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 17:30:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tmHyoZA3s8+eH8irHXDQwuHohJUycE2ziw5RpU+dlOU=;
 b=MOPfSeYvgFTPgmXOyqu5vdYm5hkSdQbjS+ZqEcO2RU+mAi+5MAMZoFxX3IpBDPLPQS
 +6cxB/pSPBzbPChynLlIkPp4j946qOnm4Ye/TMQhOEbAMuMfpeVVBcoKcz4+RJW8yx6/
 Ved8pdw06sn2gpyLII0BLDY6t7Sg8N2naFdo6CAqbtTC39FR3o1Tc1kBC5kIorVz+Ak4
 ako09dGNcEJDViNxWaT8wPfz1pEdUxqyVHmDsDi6DvZ163SxxHJc0/irfHhaluAhRXut
 fRdoOWoA4QNK2yK1oJ5SHB/z+IS3njGTe+Ft9ivlpb8yi+AAVdDoaUQ0ZqtYNO7vRck8
 qUcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tmHyoZA3s8+eH8irHXDQwuHohJUycE2ziw5RpU+dlOU=;
 b=cJakFhxnJQl47jdiQXKMfUhx5OeUGlbI8WWKbYv75q3HfqCp4imkVXIlbrCZ2tXfvZ
 McQPJYdnCCwEYqXnNNJAcX3+qF3iyu1cefX+g9ARqe88uCe14p6+emw188hcT6S01riV
 uYiz28nf02kDLMyfcgXVmlVkxK8ayC/Dux635PukqTVwJPS7Lwh2CojDEO61tyUv7q5l
 ff24uPIhmwkc6nSU/ReqaJpESj+PBN/nQ4ydmuetuKIzBlNCkPxRJ36J+hDaTAY/PV1P
 jtpVmlg/hP9lVzsg3G50iPVV73XeRSiBR9iGIw0cdJ5Dvvqxe/lnoBR4VmuIgIatg1FQ
 OD+Q==
X-Gm-Message-State: APjAAAWSg0bAy0UIGo15TckMtM0I7cwfCOLwdpz8QlayLBYsw9oyyJjw
 IN1CiHWtcgdSGqQTAhVYY9ugrA==
X-Google-Smtp-Source: APXvYqxnysyX/Gy2Mv+d0SzufhcdmkrISFZgci8tZfFs0rMtqN5Lk2YDEgY4FPz5PnrMa8o5ipagUg==
X-Received: by 2002:aa7:c88a:: with SMTP id p10mr41403077eds.145.1556584235673; 
 Mon, 29 Apr 2019 17:30:35 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:a0:bc00:7d76:7b66:68:3b5f])
 by smtp.gmail.com with ESMTPSA id a9sm9424163edt.93.2019.04.29.17.30.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 17:30:35 -0700 (PDT)
From: Tom Murphy <tmurphy@arista.com>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v2 0/4] iommu/amd: Convert the AMD iommu driver to the
 dma-iommu api
Date: Tue, 30 Apr 2019 01:29:47 +0100
Message-Id: <20190430002952.18909-1-tmurphy@arista.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_173038_080499_0C28768A 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Heiko Stuebner <heiko@sntech.de>, Will Deacon <will.deacon@arm.com>,
 David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-tegra@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Tom Murphy <tmurphy@arista.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 murphyt7@tcd.ie, Rob Clark <robdclark@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the AMD iommu driver to the dma-iommu api. Remove the iova
handling and reserve region code from the AMD iommu driver.

Change-log:
v2:
-Rebase on top of this series:
 http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/dma-iommu-ops.3
-Add a gfp_t parameter to the iommu_ops::map function.
-Made use of the reserve region code inside the dma-iommu api

Tom Murphy (4):
  iommu: Add gfp parameter to iommu_ops::map
  iommu/dma-iommu: Handle deferred devices
  iommu/dma-iommu: Use the dev->coherent_dma_mask
  iommu/amd: Convert the AMD iommu driver to the dma-iommu api

 drivers/iommu/Kconfig          |   1 +
 drivers/iommu/amd_iommu.c      | 694 ++++-----------------------------
 drivers/iommu/arm-smmu-v3.c    |   2 +-
 drivers/iommu/arm-smmu.c       |   2 +-
 drivers/iommu/dma-iommu.c      |  52 ++-
 drivers/iommu/exynos-iommu.c   |   2 +-
 drivers/iommu/intel-iommu.c    |   2 +-
 drivers/iommu/iommu.c          |  43 +-
 drivers/iommu/ipmmu-vmsa.c     |   2 +-
 drivers/iommu/msm_iommu.c      |   2 +-
 drivers/iommu/mtk_iommu.c      |   2 +-
 drivers/iommu/mtk_iommu_v1.c   |   2 +-
 drivers/iommu/omap-iommu.c     |   2 +-
 drivers/iommu/qcom_iommu.c     |   2 +-
 drivers/iommu/rockchip-iommu.c |   2 +-
 drivers/iommu/s390-iommu.c     |   2 +-
 drivers/iommu/tegra-gart.c     |   2 +-
 drivers/iommu/tegra-smmu.c     |   2 +-
 include/linux/iommu.h          |  21 +-
 19 files changed, 187 insertions(+), 652 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
