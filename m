Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54928A6A7E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 15:54:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z6kmdepnptVG5bMehYrKRwNpd9U1XS2aoGi4cOiwsM4=; b=kEcuHCL5HmBKtK
	z8XrtZEkzxzqzoPTioc6vsLiteIjYUm7bAkANwTpLIlryZ72+Wq8c5bdy3S1+0E4bG3Y07WCHP33r
	ayR7vFoROnYkDXXgD9IuvEcQMBeZRbC7vCLwsHfGl+bP2EEiJ9EfJXhjpUFwlDaD935MSpg0LRhYi
	ew49FNLITris5uyKCy4QLCOYrkX8FXpJ49oEMJ0JAHoQd0hYt8kGhw1ae45uj1c7dr62ykrK4UR5w
	gljBgcrtaGIhqx8zBPjYoHGdNQtgEb/shuvPK1xOOz+E6bc7XHnQfq/G3zWCOcQchwShzdos5Do4r
	QPRv2H6YOCirKC31omRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59GD-0005Ug-Gs; Tue, 03 Sep 2019 13:54:17 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i59G1-0005UB-HD
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 13:54:06 +0000
Received: by mail-qk1-f195.google.com with SMTP id f13so15932916qkm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 06:54:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/r+3S5C8hYD7S9YEDCgQruxzRt39Gb4thhb4WG02I5A=;
 b=aTr23suPTLhUIN3EcszzqpSTv8aO4GtPsVZmUxIcKFHX16x+ssXrKhqsB6Geo/WsP9
 qjvqKk3+GzcZeahcDV/5ovDhsx0g4t/yeEruWdc9zkImDMBf5I9oXFecD7Ez6O/aq0jv
 Xhx75ypfMhnpeSJ4hfhx4J/6nUWQwFoWnddnenmgE2CEZGKyTHvyJvhTVQt98LrH21KM
 jBqAJwX5rH3ensA6jhwQDr5NhoM9JEeoJthSwD6q7THVY83Q9CFDYmRdo1VMiHgtHFHu
 CyVeqI6M1gy6qfxFmhaT6Of59bS/7lFpMErwzSn+xaocITcIf53RpFi52iMIDcjRefEE
 v7EA==
X-Gm-Message-State: APjAAAVnoCuLwXf0Sy9Jc+YBXbIi26E4bh0L7xtkS7vlLJkTPPTKsOv2
 gN3ZRvDu9TWC8MEOlgg/U990SuuLIi9x8mK5uSM=
X-Google-Smtp-Source: APXvYqxGzpSdBJ4axcS6trQA9QY/4BMrVYul7MoCdHAcALPJmwx/FamJG9Y7ywnl9aamIZWZVTOqFdoJ+8wO6JWyS3s=
X-Received: by 2002:a37:89c4:: with SMTP id l187mr6560886qkd.286.1567518844519; 
 Tue, 03 Sep 2019 06:54:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190823123643.18799-1-geert+renesas@glider.be>
 <20190823123643.18799-4-geert+renesas@glider.be>
In-Reply-To: <20190823123643.18799-4-geert+renesas@glider.be>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 15:53:47 +0200
Message-ID: <CAK8P3a3uETiLPw74yzUYDTTv0rzedXdhHz8xf4AvSHe59oYrRA@mail.gmail.com>
Subject: Re: [PULL 3/5] Renesas ARM64 DT updates for v5.4 (take two)
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_065405_573346_02EA30CA 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, arm-soc <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 2:36 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
> The following changes since commit 0a05b3d7fee511de8a1c9dffc3d86f1df55e1737:
>
>   arm64: dts: renesas: ulcb: Sort nodes (2019-07-30 11:25:35 +0200)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-arm64-dt-for-v5.4-tag2
>
> for you to fetch changes up to 38290431d56d7d3928ac89e9f8d3d6b3c8df4c6e:
>
>   arm64: dts: renesas: Update 'vsps' properties for readability (2019-08-21 14:18:56 +0200)
>
> ----------------------------------------------------------------
> Renesas ARM64 DT updates for v5.4 (take two)
>
>   - Sort nodes in various SoC and board DTSes,
>   - HDMI sound for HiHope RZ/G2M and R-Car M3-N Salvator-X(S) boards,
>   - Limit EtherAVB to 100Mbps on the Ebisu and Draak boards,
>   - Small fixes and improvements.
>


Pulled into arm/dt, thanks!

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
