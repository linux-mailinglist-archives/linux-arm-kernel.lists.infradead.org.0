Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F4913FA77
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 21:21:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oX8jx6ILjXYgfi4NoTtEMkjSE33SAk89z7W3InSzb/k=; b=QY1hn/89uoKIUR
	94mvCXWAjNlEbKNtTS7J+QR9ALf1fq0lEIynhPHJCUMadeI2TiYG76SP/325ZMd+Sbwb0vh+WdL0O
	T+smJ/kddJwIJXvOobE0TT3ou4IknyAU0cDelyZaEm1yCJFUSYRDBMnnStGa695p3I3lPsmN0txYx
	WPsC68d7WmHzMQz93aGTSNojqbVvdbuAqoZW+wWO1ofaHcUoCaUhD0bVbpV0DSVvSPUhTOdnmtRnN
	vqPqqheq7IUsdM9Qk+3lh/33fiPhcD7pRdv3I/CNjUWfuy23g+mhd1zm12IlXGjIVXF7eRLl9nF1b
	ziS7TZKWJEzUaEwrQHlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isBdy-0001Ch-16; Thu, 16 Jan 2020 20:21:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isBdh-0001BZ-9D
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 20:21:17 +0000
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AEEDE2073A
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 20:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579206073;
 bh=OJ3J83vIabY7xpZcvf2DhJwhjwaTMS+skFpIApuBtEg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JwJh0aadu+1koOsCzuKbeJgCqbsIVa6wXIh8eamq0w+FvzAqXxq1gzv8bKewX5JJr
 0LAd9SvjVMiaRKM5KNjw31n84OCJ2j4cgsYpXVB0SkUt2m3i7hsGJGrA4rHRu2s8jX
 GTY3J7+SCPPk/KJcvWhkGBpCaGlX6oQ/4joEhUUo=
Received: by mail-wr1-f47.google.com with SMTP id g17so20480122wro.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 12:21:12 -0800 (PST)
X-Gm-Message-State: APjAAAV5uF2qJ0KTsJbYjcp1uvqXUNfxIInOv4tq/+m4M3ulvX5dRc+Y
 17XVqhUOcIZLQCBOiNi8wU6NsmycokNCHqCU2ZgmWA==
X-Google-Smtp-Source: APXvYqyJFUWBWMkFpVuosDSd8/lQDbzy6zF5xwHRHcZ1pdoSXL/YmNp4uOFO1NJDoLptUYmOV9mv1qxrQ7fzMgsykOE=
X-Received: by 2002:adf:8041:: with SMTP id 59mr4939370wrk.257.1579206071239; 
 Thu, 16 Jan 2020 12:21:11 -0800 (PST)
MIME-Version: 1.0
References: <cover.1579196675.git.christophe.leroy@c-s.fr>
 <c8ce9baaef0dc7273e4bcc31f353b17b655113d1.1579196675.git.christophe.leroy@c-s.fr>
 <CALCETrWJcB9=MuSw5yx6arcb_np=E=awTyLRSi=r8BJySf_aXw@mail.gmail.com>
 <877e1rfa40.fsf@nanos.tec.linutronix.de>
In-Reply-To: <877e1rfa40.fsf@nanos.tec.linutronix.de>
From: Andy Lutomirski <luto@kernel.org>
Date: Thu, 16 Jan 2020 12:20:59 -0800
X-Gmail-Original-Message-ID: <CALCETrX5B0SEJN2WG7rzuzbGhWa_dEwVVpMu6deXof3H+K_LdQ@mail.gmail.com>
Message-ID: <CALCETrX5B0SEJN2WG7rzuzbGhWa_dEwVVpMu6deXof3H+K_LdQ@mail.gmail.com>
Subject: Re: [RFC PATCH v4 10/11] lib: vdso: Allow arches to override the ns
 shift operation
To: Thomas Gleixner <tglx@linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_122113_341998_ED2EC1EE 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, nathanl@linux.ibm.com,
 Arnd Bergmann <arnd@arndb.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, X86 ML <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Andrew Lutomirski <luto@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 11:57 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> Andy Lutomirski <luto@kernel.org> writes:
> > On Thu, Jan 16, 2020 at 9:58 AM Christophe Leroy
> >
> > Would mul_u64_u64_shr() be a good alternative?  Could we adjust it to
> > assume the shift is less than 32?  That function exists to benefit
> > 32-bit arches.
>
> We'd want mul_u64_u32_shr() for this. The rules for mult and shift are:
>

That's what I meant to type...

>      1 <= mult <= U32_MAX
>
>      1 <= shift <= 32
>
> If we want to enforce a shift < 32 we need to limit that conditionally
> in the calculation/registration function.
>
> Thanks,
>
>         tglx
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
