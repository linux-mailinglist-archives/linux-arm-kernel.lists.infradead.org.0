Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D589F47D67
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 10:44:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b53mIL3Sibi6BRb1F4a2APJ51c/aqyjsJ/swKxCaTv8=; b=ON2YYxdrB+am0S
	mCwTQFSYq7r4bFy0YHolBTh70lXfoBt25JtnSe/8zHIaxGkRGCPza83S2X/Ze8qA2fFJTB7l0g75m
	JNQ5HdHTNNlfEhqvWwOGvENCwElosvpynEIfnu1loxXDBj2SK8CvOWGu9W7ifrA+zaEh/6WP0Phjp
	7tzv7RN6XX66xsWzwXVpwIenb2mbgT923hisbuCdQIR6LYsXrR9O4zuZjHlv7v37+zFjf6mUULwUk
	cP86NWptbxUClrcjjZpFbjM6Od+wvhHxC7LbZaRLgx8o/ULsE2R83snhXiBi7Q3GFxEZ8Bj2cjYYu
	f3gUMcj9VBFY+jdzuIbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcnFN-0000cc-H8; Mon, 17 Jun 2019 08:44:13 +0000
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcnF8-0000c9-4v
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 08:43:59 +0000
Received: by mail-lj1-f195.google.com with SMTP id k18so8411612ljc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 01:43:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZR1yDHqUmbFJgvygvorNZChQNS+ZH5Vm3CebMOqstI8=;
 b=TVL1OUc8r2N1JdbYyCI8l3cW/1ZxW8bBu8r3xwG7GzyHCfnGmosGsExX0QByCj1HIq
 4+l2qEtiR50hg4IZbBvSQcsSSghPZ/HtxVUM8fDcoOuG+xjIPt5D09OcOeGZSQkx2E0l
 jjLRtarhvHFW8G8JpNeVOskU9nxHK06WfLvUMtI0hcmeh1/zvRXdeoIxsto8OXB1TqnA
 YX3wChBzrSEA0ztKQcbrsZXVLLpFSvDFUZXf98qsjEy8D6vDZmgKbTWvHuxrqgPkYhHS
 NM+JTK4ZBOaKRiTjdOYmosbLQdSoKz59JL5NyLDHj+r6rFBLqTR9KqiUfpFFdzHqTRTM
 U9/A==
X-Gm-Message-State: APjAAAXXxP6T9fMg+NWHlW35sftK4M4IP+6aMqjgojEX6DYs9C7eV3n1
 hdXrZfW1Bcqz7Llsn91nJ2n0d0IyiLIP/8udihBGh1jm
X-Google-Smtp-Source: APXvYqzyRsaX9lggOJEIeLixo7B3/WaZ1Swx1xmE7jR3IuhkQ2+ocPE8yYoi6Hw36yqAKgFSNvObaopuU6KByVgUzdk=
X-Received: by 2002:a2e:2b57:: with SMTP id q84mr11708556lje.105.1560761036254; 
 Mon, 17 Jun 2019 01:43:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190617083704.3941-1-horms+renesas@verge.net.au>
 <20190617083704.3941-3-horms+renesas@verge.net.au>
In-Reply-To: <20190617083704.3941-3-horms+renesas@verge.net.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 17 Jun 2019 10:43:41 +0200
Message-ID: <CAMuHMdXVrGDM+zQggk=Enyu_w=waZWkYx9iQDJEuTUz6kOQE0Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: renesas: r8a77995: Add cpg reset for
 LVDS Interface
To: Simon Horman <horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_014358_188480_7F83FD91 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Yoshihiro Kaneko <ykaneko0929@gmail.com>, Magnus Damm <magnus.damm@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Simon,

On Mon, Jun 17, 2019 at 10:37 AM Simon Horman
<horms+renesas@verge.net.au> wrote:
> From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
>
> It is necessary to reset the LVDS Interface according to display on/off.

This is not the LVDS interface.
The LVDS interface has its own device node.

> Therefore, this patch adds CPG reset properties in DU device node
> for the R8A77995 SoC.
>
> This patch was inspired by a patch in the BSP by Takeshi Kihara
> <takeshi.kihara.df@renesas.com>.
>
> According to Laurent Pinchart, R-Car Gen3 reset is handled at the group
> level so specifying one reset entry per group is sufficient. For
> this reason <&cpg 724> is not listed as a reset for "du.1" as
> was the case in an earlier revision of this patch.
>
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
> Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
> ---
> v2 [Simon Horman]
> - only add one reset entry per group
>
> v1 [Yoshihiro Kaneko]

> --- a/arch/arm64/boot/dts/renesas/r8a77995.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
> @@ -1001,6 +1001,8 @@
>                         clocks = <&cpg CPG_MOD 724>,
>                                  <&cpg CPG_MOD 723>;
>                         clock-names = "du.0", "du.1";
> +                       resets = <&cpg 724>;
> +                       reset-names = "du.0";
>                         vsps = <&vspd0 0 &vspd1 0>;
>                         status = "disabled";

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
