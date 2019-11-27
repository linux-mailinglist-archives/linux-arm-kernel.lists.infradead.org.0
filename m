Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A0F10B42F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 18:13:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yV8UjDRHXkY+GRU9w0klUw1CwEJMn2357kRA5qoDrRc=; b=LrUnCi16m0H/sV
	e3IH2mM2vqirtTu3u7Uyj0AmBeozFSHjmF4JsJ4/j11t9ij59T/X4s6x+TCbObb/iWjHP2ZfEVFFL
	JNuGwHNeaGgOxmTZKlcLsFIeShr609DJul9Z/GpvmTwqWACxZI1SdJwhtaWWCfC7zwKBVj1hHOK4s
	ZJMEsDXmdIQZLY1xvcaA8023FT/5Ju8jYC3P6avakOmCAyQvjbF5Syj+eBLKBS+8CkvLmlpXqHmyI
	61M7ku5GstRURh23G15nkmsxeROR7z1IKSthhFoShb2AOxcPosh1VIecJbT+rOqWR6MTLis+bx3CM
	oggwISnCQRZwn7p/XEAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia0so-0005O8-Es; Wed, 27 Nov 2019 17:13:42 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia0si-0005N4-FZ
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 17:13:38 +0000
Received: by mail-ed1-x541.google.com with SMTP id e10so235304edv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 09:13:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=avbwI72EZ/UijnuZGSSoSC9YggMOVPWaFwJMxK6riZw=;
 b=jr9gJxmSQPb7Bj1DBwRNdZPRhmzt3zcOh776U79Aj1KoLk7VZjrppm/SOMSRGGbp5c
 p1XaJcFjws7wmiP8QdJXjCiKeXZGkBx4jqSfuNjk5XWpbS8/pLt2/OypTPnZpRW7rML2
 SsgFG2+xx28j8f42EQAh/yBk/leVmiClheJEXQA152z+RA0QBTn9Z+5nZhUpB39bm/dd
 FjqiQL/thqEGbY0p3Kd2yPu6WIFj5H7/da+9liGtltzOiOYT7fDTuHbpx/G6sgSNhaSX
 PdxJT7++0nqLEnbqtEwa3p5MEx0MITdbEXJb6AYy/l1nrbAT/LidVBkuD1XiPYJO9HIs
 eOqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=avbwI72EZ/UijnuZGSSoSC9YggMOVPWaFwJMxK6riZw=;
 b=KRQlvUf2FJPIdv6IJ6XIp4P9DQ4T3EtmS3QnQ3SjDhzeVSmJrgQm9fmaQuD0JGDgvp
 13aL05LtCMx2g2guSu03hfjmWHENn5sdYPbQJO+1iQU79jERDmHy/wFaQfN7F1SZuEdy
 JxmzWBvBhoo9Mvn2Qkuh/lnHCRTXo07sAIkhnbKZqZVNlh2wA6ptzqwMsLtMYbjzt5Av
 S+D1s9l2OCavPeZbbo8E4ekl6VMH3TLbabsy+ofojWZAdqj/c2pAc7nLCQbEqSQmRvxG
 OPlq4RM+JTxdVt8JKTxu+XGcjoC4CtIbRz7cTero3ufXXUB4++i4EVzTjEmDhWSsB+KI
 DwRg==
X-Gm-Message-State: APjAAAXmLwZSjkD1jru8W/h+FwxeZX8yeAOf+AgvYWgs3t4hQqbThebY
 k8bjBWc+WojBhdFqQu7A7FpC8+xqSOAFbxC3b2By1A==
X-Google-Smtp-Source: APXvYqyZqD0tAbB7ilB8c3qt9BESX6KvcTNCcWyh8K0d4RwfSXJa3D/ae359IAhZ5F4Vw7HUXyFo+QE2ejNz+5zwlYs=
X-Received: by 2002:a17:906:a2d0:: with SMTP id
 by16mr1819282ejb.322.1574874813251; 
 Wed, 27 Nov 2019 09:13:33 -0800 (PST)
