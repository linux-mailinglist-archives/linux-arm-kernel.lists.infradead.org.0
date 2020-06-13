Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A11E1F8091
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 05:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=ELU+oDYFC3LWjOssrcJkbgR8JPnogPGjLDtsAT1JZ8w=; b=V8O9CYDtjQ+8GC
	8iv0TyuoAoquJdAzNBI1x44ocerkU1bGmCD/Xi1rVmHtdaxk6KG33CDCa/O1aW5/E0kwXjaQfWmme
	J/ITB0z3P/IY5gapI0vr5sQLAWLdHllUpbvIm/Dp0vM81RXtlIb3QWM11JYhzrdguyWMWAF1cy382
	wfEYVbpha5Shg3tL9WOlJK8VxGYpMXojAA+1f6oVEJmbLyXrQRmxx3mjVL8dCRWKawwW1zQX4dYLI
	bsxR3p9Dnsa77sELlx6d9e7AGWLXkivKLiwm+HM6RiF3tFpOEs5yGoFLNwQQFgOd1Px1TgW1/eEsK
	LEAdUs+kgnmI1mxiqffw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjwTT-0001KW-9c; Sat, 13 Jun 2020 03:04:51 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjwTK-0001JD-Av
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 03:04:45 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200613030438epoutp04d43353122799e2ec3c6da18379f33f3f~X_3ZLRbmA2440624406epoutp04g
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 03:04:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200613030438epoutp04d43353122799e2ec3c6da18379f33f3f~X_3ZLRbmA2440624406epoutp04g
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592017478;
 bh=EJQ586JopX9Nh+Jh0icLV762x4EESw3HLRqH83Yavmg=;
 h=From:To:Cc:Subject:Date:References:From;
 b=kLnuFFqouHpGc2jho1CQqpJszfrYiEMv+cYWM3RT8d7gz/TeIEXYRfE/nZwFoKzdW
 tS0TDc+H9+pYbuGDd0TnEwkVU39ZX6Rx1lbsQgHUjsL5OhIbuFzVNdSHzRvq1/vsYD
 NFovB9qAD9qHszy9z3OEfdPPjEaCLTo7Udvo5K1Q=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200613030438epcas5p1818b0bde3976ae3c606df922f2bc7175~X_3YfchpN1950619506epcas5p13;
 Sat, 13 Jun 2020 03:04:38 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 D1.43.09475.54244EE5; Sat, 13 Jun 2020 12:04:37 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200613030436epcas5p38137bcaddd80ec5eed746a80a1fe31f5~X_3XNRevZ2268422684epcas5p3F;
 Sat, 13 Jun 2020 03:04:36 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200613030436epsmtrp2ecb3e27c31e5bbb1c2b9027b1d2ca687~X_3XJ0SBz2362123621epsmtrp2r;
 Sat, 13 Jun 2020 03:04:36 +0000 (GMT)
X-AuditID: b6c32a4b-389ff70000002503-b1-5ee4424564ef
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 1F.B4.08303.44244EE5; Sat, 13 Jun 2020 12:04:36 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200613030434epsmtip20bce7376305d84be447eda83dd85cdeb~X_3VMoJKF0568705687epsmtip2S;
 Sat, 13 Jun 2020 03:04:34 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [RESEND PATCH v10 00/10] exynos-ufs: Add support for UFS HCI
