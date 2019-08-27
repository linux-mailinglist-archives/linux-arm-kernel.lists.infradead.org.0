Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 750D59E336
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 10:54:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l9gBuCpyihcNvqLOncxzAxoyDgsFONfovLkjoox/mbQ=; b=JOBwTG9naGou2x
	SC6VLL0IHn789NCEUoFRQJaPdppf5YoY5IPDS28KkYT8pqFLQWzQWERrsURs4d4gdalQfZY+Vv34A
	d/nT9SlE4XtQuwX0WFJukiv7fD0VpcbYMORo4BoIYqI3uzPxR0KCKpcoFPJS0wYQ0ZjdM/TWNTQG/
	AXgq7fVjNq03lOcL8OqJ/k6NpXu1n48msvdwnhlbNuvhJtwRHFum0M1P9ZutAzXhDuOi4QBlP/NKK
	hf7s9/jVqJUN1/OeLDzMjGD8pbuNE37+3ippkxSclhXnua6qKNXmsJ/UnEu1oCBk/REkItdktCQkO
	/+xHuKQ6nM8EYWbZ4R9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2XEo-0003mB-FI; Tue, 27 Aug 2019 08:54:02 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2XEZ-0003kQ-S5
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 08:53:49 +0000
Received: by mail-ed1-x542.google.com with SMTP id x19so30319421eda.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 01:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bNx6tz74xU9hmYEbYc07ctD8LymWFI8TfuChqz+asMw=;
 b=OkJdw2eC6zdxQvsL0pfZDT70HNL0PbEw9zH0O9vVl14zTUGlZ9BzbAsXN0qpMI50hJ
 7RegQJE3tcCgr9J4XETmI5hDEz7QVZW6u9FPj90ZNUT3jFxKulaFD1E9Txsw3ohzrp/m
 dUmpvrH02s3Kvh262aT3G3dbe9sTdd9Ew54eD5rXOTRrOEyAUMLTrhEdXqdAzqzg5c9W
 XYEprG+ove5xUlp7s7GP0pLRhlJJIkxdVTEt0liug8/l+q97x9F4MWsGqcTlgRyzx96n
 uY426V9OAeve1Ca+tY7le8a6e4rIjNc5f8u8A6Xv0EkLIIbmD5g5SVBAMgNq1U5zNHzs
 NYCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bNx6tz74xU9hmYEbYc07ctD8LymWFI8TfuChqz+asMw=;
 b=dYqwabHw65BlnDu9GQwPLqJQ+nIpZf64VNTVdn6uO6vFxyXmWDmooWRMIHtyVOxiIe
 aWpfhBD6SpTpTB0HKaAWes1j1mLqWdsMP/p0kdICF1ELn8/bDhTU5O/LtlyHKp3P089E
 S4smGnac5brx3gZQ3+s8MAN7TvEal2LTWTo09Jq7BFAMhyG8YRvfU11fO3ARWFd1jShG
 z6M6JaGplIMODg0PgSHl91gxVe6Nfk3NHfuY/B6dLwct/4d+pV3RT5Ylt6lXrVd0hdIt
 9JUAIVCqjWQElj0nSVdyrW21Ymu11Nvel3K4k9UcWoD44OggdFJZmdkW/FlUHF4Jj0Qk
 7UUg==
X-Gm-Message-State: APjAAAWCSHl967fZskmGroK7yCbHFeYZ6EE+kBTF1E0SfrbzJWA6YAtI
 QnDIIqakrtEEJe/3buOnQSiLanh3jKw226z5qor7uA==
X-Google-Smtp-Source: APXvYqyujNBN4dohlktkcKzTTpAke4sYdHmNFq8k7RRaUgv2efVHw5GdohHpNB+V/zF/mT8mb5H35st0QN7czk4H0hU=
X-Received: by 2002:a05:6402:1344:: with SMTP id
 y4mr22538757edw.124.1566896026158; 
 Tue, 27 Aug 2019 01:53:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190826190056.27854-1-pasha.tatashin@soleen.com>
 <20190826201313.246208e9@why>
 <CA+CK2bAS-jDwY-qKfZQD8TbvyAhS1+rBvcxGqkR4BHd5NR5BGQ@mail.gmail.com>
 <d7461fb3-0f6d-8abf-084d-ce0be1f1a18d@kernel.org>
In-Reply-To: <d7461fb3-0f6d-8abf-084d-ce0be1f1a18d@kernel.org>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 27 Aug 2019 04:53:35 -0400
Message-ID: <CA+CK2bAk4Xb_hxh2KLxWKa8ogM-jO1MpREmc02TmUMpdJ2ZbSA@mail.gmail.com>
Subject: Re: [PATCH v1 0/6] Allow kexec reboot for GICv3 and device tree
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_015348_050645_93DB86C0 
X-CRM114-Status: GOOD (  21.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 James Morris <jmorris@namei.org>, LKML <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > Running Linux without EFI is common, and there are scenarios which
> > make it appropriate. As I understand most of embedded linux do not
> > have EFI enabled, and thus I do not see a reason why we would not
> > support a first class feature of Linux (kexec) on non-EFI bootloaders.
>
> Define "most". All the arm64 systems I have around (and trust me, that's
> quite a number of them) can either use u-boot, which has more than
> enough EFI support to use this functionality, or use EDK-II natively.

OK. Is this the most common configuration in the embedded ARM64
devices currently deployed: phones, cameras, consoles, players, etc?

> > We (Microsoft) have a small highly secure device with a high uptime
> > requirement. The device also has PCIe and thus GICv3. The update for
>
> PCIe doesn't imply GICv3 at all.

My impression was that without PCIe GICv3 is rarely used, and this
could be the reason why this problem is not seen outside of larger
machines which normally have EFI enabled.

>
> > this device relies on kexec. For a number of reasons, it was decided
> > to use U-Boot and Linux without EFI enabled. One of those reasons is
> > to improve boot performance, enabling EFI in U-Boot alone reduces the
> > boot performance by half a second. Our total reboot budget is under a
> > second which makes that half a second unacceptable. Also, adding EFI
> > support to kernel increases its size and there are security
> > implications from enabling more code both in U-Boot and Linux.
>
> You're are missing the point. kexec with EFI has 0 overhead (no
> non-kernel EFI code gets executed), doesn't impact your time budget, and
> only relies on a single in-memory table. This can be pretty trivially
> provided by the dumbest EFI shim.

Thanks, this makes sense that the Linux boot time won't be affected. I
have not tested how u-boot was affected, but was told 0.5 second
longer to start.

> All you are describing above is a set of self imposed limitations in
> your bootloader, which you are fully in control of. So instead of
> reinventing a square wheel, I suggest you adopt the existing implementation.

I am not sure this analogy is correct, I do not think that non-EFI
enabled kernels became legacy.

> Another reason not to do this is interoperability: I want to be able to
> kexec whatever Linux kernel I want, without having to cope with all
> flavours of the same functionality. Effectively, the EFI table is a
> private ABI between two Linux kernels. We're not changing it.

This is exactly the problem: by having this region defined in signed
DTB file we reduce the amount of communication between the kernels.
Passing modified EFI Table causes us to pass more information from the
first kernel indefinitely through updates. Thus, increases a chance
for a security compromise. We are not changing EFI ABI between
kernels, it will stay as is. All this code does is enables kernels
that do not have EFI table communication between them a way to do
kexec updates with reduced amount of data exchange.

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
