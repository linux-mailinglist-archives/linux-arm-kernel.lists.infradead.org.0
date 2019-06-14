Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C2745691
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 09:42:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VYcSDfXUl48K2W8vHpVZgYrsPm9ZrCdZk9Bh/T6TpUA=; b=dn9gEN8mkyDQPq
	JJmb3OjH6LDMGG3ZxfzOak92V51tElvwYbSSixoiPrlFZQUwoOlDOCNKwery4ACO/3/UTSPlcqsQl
	QuLsiNTl4sLxp+wcCAI3srHgjNNEuhGT2EgYmTERaesnKd0ja9QGDB40Q9eQDF81stj+Q+OgYVzj9
	1o7DgbMO8s95zlOD+aztBA3U749om72CkrS7eYMX63ud0UZ9wFxac2vrkIvJGPXBUk72XUjiXGSLK
	F1wFHALawxlsnvJD+pObIa3F39pZ46KbL1ycUhzuqqSo0AzSgguFD/6oBl6Nx0YvdrAMhJUcnlrpm
	/YFrIs4ZquLQtrZsGn6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbgr5-0005yz-5T; Fri, 14 Jun 2019 07:42:35 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbgqp-0005xo-Lz
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 07:42:21 +0000
Received: by mail-io1-xd41.google.com with SMTP id u19so3662195ior.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 00:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FQ8LZODblM+N4Tgxv/Vx/JLYR0QWgL30pjQyU5T9Z7k=;
 b=d61MN0ui4Nr3LdQUczYZoW1GbBfce5WPuW85XJAbQsVc2VzpdChR+riLWW6r11KZxB
 yg3IOLzoh95RaA/8DZkOT+bXMf9kZlI4dMmL8mhTraPZhyaCOF06oX7LCR5uqNAAXgJN
 S6rthT/UKfeR1Xos+QFbt1jAwYeQ4ymyG1CfSpO1D3pEmtBUELkjtZyJh/ZnYR8cwsnN
 6T+4+ZuJWF0yzqyVx0CyNGjYsJ7U5c8mOFmotqs6dNaeKPdnZf+ljIFCT9IldFiDM/ji
 OrHRfJSMC4POv4FnJVYb4b7VS7MuE7dhm1qEwsrenV5IQwMr6YiF253wIy7ku4ikS+Am
 6anw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FQ8LZODblM+N4Tgxv/Vx/JLYR0QWgL30pjQyU5T9Z7k=;
 b=OqGucCiRlZwWAfUvntTMOuGTt08AbA5Qji+LkuNjCKncQX8294jdugZnJwwrGYEF89
 wkR8mQWbdiHAUwUFtL2UY+PTYrnZV3kMiGU1QaMMT1sm3X5pyEOVC5W6tRmM7enkGlLX
 llBjkS+MNmVTNVd+CLi6h0rGjGQAYas/uefx861tpXfPrxfXqbiHvU/j5ExI6xY6u8dI
 udkReeHhL50b8g5O/rKneabeTjyFfjAUK945SG1DyQ4DjZECVtbb9qKIk7O2lqH+gW2a
 0qjfPBsArZOH/mCHXQqcDdYwBGrXOdXjNElNAINSAPpD/BvhtPVHgXEDyaF+8ztIekpC
 bU3Q==
X-Gm-Message-State: APjAAAWYglFAOsGUqZyXeOknrQ69xESim+L8+MzxCFOT760+T8ScDoG0
 cRmN4krEDNTRZEiodQHbVrAbE/VRDpdfWGXX9auvKj+YNjE=
X-Google-Smtp-Source: APXvYqx2gVmfLUq9fYnWUdyVXvs8Eyu6IOEDQyJhsEZOOwZ2zQ9n4ZMlIc6F7+6tGOcFj+COvIrNEMx8IxjCIikZX8o=
X-Received: by 2002:a6b:7312:: with SMTP id e18mr6634725ioh.156.1560498138569; 
 Fri, 14 Jun 2019 00:42:18 -0700 (PDT)
MIME-Version: 1.0
References: <5783e36561bb77a1deb6ba67e5a9824488cc69c6.camel@kernel.crashing.org>
 <20190613190248.GH13533@google.com>
 <e6c7854ae360be513f6f43729ed6d4052e289376.camel@kernel.crashing.org>
