Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 259DEB2218
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 16:38:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:In-Reply-To:References:
	Subject:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ny9a3e4Yb+VzNX+7fMSyMmqHjZ2DXj9ruAnjHMSy5QA=; b=pHHySVCICESijJ
	x8CVji972jVvoku+mS485+rX0Ax0Xk36NOUDfcuSK13/G+VA5YMy4iqDlNiEneBpB9ApP4MVqf9jI
	G3HVVDRWFhj53RdWgBd/XWTdTnsvsIOHs5mUy4g5PtLWFGnm7EViB1FQuneROBiVmHkaPT7kL6JnK
	NCiCqIoEwZfNEXHLS0SKfwJ55ItHXk5LVfp4/LWMAenej4wvrVZgIJl0mQ9Zz+OrRnhY08Gc5Bf72
	AvxduI8RrbDOS+FgHSe6/SJ9+98XLWI42qDeGKrJMcZBRCafP8WjJ3vmaoR4imEfYxYZ4FaRrKdjB
	UmYheBRuVihjOSEinGoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8mik-00040V-Ho; Fri, 13 Sep 2019 14:38:46 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8mgQ-0002Vq-72
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 14:36:24 +0000
Received: by mail-ot1-f65.google.com with SMTP id c10so29661009otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 07:36:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:subject:references
 :in-reply-to:mime-version:cc:cc:to;
 bh=MYCnm1KBQZKBx96HB0JscnfcL2xUFb85JVsOSU3qDc8=;
 b=G8faHmOYQAc4a1pV/QRLJWGDK6aLerQqOzKhj0UuSwKpNjpu4/RJRL4RCmQjb3iK4L
 nhhZfX5VEaUBa3HzbpoBwCF4anS7SrSvqUsE9o3GljOAUK3GFEOV+dpYF5jUzj4JR1Z3
 uS8fRydsJmdz2ArWkzClyItt9S2kyx1ESC4FFE6WzCpriD3r6Px+ME1QmwVyyTYCJzhB
 G6WltG3EnZ8lvn4d0YyOgcPNOY6hj2KflfDwzwu3i1moRURNl1+oY8zrp9m7UK136NdW
 FVewO06hYCFkPR0Sr47TaEjicGQdysHDuYWzAXUotrEpDvF1rM/IJ/zxlDyKgbAidm/Z
 XNnw==
X-Gm-Message-State: APjAAAVwVfalRTzFGM9WvnQzpaL/ez3K8Gj3MWNBcve/6OitShIlNsyD
 5pwB1eWWTOJqFm+UV09fPA==
X-Google-Smtp-Source: APXvYqwnDo+Q7hxaXltlbSSHIDiUF0pJOKm7cavp8WC4RBGH7oOlkrEXpJ8E4zYLuUHbxns7zp9g8w==
X-Received: by 2002:a9d:7d91:: with SMTP id j17mr14847510otn.120.1568385381585; 
 Fri, 13 Sep 2019 07:36:21 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a22sm861167oia.47.2019.09.13.07.36.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 07:36:21 -0700 (PDT)
Message-ID: <5d7ba965.1c69fb81.ad771.5fc1@mx.google.com>
Date: Fri, 13 Sep 2019 15:36:20 +0100
From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] irqchip/atmel-aic5: add support for sam9x60 irqchip
References: <1568026835-6646-1-git-send-email-claudiu.beznea@microchip.com>
In-Reply-To: <1568026835-6646-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
To: Claudiu Beznea <claudiu.beznea@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_073623_505211_B92D07EC 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 alexandre.belloni@bootlin.com, jason@lakedaemon.net, maz@kernel.org,
 Sandeep Sheriker Mallikarjun <sandeepsheriker.mallikarjun@microchip.com>,
 linux-kernel@vger.kernel.org, ludovic.desroches@microchip.com,
 robh+dt@kernel.org, tglx@linutronix.de,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 9 Sep 2019 14:00:35 +0300, Claudiu Beznea wrote:
> From: Sandeep Sheriker Mallikarjun <sandeepsheriker.mallikarjun@microchip.com>
> 
> Add support for SAM9X60 irqchip.
> 
> Signed-off-by: Sandeep Sheriker Mallikarjun <sandeepsheriker.mallikarjun@microchip.com>
> [claudiu.beznea@microchip.com: update aic5_irq_fixups[], update
>  documentation]
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  .../devicetree/bindings/interrupt-controller/atmel,aic.txt     |  7 +++++--
>  drivers/irqchip/irq-atmel-aic5.c                               | 10 ++++++++++
>  2 files changed, 15 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