Date: Sat, 13 Jun 2020 08:16:56 +0530
Message-Id: <20200613024706.27975-1-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrLKsWRmVeSWpSXmKPExsWy7bCmhq6r05M4g0cTLC0ezNvGZvHy51U2
 i0/rl7FazD9yjtXiwtMeNovz5zewW9zccpTFYtPja6wWl3fNYbOYcX4fk0X39R1sFsuP/2Oy
 +L9nB7vF0q03GR34PC739TJ5bFrVyeaxeUm9R8vJ/SweH5/eYvHo27KK0eP4je1MHp83yXm0
 H+hmCuCM4rJJSc3JLEst0rdL4Mr4fqeLseCvTMW5K89ZGxgXi3UxcnBICJhIvL3u18XIxSEk
 sJtR4tj9xYwQzidGiYNLjjJDOJ8ZJS6d/MEG03F5jgFEfBejxIPvz6CKWpgk5nesAmrn5GAT
 0Ja4O30LE4gtIiAsceRbG1icWeAlk8SuRwUgtrCAq8T5U6vYQWwWAVWJ46+Ogdm8AjYSs5a+
 ZwaxJQTkJVZvOMAMEReUODnzCQvEHHmJ5q2zoWq2cEjMvlwNYbtIXDo3jRHCFpZ4dXwLO4Qt
 JfH53V6oB7IlenYZQ4RrJJbOO8YCYdtLHLgyhwWkhFlAU2L9Ln2ITXwSvb+fMEF08kp0tAlB
 VKtKNL+7CtUpLTGxu5sVosRD4t1eCZCwkECsxJfN39kmMMrNQnL+LCTnz0LYtYCReRWjZGpB
 cW56arFpgXFearlecWJucWleul5yfu4mRnCK0vLewfjowQe9Q4xMHIyHGCU4mJVEeAXFH8YJ
 8aYkVlalFuXHF5XmpBYfYpTmYFES51X6cSZOSCA9sSQ1OzW1ILUIJsvEwSnVwLQ/aa3DdhGb
 dn3zeLb5pyxtZFt6rdfduujVkct0JXjiUpk3EbcWFKzY+vjiya3ib4XyOu+df2Kl5jlV1ubq
 k88qy9zmxIXq9d1c8C60e9k25tmT6x+yMBXcP1QZ+uFPkIXiEWl5nhi9/xOirwhpJbLauj37
 c8hZYYfIvueiDt0hV/p2z7F+XPpupwe7htUTvodSs6L6VsyUjLjZ0ambWyF5+gjPo3TF1yUK
 AZcDfK4Kf7LYytP0MrmgTvai5ZH5E9RCDusfcbQ5Ym7Cx8S9dV7izDcRtrn3+40yetlDn/Lx
 +DYKxAglb/JRkV3J+fpI/uX1bIH8qn9Y/vZXzDZNn8d+dRGveHqCTGemiN01JZbijERDLeai
 4kQAXrwTrsADAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrFLMWRmVeSWpSXmKPExsWy7bCSvK6L05M4gxVz5SwezNvGZvHy51U2
 i0/rl7FazD9yjtXiwtMeNovz5zewW9zccpTFYtPja6wWl3fNYbOYcX4fk0X39R1sFsuP/2Oy
 +L9nB7vF0q03GR34PC739TJ5bFrVyeaxeUm9R8vJ/SweH5/eYvHo27KK0eP4je1MHp83yXm0
 H+hmCuCM4rJJSc3JLEst0rdL4Mr4fqeLseCvTMW5K89ZGxgXi3UxcnBICJhIXJ5j0MXIxSEk
 sINR4u3CFcxdjJxAcWmJ6xsnsEPYwhIr/z0Hs4UEmpgknswKALHZBLQl7k7fwgRiiwDVHPnW
 xggyiFngO5PEgQkTwAYJC7hKnD+1CqyZRUBV4virY2A2r4CNxKyl76GWyUus3nCAGSIuKHFy
 5hMWkOOYBdQl1s8TAgkzA5U0b53NPIGRfxaSqlkIVbOQVC1gZF7FKJlaUJybnltsWGCUl1qu
 V5yYW1yal66XnJ+7iREcPVpaOxj3rPqgd4iRiYPxEKMEB7OSCK+g+MM4Id6UxMqq1KL8+KLS
 nNTiQ4zSHCxK4rxfZy2MExJITyxJzU5NLUgtgskycXBKNTApBkwQPRxQqcDI8rZN4NhPFy0r
 i6ub41TXL911y/XvtNSDG7/tnGVnJ7Yqu3CDx9tZU7sm3pjK9XDVJd3G9PVRJ2pW115jmu6z
 dfmuE2wxnlIetnNOt/3XXrvx08cDm859nnvV9or3bGP+tZs1AiO+uy7zaAjxzNT/4uLvqfTu
 bv9Hw6nKlssWGQa7h6yK2LK9vuG//W1duT6e2K1PWkucS5nXBEetWVmVenHtN94deRy82jcU
 kj97Nzw1mZR2zZLB+pPTpvTblycGvfW99XXfpuyJKxbd5j/3OKNV0f3nuoPrmg8e1Fze6aas
 +2r6/6hbr+RljSb27LarlJp4aXZIVlX99FCO5V1mLSvsp/z8rsRSnJFoqMVcVJwIAHomHfcN
 AwAA
