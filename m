Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28242A7131
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 18:58:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=skBoqKTi1sbwz/nepGqeTC9XQEx1pPiFuBVi/kEbPRI=; b=FHjkhkM8V1SRD6
	dSxV/CAHg3asg4gXSDsxnDysnJ/t4pvnl0lH3iGWx5YSO0rii2Eu3HPn5p0Z2iWalxRFWMfx2xKDM
	6u4WVdkAKP3BeG7oGGeFpsXpBgR9HQv8J1RkKwS9Wh7G+nxbrGfC5oiDTOQglSmLhSOXGoBjC9DYN
	VlYC5ylZGE6OkSPwUzlejOxx4chcSYsbJzIKMa6HkUYpexzCgTHSv2g6sLwulQ216bfGPaL8P2fhW
	0/i/dfc9PAbQ8KyURRGla94m/CsYo2HCC4KC/LPQoYPQfWeR2T8h5Q9TnH9WuIWKVyDHA2wkHAuYm
	3QbWmOCCG2u169umMvJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5C8S-0005Iw-KZ; Tue, 03 Sep 2019 16:58:28 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5C85-0005I9-GZ
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 16:58:06 +0000
Received: by mail-qk1-f194.google.com with SMTP id q203so7420659qke.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 09:58:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RkPnVypPzdwCjcKA9Ykv69yGAyNUl9E3BR2JuA7QdQE=;
 b=ZaVrTSQ0u/NTkSlLaovGczd/XG0Ge+S78cBMaM/ZSitspN7zUvX5bLMjxn5zAVUwqT
 Sx1v6TxNcUWXNd+MCupbiimqoFzAxkHvDPIDb6i6cSZfkw39ZGPBqOhmqN26W+3EXYsj
 GdvzGXNk02IrEAe8TD2Qb2nk7vBvRw7fVwVJT5PBSciZCaFAq+XROmY/nZFucZmY87CP
 AYXesu+vi2402iekSahQnu+jMEW8jy99cy7WKrSr/zry5p9oTFEQOkJx1vY/apRsO8S/
 YH5m0ogqXK3J4YZ+On7QcEKryX5pJYJsQXobVsCcx/4+QbF126UqHfqZarFYUfoECDIf
 p/3A==
X-Gm-Message-State: APjAAAWg3fw4Z5sVHR7Kp6EcydmI6lOl3NF6Du8GFrd3I7OUxMTsKTZ1
 qWTF0JhoBTHQogxlp5e3Vc0hIfMrflhypdwnc7M=
X-Google-Smtp-Source: APXvYqzqJ1j+YGwQwI8bxNLfT6dMPpI7NCVEHHKPWbf5R0Xo65e/6HTtyYppdrI8o7uIw4AGvSEV+FH72RaoR7jHLNQ=
X-Received: by 2002:a05:620a:b:: with SMTP id
 j11mr35438639qki.352.1567529884395; 
 Tue, 03 Sep 2019 09:58:04 -0700 (PDT)
MIME-Version: 1.0
References: <24f215ca-f3a8-4497-bf98-9ba1808b37be.lettre@localhost>
In-Reply-To: <24f215ca-f3a8-4497-bf98-9ba1808b37be.lettre@localhost>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 18:57:48 +0200
Message-ID: <CAK8P3a3z0unjHPqCKXPSupuoCLGGMHDm6tT7gOZ=4P28mDUXxw@mail.gmail.com>
Subject: Re: [GIT PULL] Allwinner arm64 Defconfig Changes for 5.4
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_095805_595426_BD7E822A 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 4:31 PM Maxime Ripard <mripard@kernel.org> wrote:

> Allwinner arm64 defconfig changes for 5.4
>
> Two patches to enable the IR receiver and the SPDIF transceiver found on
> the Allwinner SoCs.

Pulled into arm/defconfig, thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
