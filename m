Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7430E1C4CF2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 06:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lWGsa09dNsDc8t7vEFblHSJflDmbwmZ7qfSxVjdXSeA=; b=jl/LxiMXk/SPsh
	7Hp5Uh+rh+z1QoAFxlXmNrAngo2Y4D7g0yam4Os900AvQKEDuoCBPt4d6xNsqCxkWQmQP5fLYVrya
	AR+6WxSHTaY3j7Tr1RJ0Lee89JoaYwvPdDkftnFj7AEh17Rp+fU6blZv/4zufh8x3pqzJmPWI/XfO
	DowWT201ZMJ3eEbo04SwUP0XwcQZw2BI/kwvx5pKX1f2f4G+RDDKP3c72aW0yuJBraYdYWLqAz+c2
	8ikk1lGQ/tNxxZd3Rpcrdo7H1c5FmhNIIdWgPX8/cg9CUrXtQrurwwh0IvaiBEGOe1jC7ppVyorTI
	U7Qh7vtTRhmkvZiyxCLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVopj-0008Az-3g; Tue, 05 May 2020 04:05:27 +0000
Received: from mail-oo1-f68.google.com ([209.85.161.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVopX-00089i-Mg
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 04:05:17 +0000
Received: by mail-oo1-f68.google.com with SMTP id t3so247682oou.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 21:05:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6WQI3JSgZPOFGGzXwwk2K02/3Pv1yWZDzRlpx8k9vAU=;
 b=iud4vi3IwVq4e/ZUobQlcA8Rkx0p5uTAgVvSYTlPLlvUk42cDTdEob04MQx8QQKHSh
 wtcHgppJKFoayl+8dapmA+9SyBZuv7G0Dz4i0auwz0UolwRtZ9pbiewOZ1Wxy6p2Wy3S
 nwcrueLnut7H4PQ22QtTJwhbD3+OwvV8YaPM4GJoHLlnT7qg0Q3CJFshfuH6K7Du8R9t
 FgOQQIcvpKMUMvQrdzLPvCLnwZ/tF3tc0HfoJ/PtVbEGztbzsNhlb8H0tB4o3Q/b6bHf
 nk8z9orNjCjbH1ByeHuRDXbxNky2xM/R/bJwfgWA+gPsGeq7K01ayaDyAFerj8puPjqK
 ODVQ==
X-Gm-Message-State: AGi0PuaLjZp37qd5awrwzJmjGrFuRxLxMIe7t5IcLwDm2WRpe5DY3zMR
 N6QB+MoP00R7yAxd2wJGQg==
X-Google-Smtp-Source: APiQypLGue2T2PeYCGDsL7qgUIq2ihNupfk0d/AlfGZGSS8M6OljhlK0/aPRKFsxfJuayvNWzuXA4w==
X-Received: by 2002:a4a:92d1:: with SMTP id j17mr1338642ooh.13.1588651513417; 
 Mon, 04 May 2020 21:05:13 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e10sm260152oie.18.2020.05.04.21.05.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 21:05:12 -0700 (PDT)
Received: (nullmailer pid 30274 invoked by uid 1000);
 Tue, 05 May 2020 04:05:12 -0000
Date: Mon, 4 May 2020 23:05:11 -0500
From: Rob Herring <robh@kernel.org>
To: Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: [PATCH net-next 1/7] dt-binding: ti: am65x: document common
 platform time sync cpts module
Message-ID: <20200505040511.GB8509@bogus>
References: <20200501205011.14899-1-grygorii.strashko@ti.com>
 <20200501205011.14899-2-grygorii.strashko@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501205011.14899-2-grygorii.strashko@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_210515_743221_95725317 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Murali Karicheri <m-karicheri2@ti.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 1 May 2020 23:50:05 +0300, Grygorii Strashko wrote:
> Document device tree bindings for TI AM654/J721E SoC The Common Platform
> Time Sync (CPTS) module. The CPTS module is used to facilitate host control
> of time sync operations. Main features of CPTS module are:
>   - selection of multiple external clock sources
>   - 64-bit timestamp mode in ns with ppm and nudge adjustment.
>   - control of time sync events via interrupt or polling
>   - hardware timestamp of ext. events (HWx_TS_PUSH)
>   - periodic generator function outputs (TS_GENFx)
>   - PPS in combination with timesync router
>   - Depending on integration it enables compliance with the IEEE 1588-2008
> standard for a precision clock synchronization protocol, Ethernet Enhanced
> Scheduled Traffic Operations (CPTS_ESTFn) and PCIe Subsystem Precision Time
> Measurement (PTM).
> 
> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
> ---
>  .../bindings/net/ti,k3-am654-cpsw-nuss.yaml   |   7 +
>  .../bindings/net/ti,k3-am654-cpts.yaml        | 152 ++++++++++++++++++
>  2 files changed, 159 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/net/ti,k3-am654-cpts.yaml#
Unknown file referenced: [Errno 2] No such file or directory: '/usr/local/lib/python3.6/dist-packages/dtschema/schemas/net/ti,am654-cpts.yaml'
Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.example.dts] Error 255
make[1]: *** Waiting for unfinished jobs....
Makefile:1300: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1281460

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
