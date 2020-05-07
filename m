Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4611A1C9CE9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 23:03:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QCNIE2WavaAk4l8nkC3G00CTqa3Tl9sjRjnu0NUBkDo=; b=p9E59A7jkBi/WR
	zBJsuuteowFrRSsj4wCJEuJQy9y/5+srHKKwoBx941Ke6eVUud6Ze/6tGbM2Vul+RcJX/LLUPBZDQ
	LUtC2AzIJOpHW/ZwDIBrs1CpNpLcHd7DupnigZEP7wU+e9kbbtUD6MVEngwDU2cpHZJ85DIJk+jb4
	BJdLFr+Egz1UjD6klrGiDUqlZ2uMeCwCVYArq4+Ys3nc3D/tzZGL+iDpZvyfQaIq1LDaLOqdUYtUd
	kNm9aXr8swM6h2x9CRPitPitC59czqNJ0hKOfaIXs9EgB0ilqSaYE+GEIm2D99yDOyILBdNZ1JhOr
	Y7r+4G3SiLRYR/qiPy+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWng2-0007H4-3a; Thu, 07 May 2020 21:03:30 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWnfp-0007G0-Vi; Thu, 07 May 2020 21:03:19 +0000
Received: by mail-ot1-f68.google.com with SMTP id m13so5765665otf.6;
 Thu, 07 May 2020 14:03:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VyDpqjFf92FEuiIHFMXtKbzqroXrkI/e2oOzUcuJwg4=;
 b=WFtsAYsEOXEPtidC3yPPiwfL8ALf0BEr5bcEVh0AC79BWPb+VsZe9ZeRyCHw2KbBgU
 +gnjL+WnfhLalMFl0lHzJIv1Kq7VA2J/xqOq1Vte95rKtHz9v+GP6Oee3Sbb4Co38nGB
 BWwttZHdacUgCQ9Th5EJqClMYBwcWzoQ2ZInKliYcm6hnGlmvjYlP6d5gKbqcPhrPacf
 trapTOS2DdYh9JXPVcUfqonbpG4yiJVNDxz4+vJBOQt1dmZecpz227Cujb9C8zv/Dbb9
 FsSxM2n5AqQdJ22aSlgp4EVnEDiKcyxG6BH30bkgdetejC5/Dh+ArnXeI64d9b/SIFle
 pjAw==
X-Gm-Message-State: AGi0Puahw3Wmow9SDIzIgqPkqjAfvqcX5wd6Jx7e1vKdmByZ9HWdxdai
 knlNH5I1FGqNiGxME1JV7w==
X-Google-Smtp-Source: APiQypIvjGiPp77s+t3QROHzGlT5BlLPBuZkwM7E4Px8YsppOcYnIGj84LS8p2dt85sZiqhftDFgJg==
X-Received: by 2002:a9d:3785:: with SMTP id x5mr11888606otb.81.1588885396749; 
 Thu, 07 May 2020 14:03:16 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g25sm1645901ots.21.2020.05.07.14.03.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 14:03:16 -0700 (PDT)
Received: (nullmailer pid 19976 invoked by uid 1000);
 Thu, 07 May 2020 21:03:15 -0000
Date: Thu, 7 May 2020 16:03:15 -0500
From: Rob Herring <robh@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] PCI: amlogic: meson: Don't use FAST_LINK_MODE to set up
 link
Message-ID: <20200507210315.GA19547@bogus>
References: <20200429164230.309922-1-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429164230.309922-1-maz@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_140318_020564_C3FC8011 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Yue Wang <yue.wang@Amlogic.com>,
 Kevin Hilman <khilman@baylibre.com>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020 17:42:30 +0100, Marc Zyngier wrote:
> My vim3l board stubbornly refuses to play ball with a bog
> standard PCIe switch (ASM1184e), spitting all kind of errors
> ranging from link never coming up to crazy things like downstream
> ports falling off the face of the planet.
> 
> Upon investigating how the PCIe RC is configured, I found the
> following nugget: the Sysnopsys DWC PCIe Reference Manual, in the
> section dedicated to the PLCR register, describes bit 7 (FAST_LINK_MODE)
> as:
> 
> "Sets all internal timers to fast mode for simulation purposes."
> 
> I completely understand the need for setting this bit from a simulation
> perspective, but what I have on my desk is actual silicon, which
> expects timers to have a nominal value (and I expect this is the
> case for most people).
> 
> Making sure the FAST_LINK_MODE bit is cleared when configuring the RC
> solves this problem.
> 
> Fixes: 9c0ef6d34fdb ("PCI: amlogic: Add the Amlogic Meson PCIe controller driver")
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  drivers/pci/controller/dwc/pci-meson.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
