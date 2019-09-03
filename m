Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3D8A7675
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 23:45:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:To:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4XUFo2TqK0A6PKij9GxK2urZBvwnVg5NDVMfKGZdViU=; b=UiORbmHbtUTB9c
	EUpeUQiLLN9YQfH1gTZ6JXvptbAOqVUrN+6nCSVTPuVyhSx6cHBRcAlerOoXRvTg+iczqHySBlQFZ
	iQEhVUmYpKLIGk1UZckhcPKC5zyZmJ1eb9w4Vc9HT1g3zvVzrWcIP+ibYzgC6xXh1Hl8YeeR/C1k2
	OeHQxAHCMDN0ZCM7HKGxpoN9lD1q9I1k3zT0QQgC3ZFr2gzDuEX1kT9PO2v9HulaDWcvR4deGpHQ+
	svjUe7RvbQW2A+2zGdUOI2GeDSzLnbSUGuMXmPRio6d7W25MwYU9a4a3pabEl1tuNOIs6TN/ZZpQO
	HIW5MRBMIAnY8a2fBm5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5GcP-00074F-9X; Tue, 03 Sep 2019 21:45:41 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Gby-00073D-FI
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 21:45:15 +0000
Received: by mail-pf1-x441.google.com with SMTP id d15so2227133pfo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 14:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:cc:subject:to:from:user-agent:date;
 bh=DC974GZJGhexkCFBOM5qEmYf6z0HgA/VnDsSvsVF7D0=;
 b=HiSF87MFMlybKjWPbamDnFr8jF4yrV8wWRl/q7vTLdCayEIsdov0M2UgoQlf3JX4H1
 gBBiyAdAu8IAEwYR1bevmCl7HFTR9sajVfhMDgAXak5uU/WC9Pk+G7i996fVdJTigDwR
 CK8z8PVAiAURMoDDeyttp6CxAFcufTD9LoaXE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:cc:subject:to:from
 :user-agent:date;
 bh=DC974GZJGhexkCFBOM5qEmYf6z0HgA/VnDsSvsVF7D0=;
 b=BjfDPkv5UX3Ryl4IxMLNgzxD2R2oxVfEbFmIUL+cKZbGFhvfuEhByCzaNvclL1foLn
 khrp6DWaPn316O6W72Yh8Mw2SESB9ApvZIh9qVOwCEiwUqLN48NRAGaEsIJO+wnr4CWL
 KLyzGbEJMIbJX29E4pTDf6SyMDMANQSROPuvBMAvKzMLlyFbEpdq53eyjvPPleVOerPD
 f7JZcYFHNEQN3lKIVAil3rAdth80YEGWlZQe25lxVu++0+p1OB6AQmWHHgmFjowH+ir5
 d7yDgIijmHHCprafw+OlL4OFnTA6paXCJ17lt+WYUxupm78EMPu/R6HX67q8OsybqlSu
 la/Q==
X-Gm-Message-State: APjAAAVBQqDynJ4hCSMJY7wCAATJ8pBVB7Oa3IoXs/a8bXjXGJW0Wb5y
 gC0XfiT10aOtU/hhyYb6uI6pjw==
X-Google-Smtp-Source: APXvYqyyXLc2Kx3iRoFjN/Pmqbfyp7/k/scbD3QixYgco+j3rtBA2rDoAT/CxZaV2vtfjY0BzldgGg==
X-Received: by 2002:a65:6454:: with SMTP id s20mr32157131pgv.15.1567547110418; 
 Tue, 03 Sep 2019 14:45:10 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id ck8sm498898pjb.25.2019.09.03.14.45.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 14:45:09 -0700 (PDT)
Message-ID: <5d6edee5.1c69fb81.a3896.1d05@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <20190903173924.GB9754@jackp-linux.qualcomm.com>
References: <20190207111734.24171-1-jorge.ramirez-ortiz@linaro.org>
 <20190207111734.24171-4-jorge.ramirez-ortiz@linaro.org>
 <20190223165218.GB572@tuxbook-pro>
 <6dc0957d-5806-7643-4454-966015865d38@linaro.org>
 <5d694878.1c69fb81.5f13b.ec4f@mx.google.com>
 <20190830164520.GK26807@tuxbook-pro>
 <5d696ad2.1c69fb81.977ea.39e5@mx.google.com>
 <f3584f38-dabc-7e7a-d1cb-84c80ed26215@linaro.org>
 <20190903173924.GB9754@jackp-linux.qualcomm.com>
