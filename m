Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 045581FD8A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 00:23:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPUJbz8aAtXN6wTv1ed/n7zxwiydmKMmIoN6qXywjpo=; b=NNN0uQkuBq9A/4
	joBjYZmJzeDUEBUXMxM5dZfEGxsQM1SA4tosWudvp6B6wITQVuovRjAog4qOP7sUX8Lgn0IquhKHa
	lkNI1QVXrD3AV5xWx7JpUJErgx1XanZjbXKKhN/P3S6h63ThT2Jbtd7aDYzmhcu24/pPqFqORFSKO
	/u6dyC7jASb4ECJE31U2Hzz6kTuZIQyXhi/nJ8IMRtHEu/AvT4zMhoUgW3eLB8IKpNACUrlnUinhV
	/nrLs9WrJkAm683PgQ7HPEbzU9vxeTfiqyS8pX8OqkhREcfJ8S0ZOwCXrgfN8cH8cmyWWpxlIJykm
	BoOLp9A18wC1zud+wPdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlgSa-00083R-Ji; Wed, 17 Jun 2020 22:23:08 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlgSL-00082p-IB
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 22:22:54 +0000
Received: by mail-io1-f66.google.com with SMTP id x189so4799056iof.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 15:22:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=cZs4DMmV9+4KYcd4h6vQwLKgeDMHogArG6hcyQ007uM=;
 b=cvRc/MNMQR3YEwOe/rsdm187SueYqUkvC9MV8T/OkClJ4v1TdxJJnZ103HAETmzd7q
 eHLWxlQbgo6PDzOrn3qYRFzpSx9V/KbaxVMmyxyd9n04we7/+WJXaX316RO6rCUo88Kc
 uiDWSomqKeun3fUaVIVDlRNhre8wi3F4MZJblgOkU4A3HJWrr4tzh2aXp7GjO4/G9heg
 EUy7HMVIqmuv2dSatwYhycQLz71HWZmBfF95hJKR6mRGFl3q1uFyYtEUgeSYcl76g9Gr
 peB1cXohz+cS7ceb4u7oxc2PUscWwhuySU70GdeNtNJtkXAMWOdkvAzLiOrYcb973fsm
 SirA==
X-Gm-Message-State: AOAM531NOcGAWJ/mh5Ag0ikqbnL+maofx91JjNEnfIfd5QiYR5aPp75b
 gK0/YuMD33cNTRU5AE2wmA==
X-Google-Smtp-Source: ABdhPJwVLzRisP+uIxnL1NbxlXTfqVaPm1HmkXIu0ChWO56rldgx6wkKleV2KmMwEts15aMvaS5Bcw==
X-Received: by 2002:a6b:8d44:: with SMTP id p65mr1805887iod.24.1592432571789; 
 Wed, 17 Jun 2020 15:22:51 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id p25sm630019iog.47.2020.06.17.15.22.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 15:22:51 -0700 (PDT)
Received: (nullmailer pid 2941342 invoked by uid 1000);
 Wed, 17 Jun 2020 22:22:48 -0000
Date: Wed, 17 Jun 2020 16:22:48 -0600
From: Rob Herring <robh@kernel.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: rtc: add microchip,sam9x60-rtt
Message-ID: <20200617222248.GA2941290@bogus>
References: <1591779936-18577-1-git-send-email-claudiu.beznea@microchip.com>
 <1591779936-18577-3-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591779936-18577-3-git-send-email-claudiu.beznea@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_152253_599085_B07A9253 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
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
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rtc@vger.kernel.org, a.zummo@towertech.it,
 alexandre.belloni@bootlin.com, jason@lakedaemon.net,
 devicetree@vger.kernel.org, maz@kernel.org, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, robh+dt@kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 10 Jun 2020 12:05:35 +0300, Claudiu Beznea wrote:
> Add microchip,sam9x60-rtt to compatible list.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  Documentation/devicetree/bindings/rtc/atmel,at91sam9-rtc.txt | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
