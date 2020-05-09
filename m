Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B1C1CBBD0
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 02:33:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QchHN06ReWoi9okwoANJK18O/nO27xdOnnOUGrTyqRA=; b=q1119eHj/dc/Pf
	EO7k7VxsFP1svYNFk9xDD6k9VRt2reI8/voGV5jtCedfVT3UOGLFqjQrSDhe1uKrAe3GJNEDdELo1
	NL5CcmW7UK8b9uqjqr8wUMXNSGf/hvO+Lxt7DSdK6BvtyTEloK/jpXseIPiaWJF1U7V8/nIBbADDF
	i8oyAnm0nlX2bciuVquiTCvX7SVNIVN31ohRucINgeybGnleAfYkZoQmzeL8/PCNPw5UBN04jsWaQ
	8aFOixBc3XfpIQAz9WzxkFjV09nXcr08kc/VI3pflFXovU4WWA25uztk42c2Ev9DwqjMtFqegWwUW
	Ub940ItqBOvCxXM8g02A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXDQR-0004WH-Dz; Sat, 09 May 2020 00:33:07 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXDQJ-0004Uu-8O
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 00:33:01 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200509003254epoutp04577ae75fa5b3ff365a8938b2f0a05a6b~NNN6wcGJI1840018400epoutp04W
 for <linux-arm-kernel@lists.infradead.org>;
 Sat,  9 May 2020 00:32:54 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200509003254epoutp04577ae75fa5b3ff365a8938b2f0a05a6b~NNN6wcGJI1840018400epoutp04W
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588984374;
 bh=neo+HlKkQMCxdPB9fgCSJEAlMpQVKOxhn4oUXLHS10E=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=hAiMPJi+nizBw2Fj/dnHMciZK9KPIa6IJwQTAji8h10W6euA+4TKz62jSFO+xFcrd
 /lc34pmvu239DrIG1IBCUHi0GkvAmROTHaIac18THQ7mHl2i/rkDUnMaoN7ZmzY/2Z
 e6n6OEiB0xxVJg+ugXNOeV6JGo6kMsD/+fXKQo7o=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200509003253epcas5p12e5c0818bdeb7dd26794d78ea4f841dd~NNN5oftA52572825728epcas5p1f;
 Sat,  9 May 2020 00:32:53 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 E9.13.10010.53AF5BE5; Sat,  9 May 2020 09:32:53 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
 20200509003252epcas5p105fcdf77df196a4f581f51fc7e82f1f8~NNN43vH4C0506305063epcas5p1v;
 Sat,  9 May 2020 00:32:52 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200509003252epsmtrp2b1babae60489d2cafa01eac8fa1ed4b3~NNN424e_p1992219922epsmtrp2L;
 Sat,  9 May 2020 00:32:52 +0000 (GMT)
X-AuditID: b6c32a49-735ff7000000271a-b9-5eb5fa351a28
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 A0.1A.25866.43AF5BE5; Sat,  9 May 2020 09:32:52 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200509003248epsmtip2b6fddca22f966ae2f394d65a39833f31~NNN1ile1w2388123881epsmtip2O;
 Sat,  9 May 2020 00:32:48 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Kishon Vijay Abraham I'" <kishon@ti.com>, <robh@kernel.org>
In-Reply-To: <b0239aa5-004e-fc88-93a4-5b0d6f174ca3@ti.com>
Subject: RE: [PATCH v7 07/10] phy: samsung-ufs: add UFS PHY driver for
 samsung SoC
