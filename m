Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F6E1944B7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 17:55:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F5IeDgfcHC2PSfxXrSWPZc8EVMFDGrS8e4+Y60YVg6A=; b=Ni0lj7jI33ujFd
	lpaVjJYyQI/DIwUSj2sbdKonlNJOa9QbV9fZek2w7Nj1aVJ4VYva9Eb9Zz1OOBeEteq15DW13/Tvb
	dg3d7pAdBbM/KuI/IvElRF6IxFdAbM9SNqWgFV3XvsVD/cDP/5sKZUxcYBwgERB4v6ikycAVXtdjZ
	CwgIQurxmCkepQsnvrUeKeJmJDyn9eqwzzG58cwEg1J/DszwJh3tTjWki6ymvaiTwnYFuCDXULyWO
	MZci3FRLc1Q+Svktf77/qdyQ9QQ5CsXbADmZznArDPxoLwQ7BcnM9wNyB1dk/bHx4T5lNdPUe+fle
	+OYxjv/ixllpaHCijtpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHVmK-0001dQ-6e; Thu, 26 Mar 2020 16:54:48 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHVmA-0001cI-4y
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 16:54:40 +0000
Received: by mail-io1-f67.google.com with SMTP id m15so6798660iob.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 09:54:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fxdkmv3rlaPbwnsIsqBG6/Y/pJQsCxLU/Fzk50NhJJc=;
 b=dC7+YgnjzfbRUuyJzwnbXhU5np1ehWOVzs1HWnBjQZK52fwEwMAkXbedBQ3bgVuzI5
 1AbvGzQ1ASS81DvEv/CFNgO73zrwXWY3n/kqmuKH5ivnmi0OkGBbVn3lKJSoahSP66hA
 XnmLg7X08YV6bfYGSV7ULzfSNtWBDj84OGhwaBTrULNZU+kN7TOZRN/m525EPQUsdf8k
 t9UxC2YfZQAjE+krOWneXPi+rUZEojuSH93xm40zb+gQ4eYZQ4dVMJ9I6DoRsZlFLXRu
 oPAJRWKJJUKEpfYUkKxgosqAcoJMlTaB8MJYTKzPzqK68Y5EA5uwnH5t0vNJhufKLh+9
 ruNg==
X-Gm-Message-State: ANhLgQ26JRRzxLlfreu1UCzzCt5SwkZzMJMoR2hlz7t5PwlB7uoIpg34
 w3LJdJAByA+8rlSlSBP0mQ==
X-Google-Smtp-Source: ADFU+vuO1x11b+eItaisRygLwgmQjoZPmeoCqAv0nxDAmHAK8LsIIIpHg61uNH7cbhjdQGbjuNKgmQ==
X-Received: by 2002:a6b:8d4c:: with SMTP id p73mr8471676iod.14.1585241677102; 
 Thu, 26 Mar 2020 09:54:37 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id f74sm969012ilh.77.2020.03.26.09.54.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 09:54:36 -0700 (PDT)
Received: (nullmailer pid 10911 invoked by uid 1000);
 Thu, 26 Mar 2020 16:54:35 -0000
Date: Thu, 26 Mar 2020 10:54:35 -0600
From: Rob Herring <robh@kernel.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 1/3] dt-bindings: remoteproc: Add bindings for C66x DSPs
 on TI K3 SoCs
Message-ID: <20200326165435.GA10370@bogus>
References: <20200325201839.15896-1-s-anna@ti.com>
 <20200325201839.15896-2-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325201839.15896-2-s-anna@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_095438_212683_16B905AC 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Rob Herring <robh+dt@kernel.org>, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 25 Mar 2020 15:18:37 -0500, Suman Anna wrote:
> Some Texas Instruments K3 family of SoCs have one of more Digital Signal
> Processor (DSP) subsystems that are comprised of either a TMS320C66x
> CorePac and/or a next-generation TMS320C71x CorePac processor subsystem.
> Add the device tree bindings document for the C66x DSP devices on these
> SoCs. The added example illustrates the DT nodes for the first C66x DSP
> device present on the K3 J721E family of SoCs.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
>  .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  | 180 ++++++++++++++++++
>  1 file changed, 180 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.example.dts:23.13-20: Warning (ranges_format): /example-0/reserved-memory:ranges: empty "ranges" property but its #address-cells (2) differs from /example-0 (1)
Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.example.dts:23.13-20: Warning (ranges_format): /example-0/reserved-memory:ranges: empty "ranges" property but its #size-cells (2) differs from /example-0 (1)
Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.example.dts:42.13-43.72: Warning (ranges_format): /example-0/interconnect@100000:ranges: "ranges" property has invalid length (48 bytes) (parent #address-cells == 1, child #address-cells == 2, #size-cells == 2)
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.example.dt.yaml: interconnect@100000: $nodename:0: 'interconnect@100000' does not match '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'

See https://patchwork.ozlabs.org/patch/1261640

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
