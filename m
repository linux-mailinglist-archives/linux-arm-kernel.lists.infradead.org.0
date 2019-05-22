Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9D3270AF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 22:16:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wbw+qcD7qBOPfDUqRLJ5rw/RTMYM9IBynE41BTVUiZA=; b=WNPsltamISAoD4
	okLi6H7Ly2TAPB5bbtxyfGR7ai26FzH3zF0+wuwgzo8+J8RldRQnTXOMBoVKRaxYrsvsPL6F6jxFt
	TE1ZpP0c3OXiZCc/V0XAfuuclT3lNLqX92P5hplEbbZtCxYHc5wPk0b73WMg+aCmbbg3svSFpLpwN
	qYDHM2nX8Sig71AX4y3lP3jhwcQXkUP0mCd36DQxBi6uhfRLGqhOnAQMzKpReat+1cO/9qlItWlJ8
	T+eV2rwE4zRmB5ExcJmM8T+olkTPs7Da4nAqoKEUFpLYoUgQ3zEWT8yUE+RutSZaikg3iSn7Ti1nH
	Zk2eCQu96mhYBWitR1sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTXeu-0007kI-2m; Wed, 22 May 2019 20:16:20 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTXel-0007jn-Rf
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 20:16:13 +0000
Received: by mail-lj1-x243.google.com with SMTP id z1so3318842ljb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 13:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0QfgGpfBPenuVTK4QBHqIOfbfu3mYm6801nPB6AtTbg=;
 b=efNzGroYusRAaEDsxj++TPJsvxks1eNated5nn5y7tlpjx/+YV4iarteHjAsgVRWyv
 qV1iM2jFkqeqVZ60hyGrgA+iKj9XLYoinAIbx9aKQGymsFhsi8sDNA4x7lKxk9I/yxf9
 zx43H2ftRI4hpAeLvUaCSFwSlmKo8BKAgAeCJSD9hxfs7RtSGY9pmt5vsnNtNJ56rv67
 jIGc/hrimcITUdfG9J7ly3HBYArn3SKohhDYcSqAbppqL0mNbFyjlLDnYeaHM9uonO4O
 ufZRlzizHiSyf/pfX51aVvjz0xzqbcySuny4AVjp7wVtb4QBwDkwZrZ0z/Q3p7onR8yt
 etJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0QfgGpfBPenuVTK4QBHqIOfbfu3mYm6801nPB6AtTbg=;
 b=E++aF7+alwP5OoTffR3u+9hXfNJhbYxZfNo8UcBjGnyJdF+cNsCErTWeK8tqqCR+ir
 sCurEEJ0ceJ/pXFonQxmEzWINdL4C6Y4YZQAl2XzvDiohjTJpeh1HULGSma4Bjqk1gQO
 wRGAM4RIM4sKH++IF9BzVznt9fdac2W6xSwIyebHR+pVSpxCfdI6PSaIVttyKShCwo+x
 bT2T0UfSgFjlLn9GlB9ubFjFqm3KYcaUTHol2DUqnpdXu3WfTiObbF6fZcIy+yAeXp7n
 KguMDcSso51Ah6kBAIXNCNUSE0rezkNQU4CXkHqMQo0G6jUtshOL3/NK/EAj3O9VWFNi
 8Q3Q==
X-Gm-Message-State: APjAAAWDhaSAHs+pjTgbVNKVkT5tQvulKuknIvskToz9/T9F/Cp0f1Gt
 blM8aF0yv3Z6fux41+VW6SHIovSQwjebD8y8pErqLA==
X-Google-Smtp-Source: APXvYqygGa8rtRNIFjzwi6ULooCIPc9lOrOSeVX/ax8A+QrN8e39fSC+EkrWuLWAGu39QnHtsT9z6aUFsbTAkajmkCU=
X-Received: by 2002:a2e:9d4e:: with SMTP id y14mr20404646ljj.199.1558556169212; 
 Wed, 22 May 2019 13:16:09 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1557160186.git.andreyknvl@google.com>
 <20190517144931.GA56186@arrakis.emea.arm.com>
 <CAFKCwrj6JEtp4BzhqO178LFJepmepoMx=G+YdC8sqZ3bcBp3EQ@mail.gmail.com>
 <20190521182932.sm4vxweuwo5ermyd@mbp> <201905211633.6C0BF0C2@keescook>
 <20190522101110.m2stmpaj7seezveq@mbp>
 <CAJgzZoosKBwqXRyA6fb8QQSZXFqfHqe9qO9je5TogHhzuoGXJQ@mail.gmail.com>
 <201905221157.A9BAB1F296@keescook>
