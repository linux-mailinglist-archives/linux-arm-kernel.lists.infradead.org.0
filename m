Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A14A6398
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 10:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I4cSSb1cCtLgawX0+M2265nc3F5dODe012Xoum4b1vk=; b=Gwovq/+Rmxgm4B
	j2RFf6kM1TvnFLAyIDw1GtQq2UZ3wcTA39tv0LJcYPAgIGmJVaJOwPqivdRYIXT6R+InBBOJVxvoG
	ocO2OA86rkHXbnqiXxf8xNVoBxOL7ax7IVgY2fb4cyX5C3WW9hHryHwfnN54MZdbUAvXwUiAKfytj
	li7RjnfwmsIVChFDNSu7Y8KcIQssOF7jYYHj65jNm/BA2mv5vN8Rn+lW32uosvuE75Dolx+uKpI3s
	+WnF492J3GRaQYb00PEbyUwfQohy7WRwTKsilFjPkPZdws/GQlz8bmdfi1QLNZRRtwMQT97VLw+Jl
	jZbJNLrqR0tlAPS+gMRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i53uA-00088e-FZ; Tue, 03 Sep 2019 08:11:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i53tv-00086f-Pt
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 08:10:57 +0000
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A77523400
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  3 Sep 2019 08:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567498255;
 bh=mmY3hWUsfCuDZTERSlcQQns8+8xf4fjtCn2+x1QX+fQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jTK155zT+TTIFoc5p53LF+n1EyXl0NzBqTKFG7AHV860Goc52cSa/attMTIsNhxac
 ifVlelPhB37SgFvr6WQ3hSmIIuaVnMkvDd0XEQb2FxvyIEtVL4JoaatTYBJ9RIg8Qt
 7+fdONZfD/G54IgRbbgMgn8bbh2nefpI10QsGJfc=
Received: by mail-qt1-f180.google.com with SMTP id n7so18654074qtb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 01:10:55 -0700 (PDT)
X-Gm-Message-State: APjAAAUrvrevOubeKIu6iNC7AOjbe6ZQJwXNBnQTi0GXC8HsQnqOL/tw
 S6U3W4iirr/YaC7FFxZSY1lBSza4WSqwqbMuPA==
X-Google-Smtp-Source: APXvYqy5doxdwG87feSeQY0V4gTTDYw9M2LO6Y70U41ya0/OkgB02OHduhddwiPIXVxlZ6uyh6EYVmxF/KKNBOvDyoY=
X-Received: by 2002:ac8:6b05:: with SMTP id w5mr16898911qts.136.1567498254387; 
 Tue, 03 Sep 2019 01:10:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190830121816.30034-1-t-kristo@ti.com>
 <20190830121816.30034-2-t-kristo@ti.com>
 <20190902042631.GA22055@bogus> <e8d700cd-8f3c-5cea-a022-b20a595fc1e1@ti.com>
In-Reply-To: <e8d700cd-8f3c-5cea-a022-b20a595fc1e1@ti.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 3 Sep 2019 09:10:42 +0100
X-Gmail-Original-Message-ID: <CAL_Jsq+AJj1bgOQYG=c86A5HC_g2UZph387oVEKZyP4M18kURw@mail.gmail.com>
Message-ID: <CAL_Jsq+AJj1bgOQYG=c86A5HC_g2UZph387oVEKZyP4M18kURw@mail.gmail.com>
Subject: Re: [PATCHv3 01/10] dt-bindings: omap: add new binding for PRM
 instances
To: Tero Kristo <t-kristo@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_011055_904982_68AB5D2C 
X-CRM114-Status: GOOD (  21.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Tony Lindgren <tony@atomide.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 linux-omap <linux-omap@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 3, 2019 at 8:26 AM Tero Kristo <t-kristo@ti.com> wrote:
>
> On 02/09/2019 16:39, Rob Herring wrote:
> > On Fri, Aug 30, 2019 at 03:18:07PM +0300, Tero Kristo wrote:
> >> Add new binding for OMAP PRM (Power and Reset Manager) instances. Each
> >> of these will act as a power domain controller and potentially as a reset
> >> provider.
> >>
> >
> > Converting this to schema would be nice.
>
> Do you have documentation about schema somewhere? Basically what I need
> to do to fix this.

Documentation/devicetree/writing-schema.md (.rst in -next)
Documentation/devicetree/bindings/example-schema.yaml

> >> Signed-off-by: Tero Kristo <t-kristo@ti.com>
> >> ---
> >>   .../devicetree/bindings/arm/omap/prm-inst.txt | 31 +++++++++++++++++++
> >
> > bindings/reset/
>
> I did not put this under reset, because this is basically a
> multi-purpose function. Reset just happens to be the first functionality
> it is going to provide. It will be followed by power domain support
> later on.
>
> Any thoughts?

I prefer that bindings be complete as possible even if driver support
is not there yet. Adding power domain support may only mean adding
'#power-domain-cells'.

The location is fine then.

> >>   1 file changed, 31 insertions(+)
> >>   create mode 100644 Documentation/devicetree/bindings/arm/omap/prm-inst.txt
> >>
> >> diff --git a/Documentation/devicetree/bindings/arm/omap/prm-inst.txt b/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
> >> new file mode 100644
> >> index 000000000000..7c7527c37734
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/arm/omap/prm-inst.txt
> >> @@ -0,0 +1,31 @@
> >> +OMAP PRM instance bindings
> >> +
> >> +Power and Reset Manager is an IP block on OMAP family of devices which
> >> +handle the power domains and their current state, and provide reset
> >> +handling for the domains and/or separate IP blocks under the power domain
> >> +hierarchy.
> >> +
> >> +Required properties:
> >> +- compatible:       Must be one of:
> >> +            "ti,am3-prm-inst"
> >> +            "ti,am4-prm-inst"
> >> +            "ti,omap4-prm-inst"
> >> +            "ti,omap5-prm-inst"
> >> +            "ti,dra7-prm-inst"
> >
> > '-inst' seems a bit redundant.
>
> ti,xyz-prm is already reserved by the parent node of all these.
>
> The hierarchy is basically like this (omap4 as example):
>
> prm: prm@4a306000 {
>    compatible = "ti,omap4-prm";
>    ...
>
>    prm_dsp: prm@400 {
>      compatible = "ti,omap4-prm-inst";
>      ...
>    };
>
>    prm_device: prm@1b00 {
>      compatible = "ti,omap4-prm-inst";
>      ...
>    };
>
>    ...
> };

Okay. Then you need to state this binding must be a child of PRM. The
schema would need to take this into account too, so probably best to
not convert this yet.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
