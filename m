Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FAAD19A85F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 11:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TES2TUTtnjRBhclyhChvocMe0i4GZL4X1NLm6m8yKjs=; b=B6i5x7SpGQcrX4
	/nbXaNBQcycgjGtmeNMTwu8ji2RcUb1Sjz4zQ3Zht3UNfGaHU4BjbEYmC+9o+MaAldMhj+wpNwljT
	0ydOl+wozRWmvMLtoXhR4hEn8R2xzjWcZmkHuYXKOm5EcwpHEY/O96WUtFV7dt+Wodop4Gspt+rNP
	Y9043Bk8Qb2wOjsMHgfGfM6i3m0iqYk/qthpdCaatOlNEU5DETzd5mLuBwpHa2SaP+73U71wUB9fX
	y8KHIeNsKvWp2LET/AImmHbo1BXMpsRUNY+Dstpm38O7TWnkwPPbyehxbOZXCZ+PKe8ooEpgurZ7N
	Rp261ebbg+E9VEWMOhGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJZQz-0005CU-Uv; Wed, 01 Apr 2020 09:13:17 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJZQt-0005Ay-8B
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 09:13:12 +0000
Received: by mail-qv1-xf44.google.com with SMTP id v38so12433691qvf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Apr 2020 02:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jkMgyGLx/BAkeNtxDN6Xm/ZbanBZQvNQbU7eOJcnXos=;
 b=gePLR3I5HlC84w7tgJzEsRDClSwTX0vkukGGPouc74j9tPxnFXOnMxG8zqKusXyLSD
 P1CXTLsHgRD/S8Q8S5YIH4ka/bNjg1DuR3op0rVEU8qu0/3qvutPbOxc2nl/iI4PR1x3
 kISWfSQmZqfiL2nFZ6Rb5KCWgl65Wka5UzT/xrbBgOXxVwSphSnqGCN+0f7ErOkgeCzo
 pdkfIyKq3i2TpWjKqfjvvvBKyxACnt5KZbkN1iV4yOXUi95SDk+EdLX7WIfIWb+0/FFM
 axOTi9LYHzFUG7NygICZeM4Vfcw9ZoImKssVQE87l7r8QgXtWFHq59KR2dylCJRYjYsK
 0DmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jkMgyGLx/BAkeNtxDN6Xm/ZbanBZQvNQbU7eOJcnXos=;
 b=Hji9cszcqiLvhxeV/j4UCBjsQvEsEQDE+9+AXqVZ7NcHy53KNWi+EZ7+6urBYTYK5N
 fdlX0R6LmBfzpiWqL+dFV9uiv4vrfOJzr7CjB7dIqguit0BKfIj7QIsXBmqqi1rHiGY2
 2oaZ2C8TFwbmr/5n0LxG83UzaWgFTFSz+PV1jksyWRnAjKgtMf/fykIPtevk+cKLQvoU
 BFpdCZ0diZNxlbtzgIROhAyB6N1PQMWNudzosuUT66J++HJaCQNTHX1dLlSfy6ZgQHwX
 0c6wDQSE+UtS3vxTnQSXyvvBNfY557z8kacXLpOGd21WWtU74790558dyClgFH+6+sXq
 2A3Q==
X-Gm-Message-State: ANhLgQ0ZrBeAImEaCm79msLYcMyIsinpBcBSZfldIMGV0N+TVRzEBRSP
 OEnAFxK8HRF9olrv080/ES4+tODTPe3pDFv359RBNA==
X-Google-Smtp-Source: ADFU+vs06wImJZ2EPBdCY2ie1qh0IX+7CluGHJHL2V6FICU7OeYMC84ibT4JTW0BL1dvRyCt/qMHZuA5ONrD8dluF/U=
X-Received: by 2002:ad4:49d1:: with SMTP id j17mr21052173qvy.80.1585732387345; 
 Wed, 01 Apr 2020 02:13:07 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000da6059059fcfdcf9@google.com>
 <0000000000005b022005a22a0050@google.com>
 <20200331174116.GA1844017@kroah.com>
 <CANEJEGuhZChGXFzbwaEwArM4UKjUxZo=WNbREPH3887xtu62Nw@mail.gmail.com>
