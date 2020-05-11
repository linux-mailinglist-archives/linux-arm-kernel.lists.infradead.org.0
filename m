Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 064C61CE80D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 00:26:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MdGg1LEJR2/1IK8qcOSp4cnrD3s3WhYvAYM7IJ8wTlc=; b=DFvbGv+Lio6upk
	m4yw4kQp6ggFT8IWCEJCrUu9gxwVMo4wgQdQBRnzGF+mcwnUY164qCbsLw0fajV1QNospQ1TKp+wg
	gzJRFZdgRymU0nrryV/qHLqDIi6ujAGMxSqphIu1mFpBxHMH9jOj10nflrujEsgpRdAAxjG6MtT9k
	jMMg8/zL5e+2c6hJBvRI/hE6gUA5dkDEMvGQKOsjfF+gB2J2yUPBxYOOIJaUkqHeF+YCiWZQEMDjL
	eGgG5O75aLuqEE/WVsUivHB88X/s8TqIADj924VMI5AScNDNohL8Fr+K7ugg0mEKP3rZwg+/JsjBb
	ih/oNYCXwT6KDoP/OKCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYGs4-0001NK-RX; Mon, 11 May 2020 22:26:00 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYGru-0001Le-Cx; Mon, 11 May 2020 22:25:51 +0000
Received: by mail-oi1-f195.google.com with SMTP id a2so16364871oia.11;
 Mon, 11 May 2020 15:25:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7+5vSNb8IxUA2MM9e6x9N0FrIu+LoC01HvigV+gZqJo=;
 b=WhqLLMGINIPTE2clc/+NolR/8zNbak9rBKNrrQgrFYmVzHWl9ZtHvCbsIxnszQUAZs
 akqnf5rR1e2BljztR+f3AnuQQZm95Xs3kTB3bCgaX+Tz5cBhbhWiUrb8lFp4jqxwO4sv
 fs5cSOD6RuxOteoh5CVjudLRu7cGz1OsVRmaU5jLbqZwTmKWL0FJ82oKSePWoNKSRMI6
 iWHPl+LBxT2hTp9fEhAKkg63RCrRNbB0/QA89+mYwNUMwBDil93QF+tmfYqrqOT8YV8L
 2mtcxynDez83uXyz1Q/jpDMrg1OP2JKpzxcQEWrV4fXfvORgAm56j4dShk1stywXbvYL
 QBJw==
X-Gm-Message-State: AGi0PuYFGnT1OVuxg2rOw4al6zOTxcG/NuE7cF9UtGnySL2grgM3n78c
 HiJnzkegj7+thC3vjpGwtRpexa8=
X-Google-Smtp-Source: APiQypJ9eQAYcH5jaLEtRYYyKWBWFhBc+JEnyD+r1v2xL8VlHzzA3LVNArk2SC8qvGZFebPkJp9VEQ==
X-Received: by 2002:aca:b2c2:: with SMTP id
 b185mr16208902oif.169.1589235949735; 
 Mon, 11 May 2020 15:25:49 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m16sm3137413oop.40.2020.05.11.15.25.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 15:25:49 -0700 (PDT)
Received: (nullmailer pid 26457 invoked by uid 1000);
 Mon, 11 May 2020 22:25:48 -0000
Date: Mon, 11 May 2020 17:25:48 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] dt-bindings: usb: dwc2: add power-domains property
Message-ID: <20200511222548.GA26381@bogus>
References: <20200425170833.26718-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200425170833.26718-1-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_152550_443198_E1F8BFC7 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 25 Apr 2020 19:08:33 +0200, Johan Jonker wrote:
> A test with the command below gives this error:
> 
> arch/arm64/boot/dts/rockchip/px30-evb.dt.yaml: usb@ff300000:
> 'power-domains' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> With the conversion to yaml it also filters things
> in a node that are used by other drivers like
> 'power-domains' for Rockchip px30 usb nodes,
> so add them to 'dwc2.yaml'.
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc2.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/usb/dwc2.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
