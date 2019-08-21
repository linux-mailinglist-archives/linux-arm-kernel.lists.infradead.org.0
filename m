Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1F397566
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 10:53:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nqeyoXVQMRmvLBXsXPZX02H5q/Z94DO+PYkGnFL0fd0=; b=Vkn6Hdpo+y2zdv
	2sYdWLf5EssFVv4cRnAWsGOFAN4DP8JQPTHPsgCcJaA26sl0NOuXo/1wGjf2EjjZmKZS8VqdgcGB0
	xhsPogSRXKEKQ/EAaelS7eI4pUr110wvH0b/Vo4E2FUcziyvVXW6onQYHFfBHFO2zYdxZZ7W/a39W
	6DP2D9HRb5YlJsJ2RD5WNxbSnObYyGLEudsbSXlBuwAYWw/vW10+4sk7RHcleY03OmPgrx4tKUStw
	M7WXNQzI8VXj5pNhO6ts0WdgMUuyhqEa80Oo+aJSXmcPxm772ME3X53+eNB7bg02XYo//Y0WGlYEI
	tINeHh0MUQc9y0QQNT8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0MNH-0000Oj-K3; Wed, 21 Aug 2019 08:53:47 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0MN1-0000OB-4S
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 08:53:32 +0000
Received: by mail-ot1-f68.google.com with SMTP id w4so1319659ote.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 01:53:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kcCL3wv+BmCUtlHUd1GtMt6GC6B3UYpLuYNiU+77akY=;
 b=eiRzKyf85sjKZZv/rq0YX2YZyd0qXUeZ2QINq4+/OH/FfR/7FoiqDl7g9bG1/bwNTz
 1i+HcIN/C2j9evpjjX5Uao8wnCnpGm+u4g2iRQjoZJAHArEPNPqQRrcZ1tLUz6rl+Bjh
 DONdszzemhwZQhngCSiaFcYcI3pVpAcVfOvH5CR+ZZ41fOAqXb6kAWZRJ85o/LXFEplN
 8Yuj5ggYjhPPAYwO6U4pSEI22/9DH5CcLuhxOY6LlL5K0GHmUnGyCL+M6Y/q4hoB0utP
 hJ2wg+I4aS0ZIO0hzPSjKEOpBnX8V/DbnFqTRO1zrda//zdg/S5/0k2wpLzgdCGVjd0c
 iQMA==
X-Gm-Message-State: APjAAAWU9qZ417xAbqNtpz5+ZjHaRDpBxWVQcvpGcVTLT+VuXw7N5vao
 CyrDDDk38d12EqPDweIhRA35WPxGzKmUVDGrqAHaBcgD
X-Google-Smtp-Source: APXvYqwyG6VO1Fcw/mrdVfv3/kkEaoilufe0KHc6FN8W6uih7qIL4w9Qz21gA+Eai2v1Xbi9QH077Q1dR4TB34OmW08=
X-Received: by 2002:a9d:459d:: with SMTP id x29mr26783629ote.39.1566377610373; 
 Wed, 21 Aug 2019 01:53:30 -0700 (PDT)
MIME-Version: 1.0
References: <1566219295-23003-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1566219295-23003-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 21 Aug 2019 10:53:19 +0200
Message-ID: <CAMuHMdVaKNOf4X_OGCwag9Oem1ytfDohxY2cTFVd9hNLw=qYpw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a774a1: sort nodes
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_015331_182294_86E67A5B 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 2:55 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
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
