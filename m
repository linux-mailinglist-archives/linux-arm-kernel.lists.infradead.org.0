Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2244B1C63ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 00:31:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Snz/XC+84DA4y08snip9trPDmtoEoa78kftNF09n1WQ=; b=FZIj8uTC161D3+
	TrhUcx7Gj5c1rvcs5pBL1JBK/JxxbolbCnp0Y05+WlFoGPiFK1FzB7zk10yRNwzCoKwG36erK28vq
	Euql6RFNn3tD7i5q3VqVCdte39GiucbM4n/i3ww89mCjBfyA24JwU/DWFdS2uVvJ+RYnhJ0fgmV19
	UUQHh89fQGCvOTpPdxNO3oigda1YtavMYy+324kXRicC34Da6VZsLpUfmMIKOmwBv9affj1Nm5P1u
	+zlMg6vAt7KI3FcIfBnAffbs4/UQ7WMF+pgOCio9KUBKZCZri7uGg+JsBFcL0+LjkSlP75spOcKcW
	yUFET2+NszSiclTM1j1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW662-0006Iy-Nz; Tue, 05 May 2020 22:31:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW65w-0006IR-8D
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 22:31:21 +0000
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com
 [209.85.161.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 762DE20746
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  5 May 2020 22:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588717879;
 bh=fKcM1dY0iNW8qqGDinGxm0DRNWNhZiKnwheyGuNzmrM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Gyx/XcuVwrDHASq9pUr5aWebtwdf1QlEhGTBqZ+1suNaNkPCkb7X+POq3aFodBivL
 +QDQx0YZH0HJZnnZFDbqjDpCGmx3YHaCGaB1Jp4det8NJh/FGexKwxjipw9E9EK2L3
 iS9WL9IkKt41eC/gx5BOSp6XJyxZKBbHuym+PR6Q=
Received: by mail-oo1-f42.google.com with SMTP id c83so75080oob.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 15:31:19 -0700 (PDT)
X-Gm-Message-State: AGi0PuYZJaHrSrJLyE4MN+pRQkhWIO9It3bg0NRmI2Qz0V3QrwgS7aSb
 Qr93Vpid0evju/Y77Y3l8MgQ5PV0wjIxOmSiKg==
X-Google-Smtp-Source: APiQypILTo9QA1U67foGlHeZtsp1V6e4vkMZtEo170XuxA3msKoVEn9b99tFF6RWDZcpUjJEF4Nl5h5IGALQJYDJ7sA=
X-Received: by 2002:a4a:9c55:: with SMTP id c21mr4909896ook.25.1588717878704; 
 Tue, 05 May 2020 15:31:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200505165212.76466-1-andre.przywara@arm.com>
 <20200505165212.76466-4-andre.przywara@arm.com>
 <eee99db5-4100-5064-97c0-abf54d2eec15@arm.com>
In-Reply-To: <eee99db5-4100-5064-97c0-abf54d2eec15@arm.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 5 May 2020 17:31:07 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJdt8j1U0R-gfHUi6NhJLyPqigWB-Y3rEfPtwRFKpBO+g@mail.gmail.com>
Message-ID: <CAL_JsqJdt8j1U0R-gfHUi6NhJLyPqigWB-Y3rEfPtwRFKpBO+g@mail.gmail.com>
Subject: Re: [PATCH 00/16] dts/dt-bindings: Fix Arm Ltd. ARMv8 "boards"
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_153120_310927_96A3E9A8 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andre Przywara <andre.przywara@arm.com>,
 Linux USB List <linux-usb@vger.kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 5, 2020 at 12:52 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2020-05-05 5:51 pm, Andre Przywara wrote:
> > Date: Mon, 4 May 2020 12:43:18 +0100
> > Subject: [PATCH 03/16] dt-bindings: ehci/ohci: Allow iommus property
> >
> > A OHCI/EHCI controller could be behind an IOMMU, in which case an iommus
> > property assigns the stream ID for this device.
>
> Hmm, pretty much any DMA master device could be behind an IOMMU, and in
> a way that's basically entirely irrelevant to the device itself (and
> thus the consumer of its binding). Is there a better way we can handle
> this than repeating such "semi-standard" properties in individual
> bindings for ever more?

We did that for pinctrl-* properties which I was somewhat lukewarm on.
I think a lot more nodes have pins than DMA, so I prefer to keep this
explicit. We do allow more than 1 iommus entry which might be device
specific, so somewhere we need to capture how many are allowed/valid.

We could define a 'dma-device.yaml' schema and reference that on all
DMA capable device. Not sure that saves much though.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
