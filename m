Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC0E5502C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t3QatRvJcN3JqhLsB4C2sZ5z26axW3ze/NRhnd1vJVs=; b=WFRMgnPOMgEX2n
	Le4Q8QrMxVXqsOmUivcD0qxCVKJSgIRUJ5z8dyOaM5q8aOs5aRJh7dJR4DDy3us65qtJ2IzEf/QPf
	+KfU9s5jXs5Pv3/isuFLAqAkxH0H5K1NiMshCeyp8w6ciA+eP8Jv8g+yGCXE37yZTSwo/+JnhY81i
	Azcf3at3BotdQfz3HBhFiKtmZqKS4HBaRjIpCRwDU4nf96sp8TFYDjrEY6fv6VZ319vtPb8UMnepx
	c1PrraDk9p8Ka1qlAVMR+4+OrN53zfECaQa1kBCe8XgMwKMp3TnqTNitIIxy4eD+gLh2qvKbj006C
	07CSOrs2gaVYLwtmzYEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflQO-0006HG-AN; Tue, 25 Jun 2019 13:23:52 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hflQB-0006FM-99
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:23:40 +0000
Received: by mail-ot1-f68.google.com with SMTP id 43so12396985otf.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:23:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V/HoNCBy6oaaKzj/AJjkqXaJhdI4AhH9UXxBfsvy6QM=;
 b=sGUvHZwNftJuqxpXUKBZARCr7nLRos/7+j9ssTePomLv98R46m8eXeGTi75CMHYoMt
 bemmhQgte93XnshOaXJ5Z6W1dWOUf0ZBMEhSXJ/Fza2x2TzOZeL6uCzep0r5kcyZYiL2
 jsGD03t2ic9g+S4UjgOgcnNdEVkF1jwZHhwfztF/92P0HlW4Q0U8XWH11WpmXgqJyUFz
 7+9w8XDUu4eJhegn6Pb9joYxeNEIVL7M1TWuHXNvaD0SYKu/VcU3AMRGyeU7idGBHn4x
 +9Nw6lQw4rcNk0sR3hFdSbx8aG4of9Ugrdp4Vt9q89+UYZZ4WplwQalRPqxMLJ06Tq7w
 fpyg==
X-Gm-Message-State: APjAAAUiKKjQhOSXxuiGcHBu2kbe6OfyGq299JiXlkUF0gLLk57CJeXE
 /XxlYfOE+MeCR7L4cHOOQKznemEtyWipOb3LO9o=
X-Google-Smtp-Source: APXvYqwCh+xqlirpWox1xCYMlxP741knDKudJm0tvoxCfTOQbqPl8UcUqa7otd/VmaNSbjNiooF5BU1EPzx+vu0mf10=
X-Received: by 2002:a9d:2f03:: with SMTP id h3mr91466602otb.107.1561469016656; 
 Tue, 25 Jun 2019 06:23:36 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561105093.git.horms+renesas@verge.net.au>
 <20190625124924.ubpi3pxwggbz5cbw@localhost>
In-Reply-To: <20190625124924.ubpi3pxwggbz5cbw@localhost>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 25 Jun 2019 15:23:24 +0200
Message-ID: <CAMuHMdVj5G6-m9iqQQM5nAQZbhC=GL0DtgUKXff7UBQ8uNwmBw@mail.gmail.com>
Subject: Re: [GIT PULL] Renesas ARM Based SoC Updates for v5.3
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_062339_323550_9DE9F45B 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, arm-soc <arm@kernel.org>,
 Simon Horman <horms+renesas@verge.net.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof,

On Tue, Jun 25, 2019 at 3:10 PM Olof Johansson <olof@lixom.net> wrote:
> On Fri, Jun 21, 2019 at 11:12:04AM +0200, Simon Horman wrote:
> > Oleksandr Tyshchenko (1):
> >       ARM: mach-shmobile: Don't init CNTVOFF/counter if PSCI is available
>
> Merged, thanks.

Thanks!

> Note that in this patch, code like this:
>
> +#ifdef CONFIG_ARM_PSCI_FW
> +       if (psci_ops.cpu_on)
> +               need_update = false;
> +#endif
> +
> +       if (need_update == false)
> +               goto skip_update;
>
>
> Can either be replaced with a goto under the ifdef, or at the very least, no

I believe a goto under the ifdef may cause a "label defined but not used"
warning if CONFIG_ARM_PSCI_FW is not defined.

> need to do a 'need_update == false' -- 'if (need_update)' is sufficient.

Yeah, "if (!need_update)" would work too.

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
