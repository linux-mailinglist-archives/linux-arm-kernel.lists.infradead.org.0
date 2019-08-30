Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C27A3AA6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 17:43:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tv9PnraiN51EsIIhsphNIapGcyesuV+Hz3L4e4AzU9U=; b=U5W4+5flFQKmHp
	MSZHEnJlIqfw4/4JjgSR0bFSjST4QNl/nuaQeVkJB0vFrc+JKY2JtL+rjBwIBSbF0JppPPCVILltM
	iSctgX6w5+TMiSc5S1WUO5GkzITTuYxzMbD/s0JG777BvEuXW1lnDFznDY1sk3gQ1VeSBvlIdT0p8
	NbOJN64kCsbT9IEa4e3mooP8cM4G2BXVeR1fABjwCY+CbjQ6vfosjbuCP4ZgET823ifZgVejkGlD5
	xyxjQBA2PC6ts+SogF9TuqlZ8It+3nlULcr2lnHGki0gr9uvo3wBaP0H+NJUHvNwtMrLmvnWOrIbj
	5PJ/Fdifdy0WUm1kNnXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3j3O-0003Ye-Sc; Fri, 30 Aug 2019 15:43:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3j37-0003XN-BW
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 15:42:54 +0000
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
 [209.85.160.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E439C23429
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 15:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567179773;
 bh=SjF+r0sRfSw6guTPuHirWIwopvlcS/mInacUNuCDDCA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=DM1CXlk1CMfyPGG+0KfVCNMQGXt7kL6/zsk9Vb3449Al86pJsn6TSalEvXkUtHuzn
 b11LJRp6XB3YsulP4B8pzRz9DudGUcUlJV/mtIvvRYPNXsdwNkGrioCMtzSilJ1tCB
 0lSAXuF1GBwBeDXKDif2Bn5lXm6RoGN3QwI5rrYk=
Received: by mail-qt1-f174.google.com with SMTP id z4so8075098qtc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 08:42:52 -0700 (PDT)
X-Gm-Message-State: APjAAAUUUIZ0KqwKyTFdTeD1A9Sd2FEq7ThlifbTohrMYQtRcvdUM/Yz
 LbDK/HAk3osL7N3pWyIZQ1BOJJPNGLSLbB4MXQ==
X-Google-Smtp-Source: APXvYqzXCHsQQOsvgsiISFEf/Zttwtxmy7SUxWU0aJkqVW9uY0SYjqHWdC/KWYvM+YsA8KFQRpWU9v+qwwnvZLkjrU4=
X-Received: by 2002:aed:24f4:: with SMTP id u49mr16280140qtc.110.1567179772161; 
 Fri, 30 Aug 2019 08:42:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190828125209.28173-1-mripard@kernel.org>
In-Reply-To: <20190828125209.28173-1-mripard@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 30 Aug 2019 10:42:40 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJBs_vmqbe9DmEjNJR3YO6-3mnyxrTbYq0b++0eGJnU3w@mail.gmail.com>
Message-ID: <CAL_JsqJBs_vmqbe9DmEjNJR3YO6-3mnyxrTbYq0b++0eGJnU3w@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] ASoC: dt-bindings: sun4i-spdif: Fix dma-names
 warning
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_084253_865931_8C6894CE 
X-CRM114-Status: GOOD (  14.39  )
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
> Even though the H6 compatible has been properly added, the exeption for the
> number of DMA channels hasn't been updated, leading in a validation
> warning.
>
> Fix this.
>
> Fixes: b20453031472 ("dt-bindings: sound: sun4i-spdif: Add Allwinner H6 compatible")
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v1:
>   - Fix subject prefix
> ---
>  .../devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml  | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