Date: Sat, 9 May 2020 06:02:36 +0530
Message-ID: <006701d62599$5fbc2c80$1f348580$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQINaKJiJYqhfY8pF8dQGQjTbFgO/QI75FnYAdd4tKsCTMaX9af9XhAA
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrKKsWRmVeSWpSXmKPExsWy7bCmhq7pr61xBm83CFm8/HmVzeLT+mWs
 FvOPnGO1uPC0h83i/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUaLnXdOMDvweVzu62Xy2LSqk81j85J6j5aT+1k8Pj69xeLRt2UVo8fxG9uZPD5vkvNo
 P9DNFMAZxWWTkpqTWZZapG+XwJWx/PUz1oKruhX3rx9jbWDsVOli5OSQEDCRmPB1PksXIxeH
 kMBuRonbq3ZAOZ+AnJt/WSGcz4wS115OYoRp2XFvAiNEYhejxIcPrcwQzhtGiYaWl0wgVWwC
 uhI7FrexdTFycIgIOEo07IoDqWEWeMUk8XfbRhaQGk4BK4mbHWeYQWxhgRCJa++2gcVZBFQk
 etuug23jFbCUONh3GMoWlDg58wlYDbOAtsSyha+ZIS5SkPj5dBkriC0i4CaxcepWNogacYmj
 P3vAjpMQeMAhcbP1DytEg4vExJ+3oZqFJV4d38IOYUtJfH63F+xoCYFsiZ5dxhDhGoml846x
 QNj2EgeuzGEBKWEW0JRYv0sfYhWfRO/vJ0wQnbwSHW1CENWqEs3vrkJ1SktM7O6GOsBDYv7m
 s+wTGBVnIXlsFpLHZiF5YBbCsgWMLKsYJVMLinPTU4tNCwzzUsv1ihNzi0vz0vWS83M3MYJT
 npbnDsa7Dz7oHWJk4mA8xCjBwawkwjuxYkucEG9KYmVValF+fFFpTmrxIUZpDhYlcd7TaUAp
 gfTEktTs1NSC1CKYLBMHp1QDk2z1xlj77zpPxZ/UqM37t0/tjPOHJRW/Au/M+XQ8pv3mT4k5
 zw7U9h97UtUatq9UaOvRxas/3+g7EXz+yPKZHP9zCtSDF664dUKnk/Oq0c1t1ZdZ1Gv/Jro7
 82pHL4s78M3LZNKyMGOVF2VTOS5cVkjv+Prf6pjCNuOYme2X+iOf/hDTD/60LC9k+QmRfcvn
 qe42XdivcPBg0M+2HFaHfHm+e35JnCmJUlPSGJawHE3Y+IzL0CVgZ/8kC1GmZRaVieUsnFZR
 9U3sOXOWfUhw+d6f8i+l0pyrXS6vYn2u/j6rZbzv5ix7lvkpwqVF62MZd/wBXo7dKUe3l53o
 KuWxZv6TI9wvquf/pqP3iK6DEktxRqKhFnNRcSIAf9XfVugDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrNIsWRmVeSWpSXmKPExsWy7bCSvK7Jr61xBitvSlu8/HmVzeLT+mWs
 FvOPnGO1uPC0h83i/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUaLnXdOMDvweVzu62Xy2LSqk81j85J6j5aT+1k8Pj69xeLRt2UVo8fxG9uZPD5vkvNo
 P9DNFMAZxWWTkpqTWZZapG+XwJXx7uZrloJ32hVHu3ezNzAuUepi5OSQEDCR2HFvAmMXIxeH
 kMAORomvR06yQySkJa5vnABlC0us/PecHaLoFaPE7uZpzCAJNgFdiR2L29hAbBEBZ4m7256y
 ghQxC/xgkjg7pRNq7FtGicY7G8FGcQpYSdzsOAPWLSwQJHF/VTcriM0ioCLR23adEcTmFbCU
 ONh3GMoWlDg58wkLiM0soC3R+7CVEcZetvA1M8R5ChI/ny5jhbjCTWLj1K1sEDXiEkd/9jBP
 YBSehWTULCSjZiEZNQtJywJGllWMkqkFxbnpucWGBUZ5qeV6xYm5xaV56XrJ+bmbGMHxq6W1
 g3HPqg96hxiZOBgPMUpwMCuJ8E6s2BInxJuSWFmVWpQfX1Sak1p8iFGag0VJnPfrrIVxQgLp
 iSWp2ampBalFMFkmDk6pBqalDd837vr9qY89RvacjuCHA4bhAf2OIRfDZBOlrONK1j7Oc15z
 vibx03kWNfdnFyfNnLxhi0ZEbGGQavjLUpumLFHHFyGiO2d+WMdqznj/SsbsiD3cCQL8jmLM
 01U/aq/d/EtI+ZqfrPSudWWxAnXBC6ccq3TKWSrkH/KxJ4v9ybFjd5oUI0wVOFVWBtae9ub7
 cuj8skcHU5dtqNDTZl54J1co8H3L4Y03PwbYnJ/K7MVUFrPwxLxVDG+CXI+cFA14Ozc03Fbk
 u8hOZS+2AOv55Telf1hw+KUn8C3+tGDl+7UHPdZUWqe092gdsePdoLLJqMrCPrpkZ1lNqu2l
 myGx904ny/jcrjzD7juxW4mlOCPRUIu5qDgRAM2N5vdOAwAA
