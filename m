Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 952F7243E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 01:06:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8Cy01vCeUTPurwlCjeYwBns1bkRwDPETXLpKOCCNn4=; b=IjIIJcmok+sPby
	WL0Zrb/hocJVFapURXCfj1tWCa1mJKWJF4YE4oSTjDCrRf/0ymwZa+uuw4fH4uExaolusN9xvnk9f
	Ewc0whlvIhPmT3kjUN9KtbHkHDQkrvck4Rd9NeRuy3skYMY/ZUjfvJ9gGYP/jTgvODV8yxiYqtnpQ
	RvfSFPhF+oI+Zyh+7TdOWEvfyhfnALhHg1L4Ck427FpvF3i6j3spCAhY+7DdNGaAKQz7wJhWWz3QR
	Bv16SKuS1X0ftNUKRB9yOkTb5L3N6kGSm9R2TJB/esydAFIB2JZTi5+fV+D4+Cvv5K4LtDrRzdkUS
	QtdDpYgL+fm5X1QKEMkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSrMZ-00050R-SS; Mon, 20 May 2019 23:06:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSrMR-0004q2-Gk
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 23:06:28 +0000
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
 [209.85.160.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 20A2B21773
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 23:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558393587;
 bh=zxZqkul/sTbxyu+eM1Nmt52EDE6qD47t2CYt1WMWGmw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=t57emVAroUNmFc09zSwAchJ2sPFP0C+TBvS7LjUzMB4ifZHWRJT+TF3vxwmzrqE60
 VUX1a4Cc2Memx0l1DsIyBXAwTrHPWfdJkYX4UXcx7MAaxdaY55sjVZ/xoSLU8HKg2k
 YMLMfN12PPpsZoqp06aaoGzE7BIYgj23rKZ4iyBg=
Received: by mail-qt1-f172.google.com with SMTP id h1so18400340qtp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 16:06:27 -0700 (PDT)
X-Gm-Message-State: APjAAAXSx52DJZajUysTNfrcrDBLXYWP7de0WjoMEQTI4WAwSdeYGSEb
 23pEPx0uZd8edcEH/YOUxBvtaPP2wvFh7It9wA==
X-Google-Smtp-Source: APXvYqxTBlQRphJSKJk0cqONxVkO51IvOVX9rYbFAdpvKFLZYH0AcktYM+pXXr+n2xDfL6n/o8Rsr6P5N3LVKDPc+Yk=
X-Received: by 2002:a05:6214:41:: with SMTP id
 c1mr54647840qvr.138.1558393586421; 
 Mon, 20 May 2019 16:06:26 -0700 (PDT)
MIME-Version: 1.0
References: <f53ee257855c6499fd783dc8665558f7670312f6.1558363790.git-series.maxime.ripard@bootlin.com>
 <b83d0e208072a4f7d017650bc10de8cbe7558a99.1558363790.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <b83d0e208072a4f7d017650bc10de8cbe7558a99.1558363790.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 20 May 2019 18:06:15 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJaNDZHyh7DFu1YO7OBE3wsTfgDALxx1cp_1E0Beue7Tg@mail.gmail.com>
Message-ID: <CAL_JsqJaNDZHyh7DFu1YO7OBE3wsTfgDALxx1cp_1E0Beue7Tg@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] dt-bindings: spi: sun4i: Add YAML schemas
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_160627_762298_EC954A71 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-spi <linux-spi@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 9:51 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Switch the DT binding to a YAML schema to enable the DT validation.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v1:
>   - Fix the slave device regex
> ---
>  Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml | 86 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
>  Documentation/devicetree/bindings/spi/spi-sun4i.txt                | 23 +-------------------
>  2 files changed, 86 insertions(+), 23 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
>  delete mode 100644 Documentation/devicetree/bindings/spi/spi-sun4i.txt

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
