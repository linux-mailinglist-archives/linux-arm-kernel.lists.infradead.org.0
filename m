Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33594A3DB1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 20:28:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:To:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fshZafbxkh8/QcUZhFlh5pUFtvyzr7qD+JUAKm4huaA=; b=Nw+H8yq6vvyC31
	WbyQCoRAMRut9BKw/QJ1W3aIX0ZPllJ4Hve2i0WxnXuVJRWMgOMkUmkSNvXYqTgBHe28df03tgY/E
	BMGJyOrIBJLkTY2KJhmpMXNA0selNrTgMI1+u/0X4XtTGWUdVYkftSwUif5GYtu/+5cKo32P9pgWq
	kzIEoY2jSUaobsVUkTpz80qcxxYsMoqRAqXj4/lPH+QBRkQa2ZqEIlVKSPK5LPeGcEMFezz654CDW
	AGIdx5WYw2+UtUyeX+iJcNYbSJBmVbAoLmx1TTDbtf8zFu0iy6SuR9VhcsGr6+VMfxuMNnGZDVExx
	UrMYxQ4GsyC6kdIcpfYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3ldg-0008Ht-Jv; Fri, 30 Aug 2019 18:28:48 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3ldT-0008H7-Rn
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 18:28:37 +0000
Received: by mail-pf1-x432.google.com with SMTP id 196so5133746pfz.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 11:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:cc:subject:to:from:user-agent:date;
 bh=9GeCgw/KxFloNeY2cmQhUJuI6BYk8fDzNxr9XRd8OXk=;
 b=ai/zCqyb/BzQPSLxNpUrZR7CwKxGWQ2I+RXtaeVKtdkNKoEKnMxFwrdfTlSjANybDL
 FF+SNidSutGnxWc+1lYqacTgreiFWZg7A6uEls2EktdaioC8OiAd991XAHTvd/I/CTsq
 I0D3cpqKf3EdMUshwYywp0JTUbS39u11rPAy4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:cc:subject:to:from
 :user-agent:date;
 bh=9GeCgw/KxFloNeY2cmQhUJuI6BYk8fDzNxr9XRd8OXk=;
 b=f9EWvqJRrWQUR5+jmzgnmQdfkJ3zg7bsf69yFnx5OzUbSFOjHEPD2EztWeAbeSDyHP
 DfywJmT8lrm2zEMTW+SnT6ugdBtx7WqkuZX2U+8SOofyT0kLRvOMDY6bzdlYwiqqr50D
 7nC1ljTDj523UbeVWrT919/vzNIYZ6HjuaL1RLvNKf1MxzSxeAC+d+FyhfCb3Ley0rqj
 xIOxGuzebBFnjew00taLRVusxoUAPELz05r+rUlCLmCV/hMVfSvPwrt8e6pfHPGxOAYF
 g+ctDt0XzYhfEzB1LYrI3qYEbCDcO7Z2J2GZG/3719DDYotI57cqmP3PwvFWBDFqHJdg
 rKXA==
X-Gm-Message-State: APjAAAUI+iqzOQIiIMpUhzYTc07K3YZMueg9Ko6KhEGJvtnjxsOTo5AS
 0hmFVzEqllGumdF86aTMZ3yW4A==
X-Google-Smtp-Source: APXvYqzMiFGN83Njt2/JrFLYZUyyM9L9qiaHV6onYdWf1y1eG8n3W6IX2y++KngHRNf/PFHG04PAew==
X-Received: by 2002:a63:460c:: with SMTP id t12mr13961916pga.69.1567189714926; 
 Fri, 30 Aug 2019 11:28:34 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id g14sm7411264pfb.150.2019.08.30.11.28.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Aug 2019 11:28:34 -0700 (PDT)
Message-ID: <5d696ad2.1c69fb81.977ea.39e5@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <20190830164520.GK26807@tuxbook-pro>
References: <20190207111734.24171-1-jorge.ramirez-ortiz@linaro.org>
 <20190207111734.24171-4-jorge.ramirez-ortiz@linaro.org>
 <20190223165218.GB572@tuxbook-pro>
 <6dc0957d-5806-7643-4454-966015865d38@linaro.org>
 <5d694878.1c69fb81.5f13b.ec4f@mx.google.com>
 <20190830164520.GK26807@tuxbook-pro>
