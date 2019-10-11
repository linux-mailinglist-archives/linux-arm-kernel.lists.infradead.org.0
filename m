Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E25C6D3D49
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 12:26:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMUKLGpJlsq5US5WetM3HMjj7a7uHDt30Lxlw60R+pw=; b=qyZknnuPmr6Hlf
	tnM1ET8uEJzaJGfhHOOqFY+lxxaIrCQEvbwHWS/iq9ti3xdpTrkAEsjto5YocZTcTyhudC6dBtqK6
	SxqRPxXZw2UU/lpnT9niot+D7pQZwdblvhvsK08Q2JBq0mwmlMEgXfiDZK2iW9UeLlGVZWWvnlg7p
	QsHa8RricTTTtB3y5ZI1EDzrf0Zptr/+HPSfcVgOxzs/wfeG+ePlsbs/m+Rl6WUe8ujUEcgeD/9Tj
	URKRsXZWFzk8Kopa8zwfAOdqxB4JOiDCJg+lcDzIDpuCRXnMiacTj87ju+8BTP+rcaVYNtXoHchiG
	8ZELXWWxqymn34UD0J5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIs7T-0006pY-GY; Fri, 11 Oct 2019 10:25:59 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIs7L-0006oI-1C
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 10:25:52 +0000
Received: by mail-qt1-f194.google.com with SMTP id u22so13059423qtq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 03:25:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t/rs8Xp1pdPpdAkD8nGvsvdxNs69qOBQmbpI4r5piqI=;
 b=GP57X33xmqbv1/6N9OaiiCpR16jGKsvylSr2xlq1fpQa+4l3IaUvj3J2PdIGnal469
 bakqVKTLRXJyfnj7sVWgxIsZrwjG2BLdb8YK+VUc3qKshYd3mKZIkeEmsBjW836IYIby
 j1vkzBWpX2WSVbZcrz+lIkqp7VbO/ZdZQuwrilpc84NpD6Xkh4/QQt7iSrYm7df10Ugu
 ngbzyOELfCbcfYFMNMitUsW8AruWx/QT1YixrPj/oEqiD1gQkT/VYMIk4m28RNzWTFU+
 49PVxy1okM7Topn206YtRigTxB9W/tFms2kUY1bpNOhtfXFYE9w8YDYGS5D1FcdCp5j6
 +4Ug==
X-Gm-Message-State: APjAAAUiQgDuOaFWYQnLMjNnWXHpPNKQqxZ1o/VInwViUK2TAJxYHAKL
 kLQdiNKNVKRjwq/3ZtNJ95gEwF5LxMuspiJMosw=
X-Google-Smtp-Source: APXvYqwjulTSV7kS+w6qp4MRoCgoWGqaIzzGWNbblq62PsnCyHSrbBi44lgcajzslUmbSED4Th05TzD/0I+F9s+Wedk=
X-Received: by 2002:a0c:fde8:: with SMTP id m8mr15279083qvu.4.1570789545038;
 Fri, 11 Oct 2019 03:25:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190926193030.5843-1-anders.roxell@linaro.org>
 <20190926193030.5843-5-anders.roxell@linaro.org>
 <bf5db3a5-96da-752c-49ea-d0de899882d5@huawei.com>
 <CADYN=9LB9RHgRkQj=HcKDz1x9jqmT464Kseh2wZU5VvcLit+bQ@mail.gmail.com>
 <d978673e-cbd1-5ab5-b2a4-cdb407d0f98c@huawei.com>
In-Reply-To: <d978673e-cbd1-5ab5-b2a4-cdb407d0f98c@huawei.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 11 Oct 2019 12:25:29 +0200
Message-ID: <CAK8P3a0kBz1-i-3miCo1vMuoM39ivXa3oxOE9VnCqDO-nfNOxw@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: configs: unset CPU_BIG_ENDIAN
To: John Garry <john.garry@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_032551_076135_6373B2F3 
X-CRM114-Status: GOOD (  20.52  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Anders Roxell <anders.roxell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Olof Johansson <olof@lixom.net>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 3, 2019 at 1:15 PM John Garry <john.garry@huawei.com> wrote:
> On 03/10/2019 08:40, Anders Roxell wrote:
> > On Tue, 1 Oct 2019 at 16:04, John Garry <john.garry@huawei.com> wrote:
> >> On 26/09/2019 20:30, Anders Roxell wrote:
> >>> it doesn't get enabled when building allmodconfig kernels. When doing a
> >>> 'make savedefconfig' CONFIG_CPU_BIG_ENDIAN will be dropped.
> >>
> >> So without having to pass KCONFIG_ALLCONFIG or do anything else, what
> >> about a config for CONFIG_CPU_LITTLE_ENDIAN instead? I'm not sure if
> >> that was omitted for a specific reason.
> >
> > Oh, I tried to elaborate on the idea in the cover letter, that using
> > the defconfig
> > as base and then configure the rest as modules is to get a bootable kernel
> > that have as many features turned on as possible. That will make it possible
> > to run as wide a range of testsuites as possible on a single kernel.
> >
> > Does that make it clearer ?
>
> Hi Anders,
>
> Yeah, I got the idea.
>
> So when you say "'make savedefconfig' CONFIG_CPU_BIG_ENDIAN will be
> dropped", I don't know what the rules are in terms of resyncing the
> common defconfig (I was under the impression that it's done per release
> cycle by the arm soc maintainers, but can't find evidence as such), but
> your change may be easily lost in this way.

We don't do it every release, but occasionally someone sends a patch
with a refresh, and this might easily get missed.

We could force the allmodconfig kernel to be little-endian by default,
using a choice statement to pick endianess like arch/mips and arch/sh
do, the effect would be that an allmodconfig kernel gains a few more
options that depend on !BIG_ENDIAN, but we would no longer catch
a class of endianess bugs in drivers that we otherwise get warnings
for. No idea what is better here.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
