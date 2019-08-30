Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBF2A3AA1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 17:42:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eWidBvpYcx9PHVkwy4l1o4NDQBiQMKS0sbnb2yCYzJA=; b=loGNkhZejVLYI9
	IUFn3t7SJbNIWU/fOyiqkkckDJKwE5Ee9PhijeRd1n5aa1B8A+DTVwhngq7kgGJIUxYLRoA1sKpc+
	17JoietLWK33Rv1/APf5RsUg/tyedBHG6LMSSfawq4ASDPWVNH7gNAwbgilyqCA7gxMulP+cjjuyj
	maH3ilyRE84zEYf3WJYo9oewcw/uNwN4KQJvt1xx2ZGhzyA/aYZ6iJH9g+s0Cfx100Bdfany95eX+
	WKmOd/r4j25qcdSv+z6vf402lV1QB8lxziXdUSnrZ2IKZ79/ID7VdUmjUXIzsiRWpuhTj8aEHyJGQ
	GvTW/aI85H8lNpLIydYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3j31-0003KA-6D; Fri, 30 Aug 2019 15:42:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3j2m-0003JS-8U
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 15:42:33 +0000
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
 [209.85.160.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9DD242342A
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 15:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567179751;
 bh=rjS27z1lBNhCEThrZ0kRF0f2b7v4SWdYVwASALBqm7Y=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=OO5kl0tpPfjShjhR6s2bDqoUlEMqS5fbn+z6GfVIp97MAo550syQk1WnY71NzWEd3
 QR+DaJVTCupCau1tgKTb6Ywl6eia1MEpIJ20UNOsZDGp6D0KHbDRYzF/qckNMovc7/
 uFeUE6mNBqeL5c4bK2+7vXzmoLX0SJl5HLXKvw/c=
Received: by mail-qt1-f178.google.com with SMTP id t12so8027062qtp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 08:42:31 -0700 (PDT)
X-Gm-Message-State: APjAAAVrWHSJV+zf46aTJ44eFrC/DMd3PDBSkcziBRmUscKKuNxE7wtx
 ND3uKD9aFHGI1zCZpCAT0VnYYC5Tgarsl/R2zA==
X-Google-Smtp-Source: APXvYqxBnsuq9Cl2AYxJ3+2RNMJO5TFFSdIRuxFvXYjoIaLcgogQZmTxJVQow0WheBHwlDr5sYneLYlM9P1u/GoXMGg=
X-Received: by 2002:ac8:6b05:: with SMTP id w5mr221266qts.136.1567179750860;
 Fri, 30 Aug 2019 08:42:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190828125209.28173-1-mripard@kernel.org>
 <20190828125209.28173-5-mripard@kernel.org>
In-Reply-To: <20190828125209.28173-5-mripard@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 30 Aug 2019 10:42:19 -0500
X-Gmail-Original-Message-ID: <CAL_JsqL7nE8+XK0m+1UKCUypkkgb4Nky7ternsx0zkTxiSejRw@mail.gmail.com>
Message-ID: <CAL_JsqL7nE8+XK0m+1UKCUypkkgb4Nky7ternsx0zkTxiSejRw@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] ASoC: dt-bindings: Convert Allwinner A64 analog
 codec to a schema
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_084232_318827_086FC230 
X-CRM114-Status: GOOD (  15.06  )
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
> The Allwinner A64 SoC has an embedded audio codec that uses a separate
> controller to drive its analog part, which is supported in Linux, with a
> matching Device Tree binding.
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
>  .../allwinner,sun50i-a64-codec-analog.yaml    | 39 +++++++++++++++++++
>  .../bindings/sound/sun50i-codec-analog.txt    | 14 -------
>  2 files changed, 39 insertions(+), 14 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun50i-a64-codec-analog.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/sun50i-codec-analog.txt

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
