Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0AFC5CC46
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 10:58:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qsNjDiZYOs201qZaq7GdDj8ibpQz5JtiQZJJeXeJ4QI=; b=dcu1se54sdqq9x
	Gb3siw2nB2yqD1cbYf6L2MLEJxs+qMmiMTZJqg9l6z6P1q9dNQ/SRkZroLGpwPuEdAZkuBy5QxuQK
	DkA0SA2nyUcsiDCEA1ONjrXT5MVwDX6wengGHvfgIompmDDh1hvbsW7liRWmlLuo7gNFAlMTZQSUL
	/icrzl6WMsHeEr+rY39CYexN/OPjEpkM/U85ocXFv2XdPypiJArX/eq4DQ2yWZu8B9YgOyTpvygOi
	KzpxKHlCoCA3YHm3fbjA6L+LyBDCPjIzGe+6NxdUsV/BSSYMkZqLxqXxULQo8gBWi4M5SoQhTQEIp
	sVSQdf0q2q1OyZojL75w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiEbx-0000Ha-Dw; Tue, 02 Jul 2019 08:58:01 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiEbo-0000H6-IE
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 08:57:54 +0000
Received: by mail-ot1-f67.google.com with SMTP id r6so16426036oti.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 01:57:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KPdp31UDhXFHPHF96pwPoQJdgvKVE+Ch51jcPatIAZE=;
 b=hOc2qSmn77KN4x6ux1+jAWeSmUqj3GCoiwmsvHJkl/x3eP/Eku/nAWr4sz16q+ARDc
 sSxN2xq9L8dw5NPb3waCEfAqetbQ1NFAghxgZz4VLxoMRM8TBngsSimoKzoqJrTXXjaf
 G6dv6WMz88fM/8xyz+bhe/8rJkxx+PrjutZIWd894eoTmGQng+3gLTl8LDb0rxZddugp
 6nic16Oj42bwm/1XP7eok4DHM0rUZRsmPQHkdNx5Dd74uWqnSBh5ejDggcSk8r9ZeRy7
 +p6JOIsy2C+LlwHEclAAZ3Rzkr4jzM3xUeC81CXOtRJNE19Impbe0RGcriz4ACiGQBbJ
 iDHg==
X-Gm-Message-State: APjAAAVSm8ozrZ+9XD5sRzOX13833AHUw13HsOXE4xhrafjs7V/mFQfh
 QE2n42fIYrg5hILR/iHVQFGJthfdGUgDBRe5DTc=
X-Google-Smtp-Source: APXvYqyUtHMNDxfrXFzOq+tZrJAEALoWsfCJ/SvSccMFZtCQWjU1KrI34Wl7Fw6scnjhNChjBk9KaqX5fS13sng+Mqw=
X-Received: by 2002:a9d:529:: with SMTP id 38mr19987430otw.145.1562057870358; 
 Tue, 02 Jul 2019 01:57:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190624105224.23927-1-horms+renesas@verge.net.au>
 <20190624105224.23927-2-horms+renesas@verge.net.au>
In-Reply-To: <20190624105224.23927-2-horms+renesas@verge.net.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 2 Jul 2019 10:57:39 +0200
Message-ID: <CAMuHMdX2c9QCitfzFeKG2BFoK0VEp9+KUiN=OVV51=mR=kNd9Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: renesas: r8a77990: Add cpg reset for DU
To: Simon Horman <horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_015752_606348_E01E38E9 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
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
