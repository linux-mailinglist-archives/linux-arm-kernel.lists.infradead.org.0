Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D3B17F4AA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 11:13:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJCn/K/QknvS68bKtpZiLeculCw8u94aYdDghM+iIiU=; b=WncOR6DGQRCDRy
	+v9hi45W+DLTSjCsWNe0EbriEZ2004NFXJHp8eFYEDzRxvGzqFQDEoQ4IzItNCOJkOCyG8W5UD4dx
	EBK5kuTF4i4Bj02A4YucHumm8GT0SaeGznPxYN5yzX+6PQaKnKqzZM2TFN1Z0BVuPUVPeTj6RhMzS
	4cA/NYf5Xdc76Sm9XT5MfwHIAXu/UglIcTTjaMkuyf+PDd/XADoBX08sVqDRJYYL3edD+QOYwqJ+y
	QR1LHH0oGUsK0MOseshpSECRYjMdjPIfqqBenny/vME7n0eiuEtxrk/+AU3t/osMoF6o6eunFkvHD
	gFN1ARQwLbMVP0xObuLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBbt1-0002mC-L5; Tue, 10 Mar 2020 10:13:19 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBbrV-0001n3-Ba
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 10:11:48 +0000
Received: by mail-ot1-f65.google.com with SMTP id a9so6375934otl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 03:11:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jCYTtqKtRPChhEMP3SdFyK3zUQ497N5Se4SQbI0RklA=;
 b=ibOxsz8RqHH4hdcNy1GB9DyjVsi3+TWRhDzxfmLYWSo2FT2IfJse0Yb9VoboHV2fMd
 JUQsOWEtPR3kNEJXPSCf/YDpw839piZ/zxNRIngzy+FrE6sjrQ4AwrsStckdPZg4NW23
 LGIavGQ3aUqQhciyRdVeflzlnUJfVJeaIpDjsr/2TT/N+CG727swB2xH3o1mLGvXblSV
 GQNstsA7i0M2QNKy8HZxVZtbu4mVDsGJzrKmHtW46KzSlzjgVN9QlKGwu3P9NsulF+Vw
 dFtRu6TCCEQzblN/PJD94vsKFDH3AsaKUwlc8zsMAPyPpHjOGwdtxSPDWQohBEgPKoXx
 KB4g==
X-Gm-Message-State: ANhLgQ1Itpc949rwyZ5FHPHQdMmelsNp7SLS7nhpNse9WTAISrdfaYTk
 rex7RL3pzxoLSGBBKfB6BSPzOLJE+NB/KbtpeDg=
X-Google-Smtp-Source: ADFU+vssgAzcj0QjNkwqKXMBxmZbVcV4/65kDwlBPN53wWEVCESi0Az4nNTiu33PAlepRYJQFKcqU7lq18xKx1kM570=
X-Received: by 2002:a9d:b89:: with SMTP id 9mr16497345oth.297.1583835103460;
 Tue, 10 Mar 2020 03:11:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200306102301.16870-1-geert+renesas@glider.be>
 <CAJKOXPeknZDrA7cXbznvrcCoV4hFfaUAtd6mzHO+dbepkzueQw@mail.gmail.com>
In-Reply-To: <CAJKOXPeknZDrA7cXbznvrcCoV4hFfaUAtd6mzHO+dbepkzueQw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 10 Mar 2020 11:11:32 +0100
Message-ID: <CAMuHMdVhOECZPMno3vgw4x0fo9yX5j0G9rss1QvHFyi73RRXVQ@mail.gmail.com>
Subject: Re: [PATCH] Revert "tty: serial: samsung_tty: build it for any
 platform"
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_031145_434874_805BC40F 
X-CRM114-Status: GOOD (  20.66  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Kukjin Kim <kgene@kernel.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On Mon, Mar 9, 2020 at 7:09 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> .On Fri, 6 Mar 2020 at 11:23, Geert Uytterhoeven
> <geert+renesas@glider.be> wrote:
> > This reverts commit 175b558d0efb8b4f33aa7bd2c1b5389b912d3019.
> >
> > When the user configures a kernel without support for Samsung SoCs, it
> > makes no sense to ask the user about enabling "Samsung SoC serial
> > support", as Samsung serial ports can only be found on Samsung SoCs.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> >  drivers/tty/serial/Kconfig | 1 +
> >  1 file changed, 1 insertion(+)
> >
>
> Discussion about removal and then re-adding of PLAT_SAMSUNG and
> ARCH_EXYNOS dependencies remind me [1]: "[RFC] Input: tm2-touchkey -
> add hardware dependency".
>
> In both cases the driver is clearly only for Samsung SoC or even for
> particular device, although one could argue that touchscreen could be
> reused while re-usage of serial IP of SoC is highly unlikely. My
> understanding, maybe not correct, of "depends on" syntax is a kernel
> source code, building or running dependency. I do not see it as a
> hardware dependency. Although Samsung S3C/Exynos serial driver will
> not exist outside of Samsung SoC, there is no kernel dependency.
> Unless I missed something...

The touchscreen is something different: I can easily mount that type of
touchscreen on my own board, while I cannot integrate a Samsung serial
port on my board, unless I'm using a Samsung SoC.

> I understand and agree with concerns mentioned in [1] and in the
> thread here, that removal of this "depends on" makes life of
> distributions and generic users more difficult. To solve this problem
> I was thinking about adding weaker type of dependency. A hint about
> hardware dependency. Something like the "imply" is for "select". This
> did not happen, therefore I still stand on my understanding of
> "depends on" thus I gave positive feedback to Greg's patch.

A weak dependency can be expressed using "|| COMPILE_TESTING".

<(not so) wild idea>
During the past few days, I've been giving this more thought.
And I realized we might as well get rid of pci_driver, and just have
platform_drivers that match against "pci<VendorID>,<DeviceID>" (yes,
this is what real Open Firmware had in the compatible property, cfr.
http://users.telenet.be/geertu/Linux/PPC/pci/ethernetAT4/).
That way there would be no longer a build dependency on CONFIG_PCI, and
we can drop all "depends on PCI" from driver Kconfig symbols.
But would dropping that dependency be welcomed? Perhaps, as "everybody"
uses PCI.

Now repeat the exercise for Zorro, TURBOchannel, NuBus, Sbus, PCMCIA,
..., and wait for the outcry from Linus suddenly seeing lots of
questions about support for hardware he can't possibly have in his
machine...
</(not so) wild idea>

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
