Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B35C27D6F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:10:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p9189zQdDPNm9auu33GnUwWloIPEk1HdziU1ArQj8XQ=; b=OeboChWf0Lh/sD
	5YVCEO01wxhpZyK0bPHDm8BBWon5QEeMd9WL4JUn6HPzdkSMRFFNZT26CYvdhbX7/mCFBgI71ErHR
	O+9oVg3GCEyjg9thlsTa+4jreAdjuhqTe9hMKg8U+jfF89ZuEwGHX79l+E/RyLs3HGpu1M4DedrnQ
	z0d6tb6bx+Z7WpzX11dBUZk0uUj4+DLldvjlWTf5YN1UK/GLn7jHR/UFguPu8RkDRU8J0U3TDRZAB
	MMsrhyPnYziKfXMmMP0dV7zn0aCPn8HCK6bgDn6jNcJkqmMEFCWJdnxpiMgfmPIt79rZvx4x1D4nK
	3JNL3U0EPjDNRhm5fhMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6A2-0000I4-T3; Thu, 01 Aug 2019 08:10:06 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht69s-0000Hh-DB
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:09:58 +0000
Received: by mail-lj1-x232.google.com with SMTP id m8so34838261lji.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V3cMTTlXb/H31ES+ApohzWwI4E/M9bcmUqwTjpOHFzI=;
 b=XHof0t+TKEjrJsieOojE1FcUDglxnl2Oa0+A5zm+BuIim1ehzwuqfSib23r2kstzmh
 wiu+Tea/quKf1kw22avaK0W8xtqUPPiMk45B3R10SIJoP3sfodu0det1Kv/8487zwZy7
 4OVvyXOD8cBTK+ltgiO71qA0dJnmD8IZO4b2axLAe2PUJjThRUEsMRw2MoaJQ3mNKSZS
 Rf247w1nwgkwZMDsVP1d7VGoHSgkjXVqAExYxIJDc3CUqDpnK8wbybFT7v1lMdhUanrI
 WtbEyQqOPQowbHnvleFCH+LbCDFruJTlbQqbRreFvk2bzyJKZogmLEzeSKYI05+yymHa
 b4qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V3cMTTlXb/H31ES+ApohzWwI4E/M9bcmUqwTjpOHFzI=;
 b=dXT9ETYVjTM8r5TOWK1ofdibqCbE7yodjMwn1eEg3FHsit7V7XTPGJl5LGwxB9YjIZ
 87OA8vhLK4vsLH74L+31xuPMO9LvH3xfTCOha8+Xc5l+o+zciayCZnR3yJrzacHxizhn
 Ebj9epwhVLZkMQKpiH5wJEa9o7ZpnTvG09RnN08XiNRiirqg/waN4bcwyGQ2zKF4fYq1
 BN9vyFlWXXxs585hk+Ha1JTAOa5jp4jsriYdtmyXir5I7YXeoIpmfiNgB91HcInER2W2
 1D8lzh56iQVn/VWDt8DVa/8IunZWVwo7NfwdVg1953wLwhSOE40Zs6eT5udbIOIVomlv
 22Vw==
X-Gm-Message-State: APjAAAWVyJLusPwHgCRDyFDTx7rLpO1p6E/eHeDhNxhFu553nTdUPOrF
 VGu67icZPs+0M2rCN92Cz3fLdkEqHRknanlDbiZuvg==
X-Google-Smtp-Source: APXvYqyYOVfw3ze0/p6jXRhRamBneUbfk32W1EqhiWm2hbbjWA/Z8UarDwl0NtKqVNCp4NHxbVkkLqpPP8e9AulEuk0=
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr5380088ljs.54.1564646994391; 
 Thu, 01 Aug 2019 01:09:54 -0700 (PDT)
MIME-Version: 1.0
References: <5d403574.1c69fb81.14163.65d3@mx.google.com>
 <20190730134115.GE4264@sirena.org.uk>
 <CACRpkdYevQiwW8iED8_qBo5yCcj5yCGrM76Lu3MyrU6Vy4HoNg@mail.gmail.com>
 <5d41b01a.1c69fb81.84578.a0bc@mx.google.com>
 <cbbe381e-a154-ced1-fbcb-9db2135e4e5b@codeaurora.org>
 <c2e5cd69-2f95-fc47-4541-17a1d744f003@kernel.org>
In-Reply-To: <c2e5cd69-2f95-fc47-4541-17a1d744f003@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 1 Aug 2019 10:09:42 +0200
Message-ID: <CACRpkdbpBnO4KgpjYReafWKKoq0AX5kAb99tCC9LXE0_7sW7Jg@mail.gmail.com>
Subject: Re: next/master boot: 265 boots: 17 failed, 184 passed with 64
 offline (next-20190730)
To: Timur Tabi <timur@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_010956_690565_7A702367 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:232 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kernel Build Reports Mailman List <kernel-build-reports@lists.linaro.org>,
 Jeffrey Hugo <jhugo@codeaurora.org>, Lina Iyer <ilina@codeaurora.org>,
 Stephen Boyd <swboyd@chromium.org>, Mark Brown <broonie@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 1, 2019 at 5:49 AM Timur Tabi <timur@kernel.org> wrote:
> On 7/31/19 12:58 PM, Jeffrey Hugo wrote:
> >>>
> >>> Timur/Stephen: any ideas?
> >
> > Timur's CAF account is no longer valid, I added his @kernel one.
>
> Delete everything specific to the QDF2400.

It appears Mark is still using it in his test farm, and now its sole
role is finding bugs in my code. Which it did! With so much elegance
that we could fix it up quickly.

> Qualcomm has made it very clear that they have no interest in developing
> ARM server chips.  No QDF2400 system ever made it to official production.

That's sad. I remember we had lots of discussions around this at the
time. The ACPI code base and quirks we added is however used in
other Qualcomm-based machines now (what Lee is doing), so the effort
is not wasted at all.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
