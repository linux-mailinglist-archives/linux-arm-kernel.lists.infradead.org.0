Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C78241F9CCA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 18:16:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cd5+a6miSC+RjoLntDFMePwe6y7r3GhsXk9IYCgkekw=; b=JQt+W2jVqz1nIA
	+2NiyweKcqoB6tWjjgJrMoRJPN68ewbzBmbcOXLJFQFzQbj6B7WKdN6VIaj0pzdfarsk2qoB5hxUy
	lQ8/BE2+6WHsPl+JP8QNQSEqpy5i0eMBVv35AkHllS8ruYTkVnwi8hCu6vrHnrzMx1Atew6TO9NMq
	hcL+fyY6lokEIie65nIGPlRbpO9L31DHV4Bv37bYRHVPXAkAYz/IOKImALfIZFBAnvrCHgJ8N4SgI
	kQWe+VxeD3fKdTY45IecxLGY/DBnLtOuaBA+68Yfj85mZ0b9PrZyr68KseJ0PuNeFti9RMw0FGX2W
	LmlKv0Yqrzanu9Ot/ljQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkrmV-00088G-7g; Mon, 15 Jun 2020 16:16:19 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkrmE-000865-Me
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 16:16:04 +0000
Received: by mail-il1-f196.google.com with SMTP id z2so15840308ilq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 09:16:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LceDJi3HuuWFN2rUgpbq9GLOkPnvp0H8zJIFHXcribA=;
 b=pYpwyVVEJ91H2wUsApdGmtdRTI65mUfGAHkkmHatmhc5WRP6hOD66mK+2VUQjDKdUX
 6py6MqZxmeHKTIUeVMP5ujlyaT2AHyjAgcRXhI0WsoynsJ8pKVzRzqXTdY/iltMOisEk
 JOWhLiWNcnXVF95AYWbY4kWwkk/BUvuBDE55ojlFe/wf4Y5aimwRlTmNCUb5DwELnCgY
 yWgMkgu3iE+CxBBlBPscpkR2sCUYU6MeRy36/9lbjvdnC5accq1s4J9ORUX4CNyg9yrt
 7NmoFrSJSqCPoNDL2feGvt5PpK9Woby48V0CZ1JIr+b9VJ9i9Cu3AOqnHfenxQh+PFmp
 Fwrg==
X-Gm-Message-State: AOAM530fiVbYeq3CaGW3F0eeI8wUk/nOPWvnE5dEYC6VyY2Q9KcD9EtQ
 /2sPNi6csvBGVm4OBADH5A==
X-Google-Smtp-Source: ABdhPJyZayJnee33cEuYPLpvv8OyZZt5YkVa8FQA9aXv9nTs8vxc6i5A2MxwMGdecxLvtPyRUjxzAQ==
X-Received: by 2002:a92:c6cb:: with SMTP id v11mr27435851ilm.206.1592237761673; 
 Mon, 15 Jun 2020 09:16:01 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id g15sm8158427ilr.5.2020.06.15.09.16.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 09:16:01 -0700 (PDT)
Received: (nullmailer pid 1876770 invoked by uid 1000);
 Mon, 15 Jun 2020 16:15:59 -0000
Date: Mon, 15 Jun 2020 10:15:59 -0600
From: Rob Herring <robh@kernel.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: remoteproc: k3-dsp: Update bindings
 for C71x DSPs
Message-ID: <20200615161559.GA1876521@bogus>
References: <20200612225357.8251-1-s-anna@ti.com>
 <20200612225357.8251-2-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200612225357.8251-2-s-anna@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_091602_740824_2AB2B6B0 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 12 Jun 2020 17:53:56 -0500, Suman Anna wrote:
> Some Texas Instruments K3 family of SoCs have one of more newer
> generation TMS320C71x CorePac processor subsystem in addition to
> the existing TMS320C66x CorePac processor subsystems. Update the
> device tree bindings document for the C71x DSP devices.
> 
> The example is also updated to show the single C71 DSP present
> on J721E SoCs.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
> v3:
>  - Dropped Rob's previous Reviewed-by tag due to decent changes in the
>    patch
>  - Replaced the minItems and maxItems from reg with actual items list
>  - Dropped C71 reserved memory nodes from example
> v2: https://patchwork.kernel.org/patch/11563231/
> 
>  .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  | 68 +++++++++++++++----
>  1 file changed, 55 insertions(+), 13 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
