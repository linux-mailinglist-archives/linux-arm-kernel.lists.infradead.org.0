Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC1DEE3BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 16:26:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qNRIPeb4DXjJzy7MLKFekwidB3132BYgN5zXLUWKJhc=; b=oMM7tWqmY0UVfv
	TwM1XMbTDhqGp1sZijNh+fxKUFfQ/osexQqB4mkbxISjjGCzMcMkJVrPyNUeVEOiEn/xkKSA9Xans
	LxCa/q/SZykGtiT7Th69h/QnhOh/BSsMYAZQG6kfqIz73Qwb/EZ3Zue3wQYfxT/4Cbxy8mbRo+7zG
	vP58091WBxCiRYxnlN3cefhyf93EyDxq4A/CIMhi01UqjTfKbw1eHiDjNablYjnK6xMQJTCiBrYsl
	4H8u/HxqDdAgGOQQdps9t67AmKBc/9694mDvQcgJvBkgN9UhAijSUU8nji5CTaUDJU0osWu+pEUPm
	h/UIGb6Zw2AV9l6KTROw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iReEy-0001rW-HG; Mon, 04 Nov 2019 15:26:00 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iReEp-0001qY-Fg
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 15:25:53 +0000
Received: from mail-qk1-f175.google.com ([209.85.222.175]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1M7rxE-1iWc2x0TEw-0055JO for <linux-arm-kernel@lists.infradead.org>; Mon,
 04 Nov 2019 16:25:49 +0100
Received: by mail-qk1-f175.google.com with SMTP id q70so17923746qke.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 07:25:47 -0800 (PST)
X-Gm-Message-State: APjAAAWThHwV6dpaseFgySMJ0vDDzDnZuq1modK9dZ5PCSEP9FtHZkJI
 So6TMQUxHW3mlWkGU8tYtMhJ5XKo9mqy/r1btRM=
X-Google-Smtp-Source: APXvYqzFZt8fB9folG/dB9+o4OKV18odAQAK5Xk5C+z1pe04hR7xC3ih594ii6t+6rsPIHnw1KOyYjwhv3nQwrhHlNQ=
X-Received: by 2002:a37:4f0a:: with SMTP id d10mr17070233qkb.286.1572881146989; 
 Mon, 04 Nov 2019 07:25:46 -0800 (PST)
MIME-Version: 1.0
References: <20191018163047.1284736-1-arnd@arndb.de>
 <20191104151310.GA1872@bogus>
In-Reply-To: <20191104151310.GA1872@bogus>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 4 Nov 2019 16:25:13 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1B5v_3p0XhddoeWu7wChr6BndfqVVjPUvWYC6=aRfLXg@mail.gmail.com>
Message-ID: <CAK8P3a1B5v_3p0XhddoeWu7wChr6BndfqVVjPUvWYC6=aRfLXg@mail.gmail.com>
Subject: Re: [PATCH 1/6] ARM: versatile: move integrator/realview/vexpress to
 versatile
To: Sudeep Holla <sudeep.holla@arm.com>
X-Provags-ID: V03:K1:XKL0hDOeNAgNTgjUpgcz8Byx9nfe7KTr/T1ZlJe0tFEXEdEt317
 ClQQLRnTIzGZA6F+bUjyYoHcYToLTqNN2KBf4v+hp+lgT0zqoZ+gXnN+5+bnc2eFwe8Fjvn
 4e5IZq9ogN+fLSKSpAQxbPujHDjSQwDt3PxbwlJqWw6SAYOuGlkwojCiw87Hl7BVelYnqda
 dECPFQdoKo5qp+apSsVqg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1at2hxz/uo8=:xTNPu/qKQWJOU4rSWKp0Y2
 0l6jr3/GaEKM4iLKQ/sKjkB3AZHR/ZRzYyFYpex92qEBgp03VXCqVPCQvTpUiZKUONuJifjR2
 cxsj3c4/Ch7AaIsjA8hNh5kEteV1CN1zAS+/HVOKOyhnekdkTyUcoOyMntsiXvYLsLQoecB5m
 ySw6N2Db2Rjs2prhHP+J8WdZkz8AkymjAo7n+srTHZoahZjZWmNB2AmmBYEbSkTZNXh6Qu6vY
 INONAZ62nfTUk7msZqsDSrLwCttm1sRZNJtFYYZxi41+RIFhWI7ELit0AV79skScjpWwVtHah
 jXounuyTH/Dh68CUllsPoLZOLXrRmzyf94Fh8okuVAOMDECy0AQUU9d3l+G9Vq/HXEoSQzIxN
 DDMoN7owWlqsIZwOBOVd0AjNIgluroYb33HXIUZGVJa0hEqnaZTwGa/+UdnfZme4oBlDjxiDK
 mM9rwIROZdrqvVAh8o91W+n2pjgU2XCHBIWzdm6ewupGXqcdgrpWZuwiiyNfbkDTvucmVfuv7
 AeREw0AJmtZdRn73RKVzfKNZqy11O2W0ZjSDa70GfgB7izMaHex7G5Fs8Me/GSrDEOaWmzN4s
 8qDq444Sa2AUyzeHKs6NmjWOzAzgWLVCiB5zfCUB8b01U6BVRglVmRZmYXj2j7Tqr6IqKjKfM
 SAJajJ0iHlKkyxbRhOdYxdsWu6B6+g7oiHT7xv89XVqLftLyiS7TxRoNOYsyw//3Fx648ybY8
 9259bjd3v2Jm5vJJCQFKycWhY5VP8t75Pm32zlomZVsksS/THhYSxFN3OpJhw64LxvJohuAQr
 zYuxgfD1NtRxYJ+7vtkK/ApDz4pOInhdupzgYj7L7E2fPA5NpPNMhLezzs6zjxm3jWcM4BkaP
 FL/pJmbHQkPvpXd8D+iw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_072551_815858_0C44B059 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Liviu Dudau <liviu.dudau@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 4, 2019 at 4:13 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Fri, Oct 18, 2019 at 06:29:14PM +0200, Arnd Bergmann wrote:
> > These are all fairly small platforms by now, and they are
> > closely related. Just move them all into a single directory.
> >
> > Cc: Linus Walleij <linus.walleij@linaro.org>
> > Cc: Liviu Dudau <liviu.dudau@arm.com>
> > Cc: Sudeep Holla <sudeep.holla@arm.com>
>
> Looks good to me, so for vexpress part:
> Acked-by: Sudeep Holla <sudeep.holla@arm.com>
>
> As Linus W requested, if you share a branch, I can give it a go on
> Vexpress TC2.

You are of course both right, I should have split this out into a separate
branch, rather than sticking it on the end of the completely unrelated
pxa-multiplatform branch.

For testing the changes, this should be fine in the meantime:

https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git/log/?h=pxa-multiplatform



     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
