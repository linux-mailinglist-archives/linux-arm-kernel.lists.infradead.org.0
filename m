Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4DB1BBE8B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 15:07:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X5IH6qM8zr7ehkV0VOJ6nukY625OlBGPoOUdhK9U4Ms=; b=YqMhiJxMAi4K6f
	63NZOYoiHMi4eVan6sQWN8wcFqXLlhAiixejGf0MOy6qdWgD5upyxYSpOhUe9CCXbV56+pZsLoLNE
	8cuS6otcLI2MHXSXS5/O8ZeeK0DAACztZ/Nq9E4AIMn1E3P9JqlYhiZMWcl9AMjZ7nnQlNN6ySp9e
	fW9Cdt3MpRduArTL7rXi8p11Hfp9FGWwVKsqAXuDXQVFAHv703lbtEYRqi5aBKfGZByGc/x4Rs/Y5
	TPbWmfAcDoc24HKLgZgJUv1730b6/v/LOWZLYQhWJKsDuJYq4i4YVHCQh1VtvXu4sw9/vK+/BC7NB
	cLxkRDnWntMq7qDpuccg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTPxH-0008Pn-RT; Tue, 28 Apr 2020 13:07:19 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTPx4-0008OJ-4i
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 13:07:08 +0000
Received: by mail-lj1-x244.google.com with SMTP id f18so21379663lja.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 06:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=93rGrzJIbN4aXRsPa36sA2YgZffmLYvujojlgei07n4=;
 b=ft6fPnGPy4N0r7enXq6uMKLPBn/nvStsAu/CdYTzE6LSLgowg5UCLIdmiElxnHTtG8
 bHmBFTBVsJqpI+PN7lK70vU4Icz1RplIc7f4DBYQ4injDsKQdK4yJLByLkMS5ERAcT83
 FlfjCyDxfc4ZsdoWhB04xb8F7WDjjE5oBiGGZQRE82HCJIv6U7r/8AAtxQrZougQu0Lj
 0z9qT3ccenfWJnhtsnfRzoHNk2MfieJA1JerFVBUZkknP18gWt6AGrkPKnwjR1akhElX
 X+0upb6mPnVPgmvBmrlEUGnzFMAcBMixBDl4M5lTN5EG5Dce/gvu4bch8djmansAlu+6
 4Q0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=93rGrzJIbN4aXRsPa36sA2YgZffmLYvujojlgei07n4=;
 b=ImP3ALjCpA+MNikjKCaMNKenR3C2U+HvAsVp2KrkrXYLvhApNYMi7d1tZoZJ6Ctzl6
 VGogCHghyXIM3FzLm3nFsOVldrLzdQv+JGbyMHt7l2PCz0TbMZZquYbsa521DcpbcrAK
 744n8DWgjFGw0oHXqKDzqSM+HzT1KvoKyQn1XjG4+yHApBPD/N5DrKaLt/lWI+8yZzLV
 Pc6ItsUyONj53bUovvZKAfxVd2VV21eKJKhm3G5QbFnmcixHx8HeVzSZzmnmbCKMKOqQ
 ukacILwUfxxmNjJz2n2TAiUYqfh7rDa4Wgf7h9Ftvp2JSVNFQHXv/ZpjGqDnHlqjo8Dh
 1eaw==
X-Gm-Message-State: AGi0PuYltA4APcTYT7vUrRLax19gCLB6pwFsiqkT4nCyKqjHoJyYCQdv
 PVRPZrTMLhS1RFY68lu9Y4RLPh46tY+bPl9Uf58woQ==
X-Google-Smtp-Source: APiQypJLvs3Yysj3APbklzWdZffvH4Yw0Y1ZBdxFv3eibAU71TxRJUPFthkeYhVADjrmFubQH1KD7G1cGEXRdUSCaMg=
X-Received: by 2002:a2e:81d5:: with SMTP id s21mr17176116ljg.258.1588079223455; 
 Tue, 28 Apr 2020 06:07:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200421231403.199217-1-pcc@google.com>
 <CAMn1gO6Ki=3Znco6xr9h3MhxfTGCH-PYk3V+KxKi_tpNYDzVuA@mail.gmail.com>
In-Reply-To: <CAMn1gO6Ki=3Znco6xr9h3MhxfTGCH-PYk3V+KxKi_tpNYDzVuA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 Apr 2020 15:06:49 +0200
Message-ID: <CACRpkdaaqn7Sq-K7MHifTpCojbbHQiAj+AhOvFLd=VtKTpOptA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: fast models: Fix FVP video RAM size
To: Peter Collingbourne <pcc@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_060706_716627_D8F50490 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kevin Brodsky <kevin.brodsky@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 24, 2020 at 1:30 AM Peter Collingbourne <pcc@google.com> wrote:
> On Tue, Apr 21, 2020 at 4:14 PM Peter Collingbourne <pcc@google.com> wrote:
> >
> > According to the Fast Models Reference Manual, FVP has 32MB of video
> > RAM starting at physical address 0x18000000, but the DTS only declares
> > 8MB. Fix that.
>
> I may have sent this out too soon. After further debugging I
> discovered that Android requires more than the designated 32MB of
> video RAM.
>
> It turns out that FVP supports DMA between the graphics device and
> DRAM. Therefore I propose to change the DTS for FVP to use a dynamic
> allocation of 256MB of DRAM for video RAM. I will send a patch to do
> this shortly. With that (together with [1]) I can boot Android with
> graphical output over DRM.

Hey that is quite an accomplishment :D

When I started to convert the ARM Reference designs to use the
DRM PL111 driver we didn't know if we'd find any real-world
use case for it other than being a good role model and running some
old boards.

Now it is suddenly really useful.

Thanks!
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
