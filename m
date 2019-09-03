Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5FEA71D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 19:39:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ArD1vIKCqmPNqeE00c0UhMA42L+oxyPMY4HHe9F8XwY=; b=V1JLMs9xxkFyfm
	2t7BtIEDHI7+hSe1tAhNcW4tRc89D7q/8jcTUpw04uE2Fece+1ee3wAiYg92IGJ2OsDyiLWkPYiSp
	ZuBqBGRyL5T0vdn59jyb8scQXV/pNtjDI+P2kaIZ81cfa2R/Z+zHXJ/b8jal24hic1Q+Go/pJaJnJ
	QbIaohngXxOpiBv7b72d+HoWFFa2MvO3gx/Lj2DDOdXwsD//L4nwTzIzt6CFFt9nmqOrznKKczTWb
	r9Y2w3dn6rxoLb7ejUZzxCYx0j8J2t9053SuysX16JAz1s90qk64kr4Ank7WzxdXXLyr9cngXgU6f
	iQc5dVN5Nl/p3HOTF1Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5CmO-0004Cg-2a; Tue, 03 Sep 2019 17:39:44 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Cm9-0004Ad-P6
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 17:39:31 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id A509E6076A; Tue,  3 Sep 2019 17:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567532368;
 bh=xKD/ENinILDUC661caazKHdhGNze9nJEsqCHmhYq/gI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mSaHHI4HlqZuevjNtneF5Fa2yJjpP7bfH9j9pabBFRGe2jeFBT8mW9GzJPts/jfhS
 X3LvycC7PVgj6ebntpN4mHQyNl6fk+wPTvVN62n/ytmfCZdEFBnZHrbYmABrjNTKw7
 bliWM9PTZ5qt6qS7ysbpzLR53CqNUkYOuLQlcQfg=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from jackp-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jackp@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id EF13C602DC;
 Tue,  3 Sep 2019 17:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567532366;
 bh=xKD/ENinILDUC661caazKHdhGNze9nJEsqCHmhYq/gI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FcbIZ/0q69EnCWiymdG7m0I+ACVb6+Yw9NnKnzl+XyDOR89aqQpX2ebgNrgB1GS7Z
 LJ7N5D2R1hF4yrXVwlMyOHwD00Q1EMANIY0r0jA/4pBPA3BUDQj7RwDk2/j/BQ7/n/
 IB6yq6j6JC7XeMKSOSo3R0uwCk6DUCRQEiVdWhqg=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org EF13C602DC
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jackp@codeaurora.org
Date: Tue, 3 Sep 2019 10:39:24 -0700
From: Jack Pham <jackp@codeaurora.org>
To: Jorge Ramirez <jorge.ramirez-ortiz@linaro.org>
Subject: Re: [PATCH v4 3/4] dt-bindings: Add Qualcomm USB SuperSpeed PHY
 bindings
Message-ID: <20190903173924.GB9754@jackp-linux.qualcomm.com>
References: <20190207111734.24171-1-jorge.ramirez-ortiz@linaro.org>
 <20190207111734.24171-4-jorge.ramirez-ortiz@linaro.org>
 <20190223165218.GB572@tuxbook-pro>
 <6dc0957d-5806-7643-4454-966015865d38@linaro.org>
 <5d694878.1c69fb81.5f13b.ec4f@mx.google.com>
 <20190830164520.GK26807@tuxbook-pro>
 <5d696ad2.1c69fb81.977ea.39e5@mx.google.com>
 <f3584f38-dabc-7e7a-d1cb-84c80ed26215@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f3584f38-dabc-7e7a-d1cb-84c80ed26215@linaro.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_103929_858254_75AB9D49 
