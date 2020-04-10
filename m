Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1B41A4991
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 19:52:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CukDhbd5+Gnvab5WYco8eTFV8DNueOLvrG1lJyaphuw=; b=sr/4dj8QE+c1HB
	cru+Yr7+wyXg5QzcmJI3LfZsSgbX+2b9s4LlmVfapPl6Q7n/Wr5kK9PvQq2GskIWRbkWq2+RmszTr
	JMaWyfY457se4lsrHr40YVsvVLJN2YVMJoLa12ddgd91R60uRQ8WMwgx08SuSvC24WcZuhRllSP7y
	Vgh0bgFpHbrMGaIok6Zj5LYjIc7tIkdgXZvS1D7c1FKZy3cig2lQUq2SGIMwMtU+BPdCmH3mvZSuR
	HBgsszk2bXlnyTFau91rXr/1WqSOBLu8Skd/XbXdSbni5HXaGx13yP8rAWQ/svLRCrYzujkjPPIuY
	IZBVZZFR+T0uGA9hUkpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMxpZ-0000zu-PU; Fri, 10 Apr 2020 17:52:41 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMxpR-0000zK-QZ; Fri, 10 Apr 2020 17:52:35 +0000
Received: by mail-ot1-f65.google.com with SMTP id 103so2578081otv.0;
 Fri, 10 Apr 2020 10:52:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Lrdln4dBvVFJR91vr9hlZjSH31XigTv0FjlsPXSoRUo=;
 b=dUmDm+JQqttlM2z4mUCrGKIJzyeX3JdK2IQsiNl+OwsyHO/19cM/tGeFs1/6IsSrW2
 9ULm4Hrc6jABJQKGBNf/TbJrYXLuldw2+KxsDvo3X62fEe+4d/Og5EPGHPImtiDAAt0R
 JX/dYAMFgMW/HSXQrWa9NRp2KTxHH2TQ1G640Sp2EN0rPfksKbDU+bbQGXFT5A9CfEH+
 2Ql+PK4NUJ3kZzGplSrhEFblxE+RGglRhT9kFcI7RP3QzwcB2QHsyPYGAdzqZpuDxz3P
 t8foBSRjyNF2paL+f6w9/k4vLQEtV9bw6hyxKS+2HBX5SIn7H8KYCedH3bs2TihlnasA
 /Gzg==
X-Gm-Message-State: AGi0PuZ+U74m2gifXn3xlV8Do866qWcwzvQFU4WNj4mbJud6n8W//6TG
 ImQTJKaRRZKzEnK5cFeDOSiUb6o=
X-Google-Smtp-Source: APiQypIJzpPqxAkQRlPF/5U3xRWWYMkPbwF7Wx4paxMhG5vqpFOLez8zWuPdHwN38LwnKLQ3TbUQkw==
X-Received: by 2002:a9d:77cf:: with SMTP id w15mr5195937otl.158.1586541152824; 
 Fri, 10 Apr 2020 10:52:32 -0700 (PDT)
Received: from rob-hp-laptop (ip-173-126-55-226.ftwttx.spcsdns.net.
 [173.126.55.226])
 by smtp.gmail.com with ESMTPSA id 26sm1698146oot.25.2020.04.10.10.52.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 10:52:32 -0700 (PDT)
Received: (nullmailer pid 1070 invoked by uid 1000);
 Fri, 10 Apr 2020 17:52:30 -0000
Date: Fri, 10 Apr 2020 12:52:30 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [RFC PATCH v3 2/2] ARM: dts: rockchip: fix yaml warnings for
 rk3288-pmu-sram compatible nodes
Message-ID: <20200410175230.GA28412@bogus>
References: <20200331121352.3825-1-jbx6244@gmail.com>
 <20200331121352.3825-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331121352.3825-2-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_105234_600787_40CBE167 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 02:13:52PM +0200, Johan Jonker wrote:
> A test with the command below gives for example these warnings:
> 
> arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff720000:
> '#address-cells' is a required property
> arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff720000:
> '#size-cells' is a required property
> arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff720000:
> 'ranges' is a required property
> 
> Fix this error by adding '#address-cells', '#size-cells' and
> 'ranges' to the 'rockchip,rk3288-pmu-sram' compatible node
> in rk3288.dtsi.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/sram/sram.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Not tested with hardware.
> 
> Changed v2:
>   Fix dtsi.
> ---
>  arch/arm/boot/dts/rk3288.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> index 9c8741bb1..f102fec69 100644
> --- a/arch/arm/boot/dts/rk3288.dtsi
> +++ b/arch/arm/boot/dts/rk3288.dtsi
> @@ -730,6 +730,9 @@
>  	pmu_sram: sram@ff720000 {
>  		compatible = "rockchip,rk3288-pmu-sram", "mmio-sram";
>  		reg = <0x0 0xff720000 0x0 0x1000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0 0x0 0xff720000 0x1000>;

I think we should make these optional instead if there's no child nodes. 
And if there are child nodes, then these will be required.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