MIME-Version: 1.0
References: <20191122022406.590141-1-pasha.tatashin@soleen.com>
 <20191122022406.590141-4-pasha.tatashin@soleen.com>
 <20191127151154.GC51937@lakrids.cambridge.arm.com>
 <CA+CK2bDDom_pwLC-ABwDw66ynyELH3f3NdjUEdhr1LYLkgWJvg@mail.gmail.com>
 <20191127160342.GF51937@lakrids.cambridge.arm.com>
 <CA+CK2bBszdMYbneQ1UiYxSndN8zmoVwbTVJ20NeajYPehT_X5Q@mail.gmail.com>
 <20191127170148.GG51937@lakrids.cambridge.arm.com>
In-Reply-To: <20191127170148.GG51937@lakrids.cambridge.arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 27 Nov 2019 12:13:22 -0500
Message-ID: <CA+CK2bByJJO+0_0H8sDOyWQ-igMvw8pJd_2FR1okX3EAr1r__A@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: remove the rest of asm-uaccess.h
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_091336_939490_90307DB8 
X-CRM114-Status: GOOD (  22.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Stefan Agner <stefan@agner.ch>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Will Deacon <will@kernel.org>,
 boris.ostrovsky@oracle.com, Sasha Levin <sashal@kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, James Morris <jmorris@namei.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 xen-devel@lists.xenproject.org, Vladimir Murzin <vladimir.murzin@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, alexios.zavras@intel.com,
 Thomas Gleixner <tglx@linutronix.de>, allison@lohutok.net, jgross@suse.com,
 steve.capper@arm.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>,
 info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 12:01 PM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Wed, Nov 27, 2019 at 11:09:35AM -0500, Pavel Tatashin wrote:
> > On Wed, Nov 27, 2019 at 11:03 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > >
> > > On Wed, Nov 27, 2019 at 10:31:54AM -0500, Pavel Tatashin wrote:
> > > > On Wed, Nov 27, 2019 at 10:12 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > > > >
> > > > > On Thu, Nov 21, 2019 at 09:24:06PM -0500, Pavel Tatashin wrote:
> > > > > > The __uaccess_ttbr0_disable and __uaccess_ttbr0_enable,
> > > > > > are the last two macros defined in asm-uaccess.h.
> > > > > >
> > > > > > Replace them with C wrappers and call C functions from
> > > > > > kernel_entry and kernel_exit.
> > > > >
> > > > > For now, please leave those as-is.
> > > > >
> > > > > I don't think we want to have out-of-line C wrappers in the middle of
> > > > > the entry assembly where we don't have a complete kernel environment.
> > > > > The use in entry code can also assume non-preemptibility, while the C
> > > > > functions have to explcitily disable that.
> > > >
> > > > I do not understand, if C function is called form non-preemptible
> > > > context it stays non-preemptible. kernel_exit already may call C
> > > > functions around the time __uaccess_ttbr0_enable is called (it may
> > > > call post_ttbr_update_workaround), and that C functions does not do
> > > > explicit preempt disable:
> > >
> > > Sorry, I meant that IRQs are disabled here.
> > >
> > > The C wrapper calls __uaccess_ttbr0_enable(), which calls
> > > local_irq_save() and local_irq_restore(). Those are pointless in the
> > > bowels of the entry code, and potentially expensive if IRQ prio masking
> > > is in use.
> > >
> > > I'd rather not add more out-of-line C code calls here right now as I'd
> > > prefer to factor out the logic to C in a better way.
> >
> > Ah, yes, this makes sense. I could certainly factor out C calls in a
> > better way, or is this something you want to work on?
>
> I'm hoping to do that as part of ongoing entry-deasm work, now that a
> lot of the prerequisite work was merged in v5.4.

OK, I will send new patches with what we agreed on, and your comments addressed.

>
> > Without removing these assembly macros I do not think we want to
> > address this suggestion from Kees Cook:
> > https://lore.kernel.org/lkml/CA+CK2bCBS2fKOTmTFm13iv3u5TBPwpoCsYeeP352DVE-gs9GJw@mail.gmail.com/
>
> In the mean time, we could add checks around addr_limit_user_check(),
> and in the context-switch path. I have some preparatory cleanup to allow
> for the context-switch check, which I'll send out at -rc1. That was what
> I used to detect the case you reported previously.

Sounds good.

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
