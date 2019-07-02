Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D24E65CC4A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 10:58:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LQzG9O7nj4NvTr7cLPVIhahyqdy408piH22Ak9ldKZc=; b=Xxf33TBNEEon72
	7CH3litrmzIfpoiNUPq9Y31Twfzy48IYV0whXDZPMJggYCFHJMcLPTjcqlP0VOFYR5DIS+Y9MjM/x
	6N4B1NQxZUCT/4nxqyya1sGArm1gptu3O+JFQBQgSAig8Czhj60f+wOBigYO7F8Hg0QMWRJOXGw1B
	j6kJeyTL1mb6xUtYiG/fkbxtM6ohkhWnypxsCJdzSk1x3i/3RgUWKvk1CpTwsXhaQuW9V4R4JpNDj
	OumA3ie8aqkP5t5n8X1saGBtwDHpRD3ezcl4GAH2l6aDjXk+aKSyx9DwokW1aE6T/aot0XV2YGFrJ
	D6H404A/h7h6bTOj7t6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiEcP-0000az-Dn; Tue, 02 Jul 2019 08:58:29 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiEc9-0000Yl-B1
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 08:58:16 +0000
Received: by mail-oi1-f194.google.com with SMTP id v186so12420256oie.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 01:58:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pb4hIlPtBxu+eWlV5MavugzJlWlGVOugSZum+zG+KJU=;
 b=ck0rPFuBuzCao8Jw/wHrdLmrw3SxVXHuB88I9iEXrvNTTBDX65Rbe8NHZ5auksEi+T
 XP/arhgss9vcoChqlzoddCn52Kod4zEtYEva3+EsWvIWLD0wJs03LEnzevFT3axKvhNs
 SvAzcPw7QvX2GwOVefMXsdKBcP+shdXxSoKioAJiXvtAnGzMkk/llPxD7B+KhNBxVxhz
 B+lZbLOJHv39v20kOKeU/rH/jzQ7o2Tc5XYRmLlr7FZAyjBkf3YM4bgLnPhPE4szDwwO
 EX4CVT4bdC+bXpM6fxSjjMVGy2b04XOajFvd3mp4YV7g9FHg/pdgln3GaKTm3Cae0Jdz
 kt/A==
X-Gm-Message-State: APjAAAXoQmUZa0eVcDrPk6YrUiaPdfOF2qaIUg0wxqmX6My+b2qSPFvw
 v3BQDpfSqzex/YjZp/FwYBgQfd2ppt+pB4drgtg=
X-Google-Smtp-Source: APXvYqyfQUJ0oEfJxk7/b2/K3FRe9as/LnCeH7oYgYZYd/X1ze/KZsHM8di8yh3wqbFRL0AWB3C21OAFERAirvm7UsU=
X-Received: by 2002:aca:3bc6:: with SMTP id i189mr2173610oia.153.1562057891205; 
 Tue, 02 Jul 2019 01:58:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190624105224.23927-1-horms+renesas@verge.net.au>
 <20190624105224.23927-3-horms+renesas@verge.net.au>
In-Reply-To: <20190624105224.23927-3-horms+renesas@verge.net.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 2 Jul 2019 10:58:00 +0200
Message-ID: <CAMuHMdW8dUOuPmdvuWyRxWzSuLW7fmzJYr2fmCnpZLbrye31yw@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: renesas: r8a77995: Add cpg reset for DU
To: Simon Horman <horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_015813_394290_0633691A 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Yoshihiro Kaneko <ykaneko0929@gmail.com>, Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 12:52 PM Simon Horman
<horms+renesas@verge.net.au> wrote:
> From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
>
> Add CPG reset properties to DU node of D3 (r8a77995) SoC.
>
> According to Laurent Pinchart, R-Car Gen3 reset is handled at the group
> level so specifying one reset entry per group is sufficient.
>
> This patch was inspired by a patch in the BSP by
> Takeshi Kihara <takeshi.kihara.df@renesas.com>.
>
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
> Signed-off-by: Simon Horman <horms+renesas@verge.net.au>

Thanks, applied and queued for v5.4.

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
