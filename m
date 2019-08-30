Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE54A3A9B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 17:42:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KhGq10GIWrL9vCO4wkoTFF+Zc1/9KhVSDTpBv7v4mKw=; b=VOqrcNufI22BT0
	SLq7GgyVuVVY0lbDhMtTWWMz+R2T9+22HJ2nqVIW81kaC8RZ0aKBCA0pYO/twbtkx4f6+6Ps/6p6U
	G3i9YWL8hZ2w75O7M9gqww58HFaCd7Bw/U6A84fikMxSblBiMPJyCkA7hEXApLikYaNiGah45HIws
	h1B6AY044iVIFD/+++ityPUXpl69sCX2oye+xxuCL7/hMgALyD8DYYqpyLOiDinq+6k9lqJtckjhS
	Y+xao36moMermXoiOibPTttUxC2YfK8SpZrHbvyZPM5VCQkDIxz3804q/4jZEa7yoxEVTlNPhGLhN
	vQLT8A60PeL6hwYCVGdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3j2O-00034M-H4; Fri, 30 Aug 2019 15:42:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3j2E-00033t-8F
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 15:41:59 +0000
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CAEC22342C
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 15:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567179717;
 bh=lsv2HRJcjTPCOFeqJ4kraE6eDC6maYXr6PJXlqUCXaw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=oBz2Tae3hdCx6RiJE6e45gTAvbSObmBRsWEQzcAIaH4OfYdj1Bwv0vHUi6REFP2LQ
 6bH7KOZUI5o5kzfIK74iLaIyT5z0ZxGRpET9Vtq3CuX8I/MGq14AwF2ACzqcSyp6ry
 n7lDiVUgjAxr55lcJd4zoTsHIs2rN8eUIX84j6FE=
Received: by mail-qk1-f181.google.com with SMTP id f13so6442037qkm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 08:41:57 -0700 (PDT)
X-Gm-Message-State: APjAAAV3ForIdtPNDsPTxTGPnucLNsvQsDWLoznUakuNX/qewApAK2vv
 kpEKZW32+FBj9uwr+G3QuZOp0Z7f9LPqEBmwtw==
X-Google-Smtp-Source: APXvYqx9Je0tyYggCCfvH9K5Yx8giZ/vSqa+dRS9Eg9xmRkJhQxAfUT6bndfMmkl21JD4YuSVXy8kryHoASXVusLWWo=
X-Received: by 2002:ae9:e212:: with SMTP id c18mr10022345qkc.254.1567179716986; 
 Fri, 30 Aug 2019 08:41:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190828125209.28173-1-mripard@kernel.org>
 <20190828125209.28173-3-mripard@kernel.org>
In-Reply-To: <20190828125209.28173-3-mripard@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 30 Aug 2019 10:41:45 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+ZQy02-3TOyagfdtsxFJkMkSiQh0-o1MpcbgvuM_e8oQ@mail.gmail.com>
Message-ID: <CAL_Jsq+ZQy02-3TOyagfdtsxFJkMkSiQh0-o1MpcbgvuM_e8oQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] ASoC: dt-bindings: Convert Allwinner A33 codec to
 a schema
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_084158_316402_F3A3A133 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Wed, Aug 28, 2019 at 7:52 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>
> The Allwinner A33 SoC have an embedded audio codec that is supported in Linux,
> with a matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v1:
>   - Fix subject prefix
> ---
>  .../sound/allwinner,sun8i-a33-codec.yaml      | 57 +++++++++++++++++
>  .../bindings/sound/sun8i-a33-codec.txt        | 63 -------------------
>  2 files changed, 57 insertions(+), 63 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
