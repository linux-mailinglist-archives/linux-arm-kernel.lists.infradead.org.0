Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA8E18CD39
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 12:47:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z6Rc/x4fJ8IB91DCZ+znK88q2XrZY7dQCj936LafQ2A=; b=djqsLEcUGZKLLB
	VuR+00hbK7R/0IfwtPD/wBW/nW4R+oziaVePT1iCCcvZvug77a4981bbi4I4FmTQ6MTJhjxUqI79D
	OlMOwLndNzkoMV+s2iD0PP971JKOTRCNZgwSuNEIMdDif64TLXz8APBVYbEL3kzmmDDjV+Vdbo3lV
	m/uHAlOAReEY+BkZAVK1iNqBNx/a6uCWCGA7QVxJZnIBxHRtDZ7Dd2Ve/sf+yrzNngy82dXzyuTur
	y1afq4Ft/pI0YN9hRUKjkImLbHJ5A9KBAfU2eVuAwz2aoTlZJuBa17egYKbHDO2oeBf8xE+3O4MIS
	VeYwfDiFPC82IrVHhcUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFG7S-0007mx-Bx; Fri, 20 Mar 2020 11:47:18 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFG7H-0007lY-Vd
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 11:47:11 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200320114704epoutp01659d2e70b386fcf3f7a957670a3c2b80~_AKRanoiI1154111541epoutp01b
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 11:47:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200320114704epoutp01659d2e70b386fcf3f7a957670a3c2b80~_AKRanoiI1154111541epoutp01b
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1584704824;
 bh=3+7yBbCeH98AGWlxOV0UOul+xcfv/yd6Io7PfIyDxfI=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=CVGOEuI607sMx+rFoucb9343t5TZp3BD2Q555fjV3oQp2/HxBEee88EzPWnktVvqA
 T8y/zjVsjgOUzqvbLAVywMVSZN2cldft05NoUKJ8ESMdeRJkktOB4Fwj9xmyRNp4OM
 /xE+UyE028sPyZUJ8d4wywlGgc/sqBsPeCixYvU8=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTP id
 20200320114704epcas5p4ffa418e721d33335503daa15e7e48d90~_AKRDot7N1635516355epcas5p4G;
 Fri, 20 Mar 2020 11:47:04 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 31.F0.04778.83DA47E5; Fri, 20 Mar 2020 20:47:04 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200320114703epcas5p30cbf0a7dc0e3d0838adb9e8452aebdf8~_AKQAdcYf2270122701epcas5p3G;
 Fri, 20 Mar 2020 11:47:03 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200320114703epsmtrp26589052c20ac9d9fd6ae819c815260af~_AKP-YrFd2867428674epsmtrp2J;
 Fri, 20 Mar 2020 11:47:03 +0000 (GMT)
