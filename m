Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF72D83A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:26:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xwe2JJoYiV07oU/p13rEEZOexcwDJmqocMGZFmbTiDs=; b=hSWiDHX1D7YIWU
	7UFwoOtWmdk1h0kVkesu+Q7p9nCcv0mESEuO79Ei35eLG4+U2aepoa14yXrse31yufvKjsHRfIYTf
	O4zyPqHDe57DfWQzA38U2ynh7SRiHHrffPptJIShLXWIX7kbdSaycIi1/G9Ub9OE2ZY8bG6n7LRZs
	pAQZwNAfSI1ap4gnalJkuKzsfM4WhktiQEFBeof9DcwqACOGEGa4O+6BidX5jCEFY2FULFsQwcsWL
	ar1qM8xaTKnnqa4n9WoNispxxZNEZ1yEMzLzhLN9kdCpcBBT+UlAMstazGglLNcAEwsQzj7iq1iiu
	5yKvFnPpQFk/GcWdte8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVGP-0003O4-5U; Tue, 15 Oct 2019 22:25:57 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVGB-0003NH-Ak
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:25:44 +0000
Received: by mail-oi1-f193.google.com with SMTP id w6so18237212oie.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 15:25:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tpZzHubzWvtT+e+zyO26iki0QI2tO46rJ2oh72lmgVs=;
 b=pK0hsutsYP0XIqTJFHWgb/aoJj9eL6f1wiM89aDT1HyNOSRUTh9aYW18Cfj7qzIODo
 e+BnXVWAMYfLHBixWx+opP+FXY3FMmePctuS5fvbMJTUSTI2IE9V0R9ATX6jX/tPiuEz
 8Cw4slvaSzEeJCApQ+6z1EjPcD/d2ErVx0SQTMhAMYcvLtRwEdH4gvk/i+oZ1leBGytL
 7AeuXgrxG8g6p/u408VOJPWsYFokxOCnJbRNRVBwifhpyj5KFfmrDnvFQskQTnpk6vc3
 0OQyfBH2BNiR23Wef3XCt8JQY9dEokRJ3B7UjivKXBJZp+72mf5OEkphZwWUgXQVKJ3t
 UnvQ==
X-Gm-Message-State: APjAAAUI3B/Rm+yTZHZK8H0Qil3HFKUdlT+b4Ey+uFsbFoH8hQkLzcNY
 17qYbxIRaYAW2a7ED7fg6w==
X-Google-Smtp-Source: APXvYqzXJ6yRVpNf0oqDJd6fjxHnHGZXaCrTI1YnhJhr065Sbh5/U0tQmOOWaN3izrkWT3c6WMXQMg==
X-Received: by 2002:aca:fc41:: with SMTP id a62mr783767oii.92.1571178341934;
 Tue, 15 Oct 2019 15:25:41 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 36sm7085167ott.66.2019.10.15.15.25.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 15:25:41 -0700 (PDT)
Date: Tue, 15 Oct 2019 17:25:40 -0500
From: Rob Herring <robh@kernel.org>
To: Nicolas Ferre <nicolas.ferre@microchip.com>
Subject: Re: [PATCH 1/2] dt-bindings: sdhci-of-at91: add the
 microchip,sdcal-inverted property
Message-ID: <20191015222540.GA13117@bogus>
References: <4d269f30b1122487a2b5c8b48e24f78f2b75a509.1570537903.git.nicolas.ferre@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4d269f30b1122487a2b5c8b48e24f78f2b75a509.1570537903.git.nicolas.ferre@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_152543_370609_3714EE6A 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, adrian.hunter@intel.com,
 Ludovic Desroches <ludovic.desroches@microchip.com>, robh+dt@kernel.org,
 ulf.hansson@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 8 Oct 2019 14:34:31 +0200, Nicolas Ferre wrote:
> Add the specific microchip,sdcal-inverted property to at91 sdhci
> device binding.
> This optional property describes how the SoC SDCAL pin is connected.
> It could be handled at SiP, SoM or board level.
> 
> This property read by at91 sdhci driver will allow to put in place a
> software workaround that would reduce power consumption.
> 
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> ---
>  Documentation/devicetree/bindings/mmc/sdhci-atmel.txt | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
