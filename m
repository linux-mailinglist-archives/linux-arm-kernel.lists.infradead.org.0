Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5973476B8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 22:26:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qqp3x8l0IXHBYB8Tx+gpdwzZEEk6yp+iZhDYLALT1Ac=; b=IvShxmznruqVWp
	BiBvoARk47btV/DRtmdg6/bR0o4gdpwT9DHBOCxav3ho+TX9wPS8xEt8Bpb7aPqXy8JRkmCpYQUsr
	hm2t9BduU85DK9EtUMF5clbztQAbWWHNWIoB2iPs6a+I7qDZ6yN+VP+p1kZurfPyg9+1wT5fO3Tgq
	E6onWhVItSbI2NvdRu08uSuzuxfSTrZw6uSy+UKzQ04lHbZ6LdzS0pP2lZV3zda8Syk/q2F4VqrY8
	eIVwS844ZDrvPs/IcR22B+n0Sgem5WCkYXAcM9Krpmb7FVraLkuj6WjSObpbl0X2U9HKLZNNfyzQo
	5FgIls1LUhWHrRRmYWng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcbjL-0005AY-Sx; Sun, 16 Jun 2019 20:26:23 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcbj6-0005A3-Sn
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 20:26:10 +0000
Received: by mail-io1-xd41.google.com with SMTP id n5so16813010ioc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Jun 2019 13:26:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cU61FkvzkhlUFCdPrPgVs6M101qXOJtRgMrbVE4tj58=;
 b=D0E7byTq8PMydRUBGBdJhdyZ03pDbA2NB/NDXMS6MuDu6VKBVtOf5GCG5skwK7uKn7
 vhmNjDbt87UM8EXaE1+tdh53NPp6XEUi/j8HLrijEjO5SMcM1If9PiCwbzG+kr0YGaVW
 pVMQNFCDrU3CYm7IwUce7OAJYt/XyrEsqydlkW8C1oyyJSgo/4pggEwldKDCfLAF5bT5
 yr4/BM4ixcBoNS9t6cpYQ+zlmtTZxuV3ydNyd7sWZl2jUNBqNP2V6sANDHZ1IOw1xXUz
 1Se+uAsKjRbo4BkesClYWHbQh/hqlYzHsg2Z46rV/JkJ4hnTgFGylZPF+JzVZ30xpI2P
 Abxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cU61FkvzkhlUFCdPrPgVs6M101qXOJtRgMrbVE4tj58=;
 b=NcDZtCmkAVvjIUdrNZ1IkqT84Xqcif5lpUmXkExMQS7Up6JLaJu9yzSH73yz/T2XO8
 LEkIriNwJ+Th/o53gKX9mGvuleJPgY4en1O5TXJEVDc9TjHWTwjrByMhUcZp2qmXzEpF
 OC/tvePiUXDw7512TW/PwWjKczWSIl9a9z2RBHzfGGYuByqx7KqmemoRlfapSjV7nL98
 mFXy7AjqdsOxRGgHBA5Gk1528uLe7+KbtzEPPQYMSxO4ESXGaINelFO7VgtNLHyvkB6G
 8zBeKck+J73JGpNZ4TxdGR1egP8sk0gRtojN4APDDAWXNYU5JAQRCRwzQK9hMMwXu08i
 7Vvw==
X-Gm-Message-State: APjAAAUz+oPfFh4748PMf7VFyGmwbyPamrmxEGV7x0ZXtzkYTVckTMas
 OexrPzN9ZgRWhLPnD6YRaXneGD0P8aLv4INYq4CT5A==
X-Google-Smtp-Source: APXvYqwJyp0K20tPzxfpUriL0rpV3nFe3RlfRnt+bvHztEN97cxVn0DPb74EyIod++RU0E+LcZtIWfLdTH5V/gstOuA=
X-Received: by 2002:a5d:94d0:: with SMTP id y16mr25187890ior.123.1560716768287; 
 Sun, 16 Jun 2019 13:26:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190520182648.1063-1-f.fainelli@gmail.com>
 <20190520182648.1063-3-f.fainelli@gmail.com>
In-Reply-To: <20190520182648.1063-3-f.fainelli@gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Sun, 16 Jun 2019 13:25:57 -0700
Message-ID: <CAOesGMgCGzxKS_o8sEO+FdxdUbF+AO=PTF4B3U0+87K-hTWNRQ@mail.gmail.com>
Subject: Re: [GIT PULL 3/3] Broadcom maintainers-arm64 fixes for 5.2
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_132608_960266_194FCE37 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 ARM-SoC Maintainers <arm@kernel.org>,
 Broadcom Kernel Feedback List <bcm-kernel-feedback-list@broadcom.com>,
 Stefan Wahren <wahrenst@gmx.net>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 11:27 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
>
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
>
> are available in the Git repository at:
>
>   https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.2/maintainers

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
