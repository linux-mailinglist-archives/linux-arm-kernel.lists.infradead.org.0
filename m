Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 821BAE9CC7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 14:56:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sRWkMZX+8Kre6iLDJXHeMra7ruZSV2/v2fvjXz9g1lE=; b=JZWHRnPJ4y2yRk
	R9r9f+6vZz3NlH+bsCtS1hJphHarARzVKvXMXS5kJl4teit3MFUNCK4JPHriLyO0Y292bZ060T0jC
	NsLepkQJaSCV/hDTdZFx28TGq94Jk0vG+T8hN5wsyqQ5YItZuEl7h/JGFJDw4i8OeQi2/Yzy0ALvH
	F2yM0Y5vPexBX3K0m/7EpDXZKrX9I50+qIlN/VwhEtMlfFYfbU5TMomkDusgToV8/FG4RZJmdhAjJ
	a6CWhWzZPeyD7F04nzQ1KzOLxv+IqP8UH2N+CO46Ph/Nmvg0vgKWzXrSkUGaaOqpmHdYytjWhuC0F
	7h5QFXLmv2QW96nwdwHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPoSo-00087q-Gy; Wed, 30 Oct 2019 13:56:42 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPoST-00083Q-49
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 13:56:23 +0000
Received: by mail-pf1-x441.google.com with SMTP id 193so351240pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 06:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ovs9CQYvSKRtEjY+CnNWbmrVhSTfprl8aJOuk9gzXg8=;
 b=gx8GvXN4daW5sgnze1GfBd2ZiVunOsO0NjBt4YIISVMCfXC6SiBn4/dF6JLYoHmvS3
 1S1cS1tSZ4ORyZqKdGWUR//qO43oIHdvFSPqgOTYE6rr+5+vgGWrsWXQNuhMN96pEFvz
 Y0nwSt7BPKHjFsVnDqn9ID442LfWvD59dtK8GMnfDlGfHelIqZaxiLMDiACrtclFn+RL
 sfFJBxbl2hfrcMKUFaZaF6LHkfIZ/stVfXEny8LnT1Zk93eTil+nfPKN5ZecIkSff6A4
 GoqEhZA4LHLOdtoZUj5Bn1L7n0Mo66vhV9JyXlhwiL5LSrSQDp+PIC+NK9QbAHIQ8ENN
 kR6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ovs9CQYvSKRtEjY+CnNWbmrVhSTfprl8aJOuk9gzXg8=;
 b=Wxr4WCv52fuemCVPKSvq8gAXKvmRrxO1HdgECVuXxdDsVEFt7xGtksR4G0SqQ1E32l
 LB9fANrneljd1c/WZM+GBtUzefvPpks7sod1nVqyq69uOxMeYJmoFkO8vOJnpMEVJ13z
 t8WqheVhbTAtKbOrERGiJhMNmgOG4aIeJR+ty5Ruyu8Wg+14CB2pGYtJr/8MTJ74Hx+8
 Uuq2c8sYodv/42cZSxNXb2Kp/JHs2Xf08EorIDIkLjNMvwpJeYXeooBGr/dTwZrJ0svu
 0soqpoeEd2swKdaLRthlZ7XwM+lPwpIqlc+2Aot+yufMXZ9PBcu0HfThBlzjWWIq3uEo
 jV3Q==
X-Gm-Message-State: APjAAAWWkaCIKYDFkaHSlY7hw58/crY93mWl242Lq+kdp5ob2TTJcNQ8
 EjATVp9VZ+pcpts5kwPxslbCcBnDm3kgEQWHHorFRA==
X-Google-Smtp-Source: APXvYqx7tL1LoR7oP3ldyuFOD195bI3hUpP3f0+MxE4gssIYrsm5t9HCXZ9k1IOQfyH2Tp/uBkVW9Tz/OT7MI9sCPFs=
X-Received: by 2002:a17:90a:1f4b:: with SMTP id
 y11mr14130376pjy.123.1572443779855; 
 Wed, 30 Oct 2019 06:56:19 -0700 (PDT)
MIME-Version: 1.0
References: <15b7c818-1080-c093-1f41-abd5d78a8013@arm.com>
 <CAAeHK+zbMhErcEo66w6ZH45A3XUH_joUmimOa2RL1t1Q6AV_PQ@mail.gmail.com>
 <6f9fdf16-33fc-3423-555b-56059925c2b6@arm.com>
 <CAAeHK+yP2vK06tnx2p=NT8cD_qz_gV_xkuPZ40b2OAe+zxM-EA@mail.gmail.com>
 <b135bdce-8fd3-c81b-72d1-6a162307f6be@arm.com>
