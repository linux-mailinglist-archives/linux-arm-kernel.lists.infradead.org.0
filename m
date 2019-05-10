Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFF91A0F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 18:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IBcAwrt9FyPVnwlW71yuETczwFUr4DXKLPJ6csdqYQ=; b=db1662ZJwQY3H5
	N0ZN0FdBsKGNRTr+gSVWkWh2FFkSFtieUlYeqjlmNe1Rh6DmBIGS+QdsX+jnsyh2aqmqTBHbIe1X5
	uoD8e1KZDVJTMf+T1NYe9YQtk1dR5QTg2sgsaiesHxN4n2oDpMxxP8YWha8mHyEkCgIdzOVFnZZuy
	Hy18uaMOK3u5bgTXj8rMgQwO1q/DTmP5Zs5mwzZoL9VYNZETMJSgNw/nVDszHnzIUFSeaR4/sQCRk
	BnZ3S8ORrikSZyQRMQvTN5+Sh0HFQQYGXZSlH8YnKrNtf7+two9CgEhwVSWH40eC48620lgqf/yoH
	XqZgvnK5RFW69jhay0Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP82C-00056I-9i; Fri, 10 May 2019 16:06:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP824-00055o-GA
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 16:06:02 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 03DAB2177B
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 16:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557504360;
 bh=LXZI74NTENEM7G5nr5VC4LMkdAJXskohMO2t1QZXpkc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=C0hezQyrHwWq4j6aBaLax6yQNe3J942z0VL1VxKLJdwra7LU99W+DrJ+8254c9ZTR
 uCVW4/RRD2xK8PZ8AR6C4nPzZHtKX6ad5I3bXGSyNY6Clk5+VAy758y/NBtAJ0JCsx
 OJff8SHCRpz2Pnsg5f81+9RM2QtZh99gRKidr6ls=
Received: by mail-qt1-f182.google.com with SMTP id i31so7129526qti.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 09:05:59 -0700 (PDT)
X-Gm-Message-State: APjAAAUBM2RGa6SyFw0Mzlz2+S0h298ROdY3SwPT6s+IBQvvpC4SFkjH
 wlDOdYRUuCVXjx1QMwMoQqXYgpjDUXhX2MktoA==
X-Google-Smtp-Source: APXvYqzYEf6qHbKBboxIVepaRNkLODh5J40uKKOOt4R5M02W+EbV4RTaryGhH5cQGZunpHzvZWDXeSbPxUQblbSAGMM=
X-Received: by 2002:aed:306c:: with SMTP id 99mr10027559qte.38.1557504359227; 
 Fri, 10 May 2019 09:05:59 -0700 (PDT)
MIME-Version: 1.0
References: <1acc9ff7f59064b74cc319b7812479bcd842a897.1557386749.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <1acc9ff7f59064b74cc319b7812479bcd842a897.1557386749.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 10 May 2019 11:05:48 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLRWSWk7cV=pYi1fbYsLJFUxE1fMo6Bm2FC99oPtS-88w@mail.gmail.com>
Message-ID: <CAL_JsqLRWSWk7cV=pYi1fbYsLJFUxE1fMo6Bm2FC99oPtS-88w@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: spi: Add YAML schemas for the generic
 SPI options
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_090600_573093_588B6B6D 
X-CRM114-Status: GOOD (  22.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-spi <linux-spi@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 9, 2019 at 2:26 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The SPI controllers have a bunch of generic options that are needed in a
> device tree. Add a YAML schemas for those.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v1:
>   - Rework the nodename pattern
>   - Limit the index of the usable chip selects to 256
>   - Rework the slave devices regex
>   - Remove the requirement on #address-cells and #size-cells
>   - Declare the slave and slave devices nodes as objects
>   - Add spi-max-frequency
>   - Fix the bus width range
> ---
>  Documentation/devicetree/bindings/spi/spi-bus.txt         | 111 +-----
>  Documentation/devicetree/bindings/spi/spi-controller.yaml | 161 +++++++-
>  2 files changed, 161 insertions(+), 111 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/spi/spi-bus.txt
>  create mode 100644 Documentation/devicetree/bindings/spi/spi-controller.yaml


> diff --git a/Documentation/devicetree/bindings/spi/spi-controller.yaml b/Documentation/devicetree/bindings/spi/spi-controller.yaml
> new file mode 100644
> index 000000000000..6258644249b2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/spi/spi-controller.yaml
> @@ -0,0 +1,161 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/spi/spi-controller.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: SPI Controller Generic Binding
> +
> +maintainers:
> +  - Mark Brown <broonie@kernel.org>
> +
> +description: |
> +  SPI busses can be described with a node for the SPI controller device
> +  and a set of child nodes for each SPI slave on the bus. The system SPI
> +  controller may be described for use in SPI master mode or in SPI slave mode,
> +  but not for both at the same time.
> +
> +properties:
> +  $nodename:
> +    pattern: "^spi(@.*)$"

Doing some testing with spi-gpio schema I'm writing, this needs to be
"^spi(@.*)*$" so that just 'spi' is allowed. However, that's not
enough for handling multiple instances of spi-gpio. So maybe we need
"^spi(@.*|-[0-9a-f])*$" to allow spi-1, spi-2, etc. Really, we need to
decide the larger issue of how we handle multiple instances when
there's no address space.

Also, this schema will be applied to any matching node name as it is
used for automatic selection if compatible schema is not present. If
we want to prevent that and only apply it when explicitly included,
then we need to add a 'select: false'. Without it, we get more
coverage, but it could slow things down and we'll get double printing
of errors.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
