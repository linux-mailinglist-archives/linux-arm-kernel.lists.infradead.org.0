Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C12D7A7797
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 01:32:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m1jQz75gz8/QTl1RMU45KgiZkCISS+uqEBaDtscmvL0=; b=jq9rD0k3dYT8Pv
	p1rmkpChfbsXbExvVmwmyOyiO2z60j1ehVQVzp30m/aXRRYSpSHSaQaRnLNQNS0F1DL/RIwjNTRaK
	iasiTtuHBm/Xj7AS6PvhhKKxt4saloDk9dslb8nWhzp2p+CyjK0F25SVdw6joZcPPfE5vC1b4dwdO
	2SpyEoiW1AC5+/hu+1Ycqbkew53SiF3eP3qKtBlpbZJ6bAF5fcEc9sik0uXJiaAzZjG1XSXVWbt9J
	/qvJPFpJqSGTZ6/YWUco3CAWKG24t8Wkn1iHkFPMXl+CpZb1R3z/gir1jpX6hksR84JZ1QhcD64mV
	VpGM/4jCWDdxZkvmvdow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5IHc-0001DR-Ip; Tue, 03 Sep 2019 23:32:20 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5IHN-0001D8-PZ
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 23:32:07 +0000
Received: by mail-pf1-x444.google.com with SMTP id y22so6276096pfr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 16:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LfTKMbZe2QVHemXyI/fIb1Ivk454nudy7JvQKOTshZI=;
 b=hhxlaIHTv3gXPMOEiEPTnhAjD9Y6bAgnhOJMrJaoKWITBLAEEXo3g+Dr2AbD2y2cNW
 aVavGUpAgsD4jBtLtEdcSxEL4wLAtcHcQKJ+FN+dvjfpwYreNISdkKS6biYVAK6DtoAA
 Zk0HK2Zi15ceZYkRx0KmoAQUwfHZ/KUWv1S/klYU/mGRS+G98nPqD3x9ggg1VsPL/TRD
 tan1EttguFZmZzPYbMfKngbDKfMfRPDmpDkOw1ekyVuS2GOV7CzX1zIu+KtLeRFee8U3
 p7MkywnwKuyKa3RQPnqFQoCteQJuhSKOBDHg/btqO/Wkmv67b/R11k8TlQP68drElMhr
 MsEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LfTKMbZe2QVHemXyI/fIb1Ivk454nudy7JvQKOTshZI=;
 b=XfuCdEDUiEaHGBa7h3xMvEnVqwZxJCcBdOXsnyotbzk5aE34L2CCkFSnHkrzbTVt/A
 vxMkvzKuhgH/+mXlp6P0r+l6TV1AnJ2ezQbAXLtMUMyLgqeMQMOgo10Jm11Q7sECi1WH
 2hijbnsw4ybM0NtSuqSo4ShhWFSWekFCxjC9sZ3+OqYHiXF8MK2ujbMZGSqmOM/ods/P
 YrEirL/fZ+cQw2MjNdETTqOjWNRPXz9FxP+/Xj1ncAf59Bdg3R3+QeOItP8kBlxFsOrT
 I2+JFjmT1LJMF/hBrOwqjiFCH2K7alNfHHEccdV8sj+L91AgTAkj2qhVyWfTHG/v9IY/
 CKrA==
X-Gm-Message-State: APjAAAWjRF3VgqBdqcFDUZemADrEkRSXQ1nnqQFAyU9issRREEi13zWl
 eivxS8EfDiqrVcJ+xxbnzj21Ew==
X-Google-Smtp-Source: APXvYqzOEVmuwaiwOAKa84Gb6UNz3WotsIqSI/TBfnStU4C0+10SnuM4+VTmlepgJynzri/fsmD3jg==
X-Received: by 2002:a63:3fc9:: with SMTP id
 m192mr33069603pga.429.1567553524617; 
 Tue, 03 Sep 2019 16:32:04 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id a29sm29714392pfr.152.2019.09.03.16.32.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 16:32:03 -0700 (PDT)
Date: Tue, 3 Sep 2019 16:34:10 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH v4 3/4] dt-bindings: Add Qualcomm USB SuperSpeed PHY
 bindings
Message-ID: <20190903233410.GQ26807@tuxbook-pro>
References: <20190207111734.24171-1-jorge.ramirez-ortiz@linaro.org>
 <20190207111734.24171-4-jorge.ramirez-ortiz@linaro.org>
 <20190223165218.GB572@tuxbook-pro>
 <6dc0957d-5806-7643-4454-966015865d38@linaro.org>
 <5d694878.1c69fb81.5f13b.ec4f@mx.google.com>
 <20190830164520.GK26807@tuxbook-pro>
 <5d696ad2.1c69fb81.977ea.39e5@mx.google.com>
 <f3584f38-dabc-7e7a-d1cb-84c80ed26215@linaro.org>
 <20190903173924.GB9754@jackp-linux.qualcomm.com>
 <5d6edee5.1c69fb81.a3896.1d05@mx.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d6edee5.1c69fb81.a3896.1d05@mx.google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_163205_836623_2DF52151 
