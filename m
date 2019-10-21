Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ABD5DE4DA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 08:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yoa95M3FkN1ORDSXE8l2GxRNSvhEpoDh0HOJIMGevKg=; b=a3xcn6AfqHZkTz
	xDpwKLAyNCIIYL8WRcnKwZN6xh/niU9GGS6wx69kCR1Dag1sYTBxloWmTpYpibn1dEKubk0Qh/Vot
	AJyjZN3KLdzTwIBMbWOAbNhMzp5VgUMg+WFdf42q15rYih+Z4LhchC8H8LSXSU9F93UbaoWLjrfLC
	Vpwv9pO4hYstjFEsh3b+c9jAjqflkctqklYnHXE+V+/0gZTl9wLI0tARJM6Gx7S/7HlqAPrbYyYAj
	UFAuTHwEF2W07ca28hIz8lyvQX4Jir6j6gUVwOS5RfvFDPiFjvrZq7GnIut2111XpZQV2M0VyGFtl
	V/Ny8wY/bqkQyoK6wZGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMRZd-0008HD-Th; Mon, 21 Oct 2019 06:53:49 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMRZU-0008Gl-0j
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 06:53:41 +0000
Received: from mail-qt1-f169.google.com ([209.85.160.169]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MORIm-1ifc360XOA-00Pxur for <linux-arm-kernel@lists.infradead.org>; Mon,
 21 Oct 2019 08:53:34 +0200
Received: by mail-qt1-f169.google.com with SMTP id o25so6006670qtr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 23:53:33 -0700 (PDT)
X-Gm-Message-State: APjAAAWJJEysPywUL4fK0fMzC7gmfTSS+fT6R9qS1WfPVUV5Xb0aSIEK
 yPNILnsi4q0WbjeGN9O+EhhX9+4v6QXRwIBWIwM=
X-Google-Smtp-Source: APXvYqzYcUAYVHni2nqAfOPQIYdHwgcZEdAAjv1mOE8IjJCV7hvfGNf5JhTchMHWyrOMCNUibIt1I1R+FjIbw4CmeQc=
X-Received: by 2002:ac8:729a:: with SMTP id v26mr22612098qto.18.1571640812963; 
 Sun, 20 Oct 2019 23:53:32 -0700 (PDT)
MIME-Version: 1.0
References: <20191018163047.1284736-1-arnd@arndb.de>
 <20191018163047.1284736-2-arnd@arndb.de>
 <20191019184234.4cdb37a735fe632528880d76@gmail.com>
 <CAK8P3a0LWeGJshr=AdeE3QXHYe2jVmc90K_2prc=4=ZFk0hr=g@mail.gmail.com>
 <20191019222413.52f7b79369d085c4ce29bc23@gmail.com>
 <CAK8P3a3UztT5aqDTiBNDssHWcdYQNqbhiY_hxJ+AHuM54hgCWQ@mail.gmail.com>
 <20191019231418.c17b05f73276539536b4732c@gmail.com>
 <CAK8P3a0FfTjNAvJG1yUi==bLBjeVaJ0oseaqs-ZouZKHrFdBHQ@mail.gmail.com>
 <31d57d94-9701-1c46-6ce2-c43eaa16f444@gmail.com>
In-Reply-To: <31d57d94-9701-1c46-6ce2-c43eaa16f444@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 21 Oct 2019 08:53:16 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2ZUgF0iH+BAw0ny-UwUYxoZ94apgYhD_vi4AiN5USwZw@mail.gmail.com>
Message-ID: <CAK8P3a2ZUgF0iH+BAw0ny-UwUYxoZ94apgYhD_vi4AiN5USwZw@mail.gmail.com>
Subject: Re: [PATCH 2/6] ARM: ep93xx: enable SPARSE_IRQ
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>
X-Provags-ID: V03:K1:wLQFcx9yCBnL8UZhzG/mWNmZYU9DxsPynS6nlASeV9lnL0vG7yJ
 wXBmpvvskFqohOPW08sGoJBiBC3TsD6PTsksUZiGUgO+KodnVHTYYY/kQsm0b27hErgUKCg
 2OYendI9zlWNo+gOReZQEg8/BScyHN9ZCqjgIrf3lkFhRejDp3p8nt13sVt01NtZ9t0i7tP
 DbTHQ9sLEs6M6scGT3pQQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:U1jxSPezWec=:J5CVImru8Hl44docrh/r/n
 wRvbzEf54vVoIP3s6bqmGGf9fJTokp/1w/2VGg5LMx3+7sxYoCfcZza1JYkpIgPCAwNdZyYW3
 S91CWvJkdP7l4HZur+FmTd1Sv2nrRlSY1qrNFXtu6T3nNhyIAkqcqMdVpu02Bwe+jPml6l8oz
 ffwBrpbdQGFtQSl2Fc2PfzWR5DHuUUYVOZkDmsLQvxObdtEvzZ80tfzrPazczSJhSIdG/AG9+
 kG1mJidKfIfm2UT7/Km/EtoktaOsDqfZS1wTfKpd5AEqwL0eQ/l85p/QV/HQV2pfnZmq3NLn+
 DyncIMqKl7pyk+0tyV3ULky0THf98w70+N1+xYkh94j2amQuxQLNbTyf9m0uvI0WCSB+woWDe
 eCos2s9zKoQn/ATfQr2L+2mS3BABMYCLe9nTsDzaMwDM7llFTLzuZQSWmWMXWFMRA2RQAB/Mn
 Fcvf7RqJWXgdp7ifEWWuy/k0ZTtYHlO2CKdAIiZafHdg7kPfKxbsTkgNIsZIasylPFOeQnMEh
 ORjwbpfdufVblI6T/jpPjBqSwmPexAo+uc4qYbZjrkP1meF3m81uBiJV85/Tu9Qvvd4ac5BSF
 KWvJwXmR9ORA0JPp8zg0vbtf1NGgzVAklmJlt13P5dBXLOXwQ6Zj7ul79MaGXIUEgF4133kaI
 w4RWukZb0slOuTmfLiOUelIpjZNu2gpSSKI8jWkjTq4tLsC7Mh/6MHQHTuZcO8NvG4lIPj/mu
 xasuSFdHbilojI6eaWCCrVWpv6+1wywNswdPkvOG9MrMEMR2Nn6UpTTsL3uSA9AtBs5R3FEaM
 SmyRrFAdY6o9CdKzcDkCJwRP9QxPZWZmqQ+arfjfsDQ/ziMf17XFuqUjQE9NP/5012HFurl80
 fuJF/V8DzxrTlnFrEiRg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_235340_360068_1FDB7F7D 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Hubert Feurstein <hubert.feurstein@contec.at>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Lukasz Majewski <lukma@denx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Oct 20, 2019 at 11:47 PM Alexander Sverdlin
<alexander.sverdlin@gmail.com> wrote:
> On 20/10/2019 13:49, Arnd Bergmann wrote:
> >>> Ah, that makes sense. so all interrupt numbers need to
> >>> be shifted by a fixed number (e.g. 1) like we did for
> >>> other platforms (see attachment).
> >> Yes, the below patch resolved both GPIO and DMA issues.
>         ^^^^^^^^^^^^^^^
> >> Previous patch (selecting IRQ_DOMAIN_HIERARCHY) is not
> >> required.
> >>
> >> If you re-spin all 3 ep93xx-relevant patches together, you can put my
> >> Tested-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> >> on them.
> > Awesome, thanks for testing.
> >
> > I only remember sending two patches  for ep93xx:
> >  ARM: ep93xx: make mach/ep93xx-regs.h local
> >  ARM: ep93xx: enable SPARSE_IRQ
> >
> > and have added the Tested-by tag to them now. Is there a third one
> > I missed?
>
> The patch shifting the IRQ-numbering by one is a prerequisite for the two
> above patches, right?

Ah, now I see what you mean. I had folded that change into the sparse-irq
change, but you are right that it makes more sense as a separate
changeset before the other ones. Changing that now.

Thanks,

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
