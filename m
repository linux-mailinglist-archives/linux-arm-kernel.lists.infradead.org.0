Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F11CF9F40F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 22:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VE+TOyWgRdhJxHfoCQUrecl/MYfLPiC3PyQKq7AHqng=; b=ifmx0TAsJ4hvgG
	gXUwO3jvyLIEKnTdQFRusdL14E/tgcoenNpWOtAqAyVYmUjwHWFyMZSMtGWPyUXyPSNDq5JPxS9tj
	vXvQBSvUopPUOy2yqabMucSPxzEZ9wv142LJayv97l96YcNByTgCxo7q4dNUiV8ZuDXTblk2ojPQ9
	s3g0TerTblChNXagH3hdpJF54vJWcufewovMn4vs0YDuQIfxMAE4ky2k0dmnwMsDLNy7dAB0Gusgx
	BwQaFEVJhHNC1XmyAWD2sOVB0kcCwf0TvA+PPrZ+0rNX4BOviveWdGI26Z+iG6kRuQznoVwobSupG
	sei/8/kC0mLSl4qZn58A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2i39-0008NQ-UI; Tue, 27 Aug 2019 20:26:44 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2i2q-0008Ml-0Q
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 20:26:25 +0000
Received: by mail-oi1-f194.google.com with SMTP id y8so274749oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 13:26:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bJafdp9XsI7mzj3hJGruH3bP4YYXWdgduJkXKPlsaeA=;
 b=Ign4uLE8LgK+mnhSUC3xMlZgvRTkH+1TRvRYRIZhgORGEjulrzLBt6cBg7I2wa+TfG
 DnfnGDAde9AxfHK58X0IRnEM/Top8bl2LtZFYor8Zys1In7k5+VrxnKP4+I9qR3Oc3To
 5veZpgLbhTt6qFUoJ3i/TLiIwTd/4uh3wELRTRyD6c7EvpY4U7FdOFy0Oj2HGSWtRgwX
 K7rEE/S6Cm6v0sMnyigeNNGNabOR9c5/gNv+P3luz8efUuqyvpywc1df+hpmIwMsTL+Z
 7U+aduDP62zHwrU6bQgQvrSzfFPPoN/qhUPneA7Fp0ZVfY6Ze1k3q2s49jQPSOfJZI9e
 MBmA==
X-Gm-Message-State: APjAAAWNXg6TRZUECTdF9VQ9fGTYa9SIoxJeUaLxtImShL3XmLAB190v
 RcoMP7KXo6+yOOw1Ed0ZoA==
X-Google-Smtp-Source: APXvYqyKie8vatTjl5awxYMdKBNp12v/B6SKJjd+ugH9yGwI/S8MRo4Z3W0w2zAQDAC2/ZrDzebOpg==
X-Received: by 2002:aca:5152:: with SMTP id f79mr393628oib.124.1566937582955; 
 Tue, 27 Aug 2019 13:26:22 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r13sm73551oic.56.2019.08.27.13.26.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 13:26:22 -0700 (PDT)
Date: Tue, 27 Aug 2019 15:26:21 -0500
From: Rob Herring <robh@kernel.org>
To: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
Subject: Re: [PATCH v3 6/7] dt-bindings: serial: Document Freescale LINFlexD
 UART
Message-ID: <20190827202621.GA703@bogus>
References: <20190823191115.18490-1-stefan-gabriel.mirea@nxp.com>
 <20190823191115.18490-7-stefan-gabriel.mirea@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823191115.18490-7-stefan-gabriel.mirea@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_132624_111501_BC162F24 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Cosmin Stefan Stoica <cosmin.stoica@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Larisa Ileana Grigore <larisa.grigore@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 23 Aug 2019 19:11:40 +0000, Stefan-gabriel Mirea wrote:
> From: Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>
> 
> Add documentation for the serial communication interface module (LINFlexD),
> found in two instances on S32V234.
> 
> Signed-off-by: Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>
> Signed-off-by: Larisa Grigore <Larisa.Grigore@nxp.com>
> Signed-off-by: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
> ---
>  .../bindings/serial/fsl,s32-linflexuart.txt   | 22 +++++++++++++++++++
>  1 file changed, 22 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/serial/fsl,s32-linflexuart.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
