Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F671E866C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 20:14:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ymrZ9WlYWsQ6wZXy98m0AC1BNSa2DLtvU0bgC+9B8Qk=; b=Tl6fKj3Y9Do1b7
	iTiMA7nuvy7MS1O6m6hqtYAGB0Hptjfr5yDKX55zKq//NpmrChOQqFfcRcGB72JiJGbnzUROxKzCn
	IaeNpetG+lNFZUrfFvl3shblt31Xh2mli9QbQwoSDdmDYuBAdevWRKkvlOMi05dl4BMcjPAhFVqKh
	vciSmOlcFDW2IYhosyVZ+FCcgxs0RiaQ++lIOJuUWENka3AiJRt/28Nha83W326aHpLlqWemjTZNL
	v5wmqj8kYYUODOPix/pjbpAX8dQuJNnijjqfq3MfxdGncBlrl3qz5Dhd81fAZGkp8keu1O6dH6niI
	2aSnlWbJkDms4tXz1Idg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jejWq-0005Le-6B; Fri, 29 May 2020 18:14:48 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jejWi-0005L0-8x; Fri, 29 May 2020 18:14:41 +0000
Received: by mail-il1-f194.google.com with SMTP id t8so2876661ilm.7;
 Fri, 29 May 2020 11:14:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=cpRQ/sE4FwRCuliRnokEgxqnFdsexjORBq+C6UB3EhI=;
 b=cDb14EEmhoMsDSYvgbHrMo84yCDDoP27D/kzM8xy5nDBNkHhaxdw6hR7CMDnfwmhxg
 sVYzfmFj7F5d5pyXCpLUof0I3I4gQacbTZQOo0OJoWUwXnUZbPs83hkwk2PJKrLFrV8U
 BUnCDWyxAcjJVApL3Ih4dhvy3HcCPf7Egf/8ZbOI4nIxJnWAjyCPPXT5bE6Eg4ay+6Mp
 6IxYPAxBLZS3TCmQOFgLCFKzgL3fMsyoG6YnGJfCO0hEbWfCP0t8sHBQvMab+gp3Dqcs
 sPIQQerJAqrYDbsVRqMZHJcdhzfssvJyjA8WplsHwo631Wcl2eBTCp/+l/cVtKfLYI0n
 opEg==
X-Gm-Message-State: AOAM532B4dp0LMFqOml1U71ORALEpC52qYw8k51dvjocOfqKmtLyFj9j
 kzRw70YmzxS6HnIUsbwVwg==
X-Google-Smtp-Source: ABdhPJzvi9bsOJFgClHgIdgjoPscdvkkEsnqnNIGf4ndljse4E6rFhgqWxD2dgYBIkQ7YzCNJ9ZWCA==
X-Received: by 2002:a92:9c52:: with SMTP id h79mr8272285ili.252.1590776078779; 
 Fri, 29 May 2020 11:14:38 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id j17sm5012580ilq.79.2020.05.29.11.14.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 11:14:38 -0700 (PDT)
Received: (nullmailer pid 2685148 invoked by uid 1000);
 Fri, 29 May 2020 18:14:37 -0000
Date: Fri, 29 May 2020 12:14:37 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v3 02/25] dt-bindings: clock: Add a binding for the RPi
 Firmware clocks
Message-ID: <20200529181437.GA2685096@bogus>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
 <919e2f2f13583d4d53d0e95b81fc3fb8a7606107.1590594293.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <919e2f2f13583d4d53d0e95b81fc3fb8a7606107.1590594293.git-series.maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_111440_311401_6759E8F3 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, Phil Elwell <phil@raspberrypi.com>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 27 May 2020 17:44:58 +0200, Maxime Ripard wrote:
> The firmware running on the RPi VideoCore can be used to discover and
> change the various clocks running in the BCM2711. Since devices will
> need to use them through the DT, let's add a pretty simple binding.
> 
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
