Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 204801E9B5B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 03:40:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x/koqETmR7mvET9F0Vv+V4TQrmDWaQT8YB8HEtYiZg4=; b=CijcVe3qqzJifH
	4b7SAr/zI+O0ot8MMWhffvLVXaWMO4pASwsRN+JMSsyLyjBKkZbz1tipB88zXrcvQ6ILx4QViJSdc
	ZuguvXhoccJezUR8uRFruNH2Feb1lkT0d01r0OGQdqJxu6okh9SMDwOezoFOcFSEwUTXIvEXm3JCU
	v6LDkCi8fT2+42YOFczfDYMKTmkFrSUlcGtCs8yka1eamacfHNoC01R4Oo4QWUbwQHg4+qHEa+gfB
	PBL0r1NdI32nkJaTG5shk8zmfze6ORyH/v/CImkcX3GwQ2OG9Yb5f9zcs97c82/adHEGc9KDLmiaz
	oCjKcVFcGzdNu0sI3qgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfZRH-0007wr-E4; Mon, 01 Jun 2020 01:40:31 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfZR7-0007vm-Gx
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 01:40:23 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200601014014epoutp0295041d62f233be0908c60f18ea53d4bf~UR_Rioy7w0726507265epoutp02T
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  1 Jun 2020 01:40:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200601014014epoutp0295041d62f233be0908c60f18ea53d4bf~UR_Rioy7w0726507265epoutp02T
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590975614;
 bh=Oz/eN6ROANE+moyw0xbK/zgG+HDyKrdVR2f7wS3es2U=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=vbCZ5fTwEVizSKlNYeXev53wXvQ6Vg5Rskk0ykkzFvgLKErnrQxuoXK0smLf1MaOz
 LqmGS8y+76Q/u3+A/bhrgxYdNgD0l2+ahprMg98cqrgnxfsq0iOtIT04VeRYB0DyFV
 uFp7FYasmblqsHInzUrXJLv8ATJQM72IdQlVbd3Q=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20200601014013epcas5p33698a7aec4da4f1b51905fefebd46804~UR_QvOTPI0181401814epcas5p3G;
 Mon,  1 Jun 2020 01:40:13 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 C2.08.09475.D7C54DE5; Mon,  1 Jun 2020 10:40:13 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
 20200601014011epcas5p425ea6d0152aab103a6d37783b22733e8~UR_OvVJY52874728747epcas5p4f;
 Mon,  1 Jun 2020 01:40:11 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200601014011epsmtrp27b7408b47e0ac78bf07fb381873c2dbc~UR_Ot0a3E2725527255epsmtrp2G;
 Mon,  1 Jun 2020 01:40:11 +0000 (GMT)
X-AuditID: b6c32a4b-389ff70000002503-76-5ed45c7d2157
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 B5.E5.08382.B7C54DE5; Mon,  1 Jun 2020 10:40:11 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200601014008epsmtip1ff611f53d6b4ce855f4a98e2e18a608c~UR_LoysjC2883728837epsmtip1O;
 Mon,  1 Jun 2020 01:40:08 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: <martin.petersen@oracle.com>, "'Kishon Vijay Abraham I'" <kishon@ti.com>
