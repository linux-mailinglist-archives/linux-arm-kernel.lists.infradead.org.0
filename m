Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0950F195C34
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 18:14:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=YdGV6+Eexk0Y3OgThDEeDsUvGXyWCknmav8Nx+5f6q0=; b=Th
	v+SMK+8xvEZ/P8WZb+baMknNVjGEI1erXS98KrLbraupgS5IdZABGmCfiKaQGwy6m427kAqdN0Zo6
	dlFcRM0cCt6MAVqD8/Lz3pPQNV6qanpEcEZBFMf4TMAZJLOXqiQaL06LLd7sXZiibUWiEaw6/5v8S
	qevBH8C0PC7OJXcdUJhJvyWGJwEfDcrvlU73s3/ZrbILXwtEXYR9OnQLQNswdjWH5VjsvRyasPKke
	74k53Pz2zQwoxQ1WOh3xq2+kkGSCycf5ReGDFr0G2DG2UIgllxV9WoyhRThVFANSyWZl7UwycDwWw
	TWAIpp+0BNHQM8QxPSlxJlqV1baBFx0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHsYz-0005QO-8j; Fri, 27 Mar 2020 17:14:33 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHsYn-0005Np-Pj
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 17:14:23 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200327171413epoutp02228e2479986bf9097226f8e73661bf92~AOI6EQK-M0261902619epoutp02b
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 17:14:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200327171413epoutp02228e2479986bf9097226f8e73661bf92~AOI6EQK-M0261902619epoutp02b
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585329253;
 bh=HUdcqKZsLPveKDiPJtPprbc+ufYhRwknzSlEiKJ+2+Y=;
 h=From:To:Cc:Subject:Date:References:From;
 b=GeUZKv4uyeH2fqUYVVysQoj5uXMLHn2MYEc3pM+RwnEDGuNwx0cYMBhO7h7rsrYki
 yGugSf1eyiePnNpcLN7GAogwoNYBb5GMWZf3/d2UUP2sLwpv+xeRwyTCB/TG1fzqKC
 pAnOleWWyc+5N99J76vf2K/fsdIvYQNb6yk/PDfw=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200327171413epcas5p244d575053adb248b70ef41362404a8b7~AOI5m6gOH1294012940epcas5p2h;
 Fri, 27 Mar 2020 17:14:13 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 A6.4F.04778.4643E7E5; Sat, 28 Mar 2020 02:14:12 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
 20200327171411epcas5p17f4457f9fd61800257607059b9506fb2~AOI4bOrYF3139031390epcas5p1s;
 Fri, 27 Mar 2020 17:14:11 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200327171411epsmtrp1cfa33d9a0beee8ebaac5dc1f3d715a61~AOI4aXG_r0124901249epsmtrp1J;
 Fri, 27 Mar 2020 17:14:11 +0000 (GMT)
X-AuditID: b6c32a4a-353ff700000012aa-b6-5e7e3464e4bc
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 FD.3E.04158.3643E7E5; Sat, 28 Mar 2020 02:14:11 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200327171409epsmtip11bf4df68a2f039d21812dc58c656a1f4~AOI2lVx3V0050600506epsmtip1i;
 Fri, 27 Mar 2020 17:14:09 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: [PATCH v4 0/5] exynos-ufs: Add support for UFS HCI
Date: Fri, 27 Mar 2020 22:36:33 +0530
Message-Id: <20200327170638.17670-1-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpileLIzCtJLcpLzFFi42LZdlhTXTfFpC7OYG2LrcWDedvYLF7+vMpm
 8Wn9MlaL+UfOsVqcP7+B3eLmlqMsFpseX2O1uLxrDpvFjPP7mCy6r+9gs1h+/B+TReveI+wW
 S7feZHTg9bjc18vksWlVJ5vH5iX1Hi0n97N4fHx6i8Wjb8sqRo/Pm+Q82g90MwVwRHHZpKTm
 ZJalFunbJXBlzO+azlYwS6Ti5uZnzA2MB/m7GDk5JARMJLasWcPexcjFISSwm1Hi8YubjCAJ
 IYFPjBKzHqhBJL4xSuw78pwdpmP1753sEEV7GSU6rqRDFLUwSRz784YZJMEmoC1xd/oWJhBb
 RCBA4tL7g2wgRcwC85gkFj3qAUsIC1hL9B/6wAZiswioStw8/h9sNa+AjcS8H3dYIbbJS6ze
 cIAZpFlC4AibxPFfV4CaOYAcF4nT84whaoQlXh3fAnWdlMTL/jZ2iJJsiZ5dUCU1EkvnHWOB
 sO0lDlyZwwJSwiygKbF+lz5ImFmAT6L39xOo4bwSHW1CENWqEs3vrkJ1SktM7O6GOsxD4vi/
 l8yQYIiV2LvjJcsERplZCEMXMDKuYpRMLSjOTU8tNi0wykst1ytOzC0uzUvXS87P3cQIThla
 XjsYl53zOcQowMGoxMO74mptnBBrYllxZe4hRgkOZiUR3qeRNXFCvCmJlVWpRfnxRaU5qcWH
 GKU5WJTEeSexXo0REkhPLEnNTk0tSC2CyTJxcEo1ME41SfcIXZN0zITzhoX6nC8tM0407e12
 e6kYKJVnYMin62r2pPxOQpbzh2TZ4vywt0ZxzQ1fnGT4v++eeyB5ckLxs7tdr45eff5g1Z7M
 61F8XJEz7ffeXql469futuIH0Vt+bmV7duu86fMtjHZdP7amzQidsLPjdUu95Y/7M+X1PzcZ
 1rg9mqLEUpyRaKjFXFScCAD1WVKuFQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrJLMWRmVeSWpSXmKPExsWy7bCSnG6ySV2cwekL+hYP5m1js3j58yqb
 xaf1y1gt5h85x2px/vwGdoubW46yWGx6fI3V4vKuOWwWM87vY7Lovr6DzWL58X9MFq17j7Bb
 LN16k9GB1+NyXy+Tx6ZVnWwem5fUe7Sc3M/i8fHpLRaPvi2rGD0+b5LzaD/QzRTAEcVlk5Ka
 k1mWWqRvl8CVMb9rOlvBLJGKm5ufMTcwHuTvYuTkkBAwkVj9eyd7FyMXh5DAbkaJP3tvMUEk
 pCWub5zADmELS6z89xyqqIlJYvX0x2BFbALaEnenbwGzRQSCJO6tWcsKUsQssIpJorP3LCNI
 QljAWqL/0Ac2EJtFQFXi5vH/YHFeARuJeT/usEJskJdYveEA8wRGngWMDKsYJVMLinPTc4sN
 C4zyUsv1ihNzi0vz0vWS83M3MYIDVEtrB+OJE/GHGAU4GJV4eFdcrY0TYk0sK67MPcQowcGs
 JML7NLImTog3JbGyKrUoP76oNCe1+BCjNAeLkjivfP6xSCGB9MSS1OzU1ILUIpgsEwenVAOj
 8izNLPbt56LfNE5gm+Kx4uIfcf7nfgmBP030lL5dzr9b+75KYY2ogAJTvEZwbbfYu+aEG7mS
 Aiuub2g6tXQ+T8VfB77I/4ofZ9+6e8HR79AtBs3emiymhIr3CRvDpvulRQteVjsb7JivMc/g
 t+Z2k+0r0xVOeQQoZwl+fLrh/LcfjEdZc3yUWIozEg21mIuKEwEBvsv+TAIAAA==
