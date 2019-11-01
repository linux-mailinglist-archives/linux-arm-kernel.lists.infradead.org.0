Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32183EC3BA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 14:34:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=obIemySqMMGrQLqdoB4bgRmq0MqIvNDWiZVmprI++Pc=; b=b+LgtvV1d4rard
	hAjpI4jG1V876RIzUJehqLkcNfkn/jHmCrW8Stf4a4t1bFKSpSZOujzAKwtOjjd42MtetCrUMBFa7
	HdThVNpnVwsb42UL15jugTgqa7UxgjQXbXxgY+VPqqXa7y0SRAVytQyVcsaL51JVTGf+CmjPV8gKG
	H06OYbYNCPcKsr6LLsq2kk1BesTxMYa5ARSbq++sbXgek4JiuuYJ6FZoQ+2GOZmAzjC1B7c4ZiBuS
	moPFFYnnfdkuDAvuy2/G2SHSTevEmWh38llt3FPNjOdAPVr6lVmkluSvdcXnkZiHd5yWcvQFNxv3I
	/ILrgMn1iWtYcryYKIGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQX4X-0001DV-Ta; Fri, 01 Nov 2019 13:34:37 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQX4S-0001CZ-GT
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 13:34:34 +0000
Received: by mail-oi1-f195.google.com with SMTP id s5so8135907oie.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 06:34:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4fdJ5cMij5TvHogILeZV/uBPm8Fei0lU7mXn7gZR+xg=;
 b=ml+mpEYUHVAlp9rtJP8zkw+HHhzdodiqMluR8hObWay+ZCE83FNa7/SjAhnwI4Tkd1
 QwFQuh72HWPYibAKRrfMGEDZ9QcxVR4gesw9x5sOyjyhfRLLeKIe68P0fUSpAA4+PUrC
 vh87MqgGcFXnFcznDK88xtS63v8UkVm1kSFvl+6Qi2XzDkXE9APaEwcQGb8fptizvmcC
 +ZocsbiLvgdcINxZPjEKKIdFYtS+VR1/mGm6+PRsptEll3USgCvB422BL3Fe/EitaiUf
 JoyOy210qo181YofB3z1mlbDFLrhkVBp6X3fBg2AEOu5o5cnioa467ENPdcYxT8VpoAY
 Me0w==
X-Gm-Message-State: APjAAAXQMXKjyn1It5KnfAWRk4DHWfOtjlOI4/AwprhzWzDfOq0u28rI
 EMrT4zPC3tPVJbjBtsT4hg80zRiQr5yiY2pCUvNsALzg
X-Google-Smtp-Source: APXvYqxS1zsISt+Nc8b5MZCJ+O+mzhKy8gwuIrfPCXiNV5T0D/z1RuckyJnw1hs8wTnmI+QMDPlgzyJ7pCpfMctXDPc=
X-Received: by 2002:a05:6808:60a:: with SMTP id
 y10mr2073033oih.102.1572615271436; 
 Fri, 01 Nov 2019 06:34:31 -0700 (PDT)
MIME-Version: 1.0
References: <20191016143306.28995-1-geert+renesas@glider.be>
In-Reply-To: <20191016143306.28995-1-geert+renesas@glider.be>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 1 Nov 2019 14:34:19 +0100
Message-ID: <CAMuHMdWvoY4H-mmtmkRT9EAekBUFQ2QMOSKsqOr03ury0pksfw@mail.gmail.com>
Subject: Re: [PATCH] soc: renesas: Add missing check for non-zero product
 register address
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_063432_548555_FE3BB3C8 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>, Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 4:33 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
> If the DTB for a device with an RZ/A2 SoC lacks a device node for the
> BSID register, the ID validation code falls back to using a register at
> address 0x0, which leads to undefined behavior (e.g. reading back a
> random value).
>
> This could be fixed by letting fam_rza2.reg point to the actual BSID
> register.  However, the hardcoded fallbacks were meant for backwards
> compatibility with old DTBs only, not for new SoCs.  Hence fix this by
> validating renesas_family.reg before using it.
>
> Fixes: 175f435f44b724e3 ("soc: renesas: identify RZ/A2")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Queuing in renesas-devel for v5.5.

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
