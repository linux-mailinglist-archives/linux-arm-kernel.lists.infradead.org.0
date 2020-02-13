Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 892D915CC92
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 21:48:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUmp8arWsg7W3Fw7lLUurscwMNYpjmTh44zj5PAPtiY=; b=GKYAJAdpEILKs7
	lpPYgf2n9orO2FaENbm0yVVD7uCMT4l4FlzEpQqMPUGHTLJuqk1OlX76559FjQBhVVr+UAneIa0yy
	dr8KB0JPLEDr+OMmeXcA6/ayIZDAoFlcRUndH+MmbA95X39gPN/uRv2rR6kdeA0u+QSvnWOMmRMvh
	mpVWvPnHoNK2N+vsT266nlCbBeywobmOzDR1jUXn0cMYzPPla+HufVx/e54sJyPZ8W0jYTFs1eux0
	0TTL8G2g8fISLMO4yr+JGn7dddich4IYAZjGe0rwkWJWgBv7aZDLl9SMPIvyH47Lv5I9MKWXgyq1C
	qedPcal7LmZQ7cwjmMvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2LOl-0007SH-Nz; Thu, 13 Feb 2020 20:47:47 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2LOe-0007Rb-O4
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 20:47:42 +0000
Received: by mail-oi1-f195.google.com with SMTP id p125so7196359oif.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 12:47:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=z3dk5qxcEVX9/dZvrNaONjzVzfrEpAE56fEOJ9OyDRY=;
 b=XbG4hMtnlcMv+jTAZ0SLXB0a2VgtOFCUsL6qIEkQK8YC5T28FI/Y0mQGI8gQPvlRWt
 70irOKeNnP0Z4cYN89R+ES+xgCmNUyP8IJI1G90yR3ZC9AtVBmqM6CUCAncDNacQig5y
 qZVGrvuu2BdWvA4niIPWykqejH0IIApEy9/yk9g8hNrZoz2lrxZc6xUt/Q2WaLQvja5d
 YY36PIRw/BiMrC6Q7K85aqOMEyR4FrvWwi1j/K1Bk9IE4yRBFgLMP9SA9jV75wY8fJbe
 8Pyot+vk1PuEmJg6T/i8oglgucIRXmJQed9iv9+hWSDbOvoQcxZx8e7lYf/rJhPe/9/m
 1+BQ==
X-Gm-Message-State: APjAAAU91MYW0jeexCgL2jsSH4htAesZ8i9wCpPMLckt+odyGaH5ZJ4f
 qdE8QNIBexRGJfa/ln4f8A==
X-Google-Smtp-Source: APXvYqzQA7r7V4YoQpEtQwWPfWwQz5RkPdR405hNAG7fAhbJpVu3jI2rmNBq0FR14AcPd35Qq8d0MA==
X-Received: by 2002:aca:ddc2:: with SMTP id u185mr4359191oig.24.1581626859710; 
 Thu, 13 Feb 2020 12:47:39 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id f1sm1173808otq.4.2020.02.13.12.47.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 12:47:39 -0800 (PST)
Received: (nullmailer pid 3866 invoked by uid 1000);
 Thu, 13 Feb 2020 20:47:38 -0000
Date: Thu, 13 Feb 2020 14:47:38 -0600
From: Rob Herring <robh@kernel.org>
To: Keerthy <j-keerthy@ti.com>
Subject: Re: [PATCH 1/4] dt-bindings: thermal: k3: Add VTM bindings
 documentation
Message-ID: <20200213204738.GA2973@bogus>
References: <20200213102440.20539-1-j-keerthy@ti.com>
 <20200213102440.20539-2-j-keerthy@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213102440.20539-2-j-keerthy@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_124740_785687_307CB31E 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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

On Thu, 13 Feb 2020 15:54:37 +0530, Keerthy wrote:
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
>  .../bindings/thermal/ti,am654-thermal.yaml    | 59 +++++++++++++++++++
>  1 file changed, 59 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

warning: no schema found in file: Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml: ignoring, error parsing file
Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
Traceback (most recent call last):
  File "/usr/local/bin/dt-doc-validate", line 35, in check_doc
    testtree = dtschema.load(filename, line_number=line_number, duplicate_keys=False)
  File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 513, in load
    return yaml.load(f.read())
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/main.py", line 343, in load
    return constructor.get_single_data()
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 111, in get_single_data
    node = self.composer.get_single_node()
  File "_ruamel_yaml.pyx", line 718, in _ruamel_yaml.CParser.get_single_node
ruamel.yaml.composer.ComposerError: expected a single document in the stream
  in "<unicode string>", line 2, column 1
but found another document
  in "<unicode string>", line 4, column 1

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "/usr/local/bin/dt-doc-validate", line 74, in <module>
    ret = check_doc(args.yamldt)
  File "/usr/local/bin/dt-doc-validate", line 40, in check_doc
    print(filename + ":", exc.path[-1], exc.message)
AttributeError: 'ComposerError' object has no attribute 'path'
Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/thermal/ti,am654-thermal.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/thermal/ti,am654-thermal.example.dts] Error 1
Makefile:1263: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1237405
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
