Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 227F08BACF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 15:53:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FA7NLsTy4HkjOHQDsYWBuoW9Iz/mfYoH6XZk8wrJN38=; b=ghmvK0Q6eFxRNH
	VtRlDaznCq2wYcM058x5QnsXBPdvtd8w3HnQNhpIr7zi5gpvZKlN1+3T7PQGfiOuhdGH0wBrbttMa
	pAdN4ETlMw/s4izZ+ZgPNKktCB1Vjk3/I0xFrD0LNDJqHmA9Jhjc/0wzRMyIv1IOeCGFwnamcbS/n
	nePYg563MHbIkZh4BoI4JPeCfT+FjyQP+y10Lq/aELCH6jyF8j1AyxV+KKjRPmwWN3h2LEoliIUF9
	b+sFhfShSQ/rLg0L0It57wnm2R5YvDGuxbac6aInBdFFjp7m4r31FTumP24g5DxH27Z6xJj1FxhTn
	XLUUcuTVv2Dt9mwaKg2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxXEJ-000594-4A; Tue, 13 Aug 2019 13:52:51 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxXDo-00058P-05
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 13:52:21 +0000
Received: by mail-pf1-x443.google.com with SMTP id w2so837042pfi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 06:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4omLmk4w6GxhJ6Ep/AGChVMuZmOFfkXmdaJYpOvWVdk=;
 b=Jm8wdiOchfcFJ0gRIk1GejkC9wyb0VHkwgGVXz8gKdqL7fzLdNe4X+BSaGG9GuV7hq
 7sD0rsng093Rsmzie0SdLHRA90thFE9fYj9WOv0ACjtbPytWctwLPNobjvwDlDrUm4jM
 +RiB/SkxEIKpmhyQWtb2ylSHLydV8aBHuQApwmN8zntmaCpdalFNBJkSWHshpYyVFOaE
 Qxc6xffuXBWRbS4E3gyJNLpoMCzlVb7s7hqB5moABRoHMHcPlrO7/sTM4WZowUZ3rGWX
 ZoYV4s/si/3dn7P9hJev1D9DePTX2DxnvqcyFilWTIfI+RaWWt2/x4YIohOqR7cPbIrn
 sc4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4omLmk4w6GxhJ6Ep/AGChVMuZmOFfkXmdaJYpOvWVdk=;
 b=eK0wMk4bFeS93YKeNWznSaYK/Tl5We+Q0vH4SRibcbBX3j7ZCqZI5fXEMSIr2daAtK
 4ern+MnRw1cPhGOMsxGz2gArF6RNuML/wPSPpIGykv1j+aLLNp6ZXCREUBxMLEPY4VZi
 KhJAkz/4Fl71tvHLqtG1kyyAyax3TYUANDRQS5nDeM4OmF6V7/zxAL/rUbq2lzk2YYrp
 f0A0rhoHrJv5vxwIZyh8LAKRyGGtqP4J1HX7nZrkIS9u4wREU8h982xtvyhABXT36AhK
 evuv+uVdtqXlXG5Q3CKnJZ4r5icQM33cpHgu0S6YxzXNA1tVCLyKxddmUdzgklumnIaP
 GMKQ==
X-Gm-Message-State: APjAAAWDlpGODz8m4u+/3d1y3iKzkty0GVlWUwp3wYbJoqFH3XFq81e3
 MkVandpHeyCWuDfmgN+qlYRT
X-Google-Smtp-Source: APXvYqwav0H6AVbnE2BwPov0OYBYEHoA+VkHR9bqs+s/y71GBF2NtI/p4j6/PJKhz+s8rgdAUXLynw==
X-Received: by 2002:aa7:8b52:: with SMTP id i18mr41768736pfd.194.1565704339044; 
 Tue, 13 Aug 2019 06:52:19 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:649c:6ce0:9d44:669c:5d6c:bc5f])
 by smtp.gmail.com with ESMTPSA id j9sm16595539pfe.103.2019.08.13.06.52.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 13 Aug 2019 06:52:18 -0700 (PDT)
Date: Tue, 13 Aug 2019 19:22:09 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH v2 1/3] dt-bindings: media: i2c: Add IMX290 CMOS sensor
 binding
Message-ID: <20190813135209.GA30945@Mani-XPS-13-9360>
References: <20190806130938.19916-1-manivannan.sadhasivam@linaro.org>
 <20190806130938.19916-2-manivannan.sadhasivam@linaro.org>
 <20190813094526.GG835@valkosipuli.retiisi.org.uk>
 <20190813113358.GA28877@Mani-XPS-13-9360>
 <20190813114643.GA2527@valkosipuli.retiisi.org.uk>
 <20190813121400.GA29378@Mani-XPS-13-9360>
 <20190813122212.GE2527@valkosipuli.retiisi.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813122212.GE2527@valkosipuli.retiisi.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_065220_161630_B0CE73F5 
