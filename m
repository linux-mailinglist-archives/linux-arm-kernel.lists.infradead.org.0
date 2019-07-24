Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2BE73BDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 22:04:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VzzwdhVOU9iZoDArjqKz41mKO9XSKvi7Kkj2DSAxoAY=; b=V42E7S1rjGp6Pe
	uqzORXv3KP/5IqnzTfNaxQi7Gpl7JyflZ/JdOUc7orMLV0tRjfqvhz8H/fs3yqVnsUZrFS8VB7aoj
	DAhQ/OPbw8/QuIm2tPejlmJIVKnnZmFbs33D0SfyMHlDR9DBpZFMVT3URpT42J66+4iny3WSkHynx
	Fgp/CFEW93PHDVwGhh1JCiOIg9Ai9Kya6ASzbye3xR1DLtyFwD9LzN7G9sEcwcU3X2aZebh3AvPJX
	jpiHWwLu7CCfuR6LfMYaVVc1izCZ8B3gP68x5yLUoA5NNDR/geZR4FZSswM2NzIntB4y5OcOB4eov
	NA0Des2td95BpG5gp61w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqNUx-00089A-O9; Wed, 24 Jul 2019 20:04:28 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqNUa-00082a-1I; Wed, 24 Jul 2019 20:04:05 +0000
Received: by mail-io1-f68.google.com with SMTP id h6so5695792iom.7;
 Wed, 24 Jul 2019 13:04:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2uycp2gga3gM+KOCP4bhhbNNGiztJcFj+cixg7Ny5a8=;
 b=pMTGccFh5wiNY9luuLxBrHTlONMJT5Qjzteu6IWfzQbXXcomQLdAxP9WBqpPlGRBXW
 Oe9fqEHtYcFLWIwoSUgi9d0DDSv3ivqsO37knjn5KTohm8sq2TtG62Q6g3ZE1xHLJ5Q7
 Li67YxmC038eutlCIzLEJ2+m/SkHLqgyGdCm3mjYtt+sPV8FHqka98KPIEsQhp+phGDq
 SBSzqKIXSeR/2SCbXb4vNuMWEYSUuoyloGmmdRl0iso6zDTFSw5VzwYBwOyy9D7REebf
 knjMmWz4LwJ9OfSsam9i6SM0kaxv4U60eXB8nmSoPiqkK0C+t0F3CVMgEJByLLegzqAu
 jSpA==
X-Gm-Message-State: APjAAAXPdLbdRnQmo6sblvkPaVh0pQrZirG21orUI/NScmux/d3qWbiz
 pb5StS1Vk56BPbicWcBiOw==
X-Google-Smtp-Source: APXvYqxVgzs7Z4nbFzTiE8Dg1WGnxjhQTgBQ3UGeU4dqV15F3jI/eEMSMkTn8E1P1ohSUYz0jjYwFg==
X-Received: by 2002:a5e:c00e:: with SMTP id u14mr46190740iol.196.1563998643068; 
 Wed, 24 Jul 2019 13:04:03 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id p25sm37965705iol.48.2019.07.24.13.04.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 13:04:02 -0700 (PDT)
Date: Wed, 24 Jul 2019 14:04:01 -0600
From: Rob Herring <robh@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH RFC v1 1/2] dt-bindings: mmc: Document the Amlogic Meson
 SDHC MMC host controller
Message-ID: <20190724200401.GA28867@bogus>
References: <20190708173330.13217-1-martin.blumenstingl@googlemail.com>
 <20190708173330.13217-2-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708173330.13217-2-martin.blumenstingl@googlemail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_130404_080670_B6E1BCF8 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 jianxin.pan@amlogic.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  8 Jul 2019 19:33:29 +0200, Martin Blumenstingl wrote:
> This documents the devicetree bindings for the SDHC MMC host controller
> found in Meson6, Meson8, Meson8b and Meson8m2 SoCs. It can use a
> bus-width of 1/4/8-bit and it supports eMMC spec 4.4x/4.5x including
> HS200 mode (up to 100MHz clock).
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  .../bindings/mmc/amlogic,meson-mx-sdhc.txt    | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
