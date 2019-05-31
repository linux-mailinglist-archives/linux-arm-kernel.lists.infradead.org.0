Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7D731244
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 18:24:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WcwS5R2xIltyXoLngOVMZooBHG8hxda4TtVuOgpRRPM=; b=ZeZopxWAF2nro3
	ZnpaE5N/z9m2h1G6fOXiOcuaeuUHAjFx3WxInbIeZeBIfkhfeC27nfQ0y0SCpmIPPQTTRSCX1Q5in
	J0MCQsE6fOR9Xg06iDkYtDifnfKflTOe1ATPAs5/Zus7DI+y+oyq9Ca2YGAC627EdmYDylaKdsXM3
	BJTSkfqQ+aFzAoRXhCHintq3pYURAXdA9IhRaO57f5W+a/FnRsj2aVwOQGoSIkkx8gft9uyMtiwr1
	0CMbo1XsddymH4GeDZSFZpymjcftl50tU1yjNgAbX+EwHKIeSwf9avO3ANnPd0VFvD5VJm4nMQSmH
	A7PulSzQ25lPxzz8xnhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWkKR-0000Am-Mc; Fri, 31 May 2019 16:24:27 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWkKK-0000AJ-AY
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 16:24:21 +0000
Received: by mail-pg1-x542.google.com with SMTP id h2so1077126pgg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 09:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h/x2RsdaGEeomdfj9zckwm1ZuXHc7ti1LUsxVKWauDI=;
 b=WkbNgEwAtHoOpsgf2n/OOj9tvUzmqxkk0wFQPqMbZDhKXrycKmph8DKGky42GC+koN
 LJDEln958wkwnmRH28ZEap3NrGgf1V1D0g9IZCcP3z1+J4jMqALHLTOUy5KwiFNCWFFp
 J5Vof1T/5pKxOH0N8kkgt3VneNxkghx7TLiVO3NO5Dfw0XE9zLDEnv4oejnEpiTXZOeJ
 tDxDbRBsv0ZCYRogl5V2uwQD8iTi3aUBJXQrVEho7perE1vFrdRi0BvQ0ve9Pq7qowuL
 FRZuY21tQBRvNHvnsPyF6is+8mWCTar820ssvKvNtiwoTjNWK3ZyaVAaR6TMz/HMowZi
 esrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h/x2RsdaGEeomdfj9zckwm1ZuXHc7ti1LUsxVKWauDI=;
 b=ULFPDg2y2JpZ750MHq7WXeIIFFTOW71mhagjkQX0DLxk9oZ8IfjtLeNAGFnXXW4xcW
 u76ETePmlgj05gHQ8uwY3FSsjBfJ2d+Sa/+sM8kXA3oETwN9OvgwYaJs8e+H/9907679
 EcPmupyAnZhPE/6W9iN+haCVGxoD2FxhN8AT4WdXrA/aqD94jxHkWgp1nQOdE2VpUulJ
 +HtVHmyDYNamAXMq4RGKKiHlZ8wtOJXhekHOBGqJyiZXtwUcbOMJcPhCuJ8tsobr70M1
 8BGKYHBTKjtkVVeyo6UXla+jNlhILCrbdZZL8shh5524kd4NJOttDSccrxL6gDeNFgSJ
 /icQ==
X-Gm-Message-State: APjAAAXne17HB1lArscV2RmbEyYSZhYVkZopLV1aI9CAuMHpo6k7eB36
 yvR7os3lYZowZgKqyuvRgBy6Gvz/mUoGPZiCNueEQw==
X-Google-Smtp-Source: APXvYqxuY1CYuxd04Kewq/lINHwhx4xTvJLFZIhJ6+qsHKD7HtPQ0W1vOSTfUsi9VyOoypjJcb2qINRGGNrlijbQeNg=
X-Received: by 2002:a62:2c17:: with SMTP id s23mr11223321pfs.51.1559319859023; 
 Fri, 31 May 2019 09:24:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190521182932.sm4vxweuwo5ermyd@mbp>
 <201905211633.6C0BF0C2@keescook>
 <6049844a-65f5-f513-5b58-7141588fef2b@oracle.com>
 <20190523201105.oifkksus4rzcwqt4@mbp>
 <ffe58af3-7c70-d559-69f6-1f6ebcb0fec6@oracle.com>
 <20190524101139.36yre4af22bkvatx@mbp>
 <c6dd53d8-142b-3d8d-6a40-d21c5ee9d272@oracle.com>
 <CAAeHK+yAUsZWhp6xPAbWewX5Nbw+-G3svUyPmhXu5MVeEDKYvA@mail.gmail.com>
 <20190530171540.GD35418@arrakis.emea.arm.com>
 <CAAeHK+y34+SNz3Vf+_378bOxrPaj_3GaLCeC2Y2rHAczuaSz1A@mail.gmail.com>
 <20190531161954.GA3568@arrakis.emea.arm.com>
In-Reply-To: <20190531161954.GA3568@arrakis.emea.arm.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Fri, 31 May 2019 18:24:06 +0200
Message-ID: <CAAeHK+zRDD7ZPPUA9cpwHOdgTRrJLWAby8Wg9oPgmhqMpHwvFw@mail.gmail.com>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_092420_439681_7CF70C9F 
X-CRM114-Status: GOOD (  23.72  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgenii Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Yishai Hadas <yishaih@mellanox.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Elliott Hughes <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 6:20 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Fri, May 31, 2019 at 04:29:10PM +0200, Andrey Konovalov wrote:
> > On Thu, May 30, 2019 at 7:15 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > > On Tue, May 28, 2019 at 04:14:45PM +0200, Andrey Konovalov wrote:
> > > > Thanks for a lot of valuable input! I've read through all the replies
> > > > and got somewhat lost. What are the changes I need to do to this
> > > > series?
> > > >
> > > > 1. Should I move untagging for memory syscalls back to the generic
> > > > code so other arches would make use of it as well, or should I keep
> > > > the arm64 specific memory syscalls wrappers and address the comments
> > > > on that patch?
> > >
> > > Keep them generic again but make sure we get agreement with Khalid on
> > > the actual ABI implications for sparc.
> >
> > OK, will do. I find it hard to understand what the ABI implications
> > are. I'll post the next version without untagging in brk, mmap,
> > munmap, mremap (for new_address), mmap_pgoff, remap_file_pages, shmat
> > and shmdt.
>
> It's more about not relaxing the ABI to accept non-zero top-byte unless
> we have a use-case for it. For mmap() etc., I don't think that's needed
> but if you think otherwise, please raise it.
>
> > > > 2. Should I make untagging opt-in and controlled by a command line argument?
> > >
> > > Opt-in, yes, but per task rather than kernel command line option.
> > > prctl() is a possibility of opting in.
> >
> > OK. Should I store a flag somewhere in task_struct? Should it be
> > inheritable on clone?
>
> A TIF flag would do but I'd say leave it out for now (default opted in)
> until we figure out the best way to do this (can be a patch on top of
> this series).

You mean leave the whole opt-in/prctl part out? So the only change
would be to move untagging for memory syscalls into generic code?

>
> Thanks.
>
> --
> Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
