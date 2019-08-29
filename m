Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 175EAA1EE8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 17:24:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jCq/eji1ztfKwVj5TKYy4Qog0oHx4yOVdI/tfueNEic=; b=aojDnzvKnRV1Ly
	fq3hAKkI/Y2xM3lOg8OucCWayD87ESuc/XdPnVDDOI7/4XIFttqzXMYylE0QT6k07HZkHghALDBnJ
	UJ8Az1gaVvkomqoI5OiMKQb9y1PXyhe3Wi1x2vYyAprMDRfwm3bncvhNSpclWrITBNsCy+P0nw5Yw
	oUdDJbSFILoOmmxtnjAy+bX/k6AkliXAxsCVlRLFZmiewDkGNuePutmsQyN1qeK7N0tfVQ34gvP+F
	bOmmUbwZl40KoasIPx6PvK0CEBd7YLD30ggFROqlEvHCeB4PE75PeeVbhMVVUC9K5Bs6r947dneJC
	97OIYqDUpAhauZKVC3aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3MHQ-0007M0-V1; Thu, 29 Aug 2019 15:24:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3MGj-0007Km-SC
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 15:23:27 +0000
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
 [209.85.128.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B5C9522CED
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 15:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567092205;
 bh=2+HFlzM/yfynG5ANvTwsYTNcTosDJEfLB1NO1x5eKc8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=GAVnAPkSxjpWAZC93k6hMInjPRKhvc39VTMjooTTdWO7dn7yisl64tavG1j2Q2ZLU
 MPrSp8U6Vp6wzEg8iWg3R11+R4lOJYRZ6GR2hzR0ihp2fXafPxntv2PlfPsUBCso/C
 z+0HR98BCFWc7g/gTOZ9HLJZmXNUr9gddpHfPWcA=
Received: by mail-wm1-f54.google.com with SMTP id n2so2900244wmk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 08:23:24 -0700 (PDT)
X-Gm-Message-State: APjAAAUI6evSkUN3cm6D2b5mnZywpgDqLb6o/hJGHA2C4zrVL1aGvcxS
 iR+QBFPIVEUqwcE82zhGiiPE4gWvUvLObBnBnh/3SQ==
X-Google-Smtp-Source: APXvYqxvavrhFMLKkvBENomgDKP8QLeedIChXt62FYtW3S9te9FAf4UqqaK8w3TWd/JOSNU9JURf6QE1EcsgN2GtvFA=
X-Received: by 2002:a05:600c:22d7:: with SMTP id
 23mr12797740wmg.0.1567092203251; 
 Thu, 29 Aug 2019 08:23:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190829111843.41003-1-vincenzo.frascino@arm.com>
 <20190829111843.41003-3-vincenzo.frascino@arm.com>
In-Reply-To: <20190829111843.41003-3-vincenzo.frascino@arm.com>
From: Andy Lutomirski <luto@kernel.org>
Date: Thu, 29 Aug 2019 08:23:11 -0700
X-Gmail-Original-Message-ID: <CALCETrWNbMhYwpsKtutCTW4M7rMmOF0YUy-k1QgGEpY-Gd1xQw@mail.gmail.com>
Message-ID: <CALCETrWNbMhYwpsKtutCTW4M7rMmOF0YUy-k1QgGEpY-Gd1xQw@mail.gmail.com>
Subject: Re: [PATCH 2/7] lib: vdso: Build 32 bit specific functions in the
 right context
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_082326_163849_A4953062 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 linux-mips@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 Andrew Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Mark Salyzyn <salyzyn@android.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 4:19 AM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
>
> clock_gettime32 and clock_getres_time32 should be compiled only with a
> 32 bit vdso library.
>
> Exclude these symbols when BUILD_VDSO32 is not defined.

Reviewed-by: Andy Lutomirski <luto@kernel.org>

BTW, this is a great patch: it's either correct or it won't build.  I
like patches like that.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
