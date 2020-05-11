Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A351CCF90
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 04:15:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=55FnjjVGK+p/iqvNrmo9YMapCjeyi/6j3fRJmrypkqk=; b=nk35Gc5e5JjBGs
	aso+Tgl/dXrVULp/BOl2eHGmwyAz3oO6F5Bk6A220Kv/spVUYdYd45rT2l+/6NStpjBFj2wJ6h1sf
	282JIypw3WzuaUVFe3RrzlgMaAIp8IyjO7GNQx07LCcnxb+zTPMQlWaK98orZgn4KhHYtgIa5amOC
	CNszalwCiUKK25OufsDV0Ymmvv5qcfE/a8/YJ1d+1yYujyQLA4kZbiDT+tZ8VFo+NQBLS8iXbFNFA
	PqdiP8aS/naGQqGQqZt6qch5RTCcebwomEHYOrLK4K9zshU1DsPq3NzVb9HNHquEdbP3QY9P98BVd
	GXroKOtNh1mn37vRbEdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXxyF-0003zN-II; Mon, 11 May 2020 02:15:07 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXxxA-0002rr-2k
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 02:14:02 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200511021348epoutp01cede104645d4159d68495fb3c13da5a0~N14ls_UOy2291622916epoutp01P
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 02:13:48 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200511021348epoutp01cede104645d4159d68495fb3c13da5a0~N14ls_UOy2291622916epoutp01P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589163228;
 bh=59ChBBALtCV0OHCYik7G7Vhyml1OCuFRXmuIWrOExQs=;
 h=From:To:Cc:Subject:Date:References:From;
 b=SNQkpwmA8V++2sFwgeiwUYAplzrpWGDeh3FQtrQ95hDh445591WF3QPQUlKAws0gw
 APYRp8yiyD6S2QsOGQFfw2jllf/95y2mLsKOf2jWF75Z1GavwWc2Vt1ixo0W6mPjec
 AH21QUntro08jLyciqFbwMMEnlngfVmzwzlVkOeY=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200511021348epcas5p23c5901997f4574164ff2f0a649e77a70~N14lXY3EI1832818328epcas5p2i;
 Mon, 11 May 2020 02:13:48 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 A8.9E.23569.CD4B8BE5; Mon, 11 May 2020 11:13:48 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
 20200511021347epcas5p2ebef1a4c4aecac26dde73c5d0cc88455~N14kil1wW1832818328epcas5p2f;
 Mon, 11 May 2020 02:13:47 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200511021347epsmtrp2d1aac297e091258d60438fd021f27dda~N14khJ4Ej1467414674epsmtrp2L;
 Mon, 11 May 2020 02:13:47 +0000 (GMT)
X-AuditID: b6c32a4a-3c7ff70000005c11-dd-5eb8b4dc08b0
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 C6.E6.18461.BD4B8BE5; Mon, 11 May 2020 11:13:47 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200511021345epsmtip26537285c1e7c299a73d8e33304b6657d~N14if_74I3210532105epsmtip2i;
 Mon, 11 May 2020 02:13:45 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v8 00/10] exynos-ufs: Add support for UFS HCI
