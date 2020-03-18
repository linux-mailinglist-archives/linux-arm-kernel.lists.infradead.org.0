Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6593818A879
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 23:44:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ueOtZ+WqvgphBoOLGDt+QKECLuePQ6wfweYfYMEOoUw=; b=ngH+HmoPbep0RE
	TbIihtopD9qJ3KF8vbZY06kqvou9OxvZwX/ZDDcrAKV8v6DkgZx16F58Pz32nOyJWn/oDncs8jM8V
	T7UqHbVvuPuGo5PzmsivQ50Jm/3+AFXVMue7Nd9DqhT2y6WV3EKohPVf1Jl1jtb/dmKxN1nRj7qwW
	DA8g/p+gXNqtjjrHvijd80fBTUNN1XRb+gY2rAi9oei/yJ4C1Lf3iPb9gtkELJ5q1PTiDMgmbXkrm
	YGCRq5czXmVeKNVGFMpaRjw4biWA/IuIGbQKmzJh2J5fjZuH2W9Z3OZBvvr+110MVmksnQoZUNjL3
	9PDNleSY8WNgfexqTuLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEhPu-00083g-Jy; Wed, 18 Mar 2020 22:44:02 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEhPj-000830-Ji; Wed, 18 Mar 2020 22:43:53 +0000
Received: by mail-io1-f65.google.com with SMTP id q128so240775iof.9;
 Wed, 18 Mar 2020 15:43:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UbWcmYV7Yk+Clr9xPUcjHEM8UjChZ0Ube2X+QPUWkcY=;
 b=NAPJEO0gm9QE8yRlSryAyIDKmk2RXzgtYilLfvfmvyLev2SJ4gJLmEbQr2NMYwdc53
 t7tN46hIZhegiA/ErZiJC0RLI4I09QRg79e7uN5SOAqez1X4VWO6Ps7QBYyUTpJMbRGA
 QQrZW+ynzdyKOxM4BSBW8g1QKptPA+1HmmIlnwod9i/0+yr10ve8W3K8L5MBCWP7W0+d
 3bX+wSIchFAX6Wf+UHFmvApa+O6FGqqHm4hB7NUnyVeSZpG4KfzooKsDW5zppxmOFH6r
 Qax+aBrqvg4lCS2hl1TIfcesQoulRtLr/Q0lU3pKRr8beyopxgS6Mue3m5qe0jfkb7Gc
 RyZA==
X-Gm-Message-State: ANhLgQ1MKs14yu3+IEWnGfSAjZJRgLSp99lCuFvTEN4bFOhymX5IO46+
 DRyyHOhrfdNSpcyNckiAO/88PoQ=
X-Google-Smtp-Source: ADFU+vuKZ5nQigQX/gmK6fyGJCYz1mOJ8JDdLBfylffuuRMp7AeJ8OWk0BKHi5uLykgsBx99vlqsSw==
X-Received: by 2002:a02:7787:: with SMTP id g129mr352527jac.29.1584571430672; 
 Wed, 18 Mar 2020 15:43:50 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id w11sm93346ilh.55.2020.03.18.15.43.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2020 15:43:50 -0700 (PDT)
Received: (nullmailer pid 7184 invoked by uid 1000);
 Wed, 18 Mar 2020 22:43:47 -0000
Date: Wed, 18 Mar 2020 16:43:47 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [RFC PATCH 1/2] dt-bindings: sram: convert rockchip-pmu-sram
 bindings to yaml
Message-ID: <20200318224347.GA2792@bogus>
References: <20200317163555.18107-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200317163555.18107-1-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_154351_647994_C7967AC9 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 17 Mar 2020 17:35:54 +0100, Johan Jonker wrote:
> Current dts files with 'rockchip-pmu-sram' compatible nodes
> are manually verified. In order to automate this process
> rockchip-pmu-sram.txt has to be converted to yaml.
> 
> A check with the command below gives for example this error:
> 
> arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff700000:
> compatible:0:
> 'rockchip,rk3288-pmu-sram' was expected
> arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff700000:
> compatible:
> ['mmio-sram'] is too short
> 
> Fix this error by adding an extra 'mmio-sram' compatible and
> 'if then' structure to filter yaml warnings.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/sram/
> rockchip-pmu-sram.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/sram/rockchip-pmu-sram.txt | 16 --------
>  .../bindings/sram/rockchip-pmu-sram.yaml           | 46 ++++++++++++++++++++++
>  2 files changed, 46 insertions(+), 16 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt
>  create mode 100644 Documentation/devicetree/bindings/sram/rockchip-pmu-sram.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.example.dt.yaml: sram@ff720000: '#address-cells' is a required property
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.example.dt.yaml: sram@ff720000: '#size-cells' is a required property
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.example.dt.yaml: sram@ff720000: 'ranges' is a required property

See https://patchwork.ozlabs.org/patch/1256661
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
