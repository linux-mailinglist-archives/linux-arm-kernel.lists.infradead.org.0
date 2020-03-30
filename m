Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 908621987B1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 01:01:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0UutByUQMN8w5522XKn1GJEtdOX6OD6OsbfjLvvE+c8=; b=k6+7uOJzxYFYXg
	reynzySjmAiKL+NTRB1wsRqf2h6r6VaYar0GvJn6ABdYbSXKuhyRJ9QpzIFkYZjFRa5p62iSbltBQ
	KZQEDC8O6LRim2BM5nizb/FWXyUhVMjnnBMKszVVObGILGeVEc5O9SBvGWcFZO08yspFlT7VlNB9C
	FOBpeoOkso03whAoSuYPGKBqF7e165edRrOqSsKzsQuwVQvFoydvNuHiqAVawE/Yd//HBxJOEkJ2A
	JbaoWmhOpqP9ath+m4+39EMigHjwkmvR32eSOmhPmqIxCE/SWwxOqanT9g9wT/7pcpG6SEoxprC2p
	v/LG9T3PzvVpgDLqhadg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ3P6-0004Vn-Kc; Mon, 30 Mar 2020 23:01:12 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ3Ox-0004V3-BR
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 23:01:05 +0000
Received: by mail-il1-f194.google.com with SMTP id 7so17599716ill.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 16:01:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JgZzZGX2+1l0VTjeEuKjYHaxC21r8KeS0zKEfm2qAVs=;
 b=kvMDQ/GPvDvFiVpeBC3nki8cw5RKFvlrAAR3JI7M1X6ofOW4WiRNKmGNzS+17J63up
 p9koPMHwLGq5Wiccjfq5hETroMvmmb9K8ZAvEtJsm35UtDIQ4P6drLs92eYsUdNOzJAU
 XSd5AJqfs2n66WsumL+kAPnTKB8/GnuQjuGC28/iw/tQUjob9N/rabJ/8gotUjCmnGpJ
 ROHPJzxpixIBOeOCHvMj3XZDc0vIJOveS4VhjJNtuF5afdJ40MbkDJDW/6jqym834wO5
 lQ4jG7iMsT47PIfG1mObbdgCJiKk9bFxchZXm1CPClFROO/amJp8C9+TVnXoJWs3usOz
 BBvw==
X-Gm-Message-State: ANhLgQ3hPp9VhlEC12BRBmqJdjvSXPXZxo8jRAy0YKEphA75rvhzues1
 cHHTHt9eBDfIx6Zk4qhkmQgHsVs=
X-Google-Smtp-Source: ADFU+vtLyFwr4FXsEUk/I3P1I5kqV+BC9DO+oyzeHHyVLyI0YrYJpOTqJX7GI29JsPy2wasg0brZSQ==
X-Received: by 2002:a92:cb49:: with SMTP id f9mr13402280ilq.193.1585609261355; 
 Mon, 30 Mar 2020 16:01:01 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id x12sm2011163iov.55.2020.03.30.16.00.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 16:01:00 -0700 (PDT)
Received: (nullmailer pid 21284 invoked by uid 1000);
 Mon, 30 Mar 2020 23:00:59 -0000
Date: Mon, 30 Mar 2020 17:00:59 -0600
From: Rob Herring <robh@kernel.org>
To: Keerthy <j-keerthy@ti.com>
Subject: Re: [RESEND PATCH v4 1/4] dt-bindings: thermal: k3: Add VTM bindings
 documentation
Message-ID: <20200330230059.GA21226@bogus>
References: <20200318083028.9984-1-j-keerthy@ti.com>
 <20200318083028.9984-2-j-keerthy@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318083028.9984-2-j-keerthy@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_160103_392145_12E514BD 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
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

On Wed, 18 Mar 2020 14:00:25 +0530, Keerthy wrote:
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
>  .../bindings/thermal/ti,am654-thermal.yaml    | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
