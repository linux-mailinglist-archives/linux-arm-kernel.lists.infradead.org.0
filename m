Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BCAA3C62
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 18:43:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJZc/bF4IXARPNJcRSDbd8ffZpNnlQdN3wvV14aQLmA=; b=jeGR2xUIt14IoO
	ewpLNtmbZ04eTawIY/zrr1A3fx/RIIhKqEQIlanyXz0LWZjW5AtQ46/1IpOx5CLjblT3+VihDfs4T
	I3wnMh4FtvB5TzNZZX6Qa59VvJ0uMYkbD/TcfPzeTdAbGOIAxjmM3HBIU+3aiUx9KKhTq4xbemgG0
	VSDAhz1WYdRL8wWZ0liZwoe4T7pdoicyXNEVp2RSsixD2off7t46Hst8gQnE/o+FwVkyKYWI+hEG/
	LaMW8Om0kg0OY9b7iboPmudvfPN13HLQVhvgiLFEr5TkOE9qAThXsXy0TwMF9pMZuwfaAaTjkFUU0
	zHXSnt0BkNGJrUgLEVAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3jzz-0002x3-Hv; Fri, 30 Aug 2019 16:43:43 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3jzk-0002vu-HK
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 16:43:33 +0000
Received: by mail-pf1-x441.google.com with SMTP id w2so4987899pfi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 09:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=q5gzUFH+LLr1GeRh8d61wQ5ZxK6DUtBvBFz6N7zeYQ8=;
 b=nJl4ZiCxYAu6twY2dIZpt6JBzmYgk4PbodtyM2DHZYiWFm3VZFwCvg9Zw15krklbGj
 eaWHPK+cFBBCGA0j/4A0Yfzho/8xw6VmQkabo5OzbrYcK6qaR5aXh3iUDQWfcbGoSu4Z
 poGclGdOBZhYYd8+6uSeM3dZ20P5jKdpWSYWZDeWh0gjHX+CjnUJf5w/keLKJbxMc+Db
 kBHpAtM1aMNqaSEcg0LPKmRILXrjtbQDjXBBGQeb07g4YwZYcaIKzfRZ4xBW+3ZkhVds
 zzBzYUC+cW02dZjQEYEUijUVJcsCfQkm2xhgu3ItpChGSLeorMLGu1WORzMS/Er5okqr
 2pyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=q5gzUFH+LLr1GeRh8d61wQ5ZxK6DUtBvBFz6N7zeYQ8=;
 b=gr2C9OhgMyfLV8W3uvKpASNSXQPjyHntZ7FEUUdX/7w8AuyFRleiRxq0KlCvxOBHER
 kn3fiGH40G4cQDMFjfT4Ghiq6lwQ+fmM3dKnQUgzFz92HMgq6YruAwTH68t6r75HF0zn
 TN4/BZuuYZGvwJWqoasdgDXD7LOPPSto6qwa1CLcFYRn1NxFwdimbqnS/xYE7mk+nwre
 fRqCcuvweZPLZXAtyQwAcE4/6D4ybLH/nhEPEmx1h0Zg8kvLT/Ygtw8s35qm/hss0IJ4
 LWo5bMrNTXkr4wbLTT3McMejtK+maO5v78BF/nNniV49m8oWe8XNe8cz9OKfijIsw/cJ
 ofXA==
X-Gm-Message-State: APjAAAVZK/BgIbwLc9az3ZnXdWM4ZZa7Q9UhqNXPNo6rbQlIiFZJclxy
 h2MHkydxJwddiDdAP0QxrHUU5A==
X-Google-Smtp-Source: APXvYqyWTZbyunakxQlyU8+azoFn/fVvPZoIev3hecPMzx3XNAaoIo+T2UrpOj7TfS4xJn93lMOOzQ==
X-Received: by 2002:a63:188:: with SMTP id 130mr13572573pgb.231.1567183406399; 
 Fri, 30 Aug 2019 09:43:26 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id c9sm8573589pfb.43.2019.08.30.09.43.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Aug 2019 09:43:25 -0700 (PDT)
Date: Fri, 30 Aug 2019 09:45:20 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH v4 3/4] dt-bindings: Add Qualcomm USB SuperSpeed PHY
 bindings
Message-ID: <20190830164520.GK26807@tuxbook-pro>
References: <20190207111734.24171-1-jorge.ramirez-ortiz@linaro.org>
 <20190207111734.24171-4-jorge.ramirez-ortiz@linaro.org>
 <20190223165218.GB572@tuxbook-pro>
 <6dc0957d-5806-7643-4454-966015865d38@linaro.org>
 <5d694878.1c69fb81.5f13b.ec4f@mx.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d694878.1c69fb81.5f13b.ec4f@mx.google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_094332_089636_5FFE4BE5 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

On Fri 30 Aug 09:01 PDT 2019, Stephen Boyd wrote:

> Quoting Jorge Ramirez (2019-08-29 00:03:48)
> > On 2/23/19 17:52, Bjorn Andersson wrote:
> > > On Thu 07 Feb 03:17 PST 2019, Jorge Ramirez-Ortiz wrote:
> > >> +
> > >> +Required child nodes:
> > >> +
> > >> +- usb connector node as defined in bindings/connector/usb-connector.txt
> > >> +  containing the property vbus-supply.
> > >> +
> > >> +Example:
> > >> +
> > >> +usb3_phy: usb3-phy@78000 {
> > >> +    compatible = "qcom,snps-usb-ssphy";
> > >> +    reg = <0x78000 0x400>;
> > >> +    #phy-cells = <0>;
> > >> +    clocks = <&rpmcc RPM_SMD_LN_BB_CLK>,
> > >> +             <&gcc GCC_USB_HS_PHY_CFG_AHB_CLK>,
> > >> +             <&gcc GCC_USB3_PHY_PIPE_CLK>;
> > >> +    clock-names = "ref", "phy", "pipe";
> > >> +    resets = <&gcc GCC_USB3_PHY_BCR>,
> > >> +             <&gcc GCC_USB3PHY_PHY_BCR>;
> > >> +    reset-names = "com", "phy";
> > >> +    vdd-supply = <&vreg_l3_1p05>;
> > >> +    vdda1p8-supply = <&vreg_l5_1p8>;
> > >> +    usb3_c_connector: usb3-c-connector {
> 
> Node name should be 'connector', not usb3-c-connector.
> 

It probably has to be usb-c-connector, because we have a
micro-usb-connector on the same board.

> > > 
> > > The USB-C connector is attached both to the HS and SS PHYs, so I think
> > > you should represent this external to this node and use of_graph to
> > > query it.
> > 
> > but AFAICS we wont be able to retrieve the vbux-supply from an external
> > node (that interface does not exist).
> > 
> > rob, do you have a suggestion?
> 
> Shouldn't the vbus supply be in the phy? Or is this a situation where
> the phy itself doesn't have the vbus supply going to it because the PMIC
> gets in the way and handles the vbus for the connector by having the SoC
> communicate with the PMIC about when to turn the vbus on and off, etc?
> 

That's correct, the VBUS comes out of the PMIC and goes directly to the
connector.

The additional complicating factor here is that the connector is wired
to a USB2 phy as well, so we need to wire up detection and vbus control
to both of them - but I think this will be fine, if we can only figure
out a sane way of getting hold of the vbus-supply.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
