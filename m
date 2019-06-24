Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E2150A3C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 13:56:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BSc74PwUzrGE0Yw0bhev7R1C4vio2280YxATLWYJVSg=; b=UXqPvFrwJr+oY2
	ba01hfd/w9nXMeeo/G20Na8wPNvp2wDweQUOvCD282ZUvvHv7hXqRl18LXArJe+0i4/ODYrDIdHcb
	6v2fWPCk3r/g9YVni624wMTksKYrKE+6hXT0it65Vgx9xe3+B9TtSBK3hcjbLDwfveL6GLggA/yxM
	2hf+TGa5xCOXeO/X4Ai/SVjsEfHBgLf2J5cTftGfu+8lt0TW20Lwr7jhAlHmGFgAj3kWR3JyToU3D
	tprnAd5o8lC5htzLNSfiWNTytGTQ84aq6IDDyshM3tGu3DsMMhXChVi0PDr5/6HWOELS1pCUU8oee
	/fDXNXNy7mHywBk9DdRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfNaU-0008O4-LP; Mon, 24 Jun 2019 11:56:42 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfNaI-0008ND-P7
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 11:56:32 +0000
Received: by mail-oi1-f196.google.com with SMTP id w79so9528053oif.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 04:56:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ssDxcYuQL8NJg2GIEkvWAoxJsta0M/dWxnbnrXLKhg0=;
 b=FG+upxvG4WsZMAJJbMkH3x7iO36fix91eP11hya9LtGe27TJ5UZNzcmkVswUQkyzXv
 NPrYgg7C6hFDd0vsCXo7VkL0WaEFDjecF0+pieiHtFIusjMfU6fpMvfcpDXjjp0dY5Bu
 xqAk7xUC8q3dtbnN03Q07YEAVkwxIG7A4vYpbdchEa38tZZTOEw7qxXwsDJYOGovkvVl
 FFg/0PLMBHozebbf9c+knYXfzZDQ5PAYwWR+jaDKWzT0uHu69MVZRKWA7LPXiazMQ085
 EQIpOfFblYxcupXienprF/odAqiXJM6Fcmtmez1kwN7fgQGMaq26cq99E6vLhD0ExNRn
 SL2Q==
X-Gm-Message-State: APjAAAXDwj/SbBHb3aEBqNW6eJXppV68Szck82XcTZXYFxDC8g4Iyw7O
 smz6ksrkhmUB2yAUJVMVl3Xb7uvBWtcs/nJJsLNGtg==
X-Google-Smtp-Source: APXvYqwkpMIzEvtGyaqXg8e8Y9ox6VuQNAT72hDi/EYBNNnR/+wFLrRSdpKFq8m8HjzJFRI5C5OUZs4HM9eZ8wPmc4Q=
X-Received: by 2002:aca:338a:: with SMTP id z132mr10936988oiz.54.1561377389323; 
 Mon, 24 Jun 2019 04:56:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190624105224.23927-1-horms+renesas@verge.net.au>
 <20190624105224.23927-2-horms+renesas@verge.net.au>
In-Reply-To: <20190624105224.23927-2-horms+renesas@verge.net.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 24 Jun 2019 13:56:17 +0200
Message-ID: <CAMuHMdVHVqD82GFozrDgdRu0sveN4at7v7JY1CSwJophbzCvjQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: renesas: r8a77990: Add cpg reset for DU
To: Simon Horman <horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_045630_817920_EBD02F72 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 12:52 PM Simon Horman
<horms+renesas@verge.net.au> wrote:
> From: Takeshi Kihara <takeshi.kihara.df@renesas.com>
>
> Add CPG reset properties to DU node of E3 (r8a77990) SoC.
>
> According to Laurent Pinchart, R-Car Gen3 reset is handled at the group
> level so specifying one reset entry per group is sufficient.
>
> Signed-off-by: Takeshi Kihara <takeshi.kihara.df@renesas.com>
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
> Signed-off-by: Simon Horman <horms+renesas@verge.net.au>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