Date: Mon, 11 May 2020 07:30:21 +0530
Message-Id: <20200511020031.25730-1-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrGKsWRmVeSWpSXmKPExsWy7bCmpu6dLTviDFb1CFs8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujFn7DrIWdEhXrG5cxN7A+Fiki5GTQ0LAROL97YusXYxcHEICuxklbncdYIJw
 PjFKXHt5HirzjVHiU+NTJpiW47MnQ1XtZZTonfYJymlhkrh54BQjSBWbgLbE3elbwDpEBIQl
 jnxrA4szC9xgkniw0gXEFhawleg69JUFxGYRUJX4tPc6excjBwevgI1E1y8NiGXyEqs3HGAG
 sXkFBCVOznzCAjFGXqJ562xmkL0SAgs5JF5M+cMO0eAi8eT5WWYIW1ji1fEtUHEpic/v9rKB
 zJcQyJbo2WUMEa6RWDrvGAuEbS9x4MocFpASZgFNifW79CFW8Un0/n7CBNHJK9HRJgRRrSrR
 /O4qVKe0xMTublYI20Ni0vsvYHEhgViJ4xduM09glJuF5IFZSB6YhbBsASPzKkbJ1ILi3PTU
 YtMCo7zUcr3ixNzi0rx0veT83E2M4KSk5bWD8eGDD3qHGJk4GA8xSnAwK4nwLs/dESfEm5JY
 WZValB9fVJqTWnyIUZqDRUmcN6lxS5yQQHpiSWp2ampBahFMlomDU6qBSe6Wxn3nqNiNf934
 eCVP3m+8oq32/fGz5qdqc7MiJ329eXm379n5+Tz/xN98k4tyPlnl7he01fWeoxej3o9PS8L8
 zn74zzLN+e2LNStr7v+Ke/XDWlj8ievjPXo7Wj+KmUQHHXDlKz7l8WPJ97uMORdtRVRn6WWq
 Fu2ffmJjPLd6VK7ZChcBufkHT/k135LOi//Ucrhtmp6QfDQnt+5lMS/V8EB7x/siW981xu1c
 z9RUv6bs1QLzL7zvEzbuOPph4rHUC7oaKf+Ofe2ez/RJZ98r70yzkzMTuysPXY1iEHljd7DG
 +pxYv06e7ZP2bU4t6av3fDTfmn9hOneAEctJHqUMUycDTwlhnl2qGz82KrEUZyQaajEXFScC
 AJ+VZYm5AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrALMWRmVeSWpSXmKPExsWy7bCSvO7tLTviDGZPFLd4MG8bm8XLn1fZ
 LD6tX8ZqMf/IOVaL8+c3sFvc3HKUxWLT42usFpd3zWGzmHF+H5NF9/UdbBbLj/9jsvi/Zwe7
 xdKtNxkdeD0u9/UyeWxa1cnmsXlJvUfLyf0sHh+f3mLx6NuyitHj8yY5j/YD3UwBHFFcNimp
 OZllqUX6dglcGbP2HWQt6JCuWN24iL2B8bFIFyMnh4SAicTx2ZOZuhi5OIQEdjNKLJjzmgUi
 IS1xfeMEdghbWGLlv+fsEEVNTBJ35i0GS7AJaEvcnb6FCcQWASo68q2NEcRmFnjGJHHqYSmI
 LSxgK9F16CvYUBYBVYlPe68D9XJw8ArYSHT90oCYLy+xesMBZhCbV0BQ4uTMJywgJcwC6hLr
 5wlBTJSXaN46m3kCI/8sJFWzEKpmIalawMi8ilEytaA4Nz232LDAMC+1XK84Mbe4NC9dLzk/
 dxMjOFK0NHcwbl/1Qe8QIxMH4yFGCQ5mJRHe5bk74oR4UxIrq1KL8uOLSnNSiw8xSnOwKInz
 3ihcGCckkJ5YkpqdmlqQWgSTZeLglGpgspBh0g3f1pf1WfLZ4RgXMWc15TC972nhnxsM74rm
 NDVq5ZakX9H/Zhf6h0Mu/NO+NXl3Fvb/3eBXero1Nd7779eUQ9Vcv/8ZNf2UTiu1OHK5+2L7
 nz37tgkdfVC+wJLfcvkuH+EbhYVasjwnes2nnVrZr9+qsU25e8mEk6FJZ4RPttqVhRjUCqxT
 W7pmRozfPPOVu/demb3rh7rtQ9te2bOCh9x6i3Y92vHl+8tFZqqrDlQ5tR+8tor/9wnOhf+K
 +qWXn+CRfvF8Y5Kt4du/TrELp54QnTIxTnZTqv4bvQlfzpjrfedWPuj099dCm02zOvtZZNtq
 Ps97d/ZIqNt8v8S50hUTUucefl997qzbNCWW4oxEQy3mouJEAN1kQxEDAwAA
X-CMS-MailID: 20200511021347epcas5p2ebef1a4c4aecac26dde73c5d0cc88455
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200511021347epcas5p2ebef1a4c4aecac26dde73c5d0cc88455
References: <CGME20200511021347epcas5p2ebef1a4c4aecac26dde73c5d0cc88455@epcas5p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_191400_298310_7EEE481B 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
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
  dt-bindings: ufs: Add DT binding documentation for ufs
  scsi: ufs-exynos: add UFS host support for Exynos SoCs
  arm64: dts: Add node for ufs exynos7

Kiwoong Kim (1):
  scsi: ufs: add quirk to fix abnormal ocs fatal error

 .../bindings/phy/samsung,ufs-phy.yaml         |   75 +
 .../bindings/ufs/samsung,exynos-ufs.yaml      |   92 ++
 .../boot/dts/exynos/exynos7-espresso.dts      |    4 +
 arch/arm64/boot/dts/exynos/exynos7.dtsi       |   44 +-
 drivers/phy/samsung/Kconfig                   |    9 +
 drivers/phy/samsung/Makefile                  |    1 +
 drivers/phy/samsung/phy-exynos7-ufs.h         |   86 ++
 drivers/phy/samsung/phy-samsung-ufs.c         |  380 +++++
 drivers/phy/samsung/phy-samsung-ufs.h         |  143 ++
 drivers/scsi/ufs/Kconfig                      |   12 +
 drivers/scsi/ufs/Makefile                     |    1 +
 drivers/scsi/ufs/ufs-exynos.c                 | 1300 +++++++++++++++++
 drivers/scsi/ufs/ufs-exynos.h                 |  284 ++++
 drivers/scsi/ufs/ufshcd.c                     |  126 +-
 drivers/scsi/ufs/ufshcd.h                     |   29 +
 drivers/scsi/ufs/unipro.h                     |   33 +
 16 files changed, 2605 insertions(+), 14 deletions(-)
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
