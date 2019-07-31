Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF077C80A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:01:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oyyFGwaiVP6YPhCjlUu0TqiWYiD9JRaGieLn9MF+hA4=; b=ZDcv/P1jWSWxPM
	7IHSza0qen+GiAQppp3jUNv+sMEpA2XUdln7ejI32N89enDMogyev/kcls0b6GFmzOnzOwH9xi4wu
	z4uCq/Q6noATsV7dUZkxByWZvkyBDRnSTK9/bmYQFFv+TjTXwTtWGtES1ZMATdC4W+tz49J2Rnkqu
	7ZaBGICCbU+r++ZuMU/XbGJ668/6YZSWFYXWLc/v04PyCYM75ILTX50vlqcY+WRxB49R+GBbsq0Xp
	q/COQYvFZibeQp3IgNX8Hlpwqo+LRcr2FPgWzC210hZ7I/6csgZmdp5kbGn0Kcqhew7fcjtMjnW0F
	GKQrj0hFPxCtyTuho/mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsr2e-0002v9-9C; Wed, 31 Jul 2019 16:01:28 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsr2V-0002tb-KZ
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 16:01:20 +0000
Received: by mail-ed1-x535.google.com with SMTP id e3so66185935edr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 09:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OOHNaf/9zGja9offVGntbMakWJQ+ZGc77yJFGDwH+JY=;
 b=PNBn1vWg4YbSeIowQjqpM/X23ksXLc6f3T3CgQCwNd4mt2cTyo7ZzHCzFOd5K1E4Iy
 v4pzf31+LzNF9jhZ74VoLjDAEniolM4dYJ+UpfPPdEAH5TbYVVzHXfBlV66rIU0gUfPM
 zXZCAUoX/jNc4sONQMGRGcYLTOFVAvx6f2ztMskDsa9mZz05W288TyU311SRl1/Qk+jN
 o3QsrCKdgzFmQjIBIJerB/AjhVzS9O5yeQK/EnRHuNWXFMBWK65A+iIVESBIMYXjk92a
 E3loxdrE0PaHqIuCD95gAksQsGy7FbeKWPF1CvNgm1zmfkOVtwlh5lRNyxxrsPzpkM4r
 NEqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OOHNaf/9zGja9offVGntbMakWJQ+ZGc77yJFGDwH+JY=;
 b=g8QdcKTz8VxuE/bIUfKuLEkCB934rH0aBMy8vlokfOg6XW5JsMdjcoEA5VQVflYwaU
 tof3fWfNMEwnYADDGTQmgB4bngJD3WAlAH5qZ9KZzfSCchaEqgocVsNLS9B1NalQdWfU
 B15m9PGOz4xayhRhwCDrPg6RdGoPfcnCfzdaxke16SbT/hG0RTHNMeYufnytCbJ8fF72
 IqeUEb6MQyuMP9+dBCfC2sKKxXIgAY6YQGYwOXS9jc3c7yaWAq9tnNELj4unNPX+//fr
 0BbtutMDnysSSJ2IDMmzR/1nl+aoQrcQpM+GixeMGOgUg749AJkROIaGmvHzK4zAbSuk
 Gx8w==
X-Gm-Message-State: APjAAAUVSt42zw2QU1nDiYv/i/Hl+GvL0AdHxVNkqdJKmLs7DPtND5kP
 Ls6Y4tZHv9mha3BWWCThXyFUu5jf5KU8ix4c/wY=
X-Google-Smtp-Source: APXvYqwueLVfu4t2A7GiLdjDq8PdZifweEvG9mIYGEKN2rj55OFqd4HfaufMCDSjY0DZ2kfK5Vn500PtEux8jGZKWu8=
X-Received: by 2002:a17:906:9447:: with SMTP id
 z7mr29744336ejx.165.1564588877876; 
 Wed, 31 Jul 2019 09:01:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190731153857.4045-1-pasha.tatashin@soleen.com>
 <20190731153857.4045-9-pasha.tatashin@soleen.com>
 <20190731155042.GF39768@lakrids.cambridge.arm.com>
In-Reply-To: <20190731155042.GF39768@lakrids.cambridge.arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 31 Jul 2019 12:01:07 -0400
Message-ID: <CA+CK2bCBxff=ZcCMw196idR-1uvryACdzREebqrZeJ2JPwDNFw@mail.gmail.com>
Subject: Re: [RFC v2 8/8] arm64, kexec: enable MMU during kexec relocation
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_090119_672376_F2871263 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:535 listed in]
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
Cc: Sasha Levin <sashal@kernel.org>, Vladimir Murzin <vladimir.murzin@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 James Morse <james.morse@arm.com>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> For various reasons, one cannot safely use Set/Way operations in
> portable code. They only make sense for low-level platform-specific
> firmware performing power management operations.
>
> If you need to perform D-cache maintenance, you must use the VA
> operations to do so.

Hi Mark,

I see, thank you for letting me know. I will do d-cache flushing by VA
in the next iteration. First I need to root cause/fix the bug
described in the cover letter.

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
