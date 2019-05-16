Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B082F20E17
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 19:39:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vu/pB0s8YbNx142O/xp4MhmSuFdWkDuTM70cqfepyok=; b=nK/XraZFJUg+RH
	HOOVi/DEPZPXpKMflckh/hnVpt85Sb5F2tgukZb1hPPHzqjoRQy6gNeiYtzi8kBo35NMBG2mXsCIh
	fqCZs0TXm5XamTgpe/tr4R2FtNks6PcG9BbdZxzYLBxki7/1pBNkZp+pWS7qlq+br+8eUTNouuS7e
	hSwFRLDwFK09QH/PeaLi1UDLjqS0V4uey1qhoPYZ7JwFDbXCHFUu+GzgeySSzhFoKRAAKpxqPpGHb
	OTDatmnhMtDw/2rd6GY8Sc21Lm+l2Ee9oWzDUu0cgxBSrVXT9QMH5cLfwzlv8/rIapX1Dp87j79Xs
	Q/ATWDLhKD2yCvKSAu2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRKM5-0008Jz-DW; Thu, 16 May 2019 17:39:45 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRKLw-0008Gd-UL
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 17:39:38 +0000
Received: by mail-ua1-x943.google.com with SMTP id d4so1607938uaj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 10:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=btkYXyszYOl4enkQNj6rF85Z8K5s124rQC98XbJLKTg=;
 b=Jb1d/6dTS1pvv/Mc3sngMU2XidRneSla0eokNz7UyBI0yOzrq5vCgombW1gG1LdKUz
 Z5kTaogiXfzaxz4CCpB/AezBDqTNpXyLbqEZlHFmcTaBm69PYrg8A59ElJe/LJnc4gz6
 GygFEMTkuX9hdSY7oSVpDZbJJBD05Vgp574Ec=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=btkYXyszYOl4enkQNj6rF85Z8K5s124rQC98XbJLKTg=;
 b=RmEzbQo05+cTYiqUhNZrWbO7rMsjbUqdcfO4q3UC+NRyCoT2ApJS8AceVZNbU6U+Cz
 0nnBqiaVo/mp3Z3pKzY+FT1lHvMo7Lwej5GJZKVfmbKabL2dYbrt5UFDrAkX9IjkvndS
 fuxXljru0IKHH2NCu4CYESstkELLVproN9Ayo1O3CzZ1dLgtioHvOm6UwDiREv027L3U
 RYZ5mNF9SDw58NbrP3eRXwqcaT+lLkmZSWlKPtZIsxK6EajoA2FQGrhzc5sYdz8CcQ8/
 3Z1DrNnJZ3IOcwzU7yEHPI09oZN3+KrwAB+g5T9Gdv0EQp9IiZQfci0+qGFX1KCdJjhC
 nUaA==
X-Gm-Message-State: APjAAAWj/PQMUHESJd0uYF9D3XrYgA9XLsSarqdSDSEOnn3RooPJuudf
 H7Q/uvsL2K/Qc0U/OL+hPCXkCvuSRj0=
X-Google-Smtp-Source: APXvYqxZwvy+Li5l0ooPAEckZZMPC1UUX2nFuHekChXREkxuvMFV1rl7XD/yKtyyUltapCt+drOSEg==
X-Received: by 2002:ab0:e08:: with SMTP id g8mr9019478uak.32.1558028375030;
 Thu, 16 May 2019 10:39:35 -0700 (PDT)
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com.
 [209.85.221.178])
 by smtp.gmail.com with ESMTPSA id t68sm1803335vkd.12.2019.05.16.10.39.32
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 10:39:32 -0700 (PDT)
Received: by mail-vk1-f178.google.com with SMTP id u131so1256735vke.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 10:39:32 -0700 (PDT)
X-Received: by 2002:a1f:1e48:: with SMTP id e69mr23173110vke.16.1558028371386; 
 Thu, 16 May 2019 10:39:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190516172510.181473-1-mka@chromium.org>
 <20190516172510.181473-3-mka@chromium.org>
In-Reply-To: <20190516172510.181473-3-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 16 May 2019 10:39:17 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wk0EFO2+c=KAfemo0_w+QEA8==KzOdN-niD0mA_myh=Q@mail.gmail.com>
Message-ID: <CAD=FV=Wk0EFO2+c=KAfemo0_w+QEA8==KzOdN-niD0mA_myh=Q@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] ARM: dts: rockchip: Use GPU as cooling device for
 the GPU thermal zone of the rk3288
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_103937_039184_2C9CE4F3 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
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
 Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, May 16, 2019 at 10:25 AM Matthias Kaehlcke <mka@chromium.org> wrote:

> Currently the CPUs are used as cooling devices of the rk3288 GPU
> thermal zone. The CPUs are also configured as cooling devices in the
> CPU thermal zone, which indirectly helps with cooling the GPU thermal
> zone, since the CPU and GPU temperatures are correlated on the rk3288.
>
> Configure the ARM Mali Midgard GPU as cooling device for the GPU
> thermal zone instead of the CPUs.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Changes in v2:
> - patch added to the series
> ---
>  arch/arm/boot/dts/rk3288.dtsi | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)

This makes sense to me unless there is some better way to model the
intertwined nature of the CPU and GPU temperature.  It's my
understanding that the original device tree snippet was there because
it was added before the gpu node existed in the device tree so the
best we could do is to suggest that the cpu could cool things down.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