Subject: Re: [PATCH v4 3/4] dt-bindings: Add Qualcomm USB SuperSpeed PHY
 bindings
To: Jack Pham <jackp@codeaurora.org>,
 Jorge Ramirez <jorge.ramirez-ortiz@linaro.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.8.1
Date: Tue, 03 Sep 2019 14:45:08 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_144514_516829_6F32D475 
X-CRM114-Status: GOOD (  27.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, robh@kernel.org, kishon@ti.com,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 khasim.mohammed@linaro.org, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, andy.gross@linaro.org, shawn.guo@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Jack Pham (2019-09-03 10:39:24)
> On Mon, Sep 02, 2019 at 08:23:04AM +0200, Jorge Ramirez wrote:
> > On 8/30/19 20:28, Stephen Boyd wrote:
> > > Quoting Bjorn Andersson (2019-08-30 09:45:20)
> > >> On Fri 30 Aug 09:01 PDT 2019, Stephen Boyd wrote:
> > >>
> > >>>>>
> > >>>>> The USB-C connector is attached both to the HS and SS PHYs, so I think
> > >>>>> you should represent this external to this node and use of_graph to
> > >>>>> query it.
> > >>>>
> > >>>> but AFAICS we wont be able to retrieve the vbux-supply from an external
> > >>>> node (that interface does not exist).
> > >>>>
> > >>>> rob, do you have a suggestion?
> > >>>
> > >>> Shouldn't the vbus supply be in the phy? Or is this a situation where
> > >>> the phy itself doesn't have the vbus supply going to it because the PMIC
> > >>> gets in the way and handles the vbus for the connector by having the SoC
> > >>> communicate with the PMIC about when to turn the vbus on and off, etc?
> > >>>
> > >>
> > >> That's correct, the VBUS comes out of the PMIC and goes directly to the
> > >> connector.
> > >>
> > >> The additional complicating factor here is that the connector is wired
> > >> to a USB2 phy as well, so we need to wire up detection and vbus control
> > >> to both of them - but I think this will be fine, if we can only figure
> > >> out a sane way of getting hold of the vbus-supply.
> > >>
> > > 
> > > Does it really matter to describe this situation though? Maybe it's
> > > simpler to throw the vbus supply into the phy and control it from the
> > > phy driver, even if it never really goes there. Or put it into the
> > > toplevel usb controller?
> > > 
> > that would work for me - the connector definition seemed a better way to
> > explain the connectivity but since we cant retrieve the supply from the
> > external node is not of much functional use.
> > 
> > but please let me know how to proceed. shall I add the supply back to
> > the phy?

So does the vbus actually go to the phy? I thought it never went there
and the power for the phy was different (and possibly lower in voltage).

> 
> Putting it in the toplevel usb node makes sense to me, since that's
> usually the driver that knows when it's switching into host mode and
> needs to turn on VBUS. The dwc3-qcom driver & bindings currently don't 
> do this but there's precedent in a couple of the other dwc3 "glues"--see
> Documentation/devicetree/bindings/usb/{amlogic\,dwc3,omap-usb}.txt
> 
> One exception is if the PMIC is also USB-PD capable and can do power
> role swap, in which case the VBUS control needs to be done by the TCPM,
> so that'd be a case where having vbus-supply in the connector node might
> make more sense.
> 

The other way is to implement the code to get the vbus supply out of a
connector. Then any driver can do the work if it knows it needs to and
we don't have to care that the vbus isn't going somewhere. I suppose
that would need an of_regulator_get() sort of API that can get the
regulator out of there? Or to make the connector into a struct device
that can get the regulator out per some generic connector driver and
then pass it through to the USB controller when it asks for it. Maybe
try to prototype that out?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
