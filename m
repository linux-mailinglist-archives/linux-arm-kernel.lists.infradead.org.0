Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C23951D2ECE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 13:51:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NDGMDc/O7v7RLKRIIUjQFEmGaGlNg4nWuvYTDPAu8EI=; b=TpTmmHTBw5Bn8z
	BJQW5VsM9IKmhFpDfAyQ+LiGDy26MFWNxiRO0Pmp9xeC9OSipaIelv9qBADB4dq6mWyDguULqY9KK
	Dx633YkZqEKvtynnpz2PgNHtweYMP2RNsPNJafUO1wG+PnLzNu5+93swGkIIJi+9amJA4pt7WhB7Y
	QEWQNmVxk1DngJj+Rahjmhg7JyiOm+sbuzU66E4fCHvFNtqULg+bLFyBbpoc9yfUqzKv3/CC0zfto
	eW2PhOuSB8EFupjd/SZtu4CpTGQCDmL7ARIsfgjkXFUhdcx/08bKQYBJ9nA24yoBxzjgkVMfbVtIK
	5ljD69msdWUiAHst3nGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZCOb-0005jx-KM; Thu, 14 May 2020 11:51:25 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZCOS-0005jO-RN
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 11:51:18 +0000
Received: by mail-ua1-x944.google.com with SMTP id 36so1001035uaf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 04:51:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fz/sODwE4TRlAOUOF7rSWmB5p5vCnF20YLXRpjtRNR8=;
 b=fAoerFnOqYJzGocVX8Id2ilnoOiWw9tjf6UV3fKEYbOvg/kHrbnP/C65NbI59Xi0v4
 UxhU3GHuwaHdeJztSATlKlF9pKzjvjuw4mhzkkdTOCQR8BLxUPcGGM7p5toepgNmjsKH
 XTW8A+gOuYLB3pBMRrN/Jz9lQ0NTXe0SbQZ7d8+Lh5sUo5nCpQzJ7Ixk2nfuYLaPuLc8
 u7E9ivRsvS87+z0XhwvuRAxP4jN3mUuEi/gn9h/l64H4GWHihtLGm3qNS+Jul7EZOBIo
 eBnwqDOe16oXRAG26LmjNVwlLFzWWnWEAlhg9btfai30pziMNZAycFz/gKGHiIz8qdNI
 Hd5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fz/sODwE4TRlAOUOF7rSWmB5p5vCnF20YLXRpjtRNR8=;
 b=alIAWAbrrJe3BZBuFojkEu4Y+Zseh1eKdAr8VoWCM8yXb4LETstCmKVIDp0QgZQTyp
 4ddN0ErjsOFIPua47gn0CR5obW8fmwbSg2QmsasEdnqVsOoNLxzwsjOSPQ6EAJoNpBCo
 SlNWcq/1Xui2CbML/1BaQmhmx2Xp8z8HeyGvmg8x0IBJtKhF6qR7Yqq3MOLTq1m39Lml
 W5EFbrrKe/jlzunMt/DlggKHH1vvXEvr3Z60ZYwkkDDeQjE7Mye8SQJBYyf4+THcQ0AX
 ogHM2WWhl4x2Qv/21fxMqQeXyvBZ1LOdanlyWGp4Cqz17IyP+WFoPqmLIU1adBukpPia
 HuvQ==
X-Gm-Message-State: AOAM530UOf84vhuCdm3W3oBs3wej9EmF3En1PqYR/4T4cuKl6+WBfUy4
 UpQAPRvl6s4Ai19kcJLaXHiYIaeoeY2NLrcwM/w=
X-Google-Smtp-Source: ABdhPJxSk3G3P52SjjYVN5dey+t6hO6IzipIL9onpZ2v3nEYxcmFje21OU68uGtXk/NMjDQSpwIAtCNk2p/z79SJzCM=
X-Received: by 2002:ab0:1ea:: with SMTP id 97mr3527388ual.106.1589457075715;
 Thu, 14 May 2020 04:51:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190731124349.4474-1-gregkh@linuxfoundation.org>
 <20190731131045.GB147138@dtor-ws> <20190802104633.GA14823@kroah.com>
 <CACvgo52+Uqx4GJFwadJoFzzt5EMc69HcW-+K9uxv9t25TtSDBg@mail.gmail.com>
 <20200514071631.GA1566388@kroah.com>
