Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC351E6AF4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 21:29:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wnLBvKoZLXsvfsQxfub8L2113NqrZxiyaQgM2et+elg=; b=kNDG5NHIx/bxQo
	ZBxWGm0x3fUHWpJiZ6J/XbROoCONyhJMvnQq/WIdS2oOur0vWyWpKWSk/Lzz1oQoOgVhVH9tZvQmo
	Ynjq/yD0mfN/PPhmrScqDOsxDRTlUEUnGMnIuIA3E8gz24KLeaPSOCt1Y2FmDJRt7Vz4mhmibOF0f
	QTQ0AfYH9L/MfHHb2xC6mCpwI2IQ6sQymmIatIhevpBXMAbyDf3//CozUOH7O+kHYkFeAqoKB7Qnr
	5Lj46YkmrVreN1iGkZ9DNtluTKgflKo7jeuJD9eqG+3cAteP+AonGk6iXLMrk4/Jzxkxg54aTJH0W
	PLfNn3NIPw0f0nb9bOtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeODG-00087s-6y; Thu, 28 May 2020 19:29:10 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeOAi-0005bl-UO
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 19:26:34 +0000
Received: by mail-io1-f67.google.com with SMTP id d5so21885345ios.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 12:26:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hPV9O47er4xNAMd5wglL6Z5Z1lhGUqlcSginv9j4tJY=;
 b=ND2O3gLj0aj511uBdPTeuYfvvT8WcATo4fvEweiuAcTyDh1kqdHQAQ+ZCeyT3sXe27
 wm9ILMaOOYYTA5RPMU+rGcpNYNLSMCI+o8+KcXG6FEWqJ88eMuBryOLxyxHVKfvUUF/8
 syGjQStLgNbhsnUGln/GetNUcmQD06mOSMSaamU9Pp6mdrIpa7otEDWAbbqZUOF4WXkU
 Ca3wFe5jt7h2WU02lnmV9ZMiMA0srfLTRs3aKrPzlelP5tmr6j6y5GD2UakynwGa7A9w
 12n/MS30JuqZZfjeD4mIJWNQtGO+bgkJUqV27Hty5/Ad0wv2ltsZ1ytWPKhGopzIDCAf
 NLmA==
X-Gm-Message-State: AOAM5324wlkf+b363J+mR5RH7q3jJLvJRNjE6ZWO5mIOuxIxWPpcsF6+
 LnXmshRbejfln7E40E43EA==
X-Google-Smtp-Source: ABdhPJzCyFeUg7Z9IIEN+Krc+e5kutkL4mnELlbgP88jXAg66vChno/VzYMMvtVbSJ8HNuZC5aYN2w==
X-Received: by 2002:a02:9f90:: with SMTP id a16mr3987752jam.65.1590693992020; 
 Thu, 28 May 2020 12:26:32 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id g19sm2933855iom.21.2020.05.28.12.26.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 12:26:31 -0700 (PDT)
Received: (nullmailer pid 539224 invoked by uid 1000);
 Thu, 28 May 2020 19:26:29 -0000
Date: Thu, 28 May 2020 13:26:29 -0600
From: Rob Herring <robh@kernel.org>
To: cristian.birsan@microchip.com
Subject: Re: [PATCH v2 2/7] dt-bindings: usb: atmel: Update DT bindings
 documentation for sam9x60
Message-ID: <20200528192629.GA539191@bogus>
References: <20200515111631.31210-1-cristian.birsan@microchip.com>
 <20200515111631.31210-3-cristian.birsan@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515111631.31210-3-cristian.birsan@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_122633_079935_AC67C923 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: mark.rutland@arm.com, balbi@kernel.org, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 15 May 2020 14:16:26 +0300, cristian.birsan@microchip.com wrote:
> From: Cristian Birsan <cristian.birsan@microchip.com>
> 
> Add sam9x60 binding.
> 
> Signed-off-by: Cristian Birsan <cristian.birsan@microchip.com>
> ---
>  Documentation/devicetree/bindings/usb/atmel-usb.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
