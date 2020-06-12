Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D93F21F756C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 10:46:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=85g+Pk8GlUabN1D7Mlt9tD07Hak7sO3oe4yZGgjOAj0=; b=fbeTzTzAYE7wDB
	nVUeLjWVDdlLh0MYVeM9AztPL1L2nWcjuUBsKGk7cw4mmLI7MGVtQluzKXMSlsljn8mvmJluxC1pQ
	YidLRQVhMjAx/teAwxExaKwPJrZF+l/X2YBdHNErbe7YHQgPEzbPpigTyt5KWv9gfqVgSsLecYsw6
	HG6w5c9MzBBS6PbAkoxCankvwGjCxvN/2EGlqG9IGDYBxk3qyhRzv5JLKr9Fivn87O+VbAZNvmpTl
	dIIAMx1AudKd2yaMF8X/MvETt4MQvGBFgo6qflZuHGUSmkEmikM67K15+lpJHGzKF6BcwY7xd/5w9
	8CFm3IBIgHSVtcM+Jptg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjfKq-0006ZP-D8; Fri, 12 Jun 2020 08:46:48 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjfKg-0006Yr-Tv
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 08:46:40 +0000
Received: from mail-qt1-f175.google.com ([209.85.160.175]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1N49d1-1ijtjH2hU1-0105C3 for <linux-arm-kernel@lists.infradead.org>; Fri,
 12 Jun 2020 10:46:34 +0200
Received: by mail-qt1-f175.google.com with SMTP id y1so6539891qtv.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 01:46:34 -0700 (PDT)
X-Gm-Message-State: AOAM5306qLpFXTUkSrD1Dvua7jEGuFyCHyW0Cx6IH9LBAyVZM+YpUaT+
 Zhc1po3pbwFGDSYC5h5X1QTYYC7QEyoOeXIk9xw=
X-Google-Smtp-Source: ABdhPJxKqzRLSO4fMRoy+D9AoIyVuflqbMy8wTI1zNSuYYHVNq3qpoLgEFps1G23pz8GebJwdhyh2Ig7jDkhxGkyh+I=
X-Received: by 2002:ac8:4742:: with SMTP id k2mr1981341qtp.304.1591951593211; 
 Fri, 12 Jun 2020 01:46:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200611134914.765827-1-gregory.clement@bootlin.com>
 <20200611134914.765827-2-gregory.clement@bootlin.com>
 <CAK8P3a0Rc6qd0Cb2yMNupbCP2NWRQAsEKtvEr5sZV4ANw6xfNQ@mail.gmail.com>
 <20200612083510.GB1551@shell.armlinux.org.uk>
In-Reply-To: <20200612083510.GB1551@shell.armlinux.org.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 12 Jun 2020 10:46:17 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2BpNVSE86zEYSGd7x+OF-7spjGmU331TbQX=DRAkpMoQ@mail.gmail.com>
Message-ID: <CAK8P3a2BpNVSE86zEYSGd7x+OF-7spjGmU331TbQX=DRAkpMoQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] ARM: Use PAGE_SIZE for ELF_EXEC_PAGESIZE
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Provags-ID: V03:K1:Cps1Otgm2aljUgYQr5fUfT+KN0pWEsi4Z8bzFVsnav+RiUwjrPX
 /eus3OfSTov/XBX2slFWOByx7+q+O/nYcy/unPTph8S14/d+q+00YWMfYVzUVkX0qIFpYmK
 Fd+5/k1og1fUIxTZwwC5zmFotq3cZewV2/dAqSMU6BDzdqiZRc+FRaYr/hy6H7RiLvliIXW
 HE4HQtRhTzs078B1BMPcg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mq4DW8GvFoo=:6FI5SXfMCNaejA+gCBDZLW
 zzeUZU2/zRm6KsVWsih0mKNIkDYnHiVhuB2cxPB60OyoCVci14BvfhX7AblGGTJk97fVUtQl9
 CkNSEQ/ouE4//IJqWqY44rNOhGT0PGqn70QD2nEszfrApOodEnH+/K+Q+C3whabmmSN+8GdLJ
 3gkY7iRQXeS9ZRRZIxsS9bCNblIdwvoGVCERtuF2s66iN9Q7nJyiNZlHdKtHEESw8XHaekXE0
 voiMKMDzfnfwS9cqjyi8m6Iz4tVMAI/UnU/WfyHIfw3neHUk+njJj1N1PZ5C7rpEuo0lEMCqN
 F/vh5Koc7BnlWz6isIt02iTYZ/LKzGEoAKANJNvskEiJM00VB/uL29zt9gzB61y1A7573Mp0X
 dLsDTyfTUH924uTLylBJ5cKDjleGQ5+JtKXvV0bHTf4jFcQgc2EnpQz/uomdpmmPr//8w8pPM
 3rJ9PYmvdVFlcGc/MfYh2HupHfJOJU1MT3du3u4Cj9w6HA+Hci1cKmcaZ3/8//o0dCi8vBGwp
 hvgDQTu15AyQcxcAB92ki6XL8qsnK5Is+yDh+U6iR66K3KXGTdsrVh7trz5GPZCuEvuMjDGre
 1QtGJ93GN+Hj1UX26G8JfjgFfVpPMzWTkGcZkA1EU3l7BMmPZHuRY5jYVemeuoGxxY/6+cAPt
 Qcdtlcib9NtmzKkn1EXlAbKGsX4r+pH24uSHcJ1twmQ9B3JMMo+Z8yOh7xDdaO4tC2d+Nheo1
 51arQqPedk5EIqA/VN8o/Iu91YRJmuO9Zt1CNp5zpzFTh7OE5WSsvj7vU6NJs5PiZZJ5Rrb4b
 4G5KEmKBJZHwLReiJUcokEEuXUSDDzTxZd1G0s4Ce5zcOx4tdQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_014639_257470_6E7005AC 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 10:35 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
> On Fri, Jun 12, 2020 at 10:22:17AM +0200, Arnd Bergmann wrote:
> > On Thu, Jun 11, 2020 at 3:49 PM Gregory CLEMENT
> > <gregory.clement@bootlin.com> wrote:
> > >
> > > Currently ELF_EXEC_PAGESIZE is 4096 which is also the page size. In
> > > order to be able to use other size of page than 4K, use PAGE_SIZE
> > > instead of the hardcoded value.
> > >
> > > The use of PAGE_SIZE will be also aligned with what we find in other
> > > architectures such as arm64.
> > >
> > > This is inspired from fa0ca2726ea9 ("DSMP 64K support") and
> > > 4ef803e12baf ("mmu: large-page: Added support for multiple kernel page
> > > sizes") from
> > > https://github.com/MarvellEmbeddedProcessors/linux-marvell.git
> > >
> > > Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> >
> > IIRC using page sizes above 16KB here also requires using a
> > non-ancient linker in user space that places sections on
> > ELF_EXEC_PAGESIZE boundaries, right?

Correction: I was thinking of SHMLBA, not ELF_EXEC_PAGESIZE.
SHMLBA is defined to 16KB in arch/arm/ at the moment (based on 4K
page size), or (4 * PAGE_SIZE) on arm64, which can blow up to 256KB.

AFAICT, SHMLBA should now be defined as "min(16384, PAGE_SIZE)".

> Doesn't that mean that this change breaks all existing userspace when
> ELF_EXEC_PAGESIZE is not 4k?

I think a lot of older user space would be broken with page sizes larger
than 16KB, but would still work with 8KB or 16KB. Larger page sizes
would only work with user space that was linked in the last five years
or so, using a toolchain that has the workarounds for running on arm64
with 64KB page size.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
