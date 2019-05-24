Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F6F29FE0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 22:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N/aYb1KYaCgTmNnMC1qt2KM5XGYRj4w/QTLzssWizDQ=; b=Q2fT5pf+EqoROK
	zqB0ljCn4Ip+04VcvCuECIE7ft9AcawnRv6tAYTgtNjdEM9e3GEfXnsQKg2j7I+RiwjjqP7hHOLnZ
	GeLG8UxitCfKM+EhgCHCK5ck70aEVuWObcZscgLIHKR5IOtJV5gJKcY0AM+4xbn4tDRpNfdecB9Ya
	h9yH5vVPysuDhWTW7wcWQ0vm8eCoXvQuiqmqPcavI8cckFqYvDMccEE1oG/rhN3mZ673CRlhqv+0L
	uQzE70pSr/IY7hqlYbkPOjSXbVXbK084box96/CyEn6eu5dffUPNFEajP1vkoaYf//Z+lUrueg7cN
	Br7e1RQnVT+pJLO+c73A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUGo9-0007Ww-Nn; Fri, 24 May 2019 20:28:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUGo3-0007WY-0z
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 20:28:48 +0000
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9CB5520868
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 20:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558729726;
 bh=JjLuxZd15YS8ce7/3JtjMDPYXP1vrOBgwkAGODXovT4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=KE1BLQu8Cu1pCpNeczUH4dYXqrtrrzfNqKBdd6wr2r/z7xUN4GGfWvy2knIZqfcxq
 RiundfM2719VjQMzI99idOdhy2rri7wCHPJR9EfzvBT+qBWmlM4XQu7KkMudQQtAEO
 dV4jXEL8R5ayOCVMOJs5Rl/bmIthFWfLp04LJIqM=
Received: by mail-qk1-f181.google.com with SMTP id m18so9382771qki.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 13:28:46 -0700 (PDT)
X-Gm-Message-State: APjAAAU826mSYCnH4qjHGpMaPG6CNAkwokyHAA4fKTZfjn7ot/iX1Pck
 k7ac2zkCq7A9XSBP2vbw3ybmnBgN5RDgWry8KA==
X-Google-Smtp-Source: APXvYqxT5HWriyhnIaLdL0b/p0ngf0zs/2jWKzDWRP9XaMqr1OulKXi1LfCoHWUvOZ/tnkBIYrecedFFkoN9Xet7zIg=
X-Received: by 2002:ac8:7688:: with SMTP id g8mr59899359qtr.224.1558729725948; 
 Fri, 24 May 2019 13:28:45 -0700 (PDT)
MIME-Version: 1.0
References: <5f8095fbd5c2c34478792b9715059675251a30e6.1558702660.git-series.maxime.ripard@bootlin.com>
 <9b280f9ce894e4e2ea7259db505cbe1a3e00120e.1558702660.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <9b280f9ce894e4e2ea7259db505cbe1a3e00120e.1558702660.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 24 May 2019 15:28:35 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKhP0DvZSAEHA47d4UY6LQYKobZdfAxSk_9FWuBS9UJgQ@mail.gmail.com>
Message-ID: <CAL_JsqKhP0DvZSAEHA47d4UY6LQYKobZdfAxSk_9FWuBS9UJgQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: sound: sun4i-i2s: Document that the RX
 channel can be missing
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_132847_077889_71227909 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Linux-ALSA <alsa-devel@alsa-project.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 7:58 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The A83t and compatibles controllers don't have any reception capabilities
> on some instances of the controllers, even though it was never documented
> as such in the binding before.
>
> Therefore, on those controllers, we don't have the option to set an RX DMA
> channel.
>
> This was already done in the DTSI, but the binding itself was never
> updated. Let's add a special case in the schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml | 52 ++++++++++++++++++++++++++++++++++++++++++----------
>  1 file changed, 42 insertions(+), 10 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
