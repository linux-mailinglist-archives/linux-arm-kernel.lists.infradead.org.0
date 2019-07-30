Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F20107A3D0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 11:16:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5A7ZoAWuqtlotrv18ffRAYDzADH1QKVfWekXPE6Ivh0=; b=YGRfGmEJXbqIom
	P/aN+Qjh1V1whcuFyoQJL/Iudn5sVGJdVPpNgCmbU4PASmhxRFtb34F33M9clkUz3ponW2vIff1pY
	KIXrR1m5+7Lwg8IUVMrKqOxg81wCAx09clig+xDFAM1mqa7FERxYwJhlrYh+IZ/j/VFH10Sv1GvfL
	3K68vcoKGr3PW6kmC4vhBq184xrTBSjyxmZlCS/dUDz4ScGmd1mADqi583NvOttB3G2+T9Kf+MkuS
	z62G11yXP8tOyMWGPtgxn9+IRzKtpoMXv8F5lWrM9zUinLFC2Hw8QCfU0LqUhfUrgtWCzvMzbN64b
	CUcYJKKVW1m7MBwqZALg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsOFL-0006Yp-AV; Tue, 30 Jul 2019 09:16:39 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsOEy-0006XC-KF
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 09:16:18 +0000
Received: by mail-wm1-f65.google.com with SMTP id v15so56421765wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 02:16:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7p0S88q6+XKwX8nM1vn9ytVwUof8aNjUGgnKhdm0yLw=;
 b=mPJZiVu6pae6vV9TUVA7ZPNNoREvGN3XroV7qQe7Z7hiI2LJok+wVwyc81rPvWrhOE
 FHgqBXxsSqdOxe54iBrOLxScgTz66mpNoof6RW16eP0iXzSMpvblOzPxAz648kr8Zq1o
 xquGPmu7HerJP+N9v6P3XmK9X/iR8R2u4YLIr/g7nRC01ucoSSzQ21yBLxqOUW1cN/1/
 aVC8GpT6LZ2ozGwRXVSqVmXKKe/y7Dmt86VO8fR4hKWLqab79cl/zOEJYzPZguqZlmLj
 SkqMKFOA99jomFm6Z2bu9qJdT2TkshqF92o+ZFjVbG1pW/4Y1nUWUDWEbT8aBNbr0Ocz
 lypg==
X-Gm-Message-State: APjAAAUpDxShzeR5k/XxAQg99apYRh7NjM9HsougAm6HILCm4SSnM4Az
 um0UmB9xAj4yl4uxIvCdFiPBl2zxKkebP6eeu7I=
X-Google-Smtp-Source: APXvYqw6hnQNgp9ba6JoXeB11DQEMihNidxPVOC8Wl9Pvr75u2HCkAaBWnNzEeHksMe9QZtBaO+D+5iMfEcGUkHu4Lc=
X-Received: by 2002:a7b:c310:: with SMTP id k16mr63730000wmj.133.1564478175274; 
 Tue, 30 Jul 2019 02:16:15 -0700 (PDT)
MIME-Version: 1.0
References: <1563816188-17922-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1563816188-17922-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 30 Jul 2019 11:16:03 +0200
Message-ID: <CAMuHMdVP_NnnOPPsRCmUnR6quMJv2QnT0ZgE+kSRbV6-GmMJoQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a7795-salvator-xs: sort nodes
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_021616_850318_2F68A6CC 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
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
 Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 7:23 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
> Sort nodes.
>
> If node address is present
>    * Sort by node address, grouping all nodes with the same compat string
>      and sorting the group alphabetically.
> Else
>    * Sort alphabetically
>
> This should not have any run-time effect.
>
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v5.4.

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