In-Reply-To: <20200528011658.71590-1-alim.akhtar@samsung.com>
Subject: RE: [PATCH v10 00/10] exynos-ufs: Add support for UFS HCI
Date: Mon, 1 Jun 2020 07:10:06 +0530
Message-ID: <000101d637b5$96b08f50$c411adf0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQNA14zZ9KpC6NxovY65uGX80LQ4kgIpylB3pdxr7FA=
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrHKsWRmVeSWpSXmKPExsWy7bCmum5tzJU4gznTNSxe/rzKZvFp/TJW
 i/lHzrFaXHjaw2Zx/vwGdoubW46yWGx6fI3V4vKuOWwWM87vY7Lovr6DzWL58X9MFv/37GC3
 WLr1JqMDr8flvl4mj02rOtk8Ni+p92g5uZ/F4+PTWywefVtWMXocv7GdyePzJjmP9gPdTAGc
 UVw2Kak5mWWpRfp2CVwZG2f+ZS/YK1HRd/YFawPjP6EuRk4OCQETiS0L2pi6GLk4hAR2M0pc
 f7mGDcL5xChx+NRdFgjnG6PEpAeP2GBaHrRuYYRI7AVq6fgE5bxhlDi/ehkTSBWbgK7EjsVt
 YB0iAj4Sv98eBFvCLLCHSWL62w1Aczk4OAVsJfZOcACpERZwkni9Yg9YL4uAisTuGZ2MIDav
 gKXErnVLWCFsQYmTM5+wgNjMAtoSyxa+Zoa4SEHi59NlrBC7rCQ+XOpmhqgRlzj6sweq5gGH
 xPfJhRC2i8S3I6tZIWxhiVfHt7BD2FISn9/tZQM5TUIgW6JnlzFEuEZi6bxjLBC2vcSBK3PA
 rmcW0JRYv0sfYhOfRO/vJ0wQnbwSHW3Q0FWVaH53FapTWmJidzcrRImHRF+T6ARGxVlI3pqF
 5K1ZSM6fhbBrASPLKkbJ1ILi3PTUYtMC47zUcr3ixNzi0rx0veT83E2M4CSn5b2D8dGDD3qH
 GJk4GA8xSnAwK4nwTla/FCfEm5JYWZValB9fVJqTWnyIUZqDRUmcV+nHmTghgfTEktTs1NSC
 1CKYLBMHp1QD0+klSWcV8nccCmO7bK2/acehzJt32/72CYo6RM31FbCZZqQ7pVk3dFO6ZPrp
 dfOKhRbfffihe1vg7C8+/fy8sge+Cnp85FguMlnUfd29QzNUlT/evj6XpfPBA+Y041McC5Pu
 PVOLDJLcoXr6hPOHht6Sw89nxCovX3DlxRXTFpVDO5jYlzLH7U7tPHtPu+Zu6a+AWeIpMs8/
 sWsrWC07Jb5gSWEs93otpaJZNa/faK7gOt0n8udSybbPbEFe30I7SvrjPKavs4/YdFGy/uke
 s7jGp2J/910ONvTftMBittKEY2fKI+77C/Zr8kw9xXbsNVO3+r125fNPxDo+Ne8u9wm+8cDz
 Zlkvg84CyaJF3kosxRmJhlrMRcWJALmKRZnhAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKIsWRmVeSWpSXmKPExsWy7bCSnG51zJU4g+mbZS1e/rzKZvFp/TJW
 i/lHzrFaXHjaw2Zx/vwGdoubW46yWGx6fI3V4vKuOWwWM87vY7Lovr6DzWL58X9MFv/37GC3
 WLr1JqMDr8flvl4mj02rOtk8Ni+p92g5uZ/F4+PTWywefVtWMXocv7GdyePzJjmP9gPdTAGc
 UVw2Kak5mWWpRfp2CVwZR2+tZyv4K15xur2XtYFxl1AXIyeHhICJxIPWLYxdjFwcQgK7GSU2
 fGtgh0hIS1zfOAHKFpZY+e85O0TRK0aJJy8PM4Ek2AR0JXYsbmMDsUUE/CS+nfjNClLELHCC
 SeLho4tMEB19jBJ7H61i6WLk4OAUsJXYO8EBpEFYwEni9Yo9YINYBFQkds/oZASxeQUsJXat
 W8IKYQtKnJz5hAXEZhbQlnh68ymcvWzha2aI6xQkfj5dxgpxhJXEh0vdzBA14hJHf/YwT2AU
 noVk1Cwko2YhGTULScsCRpZVjJKpBcW56bnFhgWGeanlesWJucWleel6yfm5mxjBMauluYNx
 +6oPeocYmTgYDzFKcDArifBOVr8UJ8SbklhZlVqUH19UmpNafIhRmoNFSZz3RuHCOCGB9MSS
 1OzU1ILUIpgsEwenVAOT4o/TdY+7OL5u7s4rklxo6+Fbnlk0W8tgX+yLJV15av73TXvvpz3M
 9WPiECpNYr4g285waJ7LtJNCX6ed9k0/MkuJ6+h5DnUlt8dKm05e8t857/RRr/uXrkc1sWrL
 XtPauHep9KuKTKZE8XtFcWVrtIUqTusXvVq/92BpieKdA3MUznxI1tm3tGWV471ZprJsOie/
 NKb/Orvi4/o9rIJm909d4JDfy6Jfm7RDaOGsbwvl92ivEldaeU6nLsyN6cKjwrQwtmXbfuQe
 1Ztxomax2ILpn6YKlN9aeUVS9MWNY6f6G+6Xy3w/Z8XwM+zEi/Cg1/OnKV0SX7mrruToiuPz
 xTK7qrKNHnra8gt+CWnXU2Ipzkg01GIuKk4EAFcrDkBIAwAA
