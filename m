Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA80FBD81
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 02:31:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dsv5auesY8PRX8fTYC+NTU54thTWPQ4+7XrtwQTR2KQ=; b=AZdT+AcIgL5C/B
	SIxIRDBhgcPmoweVl5PBWoevuIHArafBIS8gD11ndDNtlfhmeYSQ289SUIG//Ic6hmWe0xUeK/QG6
	XyUBtl71BJTchCHa/HgaiOtbKUyquLqbnNJMW3mcqdlGjS99TSmnwtgGl95GeEZRCLLR/OkdKQt3S
	R68Yd1Sh4GgvK+Y8gyY24V/coPS4nOBHAL33kteGxU0ncCNCSFQPU8vUxKmkGOe0b6lVryrFfud6k
	iiHIVlq60ShCnFqzByatnyvUJXl4d+JiXQmK10/TEJVt/ACX7TjqSFT1PZU1rwbMsDbIX32K+GfwE
	003cyF17nE9ZQpFfuCMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV3yX-0004Nd-Pn; Thu, 14 Nov 2019 01:31:09 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV3yO-0004N4-1j
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 01:31:01 +0000
Received: by mail-oi1-f196.google.com with SMTP id 22so3739892oip.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 17:31:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NPZmkyPT605AJagOwd6DqFqPdy9BZ1g9xndRjb0oTmU=;
 b=owtT0KRfLo0rMWI69mvs604y/yROtvICNg93V6LWyu3haSV0Fb7S2rPr9+7dHvRK1W
 xEG6X2QyJtK9dsypDDXtwDVhbV8rdQ3B2fLLUCSSjq9p4SHB0l4ZBGjPM1jOTElsiFu8
 6K89lv59XYRCmFeNFcyBPunjr8sApd6+yw+ZEFGMiaQIEniYyGAeoZUkL3eGKczStKD7
 dR5TZXRt/egzEkOxOw6tbCAO/lHn+YFwa2LrmJPXBYr7aGUMmGI/YP79FqT4AsZVZE10
 M3bS3X7eYpnks5FSVtqWJcmSq7YiSe5MwOFmsNIlpktllzV0/D5qU0syp0MCu8PCY+wJ
 /gbQ==
X-Gm-Message-State: APjAAAVRZ95754+b5TgBLNsbavQqVX41vCTENRjNwpMYP3A+4PtZpExV
 7Qts29KrMocdWyzNLlomfA==
X-Google-Smtp-Source: APXvYqyzRyS3pL4SlXiW0bp1nR8dUvkiggu3JwQlJk9vxIaR821lrhV+Abpdp88G31DGZTOpOOp4eg==
X-Received: by 2002:aca:40b:: with SMTP id 11mr1460236oie.106.1573695059333;
 Wed, 13 Nov 2019 17:30:59 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z189sm1282249oiz.33.2019.11.13.17.30.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 17:30:58 -0800 (PST)
Date: Wed, 13 Nov 2019 19:30:57 -0600
From: Rob Herring <robh@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH 2/3] dt-bindings: usb: atmel: Mark EP child node as
 deprecated
Message-ID: <20191114013057.GA20150@bogus>
References: <20191107153128.11038-1-gregory.clement@bootlin.com>
 <20191107153128.11038-3-gregory.clement@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107153128.11038-3-gregory.clement@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_173100_089623_994404D3 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: Felipe Balbi <balbi@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gregory CLEMENT <gregory.clement@bootlin.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Alan Stern <stern@rowland.harvard.edu>, linux-arm-kernel@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Cristian Birsan <cristian.birsan@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  7 Nov 2019 16:31:27 +0100, Gregory CLEMENT wrote:
> There is no need to describe the end point in the deice tree. These
> properties won't be use anymore, so mark them as deprecated to keep
> the old device tree documented.
> 
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> ---
>  .../devicetree/bindings/usb/atmel-usb.txt     | 56 +------------------
>  1 file changed, 3 insertions(+), 53 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
