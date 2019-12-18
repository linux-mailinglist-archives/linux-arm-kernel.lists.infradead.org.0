Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A30123C96
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 02:43:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+bSbLqJKzbpvA0DfYQqhbyMeq24aOEjUkZ/TclL4GMk=; b=mVmJ4MVfG28EFX
	DucKunpewKOfVtOsQMhLGhnaa+DpdI4z9ukNOCDOY9wUVWD7/WIkBwfp0enJkVlN4FVHVqeZqOBSR
	PYyhAD+f8Uf39IHhtSdCJuUS+teXJWt0wwUjw5KLSqGB+J/6HSH7/vMpGvovFww4zJSuv2Nc12XvZ
	PoIvMvl8EdB+69Y5qJ9sH2ZSIJj3yaiGR/mQhOzRWi8KaV4M9XP4Wejx/CRQLNrgIZo04wvAuT9hx
	+XKuUzXs9nvzILkNbEMX3iFzOlNUy2B7wojvMVPCsi6BS63U2u11QE0nnJN7gHKX7fsZIiC0lq7tS
	uJ7Yo0zrveCDFhIaUxBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihOMn-00020r-Bj; Wed, 18 Dec 2019 01:43:09 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihOMV-0001vx-V3
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 01:42:53 +0000
Received: by mail-ot1-f65.google.com with SMTP id h20so332544otn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 17:42:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ew/OWcoZF8yAgM/pHrVPmiOIGMsRwuMYCKV/xzngD90=;
 b=o1rXMSN0uuyg1lJvoL4N6Jm6eC3hR5YPyz4sLD28obJWcoSWhhIDy4KolLszURYrZE
 wt/4gJW+nkkE+T1EkOTnrClZYPdW8fcQEGz8GPAkVBqGdYQkvixVSwbr6P3V6zHykdrk
 2KKRusQqNhEfVnH3Gt/3dYJIEWhzYV8mG2g97RK5kAO13vJsTkayCxzPozujQHv9uZVc
 lTJuxVxlmnLf7MlB/Rtcu71qTiNHuJqCMA3N7t4H3Jalbz28e+KlfCNDliYrMTTJA1bO
 OyYG9H5lu5BFX4hopW4ROYFcKZDvSIN0BjWp2AG+3IIj8wo5nFOrbkdmJbXwSQraWf8e
 UzvQ==
X-Gm-Message-State: APjAAAUWt6pXq2kdx+OHJI+kRzOZICMBNi+Fw7z65tX9+mX7hOXV83yE
 k/iGQU062/gn/V2aWNPr3w==
X-Google-Smtp-Source: APXvYqz4booIX6RD8QkPGk4Sna5bs72GY7hrxJWSbqPE1RgHKYa/O3Zi5ymdkbELkLAgRH+mgcnTzw==
X-Received: by 2002:a05:6830:2087:: with SMTP id
 y7mr291060otq.96.1576633370583; 
 Tue, 17 Dec 2019 17:42:50 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z12sm233024oti.22.2019.12.17.17.42.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 17:42:50 -0800 (PST)
Date: Tue, 17 Dec 2019 19:42:49 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 3/4] dt-bindings: sram: Add Allwinner SRAM compatibles
Message-ID: <20191218014249.GA32215@bogus>
References: <20191209093441.50694-1-maxime@cerno.tech>
 <20191209093441.50694-3-maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209093441.50694-3-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_174252_134848_0CDFA43E 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 krzk@kernel.org, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  9 Dec 2019 10:34:40 +0100, Maxime Ripard wrote:
> The mmio-sram binding was added missing a few SRAM sections compatible for
> allwinner SoCs. Let's add them.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  Documentation/devicetree/bindings/sram/sram.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
