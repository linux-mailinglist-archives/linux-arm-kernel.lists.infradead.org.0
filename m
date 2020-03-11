Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC80181E92
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 18:00:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QaxF+9HAI6LvDf4f6k9cGJdKyU7u20EB1RpGYd3cJFQ=; b=u19BM1IYqi8S/U
	pHbVE0ZvHLqpLz2DHTtQ4tRy0gXX2e9oOyqdubuwPGQ86ONr1BpVqIedtkMZsODbRuVUnzVATZSi7
	jUDSr3pQfTQLGtMZeYE4LdMtsChF43bB5251XCUF7R33smZcv3e9BA5KNnD69ZOUwQdDWmlMOEqJO
	XOd0K+XnvdMO7NO5KrksTOMnPRgVCqh0etzmmeRv/7n35DCjCw7JMHWk5om4b9RwQy38I0BJtJW9O
	EwkxoKyHrZ0xHQuus13c4iZtff29yXCs8mtXLHRNGprXZJb9FUBeVAdZedpqCK0fTNZz8njXN4VpV
	ONfAadYKb/MPevwqj47w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC4iY-0001ba-OY; Wed, 11 Mar 2020 17:00:26 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC4iO-0001ah-6J
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 17:00:17 +0000
Received: from mail-qt1-f174.google.com ([209.85.160.174]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MjSsm-1jazPV2Exu-00kxu5 for <linux-arm-kernel@lists.infradead.org>; Wed,
 11 Mar 2020 18:00:11 +0100
Received: by mail-qt1-f174.google.com with SMTP id l21so2082440qtr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 10:00:11 -0700 (PDT)
X-Gm-Message-State: ANhLgQ2AdyRWRGIwMjVYKAVSTw+WjkdCLo08V88fwvifO7EH/Qp2BiJd
 kt7Hsa42OzUReO/MFjUu0bZ2dGSAxoGgANv8jtU=
X-Google-Smtp-Source: ADFU+vu9fVJOAF+9P6CbsNSvk6tSClNpCucHRIY2BueNHAFfNflfKP7sKJEZulP0d/np9ao6uI0PuseGoAEvcwJyhAc=
X-Received: by 2002:ac8:16b8:: with SMTP id r53mr3575245qtj.7.1583946010319;
 Wed, 11 Mar 2020 10:00:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200212085004.GL25745@shell.armlinux.org.uk>
 <CAK8P3a3pzgVvwyDhHPoiSOqyv+h_ixbsdWMqG3sELenRJqFuew@mail.gmail.com>
 <671b05bc-7237-7422-3ece-f1a4a3652c92@oracle.com>
 <CAK8P3a13jGdjVW1TzvCKjRBg-Yscs_WB2K1kw9AzRfn3G9a=-Q@mail.gmail.com>
 <7c4c1459-60d5-24c8-6eb9-da299ead99ea@oracle.com>
 <20200306203439.peytghdqragjfhdx@kahuna>
 <CAK8P3a0Gyqu7kzO1JF=j9=jJ0T5ut=hbKepvke-2bppuPNKTuQ@mail.gmail.com>
 <20200309155945.GA4124965@arrakis.emea.arm.com>
 <20200309160919.GM25745@shell.armlinux.org.uk>
 <CAK8P3a2yyJLmkifpSabMwtUiAvumMPwLEzT5RpsBA=LYn=ZXUw@mail.gmail.com>
 <20200311142905.GI3216816@arrakis.emea.arm.com>
In-Reply-To: <20200311142905.GI3216816@arrakis.emea.arm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 11 Mar 2020 17:59:53 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2RC+sg2Tz4M8mkQ_d78FTFdES+YsucUzDFx=UK+L8Oww@mail.gmail.com>
Message-ID: <CAK8P3a2RC+sg2Tz4M8mkQ_d78FTFdES+YsucUzDFx=UK+L8Oww@mail.gmail.com>
Subject: Re: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
To: Catalin Marinas <catalin.marinas@arm.com>
X-Provags-ID: V03:K1:f7vDVZ31hjpmZsozL42NPnpzKj2a+icrVivfQWB5TDOpJY9gG3u
 LooeIMfQduxQW4RY0qwl1fG4c+y0lmsHhfRAvg0ny+H2sRSIBqH0Go025sEgPsFYkr8msbx
 zsmzAFBbuqDbn/oDwREJBePmdFSFO2nhFrgMWFwxhkHDOvaU4caJGu9jOzGn+B2Qc+2qzHJ
 lOm90P3QfQ6ZVAwroac6w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Zavy/eaqQ0Y=:vQtXcFJEgXIEm7Thm/M+0h
 EJExqoHwEgTE75s1IFVvSMUrkPqHHls2zumoShDhrDVC8iyjfIS2T/x42GVmkZ5szvF0QGYO9
 gfzG1SqXiJJGokKaLKVZ2fp2mAA4ixmg/kjGN1HcbfxcFPJPBhUoiHf9GX3o1yCVpOMEr87Kw
 XcV1l8f3buAeUC1t1GglkTZtHUAhgYCFpmMO5j3BHTz/Y4Hd4Wecp/PwCC586KiCjjxsUicrP
 h/RkJfa2ce8njLuA6PN6v3YGZ+oveKYzVuLLr5Xln4MIYDnV/3wf0lHVzyzX0co8Ur+t0Zzhv
 S1t3Etwz4StK27FyBoX2j9KrfyA2Wd8zQYCYZZSNfvIsfyDzcUwcdY6qu2TIcdCZiUY8F9+Xh
 GTwUGgLAGmG/AWklikSh1pDQ2h6dfMTleKsKNbIDEtMcDJZZSM9DYiWui8tIKTpe5Xd0bc/hc
 4kfkCbZlGH+31AAUSWdEmUTkWWMyFUqCN44O952pnYtfNfgledLm//AxtwNWgywH4QusNnAHO
 nF73DSfAfWBqroaeIVZWrLuHx3ZIzgukccrAvIPhXjFlEHwWVanr+DzcDFU4L2bb2Cq3qyNrq
 y3d7lGRXn9DdLapsevmROOiJIc/1MThx/zK4VXBGzOXeaOcmF13dfMr0vxfcK+udXfGovDoUi
 2SjECPF5R0LI+oDBPQ5sntgEz+5FbIwmU9+9PYUmBgjPMXTM/3FkcW8x+FmGLG2Ao1mjDrG9c
 tWxTRYojZ93PfdrSwAjiW8htOnABvLZSJdFSuXP+asspnnW4wrFCGr4DSsZmJSGmHKTWUAChk
 A6jFBYfJ7DZZhEV0tUWJDOvLr4qAHkLlTeRLZXTCyhhNJ7GVUo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_100016_532258_23012B20 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Nishanth Menon <nm@ti.com>, Michal Hocko <mhocko@suse.com>,
 Johannes Weiner <hannes@cmpxchg.org>, Rik van Riel <riel@surriel.com>,
 Roman Gushchin <guro@fb.com>, Santosh Shilimkar <santosh.shilimkar@oracle.com>,
 Dave Chinner <david@fromorbit.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Linux-MM <linux-mm@kvack.org>,
 Yafang Shao <laoar.shao@gmail.com>, Al Viro <viro@zeniv.linux.org.uk>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, kernel-team@fb.com,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 3:29 PM Catalin Marinas <catalin.marinas@arm.com> wrote:

> > - Flip TTBR0 on kernel entry/exit, and again during user access.
> >
> > This is probably more work to implement than your idea, but
> > I would hope this has a lower overhead on most microarchitectures
> > as it doesn't require pinning the pages. Depending on the
> > microarchitecture, I'd hope the overhead would be comparable
> > to that of ARM64_SW_TTBR0_PAN.
>
> This still doesn't solve the copy_{from,to}_user() case where both
> address spaces need to be available during copy. So you either pin the
> user pages in memory and access them via the kernel mapping or you
> temporarily map (kmap?) the destination/source kernel address. The
> overhead I'd expect to be significantly greater than ARM64_SW_TTBR0_PAN
> for the uaccess routines. For user entry/exit, your suggestion is
> probably comparable with SW PAN.

Good point, that is indeed a larger overhead. The simplest implementation
I had in mind would use the code from arch/arm/lib/copy_from_user.S and
flip ttbr0 between each ldm and stm (up to 32 bytes), but I have no idea
of the cost of storing to ttbr0, so this might be even more expensive. Do you
have an estimate of how long writing to TTBR0_64 takes on Cortex-A7
and A15, respectively?

Another way might be to use a use a temporary buffer that is already
mapped, and add a memcpy() through L1-cache to reduce the number
of ttbr0 changes. The buffer would probably have to be on the stack,
which limits the size, but for large copies get_user_pages()+memcpy()
may end up being faster anyway.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
