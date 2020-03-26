Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD7A194448
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 17:28:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Z8LDYLBT5/mpNdT6SaFDqlGpcW1aNhBKMBOjNQdUjQ=; b=uSrftxtRcxm/qL
	uBtqUoFJma1VBUtH7UGdYQe3geHoCTHlN6t3uafh/SBSfTCdjI37W1GvT/vD51+zcksnJbt9m+iHu
	WcsGb7+wW44x2AUEhpgup0DHTEk9wIfNi8MV0y3OxLPHy3/y0AeARLVCPaEE+QIXJEbyJHfqmXTgq
	aHhHBpvWIWYZ9ABJXBzWhrM8CLS9yJDFf3prnS1H/yhsK9rQ+BUfbBFTO3HdZG9aIaDWlKKGBcgfW
	nwBlGJjixFN6rt076+zQV8XEnLcTWqZ/dVkAQKmDG/b+78q8DIQ/ArpgH/TVBv3QinIeljd2mWuU1
	wcghuGTfvJJoLMXtothA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHVMf-00071L-2Y; Thu, 26 Mar 2020 16:28:17 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHVMT-00070Y-Oz
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 16:28:07 +0000
Received: by mail-il1-f195.google.com with SMTP id m7so5942795ilg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 09:28:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UbqpA/qctusCoT0I66qEao4xg0yyTmAQC3AIFj3TFBY=;
 b=kwHuTIM/37nMfvX3XHHA8pjqv09vR1M6ZcmCkId1ho9nl2Wbp8GVjxDzd+d3g1QZhi
 NhP+PFyxheZg0+C4gdX2aw/B63EI5w/iBxMmvNQdqKeDiHIyZnRfCRog/pD0EMdFoPyv
 W7HeyNqW+xnzJzhw8N/dmW3kNPWXw/f56oaWvUm27ihVCwR/bTGkLqppGCamtF03cIYk
 FZAp6RGpJULxef/wN0AUlVmOCT1+Az3ceOilkUQbU81zAnoiNwxNc+sHRQkv+EZBJJP/
 4zjc+C8tDsoCc6ecFRpbPS0ksJTQBmhYuH/AykBl6l2QF8X4HIMD88wy7PWLjtPu1SL1
 0nTw==
X-Gm-Message-State: ANhLgQ0wv/7tKavOK5lj3XMQBVMDzS5FNhW48ScSR+RH5Ua7U6Ii/6hT
 NHl6V7tXMH6LyjjZVtnA0A==
X-Google-Smtp-Source: ADFU+vu5QgSgYZqJfr7f7Kyd68l8DEG8P2xV4YNobUu7GZucH6gAyAscgLQY3q9Bj69qyNOItBf9XA==
X-Received: by 2002:a92:41c7:: with SMTP id o190mr9261446ila.11.1585240084502; 
 Thu, 26 Mar 2020 09:28:04 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id z13sm746046ioh.16.2020.03.26.09.28.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 09:28:03 -0700 (PDT)
Received: (nullmailer pid 1099 invoked by uid 1000);
 Thu, 26 Mar 2020 16:28:02 -0000
Date: Thu, 26 Mar 2020 10:28:02 -0600
From: Rob Herring <robh@kernel.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 3/7] dt-bindings: remoteproc: Add bindings for R5F
 subsystem on TI K3 SoCs
Message-ID: <20200326162802.GA32328@bogus>
References: <20200324201819.23095-1-s-anna@ti.com>
 <20200324201819.23095-4-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324201819.23095-4-s-anna@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_092805_813834_94A85D29 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 24 Mar 2020 15:18:15 -0500, Suman Anna wrote:
> The Texas Instruments K3 family of SoCs have one or more dual-core
> Arm Cortex R5F processor subsystems/clusters (R5FSS). The clusters
> can be split between multiple voltage domains as well. Add the device
> tree bindings document for these R5F subsystem devices. These R5F
> processors do not have an MMU, and so require fixed memory carveout
> regions matching the firmware image addresses. The nodes require more
> than one memory region, with the first memory region used for DMA
> allocations at runtime. The remaining memory regions are reserved
> and are used for the loading and running of the R5F remote processors.
> The R5F processors can also optionally use any internal on-chip SRAM
> memories either for executing code or using it as fast-access data.
> 
> The added example illustrates the DT nodes for the single R5FSS device
> present on K3 AM65x family of SoCs.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
> Hi Rob,
> 
> The dt_bindings_check seems to throw couple of warnings around the
> usage of ranges because the tooling is adding the #address-cells
> and #size-cells of 1 by default, whereas our actual code uses 2.
> No issues are found with dtbs_check.
> 
> regards
> Suman
> 
>  .../bindings/remoteproc/ti,k3-r5f-rproc.yaml  | 338 ++++++++++++++++++
>  1 file changed, 338 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.example.dts:23.13-20: Warning (ranges_format): /example-0/reserved-memory:ranges: empty "ranges" property but its #address-cells (2) differs from /example-0 (1)
Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.example.dts:23.13-20: Warning (ranges_format): /example-0/reserved-memory:ranges: empty "ranges" property but its #size-cells (2) differs from /example-0 (1)
Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.example.dts:54.13-56.72: Warning (ranges_format): /example-0/interconnect@100000:ranges: "ranges" property has invalid length (72 bytes) (parent #address-cells == 1, child #address-cells == 2, #size-cells == 2)
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.example.dt.yaml: interconnect@100000: $nodename:0: 'interconnect@100000' does not match '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.example.dt.yaml: interconnect@28380000: $nodename:0: 'interconnect@28380000' does not match '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.example.dt.yaml: mcu-ram@41c00000: 'r5f-sram@0' does not match any of the regexes: '^([a-z]*-)?sram(-section)?@[a-f0-9]+$', 'pinctrl-[0-9]+'
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.example.dt.yaml: mcu-ram@41c00000: $nodename:0: 'mcu-ram@41c00000' does not match '^sram(@.*)?'

See https://patchwork.ozlabs.org/patch/1260966

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
