Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F34814773A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 04:44:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWhKoUV69uPC5seuivQ856MgdWIqEgPEXW+BJS2pzeI=; b=Yo5xJazuDNB9eW
	p6WY1RApvc68uMb/CS8MC7EEFijK/OFBQTpu7KsLwzx+lPaFZ2ACBKQP9L+YwQCFlK+Gv3PO9NZlR
	puBWnfrpTmEeX1pQh5p1bCmLh8X3Q+aS5gX67e/JLX97NYy/C7PDUhgkZmkCxIYzIV4obCFo5gUx+
	5Tubs8AeF8nU+VwGY4QFHT3esz0j1/zcO/sCn8pua7swyF51GE9tgy22EHwDaOTkvg/MZXne4kd/G
	v5Kf+sdh4HfJU7eEYEVt/PacDCE8JthRvh0j8GlLZMDfXdw7OVV6nRR9tAVsnjfK03fjZ2IS+ZR/r
	CvjxndpuZggsiuXXC7hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuptr-0007yP-J1; Fri, 24 Jan 2020 03:44:51 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuptg-0007y0-0I
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 03:44:41 +0000
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com
 [209.85.222.49]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id 00O3iBJX025637
 for <linux-arm-kernel@lists.infradead.org>; Fri, 24 Jan 2020 12:44:11 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 00O3iBJX025637
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1579837451;
 bh=ZciN3pdou+Uxxprysqmu7s1MHJ/ph/kv6GDPRv1quYk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=nK61UGKbxmxCm8NTN73uU+ntDikTe3yu3tbJTwcN3htJvnam6Xz3XOfF+OvfHmjxT
 1F+dGEbbNZc/hV1+jq2PIuX6QDdfjq+wJh783MzOu9cp2TrtoGvMLolPT45Wh+WctO
 e90bSlaeTqDigkGGPY6ABFPEhSr5Pheak4wTuTrdRXAVE0e94Kuk5bKUNjjtVfAUjN
 sLDnoWcFK3ve8yK1wzzfuvYHvz7ZFwhAeHqPgGgnM2vGwMbfxnOY9qFDacCsWOufWR
 a4njBgGTbVZAIGelZDz04PrdJTdDb1QJiZHrgmTMhMSzCLsKkUzFnF7OD4m5ootccL
 UYjT8isEK4lAQ==
X-Nifty-SrcIP: [209.85.222.49]
Received: by mail-ua1-f49.google.com with SMTP id c7so327914uaf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 19:44:11 -0800 (PST)
X-Gm-Message-State: APjAAAVpAeA/zGwcWWnZJ44CTHUKN7RbYITvqwLMjnzgOjp/yFmCgK2d
 wjfp9pd2yexr8jiwKdMTmmQ/FX1UwtDA+xkcPj8=
X-Google-Smtp-Source: APXvYqyPABcHjkE7LphB8AFi82zW6lt8MeVEc6Mzrd111/JuQRIL1R1KIWXilIUSJZKLMiQpcGh2uuZp/WTYDvUMVUs=
X-Received: by 2002:ab0:6509:: with SMTP id w9mr709242uam.121.1579837450310;
 Thu, 23 Jan 2020 19:44:10 -0800 (PST)
MIME-Version: 1.0
References: <CAK7LNASEaiFia8NKZN8++-9RfGXOPKSFuCkdukBk9Jy7+nHecQ@mail.gmail.com>
 <CAK7LNAT721bVwVQif--UY1dXMhq8NSRpkPOYTN-=nxyBSBOn2Q@mail.gmail.com>
 <CAOesGMgyh2NmR_AbEzC2jQe070e_u3zozWi=v7RjMXszXgetZg@mail.gmail.com>
In-Reply-To: <CAOesGMgyh2NmR_AbEzC2jQe070e_u3zozWi=v7RjMXszXgetZg@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 24 Jan 2020 12:43:34 +0900
X-Gmail-Original-Message-ID: <CAK7LNATj8EP_vSDSbknQsYp5V=7EfdQzTQbobhNjXS5Y8YOjqg@mail.gmail.com>
Message-ID: <CAK7LNATj8EP_vSDSbknQsYp5V=7EfdQzTQbobhNjXS5Y8YOjqg@mail.gmail.com>
Subject: Re: [GIT PULL] arm64: dts: uniphier: UniPhier DT updates for v5.6
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_194440_270371_7172548F 
X-CRM114-Status: GOOD (  18.86  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.80 listed in wl.mailspike.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof,


On Fri, Jan 24, 2020 at 12:22 PM Olof Johansson <olof@lixom.net> wrote:
>
> Hi,
>
> On Thu, Jan 23, 2020 at 6:49 PM Masahiro Yamada
> <yamada.masahiro@socionext.com> wrote:
> >
> > Hi Arnd and Olof,
> >
> > I know it is already -rc7, but
> > it would be nice if you could pull this for the next MW.
> >
> > Thanks
> >
> > Masahiro
>
> If you don't email us at soc@kernel.org, we're unlikely to see your
> pull requests. :(

Oh, I just remembered this!

>
> In this case that's what happened. Please do so -- that way it gets
> caught in the patchtracker. I sort the patches to that alias in a
> special folder to make sure I see them too, since I get too much in my
> inbox and it easily gets lost.
>
> Mind resending the two pull requests to that alias?

Sure. Done.



> That way you get
> the notification email when it's merged -- if I bounce it here I don't
> think you'll get it.
>
>
> Thanks,
>
> -Olof



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