X-CMS-MailID: 20200601014011epcas5p425ea6d0152aab103a6d37783b22733e8
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200528013223epcas5p2be85fa8803326b49a905fb7225992cad
References: <CGME20200528013223epcas5p2be85fa8803326b49a905fb7225992cad@epcas5p2.samsung.com>
 <20200528011658.71590-1-alim.akhtar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_184021_806963_1E617EC9 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.25 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-scsi@vger.kernel.org, robh@kernel.org, linux-kernel@vger.kernel.org,
 krzk@kernel.org, kwmad.kim@samsung.com, avri.altman@wdc.com,
 cang@codeaurora.org, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Alim Akhtar <alim.akhtar@samsung.com>
> Sent: 28 May 2020 06:47
> To: robh@kernel.org
> Cc: devicetree@vger.kernel.org; linux-scsi@vger.kernel.org; krzk@kernel.org;
> avri.altman@wdc.com; martin.petersen@oracle.com;
> kwmad.kim@samsung.com; stanley.chu@mediatek.com;
> cang@codeaurora.org; linux-samsung-soc@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Alim Akhtar
> <alim.akhtar@samsung.com>
> Subject: [PATCH v10 00/10] exynos-ufs: Add support for UFS HCI
> 
> This patch-set introduces UFS (Universal Flash Storage) host controller support
> for Samsung family SoC. Mostly, it consists of UFS PHY and host specific driver.
> 
.
.
.
> Alim Akhtar (9):
>   scsi: ufs: add quirk to fix mishandling utrlclr/utmrlclr
>   scsi: ufs: add quirk to disallow reset of interrupt aggregation
>   scsi: ufs: add quirk to enable host controller without hce
>   scsi: ufs: introduce UFSHCD_QUIRK_PRDT_BYTE_GRAN quirk
>   dt-bindings: phy: Document Samsung UFS PHY bindings
>   phy: samsung-ufs: add UFS PHY driver for samsung SoC
>   dt-bindings: ufs: Add bindings for Samsung ufs host
>   scsi: ufs-exynos: add UFS host support for Exynos SoCs
>   arm64: dts: Add node for ufs exynos7
> 
> Kiwoong Kim (1):
>   scsi: ufs: add quirk to fix abnormal ocs fatal error
> 
>  .../bindings/phy/samsung,ufs-phy.yaml         |   75 +
>  .../bindings/ufs/samsung,exynos-ufs.yaml      |   89 ++
>  .../boot/dts/exynos/exynos7-espresso.dts      |    4 +
>  arch/arm64/boot/dts/exynos/exynos7.dtsi       |   43 +-
>  drivers/phy/samsung/Kconfig                   |    9 +
>  drivers/phy/samsung/Makefile                  |    1 +
>  drivers/phy/samsung/phy-exynos7-ufs.h         |   86 ++
>  drivers/phy/samsung/phy-samsung-ufs.c         |  380 +++++
>  drivers/phy/samsung/phy-samsung-ufs.h         |  143 ++
>  drivers/scsi/ufs/Kconfig                      |   12 +
>  drivers/scsi/ufs/Makefile                     |    1 +
>  drivers/scsi/ufs/ufs-exynos.c                 | 1292 +++++++++++++++++
>  drivers/scsi/ufs/ufs-exynos.h                 |  287 ++++
>  drivers/scsi/ufs/ufshcd.c                     |  126 +-
>  drivers/scsi/ufs/ufshcd.h                     |   29 +
>  drivers/scsi/ufs/unipro.h                     |   33 +
>  16 files changed, 2596 insertions(+), 14 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/samsung,ufs-
> phy.yaml
>  create mode 100644 Documentation/devicetree/bindings/ufs/samsung,exynos-
> ufs.yaml
>  create mode 100644 drivers/phy/samsung/phy-exynos7-ufs.h
>  create mode 100644 drivers/phy/samsung/phy-samsung-ufs.c
>  create mode 100644 drivers/phy/samsung/phy-samsung-ufs.h
>  create mode 100644 drivers/scsi/ufs/ufs-exynos.c
>  create mode 100644 drivers/scsi/ufs/ufs-exynos.h
> 
Hi Martin and Kishon,
Can you please take the patches into your respective trees?
Thanks,

> 
> base-commit: 0e698dfa282211e414076f9dc7e83c1c288314fd
> --
> 2.17.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