In-Reply-To: <20200514071631.GA1566388@kroah.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Thu, 14 May 2020 12:48:32 +0100
Message-ID: <CACvgo52Mqag6wzWqJPMqbtbSsqDgPyyG33huAd+cQgFKQhfQUw@mail.gmail.com>
Subject: Re: [PATCH v2 00/10] drivers, provide a way to add sysfs groups easily
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_045116_881370_43771E87 
X-CRM114-Status: GOOD (  28.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [emil.l.velikov[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: platform-driver-x86@vger.kernel.org,
 linux-fbdev <linux-fbdev@vger.kernel.org>, x86@kernel.org,
 "H. Peter Anvin" <hpa@zytor.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Tony Prisk <linux@prisktech.co.nz>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Borislav Petkov <bp@alien8.de>,
 linux-input@vger.kernel.org, Darren Hart <dvhart@infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, LAKML <linux-arm-kernel@lists.infradead.org>,
 Richard Gong <richard.gong@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 May 2020 at 08:16, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Wed, May 13, 2020 at 11:18:15PM +0100, Emil Velikov wrote:
> > Hi Greg,
> >
> > On Fri, 2 Aug 2019 at 11:46, Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> >
> > >
> > > I have now done this with patch 1/10.  Here's the pull info if any
> > > subsystem maintainer wants to suck this into their tree to provide the
> > > ability for drivers to add/remove attribute groups easily.
> > >
> > > This is part of my driver-core tree now, and will go to Linus for
> > > 5.4-rc1, along with a few platform drivers that have been acked by their
> > > various subsystem maintainers that convert them to use this new
> > > functionality.
> > >
> > > If anyone has any questions about this, please let me know.
> > >
> > > thanks,
> > >
> > > greg k-h
> > >
> > > -------------------
> > >
> > > The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
> > >
> > >   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
> > >
> > > are available in the Git repository at:
> > >
> > >   git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git tags/dev_groups_all_drivers
> > >
> > > for you to fetch changes up to 23b6904442d08b7dbed7622ed33b236d41a3aa8b:
> > >
> > >   driver core: add dev_groups to all drivers (2019-08-02 12:37:53 +0200)
> > >
> > > ----------------------------------------------------------------
> > > dev_groups added to struct driver
> > >
> > > Persistent tag for others to pull this branch from
> > >
> > > This is the first patch in a longer series that adds the ability for the
> > > driver core to create and remove a list of attribute groups
> > > automatically when the device is bound/unbound from a specific driver.
> > >
> > > See:
> > >         https://lore.kernel.org/r/20190731124349.4474-2-gregkh@linuxfoundation.org
> > > for details on this patch, and examples of how to use it in other
> > > drivers.
> > >
> > > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > >
> > > ----------------------------------------------------------------
> > > Dmitry Torokhov (1):
> > >       driver core: add dev_groups to all drivers
> > >
> > >  drivers/base/dd.c      | 14 ++++++++++++++
> > >  include/linux/device.h |  3 +++
> > >  2 files changed, 17 insertions(+)
> > > _______________________________________________
> >
> > Was planning to re-spin DRM a series which uses .dev_groups, although
> > I cannot see the core patch.
> > Did the it get reverted or simply fell though the cracks?
>
> Nope, it's in there:
>         23b6904442d0 ("driver core: add dev_groups to all drivers")
> which showed up in the 5.4 kernel release.
>
> Lots of other subsystems have already been converted to use this, do you
> not see it in your tree?
>
A case of PEBKAC it seems - I was looking at a 5.3 checkout somehow.

Thanks for the core work. Will check/merge the fbdev patches over the
next few days and polish drm land.

-Emil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
