Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A68511FD1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 18:12:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KKETn9BwdHUWyfGzZhUQ53Mc3wTqPd2mEtbYNAEVoCQ=; b=ny/PLjzsLtOzmL
	v0M0af7InuZZ0FC0xXTLOST5z/fYZAWoFgRsNAbIjMBnvRSkmp7+UbYa4JqMlp3V3rWqum3mu6nWW
	X/zARwDNhf182LluDfcStjflHSlGi3e2aKAp4QgJ6fhYmsKTZvT9UZMTdM1m8aXhyrAGo1n4i0hoR
	napqGAmvwCiNFiCap3t1ei2ZPSfseumF0oNBATRAUKTCXaJfQfe5avHXwL8ph1aeFRuRNfrh+JHo3
	wVz/FndvAHqTucMn1/+KweoTmES+14aHyZPB5YtoPQ1NwzUCwUv/yOppuabYRlxdxcaAKNEkIcNH0
	WUEJ1/stunHRO0ItqrQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMEKE-0004aw-4U; Thu, 02 May 2019 16:12:46 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMEK6-0004Zi-Ie
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 16:12:40 +0000
Received: by mail-lj1-x243.google.com with SMTP id z26so2726986ljj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 09:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tVCR90ukM60h/XwpKx8sUt1qsA8XF27L7aKaa1sc/2M=;
 b=g/64gIbp0B3X/vq/gXDgYMqciwD30QVCfUNcG9oypva2F607a/I6OwS5fBvheT4m1n
 2/2xkABKa/gsJeT/yaimePKHCCfdJVXcV/J2byJDcIenUWxBF0MxVk+tFCaPa2dwxj6G
 SWbYe5z0YlYLlNnnR4zFJW7iELpg6nRdbXb2Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tVCR90ukM60h/XwpKx8sUt1qsA8XF27L7aKaa1sc/2M=;
 b=V6mNmCQktYFsGfjvE1R+UyT8z1hR83TR1goQIhb+EcZ2qFPrqA9zMA7ygtvqxUQEuj
 abpw9XMpyc9WHoVDRik+O+bTxmOS8BHkP8WKgN8kL/Lm3zyvayj4TIaM0RB4GHX3JKdk
 w39FvJpBsm99MD2r2qyhWo2rKUG2VshrYd6P0KaM5QDrhtvIElOiUYydGcFejYN1j+lw
 lwfo+RZx4lPelRLDF5XhjqMI7onFoitdgQN0o5K0lgQCXSBf12HHXHYi/bekCxXUe/bN
 /na/+3/T/szVscZnpF8RayRS+m3Rt2QOA8ohfdv2dpUDQgjXTtBuLDA52kHDSO+j14Vx
 mhKw==
X-Gm-Message-State: APjAAAVuqKF5Sld/ZnevNYPJW2DsNSkPFIxm6yMnfRpHKJ9sXghn+Hmo
 xrKncJex4Y4Ts5OIjBqDTgEVz5ld35o=
X-Google-Smtp-Source: APXvYqyHorCzCJtQt5ib8wvC3SH6q/InbZ5fDsO3/jfkWsrh2/42y7vYZBYyBkGf54eRI07aIgQm1w==
X-Received: by 2002:a2e:9c0a:: with SMTP id s10mr2409059lji.162.1556813556384; 
 Thu, 02 May 2019 09:12:36 -0700 (PDT)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com.
 [209.85.208.177])
 by smtp.gmail.com with ESMTPSA id p19sm9412907lfc.48.2019.05.02.09.12.35
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 09:12:35 -0700 (PDT)
Received: by mail-lj1-f177.google.com with SMTP id z26so2726897ljj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 09:12:35 -0700 (PDT)
X-Received: by 2002:a2e:9a84:: with SMTP id p4mr1899422lji.22.1556813555043;
 Thu, 02 May 2019 09:12:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190429145159.GA29076@hc>
 <CAHk-=wjPqcPYkiWKFc=R3+18DXqEhV+Nfbo=JWa32Xp8Nze67g@mail.gmail.com>
 <20190502082741.GE13955@hc>
In-Reply-To: <20190502082741.GE13955@hc>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 2 May 2019 09:12:18 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjmtMrxC1nSEHarBn8bW+hNXGv=2YeAWmTw1o54V8GKWA@mail.gmail.com>
Message-ID: <CAHk-=wjmtMrxC1nSEHarBn8bW+hNXGv=2YeAWmTw1o54V8GKWA@mail.gmail.com>
Subject: Re: [RFC] Disable lockref on arm64
To: Jan Glauber <jglauber@marvell.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_091238_619887_A8FDA472 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 1:27 AM Jan Glauber <jglauber@marvell.com> wrote:
>
> I'll see how x86 runs the same testcase, I thought that playing
> cacheline ping-pong is not the optimal use case for any CPU.

Oh, ping-pong is always bad.

But from past experience, x86 tends to be able to always do tight a
cmpxchg loop without failing more than a once or twice, which is all
you need for things like this.

And it's "easy" to do in hardware on a CPU: all you need to do is
guarantee that when you have a cmpxchg loop, the cacheline is sticky
enough that it stays around at the local CPU for the duration of one
loop entry (ie from one cmpxchg to the next).

Obviously you can do that wrong too, and make cachelines *too* sticky,
and then you get fairness issues.

But it really sounds like what happens for your ThunderX2 case, the
different CPU's steal each others cachelines so quickly that even when
you get the cacheline, you don't then get to update it.

Does ThunderX2 do LSE atomics? Are the acquire/release versions really
slow, perhaps, and more or less serializing (maybe it does the
"release" logic even when the store _fails_?), so that doing two
back-to-back cmpxchg ends up taking the core a "long" time, so that
the cache subsystem then steals it easily in between cmpxchg's in a
loop? Does the L1 cache maybe have no way to keep a line around from
one cmpxchg to the next?

This is (one example) where having a CPU and an interconnect that
works together matters.  And yes, it probably needs a few generations
of hardware tuning where people see problems and fix them.

                 Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
