Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE811EC352
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 22:01:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQDws0KosQK7UtvVyMFL5Xevea5gIAONInwtTRP+k6k=; b=PiXeHGuUEpwNQS
	btNBMV5qNd54jL0CzjTJA18wdVV9Kwt8YMXxU71s+HMSbVujRndl9O8F4Pti2iPKsC7th2yxQX6nJ
	wPw3sMmScf/PTqnAgR6smZ4TYLX+j0NqvxPaoclJA3FgErowJs2axxUQAOa/khYfKxVIPnwrwUVav
	mW9OGTYbZO6hBDvzzmO4Dt3SKewjUXAEfkfuOhHlPdde/xK61E0js9ePZlb6JJXMReXrShbBQOMk4
	HNLz48TcdHU3fHbmBe81u0cMVefe4Rh3CvEBv4gVhgiyQDp4hwfSNp+dBhY/92WkMLWBTYzc9gq//
	wRAkqZ9WVUE8yRSoZFJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgD5i-0007Ly-GG; Tue, 02 Jun 2020 20:00:54 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgD5b-0007KV-Ve
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 20:00:49 +0000
Received: from mail-qk1-f177.google.com ([209.85.222.177]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MxEYY-1in9Ws0YcS-00xdPH for <linux-arm-kernel@lists.infradead.org>; Tue,
 02 Jun 2020 22:00:42 +0200
Received: by mail-qk1-f177.google.com with SMTP id n141so13848530qke.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 13:00:41 -0700 (PDT)
X-Gm-Message-State: AOAM531xo8ypiyeIoZeeOD8cI46aQvvSmJk0di59/MDuzg3qZAGCg4gQ
 HpJ/4nvK7+9rJbokW5YHcsjg491+RKsvJPFI6bU=
X-Google-Smtp-Source: ABdhPJyB5+r7g3bHdXBxRdOOYP+7Rw0T2HuVg/Rbf+3oEj8ADNCBgrexKnNOpu+oGkSnzC4SnXDxD46Jw/blC+iUP8E=
X-Received: by 2002:ae9:c10d:: with SMTP id z13mr24759360qki.3.1591128040882; 
 Tue, 02 Jun 2020 13:00:40 -0700 (PDT)
MIME-Version: 1.0
References: <1583603819-9651-1-git-send-email-santosh.shilimkar@oracle.com>
 <8750635a-37de-f4d0-08b1-16e904be2de7@oracle.com>
In-Reply-To: <8750635a-37de-f4d0-08b1-16e904be2de7@oracle.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 2 Jun 2020 22:00:24 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1v7V=980HasrQ8t96mLG3wHWW1SXwbXDL5o=F1oFd-Fg@mail.gmail.com>
Message-ID: <CAK8P3a1v7V=980HasrQ8t96mLG3wHWW1SXwbXDL5o=F1oFd-Fg@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: Keystone DTS updates for 5.7
To: Santosh Shilimkar <santosh.shilimkar@oracle.com>
X-Provags-ID: V03:K1:z9n9WmKZOR3E9RzzxhRee1/YGvsKqd3ItGsobDoW/XQELWefBLq
 BQNITQ1ja2tsTWj/0XA0fldjXn4muNBRql9hhGnXSglSxp1EK6dSp7MCIN386rPwb2mdSsa
 goQ+7FmVSq1QoTOMWlOCj9wXDGn34SjqEQ05eJLujzS7al+DlrFlEJBVY6b6O82rt2eWJJ0
 P3I53ssFLbWQsExHXW5IQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dQxbP4ET4Gc=:H+ULwNUpNylq6tmU7fHuIY
 GbPLTWOXlylI5KyjEic+3BNEmnID/7SnI7mbsu0f2HBcUoFvT5fDJOB/mSkoiVDhxhTNZSzf5
 9jsGn6JRb7IFae2Om5Ker19EDt5HIGQzt7LgfKef5J2EfuZOBEJlos3I21fGdVEVGzkBrV0vt
 SqoWDNFdGyxkDMVFKn4nrF6wZxOJKQhLlwG2j6KTxSQ/V71F4pAEADrrqkRZXjM8uW0dlU0h+
 5YCLJ6w7blKZcDxJI9ad92qXPNd4gdSTOvTiRYFFuGIV+5AasU3fuyL8QvgSIvjRQt7kHIJj7
 5M0omOFsNzgA5MqorjDeo/hsJjPbQ08lXUbkB5lWbrBJ7HGxy4izK67JNnzDR9b9ZGwfeZOyZ
 0RXyveWfiYld5J25LRccB1Eo2Y28hKa7PFpVFt3i2m81gibkFVGqR7IEB3PDIWW8sVBr7pg+x
 nnUIFhzv5g3wsce7kkWiRg+Yuw5Gt28qlBY9G2zQNETQUGYj3/Lrc/bAoSDyha+PfWV81IMv7
 0dAejAFvFmx8SmDy0jq8csNqMWeeK6Kvjh9ZybDatRoXph8AnzO1TAkpdl8ULhRETwhv1Ojni
 lYvmzhZFqFnZDXUPJqBqfOszcpnVtH8ybIXOU2RxfwrucQ+OE6gwMiAIMhpxwPkEje7YV8PeV
 XsSp7F0kli3UdsHKhHoO7Aa0Pc0K0gdrQBsFq3PrLGAZSE6U2fzvspmNqY3DdTpOTCc45R4BE
 ezgnbXTE77G+IW/L3x43A1agJdlCeBXPA509ioyIVuEIbrIyNnCC6hLMbcpha8WLCBRpIVDDR
 mWJUDDgab3Beobx9/BTs1VmeexjetPk3HncwndezbKkAPKDxo0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_130048_306420_03ACAE8C 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.24 listed in wl.mailspike.net]
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
Cc: Olof Johansson <olof@lixom.net>, arm-soc <arm@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 2, 2020 at 5:14 PM <santosh.shilimkar@oracle.com> wrote:
>
> Hi Arnd, Olof,
>
> On 3/7/20 9:56 AM, Santosh Shilimkar wrote:
> > The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:
> >
> >    Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)
> >
> > are available in the git repository at:
> >
> >    git://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone.git tags/keystone_dts_for_5.7
> >
> > for you to fetch changes up to 7856488bd83b0182548a84d05c07326321ae6138:
> >
> >    ARM: dts: keystone-k2g-evm: add HDMI video support (2020-03-07 09:47:24 -0800)
> >
> > ----------------------------------------------------------------
> > ARM: Keystone DTS updates for 5.7
> >
> > Add display support for K2G EVM Board
> >
> > ----------------------------------------------------------------
> > Jyri Sarha (2):
> >        ARM: dts: keystone-k2g: Add DSS node
> >        ARM: dts: keystone-k2g-evm: add HDMI video support
> >
> >   arch/arm/boot/dts/keystone-k2g-evm.dts | 101 +++++++++++++++++++++++++++++++++
> >   arch/arm/boot/dts/keystone-k2g.dtsi    |  22 +++++++
> >   2 files changed, 123 insertions(+)
> >
> Looks like this pull request wasn't picked. Can you please check
> in case am missing something.

I pulled it now, thanks for double-checking!

The problem here was that the soc@kernel.org address was not on Cc, so
the pull request did not end up in patchwork. I try to also look for other
pull requests sent to the arm@kernel.org address, but it's much less reliable.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