Subject: Re: [PATCH v4 3/4] dt-bindings: Add Qualcomm USB SuperSpeed PHY
 bindings
To: Bjorn Andersson <bjorn.andersson@linaro.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.8.1
Date: Fri, 30 Aug 2019 11:28:33 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_112835_926433_5F113F4A 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, robh@kernel.org, jackp@codeaurora.org,
 devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, khasim.mohammed@linaro.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-arm-msm@vger.kernel.org,
 andy.gross@linaro.org, Jorge Ramirez <jorge.ramirez-ortiz@linaro.org>,
 shawn.guo@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Bjorn Andersson (2019-08-30 09:45:20)
> On Fri 30 Aug 09:01 PDT 2019, Stephen Boyd wrote:
> 
> > Quoting Jorge Ramirez (2019-08-29 00:03:48)
> > > On 2/23/19 17:52, Bjorn Andersson wrote:
> > > > On Thu 07 Feb 03:17 PST 2019, Jorge Ramirez-Ortiz wrote:
> > > >> +
> > > >> +Required child nodes:
> > > >> +
> > > >> +- usb connector node as defined in bindings/connector/usb-connector.txt
> > > >> +  containing the property vbus-supply.
> > > >> +
> > > >> +Example:
> > > >> +
> > > >> +usb3_phy: usb3-phy@78000 {
> > > >> +    compatible = "qcom,snps-usb-ssphy";
> > > >> +    reg = <0x78000 0x400>;
> > > >> +    #phy-cells = <0>;
> > > >> +    clocks = <&rpmcc RPM_SMD_LN_BB_CLK>,
> > > >> +             <&gcc GCC_USB_HS_PHY_CFG_AHB_CLK>,
> > > >> +             <&gcc GCC_USB3_PHY_PIPE_CLK>;
> > > >> +    clock-names = "ref", "phy", "pipe";
> > > >> +    resets = <&gcc GCC_USB3_PHY_BCR>,
> > > >> +             <&gcc GCC_USB3PHY_PHY_BCR>;
> > > >> +    reset-names = "com", "phy";
> > > >> +    vdd-supply = <&vreg_l3_1p05>;
> > > >> +    vdda1p8-supply = <&vreg_l5_1p8>;
> > > >> +    usb3_c_connector: usb3-c-connector {
> > 
> > Node name should be 'connector', not usb3-c-connector.
> > 
> 
> It probably has to be usb-c-connector, because we have a
> micro-usb-connector on the same board.

Ok. Or connector@1 and connector@2? Our toplevel node container story is
sort of sad because we have to play tricks with node names. But in the
example, just connector I presume? 

> 
> > > > 
> > > > The USB-C connector is attached both to the HS and SS PHYs, so I think
> > > > you should represent this external to this node and use of_graph to
> > > > query it.
> > > 
> > > but AFAICS we wont be able to retrieve the vbux-supply from an external
> > > node (that interface does not exist).
> > > 
> > > rob, do you have a suggestion?
> > 
> > Shouldn't the vbus supply be in the phy? Or is this a situation where
> > the phy itself doesn't have the vbus supply going to it because the PMIC
> > gets in the way and handles the vbus for the connector by having the SoC
> > communicate with the PMIC about when to turn the vbus on and off, etc?
> > 
> 
> That's correct, the VBUS comes out of the PMIC and goes directly to the
> connector.
> 
> The additional complicating factor here is that the connector is wired
> to a USB2 phy as well, so we need to wire up detection and vbus control
> to both of them - but I think this will be fine, if we can only figure
> out a sane way of getting hold of the vbus-supply.
> 

Does it really matter to describe this situation though? Maybe it's
simpler to throw the vbus supply into the phy and control it from the
phy driver, even if it never really goes there. Or put it into the
toplevel usb controller?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
