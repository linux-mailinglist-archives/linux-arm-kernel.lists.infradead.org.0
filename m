Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57284129CC2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 03:30:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AUHJ7M3TvgTl1svo3f/QM718y7SxdI5vJA5y6OfmrT0=; b=A+aY4oygOj+h0g
	hP8Nal7fiyOPfoHlu/NxJmEl4+MLitwY1mMZzHkoN04l4Wf8gWHVFT7TCFWPdjK5WE2/+XZFQHMzR
	+ZxDPTeDf/8Aro8A2D/haps2OhJQcWLn+qgQUp4o1w7b7vxrtZG5fm7fuetSpFy93rmbJ5k+Y7opw
	yZztj8cJ+gG8gg92YGS8eSrWx2K1KDiozWcB3/V98xX+e3LnYiO5EG+nQnfzkPSJ9j9ZAxedZKm+B
	Vk+6B6tjTgvC+aKEo5yCXpp0c5vM4m4GM4AQStlGgo7BP8BoQB9bkeifP9KqwHd2uOh8tyB/y5MxP
	UyZJYr7To2oCDfwo0D2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijZxc-0002Xb-GY; Tue, 24 Dec 2019 02:30:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijZxK-0002Wx-0n
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 02:29:55 +0000
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 72DB0207FF
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Dec 2019 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577154593;
 bh=DSQS0uHBNC9Ui3z1SA4ieLxiBxYjVLA1pvOoujpbOvo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=mBOamR3e8+z/oxuQ1j6arsjUSXZzjlhMM4HvwMIBzxIH0PnwI3vD0y6J79ccnKo8X
 DVK+NzbOAuvhO9t9AREqK8/n+jmOBhUq+hrD4x5Lzu4meIgw/Aq56f9vXJtZCiBv6N
 w94bwVmE4Fl4guBclpw34hSD8o5Dpk5G3lj9oiXU=
Received: by mail-wr1-f51.google.com with SMTP id c14so18615897wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Dec 2019 18:29:53 -0800 (PST)
X-Gm-Message-State: APjAAAVSTqg4rRcZuZQIct7VpYrdB2mDwkUiUgkP+0HVO/XEBJF4NQkD
 E4ADDHBmkAh+7U1d8gWxfjapJwtmm/nl2SR/1zTW8A==
X-Google-Smtp-Source: APXvYqz5QXY27AstGyElWlUnUHM0Y/Cls6krR6JAY/F6G6Ra4+oArxsi2W6pHlVu1RWJHAU5CqdrqYSugVUavqgLJoc=
X-Received: by 2002:adf:eb09:: with SMTP id s9mr34152116wrn.61.1577154591966; 
 Mon, 23 Dec 2019 18:29:51 -0800 (PST)
MIME-Version: 1.0
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
 <d0f8dfb26c025d3e3eee1b5f610161ca19b942df.1577111367.git.christophe.leroy@c-s.fr>
In-Reply-To: <d0f8dfb26c025d3e3eee1b5f610161ca19b942df.1577111367.git.christophe.leroy@c-s.fr>
From: Andy Lutomirski <luto@kernel.org>
Date: Mon, 23 Dec 2019 18:29:39 -0800
X-Gmail-Original-Message-ID: <CALCETrWyek-xatdsUFbFvHzT+bps_bjtQoVq8MAFsS1rcZCtEA@mail.gmail.com>
Message-ID: <CALCETrWyek-xatdsUFbFvHzT+bps_bjtQoVq8MAFsS1rcZCtEA@mail.gmail.com>
Subject: Re: [RFC PATCH v2 05/10] lib: vdso: inline do_hres()
To: Christophe Leroy <christophe.leroy@c-s.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_182954_083907_41EAC572 
X-CRM114-Status: GOOD (  12.63  )
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, X86 ML <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Andrew Lutomirski <luto@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 23, 2019 at 6:31 AM Christophe Leroy
<christophe.leroy@c-s.fr> wrote:
>
> do_hres() is called from several places, so GCC doesn't inline
> it at first.
>
> do_hres() takes a struct __kernel_timespec * parameter for
> passing the result. In the 32 bits case, this parameter corresponds
> to a local var in the caller. In order to provide a pointer
> to this structure, the caller has to put it in its stack and
> do_hres() has to write the result in the stack. This is suboptimal,
> especially on RISC processor like powerpc.
>
> By making GCC inline the function, the struct __kernel_timespec
> remains a local var using registers, avoiding the need to write and
> read stack.
>
> The improvement is significant on powerpc.

I'm okay with it, mainly because I don't expect many workloads to have
more than one copy of the code hot at the same time.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