In-Reply-To: <201905221157.A9BAB1F296@keescook>
From: enh <enh@google.com>
Date: Wed, 22 May 2019 13:15:57 -0700
Message-ID: <CAJgzZooRCx5MFL8dWuG8VaV=esYBADji7-L49fMeQa6niieWnw@mail.gmail.com>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_131611_922012_1566191B 
X-CRM114-Status: GOOD (  43.29  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
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
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgenii Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
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
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 12:21 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, May 22, 2019 at 08:30:21AM -0700, enh wrote:
> > On Wed, May 22, 2019 at 3:11 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > > On Tue, May 21, 2019 at 05:04:39PM -0700, Kees Cook wrote:
> > > > I just want to make sure I fully understand your concern about this
> > > > being an ABI break, and I work best with examples. The closest situation
> > > > I can see would be:
> > > >
> > > > - some program has no idea about MTE
> > >
> > > Apart from some libraries like libc (and maybe those that handle
> > > specific device ioctls), I think most programs should have no idea about
> > > MTE. I wouldn't expect programmers to have to change their app just
> > > because we have a new feature that colours heap allocations.
>
> Right -- things should Just Work from the application perspective.
>
> > obviously i'm biased as a libc maintainer, but...
> >
> > i don't think it helps to move this to libc --- now you just have an
> > extra dependency where to have a guaranteed working system you need to
> > update your kernel and libc together. (or at least update your libc to
> > understand new ioctls etc _before_ you can update your kernel.)
>
> I think (hope?) we've all agreed that we shouldn't pass this off to
> userspace. At the very least, it reduces the utility of MTE, and at worst
> it complicates userspace when this is clearly a kernel/architecture issue.
>
> >
> > > > - malloc() starts returning MTE-tagged addresses
> > > > - program doesn't break from that change
> > > > - program uses some syscall that is missing untagged_addr() and fails
> > > > - kernel has now broken userspace that used to work
> > >
> > > That's one aspect though probably more of a case of plugging in a new
> > > device (graphics card, network etc.) and the ioctl to the new device
> > > doesn't work.
>
> I think MTE will likely be rather like NX/PXN and SMAP/PAN: there will
> be glitches, and we can disable stuff either via CONFIG or (as is more
> common now) via a kernel commandline with untagged_addr() containing a
> static branch, etc. But I actually don't think we need to go this route
> (see below...)
>
> > > The other is that, assuming we reach a point where the kernel entirely
> > > supports this relaxed ABI, can we guarantee that it won't break in the
> > > future. Let's say some subsequent kernel change (some refactoring)
> > > misses out an untagged_addr(). This renders a previously TBI/MTE-capable
> > > syscall unusable. Can we rely only on testing?
> > >
> > > > The trouble I see with this is that it is largely theoretical and
> > > > requires part of userspace to collude to start using a new CPU feature
> > > > that tickles a bug in the kernel. As I understand the golden rule,
> > > > this is a bug in the kernel (a missed ioctl() or such) to be fixed,
> > > > not a global breaking of some userspace behavior.
> > >
> > > Yes, we should follow the rule that it's a kernel bug but it doesn't
> > > help the user that a newly installed kernel causes user space to no
> > > longer reach a prompt. Hence the proposal of an opt-in via personality
> > > (for MTE we would need an explicit opt-in by the user anyway since the
> > > top byte is no longer ignored but checked against the allocation tag).
> >
> > but realistically would this actually get used in this way? or would
> > any given system either be MTE or non-MTE. in which case a kernel
> > configuration option would seem to make more sense. (because either
> > way, the hypothetical user basically needs to recompile the kernel to
> > get back on their feet. or all of userspace.)
>
> Right: the point is to design things so that we do our best to not break
> userspace that is using the new feature (which I think this series has
> done well). But supporting MTE/TBI is just like supporting PAN: if someone
> refactors a driver and swaps a copy_from_user() to a memcpy(), it's going
> to break under PAN. There will be the same long tail of these bugs like
> any other, but my sense is that they are small and rare. But I agree:
> they're going to be pretty weird bugs to track down. The final result,
> however, will be excellent annotation in the kernel for where userspace
> addresses get used and people make assumptions about them.
>
> The sooner we get the series landed and gain QEMU support (or real
> hardware), the faster we can hammer out these missed corner-cases.
> What's the timeline for either of those things, BTW?
>
> > > > I feel like I'm missing something about this being seen as an ABI
> > > > break. The kernel already fails on userspace addresses that have high
> > > > bits set -- are there things that _depend_ on this failure to operate?
> > >
> > > It's about providing a relaxed ABI which allows non-zero top byte and
> > > breaking it later inadvertently without having something better in place
> > > to analyse the kernel changes.
>
> It sounds like the question is how to switch a process in or out of this
> ABI (but I don't think that's the real issue: I think it's just a matter
> of whether or not a process uses tags at all). Doing it at the prctl()
> level doesn't make sense to me, except maybe to detect MTE support or
> something. ("Should I tag allocations?") And that state is controlled
> by the kernel: the kernel does it or it doesn't.
>
> If a process wants to not tag, that's also up to the allocator where
> it can decide not to ask the kernel, and just not tag. Nothing breaks in
> userspace if a process is NOT tagging and untagged_addr() exists or is
> missing. This, I think, is the core way this doesn't trip over the
> golden rule: an old system image will run fine (because it's not
> tagging). A *new* system may encounter bugs with tagging because it's a
> new feature: this is The Way Of Things. But we don't break old userspace
> because old userspace isn't using tags.
>
> So the agreement appears to be between the kernel and the allocator.
> Kernel says "I support this" or not. Telling the allocator to not tag if
> something breaks sounds like an entirely userspace decision, yes?

sgtm, and the AT_FLAGS suggestion sounds fine for our needs in that regard.

> --
> Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
