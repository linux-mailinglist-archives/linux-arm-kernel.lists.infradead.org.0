Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 218F61C7945
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 20:21:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nzij2NveqTE5nZwnBowFuS+XrzOW6DPpvlKDjEp7STc=; b=AkhO4EopG4tpdG
	KoWdR0tPT+RCd5H1bUNbdg6Njhuu/im4z+l9oFJR8DEhO7Q2jMYCBcZsZpjT/iHPFtpvGDdisRmXx
	P2HsBctVDB/F4TQG9qX7uLbsZIbqKN8v6kTwvk/Sg+YgaVbsXdGhwVNcZvbCb8SXV0bcOAWQ86LTI
	u53jmpMYWqhbUAAJuilhyiAC1ONyROzJ4tksjHq8yCmebbKP8MrQ7pN5VTCrwAGgWwZcqOU3FShyS
	SEQDrMigiIBPbCKmp4K+uZkwilzvnwT9suvyoDkKBN7bYnAB97P/pv4XCWYxze+r51+w8BLA9bOzi
	3rzmRepYYE3inhIZcCJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWOfb-0001mv-Qn; Wed, 06 May 2020 18:21:23 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWOfR-0001lO-0Z
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 18:21:15 +0000
Received: by mail-ot1-x342.google.com with SMTP id g19so2170138otk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 11:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D2taJJRTg2UNCEqvPUHeisc7wYhhWEOMV6TUWaPz7kg=;
 b=JaXZicmLPCbQ1s4wEPLd+sV+a4q0wnzPoifqdGpBSL8D7Z8GrydmvQGqC8UT22nL2I
 WZa/znMpgXW+q41TZVo9zK6nCks5GJUhUduUAyuXBbeNVH+4lSu2c8TsdwQTipW46XE8
 2YvlAWllyGrBAxfyw+wCC3p4SEMWY6eYou+Co=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D2taJJRTg2UNCEqvPUHeisc7wYhhWEOMV6TUWaPz7kg=;
 b=TNhmr1aAWy5RucMqzf4iacL8/Qm7/S877BHBWxYJ/pBF9G8NXiB5t/QvUprSW/jX1i
 tQYbiO/+dyyJ4F9cpXGht1Tu9zaj+WQRju8j4Eja6kGeZgbBl6c0Tia6rRnUgJHPuGod
 /06Ns1AdayjtU//4WGVgDjiYseuRgbFzRxnCB/GnPnae1dwWVFEqq4jMBGMPnKEO9C+A
 8aXXnDQkkYb2Swd1uUWXtJKhq/iyQBzfGusT8BpgyQXnkwDlHbkcNv95zvYdOxRts0na
 EcNGOyYTUrXHkjSDXVYci6FzlXYNPOcIEP8oY98yjlDP/i9MCDpggRyEcDoAtLn5XiX4
 OA7g==
X-Gm-Message-State: AGi0PuaWdYyNyA2bV0lxQPcHFFEi66ohiYvp665/MAS2R2KluupdokSX
 TWO2yRgpNpxO2nQaLw7YAM+wPy1U2ARbeohpl6fcUA==
X-Google-Smtp-Source: APiQypInw39ygS3P/++U3PAE3LlMt925jYmNYdu8cvU7nnL+hmn3yH1R3d09MJ5VoLDPJl2XHnEM/8wYsJ8wMTKfCVI=
X-Received: by 2002:a9d:490d:: with SMTP id e13mr7509661otf.356.1588789271980; 
 Wed, 06 May 2020 11:21:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200505140231.16600-1-brgl@bgdev.pl>
 <20200505140231.16600-6-brgl@bgdev.pl>
 <CAKOOJTzcNr7mc9xusQm3nCzkq5P=ha-si3fizeEL2_KJUOC3-Q@mail.gmail.com>
 <CAMRc=Md7gLMThfGF-7YLqW17MpMhU=UFbdTvfjbr9fFHTLir8g@mail.gmail.com>
In-Reply-To: <CAMRc=Md7gLMThfGF-7YLqW17MpMhU=UFbdTvfjbr9fFHTLir8g@mail.gmail.com>
From: Edwin Peer <edwin.peer@broadcom.com>
Date: Wed, 6 May 2020 11:20:35 -0700
Message-ID: <CAKOOJTxkcaq0bF34bcz3HZzqsNgfmJH=Hd+odNNMX5gDq4to=w@mail.gmail.com>
Subject: Re: [PATCH 05/11] net: core: provide devm_register_netdev()
To: Bartosz Golaszewski <brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_112113_781294_6144DC4E 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev <netdev@vger.kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Fabien Parent <fparent@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 5, 2020 at 11:46 PM Bartosz Golaszewski <brgl@bgdev.pl> wrote:

> Re the last bit in priv_flags: is this really a problem though? It's
> not like struct net_device must remain stable - e.g. we can make
> priv_flags a bitmap.

Fair enough.

Regards,
Edwin Peer

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
