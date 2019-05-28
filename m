Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BE32CC9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:50:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WXz2igxnY6R3CRYCQxng7z3+CiuOcwkHbbnCLpJJHCg=; b=LN3lAGPmvZdHH3
	0gVfWjRoSeWIqQhOTm07C+fmlN5VV6fLuZMonag0Tt/Jn1094Gg5QrZBzqiUV/rHzNBX25afg0GEH
	6srHsEcJAnq1JZb3lGdGA1ZedWF4F3yWj63XnsI/x77MGpJl5FmwunYrJRBJ+NPcpDj3rY1OY3NBl
	nlARCL73g8fi1pizVVw9j0zCXUlLyXt6bm5EDP+/93j+K2ARtICLe0dQI2GEvZBDjk12bzoUcQAV6
	DcMH/w5tgSsAcgMKt+bKprn+HnSb0HmoYGQeoc61CRYoxV8IvsKH+9h1jqoh+TcWoRtg3l2q9hdkM
	gay2rXfEnh9d9pIaIKrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfIm-0001Hl-9i; Tue, 28 May 2019 16:50:16 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfIe-0000Gs-D4
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:50:11 +0000
Received: from linux-e202.suse.de ([87.150.158.223]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MdeKd-1gwKXx0IPh-00ZhAv; Tue, 28 May 2019 18:50:00 +0200
From: Fabian Vogt <fabian@ritter-vogt.de>
To: linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Subject: Re: PL111 DRM for TI Nspire
Date: Tue, 28 May 2019 18:49:58 +0200
Message-ID: <15933797.6b6mW1LQZ0@linux-e202.suse.de>
In-Reply-To: <F4EF7060-DEC5-4122-8D51-B5DC3F1D553E@gmail.com>
References: <CACRpkdadF31-jKZPuFJCz0bk7iF=7VzbyPD4EpjiK3DnbpHuOA@mail.gmail.com>
 <F4EF7060-DEC5-4122-8D51-B5DC3F1D553E@gmail.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:3E54fjfY5zN3E+nyEBNeAHXrQ1rO8kMV0dF/uPfxDHXKuW5YgEz
 U5Q7SkWsi3nYnxjy7yaf+CjMZfHnU1kJWKKdyMJWSlS64cFHEQC59/L6yrlD3AZcqiT3c9l
 rkI/2vYz2M8tl4MUIQ7MGXuXd2k7V1nQgvPO6NWehaweooL/eQKCsPFXSSRGYFjOduxHntc
 nmPpP44cufxDw96kWd4xg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:53QYeYZAd9o=:293CPPx2bhHK6oxZJd0rEz
 qhsdgQxHa8HYWBh8NhkzntiesCkT4WYEEOfpBTN+R2jwoA8QG/kGAF7/TGUJIvOdmZ4XOL4cz
 cZI3fcbivFWFVWET0CPd1HlxDUkrj1jpTrywyhj7xHN+5mDuSVyKzdmawWl4ZtpF3/5t47+l3
 AkgPBS8n1zJMCp/xwi7hKsG+IwyjJGrcrpnQ0BScoaq8tsqxgApdo533/XYo5ZzW7IbtjDsJw
 10OSW7lLt8gqgyKkTx3AFd9FU1q2vs7R/nVGOa/P1XXhrYIYFYIo3PjRtWMDvNDOxlO4Nj4It
 SCE0Mv+oNBw7C5bLJoDt+aPab/HIL6+EiaSW5/wO+hpd9K/eND0wywe8KI9TDGzT9/wa5SYPB
 UBBBA7EAdVYNl3BHGFKECuup9U/yy+bQSTuk2358TLmeGOOa7rN0QjXUvoO0bQLi9FM18fRWF
 NmbulssJokklAX2aMcsV3MrGlGffXXHxwHsKpL2oeRFEnAf3zguhst4+Cs8slaSuBw5wXL4HG
 sfBufIUfSV+DEbwfC845F+YBN2yc0vFkhqlS+QGz0d15H0fA8lbzdJ9lRTD87boI2DkUKP9Jr
 v2iWPUsFY6Wv6V4TsiW16ZefPWFYwt4HQr27Yl1FKcAu22jmdFp8z8jfLvWRqMR93PNKv9S13
 AHwca3m3t4RwRtYKxR3j8qrPqk3mqLXzuPj6JZZPZtA5nhr5ipgCFzCTHAmWrm9kjxvvBDzM7
 QnqYZfg9nR5qsAGErUdCcrP/GigR/oInTe4ID/Np4fz33/+VL8bIy86HJTQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_095008_746021_4F00AEC2 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Daniel Tang <dt.tangr@gmail.com>, Linus Walleij <linus.walleij@linaro.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Just subscribed to this ML to be able to answer here properly.

Am Dienstag, 21. Mai 2019, 17:24:19 CEST schrieb Daniel Tang:
> Hi Linus,
> 
> Thanks for reaching out. At this stage, I?m not able to personally test patches as I?m no longer actively developing on this platform. However, I will reach out and direct your request to some people who can help (and hopefully find a more appropriate maintainer). 
> 
> I will try to get back to you as soon as possible.
> 
> Cheers,
> Daniel
> 
> > On 21 May 2019, at 10:52 am, Linus Walleij <linus.walleij at linaro.org> wrote:
> > 
> > Hi folks,
> > 
> > I have one more user of the old PL111 fbdev driver before I can
> > switch them all over to the new DRM driver in drivers/gpu/drm/pl111
> > and finally delete the old driver: TI Nspire.
> > 
> > Before I invest time I want to ascertain that the maintainers are
> > actively using Nspire and can test patches in reasonable time if
> > I work on this, since I cannot test it myself.
> > 
> > It seems easy enough to convert that I would dare dry-coding it
> > if I can get some help testing and fixing up rough edges.
> > 
> > Is Nspire ready to test some patches?

Yes! Just point me to whatever tree to test with which patches on top and I'll
give them a test run or two.

Cheers,
Fabian

> > Yours,
> > Linus Walleij



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
