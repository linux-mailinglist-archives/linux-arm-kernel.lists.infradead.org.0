Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C37813881C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 21:00:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6FV3zxKONRcLw5GPDdTdCbYHHNqxrJCfk8o2D9U4evk=; b=fSCSiyechlI8vv
	WftSzTMqeyhKrERkShbZcdoCvt01viZJtekg0ur+SGQN0ntzqFOM4xdBJ5JIzPKxtRUPGCURdv5qe
	3VMBm8wgQxApoQv4Zjgg0+YHU6q1orSE2UgXjDQZNHJc4SzydtmRCIkGsAjJ3+/W5I4XxPGFS7x/w
	yQu7SAbec1gywfXT9N47B6x7tZ7tEXOjl4XUjLY3Wkiu3p2izI6wUEnNoYULb2vB3t0QkH/NnM9Dz
	m/k24IcmzQYuwSwEArva7KPgTvUlaWmaTTAch7ZtAMUxfxrIKve2mIzLbvZgwyXRsq4UcKmzBoBVM
	z5vsKqqwJg8vDABWOr0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqjPY-00025H-3H; Sun, 12 Jan 2020 20:00:36 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqjP9-0001y3-2m
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 20:00:12 +0000
Received: by mail-io1-xd43.google.com with SMTP id x1so7334295iop.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 12:00:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4mB/pHZUD7pjqdY45Y5CDvGVoduZ0ZQ2r5DCq1x4iog=;
 b=UPPSeWIa8hQFLkbNLWRaxUgSYb7TwmCHtvRkLp1TpTRt4i0ahGu0JrwZmLsSVBtxef
 fOvWys6QfXgKHL5I6BAgz+e/whyHzQjbg5WP8MI2J7qEjPtaYm40v/8CsdeIbs/F3CNF
 zK1T3MvNTJ2UPXusLsfkZ3t4FlycfJoxPvPS6jErw5AFU7u1dy62EgZJllR4weH/vj/R
 eoI1j+iqmk4ttbJ1xX9uvw/SyCaZ2Fcn52DUxkynHOwRMpo3HVnzt6QdJ0a5pgWphPln
 pFkXqHo1ud5kQrIU1zlHrq4w86zzD6u2vo2/HEjtTEF5PVcJqJVKqRhGiZc8wAhojoTW
 183Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4mB/pHZUD7pjqdY45Y5CDvGVoduZ0ZQ2r5DCq1x4iog=;
 b=ZcMBw8NfA5TlBUy4SgmpW9+Rhv9Z2au4rpX1PJCeXz9c6ZBbmS0vfZqHu/1HZl6UpT
 N4yQ9VQ4bvbQD9r0dvABnOX5WHazxSKklVxLztUN15IB5IhheLCjbJVaiF/MY9ka7IBo
 amYq13rBH1JJJEGfsZsLzocwQd2cfJsiY3yQQ95IY8DVa/Teg0HbVxjcBYJ/xG8s0Y2k
 k0sLGwCtFYr2pc/72gxrxhPFWYzPJPb0zo377Cgo/srZDSB4BvHxFkejznh5lpcUqm/W
 1fPY9hNgOsMLP83cNmAqn1jeReL/3tt5RpNn8cPpk8QT9ppy95gTvCIs/s6vLlnq8IWP
 na/g==
X-Gm-Message-State: APjAAAUgiT7trVy6M2rNgXK/017rM9TtycaZiUoxx6ivRVUU4ppnsivf
 iqYEQ3SAUJp5Pi3mszrOahBt7mJpWQ5XQNU7jojKIvhHzLY5HA==
X-Google-Smtp-Source: APXvYqyqtIdNVp4dAlM2o9n7nX85aZbnej16a5k16emsTD5losR5+msLRBN07golodtkhQMVuCOh2ZGuVt7FoBUusA8=
X-Received: by 2002:a02:7fd0:: with SMTP id
 r199mr11669542jac.126.1578859209969; 
 Sun, 12 Jan 2020 12:00:09 -0800 (PST)
MIME-Version: 1.0
References: <20200113065808.25f28c40@canb.auug.org.au>
In-Reply-To: <20200113065808.25f28c40@canb.auug.org.au>
From: Olof Johansson <olof@lixom.net>
Date: Sun, 12 Jan 2020 11:59:58 -0800
Message-ID: <CAOesGMifHn6DbNgYm6YUbdKjSL5rNgdWrq+HX9dEusrOr9xX2A@mail.gmail.com>
Subject: Re: linux-next: Signed-off-by missing for commit in the arm-soc tree
To: Stephen Rothwell <sfr@canb.auug.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_120011_176996_78EF05AF 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 Yann Gautier <yann.gautier@st.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 ARM <linux-arm-kernel@lists.infradead.org>,
 Ludovic Barre <ludovic.barre@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Stephen,

Thanks for the report. Time to automate this at our end, we've had a
few too many of these slip through all the way to you lately.

Where do you keep your scripts that you catch these things with? Do
you have a writeup of the checks you do? I should add it to my
automation once and for all.


-Olof

On Sun, Jan 12, 2020 at 11:58 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
> Hi all,
>
> Commit
>
>   7e5d83981911 ("ARM: dts: stm32: add sdmmc3 node for STM32MP1 boards")
>
> is missing a Signed-off-by from its committer.
>
> --
> Cheers,
> Stephen Rothwell

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
