Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2C91D43F9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 05:17:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hP0061vDKL8lOsmI2uH8iGX129lTtXAaQyLD+n3sVxE=; b=DYF4BEHPwBTrTV
	q4Ds0bFa0SGjeujUiAKHnDkHtMI2IMhwbyzy6pJZkAnerPGl/rwOxlEGmQarnS2Jp2PCQKEwZAZNK
	Trgs3rGiAAfHukgMA+310BMW5FqMZr9Jrhpez81Yf0d0MmBD3cAiup7NB1+1VfDHO3xnpITENwonn
	+q5/nOpyhCASYmSdQQEbg7AX0s2XQmWjf/enqdmp7suGYkTvB84U3r+oLF7j3iBa2y1wlKBM+8rDM
	bYCkds0W+OUnpDJRYN2WDnzQeyiGAUH8LNzngpvVbP8UNea6oPyZEC8ewkiYEHiQC26Jfs49ZIERb
	iZm3q7nJ7dSiGI6r461w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZQqd-00032b-Il; Fri, 15 May 2020 03:17:19 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZQqU-000327-Fl
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 03:17:11 +0000
Received: by mail-oi1-f194.google.com with SMTP id s198so1010357oie.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 20:17:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cg886WtTenbgiEe14/3Z+QrAl6uqIU+XFzLFxY3ocVs=;
 b=EUQVCAgxh2lV3Uf+jtUW5+KAlLA4hjgKN1M8n6goppySrE1voz1q5L0i7jeh/mt7jd
 9C03dMOFhrKs6Q1kFUFV5zhwlZgvMCxGY8ymYg0+FiZ7Z7EQeeRjK7iqNe1NVNFaT17f
 CQP6WjEXe2FvI06AM+JK7kQQV0mcDB7UoQD3HSPMCeLUZXWRSWQzU9+sH67RsCGb4AwO
 B8pUDpiZQ8TaChYV5VU0H0Kv85Xr4KK5XZUR4xBh93Voa+jnK0eAoOBA48gmrQXCgH1T
 Qnj2BJZJUXv4pbvBUAyYnmsfNUOcZlWwfxb+gwMiDwg7DYQvseeTi1cAdgt8SSs/1eH6
 WwDQ==
X-Gm-Message-State: AOAM530qpnbB6NBuPuMC6m3nPxSfBhV8PZUGGLEnsUJTERFP10Bv2IM7
 SZSxKP8qjJHYpm1+jN2d26mIFY4=
X-Google-Smtp-Source: ABdhPJx86g0hoTKASew6ChT92rGRrKIzjg4EHMkFeMEsNXruUCeUNgVuswoc+pEB6xTa8PwJBz7ZJA==
X-Received: by 2002:aca:b2c1:: with SMTP id b184mr769083oif.57.1589512629659; 
 Thu, 14 May 2020 20:17:09 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p18sm120917oth.2.2020.05.14.20.17.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 20:17:09 -0700 (PDT)
Received: (nullmailer pid 4527 invoked by uid 1000);
 Fri, 15 May 2020 03:17:08 -0000
Date: Thu, 14 May 2020 22:17:08 -0500
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v3 20/20] dt-bindings: ehci/ohci: Allow iommus property
Message-ID: <20200515031708.GA4452@bogus>
References: <20200513103016.130417-1-andre.przywara@arm.com>
 <20200513103016.130417-21-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513103016.130417-21-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_201710_525293_B15CB27A 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 May 2020 11:30:16 +0100, Andre Przywara wrote:
> A OHCI/EHCI controller could be behind an IOMMU, in which case an iommus
> property assigns the stream ID for this device.
> 
> Allow that property in the DT bindings to fix a complaint about the Arm Juno
> board's DTS file.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  Documentation/devicetree/bindings/usb/generic-ehci.yaml | 3 +++
>  Documentation/devicetree/bindings/usb/generic-ohci.yaml | 3 +++
>  2 files changed, 6 insertions(+)
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
