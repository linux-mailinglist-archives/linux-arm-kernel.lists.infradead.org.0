Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C2BA6996
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 15:20:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pUgZUN9vNo+v6xrEpZysqcU9Ew0/n+ymTVQLhJKCNaQ=; b=qRcG6Zujr05pw+
	MIatWixB4VYVlALgb8pJ1uQobdX+qKCRewvsI1ahfq7L7VsmldWMVWOIQSDmbC0mcFjVd6zfJ6r7h
	gQ40Jr4peAe5uQ8/5+N6VNphxzs8wkRLSTVqsG5CwUI+hvKCpC7dMoHhhQ3thYwhb7Y6mktcrAVPe
	CYVDXlmrfOXbHXR+zYwDf33yHXiBFj41+IcfKDlduCAOl6IhhXqg/HvMMSoK9xKsuQGGecbT/tXLn
	C9HlnBsw9IPIWzCj6/OHvjDCK0ffg+IUXvF7J49peiTkxtvcXmXx+c03zjjimNu23CVOSDTnizSS0
	wRuJlvk4KigbwoC22KTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i58jM-0002G3-4S; Tue, 03 Sep 2019 13:20:20 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i58jA-00023n-1F
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 13:20:09 +0000
Received: by mail-io1-xd42.google.com with SMTP id u185so31959592iod.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 06:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QO73V7U4P5FcoQaqB03BTF1Z/eOeNjoTtjraa/tL4tI=;
 b=Sa85tWhiLvuujArkOIaJ7cjZuD6XjLQY/uNB/TnzTCgdO63OuiOoFH0o0xQK98W3lD
 xQjLNSZN5hWiwwOT4MaK7q5PT5JJZRVEAnFqVROOhAs+oGGuC6BuahwZVMgjIL18HfDG
 8sy1jbGqXQG7qoNrSw7sPJOuw8vHIAzAyrvvqeC5m+uoZeBxYrqA+OL/jBgPXoP6fFx4
 uVgJB4Z6xEhnP8IY5Bzh0Q1fHjIreTYfU7EsOAK7wNw6fPQ5o8ezkJBKmHROzx9fEnAV
 0aCQtnC3lGwVl/mB9iS5Gw1xqG7F7nfBw9x4AKC5KMvdoCE49KAa6nMXXGGpSC8s5Nny
 Hthw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QO73V7U4P5FcoQaqB03BTF1Z/eOeNjoTtjraa/tL4tI=;
 b=phedCO8BFoSwp/ibkT45uFzRpJ3XqpdjQ5+/LTaeMhIyzquSmZq3NMxHyiIfrPeDVx
 qHoBL3h1wdFELwGZESpsq36q8p98E3PmJRzgo1Pj7kEwiZEIl0/5JGUd06urpyicFKB/
 7NcLVLuLsGd6eeLoNaalcVFI87Qeg9dTzJDsWKNI/ibLccHPnI3CmWkAlr6bCUnaRz/I
 uyvZC990uU9UKT4kAdT4A4KLQM9BDVYIoX/cANtEhwvc4u22z+v+8G3rY2KGIpMJNTjh
 JDH9Wo6smJg1/vtrq2Jeo1xsMsyTLB/hSEp3EcaPrgTDfFVDIs9FkX3DHLTV5UF5gwJL
 8WqA==
X-Gm-Message-State: APjAAAUTu3luZOT1Ge7HFTyOHbZJ7xe9o/UR6k4oc1XxpU/N1PFyCRK3
 /yXwLtFgWP+Vtq53lIesb8vU4Z/XvtpC/UdqfxU=
X-Google-Smtp-Source: APXvYqzIs9dDUyrM7HLzw7t8+BgyKYSvmKDMvUE0T1arOXRdt+G73zsvKOtONNAiZSPx90VKMIt74gkjN0wf0KZ9sI4=
X-Received: by 2002:a5e:de47:: with SMTP id e7mr3371804ioq.127.1567516806161; 
 Tue, 03 Sep 2019 06:20:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190830121816.30034-1-t-kristo@ti.com>
 <20190830121816.30034-2-t-kristo@ti.com>
 <20190902042631.GA22055@bogus> <e8d700cd-8f3c-5cea-a022-b20a595fc1e1@ti.com>
In-Reply-To: <e8d700cd-8f3c-5cea-a022-b20a595fc1e1@ti.com>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 3 Sep 2019 08:19:54 -0500
Message-ID: <CAHCN7xKNSj_DW+Gcbpy4ehphBYCbJw9mSATOcWzT7ZcZR81r6g@mail.gmail.com>
Subject: Re: [PATCHv3 01/10] dt-bindings: omap: add new binding for PRM
 instances
To: Tero Kristo <t-kristo@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_062008_108115_675C19AC 
X-CRM114-Status: GOOD (  22.17  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
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
Cc: Rob Herring <robh@kernel.org>, devicetree <devicetree@vger.kernel.org>,
 Tony Lindgren <tony@atomide.com>, p.zabel@pengutronix.de,
 Santosh Shilimkar <ssantosh@kernel.org>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 3, 2019 at 2:26 AM Tero Kristo <t-kristo@ti.com> wrote:
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
>
> >
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
>
> >
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

Would it make sense to call it am33 instead of am3?  The AM35xx is
different than AM33.

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
>
>
>
> >
> >> +- reg:              Contains PRM instance register address range
> >> +            (base address and length)
> >> +
> >> +Optional properties:
> >> +- #reset-cells:     Should be 1 if the PRM instance in question supports resets.
> >> +- clocks:   Associated clocks for the reset signals if any. Certain reset
> >> +            signals can't be toggled properly without functional clock
> >> +            being active for them.
> >> +
> >> +Example:
> >> +
> >> +prm_dsp2: prm@1b00 {
> >
> > reset-controller@...
>
> Well, as said, the same node is going to be also power domain provider
> later on...
>
> >
> >> +    compatible = "ti,dra7-prm-inst";
> >> +    reg = <0x1b00 0x40>;
> >> +    #reset-cells = <1>;
> >> +    clocks = <&dsp2_clkctrl DRA7_DSP2_MMU0_DSP2_CLKCTRL 0>;
> >> +};
> >> --
> >> 2.17.1
> >>
> >> --
> >
>

adam
> --
> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
