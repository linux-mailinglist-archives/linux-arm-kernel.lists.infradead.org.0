Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B480E6B4F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 04:15:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hRw3TLeOE2eKcQBpN1JwbxzIsrghyEWPeZW3yK/39CI=; b=LULK9mUMw9L50v
	/kfEm+gZN2YqctU8H+1Lq5171JFK5c1RKqdDLGUKOax1q99cvm6URf/2ZLejPxXvWzkFVCdixJqQw
	ZZv+wINhpqfet7XW3lxBmwAAcyzl/fuWH/KpgVRFUBhYZVfip0DGnUOy1ZNYY11Y3Sv4+sUp4FWkH
	ktn6lIuhRu0p9OwrZhaBw/qvUqJUaW8I/vjMboNmbMNQhDzL3D4u192g3Le9bElHxi6AV9rCxnudR
	/tXtQbfuRbpF3KB9C3nRnCYNPWBs5qafdLNvnUmY58hzheVKBqwINglKy5wSNuAkbOK1AYfjFfoug
	hdykmtNv/0GqY9yfVPJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOvVF-00061y-Ac; Mon, 28 Oct 2019 03:15:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOvV6-00061W-5O
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 03:15:25 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BDFC020873;
 Mon, 28 Oct 2019 03:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572232523;
 bh=E2rmGEKJWc4SPd5hu34sYqUV9AyvQoUs/7AVX3h7orM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CtuHAFfgVqZrLteGy3y/MnjNgN2MyJdRESeyoOcTuXq7Hq1Dq0kYjG+XscuwFG3fx
 KlGejELfnIMgJkmO7dkceyYV0YGdHPr6p1ubMDpIVYlD66lcdg1TyI+K5rFz5UTjrG
 4jd4Ue/Nvdn8fRsYqF/IPXKOz+AQGngVsqdzK2ME=
Date: Mon, 28 Oct 2019 11:15:00 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH 1/5] arm64: dts: imx8qxp: Move usdhc clocks assignment to
 board DT
Message-ID: <20191028031459.GI16985@dragon>
References: <1571192067-19600-1-git-send-email-Anson.Huang@nxp.com>
 <20191026120902.GL14401@dragon>
 <DB3PR0402MB3916A2258E1E8B4690CC1B7DF5660@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB3916A2258E1E8B4690CC1B7DF5660@DB3PR0402MB3916.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_201524_227024_F8ECF311 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "baruch@tkos.co.il" <baruch@tkos.co.il>,
 "dafna.hirschfeld@collabora.com" <dafna.hirschfeld@collabora.com>,
 Jacky Bai <ping.bai@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>, "angus@akkea.ca" <angus@akkea.ca>,
 Peng Fan <peng.fan@nxp.com>, Gary Bisson <gary.bisson@boundarydevices.com>,
 "pavel@ucw.cz" <pavel@ucw.cz>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 Richard Hu <richard.hu@technexion.com>, Abel Vesa <abel.vesa@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "jon@solid-run.com" <jon@solid-run.com>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "andradanciu1997@gmail.com" <andradanciu1997@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Troy Kisky <troy.kisky@boundarydevices.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, Jun Li <jun.li@nxp.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 01:29:32AM +0000, Anson Huang wrote:
> Hi, Shawn
> 
> > On Wed, Oct 16, 2019 at 10:14:23AM +0800, Anson Huang wrote:
> > > usdhc's clock rate is different according to different devices
> > > connected, so clock rate assignment should be placed in board DT
> > > according to different devices connected on each usdhc port.
> > 
> > I think it should be fine that we have a reasonable default settings in soc.dtsi,
> > and boards that need a different setup can overwrite the settings in
> > board.dts.
> 
> Someone was complaining about the usdhc clock assignment in soc.dtsi, because some
> usdhc nodes are having clock assignments while some are NOT. That is why I did this
> patch set. I agree that we can have default settings in soc.dtsi, so do you think it makes
> sense to add default clock assignment to all usdhc nodes? If yes, I will redo the patch
> set.

I had a second thought on this. To ease the maintenance of soc.dtsi,
let's do clock assignments in board.dts.

Series applied, thanks.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