In-Reply-To: <e6c7854ae360be513f6f43729ed6d4052e289376.camel@kernel.crashing.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 14 Jun 2019 09:42:05 +0200
Message-ID: <CAKv+Gu95pQ7_OfLbEXHZ_bhYnqOgTBKCmTgqUY27un-Y708BgQ@mail.gmail.com>
Subject: Re: [RFC PATCH v2] arm64: acpi/pci: invoke _DSM whether to preserve
 firmware PCI setup
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_004219_727981_D1CAA006 
X-CRM114-Status: GOOD (  33.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sinan Kaya <okaya@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <helgaas@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-pci <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 14 Jun 2019 at 01:07, Benjamin Herrenschmidt
<benh@kernel.crashing.org> wrote:
>
> On Thu, 2019-06-13 at 14:02 -0500, Bjorn Helgaas wrote:
> >
> > PCI FW r3.2 says 0 means "the OS must not ignore config done by
> > firmware."  That means we must keep the FW configuration intact.
>
> So I tried implementing what you seem to want and it doesn't make sense
> imho.
>
> I think the wording of the spec is terrible and doesn't convey the
> intent here.
>
> What is it that _DSM #5 is about ? Is it about telling us that the FW
> config shall not be trusted ? That seem to be its original intent based
> on the existing wording and the fact that "1" says "may ignore".
>
> Or was it always intended to be some kind of inverted logic with 0
> meaning that we *must* preserve what FW did ?
>

The original purpose was for firmware running on 64-bit hosts to not
create a PCI resource assignment that was incompatible with the OS
booting in 32-bit mode.

So the expectation was that a 32-bit OS would reuse whatever config
the firmware created, and the 64-bit version would be enlightened to
understand that it could reassign resource assignments to make better
use of the available resource windows, but this required a mechanism
to describe which resources should be left alone by the OS.

So I don't think anybody cares about that use case anymore, and I have
no idea how widespread its use was when people did.

> But preserving what FW did was always the default for x86 and
> Windows... It's just that we happen to do something wrong today on
> Linux/ARM64 which is to always reassign everything.
>
> The way Linux resource assignment works accross platforms has generally
> been based on one of these 3 methods:
>
>  - The standard x86 method, which is to claim what's there when it
> doesn't look completely busted and has been assigned, then assign
> what's left. This allows for FW doing partial assignment, and allows to
> work around a number of BIOS bugs.
>
>  - The "probe only" method. This was created independently on powerpc
> and some other archs afaik. At least for powerpc, the reason for that
> is some interesting virtualization cases where we just cannot touch or
> change or move anything. The effect is to not reassign even what we
> dont like, and not call pci_assign_unassign_resources().
>
>  - The "reassign everything" method. This is used by almost all
> embedded patforms accross archs. All arm32, all arm64 today (but we
> agree that's wrong), all embedded powerpc etc... This is basically
> meant for us not trusting whatever random uboot or other embedded FW,
> if any, and do a full from-scratch assignment. There are issues in how
> that is implemented accross the various platforms/archs, some for
> example still honor existing bus numbers and some don't, but I doubt
> it's intentional etc... but that method is there to stay.
>
> Now, the questions are two fold
>
>   - How do we map _DSM #5 to these, at least on arm64, maybe in the
> long run we can also look at affecting x86, but that's less urgent.
>
>   - How do I ensure the above fixes my Amazon platform ? :-)
>

It would help if you could explain what exactly is wrong with your
Amazon platform :-)

> There's one obvious thing here. If we don't want to break existing
> things, then the absence of _DSM #5 must not change our existing
> behaviour. I think we can all agree on this.
>
> We might explore changing arm64 default behaviour as a second step
> since we all agree it's not doing what it should, but we also know that
> it will probably break some things so we need to be careful, understand
> the issues and work around them. This isn't the scope of the initial
> _DSM #5 patch.
>
> That leaves us with the _DSM #5 present cases.
>
> Now we have two values. What do they mean ? As I already said before,
> the wording with "must not ignore" and "may ignore" is completely
> useless and doesn't tell us a thing about the intention here. We don't
> know why the FW folks may have put a given value here, and what they
> expect us to do about it.
>
> What we do know is that Seattle returns 1 and needs reassignment, and
> we do know that the Amazon platforms return 0 and will want us to not
> touch the existing setup.
>
> However, does 1 means "business as usual" or does it mean "reassign
> everything" ?
>
> Does 0 means "probe only" ? Or do we still do an assignment pass for
> things that the FW may have left unassigned ?
>
> Today in Linux, the "probe only" logic tends to not call
> pci_assign_unassigned_resources for example.
>
> From a pure reading of the spec, there's an argument to be made that
> both 0 and 1 values can lead to the same code that reads what's there
> and reassign what's missing.
>
> So this is a mess, a usual when it comes to specs written by
> committees, but at this stage I'm at a loss as to what you want me to
> do.
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