In-Reply-To: <CANEJEGuhZChGXFzbwaEwArM4UKjUxZo=WNbREPH3887xtu62Nw@mail.gmail.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 1 Apr 2020 11:12:55 +0200
Message-ID: <CACT4Y+Yk_93iScH6F0hhR2yo+pCx_0J32TaTC-_QfXy69pauMA@mail.gmail.com>
Subject: Re: KASAN: use-after-free Read in skb_release_data (2)
To: Grant Grundler <grundler@chromium.org>,
 syzkaller <syzkaller@googlegroups.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_021311_293486_5EFF7F81 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f44 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: peter.chen@nxp.com, Sascha Hauer <s.hauer@pengutronix.de>,
 Johan Hedberg <johan.hedberg@gmail.com>, nishadkamdar@gmail.com,
 Greg KH <gregkh@linuxfoundation.org>, Marcel Holtmann <marcel@holtmann.org>,
 USB list <linux-usb@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>,
 syzbot <syzbot+a66a7c2e996797bb4acb@syzkaller.appspotmail.com>,
 linux-bluetooth <linux-bluetooth@vger.kernel.org>,
 Prashant Malani <pmalani@chromium.org>, dl-linux-imx <linux-imx@nxp.com>,
 kernel@pengutronix.de, Shawn Guo <shawnguo@kernel.org>, festevam@gmail.com,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Hayes Wang <hayeswang@realtek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 7:44 PM Grant Grundler <grundler@chromium.org> wrote:
>
> On Tue, Mar 31, 2020 at 10:41 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Tue, Mar 31, 2020 at 10:36:01AM -0700, syzbot wrote:
> > > syzbot suspects this bug was fixed by commit:
> > >
> > > commit d9958306d4be14f4c7466242b38ed3893a7b1386
> > > Author: Nishad Kamdar <nishadkamdar@gmail.com>
> > > Date:   Sun Mar 15 10:55:07 2020 +0000
> > >
> > >     USB: chipidea: Use the correct style for SPDX License Identifier
> > >
> > > bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=16d4940be00000
> > > start commit:   63623fd4 Merge tag 'for-linus' of git://git.kernel.org/pub..
> > > git tree:       upstream
> > > kernel config:  https://syzkaller.appspot.com/x/.config?x=5d2e033af114153f
> > > dashboard link: https://syzkaller.appspot.com/bug?extid=a66a7c2e996797bb4acb
> > > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13c25a81e00000
> > >
> > > If the result looks correct, please mark the bug fixed by replying with:
> > >
> > > #syz fix: USB: chipidea: Use the correct style for SPDX License Identifier
> >
> > I really doubt a comment change fixed a syzbot bug :)
>
> Just as I don't believe the bug was caused by pmalani's patch to r8152.
>
> syzbot is just having trouble automatically bisecting/tracking this
> bug since it appears only intermittently.

Checking if vmlinux changes after applying the patch looked like a
smart and simple way to detect all of:
- Comment-only change
- Documentation-only change
- Change to a non-current arch
- Changed to non-enabled configs
- Changes to tests only

But it's not working in reality, there is some bug in kernel or compiler:
https://github.com/google/syzkaller/issues/1271#issuecomment-559093018

You may see in this bisection log as well:
culprit signature:
85ed07d5a8769c26fa0d170475624841e367ea0d08ea79f55ca450a9e97429a0
parent  signature:
2244116b3fcae3bb24003990bcd2b06a03861effee2d94675e527446c3da078f

So this commit somehow does very realistically affect the kernel
binary. So far nobody figured out why...

Before you ask, syzkaller filters out debug info, etc:
https://github.com/google/syzkaller/blob/master/pkg/build/linux.go#L168-L178

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
