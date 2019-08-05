Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E77F82095
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 17:43:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=41BKu5OUHWRJ3tuv8bI1HwtQ92sB8EF5MxJN7uXaLNg=; b=sLOSqV7nICJkwI
	mM0oD5jPVbM4k7cE173dRhicD/w0P7EipdhoNXUPuNE0AA6AObEdaLfB86AabukOH4WSl2W9uHpsC
	aKITsAA7mRNCO7qbcqztycW84B0/zIionlSc0VZfvur+mzZfYzk+2R0bhQmaUfzsg8sAUp2ckoTLi
	rXPDUyWYeacH3kgtN29u/b1cWodLs6duCbt3qvpLP7JEftQimYdcn42DUVVFEQfMPDCSFe/MdLEgE
	LypqkFT9d+iaJQEjJ+MtP+9630lVWQAOLrrizqhvZqoi/aur+h4uTr/vdBT3RoRhBRn7WTA4BKrH5
	EiRoCJ8gMDPqDDtaIsIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huf8a-0008Rl-KE; Mon, 05 Aug 2019 15:43:04 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huf7v-0007uX-3w
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 15:42:25 +0000
Received: by mail-wr1-f66.google.com with SMTP id y4so84907058wrm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 08:42:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wsHQaSPQGYEkepxVE3umVE5xPQOek4p1ILIyAPJFy+c=;
 b=qSC0hzNKTM5sJE50BiqSguhHJYucHlVXrKjP4sjh7fKlRRFGjIeV/ua9pkGbXhOpc6
 70yC5MhZN1+jKl9FyPggYFGIJnatwgeCpt3qLC6BdXDvkNV5oKRBfdDzKXGyNd/z9CGO
 5jgDPdcnr+jyeQecicM6b7E6R7HmmpQfVPcPm8kpzSzoTi8gq2apcXZO5PHsP51zVY/U
 kDf9HgwIYcwD/B8Wl55+PdsylPNMAT5me+a4USVAeoTCq9vt+mbeClO8DbfmilixDt+p
 XlQ5sOnhjUY8mJge5ZZNGwNKjMA7r8TumhEmVoY48CVA9bfrY2PRGAh3nTYu6SrL3OLX
 htsw==
X-Gm-Message-State: APjAAAVKzlNqNgCXlFAKMiqdAfNSa+Ewc7o4niZjeJjMMqmlUJk6WKKh
 6JP+hQGhlVmkDY0FySyQ25u+gxA3bJYKCfiOPaY=
X-Google-Smtp-Source: APXvYqzC70oNeaAuyKHa1Ox6i7CK9ZGRt3hm7YCXxSDyI0XEcNiB8PbsXG2sOf/PizD03juBoRt2WvC/xjAxX7Saa3U=
X-Received: by 2002:a5d:630c:: with SMTP id i12mr22683041wru.312.1565019741508; 
 Mon, 05 Aug 2019 08:42:21 -0700 (PDT)
MIME-Version: 1.0
References: <1564669432-22593-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1564669432-22593-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 5 Aug 2019 17:42:08 +0200
Message-ID: <CAMuHMdW-f52gDwHtHn-ELD18JxD5m7X7tpt3pkFAoYqrLEveZA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a77980-v3hsk: sort nodes
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_084223_261010_5A7C9210 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 1, 2019 at 4:24 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
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