X-CMS-MailID: 20200509003252epcas5p105fcdf77df196a4f581f51fc7e82f1f8
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200426174217epcas5p2c7d1606b641b73f67a169b8d22f0637d
References: <20200426173024.63069-1-alim.akhtar@samsung.com>
 <CGME20200426174217epcas5p2c7d1606b641b73f67a169b8d22f0637d@epcas5p2.samsung.com>
 <20200426173024.63069-8-alim.akhtar@samsung.com>
 <b0239aa5-004e-fc88-93a4-5b0d6f174ca3@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_173259_716459_88D5B4AC 
X-CRM114-Status: GOOD (  16.15  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, 'Vinod Koul' <vkoul@kernel.org>, cang@codeaurora.org,
 stanley.chu@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kishon,
Thanks for review.

> -----Original Message-----
> From: Kishon Vijay Abraham I <kishon@ti.com>
> Sent: 07 May 2020 10:49
> To: Alim Akhtar <alim.akhtar@samsung.com>; robh@kernel.org
> Cc: devicetree@vger.kernel.org; linux-scsi@vger.kernel.org; krzk@kernel.org;
> avri.altman@wdc.com; martin.petersen@oracle.com;
> kwmad.kim@samsung.com; stanley.chu@mediatek.com;
> cang@codeaurora.org; linux-samsung-soc@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Vinod Koul
> <vkoul@kernel.org>
> Subject: Re: [PATCH v7 07/10] phy: samsung-ufs: add UFS PHY driver for
> samsung SoC
> 
.
.
.
> Okay, here you are using a state machine for the PHY configuration because of
> the way the PHY is integrated with the UFS. Would be nice to have the state
> machine documented somewhere. I only have the PHY patch in my inbox.
Ok, will document in the driver file as well as in the header file.

> > +
> > +	if (ufs_phy->ufs_phy_state == CFG_POST_PWR_HS)
> > +		err = samsung_ufs_phy_wait_for_lock_acq(phy);
> > +out:
> > +	return err;
> > +}
> > +
> > +static int samsung_ufs_phy_symbol_clk_init(struct samsung_ufs_phy
> > +*phy) {
> > +	struct clk *clk;
> > +	int ret = 0;
> > +
> > +	clk = devm_clk_get(phy->dev, "tx0_symbol_clk");
> 
> There is no "exit" callback in phy_ops which means if there are multiple phy_init
> calls, this clock will not be freed. This could be moved to "probe" IMO.

Ok, will add exit callback.

> > +	if (IS_ERR(clk)) {
> > +		dev_err(phy->dev, "failed to get tx0_symbol_clk clock\n");
> > +		goto out;
> > +	} else {
> 
> "else" here and below is not required. Something like below
> 
Ack
> 	clk = devm_clk_get(phy->dev, "tx0_symbol_clk");
> 	if (IS_ERR(clk)) {
> 		dev_err(phy->dev, "failed to get tx0_symbol_clk clock\n");
> 		goto out;
> 	}
> 	phy->tx0_symbol_clk = clk;
> 
> > +		phy->tx0_symbol_clk = clk;
> > +	}
> > +
> > +	clk = devm_clk_get(phy->dev, "rx0_symbol_clk");
> > +	if (IS_ERR(clk)) {
> > +		dev_err(phy->dev, "failed to get rx0_symbol_clk clock\n");
> > +		goto out;
> > +	} else {
> > +		phy->rx0_symbol_clk = clk;
> > +	}
> > +
> > +	clk = devm_clk_get(phy->dev, "rx1_symbol_clk");
> > +	if (IS_ERR(clk)) {
> > +		dev_err(phy->dev, "failed to get rx1_symbol_clk clock\n");
> > +		goto out;
> > +	} else {
> > +		phy->rx1_symbol_clk = clk;
> > +	}
> > +
> > +	ret = clk_prepare_enable(phy->tx0_symbol_clk);
> > +	if (ret) {
> > +		dev_err(phy->dev, "%s: tx0_symbol_clk enable failed %d\n",
> > +				__func__, ret);
> > +		goto out;
> > +	}
> > +	ret = clk_prepare_enable(phy->rx0_symbol_clk);
> > +	if (ret) {
> > +		dev_err(phy->dev, "%s: rx0_symbol_clk enable failed %d\n",
> > +				__func__, ret);
> > +		goto out;
> > +	}
> > +	ret = clk_prepare_enable(phy->rx1_symbol_clk);
> > +	if (ret) {
> > +		dev_err(phy->dev, "%s: rx1_symbol_clk enable failed %d\n",
> > +				__func__, ret);
> > +		goto out;
> > +	}
> 
> All these clocks are never disabled?
Sure, will add disabling of clocks in exit callback 

> > +out:
> > +	return ret;
> > +}
> > +
> > +static int samsung_ufs_phy_clks_init(struct samsung_ufs_phy *phy) {
> > +	struct clk *phy_ref_clk;
> > +	int ret;
> > +
> > +	phy_ref_clk = devm_clk_get(phy->dev, "ref_clk");
> > +	if (IS_ERR(phy_ref_clk))
> > +		dev_err(phy->dev, "failed to get ref_clk clock\n");
> > +	else
> > +		phy->ref_clk = phy_ref_clk;
> > +
> > +	ret = clk_prepare_enable(phy->ref_clk);
> > +	if (ret) {
> > +		dev_err(phy->dev, "%s: ref_clk enable failed %d\n",
> > +				__func__, ret);
> > +		return ret;
> > +	}
> > +
> > +	dev_info(phy->dev, "UFS MPHY ref_clk_rate = %ld\n",
> > +clk_get_rate(phy_ref_clk));
> > +
> > +	return 0;
> > +}
> > +
> > +static int samsung_ufs_phy_init(struct phy *phy) {
> > +	struct samsung_ufs_phy *_phy = get_samsung_ufs_phy(phy);
> > +	int ret;
> > +
> > +	_phy->lane_cnt = phy->attrs.bus_width;
> > +	_phy->ufs_phy_state = CFG_PRE_INIT;
> > +
> > +	_phy->is_pre_init = true;
> > +	_phy->is_post_init = false;
> > +	_phy->is_pre_pmc = false;
> > +	_phy->is_post_pmc = false;
> > +
> > +
> > +	if (of_device_is_compatible(_phy->dev->of_node,
> > +				"samsung,exynos7-ufs-phy")) {
> 
> Can't it be added in driver data for this compatible?
Sure, will handle via driver data.

> > +		ret = samsung_ufs_phy_symbol_clk_init(_phy);
> > +		if (ret)
> > +			dev_err(_phy->dev,
> > +				"failed to set ufs phy symbol clocks\n");
> > +	}
> > +
.
.
.
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
> 
> missing .owner.
Ack,

> > +}
> > +;
.
.
> > +++ b/drivers/phy/samsung/phy-samsung-ufs.h
> > @@ -0,0 +1,142 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/*
> > + * UFS PHY driver for Samsung EXYNOS SoC
> > + *
> > + * Copyright (C) 2015 Samsung Electronics Co., Ltd.
> 
> 2020
> 
Sure, will update.

> Thanks
> Kishon


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
