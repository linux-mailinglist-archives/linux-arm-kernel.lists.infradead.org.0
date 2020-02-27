Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A7B172A60
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 22:45:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O28o/tjvmBQFDGpuwwFMCtHi1JXhw8h5WNjfFEuLyno=; b=YryD4CCBY022Xu
	4KJj7V5OOAURoo2lNrVkzuItU/oFn7HYkTcrLNlD+SttVcEngEl70p5wev84OA3MKQ/RZ8eexH7gY
	dgWvvXlUxBSVBDOgvjBVowWEXsmEX2N9uiR10WUGA0w7a8IXrw2wYj5TCpfa239P/mS0YvExvF/i4
	9gxbAGn1vNhV7a4gLnZFxrDzLYZqKT782igKnhZuRux3Yuh2fM29TXgJOV80ONJk33+5dYyqMPUGb
	jEyallcmk7Fwmy0crx/VWE4A2Ek52UAh9vrq1l5g6j0J0eZMZWSbJVRbeiFPhf6usuIrmBis0kR5d
	BFY63bz2tHS92zfZaZPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Qy4-0001xM-92; Thu, 27 Feb 2020 21:45:16 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Qxq-0001UF-FF
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 21:45:03 +0000
Received: by mail-oi1-f193.google.com with SMTP id c16so806966oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 13:45:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8K8GxDjHWN8nw5B/MJxXE6qGFFNBAsQvBhfvCisLcQw=;
 b=jERJRArC+VGTCZQWlu1Ftde6wtAu+jOB/m3+NFhnImo9x7oeE3U+A1oXIOdpNOIdXC
 qV8LukvJXmcSaLLYGMvogAC7N7uZVNwQLtyikiJrj50DBZVrOFrSwPRiT2qxpk+0NEFV
 qe0gyQSVIg2nsYOAEaKzFYXOaTNnEd3TwSQGR58kMdVwG5lmraA8eiYj8eHqaOgwIBwC
 NkpWIzxZsmvY3U6PpuCyOmpcncoTkTdGIuPSERI0Ad8qvgMk9t1/SReGukdbMDDqZa1B
 XCQCczBRCpEAwgJLtH7sE8bETbrqySGqHghy0xOOyfnuMY+n160jvA2kIOEV0jtvkbnv
 wFjQ==
X-Gm-Message-State: APjAAAU3IbFpgcPodAQHtIHYQ8OQA4G71uSlVjOQlvsNrNV8QUjUDBhw
 xuipNGLRqyGOcEcNVfmB0Q==
X-Google-Smtp-Source: APXvYqwL/253WG+MaGdQ7iZMlqBjJ/aGplVqi0qJagYe77yQrHrUQ+OOCjtWvPmeGK+9wH55yDWvWg==
X-Received: by 2002:aca:d03:: with SMTP id 3mr846106oin.69.1582839901619;
 Thu, 27 Feb 2020 13:45:01 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h1sm2353634otm.34.2020.02.27.13.45.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 13:45:01 -0800 (PST)
Received: (nullmailer pid 6216 invoked by uid 1000);
 Thu, 27 Feb 2020 21:45:00 -0000
Date: Thu, 27 Feb 2020 15:45:00 -0600
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v2 03/13] arm: dts: calxeda: Fix interrupt grouping
Message-ID: <20200227214500.GC26010@bogus>
References: <20200227182210.89512-1-andre.przywara@arm.com>
 <20200227182210.89512-4-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227182210.89512-4-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_134502_537830_F078ECCB 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Jon Loeliger <jdl@jdl.com>,
 Mark Langsdorf <mlangsdo@redhat.com>, Robert Richter <rric@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Eric Auger <eric.auger@redhat.com>,
 soc@kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 06:22:00PM +0000, Andre Przywara wrote:
> Currently multiple interrupts for some devices are written as one array
> instead of using the DT grouping notation (<0 42 4>, <0 23 4>).
> This ends up in the same binary representation in the .dtb, but is
> semantically not equivalent. The yaml schema checks will stumble over
> this, so lets fix that first.
> 
> I refrained from using the symbolic names for GIC_SPI/GIC_PPI and
> IRQ_TYPE_LEVEL_HIGH, mostly because it increases the delta between the
> original DTS files and the mainline versions, so it's just additional
> churn.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arch/arm/boot/dts/ecx-2000.dts    | 2 +-
>  arch/arm/boot/dts/ecx-common.dtsi | 4 ++--
>  arch/arm/boot/dts/highbank.dts    | 4 ++--
>  3 files changed, 5 insertions(+), 5 deletions(-)

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