X-CMS-MailID: 20200327171411epcas5p17f4457f9fd61800257607059b9506fb2
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200327171411epcas5p17f4457f9fd61800257607059b9506fb2
References: <CGME20200327171411epcas5p17f4457f9fd61800257607059b9506fb2@epcas5p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_101422_185656_70F9315E 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-samsung-soc@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org,
 Alim Akhtar <alim.akhtar@samsung.com>, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch-set introduces UFS (Universal Flash Storage) host controller support
for Samsung family SoC. Mostly, it consists of UFS PHY and host specific driver.

- Changes since v3:
* Addressed Kishon's and Avir's review comments
* fixed make dt_binding_check error as pointed by Rob 

- Changes since v2:
* fixed build warning by kbuild test robot 
* Added Reported-by tags

- Changes since v1:
* fixed make dt_binding_check error as pointed by Rob
* Addressed Krzysztof's review comments
* Added Reviewed-by tags

 
patch 1/5: define devicetree bindings for UFS PHY
patch 2/5: Adds UFS PHY driver
patch 3/5: define devicetree bindings for UFS HCI 
patch 4/5: Adds Samsung UFS HCI driver
patch 5/5: Enabled UFS on exynos7 platform

Note: This series is based on Linux-5.6-rc6 (commit: fb33c6510d55)


Alim Akhtar (5):
  dt-bindings: phy: Document Samsung UFS PHY bindings
  phy: samsung-ufs: add UFS PHY driver for samsung SoC
  Documentation: devicetree: ufs: Add DT bindings for exynos UFS host
    controller
  scsi: ufs-exynos: add UFS host support for Exynos SoCs
  arm64: dts: Add node for ufs exynos7

 .../bindings/phy/samsung,ufs-phy.yaml         |   62 +
 .../devicetree/bindings/ufs/ufs-exynos.txt    |  104 ++
 .../boot/dts/exynos/exynos7-espresso.dts      |   16 +
 arch/arm64/boot/dts/exynos/exynos7.dtsi       |   44 +-
 drivers/phy/samsung/Kconfig                   |    9 +
 drivers/phy/samsung/Makefile                  |    1 +
 drivers/phy/samsung/phy-exynos7-ufs.h         |   85 +
 drivers/phy/samsung/phy-samsung-ufs.c         |  311 ++++
 drivers/phy/samsung/phy-samsung-ufs.h         |  100 ++
 drivers/scsi/ufs/Kconfig                      |   12 +
 drivers/scsi/ufs/Makefile                     |    1 +
 drivers/scsi/ufs/ufs-exynos.c                 | 1399 +++++++++++++++++
 drivers/scsi/ufs/ufs-exynos.h                 |  268 ++++
 drivers/scsi/ufs/unipro.h                     |   41 +
 include/linux/phy/phy-samsung-ufs.h           |   70 +
 15 files changed, 2521 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/ufs/ufs-exynos.txt
 create mode 100644 drivers/phy/samsung/phy-exynos7-ufs.h
 create mode 100644 drivers/phy/samsung/phy-samsung-ufs.c
 create mode 100644 drivers/phy/samsung/phy-samsung-ufs.h
 create mode 100644 drivers/scsi/ufs/ufs-exynos.c
 create mode 100644 drivers/scsi/ufs/ufs-exynos.h
 create mode 100644 include/linux/phy/phy-samsung-ufs.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
