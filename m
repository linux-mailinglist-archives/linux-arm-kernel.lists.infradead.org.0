Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F0F50488
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 10:26:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fPWO1XmT0GC4ePo+DNV6yikmpzn3l/InlhTtG94zkJQ=; b=F2nwaf/SVEShTD
	dEXxnbbcWQKAWWslInQrKZLM67jvQL31UoE2ihqpLLxzKwjmqU6//LPNyWdb0lRwkiEXt5RIGZQQP
	Qkv0yqq357RDxg6KOCVBIZ2Usztb3aUk6QlqnP/7Ld/LTg9So2V4CEGGewWQObMgFyHJNLdfbxY5B
	Fj8wDaiWQgL1IXheciZvq+xq/D1IIEg9IcG9eKujKlXJTk9EGcoL6Hhti7V9WckwrG0JuXKg8cPkr
	tQPZVJk1b8/Gi641kD36DCO+oyFlkqxpTyU3YQXANovrUk2O6Po7/KoxqRv315eBcc+BTpLZlwWDk
	rBjqrxsdubQBKFZPpEQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfKJM-0006tn-6H; Mon, 24 Jun 2019 08:26:48 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfKIa-0006VO-AF
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 08:26:02 +0000
Received: by mail-ed1-f65.google.com with SMTP id d4so20439979edr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 01:25:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DFx+u8Hv+BOb0EK9xMZmf7jmPmizuag84beBkFgrFP0=;
 b=gep15XpDXr1n/wOhQjdhvjCHJ610gbgJPqEKxlT1UY5VyI+VuzVEo08IyuPZzdnum5
 wREwon2ybwqkc4dV17DACiPEr1AIUj5oTVdnFB0KJ7t03UteBzVp2lUJIWUWGyGbKXB0
 zhnTBnzEzerCM41ETTOCctDmluIIN0EvcPxymT2D/Y0UkUQGCuI6IBBltzHkGbpeKtL5
 lDzrMxWCJ2DDMpA0+9Go+G7EFyOrtDuWc2AI1JrWuji6PVNecpRJqyOSkv+cnyjYV1UT
 cxM5soynl5m0v2be04CL/NqT/UJCjDTxePzVgKULmP+vpTe0Dmqtc70IZi6/uCEiB7GC
 5W1w==
X-Gm-Message-State: APjAAAWDt+pP81kVLyeFjpsFF6vmf6pB7y66WD/uH5T6gPMVqmAw4p/L
 Y23HpYBxsyYCvktuyeccoWmAbc6SlOA=
X-Google-Smtp-Source: APXvYqzPdOoRfKEPuuKKs58Xi9E/kYjACIsRwz+MEG7SbrZfGs/JWNn0hAvIbhOi3cbwCOvZ8A2yfw==
X-Received: by 2002:a50:9157:: with SMTP id f23mr51841618eda.79.1561364758041; 
 Mon, 24 Jun 2019 01:25:58 -0700 (PDT)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com.
 [209.85.128.48])
 by smtp.gmail.com with ESMTPSA id k10sm2470906eda.9.2019.06.24.01.25.57
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 01:25:57 -0700 (PDT)
Received: by mail-wm1-f48.google.com with SMTP id w9so13668457wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 01:25:57 -0700 (PDT)
X-Received: by 2002:a1c:f512:: with SMTP id t18mr14397236wmh.47.1561364757389; 
 Mon, 24 Jun 2019 01:25:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190620010127.12071-1-andre.przywara@arm.com>
In-Reply-To: <20190620010127.12071-1-andre.przywara@arm.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 24 Jun 2019 16:25:47 +0800
X-Gmail-Original-Message-ID: <CAGb2v66WOTFvXWSSGwtLh3hD+N4CeJkFEPnCMXp0FuU2h=LS9Q@mail.gmail.com>
Message-ID: <CAGb2v66WOTFvXWSSGwtLh3hD+N4CeJkFEPnCMXp0FuU2h=LS9Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: properly connect USB PHY to port 0
To: Andre Przywara <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_012600_351241_E35DD871 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Rob Herring <robh@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 9:02 AM Andre Przywara <andre.przywara@arm.com> wrote:
>
> In recent Allwinner SoCs the first USB host controller (HCI0) shares
> the first PHY with the MUSB controller. Probably to make this sharing
> work, we were avoiding to declare this in the DT. This has two
> shortcomings:
> - U-Boot (which uses the same .dts) cannot use this port without a PHY
>   linked, so we were loosing one USB port there.
> - It requires the MUSB driver to be enabled and loaded, although we
>   don't actually use it.
>
> For those (64-bit) boards which use an USB-A socket for HCI0/MUSB, add
> a "phys" property pointing to the USB PHY 0.
>
> This makes it work in U-Boot, also improves compatiblity when no MUSB
> driver is loaded (for instance in distribution installers).
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
> Hi,
>
> I have the feeling this belongs into the .dtsi, but cant't tell for sure
> how this interacts with the MUSB driver. If need be, we can always pull
> this up later, I guess.

Have you tried if gadget mode and switching between gadget/host mode on
an otg port still works? AFAICT that would be the main thing to worry
about.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
