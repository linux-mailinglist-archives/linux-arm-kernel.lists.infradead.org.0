Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E07F71AD156
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 22:42:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k8MVtbZhKD9blsl0DnOXgqNgnBMZwy/B78L71wLBF1M=; b=OmCBdnwH8qkClG
	2GBpv8eSfGQqAfGJjh8NHOh016VWBlewpHPAkpxjLTXWrbShomoIAZVY8lHVvrMQshGKfDxitFN5B
	ZL/bfp8uZ73SSmYGhHB3niALK21p1r4yCLVwMBamj/tM1VZVXazUEpq45L9/EPLyf/heTbDaAPA+A
	4LmrW1L4Asrl7km+aUiPS1/lgn+Ho6stv0p2rFiSf5BJKCPuTW4BJEy7hjRboqPNZtEGxWNOiWVYb
	r3ZZBXdaNvSFjoN6rG7z/xHEhCfMwsqz0MAGQ69NiOfXB544IrIH3xvXksca+Ua7zfjvNKe12n1Ge
	Gqdz4E2Tbg/6KtasEbJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPBKr-0005p1-9G; Thu, 16 Apr 2020 20:42:09 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPBKj-0005oM-AF
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 20:42:02 +0000
Received: by mail-ot1-f65.google.com with SMTP id m13so4248430otf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 13:42:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=anW0cTk2V2JJay0BG4lZbAZX39UmWgVy33oQofhYL+o=;
 b=BwDR+LsoEg2YmxwhLSzzRshNiaXDup0Djd9m9/gvyQlisuSsMfyMuCfWIxtGdAuXr1
 /pMwnHztNzSuSnF28n44FqAmuy5UFduqC4fzvu4nnvhS/Ji0kPyuy3E1LlzWe2fDhCJf
 4QDhhGTmIZakCeTz9IQptfTL/VN2OCBjAbVRNUxNW0ORzBaUzb93U4bw6OZDC3LncnHs
 ayuaksxQgOIz07xyGxUMwOR2U8xtgMWpisTmMBifBmugJbVYJ/O9/rPNMeOzkBdPUk0K
 3o08Ut6V2f6WUU2apYbaxynG9H2Y/e0lWTrzFMvpv6v/18KQNe1nUq0iCV0mtytU6gfG
 Kn8g==
X-Gm-Message-State: AGi0PuZWOtXaUmJRHgwxl1D4YjdXwR5LbZZDMl57WStwObLfLRNd8M46
 V9cIbO4OFEaKCAyqougIkQ==
X-Google-Smtp-Source: APiQypLW3db/YOgTAVu/J1ZAay4EFYrxFtuax8O/ijjNSMUub8dIEYBEUvJBFYL72MQmqT4sac6WuA==
X-Received: by 2002:a9d:6644:: with SMTP id q4mr39174otm.229.1587069719796;
 Thu, 16 Apr 2020 13:41:59 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s13sm8064384oov.28.2020.04.16.13.41.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 13:41:59 -0700 (PDT)
Received: (nullmailer pid 13530 invoked by uid 1000);
 Thu, 16 Apr 2020 20:41:58 -0000
Date: Thu, 16 Apr 2020 15:41:58 -0500
From: Rob Herring <robh@kernel.org>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH v6 01/12] dt-bindings: add img,pvrsgx.yaml for
 Imagination GPUs
Message-ID: <20200416204158.GA1006@bogus>
References: <cover.1586939718.git.hns@goldelico.com>
 <06fb6569259bb9183d0a0d0fe70ec4f3033b8aab.1586939718.git.hns@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <06fb6569259bb9183d0a0d0fe70ec4f3033b8aab.1586939718.git.hns@goldelico.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_134201_352265_1444E5CA 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, David Airlie <airlied@linux.ie>,
 "H. Nikolaus Schaller" <hns@goldelico.com>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-samsung-soc@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 kernel@pyra-handheld.com, letux-kernel@openphoenux.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Apr 2020 10:35:08 +0200, "H. Nikolaus Schaller" wrote:
> The Imagination PVR/SGX GPU is part of several SoC from
> multiple vendors, e.g. TI OMAP, Ingenic JZ4780, Intel Poulsbo,
> Allwinner A83 and others.
> 
> With this binding, we describe how the SGX processor is
> interfaced to the SoC (registers, interrupt etc.).
> 
> In most cases, Clock, Reset and power management is handled
> by a parent node or elsewhere (e.g. code in the driver).
> 
> Tested by make dt_binding_check dtbs_check
> 
> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> ---
>  .../devicetree/bindings/gpu/img,pvrsgx.yaml   | 122 ++++++++++++++++++
>  1 file changed, 122 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml:  while parsing a block mapping
  in "<unicode string>", line 74, column 13
did not find expected key
  in "<unicode string>", line 117, column 21
Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/gpu/img,pvrsgx.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/gpu/img,pvrsgx.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
Makefile:1264: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1270997

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
