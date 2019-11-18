Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC935100798
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 15:44:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=876XBea7ArjRHAjtUol8GB71JSJ3jxEYCO/qFBkVmtk=; b=c/uz9jLwI5m4ZQ
	KmmmeKGorfVFVebGJW96vBPwqGOYEL4IlGiBMyMk/63dWtnmy3BLLqZIqba9YM9jW/6dmlMLYi6yR
	RctcCfRtVQfsXW7Gpn3BEnuhsbHsTIQDoLbwBVSVbDFNevbUacH3VpbFzs2X1FM+Rx12EY8jJ/TBb
	tIzaMDBkdz3fe1Td5Zt9T6hixWUAQbdn/JSkBHvauKEfS+vifwKLCpcLKe+wnJCB13i03YEkr+Wn5
	RIPpbXGvnJ57FSfkxPW1QMbk0zWQl36lHSAL6PvYtClpy69UmKd1s4vk9Crm2vr2SwnuUGBg6ZTih
	Qhuta+R77/qR8Byg0P0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWiGs-0000so-OW; Mon, 18 Nov 2019 14:44:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWiGf-0000sN-MQ
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 14:44:43 +0000
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EE91F2084D
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 14:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574088280;
 bh=O/HQpk9RxiQEt7uI/mJqMP1X3ER13daw+30uHbVimaQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=U5JghCJKvhmVGeyCgR7y6BBjol75ucpzIMQUQd+3he26X7Q4PyY6E4mYfSGXclaqy
 3yAMZ2Ypyk3RZU6/pUP0U9yEZyqL5jzD4TNKpy3c0kIUJmboeBpFZ+YBLovSUW6igG
 XZ3mMq2H52WHe30poxGPoFjh0JuTzraIGZhsAFuQ=
Received: by mail-qt1-f169.google.com with SMTP id o3so20448458qtj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 06:44:39 -0800 (PST)
X-Gm-Message-State: APjAAAXhTDbVrsR/oh8BkID0zrdIYvpXKYfbkLMWN2pnix7IPRM1byd+
 GRn2LbjxOOqCxWUon1BcxrwD1WOO1vLOsjNoIw==
X-Google-Smtp-Source: APXvYqycCtreYYmwkSpJwa7wIPYTDvllS4FDO9eKQZ6v5nYk21/RTRhTmW5YtqoeWS3HibQJoVgoy/DxxXHNa8rjx4E=
X-Received: by 2002:ac8:7612:: with SMTP id t18mr27614841qtq.143.1574088279114; 
 Mon, 18 Nov 2019 06:44:39 -0800 (PST)
MIME-Version: 1.0
References: <1572588353-110682-1-git-send-email-manish.narani@xilinx.com>
 <1572588353-110682-5-git-send-email-manish.narani@xilinx.com>
 <20191104231427.GA7606@bogus>
 <MN2PR02MB6029D371F580123CB32BE148C1740@MN2PR02MB6029.namprd02.prod.outlook.com>
In-Reply-To: <MN2PR02MB6029D371F580123CB32BE148C1740@MN2PR02MB6029.namprd02.prod.outlook.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 18 Nov 2019 08:44:27 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJNFGi+X0XU449DE0SRMYaakAzKOuFqZdAT5pptrOZrbg@mail.gmail.com>
Message-ID: <CAL_JsqJNFGi+X0XU449DE0SRMYaakAzKOuFqZdAT5pptrOZrbg@mail.gmail.com>
Subject: Re: [PATCH v5 4/8] dt-bindings: mmc: Add optional generic properties
 for mmc
