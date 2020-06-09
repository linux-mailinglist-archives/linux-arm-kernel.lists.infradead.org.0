Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB2A1F496E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 00:36:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DyvUrgq9jiRqGLAURW4aIohBdqKYAzC0RAqqwHPUwUI=; b=gyGcMuNB2ZgDO2
	OV4i/D9ELWMfngX4nc7uWXgwFveERPlQAKBjsR6hdQWsZwXsbFgwUql4163PZRYILhkF35OU60sXk
	9NPLwBjC6V1slSitWBney4tdtY4zAv/8YatIBi4nngeww2VBCAB285wnfRMf63Z1IjMK9OiFMmJWY
	MnXRgawvB0qHWAQe5ux1rmeNUROz1d9kIXX3Iua8UeiwjcHTqgw7QT3AcDIezHAkd0i3X2iY+ehuY
	Dx8VRCXRneE4fH6w7P7lZAaHdOmwDni0URksqJNCWSmcDMXw9D5VfZlD2tpwyTpPr3QyBurZftMQi
	SxUZYNlJsC53p7dAPmKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jimqf-0008OP-49; Tue, 09 Jun 2020 22:36:01 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jimqY-0008Mh-8z
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 22:35:55 +0000
Received: by mail-io1-f66.google.com with SMTP id r2so6435ioo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 15:35:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AF/xxGAAmmq8m781/9mNSTPPuWu4/Lu9Y/67FNW6glw=;
 b=CWVOCuTBLovhVMbbf5tpG1vdwtuQcPpvedN2EMMFc7AS5y6wMDGiCl08+6O5rxibGG
 sy5pHv72MgHHEa/N414I+XzuUUFNfISzEbG0z9ZKzkuuD/G20M0XTNjWuUrIIlRyxCA+
 +dKgJGKJVkgn2Os5jJGs29oE+mbR5/XEe/HDqTlBXVB8v68rHJt9jIdlUxGj+N0qA3PS
 tTqh2P8XLM0KAD3dQOOWVCquhlfaf3Ok8int2qsRwc2HKWa/0h9Zj+cySkDO4BPr65Hm
 TJk/ObQKsIoqibKS63hNIbyHWQlOh88RUNhro7a2XYL5KD/aXhNJ0uJ8POndKfecBoM4
 /ReA==
X-Gm-Message-State: AOAM532QS68y2JsM7/i2jSNR4Je3F5H2Se71VwGYq+WJ1CqGSmwdTax9
 +StHgotzd5mcrjQoB7Hs1A==
X-Google-Smtp-Source: ABdhPJzgTHx2wsS5oN+cDdflkB51UZl3ANDgnJ8eo4bswCiO2TTBM6n25loZTTE9uJUeI4Dr/iikYw==
X-Received: by 2002:a5d:8c8a:: with SMTP id g10mr346802ion.208.1591742152884; 
 Tue, 09 Jun 2020 15:35:52 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id o2sm9804652ilq.71.2020.06.09.15.35.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 15:35:52 -0700 (PDT)
Received: (nullmailer pid 1625877 invoked by uid 1000);
 Tue, 09 Jun 2020 22:35:51 -0000
Date: Tue, 9 Jun 2020 16:35:51 -0600
From: Rob Herring <robh@kernel.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [RFC PATCH 1/3] dt-bindings: Add ARM PSA FF binding for
 non-secure VM partitions
Message-ID: <20200609223551.GA1620273@bogus>
References: <20200601094512.50509-1-sudeep.holla@arm.com>
 <20200601094512.50509-2-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200601094512.50509-2-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_153554_314549_D5CD37B6 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 01, 2020 at 10:45:10AM +0100, Sudeep Holla wrote:
> Add devicetree bindings for a Arm PSA FF-A compliant non-secure partition
> at virtual interface(VMs).
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  .../devicetree/bindings/arm/arm,psa-ffa.txt   | 47 +++++++++++++++++++
>  1 file changed, 47 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/arm,psa-ffa.txt

I'm hoping this goes away if the firmware is discoverable, but if not DT 
bindings are DT schema now.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
