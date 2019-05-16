Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFB82080A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 15:25:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U4Q/6dXdBBKKNNtJvgjgxvqMIsbEx60+kiHg1cdSBbU=; b=fRYqS4P0h7A/CB
	2yCvsP9xbvfX3mTAMOdx7BhQc5MPo8F+QaBM0L3m8eiOVQ6Tq4hj+X+MVIYqOcJOh/zUamYXh0ZQQ
	Ij6MR2Mwk63nK8+o/uhBsb/lBqY/6+1tfYmBXKDXa6X8pBMzEg51paWNwGTOu4n13O66ctY2e/oQc
	Hq02UZGBfun8d6jt8Ggz6hZXgpaUezTuSNXn1Wc/PyT3PEPoE0PdiuLeoHrVqRX7jFS8IFebeMAw+
	Mz9XbNfmfTUAWodO0KZY/pM/euDln2wzUoyCYlu+fOKL2Wistaiplqf40iuPbpiTra3lFa0VEPEOU
	938JmO1FyJYOOk1O3wnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRGNq-0001mX-1b; Thu, 16 May 2019 13:25:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRGNh-0001m2-J1
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 13:25:10 +0000
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 31BD02087E
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 13:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558013109;
 bh=WNuqEHpbsjF3V2nlPtAGov/5DMwCSoLWptkVucGbyVY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=wzEn6pbNaiEqoysDMjMLeEIiedjNG5ImjbiQPwVntaXLoLda3QCC2w+i9LI9k4DOU
 C2KElw9E0Kd99Rgn7PTOmiHSCy3SyWGlaHFfGjSasUgzJNHT3Ig8RL0D/M3qXSEGI0
 OxgBaxmQiI15Yl7Fp9DYiiFOFoQsdYhVuV+fsFNg=
Received: by mail-qk1-f173.google.com with SMTP id c15so2234317qkl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 06:25:09 -0700 (PDT)
X-Gm-Message-State: APjAAAVYTq/sonrLoC1AWGhYZ4Samlz5xpkzN3ehBV0dBTJy1xghGbS0
 uF5eSH93P8UvDcsQ+8u2c14N5TSrdoaq4tPpCA==
X-Google-Smtp-Source: APXvYqzhI3LC1U9lpGnWZZm7DhGgRFFQYomJQssdXmHE06C6cfyvv1SGkWtW749ihce0y9GQ66xFIrA1wtO+q2ZhKuQ=
X-Received: by 2002:a37:7fc3:: with SMTP id a186mr37652270qkd.65.1558013108453; 
 Thu, 16 May 2019 06:25:08 -0700 (PDT)
MIME-Version: 1.0
References: <706cb97ae45cc9edc49c8709b2189ed786d2c7db.1557993523.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <706cb97ae45cc9edc49c8709b2189ed786d2c7db.1557993523.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 16 May 2019 08:24:57 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+4+LD+x-bd9iCwA4bGtRUjdqo7=g4HgGzcYTsZG17KLw@mail.gmail.com>
Message-ID: <CAL_Jsq+4+LD+x-bd9iCwA4bGtRUjdqo7=g4HgGzcYTsZG17KLw@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: sound: Convert Allwinner SPDIF
 binding to YAML
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_062509_648225_79AA22B2 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Thu, May 16, 2019 at 2:59 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The Allwinner SoCs feature an SPDIF controller across multiple SoC
> generations.
>
> However, earlier generations were a bit simpler than the subsequent ones,
> and for example would always have RX and TX capabilities, and no reset
> lines.
>
> In order to express this, let's create two YAML schemas instead of the free
> form text we had before.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v2:
>   - Add comments
>
> Changes from v1:
>   - Merged the two schemas together and used the draft-7 conditionals
> ---
>  Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml | 101 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
>  Documentation/devicetree/bindings/sound/sunxi,sun4i-spdif.txt          |  42 +------------------------------
>  2 files changed, 101 insertions(+), 42 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/sunxi,sun4i-spdif.txt

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
