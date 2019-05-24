Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3B929FDC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 22:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dmAdPCinyVFwVWPsi/ySkxZcP8+d/G23C97kGybApEg=; b=fHM4zIbeZ/ucsk
	RRSzL/xWTQM75cqYNwhasD9bZjEVc9F9YRieVM33n+dtmgoFdG1DXNg2oTbx9y8ajLnnsGzb+UFG6
	zYIpA3p9ZY5Lcgrl4GNg0Waq9iPOCqevhss9c48RAEWN60a2DnIKQPgyPjh27DKTZ3bArvTtuFMUD
	QBEi7UtYTAaryTJPkRrodKRw4WBEctOc4mQu74gAM4oVvQlHISCzirON1pbyRECIySgYyCMqIsgUF
	ZVdntbhl02Zd8cV9Q5N2pnLB7lvzXclQehOHI1HtvUCtKSg7YhHBF/1oFgXwcz6S99NJiWGTZF9ht
	BjAVdsUsmGlB9hmzqBPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUGnk-0007Cy-G4; Fri, 24 May 2019 20:28:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUGnd-0007CK-Dd
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 20:28:22 +0000
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6509A21871
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 20:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558729700;
 bh=13Mev8YkM54Ft9qzcl+x5Ege3YgKV8krYwHCuAy8n9s=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZMfBw04KE2lgy0GFPFtrPQRhDtq6HIYZW/+lSlMpoK2O6sn79QXl8wMbU3Uy7PPdY
 Vt7QuacZvFDMCb0WFWXOXLPao2gLk/c36Yzir93shYKu/ob+dGWrfC173uC/xV/VfW
 DFMXj8J3ayjsyR4usp2AB7J8FMYT0HpDzgdWXzjw=
Received: by mail-qk1-f179.google.com with SMTP id j1so9364954qkk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 13:28:20 -0700 (PDT)
X-Gm-Message-State: APjAAAUWwuM9d2ReYSSVbDqvg4p0YhaO9p3cvF05P7JgzPQw5d5FEULN
 TzTl5ZAuRv4AOLAbgq3RiYmVbBKO7ri+iHnxCQ==
X-Google-Smtp-Source: APXvYqwFu0E2ViqG6ck5yEC45obusb6XaWVgj3mDLmugudIWnwPrUeNty9XTMypvF9XYoRSwGbANG2G8NHwGCeYqT6I=
X-Received: by 2002:a0c:8aad:: with SMTP id 42mr84475836qvv.200.1558729699650; 
 Fri, 24 May 2019 13:28:19 -0700 (PDT)
MIME-Version: 1.0
References: <5f8095fbd5c2c34478792b9715059675251a30e6.1558702660.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <5f8095fbd5c2c34478792b9715059675251a30e6.1558702660.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 24 May 2019 15:28:07 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKX==vmpbW=EERnJHRwL-o4R903p-9p_x0abFHJjWGvMw@mail.gmail.com>
Message-ID: <CAL_JsqKX==vmpbW=EERnJHRwL-o4R903p-9p_x0abFHJjWGvMw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: sound: Convert Allwinner I2S binding to
 YAML
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_132821_473626_4A324D16 
X-CRM114-Status: GOOD (  12.61  )
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
> The Allwinner SoCs feature an I2S controller across multiple SoC
> generations.
>
> However, earlier generations were a bit simpler than the subsequent ones,
> and for example would always have RX and TX capabilities, and no reset
> lines.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml | 100 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
>  Documentation/devicetree/bindings/sound/sun4i-i2s.txt                |  45 +--------------------------------
>  2 files changed, 100 insertions(+), 45 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/sun4i-i2s.txt

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
