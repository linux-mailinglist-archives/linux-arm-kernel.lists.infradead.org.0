Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FCD39FA4
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 14:19:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IOltdCxTg0is/9TXi1vTVRYoMEHHdggZ/hMxOAxQ5FU=; b=G1CTjaLLuS5QlO
	FrtNeeeg66PSzzm94wRIpK+lOWv6mxkqyWDkQ5wWDQxMrM6WxfpdHXg2YsCQhPJEk36vzQ6/HGcHY
	QNlimc5WVqaDN0OCXO9RmTT16TllV7UHorNORh596AHZBBAqMJagg8xsC/oSVvYRYh681nM3JeFVq
	nXjWKnbHOqF1A72Du8M6FVUBO1zvqNcXL+0ZaUqIgCM7JXx2f2qVOAfDzXWZDZwi1kloR+NRcjXbu
	4M5g7jTe7s9Q8VWycco1VPawUbDIzO7rElDktuTMViSCcgNDa6CjTWXfg7TM0VSIMjpGhm7vmOrXM
	AqohCTyIxx0qqlBer4Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZaJm-0004ZU-O4; Sat, 08 Jun 2019 12:19:30 +0000
Received: from mail-lf1-f66.google.com ([209.85.167.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZaJf-0004Z6-6U
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 12:19:24 +0000
Received: by mail-lf1-f66.google.com with SMTP id y198so3548186lfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Jun 2019 05:19:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kv8LRDtu3zScEd1g2FTIJ/r2SvprFN9fflNLXUa8I4A=;
 b=NwpAnTfTj62kU3YtuPUbOKNFN9kXSl7H6iv6XRGjpo0lZIARjl8cfeB2MoT+aC+JKU
 mKPTbp6F7D3Q7oU0l7FmaGKOrKVtz2Vmys1kEdfJHdv+NPB64H+fxIYRAMJAUb5R6vac
 dG7vJDfBpLs1llZNNMtbqgXe+HWgWoYMlunneNL6sFrm9Y97Zt7jXGmiNaREzyOMv4Iy
 5CcEIuxnxGeQgFxGEBXvU+1tbXAIKVgF1p8QogM6vatWQJuWowYxeIg3T6uJnAKkt56C
 3+vEqRjYPfOe5RTdGLxHov1WQUHDa780CGpCkAzMG8AiaxWv+aw+VYUhsvKYdkr+Q/j4
 xW4Q==
X-Gm-Message-State: APjAAAXE1BYPmLnn85H9814yLuG2r8Jp5CncOiYOE1lCZPuAVub0hTTI
 aMhjiMAu6cI73yRLmCMloi/uD3DERBRYhpyiNNs=
X-Google-Smtp-Source: APXvYqxXgq6+Qg2hLYqOYwHLwQeNuZJuuOw10MRdDNl9x9vLO2HmB+IKoDIhlcfP9HM1G9J+5Fwey5hqbIXRi1LNfjA=
X-Received: by 2002:a19:6e41:: with SMTP id q1mr21765238lfk.20.1559996358398; 
 Sat, 08 Jun 2019 05:19:18 -0700 (PDT)
MIME-Version: 1.0
References: <057720844e78e615e46de34a73b16ffaf7dbfc10.1558686047.git.leonard.crestez@nxp.com>
 <20190607190522.D276520868@mail.kernel.org>
 <VI1PR04MB5055A1DBAC2C4AAC515CB494EE110@VI1PR04MB5055.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB5055A1DBAC2C4AAC515CB494EE110@VI1PR04MB5055.eurprd04.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Sat, 8 Jun 2019 14:19:06 +0200
Message-ID: <CAMuHMdW=AmTWZ-_KexHOj2HJS0TRcqONMVo7HLEd19VzAbTZZw@mail.gmail.com>
Subject: Re: [PATCH] clk: Add clk_parent entry in debugfs
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_051923_241133_B4203DB2 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.66 listed in list.dnswl.org]
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leonard,

On Sat, Jun 8, 2019 at 9:26 AM Leonard Crestez <leonard.crestez@nxp.com> wrote:
> On 6/7/19 10:05 PM, Stephen Boyd wrote:
> > Quoting Leonard Crestez (2019-05-24 01:25:25)
>
> >> @@ -3040,10 +3051,11 @@ static void clk_debug_create_one(struct clk_core *core, struct dentry *pdentry)
> >>          debugfs_create_u32("clk_enable_count", 0444, root, &core->enable_count);
> >>          debugfs_create_u32("clk_protect_count", 0444, root, &core->protect_count);
> >>          debugfs_create_u32("clk_notifier_count", 0444, root, &core->notifier_count);
> >>          debugfs_create_file("clk_duty_cycle", 0444, root, core,
> >>                              &clk_duty_cycle_fops);
> >> +       debugfs_create_file("clk_parent", 0444, root, core, &current_parent_fops);
> >
> > Shouldn't we skip creation of this file if core->num_parents == 0? So
> > put this under the if condition below?
>
> It's still useful to determine clk tree structure from debugfs fields,
> otherwise you'd have to extract by parsing other files.
>
> Would you hide clk_rate for fixed-rate? I'd rather have everything
> available for uniformity, even if it's otherwise constant at runtime.

Unless I' missing something, there's a big difference here: all clocks
have a rate, but not all clocks have a parent.

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