In-Reply-To: <b135bdce-8fd3-c81b-72d1-6a162307f6be@arm.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Wed, 30 Oct 2019 14:56:08 +0100
Message-ID: <CAAeHK+zArL=ru9rmsbuJjertMtF+PwdqV_Dpd=xJ=mKF=Gfzsw@mail.gmail.com>
Subject: Re: Makefile kernel address tag sanitizer.
To: Matthew Malcomson <Matthew.Malcomson@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_065621_261641_059472DA 
X-CRM114-Status: GOOD (  25.71  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dmitry Vyukov <dvyukov@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, nd <nd@arm.com>,
 kasan-dev <kasan-dev@googlegroups.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 2:30 PM Matthew Malcomson
<Matthew.Malcomson@arm.com> wrote:
>
> On 29/10/19 17:50, Andrey Konovalov wrote:
> > On Tue, Oct 29, 2019 at 6:45 PM Matthew Malcomson
> > <Matthew.Malcomson@arm.com> wrote:
> >>
> >> Hi Andrey,
> >
> > Hi Matthew,
> >
> >>
> >> Thanks for the clarification on that bit, could I ask another question?
> >>
> >> I seem to have non-stack compiling with GCC running ok, but would like
> >> to have some better testing than I've managed so far.
> >
> > Great! =)
> >
> >>
> >> I'm running on an instrumented kernel, but haven't seen a crash yet.
> >>
> >> Is there a KASAN testsuite to run somewhere so I can proove that bad
> >> accesses would be caught?
> >
> > Kind of. There's CONFIG_TEST_KASAN which produces lib/test_kasan.ko,
> > which you can insmod and it will do all kinds of bad accesses.
> > Unfortunately there's no automated checker for it, so you'll need to
> > look through the reports manually and check if they make sense.
>
> Great, that was really useful!
>
> I found one issue in my instrumentation through using these tests -- I
> haven't defined `__SANITIZE_ADDRESS__` (which means memset calls aren't
> sanitized here since a macro replaces them with __memset).
>
> Looking at the current kernel code it seems that for clang you use
> `__SANITIZE_ADDRESS__`, for either hwasan or asan.  (commit 2bd926b4).
>
> Do you (or anyone else) have any objections to using
> `__SANITIZE_HWADDRESS__` to indicate tagging address sanitizer so they
> can be distinguished?
>
> I can provide a patch to the kernel to account for the compiler
> behaviour if it's acceptable.
>
>
>
> Similarly, I'm thinking I'll add no_sanitize_hwaddress as the hwasan
> equivalent of no_sanitize_address, which will require an update in the
> kernel given it seems you want KASAN to be used the same whether using
> tags or not.

We have intentionally reused the same macros to simplify things. Is
there any reason to use separate macros for GCC? Are there places
where we need to use specifically no_sanitize_hwaddress and
__SANITIZE_HWADDRESS__, but not no_sanitize_address and
__SANITIZE_ADDRESS__?

>
> Cheers,
> Matthew
>
> >
> > Thanks!
> >
> >>
> >> Cheers,
> >> Matthew
> >>
> >> On 16/10/19 14:47, Andrey Konovalov wrote:
> >>> On Wed, Oct 16, 2019 at 3:12 PM Matthew Malcomson
> >>> <Matthew.Malcomson@arm.com> wrote:
> >>>>
> >>>> Hello,
> >>>>
> >>>> If this is the wrong list & person to ask I'd appreciate being shown who
> >>>> to ask.
> >>>>
> >>>> I'm working on implementing hwasan (software tagging address sanitizer)
> >>>> for GCC (most recent upstream version here
> >>>> https://gcc.gnu.org/ml/gcc-patches/2019-09/msg00387.html).
> >>>>
> >>>> I have a working implementation of hwasan for userspace and am now
> >>>> looking at trying CONFIG_KASAN_SW_TAGS compiled with gcc (only with
> >>>> CONFIG_KASAN_OUTLINE for now).
> >>>>
> >>>> I notice the current scripts/Makefile.kasan hard-codes the parameter
> >>>> `-mllvm -hwasan-instrument-stack=0` to avoid instrumenting stack
> >>>> variables, and found an email mentioning that stack instrumentation is
> >>>> not yet supported.
> >>>> https://lore.kernel.org/linux-arm-kernel/cover.1544099024.git.andreyknvl@google.com/
> >>>>
> >>>>
> >>>> What is the support that to be added for stack instrumentation?
> >>>
> >>> Hi Matthew,
> >>>
> >>> The plan was to upstream tag-based KASAN without stack instrumentation
> >>> first, and then enable stack instrumentation as a separate effort. I
> >>> didn't yet get to this last part. I remember when I tried enabling
> >>> stack instrumentation I was getting what looked like false-positive
> >>> reports coming from the printk related code. I didn't investigate them
> >>> though. It's possible that some tweaks to the runtime implementation
> >>> will be required.
> >>>
> >>> Thanks!
> >>>
> >>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
