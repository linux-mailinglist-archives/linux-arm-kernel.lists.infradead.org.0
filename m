Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 275EF1F9E57
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 19:26:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/djp3PAjv5Rh0NCzCQ/2OT9yHVv1FCPirjikJTM/uQ0=; b=P5o/OVliPGGtR6
	wPlJOXzfZvouhir67qTbrCKOxsUuewMzQUjKgM8XgepyLYJXwXFZmw53PAhATd3R36exTtqam+IEU
	qQMXmsEW/RGruOw6NIBay6J21Eu+eWuE6VSd8o3ah82rh7B8drRQYOxK1dCOhN6GAcaBhr0t8kmL3
	RggudZ0WBMFllD+xEvnm7z0xQiXnBmxMawo8G+yJD5ypv7TVJmB0+AyYGAvwSyMYkWlTDJZev8QbV
	cBrIGYeEImSJQr2F0QEbiDX+8yU6tMvcn9OZC5/2jN72el4+X30kABfWRMabd3vlKYkCGn1ZJSHvl
	Dmkgn/ZIt5tuH0thHCAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkss4-0004kV-IG; Mon, 15 Jun 2020 17:26:08 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jksrt-0004j6-R7; Mon, 15 Jun 2020 17:25:59 +0000
Received: by mail-io1-f66.google.com with SMTP id r2so285218ioo.4;
 Mon, 15 Jun 2020 10:25:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dS/bdtyItiFAm48ZgF1YTbFmFfDKJ+FCEj9MlB0IAp4=;
 b=hWZtrTIviL9HuEh2J9g3xQ4cCd0fHYkoY/P/Ijy8NONUBJGxeahy2z6cMxhEiYBSRB
 wdv1G6ZtxYSE3aQx3sYAfuDwTpCpi9+2UJjGZteVIrvneTQDUdEVxnOtLyR88lGVRCyw
 xY53io7ZBmbb4lk83bkVUFaFMSf090mz3T1j4vptg9rC1bwlKfCVGFkFeHmBhU91rBuB
 bjsIwifCAZRHJjGEWC1iSs/ytuyrkJNGdnTRhgZHwRuVbiutwLpnq1hUMoLJMb1Ralme
 mD4XHQf03aXSNOsF4mTR8raxNiYQelxf8ZD57YvH3bSuAwb/VSGvpENtAgz1LuyzffuO
 y4ew==
X-Gm-Message-State: AOAM5329i5TyVAcwnydgt7Z2lrV/SuJHa99cW/fJB47Q7XszBSfi/KuV
 +YY7mI0YMefM16U31DPisw==
X-Google-Smtp-Source: ABdhPJypddMh0DtNo4yEvMLEEWMso2FJiLJSg0Shc51QJu95Vb3Bgqf+obC4mOb9N+9IlXsrnh6G0Q==
X-Received: by 2002:a02:6c8f:: with SMTP id w137mr23100744jab.38.1592241955783; 
 Mon, 15 Jun 2020 10:25:55 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id 2sm8612606ila.0.2020.06.15.10.25.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 10:25:55 -0700 (PDT)
Received: (nullmailer pid 1992268 invoked by uid 1000);
 Mon, 15 Jun 2020 17:25:52 -0000
Date: Mon, 15 Jun 2020 11:25:52 -0600
From: Rob Herring <robh@kernel.org>
To: Lukas Wunner <lukas@wunner.de>
Subject: Re: [PATCH 3/3] spi: bcm2835: Enable shared interrupt support
Message-ID: <20200615172552.GA1978070@bogus>
References: <20200604034655.15930-1-f.fainelli@gmail.com>
 <20200604034655.15930-4-f.fainelli@gmail.com>
 <20200604041732.7ijkvad2yadtgjid@wunner.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604041732.7ijkvad2yadtgjid@wunner.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_102557_875167_99810AC6 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 06:17:32AM +0200, Lukas Wunner wrote:
> On Wed, Jun 03, 2020 at 08:46:55PM -0700, Florian Fainelli wrote:
> > +static const struct of_device_id bcm2835_spi_match[] = {
> > +	{ .compatible = "brcm,bcm2835-spi", .data = &bcm2835_spi_interrupt },
> > +	{ .compatible = "brcm,bcm2711-spi", .data = &bcm2835_spi_sh_interrupt },
> > +	{ .compatible = "brcm,bcm7211-spi", .data = &bcm2835_spi_sh_interrupt },
> > +	{}
> > +};
> > +MODULE_DEVICE_TABLE(of, bcm2835_spi_match);
> 
> Maybe I'm missing something but I think you either have to reverse the
> order of the entries in this array or change patch [2/3] to drop
> "brcm,bcm2835-spi" from the compatible string:
> 
> __of_match_node() iterates over the entries in the array above and
> calls __of_device_is_compatible() for each of them, which returns
> success if the entry matches any of the device's compatible string.

The order here doesn't matter. I'm pretty sure we fixed this years ago 
to always match to the most specific compatible.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
