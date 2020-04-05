Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB76C19EAA9
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 13:15:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DUm4lHiqw4F1NMRLPucIucbMDCSBFA2y4ozG3v/bNII=; b=tLpQIBO73q3L0f
	IO8RdLs1rckNX7PJp43DTbavw3Kh1Q2OzuYN1sweL1sQsNKY0MBEgsxs2vhoCq/qFNDMQ71ShEoPr
	qxgxUKK3txjrc+0cIFKzeWPpsB+c+rtyhx1dUHhPGlBzjOPGqDFzxpRicpfVBJ+v/7qbJynmoHMwT
	V/xf0hVUng3XRkHB9hALPZ1FzYd6LFxh1xuzYzTT7IHkbSIac+8zE0YUhtfNoUfM89m92mGjeho5a
	99zoBfk6aSB9NtAlA8lVCQmHc3mg9AsxQxwocy5JEmc0Fu9rlBQNZWRBjezpDzkMnJZzeF0U1fnKI
	+0CpmJjSyKi3vVJJhkJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL3Et-0003wb-1B; Sun, 05 Apr 2020 11:14:55 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL3Ek-0003vl-Qx
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 11:14:48 +0000
Received: by mail-wr1-x442.google.com with SMTP id c7so13892766wrx.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 04:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=NxJKrbYiQ4xe+r7i0H/o0qPIvinu13Q5NjffxcFXndY=;
 b=tmuPFlShLkL/FtM6K000R0oIzbEJBdxtfaZ2Bp7ll7HAhcaoM4vmVqtI9An+MPUhjL
 CQZy46bFQ+2giUsJaV70ct6TXxsWTiXEGCcBa3dkqCIHgfiGzEa825SZRMTufg+h8wyR
 p3ts4bZbPZZRfULPr3SDm0NbQRs9GNe2/gBjZzBejNQ2yDjRc+c3EvHF17htbo4eW134
 XUtQr4hx/UomkRbXlvh+AUa2VwC4ta8hCjVALJ3tqapeQnKyvrp+b1zuEnHw/8jbmRfN
 doDExUHLxCmJ/l4j77DTp7usvNwPweO50tXVS9kCPuO0cPH7RKfytk47dZUCGZhd6gH6
 FIHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=NxJKrbYiQ4xe+r7i0H/o0qPIvinu13Q5NjffxcFXndY=;
 b=GNcGXOipCzIGOF1I+/39oGmjbTPKOVE1mPH/edPr/C+PKYz8zIN08jPtnqjdZtwZuY
 MRPQATBxsHurpgmte38wjptlJl3PZflmkzFoltY0eB065i/M6gj5Ogkt02OfzCBbHcI6
 peWYOvgjJ2IunQetD09tEsO+lxv9p2Rldv5WVmemyaIdBlJHVDZWWck3DjAMdzadS56n
 GDPqA23OFlCMA9GaooVdNgXoAQHv/XkfsrbSnmRBemvAYjOkzuCln3B7fjjQgU5hW1an
 aDaTYuCais0R4/xkTDv34f23JCkvEZ6jGDncuRWnOMATOd4U7VGFgt2ixBbyDj9XtCN9
 YPLQ==
X-Gm-Message-State: AGi0PubB63ffZNalA3hufKkzsGI7KFBkg0JbbruKxe0uFgpKA0kRevaG
 YCahISgUfMeS6oxwB/mIO6TLKRm/VIuSIfHohl+ilsKV
X-Google-Smtp-Source: APiQypJo+6EuZfrkPrLQzDLqUU6JycKAfBtQI7non1VFonreceCbe9cNRfQjuuVbBjWlchnfwHmCBimpf6PFBTUnZlQ=
X-Received: by 2002:adf:bb94:: with SMTP id q20mr3453756wrg.179.1586085284762; 
 Sun, 05 Apr 2020 04:14:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200228002244.15240-1-keescook@chromium.org>
 <CA+icZUWTnP8DYfbaMwKtJbG30v7bB4w6=ywo8gn8fvwr731mUQ@mail.gmail.com>
 <202004021023.D3D8AA3BE@keescook>
In-Reply-To: <202004021023.D3D8AA3BE@keescook>
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sun, 5 Apr 2020 13:15:01 +0200
Message-ID: <CA+icZUXi_iA7XkTEbrK7b6m673iG9qPKnDBE1V0JRywDLBc9jw@mail.gmail.com>
Subject: Re: [PATCH 0/9] Enable orphan section warning
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_041446_906958_ECA7A796 
X-CRM114-Status: GOOD (  23.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sedat.dilek[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reply-To: sedat.dilek@gmail.com
Cc: Mark Rutland <mark.rutland@arm.com>, "H.J. Lu" <hjl.tools@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-kbuild@vger.kernel.org,
 Peter Collingbourne <pcc@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
 James Morse <james.morse@arm.com>, linux-arch@vger.kernel.org,
 Borislav Petkov <bp@suse.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 2, 2020 at 7:26 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Apr 02, 2020 at 06:20:57PM +0200, Sedat Dilek wrote:
> > On Fri, Feb 28, 2020 at 1:22 AM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > Hi!
> > >
> > > A recent bug was solved for builds linked with ld.lld, and tracking
> > > it down took way longer than it needed to (a year). Ultimately, it
> > > boiled down to differences between ld.bfd and ld.lld's handling of
> > > orphan sections. Similarly, the recent FGKASLR series brough up orphan
> > > section handling too[2]. In both cases, it would have been nice if the
> > > linker was running with --orphan-handling=warn so that surprise sections
> > > wouldn't silently get mapped into the kernel image at locations up to
> > > the whim of the linker's orphan handling logic. Instead, all desired
> > > sections should be explicitly identified in the linker script (to be
> > > either kept or discarded) with any orphans throwing a warning. The
> > > powerpc architecture actually already does this, so this series seeks
> > > to extend this coverage to x86, arm64, and arm.
> > >
> > > This series depends on tip/x86/boot (where recent .eh_frame fixes[3]
> > > landed), and has a minor conflict[4] with the ARM tree (related to
> > > the earlier mentioned bug). As it uses refactorings in the asm-generic
> > > linker script, and makes changes to kbuild, I think the cleanest place
> > > for this series to land would also be through -tip. Once again (like
> > > my READ_IMPLIES_EXEC series), I'm looking to get maintainer Acks so
> > > this can go all together with the least disruption. Splitting it up by
> > > architecture seems needlessly difficult.
> > >
> > > Thanks!
> > >
> >
> > Hi Kees,
> >
> > what is the status of this patchset?
> > Looks like it is not in tip or linux-next Git.
>
> Based on the feedback, I have 3 TODO items:
>
> - track down and eliminate (or explain) the source of the .got.plt on arm64
> - enable orphan warnings for _all_ architectures
> - refactor final link logic to perform the orphan warning in a clean way
>
> I'm working through these (and other work) still. I'm hoping to have
> another version up some time next week.
>

Please CC when possible with a pointer to a git-link.

Thanks.

- sed@ -

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
