Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 230D81028D2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 17:01:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aM+AIi2cAXggtZPtERCAjeV5RZ+EhByr6A45oHl2tCc=; b=KEm1stWmdCF4aA
	vAGQCeOhtC95AfZTb0dTbJAHAqixK/PHKys+1QsJIbI9aArJdx6R0iVwtbHjTuKVMZUAefUqwzFKK
	OYADczzi5+CTMOUlzPSoTgsP98sA+LVuEPOszP6nNNINhnzrQBU1jrcLVHFKfkKaRgceoPgsUqspb
	7P5/ZF5YN2AszadwkLfI64NP83vFELbwyAEunxt4PHohIl84h0zzf9UGNPifIMinCNjYj+x4K6SsR
	38n9exLFTzeVCLSnV7xA4tt8uRuV+gG/ly0WKqYVqEXIH4NhwPS1crI+TOMquIn6vxZ7g14GM04Fe
	pYFubWo1ySFDKCKdqjwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX5wX-0004rl-8P; Tue, 19 Nov 2019 16:01:29 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX5vU-0004lP-Kv
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 16:00:26 +0000
Received: by mail-oi1-f196.google.com with SMTP id 14so19352241oir.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 08:00:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lOp09REXBJlIhxRQLG3yF3pkOzVMqVXKGYr5zOkYKTU=;
 b=ajLbjqJUbqpRww6vL4T9bYRRybjaKdUVsIn/T56OfM/2YNEtW6afpD88hUYzuYk/NN
 jLQOLb7VXV1uzOMsTEJJE8hq2fMxlzLV1nOb2gEF6bmwUp4ZOtYnzakmBhlGlH4oX0dB
 mo4AERIWMe9C8pAM+1lK+1VTVxxrysW/GnNwfIPpxo3kRpgWRINtk2mGXdc1cgAcjtUX
 qx6IGADaC/xoODp1c6m6x10YUDA2/00H2MELVIdSjZ0WQNRLyf2Yh+zILK7ijO/ydNrF
 apCUDdy4G2sd6b/3GFDsdI17uer/16gSEreUr57hwEJoEH7QRUImHGu8lPMFAPkus7ON
 Hweg==
X-Gm-Message-State: APjAAAWICc3i8YmNsIapkID3H/gtUoohLwslrlNGhlxKcLRVEWSBH4l2
 1WKh0/ZZF4ttJFtMmVf9rvYoH/SrYAoOhKEtxRCCViQz
X-Google-Smtp-Source: APXvYqyFjVcr3DV/kDkPHFaPjGoNOAPUlx3qgBTMVdhzS/Ov2hib4acxOvn1dSc2R4bN1wN/M0QqvauTflblBxgZCm8=
X-Received: by 2002:aca:fc92:: with SMTP id a140mr4573964oii.153.1574179223502; 
 Tue, 19 Nov 2019 08:00:23 -0800 (PST)
MIME-Version: 1.0
References: <20191119144315.11261-1-krzk@kernel.org>
In-Reply-To: <20191119144315.11261-1-krzk@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 19 Nov 2019 17:00:05 +0100
Message-ID: <CAMuHMdUnn8uYyQ+D=6rp1+R1sE_W-SS1t+EuNHm=vWaKQ9Z6tQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: power: Fix path to power-domain.txt bindings
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_080024_686788_A60F75AF 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-samsung-soc@vger.kernel.org,
 Kevin Hilman <khilman@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 etnaviv@lists.freedesktop.org,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, USB list <linux-usb@vger.kernel.org>,
 linux-pci <linux-pci@vger.kernel.org>,
 linux-tegra <linux-tegra@vger.kernel.org>, freedreno@lists.freedesktop.org,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On Tue, Nov 19, 2019 at 3:43 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> With split of power domain controller bindings to power-domain.yaml, the
> consumer part was renamed to power-domain.txt.  Update the references in
> other bindings.
>
> Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Fixes: abb4805e343a ("dt-bindings: power: Convert Samsung Exynos Power Domain bindings to json-schema")
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Thanks for your patch!

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

>  .../bindings/clock/renesas,rcar-gen2-cpg-clocks.txt           | 2 +-

Please note this file is no longer present in next.
But robh/for-next still has it.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
