Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1C1164FF8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 21:35:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hXXNEtWiPP+k/M8VjbWwvEnfVL8WlTMWp9XY37/0vmA=; b=Miq2kDyU3hyI5A
	vIpYRdb5hNgTNqTKjy8EPb6Ylw7tHtSkM+gqdx0sxrA/0ceRSlwhTopW1GTnnQT2HKAXkZvX68fDY
	RrKMm3PYfyORcjIGqjdo7ZZXG6JZklMLXTTzgMNehBlRunNXVHfNNRoB491V8AVKjWMU554+Y95dO
	NNF63BeZOaburW3gaA3cCpRYutB6Wj4RQJmHJCBDLaxuQCW034jOk6FkLU9hIXR4Wb84zAhSa8x5s
	1Aptd5uROi0eGNmcOuuYfdnXG/3WXgkig6x3Ml70GpUNwqa7pQK37iG4kn68iPhY0BJkXhMSImXBC
	WOvkaVs96AHDHXiW67OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4W4M-0003E9-KB; Wed, 19 Feb 2020 20:35:42 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4W4C-0003Di-Ty
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 20:35:34 +0000
Received: by mail-ot1-f65.google.com with SMTP id p8so1451397oth.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 12:35:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wtDIKILIP+uU1BnQ4PlhfoOLvW8WzFAlPwrAgy9AVF4=;
 b=PixbPgXkg4VsThhtpuiGxIJALrXMCuuZcA7CU6NFXsqDaFYhpokhvaHsBl4vCPRej/
 sPDOd5EMLqM0IAMTYTXs/OCZqoggritRejQ6ihJ0McX5OhI16B3aeeI+BWdZzP3slBZF
 /jf9eBT3gPKRqGHtFdg3bfGinPopd2Vn4zePsMWwABvpR8zia+6CsUU9Wx7b1NG/gqdr
 gzMgVebUBv2boLUxcmK5JON8rUkvHAYHh/Yw7kWqYLQ/PxATPVGrGI0uJ6HdtCA+XlAz
 yp/wiw3hxFUc7YPv5xpD1GJkcvwerQbeXw4MixLG0gPU4YNNzfeMOPompFIZXHOjG9ce
 Wv9g==
X-Gm-Message-State: APjAAAUs8YUy1d+kow/LzRe5PAXZJQJz4R48JVeQksOIAs8QpSgVLEzM
 Ob1D7VxBEPXXCGxWwAerhQ==
X-Google-Smtp-Source: APXvYqy8RF8sZufK1Y09hIvIcitju60UCY2VX3BG5jLj7GOEMFRFaSV+4rvpbXw5Ae3GeKIvehtg/g==
X-Received: by 2002:a9d:6f0a:: with SMTP id n10mr21673386otq.54.1582144530975; 
 Wed, 19 Feb 2020 12:35:30 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p83sm323666oia.51.2020.02.19.12.35.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 12:35:30 -0800 (PST)
Received: (nullmailer pid 25307 invoked by uid 1000);
 Wed, 19 Feb 2020 20:35:29 -0000
Date: Wed, 19 Feb 2020 14:35:29 -0600
From: Rob Herring <robh@kernel.org>
To: Faiz Abbas <faiz_abbas@ti.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: m_can: Add Documentation for
 transceiver regulator
Message-ID: <20200219203529.GA21085@bogus>
References: <20200217142836.23702-1-faiz_abbas@ti.com>
 <20200217142836.23702-2-faiz_abbas@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200217142836.23702-2-faiz_abbas@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_123532_967614_F6169C49 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lgirdwood@gmail.com,
 netdev@vger.kernel.org, sriram.dash@samsung.com, linux-kernel@vger.kernel.org,
 linux-can@vger.kernel.org, broonie@kernel.org, mkl@pengutronix.de,
 wg@grandegger.com, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, dmurphy@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 07:58:34PM +0530, Faiz Abbas wrote:
> Some CAN transceivers have a standby line that needs to be asserted
> before they can be used. Model this GPIO lines as an optional
> fixed-regulator node. Document bindings for the same.
> 
> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
> ---
>  Documentation/devicetree/bindings/net/can/m_can.txt | 3 +++
>  1 file changed, 3 insertions(+)

This has moved to DT schema in my tree, so please adjust it and resend.

> diff --git a/Documentation/devicetree/bindings/net/can/m_can.txt b/Documentation/devicetree/bindings/net/can/m_can.txt
> index ed614383af9c..f17e2a5207dc 100644
> --- a/Documentation/devicetree/bindings/net/can/m_can.txt
> +++ b/Documentation/devicetree/bindings/net/can/m_can.txt
> @@ -48,6 +48,9 @@ Optional Subnode:
>  			  that can be used for CAN/CAN-FD modes. See
>  			  Documentation/devicetree/bindings/net/can/can-transceiver.txt
>  			  for details.
> +
> +- xceiver-supply: Regulator that powers the CAN transceiver.

The supply for a transceiver should go in the transceiver node.

> +
>  Example:
>  SoC dtsi:
>  m_can1: can@20e8000 {
> -- 
> 2.19.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
