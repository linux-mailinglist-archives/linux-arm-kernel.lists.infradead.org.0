Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B32CA112EA0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 16:38:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6DUCBECg4jXbj2wmiCU0jbkLvNEfAh8aAA1noMFOw8=; b=IxhmHFYoZ1ZryW
	dsNT5il4/30dTHLWkaGpf6Q5qAnFLE1sH4zGB6LcB34XBlWNEhqik6rPYSpyY8JJuZ63JjyyBcGAy
	zMNkSNORp+kluAKw4Vg2Lses//E717YyfNJD16ftW22byFnpgT/g9HDkxs2QCsm7xMgMpGg6KHLvS
	CD2wpdJW6SsYDvSSALA/OPC4aM+IEsyj0GZV/Y+ntTIU53QyH769vsDeZOzmdra7EN5jLyhqQzpup
	LUpf1dXyWBptu1olvw5LC7fFEvoZWekooJS1DC9uKo36TSCKYp31emgU6W++GX3Q9o4fN3Iu0yT4e
	xaWGP62Lz6qpRNX/Idmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icWir-00062d-Sr; Wed, 04 Dec 2019 15:37:49 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icWii-00062E-9h
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 15:37:41 +0000
Received: by mail-ot1-x341.google.com with SMTP id x3so6650941oto.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 07:37:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Zsl/NYOHbe+5Z9l4Py0S0UhbStKwiCgjg78sah22X74=;
 b=De7wqYVNK/pvvWk9mSR7jFvEzZsynk6dJccpz3iNh+S9NEfYYXJZ2HgKfjEZv4EQYi
 wDRBS00PBoaVLUU0LiAuBWt5/YvRnLqEfJeH9P6vKapz84FBU72ZuyBN5c/30LTDzDCJ
 1gHb1/lXcIIjFcwApdj6h0OQhhOH6yDfw6AR+6qAYwgpxyz7P2Kmuh7t4o7KDDHqxuOJ
 G93q2q/HVYHQi6donkp56u7EfJlWbI2VVUz8TYV9bQmEggqxfHIaX48UF4xePDzSS9IK
 7Ox4iI5bfFXBmxtzlWtmOWlbZt86qRyYFoVWwqQILxhjR0CGqB3d7+OipTvbaxReczo1
 ftSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Zsl/NYOHbe+5Z9l4Py0S0UhbStKwiCgjg78sah22X74=;
 b=QiFGqoS7E6pFaofpOHjFZANUlYsbvUlJh99cq7aQ0rvj+Tn2DAX4YCLdhBSF6aTdxH
 p/47u9wyEDWnNMDVur5NilXs0h7BjoEtKmyfdEUvKpfi6rbTWhcAWfIKvlPLkob41sNH
 QGMnmZ21oH1VU2J9g9y9JSxuOpE6fFXnEGF4v6bAvvcO0uq+5uJgks7dePT3fJ1DM+kI
 XvuIncABluy2h3Taz+idEuVXoQsxf5tsAkr3/O9lnK5tpGY/AOdSVUGs82zOHA6UNqfv
 yINzis0HGbL0V0bK/G8mwtgRSkD8GkvhP0cJqxey6qEpXqMqm3L4XQq5idknV/LwKVms
 O18Q==
X-Gm-Message-State: APjAAAWfYaa6EUr6Rg67+HVsonglaq2+SojkAuXa9uvSLxLPVPEr1KTN
 hnDOo8lVv1RXmOSNN8e4xvMiMQtbqoJptaj7ycY=
X-Google-Smtp-Source: APXvYqwm/x9oQYj+1JqrNdG6tOLzfyWFpbaFv3VoCKTHKug5N7LCh4qvVQbuivSmaCiIIztxUB857mrUsxEcm+vS0oM=
X-Received: by 2002:a9d:624e:: with SMTP id i14mr2972023otk.371.1575473859624; 
 Wed, 04 Dec 2019 07:37:39 -0800 (PST)
MIME-Version: 1.0
References: <20190113021719.46457-1-samuel@sholland.org>
 <20190113021719.46457-2-samuel@sholland.org>
 <472c5450-1b60-6ac7-b242-805c2a2f3272@arm.com>
 <CA+E=qVfaBcUN5iB3kaK5gHyURpWt7ET6_js=sLiDg4PCDXXTYA@mail.gmail.com>
 <4b922079aeed04f31ff67b3e7fb78022@www.loen.fr>
In-Reply-To: <4b922079aeed04f31ff67b3e7fb78022@www.loen.fr>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Wed, 4 Dec 2019 07:37:13 -0800
Message-ID: <CA+E=qVc-BA_W8O1qpkKgg5pDax-Jbvmpc-TB7gWB7CfYAxXCXQ@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v3 1/2] arm64: arch_timer: Workaround
 for Allwinner A64 timer instability
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_073740_340710_8E769E3C 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Samuel Holland <samuel@sholland.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 4, 2019 at 4:21 AM Marc Zyngier <maz@kernel.org> wrote:
>
> [please note that my email address has changed]
>
> On 2019-12-04 04:18, Vasily Khoruzhick wrote:
>
> [...]
>
> > Unfortunately this patch doesn't completely eliminate the jumps.
> > There
> > have been reports from users who still saw 95y jump even with the
> > patch applied.
> >
> > Personally I've seen it once or twice on my Pine64-LTS.
> >
> > Looks like we need bigger hammer. Does anyone have any idea what it
> > could be?
>
> Which kernel version did you see this happening on?

I've seen it on 5.3

>          M.
> --
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
