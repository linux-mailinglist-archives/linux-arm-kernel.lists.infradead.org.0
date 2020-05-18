Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8631D7D2A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 17:44:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/GUOk+c7dyUFBi+joGrwFR+tGF7Ingi8STWrNbeYhXE=; b=BRWDam/NmTS0/+
	doIiv7ranL8cuLwlaL6PAFFT0P+gv7ctmwI2M39BG9W0yXMNsvmhYCdEGDiQxsyGP7Za34TWRFxkG
	LQLd24HTT8dLUmdB2Nx6svLuMwS9y/ikXkiYMkrDK3gP7brCpp4RefaNKeqhY8y7YiGZPW45yk8O6
	Myys8lf8rjOrNaNxVMH1IEhG4kzDkT1SnWJQf5kBCm5z78BS1bDRtbeeiN8ellqogFHLHg6DQapJU
	DSITi77xFoqyKdKQGLvlR7VCFPaR2mRRwSUqPPoS7DWI4ojg8xKndq1FiUOeDzmMPoFTBmVjPuuwI
	DOsdNYa1oXmaOM16RJBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jahwY-0007XL-8Z; Mon, 18 May 2020 15:44:42 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jahwM-0007Vf-Ii; Mon, 18 May 2020 15:44:32 +0000
Received: by mail-oi1-f193.google.com with SMTP id x23so2769337oic.3;
 Mon, 18 May 2020 08:44:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Zmc+aX1vQ2DoVqQHld2NGpTEXaFRkMWY7XPbs/Yym5g=;
 b=jg122jgVrNTArNr+euvwuYVz/nLhvKJM2+w/czTlDDjKIh9dfTun+Fv+NCFupl8bJo
 jdtSUYW4j1D4zb2+bCj6LteYxhLh/snmiQOYfQB8y5TxYuEVkvdFpGQZ4sed+Jei5FaB
 oZijHGC3gD2bo4rZG6y2L/2B1ePOWBN1w/4AnvZ4RhhA5gzR8P6cbiTuJA92aS9d94BU
 bGFNZ6XsxaRoQdzfy3Zvw8IGxn2gTmziV6dqE8na8ZRy37XcocuLuHtQwQ//KMhBBzRU
 4HSSJObM59/iXZiihF3Anx5vTKzSjj+WL6D/JzGcL7uBVwgTbaKmRfbikfGkaicYTWN6
 heJA==
X-Gm-Message-State: AOAM532L4E9JuBGhUMzrK6DOBNU1yUH55n/2J3LI7gdZEHMjdjYwHSlr
 jlUu18mGT6Cf27z+RCZ6Z9AbkKz88/mTtZ5SMn8=
X-Google-Smtp-Source: ABdhPJy2nzNFTl+3u/yZOZKPJD6snXgr3/xAOGW+7fC9tpBtXaFCbD/tlFqxKMUwcf8LG/1SZLomAT8oopgBVFdHLgs=
X-Received: by 2002:aca:895:: with SMTP id 143mr10832413oii.153.1589816669165; 
 Mon, 18 May 2020 08:44:29 -0700 (PDT)
MIME-Version: 1.0
References: <1589461844-15614-1-git-send-email-qii.wang@mediatek.com>
 <1589461844-15614-3-git-send-email-qii.wang@mediatek.com>
In-Reply-To: <1589461844-15614-3-git-send-email-qii.wang@mediatek.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 18 May 2020 17:44:17 +0200
Message-ID: <CAMuHMdXjLakWDDEy=02prC7XjAs_xBnt2mArPFNwyHgUoWw6-g@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] i2c: mediatek: Add i2c ac-timing adjust support
To: Qii Wang <qii.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_084430_618553_61DE8DE8 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, srv_heupstream@mediatek.com,
 Wolfram Sang <wsa@the-dreams.de>, leilk.liu@mediatek.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Linux I2C <linux-i2c@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 3:13 PM Qii Wang <qii.wang@mediatek.com> wrote:
> This patch adds a algorithm to calculate some ac-timing parameters
> which can fully meet I2C Spec.
>
> Signed-off-by: Qii Wang <qii.wang@mediatek.com>
> ---
>  drivers/i2c/busses/i2c-mt65xx.c | 328 +++++++++++++++++++++++++++++++++-------
>  1 file changed, 277 insertions(+), 51 deletions(-)
>
> diff --git a/drivers/i2c/busses/i2c-mt65xx.c b/drivers/i2c/busses/i2c-mt65xx.c
> index 0ca6c38a..7020618 100644
> --- a/drivers/i2c/busses/i2c-mt65xx.c
> +++ b/drivers/i2c/busses/i2c-mt65xx.c

> +/*
> + * Check and Calculate i2c ac-timing
> + *
> + * Hardware design:
> + * sample_ns = (1000000000 * (sample_cnt + 1)) / clk_src
> + * xxx_cnt_div =  spec->min_xxx_ns / sample_ns
> + *
> + * Sample_ns is rounded down for xxx_cnt_div would be greater
> + * than the smallest spec.
> + * The sda_timing is chosen as the middle value between
> + * the largest and smallest.
> + */
> +static int mtk_i2c_check_ac_timing(struct mtk_i2c *i2c,
> +                                  unsigned int clk_src,
> +                                  unsigned int check_speed,
> +                                  unsigned int step_cnt,
> +                                  unsigned int sample_cnt)
> +{
> +       const struct i2c_spec_values *spec;
> +       unsigned int su_sta_cnt, low_cnt, high_cnt, max_step_cnt;
> +       unsigned int sda_max, sda_min, clk_ns, max_sta_cnt = 0x3f;
> +       long long sample_ns = (1000000000 * (sample_cnt + 1)) / clk_src;

So sample_ns is a 64-bit value. Is that really needed?

> +       if (!i2c->dev_comp->timing_adjust)
> +               return 0;
> +
> +       if (i2c->dev_comp->ltiming_adjust)
> +               max_sta_cnt = 0x100;
> +
> +       spec = mtk_i2c_get_spec(check_speed);
> +
> +       if (i2c->dev_comp->ltiming_adjust)
> +               clk_ns = 1000000000 / clk_src;
> +       else
> +               clk_ns = sample_ns / 2;
> +
> +       su_sta_cnt = DIV_ROUND_UP(spec->min_su_sta_ns, clk_ns);
> +       if (su_sta_cnt > max_sta_cnt)
> +               return -1;
> +
> +       low_cnt = DIV_ROUND_UP(spec->min_low_ns, sample_ns);

So this is a 32-bit by 64-bit division (indeed, not 64-by-32!)

noreply@ellerman.id.au reports:

    ERROR: modpost: "__udivdi3" [drivers/i2c/busses/i2c-mt65xx.ko] undefined!
    ERROR: modpost: "__divdi3" [drivers/i2c/busses/i2c-mt65xx.ko] undefined!

for 32-bit builds.

> +       max_step_cnt = mtk_i2c_max_step_cnt(check_speed);
> +       if ((2 * step_cnt) > low_cnt && low_cnt < max_step_cnt) {
> +               if (low_cnt > step_cnt) {
> +                       high_cnt = 2 * step_cnt - low_cnt;
> +               } else {
> +                       high_cnt = step_cnt;
> +                       low_cnt = step_cnt;
> +               }
> +       } else {
> +               return -2;
> +       }
> +
> +       sda_max = spec->max_hd_dat_ns / sample_ns;
> +       if (sda_max > low_cnt)
> +               sda_max = 0;
> +
> +       sda_min = DIV_ROUND_UP(spec->min_su_dat_ns, sample_ns);

One more.

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
