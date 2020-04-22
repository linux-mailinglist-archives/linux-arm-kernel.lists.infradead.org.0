Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFB71B4D7B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 21:38:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GxCW7xeMaag0m5FguEhmIhFtsyLQgnidmOPfajqnlLw=; b=WDEZ6tscygZ0Ql
	ffYEscaGe6A1pLaJe8UdCD5bwp71JuXxAd67MKtbt7m/AG3jQCo+B2BNdp2q+5dusWQHq2ZnlwuLU
	ZnCG+BjxtYq5QguoMDdnh0HR0Vr6gNcWmNCyOz69o1Dy+qU/VmHcCgAjmJwm+ea0r1a7ry+j8uG0o
	ZqnuDtN9CcUXSnBgRJkZBhTTjsqy15ExK3KyyppLFH56pFUTi9y8xCwMeTTMdMu0mBCZEmML7IUb4
	/q7TVWLm7va3Rca/4cWhSHTHflX2xJn7rdEpv6UrB6rSeOYb9zm83XticAhtx/LUV/WOTGhXAue+W
	VIyqJQoFYqqE6Bm6cOfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRLCd-0002a5-0y; Wed, 22 Apr 2020 19:38:35 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRLCR-0002QC-1O
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 19:38:24 +0000
Received: by mail-oi1-f195.google.com with SMTP id j16so2920645oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 12:38:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=r+bQz+oywLIfBY+qmz5dtgdjHfJr24roK+Q4M23wujE=;
 b=gbPbocx4bEtbBJE6iTTYcK9V/vxb1CpNriqLPbaYJHajgTfjWLX009anYYZwiWSUGY
 V1EYX5zhGhrKfTha5M16aNpMUqD09DNnbs3uUxopDI0EZIt/ew7HXEWUIcsLRqLp6nOP
 I9M9m1JYx859tZpSka1lNXC0x3QQsCaHO2YGVPEphdIV7WPelLjGPn7MUhzE+eNraB8A
 vCqLKY6Ryg5bg7oDTYhR15OlGAIw+nn2Pzzl6jbGmnNFjsTzA1asflNaDSOXpCL5uHFU
 IoRmvOtc2pGffsm1IDOY+ei/D6s2Vj5Kf6Z+nAU54pc9eNksESBYfb8d7YeLTPHUnUU+
 HJig==
X-Gm-Message-State: AGi0PuZJf2TRCja1hp1zN/qmkQ+SyWChCfNb4jwhwkY4QXzwM/3B/VCv
 lMpfVhhZc4hV22BCOJq8kg==
X-Google-Smtp-Source: APiQypI14oeR06dFErUfwCsPEufwOtD3gkatiqcxhF0Yrwf5FslPbZlGF7qdSUieoA3OewdCEeZm0g==
X-Received: by 2002:aca:440a:: with SMTP id r10mr415199oia.139.1587584301584; 
 Wed, 22 Apr 2020 12:38:21 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 80sm17588otd.35.2020.04.22.12.38.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 12:38:20 -0700 (PDT)
Received: (nullmailer pid 2056 invoked by uid 1000);
 Wed, 22 Apr 2020 19:38:19 -0000
Date: Wed, 22 Apr 2020 14:38:19 -0500
From: Rob Herring <robh@kernel.org>
To: Ben Levinsky <ben.levinsky@xilinx.com>
Subject: Re: [PATCH v3 4/5] dt-bindings: remoteproc: Add documentation for
 ZynqMP R5 rproc bindings
Message-ID: <20200422193819.GA1685@bogus>
References: <1587421629-914-1-git-send-email-ben.levinsky@xilinx.com>
 <1587421629-914-5-git-send-email-ben.levinsky@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587421629-914-5-git-send-email-ben.levinsky@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_123823_086899_065282EC 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: ohad@wizery.com, mark.rutland@arm.com, rajan.vaja@xilinx.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, michal.simek@xilinx.com,
 bjorn.andersson@linaro.org, jollys@xilinx.com, robh+dt@kernel.org,
 Jason Wu <j.wu@xilinx.com>, Wendy Liang <jliang@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 20 Apr 2020 15:27:08 -0700, Ben Levinsky wrote:
> Add binding for ZynqMP R5 OpenAMP.
> 
> Represent the RPU domain resources in one device node. Each RPU
> processor is a subnode of the top RPU domain node.
> 
> Signed-off-by: Ben Levinsky <ben.levinsky@xilinx.com>
> Signed-off-by: Jason Wu <j.wu@xilinx.com>
> Signed-off-by: Wendy Liang <jliang@xilinx.com>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
> Changes since v2:
> 	- update zynqmp_r5 yaml parsing to not raise warnings for extra
> 	 information in children of R5 node. The warning "node has a unit
> 	 name, but no reg or ranges property" will still be raised though 
> 	 as this particular node is needed to describe the
> 	 '#address-cells' and '#size-cells' information.
> ---
>  .../remoteproc/xilinx,zynqmp-r5-remoteproc.yaml    | 126 +++++++++++++++++++++
>  1 file changed, 126 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/remoteproc/xilinx,zynqmp-r5-remoteproc.example.dts:45.25-65.16: Warning (unit_address_vs_reg): /example-0/rpu@ff9a0000/r5@0: node has a unit name, but no reg or ranges property

See https://patchwork.ozlabs.org/patch/1273784

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