To: Manish Narani <MNARANI@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_064441_772531_9DEFEF3F 
X-CRM114-Status: GOOD (  22.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 Nava kishore Manne <navam@xilinx.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "adrian.hunter@intel.com" <adrian.hunter@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jolly Shah <JOLLYS@xilinx.com>, Rajan Vaja <RAJANV@xilinx.com>,
 Michal Simek <michals@xilinx.com>, git <git@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 4:07 AM Manish Narani <MNARANI@xilinx.com> wrote:
>
> Hi Rob,
>
>
> > -----Original Message-----
> > From: Rob Herring <robh@kernel.org>
> > Sent: Tuesday, November 5, 2019 4:44 AM
> > To: Manish Narani <MNARANI@xilinx.com>
> > Cc: ulf.hansson@linaro.org; mark.rutland@arm.com;
> > adrian.hunter@intel.com; Michal Simek <michals@xilinx.com>; Jolly Shah
> > <JOLLYS@xilinx.com>; Nava kishore Manne <navam@xilinx.com>; Rajan Vaja
> > <RAJANV@xilinx.com>; linux-mmc@vger.kernel.org;
> > devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> > kernel@lists.infradead.org; git <git@xilinx.com>
> > Subject: Re: [PATCH v5 4/8] dt-bindings: mmc: Add optional generic
> > properties for mmc
> >
> > On Fri, Nov 01, 2019 at 11:35:49AM +0530, Manish Narani wrote:
> > > Add optional properties for mmc hosts which are used to set clk delays
> > > for different speed modes in the controller.
> > >
> > > Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> > > ---
> > >  .../bindings/mmc/mmc-controller.yaml          | 92 +++++++++++++++++++
> > >  1 file changed, 92 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> > b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> > > index 080754e0ef35..87a83d966851 100644
> > > --- a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> > > +++ b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> > > @@ -212,6 +212,98 @@ properties:
> > >      description:
> > >        eMMC HS400 enhanced strobe mode is supported
> > >
> > > +  # Below mentioned are the clock (phase) delays which are to be
> > configured
> > > +  # in the controller while switching to particular speed mode. The range
> > > +  # of values are 0 to 359 degrees.
> > > +
> > > +  clk-phase-legacy:
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - minimum: 0
> > > +      - maximum: 359
> > > +    description:
> > > +      Input/Output Clock Delay pair in degrees for Legacy Mode.
> > > +
> > > +  clk-phase-mmc-hs:
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - minimum: 0
> > > +      - maximum: 359
> > > +    description:
> > > +      Input/Output Clock Delay pair degrees for MMC HS.
> > > +
> > > +  clk-phase-sd-hs:
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - minimum: 0
> > > +      - maximum: 359
> > > +    description:
> > > +      Input/Output Clock Delay pair in degrees for SD HS.
> > > +
> > > +  clk-phase-uhs-sdr12:
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - minimum: 0
> > > +      - maximum: 359
> > > +    description:
> > > +      Input/Output Clock Delay pair in degrees for SDR12.
> > > +
> > > +  clk-phase-uhs-sdr25:
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - minimum: 0
> > > +      - maximum: 359
> > > +    description:
> > > +      Input/Output Clock Delay pair in degrees for SDR25.
> > > +
> > > +  clk-phase-uhs-sdr50:
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - minimum: 0
> > > +      - maximum: 359
> > > +    description:
> > > +      Input/Output Clock Delay pair in degrees for SDR50.
> > > +
> > > +  clk-phase-uhs-sdr104:
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - minimum: 0
> > > +      - maximum: 359
> > > +    description:
> > > +      Input/Output Clock Delay pair in degrees for SDR104.
> > > +
> > > +  clk-phase-uhs-ddr50:
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - minimum: 0
> > > +      - maximum: 359
> > > +    description:
> > > +      Input/Output Clock Delay pair in degrees for SD DDR50.
> > > +
> > > +  clk-phase-mmc-ddr52:
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - minimum: 0
> > > +      - maximum: 359
> > > +    description:
> > > +      Input/Output Clock Delay pair in degrees for MMC DDR52.
> > > +
> > > +  clk-phase-mmc-hs200:
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - minimum: 0
> > > +      - maximum: 359
> > > +    description:
> > > +      Input/Output Clock Delay pair in degrees for MMC HS200.
> > > +
> > > +  clk-phase-mmc-hs400:
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - minimum: 0
> > > +      - maximum: 359
> > > +    description:
> > > +      Input/Output Clock Delay pair in degrees for MMC HS400.
> >
> > This can be condensed into:
> >
> > patternProperties:
> >
> > "^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|uhs-
> > (sdr(12|25|50|104)|ddr50))$":
> >
> > Or if you want to divide them between SD and MMC ones, that would be
> > fine for me.
>
> Below change should work? Please review.

Running 'make dt_binding_check' would tell you...

> --- a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> @@ -333,6 +333,16 @@ patternProperties:
>      required:
>        - reg
>
> +  "^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|uhs-(sdr(12|25|50|104)|ddr50))$":
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +      - maximum: 359

Drop the '-' on maximum so that minimum/maximum are 1 item in the list.

> +    description:
> +      Set the clock (phase) delays which are to be configured in the
> +      controller while switching to particular speed mode. These values
> +      are in pair of degrees.
> +
>  dependencies:
>    cd-debounce-delay-ms: [ cd-gpios ]
>    fixed-emmc-driver-type: [ non-removable ]
> @@ -351,6 +361,7 @@ examples:
>          keep-power-in-suspend;
>          wakeup-source;
>          mmc-pwrseq = <&sdhci0_pwrseq>;
> +        clk-phase-sd-hs = <63>, <72>;

This should fail because it is defined as a single int.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