X-CRM114-Status: GOOD (  26.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, robh@kernel.org, kishon@ti.com,
 gregkh@linuxfoundation.org, Stephen Boyd <swboyd@chromium.org>,
 linux-usb@vger.kernel.org, khasim.mohammed@linaro.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 andy.gross@linaro.org, shawn.guo@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 02, 2019 at 08:23:04AM +0200, Jorge Ramirez wrote:
> On 8/30/19 20:28, Stephen Boyd wrote:
> > Quoting Bjorn Andersson (2019-08-30 09:45:20)
> >> On Fri 30 Aug 09:01 PDT 2019, Stephen Boyd wrote:
> >>
> >>> Quoting Jorge Ramirez (2019-08-29 00:03:48)
> >>>> On 2/23/19 17:52, Bjorn Andersson wrote:
> >>>>> On Thu 07 Feb 03:17 PST 2019, Jorge Ramirez-Ortiz wrote:
> >>>>>> +
> >>>>>> +Required child nodes:
> >>>>>> +
> >>>>>> +- usb connector node as defined in bindings/connector/usb-connector.txt
> >>>>>> +  containing the property vbus-supply.
> >>>>>> +
> >>>>>> +Example:
> >>>>>> +
> >>>>>> +usb3_phy: usb3-phy@78000 {
> >>>>>> +    compatible = "qcom,snps-usb-ssphy";
> >>>>>> +    reg = <0x78000 0x400>;
> >>>>>> +    #phy-cells = <0>;
> >>>>>> +    clocks = <&rpmcc RPM_SMD_LN_BB_CLK>,
> >>>>>> +             <&gcc GCC_USB_HS_PHY_CFG_AHB_CLK>,
> >>>>>> +             <&gcc GCC_USB3_PHY_PIPE_CLK>;
> >>>>>> +    clock-names = "ref", "phy", "pipe";
> >>>>>> +    resets = <&gcc GCC_USB3_PHY_BCR>,
> >>>>>> +             <&gcc GCC_USB3PHY_PHY_BCR>;
> >>>>>> +    reset-names = "com", "phy";
> >>>>>> +    vdd-supply = <&vreg_l3_1p05>;
> >>>>>> +    vdda1p8-supply = <&vreg_l5_1p8>;
> >>>>>> +    usb3_c_connector: usb3-c-connector {
> >>>
> >>> Node name should be 'connector', not usb3-c-connector.
> >>>
> >>
> >> It probably has to be usb-c-connector, because we have a
> >> micro-usb-connector on the same board.
> > 
> > Ok. Or connector@1 and connector@2? Our toplevel node container story is
> > sort of sad because we have to play tricks with node names. But in the
> > example, just connector I presume? 
> > 
> >>
> >>>>>
> >>>>> The USB-C connector is attached both to the HS and SS PHYs, so I think
> >>>>> you should represent this external to this node and use of_graph to
> >>>>> query it.
> >>>>
> >>>> but AFAICS we wont be able to retrieve the vbux-supply from an external
> >>>> node (that interface does not exist).
> >>>>
> >>>> rob, do you have a suggestion?
> >>>
> >>> Shouldn't the vbus supply be in the phy? Or is this a situation where
> >>> the phy itself doesn't have the vbus supply going to it because the PMIC
> >>> gets in the way and handles the vbus for the connector by having the SoC
> >>> communicate with the PMIC about when to turn the vbus on and off, etc?
> >>>
> >>
> >> That's correct, the VBUS comes out of the PMIC and goes directly to the
> >> connector.
> >>
> >> The additional complicating factor here is that the connector is wired
> >> to a USB2 phy as well, so we need to wire up detection and vbus control
> >> to both of them - but I think this will be fine, if we can only figure
> >> out a sane way of getting hold of the vbus-supply.
> >>
> > 
> > Does it really matter to describe this situation though? Maybe it's
> > simpler to throw the vbus supply into the phy and control it from the
> > phy driver, even if it never really goes there. Or put it into the
> > toplevel usb controller?
> > 
> that would work for me - the connector definition seemed a better way to
> explain the connectivity but since we cant retrieve the supply from the
> external node is not of much functional use.
> 
> but please let me know how to proceed. shall I add the supply back to
> the phy?

Putting it in the toplevel usb node makes sense to me, since that's
usually the driver that knows when it's switching into host mode and
needs to turn on VBUS. The dwc3-qcom driver & bindings currently don't 
do this but there's precedent in a couple of the other dwc3 "glues"--see
Documentation/devicetree/bindings/usb/{amlogic\,dwc3,omap-usb}.txt

One exception is if the PMIC is also USB-PD capable and can do power
role swap, in which case the VBUS control needs to be done by the TCPM,
so that'd be a case where having vbus-supply in the connector node might
make more sense.

Jack
-- 
The Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
