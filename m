Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD6E12A5BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 04:02:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+xV95FZo0o+9cBsMvMpKZbFD8UNtXbwgVgZZpmPHyhs=; b=CUnk5C1HH1ApqP
	oZ2dmPHYLeCypv+PSPYQR9+Kf0fGvT3wPfmw6030PyPf2chtumvQ8SLWaVK7PAOMgPHilaTrzogLW
	kl3VgErcZFoISmP+dto3vMViKByS3GX7do4Kxtu/rEqVGurfRalYbBSxPuHG2fPeSQ+GV6D9Hl3W2
	W7IDkB4TX+LXfkIxlLouQARbnWgoaej+/R/we6AzvDhhgH61b6VaeyXUgTVKH6e2VhcYQzRPhbTPA
	ZOt3GMR3m28zNE5NPcEiEbTjdPz4a43yRpS0I/dQ5S5JCvikWt/1IAaO2gpwpqTLwSpxJzKlNH4uQ
	Rl3YUqEKDighlgwIrVAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijwwk-000361-Fm; Wed, 25 Dec 2019 03:02:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijwwc-0002uh-4d; Wed, 25 Dec 2019 03:02:43 +0000
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 288E420679;
 Wed, 25 Dec 2019 03:02:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577242960;
 bh=TmX6g8ShDdQRr0f01ZX9dg2x7Z+X3Sh/DiayNwiGtK4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=xirEjZHyFUs73Sf8Wkt63+Q6xEwi2tRuAYmiryq6ZcURBSZX1/XT1yukjYReC1Eo9
 pCAF+E2WU+zDtDWTgo9nuJhKVvI9URHyrQBP+a3mVZIMfXGTe2sVbtJwm4U8FBiGjl
 ASUPbDGumfhcCctSl0dFOO4dE8TgjDWCHvoSCV9s=
Received: by mail-wm1-f48.google.com with SMTP id u2so3632386wmc.3;
 Tue, 24 Dec 2019 19:02:40 -0800 (PST)
X-Gm-Message-State: APjAAAXr/jICOSYpA8C5a3aVE8Y1te5zVWyh1A3hJRzUbUa6qMMpNIlJ
 8Azb3yRQxuK22s9mUJpaR6y/JX7Eu2ntWx1S0lY=
X-Google-Smtp-Source: APXvYqxiUBJp0ZgqJ7mIBfvqEQUSXXh4FQA2JBOW1lsIiDEPzF9WNsmvrbwAnTF/RjSk5AUT80qYpMeE31ykN8KQaTA=
X-Received: by 2002:a1c:4e10:: with SMTP id g16mr6738854wmh.94.1577242958681; 
 Tue, 24 Dec 2019 19:02:38 -0800 (PST)
MIME-Version: 1.0
References: <20191225025908.25305-1-kever.yang@rock-chips.com>
In-Reply-To: <20191225025908.25305-1-kever.yang@rock-chips.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 25 Dec 2019 11:02:29 +0800
X-Gmail-Original-Message-ID: <CAGb2v675A0fG9wHiJj_pkVQBmBFDf_u1L_dxiD9pT_8VBjujzw@mail.gmail.com>
Message-ID: <CAGb2v675A0fG9wHiJj_pkVQBmBFDf_u1L_dxiD9pT_8VBjujzw@mail.gmail.com>
Subject: Re: [PATCH] Revert "rockchip: make sure timer7 is enabled on rk3288
 platforms"
To: Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_190242_203963_2BB84F10 
X-CRM114-Status: GOOD (  10.60  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Russell King <linux@armlinux.org.uk>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 25, 2019 at 10:59 AM Kever Yang <kever.yang@rock-chips.com> wrote:
>
> This reverts commit 2a9fe3ca84afff6259820c4f62e579f41476becc.
> All the U-Boot version for rk3288 including mainline, rockchip
> legacy/next-dev, have init the timer7, so no need to init it in kernel
> again.

What about the ChromeOS bootloader?

> One more reason is that if  we enable the trust for rk3288, then timer7 is
> not able to be accessed in kernel.
>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
