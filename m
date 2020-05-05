Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FC81C4E4E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 08:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qiV5v54zcMjmvDkcUdrlC870wJM3QyoOT36hCgNglCU=; b=p3I/Qp5T8oNsoC
	3woRk9nz6luT7zObq/GQml+F8qiggth5Nv11r+vG5X7OcvH4WqkQj4E0vkMsIcLLa5IUZ4mCsKe03
	uST7KVHJ7o6YIRdNLHe5yoAtKG8/m6eZikxL0by7uPLW9YzseSSjQYdzZVJGgeMDeig7Cw1lL3b4C
	V6u8ZlnOJPK2LoknEdfT4gm2MZhP9dQixc2GDyvoL+4vNZGVupHpeL6V2Qfm7RWGAejEzLvBL2428
	OwXW+PARL+vV++uN74rMZLG1YQ84yMzg8C3nRq7cXNBxbcNZ0JA1YwVSz3AuDIhJzVR/X5MSEXMSD
	NbrCQPZrWatJpF9kCB2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVr0Z-0005NN-CW; Tue, 05 May 2020 06:24:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVr0S-0005Md-2g; Tue, 05 May 2020 06:24:41 +0000
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3967E206E6;
 Tue,  5 May 2020 06:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588659879;
 bh=32C1+bQS5q6+j/8l19A7TyTRYN77WVbVh7KpTlSe7i4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=VLK98zWjpJ7DE5THs3mA29Bq0s5miWiy9BzXVlZAhc+ses/cxYMXaVK441pdJJlNM
 LEVsEvqzpk0UiJ5YgX5WXSEBjm43Q9bmJeMvz7mEAhHehGOMM79pYm5GE9PwLi8uQl
 WudJ97DCBV9P9Q0z3mL3PhcNhFuHREMX48UznvJI=
Received: by mail-lf1-f46.google.com with SMTP id x73so402982lfa.2;
 Mon, 04 May 2020 23:24:39 -0700 (PDT)
X-Gm-Message-State: AGi0Puayf0Lx5gvTQgjV8CQvGGOIlfJ48jIJa6JFgN3HsgmDlGTFX9Wk
 epzJ8DeuOB/Gf5HHjT9giaUgZI7C3jTOF7VOrsM=
X-Google-Smtp-Source: APiQypLIfMst1tqU1q00DeK98YpKK9mzmYw+EV1sJq0vvQCmBBobl8Z6eq/WglAR6rmBcFTqBtT7DYFqXPxaX4MtqcE=
X-Received: by 2002:a19:c515:: with SMTP id w21mr565410lfe.186.1588659877383; 
 Mon, 04 May 2020 23:24:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200427073132.29997-1-wens@kernel.org>
In-Reply-To: <20200427073132.29997-1-wens@kernel.org>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 5 May 2020 14:24:25 +0800
X-Gmail-Original-Message-ID: <CAGb2v67jPJA0hqXQg1Ufpkxt=7bqwoaQATRVuNg2AC5RZ9Os3w@mail.gmail.com>
Message-ID: <CAGb2v67jPJA0hqXQg1Ufpkxt=7bqwoaQATRVuNg2AC5RZ9Os3w@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] arm64: dts: rockchip: misc. cleanups and
 improvements
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Dan Murphy <dmurphy@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_232440_134815_C44E0037 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Chen-Yu Tsai <wens@kernel.org>, linux-leds@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, Apr 27, 2020 at 3:31 PM Chen-Yu Tsai <wens@kernel.org> wrote:
>
> From: Chen-Yu Tsai <wens@csie.org>
>
> Hi,
>
> Here is the remaining patch for roc-rk3399-pc, along with a few other
> new patches.
>
>   - Based on discussions from v1, patch one, newly added, drops the list
>     of valid values for linux,default-triggers.
>
>   - Patch two is the same as in v1
>
>   - Patch three, new, sets dr_mode to "host" to the dwc2 OTG controller,
>     matching what the board uses it for, a host port. This gets rid of
>     a warning from the kernel.
>
> Please have a look.

Are there any comments from the maintainers?

I feel like this is getting needlessly sidetracked by the endless discussion
about GPIO LED node names which I left untouched on purpose in this series.

ChenYu


> Regards
> ChenYu
>
>
> Chen-Yu Tsai (3):
>   dt-bindings: leds: common: Drop enumeration for linux,default-triggers
>   arm64: dts: rockchip: rk3399-roc-pc: Fix MMC numbering for LED
>     triggers
>   arm64: dts: rockchip: rk3328-roc-cc: Set dr_mode to "host" for OTG
>
>  .../devicetree/bindings/leds/common.yaml      | 21 +------------------
>  .../arm64/boot/dts/rockchip/rk3328-roc-cc.dts |  1 +
>  .../dts/rockchip/rk3399-roc-pc-mezzanine.dts  |  8 +++++++
>  .../boot/dts/rockchip/rk3399-roc-pc.dtsi      |  4 ++--
>  4 files changed, 12 insertions(+), 22 deletions(-)
>
> --
> 2.26.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
