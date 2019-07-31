Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 471CA7BBBF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 10:34:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pe24oHyXCXkNtQggxk/wImmOw/TvQ4fZHGnUXGTfaAs=; b=k5oGE/iKFItF6e
	669aHakuNgdw66J7pHnax37bicAbeevZppqMYJUWsL9+8iSq4vm3aB10QNAa7NbzEmCOcakAbCL9S
	nL3eKe2Oee4yVdiLj8r6PeB4Jr4wb4uT0Y3SeqTV/3NVeBapnMhpuhhLDmScblo6uFFygS12RLF2A
	TodrLaf0jCY8Nf25nVZwydepYGmb5pQ5jqec7oXbWdeUDJpmIeLntkW55qiVW3Q3iy7GwJq1wZ0+P
	8G3gq/BlX87bh9EkIzkyIlZG0ArPnSpGv7VbGsD8lj/mnt0or2EgIaAtuCThLannYN11rrvyhLJew
	sJHD3YCljNm01E0c2oqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsk3l-0002I0-9L; Wed, 31 Jul 2019 08:34:09 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsk3V-0002Hf-AN
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 08:33:54 +0000
Received: by mail-wr1-f66.google.com with SMTP id x1so18760351wrr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 01:33:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IGsLzBygQeN4U1HbS+siGyivzSnwWDQU6/cEgl1u7bA=;
 b=QgLNmLqD696wP038SmSW115OCLVtX+Lmh6P6Azj1RuiARRVN19y9f5czHC22ir9q/g
 XZVqyA8d07T7mfR8d3ougcDsjig47J7tTZGM8TkjRiVF7fVp15AVgH82kdjXQ1YKouOj
 2U2vj8Y3A0I6aHx5x42qMvD9PCVy+m4I2w86mPOsFkuSvSZLrA/p5E5jvblKfdesIKMD
 TwSk++0Mb5LQ3ejin+i3AU5VgzI5pwmpo6M4G9ap0ZX7XETpCjisqQvAhv6/5Se9pQ47
 aW1Ns06VP42BlfQ4lL5jUf02FFslOOLwNef9K85TPZ0qWIKJRiwWxPYxLhs/iKFe9Bwj
 V0Sw==
X-Gm-Message-State: APjAAAVnaWveMRUGVieXe4+ydkGQSJWiCsJnl5oncyClhEKB/RjHdbZg
 BuckA7xT1RK+Y1wmJAZPgVo89ypxy8QIbdsRxI0=
X-Google-Smtp-Source: APXvYqyHziTaChsaMWtanO1xCV68zcl6MTTzIToJk2Rucs4hRh1zedOwhC5f4r6CT7jA9LbHoCbi9u9lTdoflyuIYPs=
X-Received: by 2002:adf:cd81:: with SMTP id q1mr131610751wrj.16.1564562030235; 
 Wed, 31 Jul 2019 01:33:50 -0700 (PDT)
MIME-Version: 1.0
References: <1563461033-19708-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1563461033-19708-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 31 Jul 2019 10:33:38 +0200
Message-ID: <CAMuHMdV9Wwgc5Q_Nzk3qKUFduQ0WRTgpQM0Jqv-qmE0Va5oZog@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a7795-es1: sort nodes node
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_013353_358764_F01B3E72 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
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

On Thu, Jul 18, 2019 at 4:44 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
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