X-AuditID: b6c32a4a-353ff700000012aa-ba-5e74ad38b11c
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 A2.8D.04024.73DA47E5; Fri, 20 Mar 2020 20:47:03 +0900 (KST)
Received: from alimakhtar02 (unknown [107.111.84.32]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200320114701epsmtip1565cd76a7dfd398e323e7db8631bfbf6~_AKN82shC3234932349epsmtip17;
 Fri, 20 Mar 2020 11:47:00 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Kishon Vijay Abraham I'" <kishon@ti.com>, <robh+dt@kernel.org>,
 <devicetree@vger.kernel.org>, <linux-scsi@vger.kernel.org>
In-Reply-To: <65bce485-6070-aa09-00b5-0822e85466f4@ti.com>
Subject: RE: [PATCH v3 2/5] phy: samsung-ufs: add UFS PHY driver for samsung
 SoC
Date: Fri, 20 Mar 2020 17:16:59 +0530
Message-ID: <000001d5fead$45b3b460$d11b1d20$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQG8Fm24XBW91IxNCpc3FyucYAw+uQGVTiCPAbLkz0IBHQQeeahiA3sQ
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA02SaUwTURSFfdOZ6VCtPgvGKyZGGolSAyhuIxI1Rslo+GHwh3FDKoyAlFI7
 uAYjghu0IqgYpSi4UAUXpKBWsJTUYmMIYIQquEKkLhiJQmKCEpd2NPLvO/ed827Oy2MkitdU
 IJOizeD1WrVGScvIOw9CVKHsjYy4WdZszH4cctPsQJWZYkudrRT72GOk2ba2W1K2q7aJZC1v
 n1Jse10JzZ5payBYwzMrzV5x/STYQzanlC2/3YWWyrn2/GMEZ6nMpbmay/u5g4/sJPfV85zk
 8msrEefqvEtwg5Yp3JFGA7Hab70sKpHXpOzk9eGL42XJJvMQobt5D+3uvrY2Cz0pQnmIYQDP
 hXPH1+QhGaPA9Qh+OZulohhAYPIU0qL4hqAi5xP5L+FsDxHnNgRFrl6JKPr+iBbTH+HH0DgU
 rJcO+9IBOBtBef0Hn0uCcwm4XnrK5/LDkWB/46a97I9j4YA1i/QyiYOhsvMi8rIcL4SWL2Wk
 yOPh0dleH0vwTDBf+OS7B/BUGPKYKS8H4Gh4WXsfiZ6J0DRk9C0GfEcKRwZstBhYDparDX/Z
 H/pctVKRA2Gw3+vx9kwFY90ccZwJ5ecfkiIvgcaOEt9TSHAIVNWFi6vGwrEfvYSYlMPRwwrR
 HQw5/e6/yclQaDBQInMwXFMtLUBBxSOKFY8oVjyiQPH/ZWWIrESTeJ2QlsQL83QRWn5XmKBO
 E3Zok8IS0tMsyPfrVKusyNwa40CYQcoxcrYiI05BqXcKe9IcCBiJMkAemiTEKeSJ6j17eX36
 Zv0ODS840GSGVE6Un6DcGxU4SZ3Bp/K8jtf/OyUYv8AsFBwjvDWF52TbE/applfkl7RFd5wY
 pkcXTAsazNSVdn8G2652o8od1hy6fVHfVk3O3vnaGZoaz7Kojohxc7v8C88WMd8zD9IrXaPi
 U0ctaO2ZHb9x3Sazvudp77tXjU3b7DX2VIf2bhOg+vfVE2I2dHS+OBl7yHT61YqE1fEFWyLL
 laSQrJ6tkugF9W83qKCCcQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrMIsWRmVeSWpSXmKPExsWy7bCSnK752pI4gzt/2S1e/rzKZvFp/TJW
 i/lHzrFaXHjaw2Zx/vwGdoubW46yWGx6fI3V4vKuOWwWM87vY7Lovr6DzWL58X9MFq17j7Bb
 LN16k9GB1+NyXy+Tx6ZVnWwem5fUe7Sc3M/i8fHpLRaPvi2rGD2O39jO5PF5k5xH+4FupgDO
 KC6blNSczLLUIn27BK6MHWsfMRb83MxY0f9wBVsD4/QJjF2MHBwSAiYSRy5rdjFycggJ7GaU
 2HXNAsSWEJCWuL5xAjuELSyx8t9zIJsLqOYFo8ScvgdgCTYBXYkdi9vYQBIiAm2MEmf3TAZL
 MAtMZpJYepMfouMto8Tk5R/AEpwCVhL7719lA7GFBQIkrlz4BGazCKhKrLqxiBHE5hWwlDj7
 YQELhC0ocXLmExaIodoST28+hbOXLXzNDHGegsTPp8tYQWwRATeJO1v2MELUiEsc/dnDPIFR
 eBaSUbOQjJqFZNQsJC0LGFlWMUqmFhTnpucWGxYY5qWW6xUn5haX5qXrJefnbmIER62W5g7G
 y0viDzEKcDAq8fBarCyJE2JNLCuuzD3EKMHBrCTCq5teHCfEm5JYWZValB9fVJqTWnyIUZqD
 RUmc92nesUghgfTEktTs1NSC1CKYLBMHp1QD44ylH2IdL1fNj4rbfefnjS26Lkk7/2t8nbi3
 pLZTd+5flQ2q8o/ZF587yWSd+XxPw+81iUzTxZ1Orrn7h0tI2eD0iufGJgyfxRodj/2wtM3X
 FDYKOWjTOG2Nb801he6aj4r2TtoNSSd9/PZO2bk/d87etlhb/rDTIqdb5k3YcFO9NMgqqmbi
 fSWW4oxEQy3mouJEACkwKsnWAgAA
X-CMS-MailID: 20200320114703epcas5p30cbf0a7dc0e3d0838adb9e8452aebdf8
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200319150705epcas5p4fd8301d8edf95454a3234a12a835d7ec
References: <20200319150031.11024-1-alim.akhtar@samsung.com>
 <CGME20200319150705epcas5p4fd8301d8edf95454a3234a12a835d7ec@epcas5p4.samsung.com>
 <20200319150031.11024-3-alim.akhtar@samsung.com>
 <65bce485-6070-aa09-00b5-0822e85466f4@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_044708_549723_BAE9E143 
X-CRM114-Status: GOOD (  26.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 avri.altman@wdc.com, cang@codeaurora.org, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kishon

> -----Original Message-----
> From: Kishon Vijay Abraham I <kishon@ti.com>
> Sent: 20 March 2020 11:10
> To: Alim Akhtar <alim.akhtar@samsung.com>; robh+dt@kernel.org;
> devicetree@vger.kernel.org; linux-scsi@vger.kernel.org
> Cc: krzk@kernel.org; avri.altman@wdc.com; martin.petersen@oracle.com;
> kwmad.kim@samsung.com; stanley.chu@mediatek.com;
> cang@codeaurora.org; linux-samsung-soc@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH v3 2/5] phy: samsung-ufs: add UFS PHY driver for samsung
> SoC
> 
> Hi Alim,
> 
> On 3/19/2020 8:30 PM, Alim Akhtar wrote:
> > This patch introduces Samsung UFS PHY driver. This driver supports to
> > deal with phy calibration and power control according to UFS host
> > driver's behavior.
> >
> > Reviewed-by: Kiwoong Kim <kwmad.kim@samsung.com>
> > Signed-off-by: Seungwon Jeon <essuuj@gmail.com>
> > Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> > Cc: Kishon Vijay Abraham I <kishon@ti.com>
> > ---
> >  drivers/phy/samsung/Kconfig           |   9 +
> >  drivers/phy/samsung/Makefile          |   1 +
> >  drivers/phy/samsung/phy-exynos7-ufs.h |  85 +++++++
> > drivers/phy/samsung/phy-samsung-ufs.c | 311
> ++++++++++++++++++++++++++
> > drivers/phy/samsung/phy-samsung-ufs.h | 100 +++++++++
> >  include/linux/phy/phy-samsung-ufs.h   |  70 ++++++
> 
> Why is this added in include directory? will it be used by controller driver?
> 
Thanks for point this out, as of today it is not used in ufs controller driver. Will move this to driver directory.

> Thanks
> Kishon
> >  6 files changed, 576 insertions(+)
> >  create mode 100644 drivers/phy/samsung/phy-exynos7-ufs.h
> >  create mode 100644 drivers/phy/samsung/phy-samsung-ufs.c
> >  create mode 100644 drivers/phy/samsung/phy-samsung-ufs.h
> >  create mode 100644 include/linux/phy/phy-samsung-ufs.h
> >
> > diff --git a/drivers/phy/samsung/Kconfig b/drivers/phy/samsung/Kconfig
> > index 9e483d1fdaf2..fc1e3c17f842 100644
> > --- a/drivers/phy/samsung/Kconfig
> > +++ b/drivers/phy/samsung/Kconfig
> > @@ -29,6 +29,15 @@ config PHY_EXYNOS_PCIE
> >  	  Enable PCIe PHY support for Exynos SoC series.
> >  	  This driver provides PHY interface for Exynos PCIe controller.
> >
> > +config PHY_SAMSUNG_UFS
> > +	tristate "SAMSUNG SoC series UFS PHY driver"
> > +	depends on OF && (ARCH_EXYNOS || COMPILE_TEST)
> > +	select GENERIC_PHY
> > +	help
> > +	  Enable this to support the Samsung UFS PHY driver for
> > +	  Samsung SoCs. This driver provides the interface for UFS
> > +	  host controller to do PHY related programming.
> > +
> >  config PHY_SAMSUNG_USB2
> >  	tristate "Samsung USB 2.0 PHY driver"
> >  	depends on HAS_IOMEM
> > diff --git a/drivers/phy/samsung/Makefile
> > b/drivers/phy/samsung/Makefile index db9b1aa0de6e..3959100fe8a2 100644
> > --- a/drivers/phy/samsung/Makefile
> > +++ b/drivers/phy/samsung/Makefile
> > @@ -2,6 +2,7 @@
> >  obj-$(CONFIG_PHY_EXYNOS_DP_VIDEO)	+= phy-exynos-dp-video.o
> >  obj-$(CONFIG_PHY_EXYNOS_MIPI_VIDEO)	+= phy-exynos-mipi-video.o
> >  obj-$(CONFIG_PHY_EXYNOS_PCIE)		+= phy-exynos-pcie.o
> > +obj-$(CONFIG_PHY_SAMSUNG_UFS)		+= phy-samsung-ufs.o
> >  obj-$(CONFIG_PHY_SAMSUNG_USB2)		+= phy-exynos-usb2.o
> >  phy-exynos-usb2-y			+= phy-samsung-usb2.o
> >  phy-exynos-usb2-$(CONFIG_PHY_EXYNOS4210_USB2)	+= phy-exynos4210-
> usb2.o
> > diff --git a/drivers/phy/samsung/phy-exynos7-ufs.h
> > b/drivers/phy/samsung/phy-exynos7-ufs.h
> > new file mode 100644
> > index 000000000000..da981c1ac040
> > --- /dev/null
> > +++ b/drivers/phy/samsung/phy-exynos7-ufs.h
> > @@ -0,0 +1,85 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/*
> > + * UFS PHY driver data for Samsung EXYNOS7 SoC
> > + *
> > + * Copyright (C) 2015 Samsung Electronics Co., Ltd.
> > + */
> > +#ifndef _PHY_EXYNOS7_UFS_H_
> > +#define _PHY_EXYNOS7_UFS_H_
> > +
> > +#include "phy-samsung-ufs.h"
> > +
> > +#define EXYNOS7_EMBEDDED_COMBO_PHY_CTRL	0x720
> > +#define EXYNOS7_EMBEDDED_COMBO_PHY_CTRL_MASK	0x1
> > +#define EXYNOS7_EMBEDDED_COMBO_PHY_CTRL_EN	BIT(0)
> > +
> > +/* Calibration for phy initialization */ static const struct
> > +samsung_ufs_phy_cfg exynos7_pre_init_cfg[] = {
> > +	PHY_COMN_REG_CFG(0x00f, 0xfa, PWR_MODE_ANY),
> > +	PHY_COMN_REG_CFG(0x010, 0x82, PWR_MODE_ANY),
> > +	PHY_COMN_REG_CFG(0x011, 0x1e, PWR_MODE_ANY),
> > +	PHY_COMN_REG_CFG(0x017, 0x84, PWR_MODE_ANY),
> > +	PHY_TRSV_REG_CFG(0x035, 0x58, PWR_MODE_ANY),
> > +	PHY_TRSV_REG_CFG(0x036, 0x32, PWR_MODE_ANY),
> > +	PHY_TRSV_REG_CFG(0x037, 0x40, PWR_MODE_ANY),
> > +	PHY_TRSV_REG_CFG(0x03b, 0x83, PWR_MODE_ANY),
> > +	PHY_TRSV_REG_CFG(0x042, 0x88, PWR_MODE_ANY),
> > +	PHY_TRSV_REG_CFG(0x043, 0xa6, PWR_MODE_ANY),
> > +	PHY_TRSV_REG_CFG(0x048, 0x74, PWR_MODE_ANY),
> > +	PHY_TRSV_REG_CFG(0x04c, 0x5b, PWR_MODE_ANY),
> > +	PHY_TRSV_REG_CFG(0x04d, 0x83, PWR_MODE_ANY),
> > +	PHY_TRSV_REG_CFG(0x05c, 0x14, PWR_MODE_ANY),
> > +	END_UFS_PHY_CFG
> > +};
> > +
> > +static const struct samsung_ufs_phy_cfg exynos7_post_init_cfg[] = {
> > +	END_UFS_PHY_CFG
> > +};
> > +
> > +/* Calibration for HS mode series A/B */ static const struct
> > +samsung_ufs_phy_cfg exynos7_pre_pwr_hs_cfg[] = {
> > +	PHY_COMN_REG_CFG(0x00f, 0xfa, PWR_MODE_HS_ANY),
> > +	PHY_COMN_REG_CFG(0x010, 0x82, PWR_MODE_HS_ANY),
> > +	PHY_COMN_REG_CFG(0x011, 0x1e, PWR_MODE_HS_ANY),
> > +	/* Setting order: 1st(0x16, 2nd(0x15) */
> > +	PHY_COMN_REG_CFG(0x016, 0xff, PWR_MODE_HS_ANY),
> > +	PHY_COMN_REG_CFG(0x015, 0x80, PWR_MODE_HS_ANY),
> > +	PHY_COMN_REG_CFG(0x017, 0x94, PWR_MODE_HS_ANY),
> > +	PHY_TRSV_REG_CFG(0x036, 0x32, PWR_MODE_HS_ANY),
> > +	PHY_TRSV_REG_CFG(0x037, 0x43, PWR_MODE_HS_ANY),
> > +	PHY_TRSV_REG_CFG(0x038, 0x3f, PWR_MODE_HS_ANY),
> > +	PHY_TRSV_REG_CFG(0x042, 0x88, PWR_MODE_HS_G2_SER_A),
> > +	PHY_TRSV_REG_CFG(0x042, 0xbb, PWR_MODE_HS_G2_SER_B),
> > +	PHY_TRSV_REG_CFG(0x043, 0xa6, PWR_MODE_HS_ANY),
> > +	PHY_TRSV_REG_CFG(0x048, 0x74, PWR_MODE_HS_ANY),
> > +	PHY_TRSV_REG_CFG(0x034, 0x35, PWR_MODE_HS_G2_SER_A),
> > +	PHY_TRSV_REG_CFG(0x034, 0x36, PWR_MODE_HS_G2_SER_B),
> > +	PHY_TRSV_REG_CFG(0x035, 0x5b, PWR_MODE_HS_G2_SER_A),
> > +	PHY_TRSV_REG_CFG(0x035, 0x5c, PWR_MODE_HS_G2_SER_B),
> > +	END_UFS_PHY_CFG
> > +};
> > +
> > +/* Calibration for HS mode series A/B atfer PMC */ static const
> > +struct samsung_ufs_phy_cfg exynos7_post_pwr_hs_cfg[] = {
> > +	PHY_COMN_REG_CFG(0x015, 0x00, PWR_MODE_HS_ANY),
> > +	PHY_TRSV_REG_CFG(0x04d, 0x83, PWR_MODE_HS_ANY),
> > +	END_UFS_PHY_CFG
> > +};
> > +
> > +static const struct samsung_ufs_phy_cfg
> *exynos7_ufs_phy_cfgs[CFG_TAG_MAX] = {
> > +	[CFG_PRE_INIT]		= exynos7_pre_init_cfg,
> > +	[CFG_POST_INIT]		= exynos7_post_init_cfg,
> > +	[CFG_PRE_PWR_HS]	= exynos7_pre_pwr_hs_cfg,
> > +	[CFG_POST_PWR_HS]	= exynos7_post_pwr_hs_cfg,
> > +};
> > +
> > +static struct samsung_ufs_phy_drvdata exynos7_ufs_phy = {
> > +	.cfg = exynos7_ufs_phy_cfgs,
> > +	.isol = {
> > +		.offset = EXYNOS7_EMBEDDED_COMBO_PHY_CTRL,
> > +		.mask = EXYNOS7_EMBEDDED_COMBO_PHY_CTRL_MASK,
> > +		.en = EXYNOS7_EMBEDDED_COMBO_PHY_CTRL_EN,
> > +	},
> > +};
> > +
> > +#endif /* _PHY_EXYNOS7_UFS_H_ */
> > diff --git a/drivers/phy/samsung/phy-samsung-ufs.c
> > b/drivers/phy/samsung/phy-samsung-ufs.c
> > new file mode 100644
> > index 000000000000..2d5db24de49b
> > --- /dev/null
> > +++ b/drivers/phy/samsung/phy-samsung-ufs.c
> > @@ -0,0 +1,311 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * UFS PHY driver for Samsung SoC
> > + *
> > + * Copyright (C) 2015 Samsung Electronics Co., Ltd.
> > + * Author: Seungwon Jeon <essuuj@gmail.com>
> > + * Author: Alim Akhtar <alim.akhtar@samsung.com>
> > + *
> > + */
> > +#include <linux/clk.h>
> > +#include <linux/delay.h>
> > +#include <linux/err.h>
> > +#include <linux/of.h>
> > +#include <linux/io.h>
> > +#include <linux/iopoll.h>
> > +#include <linux/mfd/syscon.h>
> > +#include <linux/module.h>
> > +#include <linux/phy/phy.h>
> > +#include <linux/phy/phy-samsung-ufs.h> #include
> > +<linux/platform_device.h> #include <linux/regmap.h>
> > +
> > +#include "phy-samsung-ufs.h"
> > +
> > +#define for_each_phy_lane(phy, i) \
> > +	for (i = 0; i < (phy)->lane_cnt; i++) #define for_each_phy_cfg(cfg)
> > +\
> > +	for (; (cfg)->id; (cfg)++)
> > +
> > +#define PHY_DEF_LANE_CNT	1
> > +
> > +static void samsung_ufs_phy_config(struct samsung_ufs_phy *phy,
> > +			const struct samsung_ufs_phy_cfg *cfg, u8 lane) {
> > +	enum {LANE_0, LANE_1}; /* lane index */
> > +
> > +	switch (lane) {
> > +	case LANE_0:
> > +		writel(cfg->val, (phy)->reg_pma + cfg->off_0);
> > +		break;
> > +	case LANE_1:
> > +		if (cfg->id == PHY_TRSV_BLK)
> > +			writel(cfg->val, (phy)->reg_pma + cfg->off_1);
> > +		break;
> > +	}
> > +}
> > +
> > +int samsung_ufs_phy_wait_for_lock_acq(struct phy *phy) {
> > +	struct samsung_ufs_phy *ufs_phy = get_samsung_ufs_phy(phy);
> > +	const unsigned int timeout_us = 100000;
> > +	const unsigned int sleep_us = 10;
> > +	u32 val;
> > +	int err;
> > +
> > +	err = readl_poll_timeout(
> > +			ufs_phy->reg_pma +
> PHY_APB_ADDR(PHY_PLL_LOCK_STATUS),
> > +			val, (val & PHY_PLL_LOCK_BIT), sleep_us, timeout_us);
> > +	if (err) {
> > +		dev_err(ufs_phy->dev,
> > +			"failed to get phy pll lock acquisition %d\n", err);
> > +		goto out;
> > +	}
> > +
> > +	err = readl_poll_timeout(
> > +			ufs_phy->reg_pma +
> PHY_APB_ADDR(PHY_CDR_LOCK_STATUS),
> > +			val, (val & PHY_CDR_LOCK_BIT), sleep_us, timeout_us);
> > +	if (err) {
> > +		dev_err(ufs_phy->dev,
> > +			"failed to get phy cdr lock acquisition %d\n", err);
> > +		goto out;
> > +	}
> > +
> > +out:
> > +	return err;
> > +}
> > +
> > +int samsung_ufs_phy_calibrate(struct phy *phy) {
> > +	struct samsung_ufs_phy *ufs_phy = get_samsung_ufs_phy(phy);
> > +	struct samsung_ufs_phy_cfg **cfgs = ufs_phy->cfg;
> > +	const struct samsung_ufs_phy_cfg *cfg;
> > +	int i;
> > +	int err = 0;
> > +
> > +	if (unlikely(ufs_phy->ufs_phy_state < CFG_PRE_INIT ||
> > +		     ufs_phy->ufs_phy_state >= CFG_TAG_MAX)) {
> > +		dev_err(ufs_phy->dev, "invalid phy config index %d\n",
> > +							ufs_phy-
> >ufs_phy_state);
> > +		return -EINVAL;
> > +	}
> > +
> > +	if (ufs_phy->is_pre_init)
> > +		ufs_phy->is_pre_init = false;
> > +	if (ufs_phy->is_post_init) {
> > +		ufs_phy->is_post_init = false;
> > +		ufs_phy->ufs_phy_state = CFG_POST_INIT;
> > +	}
> > +	if (ufs_phy->is_pre_pmc) {
> > +		ufs_phy->is_pre_pmc = false;
> > +		ufs_phy->ufs_phy_state = CFG_PRE_PWR_HS;
> > +	}
> > +	if (ufs_phy->is_post_pmc) {
> > +		ufs_phy->is_post_pmc = false;
> > +		ufs_phy->ufs_phy_state = CFG_POST_PWR_HS;
> > +	}
> > +
> > +	switch (ufs_phy->ufs_phy_state) {
> > +	case CFG_PRE_INIT:
> > +		ufs_phy->is_post_init = true;
> > +		break;
> > +	case CFG_POST_INIT:
> > +		ufs_phy->is_pre_pmc = true;
> > +		break;
> > +	case CFG_PRE_PWR_HS:
> > +		ufs_phy->is_post_pmc = true;
> > +		break;
> > +	case CFG_POST_PWR_HS:
> > +		break;
> > +	default:
> > +		dev_err(ufs_phy->dev, "wrong state for phy calibration\n");
> > +	}
> > +
> > +	cfg = cfgs[ufs_phy->ufs_phy_state];
> > +	if (!cfg)
> > +		goto out;
> > +
> > +	for_each_phy_cfg(cfg) {
> > +		for_each_phy_lane(ufs_phy, i) {
> > +			samsung_ufs_phy_config(ufs_phy, cfg, i);
> > +		}
> > +	}
> > +
> > +	if (ufs_phy->ufs_phy_state == CFG_POST_PWR_HS)
> > +		err = samsung_ufs_phy_wait_for_lock_acq(phy);
> > +out:
> > +	return err;
> > +}
> > +
> > +static int samsung_ufs_phy_clks_init(struct samsung_ufs_phy *phy) {
> > +	struct clk *child, *parent;
> > +
> > +	child = devm_clk_get(phy->dev, "ref_clk");
> > +	if (IS_ERR(child))
> > +		dev_err(phy->dev, "failed to get ref_clk clock\n");
> > +	else
> > +		phy->ref_clk = child;
> > +
> > +	parent = devm_clk_get(phy->dev, "ref_clk_parent");
> > +	if (IS_ERR(parent))
> > +		dev_err(phy->dev, "failed to get ref_clk_parent clock\n");
> > +	else
> > +		phy->ref_clk_parent = parent;
> > +
> > +	return clk_set_parent(child, parent); }
> > +
> > +static int samsung_ufs_phy_init(struct phy *phy) {
> > +	struct samsung_ufs_phy *_phy = get_samsung_ufs_phy(phy);
> > +
> > +	_phy->lane_cnt = phy->attrs.bus_width;
> > +	_phy->ufs_phy_state = CFG_PRE_INIT;
> > +
> > +	_phy->is_pre_init = true;
> > +	_phy->is_post_init = false;
> > +	_phy->is_pre_pmc = false;
> > +	_phy->is_post_pmc = false;
> > +
> > +	samsung_ufs_phy_clks_init(_phy);
> > +
> > +	samsung_ufs_phy_calibrate(phy);
> > +
> > +	return 0;
> > +}
> > +
> > +static int samsung_ufs_phy_power_on(struct phy *phy) {
> > +	struct samsung_ufs_phy *_phy = get_samsung_ufs_phy(phy);
> > +	int ret;
> > +
> > +	ret = clk_prepare_enable(_phy->ref_clk);
> > +	if (ret) {
> > +		dev_err(_phy->dev, "%s: ref_clk enable failed %d\n",
> > +				__func__, ret);
> > +		return ret;
> > +	}
> > +
> > +	samsung_ufs_phy_ctrl_isol(_phy, false);
> > +	return 0;
> > +}
> > +
> > +static int samsung_ufs_phy_power_off(struct phy *phy) {
> > +	struct samsung_ufs_phy *_phy = get_samsung_ufs_phy(phy);
> > +
> > +	samsung_ufs_phy_ctrl_isol(_phy, true);
> > +	clk_disable_unprepare(_phy->ref_clk);
> > +	return 0;
> > +}
> > +
> > +static int samsung_ufs_phy_set_mode(struct phy *generic_phy,
> > +					enum phy_mode mode, int submode) {
> > +	struct samsung_ufs_phy *_phy = get_samsung_ufs_phy(generic_phy);
> > +
> > +	_phy->mode = PHY_MODE_INVALID;
> > +
> > +	if (mode > 0)
> > +		_phy->mode = mode;
> > +
> > +	return 0;
> > +}
> > +
> > +static struct phy_ops samsung_ufs_phy_ops = {
> > +	.init		= samsung_ufs_phy_init,
> > +	.power_on	= samsung_ufs_phy_power_on,
> > +	.power_off	= samsung_ufs_phy_power_off,
> > +	.calibrate	= samsung_ufs_phy_calibrate,
> > +	.set_mode	= samsung_ufs_phy_set_mode,
> > +}
> > +;
> > +static const struct of_device_id samsung_ufs_phy_match[];
> > +
> > +static int samsung_ufs_phy_probe(struct platform_device *pdev) {
> > +	struct device *dev = &pdev->dev;
> > +	struct resource *res;
> > +	const struct of_device_id *match;
> > +	struct samsung_ufs_phy *phy;
> > +	struct phy *gen_phy;
> > +	struct phy_provider *phy_provider;
> > +	const struct samsung_ufs_phy_drvdata *drvdata;
> > +	int err = 0;
> > +
> > +	match = of_match_node(samsung_ufs_phy_match, dev->of_node);
> > +	if (!match) {
> > +		err = -EINVAL;
> > +		dev_err(dev, "failed to get match_node\n");
> > +		goto out;
> > +	}
> > +
> > +	phy = devm_kzalloc(dev, sizeof(*phy), GFP_KERNEL);
> > +	if (!phy) {
> > +		err = -ENOMEM;
> > +		goto out;
> > +	}
> > +
> > +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "phy-
> pma");
> > +	phy->reg_pma = devm_ioremap_resource(dev, res);
> > +	if (IS_ERR(phy->reg_pma)) {
> > +		err = PTR_ERR(phy->reg_pma);
> > +		goto out;
> > +	}
> > +
> > +	phy->reg_pmu = syscon_regmap_lookup_by_phandle(
> > +				dev->of_node, "samsung,pmu-syscon");
> > +	if (IS_ERR(phy->reg_pmu)) {
> > +		err = PTR_ERR(phy->reg_pmu);
> > +		dev_err(dev, "failed syscon remap for pmu\n");
> > +		goto out;
> > +	}
> > +
> > +	gen_phy = devm_phy_create(dev, NULL, &samsung_ufs_phy_ops);
> > +	if (IS_ERR(gen_phy)) {
> > +		err = PTR_ERR(gen_phy);
> > +		dev_err(dev, "failed to create PHY for ufs-phy\n");
> > +		goto out;
> > +	}
> > +
> > +	drvdata = match->data;
> > +	phy->dev = dev;
> > +	phy->drvdata = drvdata;
> > +	phy->cfg = (struct samsung_ufs_phy_cfg **)drvdata->cfg;
> > +	phy->isol = &drvdata->isol;
> > +	phy->lane_cnt = PHY_DEF_LANE_CNT;
> > +
> > +	phy_set_drvdata(gen_phy, phy);
> > +
> > +	phy_provider = devm_of_phy_provider_register(dev,
> of_phy_simple_xlate);
> > +	if (IS_ERR(phy_provider)) {
> > +		err = PTR_ERR(phy_provider);
> > +		dev_err(dev, "failed to register phy-provider\n");
> > +		goto out;
> > +	}
> > +out:
> > +	return err;
> > +}
> > +
> > +static const struct of_device_id samsung_ufs_phy_match[] = {
> > +	{
> > +		.compatible = "samsung,exynos7-ufs-phy",
> > +		.data = &exynos7_ufs_phy,
> > +	},
> > +	{},
> > +};
> > +MODULE_DEVICE_TABLE(of, samsung_ufs_phy_match);
> > +
> > +static struct platform_driver samsung_ufs_phy_driver = {
> > +	.probe  = samsung_ufs_phy_probe,
> > +	.driver = {
> > +		.name = "samsung-ufs-phy",
> > +		.of_match_table = samsung_ufs_phy_match,
> > +	},
> > +};
> > +module_platform_driver(samsung_ufs_phy_driver);
> > +MODULE_DESCRIPTION("Samsung SoC UFS PHY Driver");
> > +MODULE_AUTHOR("Seungwon Jeon <essuuj@gmail.com>");
> > +MODULE_AUTHOR("Alim Akhtar <alim.akhtar@samsung.com>");
> > +MODULE_LICENSE("GPL v2");
> > diff --git a/drivers/phy/samsung/phy-samsung-ufs.h
> > b/drivers/phy/samsung/phy-samsung-ufs.h
> > new file mode 100644
> > index 000000000000..d0ae2b416b2b
> > --- /dev/null
> > +++ b/drivers/phy/samsung/phy-samsung-ufs.h
> > @@ -0,0 +1,100 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/*
> > + * UFS PHY driver for Samsung EXYNOS SoC
> > + *
> > + * Copyright (C) 2015 Samsung Electronics Co., Ltd.
> > + * Author: Seungwon Jeon <essuuj@gmail.com>
> > + * Author: Alim Akhtar <alim.akhtar@samsung.com>
> > + *
> > + */
> > +#ifndef _PHY_SAMSUNG_UFS_
> > +#define _PHY_SAMSUNG_UFS_
> > +
> > +#define PHY_COMN_BLK	1
> > +#define PHY_TRSV_BLK	2
> > +#define END_UFS_PHY_CFG { 0 }
> > +#define PHY_TRSV_CH_OFFSET	0x30
> > +#define PHY_APB_ADDR(off)	((off) << 2)
> > +
> > +#define PHY_COMN_REG_CFG(o, v, d) {	\
> > +	.off_0 = PHY_APB_ADDR((o)),	\
> > +	.off_1 = 0,		\
> > +	.val = (v),		\
> > +	.desc = (d),		\
> > +	.id = PHY_COMN_BLK,	\
> > +}
> > +
> > +#define PHY_TRSV_REG_CFG(o, v, d) {	\
> > +	.off_0 = PHY_APB_ADDR((o)),	\
> > +	.off_1 = PHY_APB_ADDR((o) + PHY_TRSV_CH_OFFSET),	\
> > +	.val = (v),		\
> > +	.desc = (d),		\
> > +	.id = PHY_TRSV_BLK,	\
> > +}
> > +
> > +/* UFS PHY registers */
> > +#define PHY_PLL_LOCK_STATUS	0x1e
> > +#define PHY_CDR_LOCK_STATUS	0x5e
> > +
> > +#define PHY_PLL_LOCK_BIT	BIT(5)
> > +#define PHY_CDR_LOCK_BIT	BIT(4)
> > +
> > +/* PHY calibration point/state */
> > +enum {
> > +	CFG_PRE_INIT,
> > +	CFG_POST_INIT,
> > +	CFG_PRE_PWR_HS,
> > +	CFG_POST_PWR_HS,
> > +	CFG_TAG_MAX,
> > +};
> > +
> > +struct samsung_ufs_phy_cfg {
> > +	u32 off_0;
> > +	u32 off_1;
> > +	u32 val;
> > +	u8 desc;
> > +	u8 id;
> > +};
> > +
> > +struct samsung_ufs_phy_drvdata {
> > +	const struct samsung_ufs_phy_cfg **cfg;
> > +	struct pmu_isol {
> > +		u32 offset;
> > +		u32 mask;
> > +		u32 en;
> > +	} isol;
> > +};
> > +
> > +struct samsung_ufs_phy {
> > +	struct device *dev;
> > +	void __iomem *reg_pma;
> > +	struct regmap *reg_pmu;
> > +	struct clk *ref_clk;
> > +	struct clk *ref_clk_parent;
> > +	const struct samsung_ufs_phy_drvdata *drvdata;
> > +	struct samsung_ufs_phy_cfg **cfg;
> > +	const struct pmu_isol *isol;
> > +	u8 lane_cnt;
> > +	int ufs_phy_state;
> > +	enum phy_mode mode;
> > +	bool is_pre_init;
> > +	bool is_post_init;
> > +	bool is_pre_pmc;
> > +	bool is_post_pmc;
> > +};
> > +
> > +static inline struct samsung_ufs_phy *get_samsung_ufs_phy(struct phy
> > +*phy) {
> > +	return (struct samsung_ufs_phy *)phy_get_drvdata(phy); }
> > +
> > +static inline void samsung_ufs_phy_ctrl_isol(
> > +		struct samsung_ufs_phy *phy, u32 isol) {
> > +	regmap_update_bits(phy->reg_pmu, phy->isol->offset,
> > +			phy->isol->mask, isol ? 0 : phy->isol->en); }
> > +
> > +#include "phy-exynos7-ufs.h"
> > +
> > +#endif /* _PHY_SAMSUNG_UFS_ */
> > diff --git a/include/linux/phy/phy-samsung-ufs.h
> > b/include/linux/phy/phy-samsung-ufs.h
> > new file mode 100644
> > index 000000000000..1def56207f5d
> > --- /dev/null
> > +++ b/include/linux/phy/phy-samsung-ufs.h
> > @@ -0,0 +1,70 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/*
> > + * phy-samsung-ufs.h - Header file for the UFS PHY of Samsung SoC
> > + *
> > + * Copyright (C) 2015 Samsung Electronics Co., Ltd.
> > + * Author: Seungwon Jeon <essuuj@gmail.com>
> > + * Author: Alim Akhtar <alim.akhtar@samsung.com>
> > + *
> > + */
> > +
> > +#ifndef _PHY_EXYNOS_UFS_H_
> > +#define _PHY_EXYNOS_UFS_H_
> > +
> > +#include "phy.h"
> > +
> > +/* description for PHY calibration */ enum {
> > +	/* applicable to any */
> > +	PWR_DESC_ANY	= 0,
> > +	/* mode */
> > +	PWR_DESC_PWM	= 1,
> > +	PWR_DESC_HS	= 2,
> > +	/* series */
> > +	PWR_DESC_SER_A	= 1,
> > +	PWR_DESC_SER_B	= 2,
> > +	/* gear */
> > +	PWR_DESC_G1	= 1,
> > +	PWR_DESC_G2	= 2,
> > +	PWR_DESC_G3	= 3,
> > +	PWR_DESC_G4	= 4,
> > +	PWR_DESC_G5	= 5,
> > +	PWR_DESC_G6	= 6,
> > +	PWR_DESC_G7	= 7,
> > +	/* field mask */
> > +	MD_MASK		= 0x3,
> > +	SR_MASK		= 0x3,
> > +	GR_MASK		= 0x7,
> > +};
> > +
> > +#define PWR_MODE(g, s, m)	((((g) & GR_MASK) << 4) |\
> > +				 (((s) & SR_MASK) << 2) | ((m) & MD_MASK))
> > +#define PWR_MODE_HS(g, s)	((((g) & GR_MASK) << 4) |\
> > +				 (((s) & SR_MASK) << 2) | PWR_DESC_HS)
> > +#define PWR_MODE_HS_G1_ANY	PWR_MODE_HS(PWR_DESC_G1,
> PWR_DESC_ANY)
> > +#define PWR_MODE_HS_G1_SER_A	PWR_MODE_HS(PWR_DESC_G1,
> PWR_DESC_SER_A)
> > +#define PWR_MODE_HS_G1_SER_B	PWR_MODE_HS(PWR_DESC_G1,
> PWR_DESC_SER_B)
> > +#define PWR_MODE_HS_G2_ANY	PWR_MODE_HS(PWR_DESC_G2,
> PWR_DESC_ANY)
> > +#define PWR_MODE_HS_G2_SER_A	PWR_MODE_HS(PWR_DESC_G2,
> PWR_DESC_SER_A)
> > +#define PWR_MODE_HS_G2_SER_B	PWR_MODE_HS(PWR_DESC_G2,
> PWR_DESC_SER_B)
> > +#define PWR_MODE_HS_G3_ANY	PWR_MODE_HS(PWR_DESC_G3,
> PWR_DESC_ANY)
> > +#define PWR_MODE_HS_G3_SER_A	PWR_MODE_HS(PWR_DESC_G3,
> PWR_DESC_SER_A)
> > +#define PWR_MODE_HS_G3_SER_B	PWR_MODE_HS(PWR_DESC_G3,
> PWR_DESC_SER_B)
> > +#define PWR_MODE_HS_ANY
> 	PWR_MODE(PWR_DESC_ANY,\
> > +					 PWR_DESC_ANY, PWR_DESC_HS)
> > +#define PWR_MODE_PWM_ANY	PWR_MODE(PWR_DESC_ANY,\
> > +					 PWR_DESC_ANY, PWR_DESC_PWM)
> > +#define PWR_MODE_ANY		PWR_MODE(PWR_DESC_ANY,\
> > +					 PWR_DESC_ANY, PWR_DESC_ANY)
> > +#define IS_PWR_MODE_HS(d)	(((d) & MD_MASK) == PWR_DESC_HS)
> > +#define IS_PWR_MODE_PWM(d)	(((d) & MD_MASK) ==
> PWR_DESC_PWM)
> > +#define IS_PWR_MODE_ANY(d)	((d) == PWR_MODE_ANY)
> > +#define IS_PWR_MODE_HS_ANY(d)	((d) == PWR_MODE_HS_ANY)
> > +#define COMP_PWR_MODE(a, b)		((a) == (b))
> > +#define COMP_PWR_MODE_GEAR(a, b)	((((a) >> 4) & GR_MASK) == \
> > +					 (((b) >> 4) & GR_MASK))
> > +#define COMP_PWR_MODE_SER(a, b)		((((a) >> 2) & SR_MASK)
> == \
> > +					 (((b) >> 2) & SR_MASK))
> > +#define COMP_PWR_MODE_MD(a, b)		(((a) & MD_MASK) ==
> ((b) & MD_MASK))
> > +
> > +#endif /* _PHY_EXYNOS_UFS_H_ */
> >


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
