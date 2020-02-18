Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 916BB1632EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 21:21:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uYiUFQoDANJ5ez+dtUdhYIsseAw0gi16S34U8inHPFM=; b=nwooW3TKiIKY33
	RrJouDQwwC4oeMHPOJex4OvUEyIbz581SOzuw7xhewwr1pw0bnlGC2AH3aU4LvT3AekDGa1KFRBUS
	4LuZPs8xe+oSNtxUuc1KXNlnLf5WCJBF5xaPt7iE+A+6gpui3q5Q1y49EKsMi++z2ndUu/pbbSxkD
	ndoQe+MgJAynjcXOc1Nsg7jUtJM8zgdBZbckrdzxTUdHNdZLeIbyw5a7B2siVCvx6Hay5MdkMGZUd
	vBUaS3zQ2Q+lDjtkFOVAeSm3mFsUv6R3g2+kTsdYKm823CeQBtN1wE6gDXf23C3sGQUnHQo+Wfuy9
	+1cwtSvQpsVy2B1lfW1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j49Md-0002HW-9e; Tue, 18 Feb 2020 20:21:03 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j49MR-0002Gh-Hf
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 20:20:53 +0000
Received: by mail-oi1-f194.google.com with SMTP id q81so21503437oig.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 12:20:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qa4vyumhFAkQGXRJF5uIdfvI1ZiDY0SQJcSr0dyAsZg=;
 b=eLAExdVi9BiQ7izQ5cM/q9mziEqJYo1B/I/SDmHKrQ5jNHHHya36Ch7z6mbEQCe2BY
 rbGIZY5GB9PYCj+kUgmz2mzzfJc3vzsdp1h/hfgptN/jkfiuzR4gl8ccU6njUuIWmNQn
 gykxaABCxWzhZfA76czoJIl0gJF/ZTC/CdQc7DLyXcIi6wDgu10cYUHl3524qVp7K3Ng
 OJZffAPpDLGIbYCEW81msFaSb173XeR1V+5n6pUf+54LDy+zhAAwAKJXIqrtbFvnuwDc
 CA5z7s2s09uzsKs26goi4fh+Mq35xaJwSXMIc04jFNIQvCLSKDjDHCOfsj1UMfyzaXTu
 ESRw==
X-Gm-Message-State: APjAAAXv0aWvBHUedUqYO7t3PYKFxDdnoeO/6ZIPaUT63x/gnV3WeQIw
 n2js/puVEPxk8UPoV1VEkg==
X-Google-Smtp-Source: APXvYqz+hvCSGzimhcRi7sOlVXHxj49AXLEsI2ig9xrGPNOybrxt90gohVGm2u83Ki65qYkzBoWeTw==
X-Received: by 2002:a05:6808:64e:: with SMTP id
 z14mr2303530oih.79.1582057250315; 
 Tue, 18 Feb 2020 12:20:50 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j24sm1711288otk.7.2020.02.18.12.20.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 12:20:49 -0800 (PST)
Received: (nullmailer pid 460 invoked by uid 1000);
 Tue, 18 Feb 2020 20:20:48 -0000
Date: Tue, 18 Feb 2020 14:20:48 -0600
From: Rob Herring <robh@kernel.org>
To: Keerthy <j-keerthy@ti.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: thermal: k3: Add VTM bindings
 documentation
Message-ID: <20200218202048.GA32279@bogus>
References: <20200214063443.23589-1-j-keerthy@ti.com>
 <20200214063443.23589-2-j-keerthy@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200214063443.23589-2-j-keerthy@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_122051_586809_2389B506 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 amit.kucheria@verdurent.com, linux-pm@vger.kernel.org, j-keerthy@ti.com,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, t-kristo@ti.com,
 robh+dt@kernel.org, rui.zhang@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 14 Feb 2020 12:04:40 +0530, Keerthy wrote:
> Add VTM bindings documentation. In the Voltage Thermal
> Management Module(VTM), K3 AM654 supplies a voltage
> reference and a temperature sensor feature that are gathered in the band
> gap voltage and temperature sensor (VBGAPTS) module. The band
> gap provides current and voltage reference for its internal
> circuits and other analog IP blocks. The analog-to-digital
> converter (ADC) produces an output value that is proportional
> to the silicon temperature.
> 
> Signed-off-by: Keerthy <j-keerthy@ti.com>
> ---
> 
> Changes in v2:
> 
>   * Fixed make dt_binding_check errors.
> 
>  .../bindings/thermal/ti,am654-thermal.yaml    | 57 +++++++++++++++++++
>  1 file changed, 57 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
Error: Documentation/devicetree/bindings/thermal/ti,am654-thermal.example.dts:21.41-42 syntax error
FATAL ERROR: Unable to parse input tree
scripts/Makefile.lib:300: recipe for target 'Documentation/devicetree/bindings/thermal/ti,am654-thermal.example.dt.yaml' failed
make[1]: *** [Documentation/devicetree/bindings/thermal/ti,am654-thermal.example.dt.yaml] Error 1
Makefile:1263: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1237882
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
