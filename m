Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB7E1BE835
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 22:14:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kYVwiWPKWfjhpWAawUcM67C4GEj+3aWEFas01+Zxhdk=; b=W0BTizTABAtoob
	oiHHHiZz6fRMzA+nIs3BDBNZBOmbjAI1wbuErsVXqL8w8ceCTOMpEOAtCOMW1O9sDBdCm28FLygoT
	lTsKtJvjx3F3K+7iqlMUIgq8C34hpAI9Q96azMRiIM8IH+ev503tEm8ms1HcXHcd8PmgqjZLx70Tg
	G1IqeDU1OJBD5MKmVibE5DZU3kXXHU6O/kiRqU4VDrvdMkP2MYBHowe9LZK3djCQ/o1IXJqJU4Vgc
	HQA6Yfpb0It8+Rbl0dCQuCwuvGBVVmzv91FIagxvJBiCszSVt30738olS988PlM73HmzNuDLNx6fl
	BPhIC0SDdCEr3iqDnnGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTt5f-0003i5-9T; Wed, 29 Apr 2020 20:13:55 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTt5S-0003gP-FI
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 20:13:46 +0000
Received: from mail-qk1-f169.google.com ([209.85.222.169]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N30VJ-1j1vYw3Tll-013QKE for <linux-arm-kernel@lists.infradead.org>; Wed,
 29 Apr 2020 22:13:36 +0200
Received: by mail-qk1-f169.google.com with SMTP id h124so3387643qke.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 13:13:35 -0700 (PDT)
X-Gm-Message-State: AGi0PuZvtT79Sqz8op/4C2xTY2tJbIcR9mIAXDz2k/4EGqruQcBbZlNH
 P2IO1kx2XDKnQu2oiyvmSDuVScrE+UzOl0ICwMQ=
X-Google-Smtp-Source: APiQypLgwNCOWXi8lqhZ+IOv19XxfH/9iluwOOMdrmf8VHOif7vlkTCUTHkDgO4JZEVtkCieIyzUDvCFIORJYDtFE+I=
X-Received: by 2002:ae9:f712:: with SMTP id s18mr204482qkg.394.1588191214238; 
 Wed, 29 Apr 2020 13:13:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200429132349.1294904-1-arnd@arndb.de>
 <20200429133512.GE1551@shell.armlinux.org.uk>
In-Reply-To: <20200429133512.GE1551@shell.armlinux.org.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 29 Apr 2020 22:13:18 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2hXhtCx6pk65__U1Msk_OPstT0Qad_skqjCz9DNSfq4A@mail.gmail.com>
Message-ID: <CAK8P3a2hXhtCx6pk65__U1Msk_OPstT0Qad_skqjCz9DNSfq4A@mail.gmail.com>
Subject: Re: [PATCH] [v2] ARM: oabi-compat: fix epoll_ctl build failure
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Provags-ID: V03:K1:+oO50dFHuxVKMpkW8DnBmwtIqs7+ZZXXP4G+2ML39jkcvM9XZc/
 BLKZw/wEWQjYIB3IF+2URTYe8R0WnvWPgATI+P9UX/7QKcSJTwcNVYB93dd1I8mT2mQmDgN
 z0ay48TjMxpLqUEJsfxpWE0uprZOzKnLwZOAnee1IL0K4gMwwXv/I+dUHYW0AGfacMgGKHD
 34h3HPLXVhvIjEj+bEAdw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MRRdgMgAqGg=:PpkUvrr8QJVJ4TEN4XPiv9
 OKFMnryeAozvCbn+WQPCChq3smBHOG7H+3vmBtZ8VklMuni6qYbrD2LHLNVVKqCour73v/CXq
 YVsp4q0e0WgrxFgFsQ+lymMfWPBjgcKPfPjhSCOZy9n/uWTUB9KSPQZpsW6Ept6Wv6w7YsLHE
 02zZkMSZxLUK5IGJjrdKsus6jIjSeZuL5lr97HMMXCrHRa2iVOTQzfGpOb3I0Ds3BUNk/bGEM
 SBEbl7g5AMtM3qRtqq3ivaRL42yoaCstXMA73uh+KtykwIc0XCvg1wDjId0wNOD1bmv9NBPil
 eSeA795nnVcB7Yit9yQf36MoqnosWLLiuww40Sh9If7YPaajz6FH8WOJT9l9pC7x+If9B8pp2
 a3jxxd7qu6jlmlLZvCaQXMPmcfNfrHiF39eoarkhnjrDMStZSqTl6O+mDdgNc08inRbTfF/bD
 Mu5A7/zR/N7FdeX4gMV6WMeWVqM0mTSnBuWMQAOrpAEqfHnZi6Y19SWuKgwIL+SaQ/+ej+mcS
 7wadAcpZCkSqqTFtwqtz3N0D2QMgFE/VbfqHHD2yfv+dfejA5BtYRsxWfY1JnDEp2mGAvqjkl
 lQeTU/g5JNNjkTrCiP9EwumMKEzzlytWXKcZevVG4/NGbFwBtbpWdAU23/PavIvIHSIICLP8T
 9lOgukVYAZp4auhImMSbA+F2uHCgfefwBceILgny32p4w6PFVtnFgGFstLNFqVFd5QhcI9paz
 ekm+7Je3ePTTISGhcMkjAbGyKJrzhFFcKtCblvCmnVOKbI8lkt+HzUj0Vnz+oW+ROvO3v3CCr
 TARJLAj8QYOIe1AuGMaCmZPPZuiT7hVhgFUa+imJc++B58DNqA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_131342_803992_DCE7EA77 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Cc: Linux API <linux-api@vger.kernel.org>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 3:35 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
> On Wed, Apr 29, 2020 at 03:23:24PM +0200, Arnd Bergmann wrote:
> > Two functions are not declared or defined when CONFIG_EPOLL is
> > disabled:
> >
>
> I know what Chris said, but do we really want to be polluting generic
> kernel files with arch specific stuff like this?

The file already has a couple of architecture specific syscalls listed already,
so it shouldn't be a big deal. If you prefer the first version of my patch,
or have another suggestion, I don't mind sending a v3 that does it differently
again.

Unfortunately, COND_SYSCALL() is a locally defined macro in that file,
so we can't easily use it elsewhere without duplicating it like in
kernel/time/posix-stubs.c.

As I mentioned in v1, it's also possible to just make this function
compile without #ifdefs by having conditional stub definitions of the
missing interfaces.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
