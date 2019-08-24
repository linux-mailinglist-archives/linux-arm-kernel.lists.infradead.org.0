Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC709BF44
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 20:31:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GLsmPZnqGqzsUeUkF4ViWEMO+HBT/nbIR+0U1QIY9F8=; b=slddJA8Rg6lZc+
	W5xu57xdENu8iMlMoe0L7R+1fdO2trnF/Np6S0It32EzBksbaEYQ5RU4U+gM0lduJYy5lQRTbTW9Z
	rF0LDJOiLzayn3D7u2eleTsXCasZtJH48KfeXa/mo4VkOJP0/VLRFQ1isjOinz7xQJpBK/T2TiRLT
	0upe73ZXRKqqaNCDOWsDIFEDimIGOMn/OADRBYEv9a0uaN6aidKQv2eCYbJVyFPKml8qRdsqgrxW0
	yG5TDYknugs3EhW/ROSg9HoL07qegbuz5fes5cM+Q3r4sOrXfJRtvMv9mISSfNnzGOSDqIdYV61Co
	wY5nveAuZaLhpTDsMqlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1ap9-00087f-0s; Sat, 24 Aug 2019 18:31:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1aos-00087L-Hg
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 18:31:23 +0000
Received: from X250 (cm-84.211.118.175.getinternet.no [84.211.118.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9E42B21897;
 Sat, 24 Aug 2019 18:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566671481;
 bh=DmSHzsJoUz62nz9KFHCqYK6dgiAFue8c2ZDdH9pdfK8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M2QXTWCICjZPv5ZEEjocTVjyM1eAuZZ3ftM80JvvuhT4NKVpk5Jg22a5w8p1+0DDh
 JOznZRvPQ6/xi4yZUjy/WzTPwV1ALtOQP+3r75xC7IncNppOtnZ5fdQL+xtpea0Sz1
 ZdMtyV0YApmDfm/u7EXdgNGBZkX1LECVOlTh6iUQ=
Date: Sat, 24 Aug 2019 20:31:09 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] ARM: imx: Drop imx_anatop_init()
Message-ID: <20190824183108.GA14936@X250>
References: <20190731180131.8597-1-andrew.smirnov@gmail.com>
 <VI1PR04MB7023AE3910B261877892EEABEEA50@VI1PR04MB7023.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB7023AE3910B261877892EEABEEA50@VI1PR04MB7023.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_113122_608822_CD447072 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Peter Chen <peter.chen@nxp.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 05:33:13PM +0000, Leonard Crestez wrote:
> On 31.07.2019 21:01, Andrey Smirnov wrote:
> > With commit b5bbe2235361 ("usb: phy: mxs: Disable external charger
> > detect in mxs_phy_hw_init()") in tree all of the necessary charger
> > setup is done by the USB PHY driver which covers all of the affected
> > i.MX6 SoCs.
> > 
> > NOTE: Imx_anatop_init() was also called for i.MX7D, but looking at its
> > datasheet it appears to have a different USB PHY IP block, so
> > executing i.MX6 charger disable configuration seems unnecessary.
> > 
> > -void __init imx_anatop_init(void)
> > -{
> > -	anatop = syscon_regmap_lookup_by_compatible("fsl,imx6q-anatop");
> > -	if (IS_ERR(anatop)) {
> > -		pr_err("%s: failed to find imx6q-anatop regmap!\n", __func__);
> > -		return;
> > -	}
> 
> This patch breaks suspend on imx6 in linux-next because the "anatop" 
> regmap is no longer initialized. This was found via bisect but 
> no_console_suspend prints a helpful stack anyway:
> 
> (regmap_read) from [<c01226e4>] (imx_anatop_enable_weak2p5+0x28/0x70)
> (imx_anatop_enable_weak2p5) from [<c0122744>] 
> (imx_anatop_pre_suspend+0x18/0x64)
> (imx_anatop_pre_suspend) from [<c0124434>] (imx6q_pm_enter+0x60/0x16c)
> (imx6q_pm_enter) from [<c018c8a4>] (suspend_devices_and_enter+0x7d4/0xcbc)
> (suspend_devices_and_enter) from [<c018d544>] (pm_suspend+0x7b8/0x904)
> (pm_suspend) from [<c018b1b4>] (state_store+0x68/0xc8)

I dropped it from my branch for now.  Thanks for reporting!

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