X-CMS-MailID: 20200613030436epcas5p38137bcaddd80ec5eed746a80a1fe31f5
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200613030436epcas5p38137bcaddd80ec5eed746a80a1fe31f5
References: <CGME20200613030436epcas5p38137bcaddd80ec5eed746a80a1fe31f5@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_200442_900684_8810BFBA 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com, kishon@ti.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org,
 Alim Akhtar <alim.akhtar@samsung.com>, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch-set introduces UFS (Universal Flash Storage) host controller support
for Samsung family SoC. Mostly, it consists of UFS PHY and host specific driver.

- Changes since v9
* fixed the review comments by Rob on ufs dt bindings
* Addeded Rob's reviwed-by tag on 08/10 patch

- Changes since v8
* fixed make dt_binding_check error as pointed by Rob
* Addressed review comments from Randy Dunlap

- Changes since v7:
* fixed review comments from Rob and Kishon
* Addeded reviwed-by tags
* rebased on top of v5.7-rc4
 
- Changes since v6:
* Addressed review comments from Avri and Christoph
* Added Reviewed-by tags of Avri and Can on various patches

- Changes since v5:
* re-introduce various quicks which was removed because of no driver
* consumer of those quirks, initial 4 patches does the same.
* Added Reviewed-by tags
* rebased on top of v5.7-rc1
* included Kiwoong's patch in this series, which this driver needs

- Changes since v4:
* Addressed review comments from Avir and Rob 
* Minor improvment on the ufs phy and ufshc drivers
* Added Tested-by from Pawel
* Change UFS binding to DT schema format


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

Note: This series is based on Linux-5.7-rc4 (commit: 0e698dfa2822)

Alim Akhtar (9):
  scsi: ufs: add quirk to fix mishandling utrlclr/utmrlclr
  scsi: ufs: add quirk to disallow reset of interrupt aggregation
  scsi: ufs: add quirk to enable host controller without hce
  scsi: ufs: introduce UFSHCD_QUIRK_PRDT_BYTE_GRAN quirk
  dt-bindings: phy: Document Samsung UFS PHY bindings
  phy: samsung-ufs: add UFS PHY driver for samsung SoC
  dt-bindings: ufs: Add bindings for Samsung ufs host
  scsi: ufs-exynos: add UFS host support for Exynos SoCs
  arm64: dts: Add node for ufs exynos7

Kiwoong Kim (1):
  scsi: ufs: add quirk to fix abnormal ocs fatal error

 .../bindings/phy/samsung,ufs-phy.yaml         |   75 +
 .../bindings/ufs/samsung,exynos-ufs.yaml      |   89 ++
 .../boot/dts/exynos/exynos7-espresso.dts      |    4 +
 arch/arm64/boot/dts/exynos/exynos7.dtsi       |   43 +-
 drivers/phy/samsung/Kconfig                   |    9 +
 drivers/phy/samsung/Makefile                  |    1 +
 drivers/phy/samsung/phy-exynos7-ufs.h         |   86 ++
 drivers/phy/samsung/phy-samsung-ufs.c         |  380 +++++
 drivers/phy/samsung/phy-samsung-ufs.h         |  143 ++
 drivers/scsi/ufs/Kconfig                      |   12 +
 drivers/scsi/ufs/Makefile                     |    1 +
 drivers/scsi/ufs/ufs-exynos.c                 | 1292 +++++++++++++++++
 drivers/scsi/ufs/ufs-exynos.h                 |  287 ++++
 drivers/scsi/ufs/ufshcd.c                     |  126 +-
 drivers/scsi/ufs/ufshcd.h                     |   29 +
 drivers/scsi/ufs/unipro.h                     |   33 +
 16 files changed, 2596 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
 create mode 100644 drivers/phy/samsung/phy-exynos7-ufs.h
 create mode 100644 drivers/phy/samsung/phy-samsung-ufs.c
 create mode 100644 drivers/phy/samsung/phy-samsung-ufs.h
 create mode 100644 drivers/scsi/ufs/ufs-exynos.c
 create mode 100644 drivers/scsi/ufs/ufs-exynos.h


base-commit: 0e698dfa282211e414076f9dc7e83c1c288314fd
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
