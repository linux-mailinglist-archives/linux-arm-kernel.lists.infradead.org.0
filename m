Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8094E1F9A87
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 16:41:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGR2/DueVglLpnBMROkCE7KgoSmZtaUCu4D3CQN65/Q=; b=uGwkVv/mjYjD/g
	4/A+kQLHMueDA+weCkNkDChWrRuR2MDl1/V14YvZvyjevvCOAv5dCsyBnMwDUNaGddafKTRPtPmFO
	D4Fi7pH9d9QqFxunmuRJwvELIK9jnZ/onCgifd5zQeCKRwygYuF9TqMNsUP6xZxBrUdzNE35ZsLiZ
	D/LOLXRU98758KHy+4cuEjFusyYBO9nSuL3MajVlxTyTUM9e6z44Jr5JPheK1wcARdVirLQV3bxnu
	jcElklSdacdAptohbxAssVZ0nA80mWTEUq3oic0Jhngb3aisrykh5VNHvMkoU3J31DTJDU3OsWXDU
	jPggO6CodUfVHmx8pjxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqIC-0000Z8-Be; Mon, 15 Jun 2020 14:40:56 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqI4-0000Ym-6S
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 14:40:49 +0000
Received: from mail-qv1-f44.google.com ([209.85.219.44]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MbBQU-1jDhOY0d7w-00bXH3 for <linux-arm-kernel@lists.infradead.org>; Mon,
 15 Jun 2020 16:40:46 +0200
Received: by mail-qv1-f44.google.com with SMTP id di13so7818832qvb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 07:40:45 -0700 (PDT)
X-Gm-Message-State: AOAM532WdFGHW0gQmJyrGDrBDX54kI7YGUlsQP2Qy0KxOld3Lco0QrB7
 sWyJOXqv0qmaI1SnEYUrIc7go4C+GG/8tVk25nc=
X-Google-Smtp-Source: ABdhPJy5G+lqXMDgYV5VNdPxt3xfenQEOCWyA8aXe4/SWcJM/wjewAOCgmyKi30Ru8Z83jxOnA642v09TgrEUqRdTlc=
X-Received: by 2002:ad4:4b33:: with SMTP id s19mr23452579qvw.211.1592232044975; 
 Mon, 15 Jun 2020 07:40:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200615130032.931285-1-hch@lst.de>
 <20200615130032.931285-3-hch@lst.de>
 <CAK8P3a0bRD3RzE_X6Tjzu9Tj+OhHhP+S=k6+VYODBGko8oQhew@mail.gmail.com>
 <20200615141239.GA12951@lst.de>
In-Reply-To: <20200615141239.GA12951@lst.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 15 Jun 2020 16:40:28 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2MeZhayZWkPbd4Ckq3n410p_n808NJTwN=JjzqHRiAXg@mail.gmail.com>
Message-ID: <CAK8P3a2MeZhayZWkPbd4Ckq3n410p_n808NJTwN=JjzqHRiAXg@mail.gmail.com>
Subject: Re: [PATCH 2/6] exec: simplify the compat syscall handling
To: Christoph Hellwig <hch@lst.de>
X-Provags-ID: V03:K1:je8kqQblYt9kgTpCOsGQPOAkulu78jJgKiCMzpCJgM2expxkwia
 r+Tsl7OLWiuQRC1bTjlFb+s9KjVJd7ftu4vM+zHPehQWCqr7tIO5YpQPBpDNoFtJreQTdHU
 pSrEr2tqOii9/KoAQ9RjykjVAE47J4U1QAn3SnyOSJiF6hdP93IfKqvlkKCwwOGLHiOlHow
 hHexzLr8s2muIvjIY2YDg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+pDW+ZYCkCQ=:cpb177OgxU3zZulU5KFFE9
 W2IpLMTnZABjGynf3QDD7QOiwek2ngvW1vSoN6qxRSKlOQjunB43VDMaZZgxgvXACHNPUfZ1J
 xbRQ+snRCqGrO0UNaHcbKKP0w9OLuM7k7x6wE8EZECWMDqfY/63gmoz77bKepbah8l+0qREdT
 OZLXHI1XxSljQksjaJWhWTXd2vKHF92MO6w+IDVGyymU7QMKuB+v1yecR9sYivoVBI1PdekTW
 nTn9PxzDnePspkz4/ip5nPZfz0mwWoG5UnrTsOm5AInegMzdNDam4ajbXbPvZ6a4z/QomXxMt
 zXSAWUQJuxTT4eUqRWhiYaenyT+qAHG8sdmJWWCDtgqd3yo4DGuvvVsL7RlkpcXr/CkCNk2Eo
 Y2OVjSSyLpj+i8D4XjSlkHa3k/3e1QApr2B72SezADgdxCR8gyHswlSfQhrwwNQKKuJAK/XbL
 XtNbj/JARFlFpX+V6pD8P556ftJbnnAPNJLmTmIRVWAqW23IYxf53xwty3UZvV2a/fBGinphe
 k9GDvX534N2r+mphNRGgmHwNTVrDxQ5Cjr25YzUqgYkdUdSCHM49F3rwqeZ+UXVOSPHT5Cao+
 5HkxfIiekGARVdsr737VEhxyK2Ka6Mt6M5il5W9RgK7ZRj5R0R2qdL8id3JNJgJq5QLTTdzpJ
 BcIHtncshlPOAS4xLkPBfNSv+qn7MnlZal22wePd26a3dAraEbQZzcnxRmuJIgBtaihjXkdql
 ES7KwdVDd3UaZSrDA48QLWCwkHjmToHwv7icVFkl7n2YIToz0vZKDDS9OZbvMfl/qd9ZUAT21
 t6ZN4bfS4Qee02XUaYEOI0tdIoyD/6d1cXUNTo3rSUMeXwNhoM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_074048_527327_EFFF3D19 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.73 listed in wl.mailspike.net]
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>,
 Parisc List <linux-parisc@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Al Viro <viro@zeniv.linux.org.uk>,
 sparclinux <sparclinux@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 4:12 PM Christoph Hellwig <hch@lst.de> wrote:
> On Mon, Jun 15, 2020 at 03:31:35PM +0200, Arnd Bergmann wrote:

>
> > I don't really understand
> > the comment, why can't this just use this?
>
> That errors out with:
>
> ld: arch/x86/entry/syscall_x32.o:(.rodata+0x1040): undefined reference to
> `__x32_sys_execve'
> ld: arch/x86/entry/syscall_x32.o:(.rodata+0x1108): undefined reference to
> `__x32_sys_execveat'
> make: *** [Makefile:1139: vmlinux] Error 1

Ah, I see: it's marked x32-only, so arch/x86/entry/syscall_x32.c
uses the __x32 prefix instead of the __x64 one. Marking it 'common'
instead would make it work, but also create an extra entry point
for native processes, something that commit
6365b842aae4 ("x86/syscalls: Split the x32 syscalls into their own table")
was trying to avoid.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
