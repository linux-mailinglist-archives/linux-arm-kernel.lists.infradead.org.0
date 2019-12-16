Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7174611FF75
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 09:10:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zI4x/Hc9A8hNw9/W7dwftnNnHTwJ0MsCzwRahcqtIek=; b=I2blj5iZ3ecck4
	5gOeUyvPEACF8J2qYbEhg4oDZoLMxov0DCxBWE4GqmuL9bXuNUBNBOYt0FzurFhATsWVnOC5JiPtK
	O66uXCzqsTGWx+OcVvYJrCCnM1fqwzDn/B6OzOAzvuom6mHSeBiUl7CMizC5/fRcYo25QNiWwvKkn
	85Rb0XnCR8Cy2ezxaf/01deQ3/gi1+tLqEtOcEapBR1O3UgUVGsamHYGjUy8tLGNy8J80r/tx0YsH
	lgEg+33FeOWsaiyOPkbGY/MdYtIrI2ChaDmdO5PDKNO9qxcCGwiN72LtI8N0FqfZt9IsDfVVjTylI
	5L+1BNHY4TqD9lwtonEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iglSj-0006f0-1n; Mon, 16 Dec 2019 08:10:41 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iglSb-0006eX-9H
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 08:10:34 +0000
Received: by mail-ot1-f66.google.com with SMTP id h20so8094082otn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 00:10:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4j5mB296K3OjWTSnZCBs+O5j2Ao0bxQ6pvOe40JZ42w=;
 b=aiQUsJ3cne0WJZZWpfQQwINaumZ/bkjQufKezecDkkWfAllTYgS1ExByIx2Ex5qbyr
 tMjsmMNICGYPMKPsYuLfI6Zd+JP8vMVmf1Geq/e42BSXdGtPL5371eGbFxepbloEcN4V
 MZG9HQkw9/fUHRXDJXc9s99zxL7mS/1QRbATiNEnUKezA5tpYfF972Outc1iTbPeUhQA
 4HtxN2tc98wX4YnDAgZV7YwO59qrQqJKKLXtNtjJUUA6cGXktlbnw/CZYLVg+ESpGlXi
 bo69LjjgAQcd0lOgotWRkWpziPnv3u2RYP71TN2Kx/iYYngGz/xl7AKdmTqARQv13LXc
 klrw==
X-Gm-Message-State: APjAAAWr4NLMaheGY3lqPEaCe1XESMgsDyHRLK2Ryt5OEhTZSu0O6cOv
 wY68NwL6M4JJ6WFe6C6Uqv5UugVu0zmynxltGHo=
X-Google-Smtp-Source: APXvYqyWZq4vxFZ0rUlordJFdD6oxjJaIIHj04emaSwV2tCBVu27DKwDtUKc+AphFf1h7JipnnYtHMfDu3xlZDC/BMg=
X-Received: by 2002:a9d:dc1:: with SMTP id 59mr31271896ots.250.1576483831730; 
 Mon, 16 Dec 2019 00:10:31 -0800 (PST)
MIME-Version: 1.0
References: <87mubt3tux.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87mubt3tux.wl-kuninori.morimoto.gx@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 16 Dec 2019 09:10:20 +0100
Message-ID: <CAMuHMdWgPJ-m+sphVi5RDDqg=T3-v1h5aDkVCxmfjENx54DVTg@mail.gmail.com>
Subject: Re: [PATCH] arm64: renesas: r8a77990-ebisu: remove
 clkout-lr-synchronous from rcar_sound
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_001033_324448_E405A4DE 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, Linux-DT <devicetree@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Patrice Chotard <patrice.chotard@st.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux-ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Morimoto-san,

On Mon, Dec 16, 2019 at 3:08 AM Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
>
> rcar_sound doesn't support clkout-lr-synchronous in upstream.
> It was supported under out-of-tree rcar_sound.
> upstream rcar_sound is supporting
>         - clkout-lr-synchronous
>         + clkout-lr-asynchronous
>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

Thanks for your patch!

IIUIC, as no upstream code looks at this property, there is no need to
apply this as a fix for v5.5, and it is safe to queue this for v5.6?

Nevertheless, I think it is good to add
Fixes: 56629fcba94c698d ("arm64: dts: renesas: ebisu: Enable Audio")
No need to resend, I can add that while applying.

Thank you!

> --- a/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts
> +++ b/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts
> @@ -636,7 +636,6 @@
>         /* audio_clkout0/1/2/3 */
>         #clock-cells = <1>;
>         clock-frequency = <12288000 11289600>;
> -       clkout-lr-synchronous;
>
>         status = "okay";

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