X-CRM114-Status: GOOD (  33.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: mark.rutland@arm.com, robh@kernel.org, Jack Pham <jackp@codeaurora.org>,
 devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, khasim.mohammed@linaro.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-arm-msm@vger.kernel.org,
 andy.gross@linaro.org, Jorge Ramirez <jorge.ramirez-ortiz@linaro.org>,
 shawn.guo@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 03 Sep 14:45 PDT 2019, Stephen Boyd wrote:

> Quoting Jack Pham (2019-09-03 10:39:24)
> > On Mon, Sep 02, 2019 at 08:23:04AM +0200, Jorge Ramirez wrote:
> > > On 8/30/19 20:28, Stephen Boyd wrote:
> > > > Quoting Bjorn Andersson (2019-08-30 09:45:20)
> > > >> On Fri 30 Aug 09:01 PDT 2019, Stephen Boyd wrote:
> > > >>
> > > >>>>>
> > > >>>>> The USB-C connector is attached both to the HS and SS PHYs, so I think
> > > >>>>> you should represent this external to this node and use of_graph to
> > > >>>>> query it.
> > > >>>>
> > > >>>> but AFAICS we wont be able to retrieve the vbux-supply from an external
> > > >>>> node (that interface does not exist).
> > > >>>>
> > > >>>> rob, do you have a suggestion?
> > > >>>
> > > >>> Shouldn't the vbus supply be in the phy? Or is this a situation where
> > > >>> the phy itself doesn't have the vbus supply going to it because the PMIC
> > > >>> gets in the way and handles the vbus for the connector by having the SoC
> > > >>> communicate with the PMIC about when to turn the vbus on and off, etc?
> > > >>>
> > > >>
> > > >> That's correct, the VBUS comes out of the PMIC and goes directly to the
> > > >> connector.
> > > >>
> > > >> The additional complicating factor here is that the connector is wired
> > > >> to a USB2 phy as well, so we need to wire up detection and vbus control
> > > >> to both of them - but I think this will be fine, if we can only figure
> > > >> out a sane way of getting hold of the vbus-supply.
> > > >>
> > > > 
> > > > Does it really matter to describe this situation though? Maybe it's
> > > > simpler to throw the vbus supply into the phy and control it from the
> > > > phy driver, even if it never really goes there. Or put it into the
> > > > toplevel usb controller?
> > > > 
> > > that would work for me - the connector definition seemed a better way to
> > > explain the connectivity but since we cant retrieve the supply from the
> > > external node is not of much functional use.
> > > 
> > > but please let me know how to proceed. shall I add the supply back to
> > > the phy?
> 
> So does the vbus actually go to the phy? I thought it never went there
> and the power for the phy was different (and possibly lower in voltage).
> 

No, the PHYs use different - lower voltage - supplies to operate. VBUS
is coming from a 5V supply straight to the connector and plug-detect
logic (which is passive in this design).

> > 
> > Putting it in the toplevel usb node makes sense to me, since that's
> > usually the driver that knows when it's switching into host mode and
> > needs to turn on VBUS. The dwc3-qcom driver & bindings currently don't 
> > do this but there's precedent in a couple of the other dwc3 "glues"--see
> > Documentation/devicetree/bindings/usb/{amlogic\,dwc3,omap-usb}.txt
> > 
> > One exception is if the PMIC is also USB-PD capable and can do power
> > role swap, in which case the VBUS control needs to be done by the TCPM,
> > so that'd be a case where having vbus-supply in the connector node might
> > make more sense.
> > 
> 
> The other way is to implement the code to get the vbus supply out of a
> connector. Then any driver can do the work if it knows it needs to and
> we don't have to care that the vbus isn't going somewhere. I suppose
> that would need an of_regulator_get() sort of API that can get the
> regulator out of there? Or to make the connector into a struct device
> that can get the regulator out per some generic connector driver and
> then pass it through to the USB controller when it asks for it. Maybe
> try to prototype that out?
> 

The examples given in the DT bindings describes the connector as a child
of a PMIC, with of_graph somehow tying it to the various inputs. But in
these examples vbus is handled by implicitly inside the MFD, where
extcon is informed about the plug event they toggle vbus as well.

In our case we have a extcon-usb-gpio to detect mode, which per Jorge's
proposal will trickle down to the PHY and become a regulator calls on
either some external regulator or more typically one of the chargers in
the system.


So if we come up with a struct device for the connector and some API for
toggling the vbus we're going to have to fairly abstract entities
representing pretty much the same thing - and in a design with a mux we
would have a different setup.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