X-CRM114-Status: GOOD (  35.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, robh+dt@kernel.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari,

On Tue, Aug 13, 2019 at 03:22:12PM +0300, Sakari Ailus wrote:
> Hi Manivannan,
> 
> On Tue, Aug 13, 2019 at 05:44:00PM +0530, Manivannan Sadhasivam wrote:
> > Hi Sakari,
> > 
> > On Tue, Aug 13, 2019 at 02:46:43PM +0300, Sakari Ailus wrote:
> > > Hi Manivannan,
> > > 
> > > On Tue, Aug 13, 2019 at 05:03:58PM +0530, Manivannan Sadhasivam wrote:
> > > > Hi Sakari,
> > > > 
> > > > Thanks for the review!
> > > > 
> > > > On Tue, Aug 13, 2019 at 12:45:26PM +0300, Sakari Ailus wrote:
> > > > > Hi Manivannan,
> > > > > 
> > > > > On Tue, Aug 06, 2019 at 06:39:36PM +0530, Manivannan Sadhasivam wrote:
> > > > > > Add devicetree binding for IMX290 CMOS image sensor.
> > > > > > 
> > > > > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > > > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > > > > ---
> > > > > >  .../devicetree/bindings/media/i2c/imx290.txt  | 51 +++++++++++++++++++
> > > > > >  1 file changed, 51 insertions(+)
> > > > > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/imx290.txt
> > > > > > 
> > > > > > diff --git a/Documentation/devicetree/bindings/media/i2c/imx290.txt b/Documentation/devicetree/bindings/media/i2c/imx290.txt
> > > > > > new file mode 100644
> > > > > > index 000000000000..7535b5b5b24b
> > > > > > --- /dev/null
> > > > > > +++ b/Documentation/devicetree/bindings/media/i2c/imx290.txt
> > > > > > @@ -0,0 +1,51 @@
> > > > > > +* Sony IMX290 1/2.8-Inch CMOS Image Sensor
> > > > > > +
> > > > > > +The Sony IMX290 is a 1/2.8-Inch CMOS Solid-state image sensor with
> > > > > > +Square Pixel for Color Cameras. It is programmable through I2C and 4-wire
> > > > > > +interfaces. The sensor output is available via CMOS logic parallel SDR output,
> > > > > > +Low voltage LVDS DDR output and CSI-2 serial data output.
> > > > > 
> > > > > If there are three to choose from, then you should specify which one is in
> > > > > use. Given that I think chances remain slim we'd add support for the other
> > > > > two (it's certainly not ruled out though), CSI-2 could be the default. But
> > > > > this needs to be documented.
> > > > > 
> > > > 
> > > > Hmm... I'm not sure here. Bindings should describe the hardware and not the
> > > > limitations of the driver. Here as you said, the sensor can output frames
> > > > in 3 different modes/formats but the driver only supports CSI2. I can add a
> > > > note in the driver but not sure whether dt-binding is the right place or not!
> > > 
> > > I guess alternatively you could document the necessary bindings for the
> > > other two busses.
> > > 
> > > But what I'm saying here is that it's highly unlikely they'll be ever
> > > needed, and it'd be mostly a waste of time to implement that. (That said, I
> > > have nothing against the use of these busses, but I've never seen anyone
> > > using them.) Many other devices use defaults for more contentious settings.
> > > 
> > 
> > Agree with you but my question was, whether I could document the supported
> > mode in bindings or not! I have seen comments from Rob in the past that the
> > binding should not document the limitations of the driver. But anyway, one
> > can infer from the current binding that only CSI2 is supported for now, it's
> > just stating it explicitly makes me doubtful!
> 
> I think it could be e.g.:
> 
> The CSI-2 bus is the default. No bindings have been defined for the other
> busses.
> 

Ack.

> ...
> 
> > > > > I suppose you can't change the lane order, so clock-lanes is redundant
> > > > > (don't use it in the example) and data-lanes should be monotonically
> > > > > incrementing series from 1 to 4.
> > > > > 
> > > > 
> > > > We can change the order and the example here illustrates how it has been
> > > > wired in FRAMOS module. If I change the lane order like you said, it won't
> > > > work.
> > > 
> > > I highly doubt that. Neither the driver nor the sensor uses the lane
> > > ordering information.
> > > 
> > 
> > Agree but CSI2 host will need this informtion, right? Please correct me if
> > I'm wrong!
> 
> The CSI-2 receiver may need that configuration, but it's not addressed by a
> sensor's binding documentation (it's configured in the endpoint on the
> receiver's side).
> 

Yes but I thought that documenting the sensor lane configuration based on one
example implementation might help interfacing w/ different hosts. Anyway, to be
host agnostic, I can drop the clock lane and make data lane start from 1 as you
suggested.

Thanks,
Mani

> -- 
> Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
