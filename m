Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18FFF18E87B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 12:57:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnDEHGCNPoj+qJ2cfCIjdFoKvpJK8DVVPPDSvDcbZq0=; b=J8oTiYx7cHRCEY
	foEE7TrYJ0v7ijgNrHck6+/ojYT8s1wjUZ579jXfZNgjEWaTmR8FMY/smkP4ipcX3QcJK2CYB2HTE
	APBPDFOnPCA3Xe5opX61umwHNQvVqzsl+GYGpXZ9iHgsIEEKl1LFO5k3kyfelCjEYfYqFRjfRNe3o
	8JFvePpMiz5wrfPPCcs25U/XrEevECHv3zQ+jNg+Ome0LlhxvzaKnePpKgRn10CHqc+pkqzeXfCgT
	r8eneYGp7kN6LrAldnIijoGssPV+T3O93SlsKIjIKkcPEoFQ63gWgyUeN00KkveNb+/jADfIzyt1J
	aMAS/vl5hWN8gnTjgpNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFzE3-0002Ji-UZ; Sun, 22 Mar 2020 11:57:07 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFzDw-0002JF-G9
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 11:57:01 +0000
Received: by mail-lj1-x243.google.com with SMTP id r22so4330385ljh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Mar 2020 04:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DbRYwMUrqVb6RpQV9MVUVt3sCTaYlomKRvCb8bCtXwo=;
 b=mbt5upTtWHygf6d1Laf5gYnnuc8c8FmHiuxKmLvq/dYwgnCtUhrzXijn7752zZb0kv
 9RJthUgNzWIqMrnQgpVrn0acaDhmWCHz93lwim+3RxjB9LDkDd6TYnI37alD0FwCLUYq
 qiM7P9mCsCKSB8TvI11gz3EbAPkXGNKIR8X6CHmab/5dJUUEhJi19o7m2d7gbdxVZLN1
 HlomTuNuVkNsfOoaUkL932B1B2pUjcgkjCGQMCu4BKch+euOq/zwWsSRClOaHX7udVhk
 J/z4cyds4t8ntFRhxFM7JIIYbmm+DbH2pAxyaPFhlcVOYBOiRitIPwamHnfrwvkX7wYG
 qLGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DbRYwMUrqVb6RpQV9MVUVt3sCTaYlomKRvCb8bCtXwo=;
 b=pb81GpS1SpHPGuw7Dz+1mPacIOVJ2ETQBBZAdUpbtf5yKrbiZckJICK54U2XPP5Ds8
 s4iUwx00ccOrhbMD2wpHw+kkSbZALE8VGZaP9X/dtT7t1uO4wjbK4ZHHK8NiN8HhXbhL
 +hgCM07sPLdRJiQjGiJ6ZtOO1GxN8+7Wn+DnyuK96p71/pxB4Em4HgFRcXPy2VE7qNqa
 ytjJlrFZxhg1zENb7DoeegwKMy8NfweB61AHGFPpF3W1LWEpWaOBydxv0IhMFPRD0lv/
 62hVUmThdCah1XXHw5sj3Mt9kMkGUOY+JMJnKeQpqqJQVN+q7XyeJ/5ItLfCqhkQQtA3
 Se1g==
X-Gm-Message-State: ANhLgQ3y2ybFwGnLVE8hamJcElq4HVHesLY7NmIung7EqTKN+v3CZyh0
 fGSA2NC2s4pW+lhhiSJX9WelM6p6/WsXue7kGkZzOg==
X-Google-Smtp-Source: ADFU+vuFSOqF1UXrvQI8QqnIpl58yiJdRlBP7M0g3QPmlD6adI/fv1Fmmb/M4WqWR3xrFhv+239mJJcQgqIDhptsV9o=
X-Received: by 2002:a2e:8ecf:: with SMTP id e15mr11178865ljl.223.1584878218621; 
 Sun, 22 Mar 2020 04:56:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200322112437.18070-1-linus.walleij@linaro.org>
 <CAP245DXiU9XUwP-h1CAnORG=a+NAOcZiY7RvkOsgRQSAhSGG4Q@mail.gmail.com>
In-Reply-To: <CAP245DXiU9XUwP-h1CAnORG=a+NAOcZiY7RvkOsgRQSAhSGG4Q@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 22 Mar 2020 12:56:47 +0100
Message-ID: <CACRpkdZzMsq6fYv3QiKi-FnnNivnyXj7oKzMrvt3XvN2-6WnDw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: Fix leftover entry-methods for PSCI
To: Amit Kucheria <amit.kucheria@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_045700_548964_CF12473B 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Fabio Estevam <festevam@gmail.com>,
 Chunyan Zhang <chunyan.zhang@unisoc.com>, soc@kernel.org,
 arm-soc <arm@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Shawn Guo <shawnguo@kernel.org>,
 Lists LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 22, 2020 at 12:49 PM Amit Kucheria <amit.kucheria@linaro.org> wrote:

> My patch went in, in 4.18.
>
> The FSL entry went in, in 4.20 and the spreadtrum one in 5.5.
>
> > Fixes: commit e9880240e4f4 ("arm64: dts: Fix various entry-method properties to reflect documentation")
>
> So only minor comment is that it isn't really a fix.

OK I'll resend a v2 without the Fixes and your reviewed-by.

> We've tried
> improving the text in the binding too but somehow people still get
> confused. Converting the binding to YAML and enforcing it seems to be
> the only course of action left now.

Since nothing in the kernel checks for entry-method right now, maybe
we could just add code to do that and warn in dmesg if entry-method
is set to anything else than "psci"?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
