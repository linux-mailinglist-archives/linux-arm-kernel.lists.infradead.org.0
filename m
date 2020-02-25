Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7D116EC5A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:19:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SuBqATEUzCGx1QZR6ACnfPKGi1PfPc23XpDyVXpLeWk=; b=YRydaSp7jFUiiO
	e+2pF8W461WBkjJKSIHqCQr7vttVS4/vs5QXJjPPdG0RVW3tqJTPImiB/dlFRdJ0EVi+JyE3Xj2nX
	guf3noSjf5NZvH/xL6wQ9O4tIjNBhOKv+6MDqJ0hCh50oXh27LvIL4HeIYn52ts7b2bxQvXaRE//Z
	YSoNLiVmYl8Kd0owayplfksCfc0Sxj94a3LPLBr9V2faOMmhEWtR3IhRP58Lfc/n/d8fH5jPffbk5
	XkRJFEQ/smkl6TGwAWLgmeOvuIVBkQjNYtrEmdmioNZIKNEOBRR4HAESXFgKbETbEryhz/nmaOsem
	OWqEopSk1IRYtB/ERQYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6dr8-0000sO-0V; Tue, 25 Feb 2020 17:18:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6dqy-0000rq-DY
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 17:18:41 +0000
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6D6BE20CC7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 17:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582651119;
 bh=+F4U+sOep1GUuMewVSxeKmkBJjpEiPlWvavN4NfHTHU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Kru2iniyKJHsWA+T8AbmkDlWGZy/SsNdIrWrlIx4x5YceVZAiApOq0pbfSafk//tE
 RsrjP32S9Ugn9DcNptAU53mw+SmZQH+UQh9S8x6fYgc3yaiAfzDyQwgcC0L8jqCVDu
 alpc0kCIuTtj3pLnx6jm/x11nWtVqjqyUWp3Mh+A=
Received: by mail-wr1-f50.google.com with SMTP id t3so15674625wru.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 09:18:39 -0800 (PST)
X-Gm-Message-State: APjAAAW8I9cdbEM52vAGHh0XmGeTYMdxEf5IN5JHVeIQtfOgBfYs4Jkm
 syNpnZRhjAa1OnxFZOrxiWasBZjW86jhB71e6go1/g==
X-Google-Smtp-Source: APXvYqzYe231PioAseymuBII5pEJ4PmKcp/FnPlpetDo58wKXzoTddejVCBAiPi7eocYSe9R4qFUdAtU8Ed+ufBj7Dk=
X-Received: by 2002:adf:a411:: with SMTP id d17mr203784wra.126.1582651117870; 
 Tue, 25 Feb 2020 09:18:37 -0800 (PST)
MIME-Version: 1.0
References: <20200224121733.2202-1-ardb@kernel.org>
 <CACRpkda5VFzMHE483MPj86VN7uU7w4bNibY=ZeLUHyED=JD7Cw@mail.gmail.com>
In-Reply-To: <CACRpkda5VFzMHE483MPj86VN7uU7w4bNibY=ZeLUHyED=JD7Cw@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 25 Feb 2020 18:18:26 +0100
X-Gmail-Original-Message-ID: <CAKv+Gu8MOZHFLw-Of5yK15Q1z9gpOmdQNmYF405XRAkeiCoXDw@mail.gmail.com>
Message-ID: <CAKv+Gu8MOZHFLw-Of5yK15Q1z9gpOmdQNmYF405XRAkeiCoXDw@mail.gmail.com>
Subject: Re: [PATCH v3 0/5] ARM: decompressor: use by-VA cache maintenance for
 v7 cores
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_091840_484385_63CA2669 
X-CRM114-Status: GOOD (  19.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Nicolas Pitre <nico@fluxnic.net>,
 Tony Lindgren <tony@atomide.com>, Marc Zyngier <maz@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 25 Feb 2020 at 16:48, Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Mon, Feb 24, 2020 at 1:17 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> > While making changes to the EFI stub startup code, I noticed that we are
> > still doing set/way maintenance on the caches when booting on v7 cores.
> > This works today on VMs by virtue of the fact that KVM traps set/way ops
> > and cleans the whole address space by VA on behalf of the guest, and on
> > most v7 hardware, the set/way ops are in fact sufficient when only one
> > core is running, as there usually is no system cache. But on systems
> > like SynQuacer, for which 32-bit firmware is available, the current cache
> > maintenance only pushes the data out to the L3 system cache, where it
> > is not visible to the CPU once it turns the MMU and caches off.
> >
> > So instead, switch to the by-VA cache maintenance that the architecture
> > requires for v7 and later (and ARM1176, as a side effect).
>
> I took this v3 patch set for a ride on some ARMv7 and ARMv6
> (hardware) boards using zImage:s so the compressed path
> should be exercised:
>
> - Ux500 (ARMv7 Cortex A9 x 2) works like a charm
> - RealView PB11MPCore (ARM1176 x 4 MPCore) works like a charm
>
> Tested-by: Linus Walleij <linus.walleij@linaro.org>
>
> I can do more thorough tests with more boards if needed.
>

Thanks Linus. Do you happen to have any boards that boot with appended DTB?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
