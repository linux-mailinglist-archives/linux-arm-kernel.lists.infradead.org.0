Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6854D29DD1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 20:14:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/2iTlSSoWklu5Axsyi3NYb+w/Q/bLDM6/8Z3KQeMkI=; b=U24T23mK9QozMw
	Key3KnnpnHg4/uy/B40t8rso7THvWwJFU9BRNr1HHYCzNXKscUUpr9tfS7VfG7mLL7cUqtVhB64Yf
	KJVG2PXtsoayOYxrmF2BZP3qG1UJPU2NkPz9xDjOtaYS8MNtVRV39JOdRYCjFZhcarrAxvayFvZ7/
	uT4jWqy67Z+xEiY2+krg1jIHZxeSdYh6iQcSJVb3DaNKKU0HhkQhBNqwYdllo1OuTrQW7PGcG3+Gg
	z6ysRkED49PZbFRxdtsLf1SwFRBBI82rOe1zCydCv6L2FXLJ468/f3PbGsRyljR9S0j7lRuEx/Gp2
	Rm5VG4sKQHbfGXCumBNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUEi7-0001ou-0L; Fri, 24 May 2019 18:14:31 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUEhy-0001o6-7k
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 18:14:23 +0000
Received: by mail-lj1-x234.google.com with SMTP id h19so1071785ljj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 11:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bIjvbQLlIrvH0GkOrRU/ujQeMT7aIpjmBN8uZ5WVxIs=;
 b=gINgXP+G8oc/A47aczfcZ3q8Xw/DOlT3ExOsPCRSvhzO5Hx1kKfI0jnLCCsZ70oryh
 K3Zbnh7yXImgAN2CawESNUxJYm++7llqA8GQ4i0/Fla/GnTeNrREJ84KnXop8G3eB3BW
 28GEEEzt4NWKXsuTLK6vHm2DcD9FVDAQ4iQiU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bIjvbQLlIrvH0GkOrRU/ujQeMT7aIpjmBN8uZ5WVxIs=;
 b=Kv4NyOGHFc9mma0qcKjg7bpJ0dO1ylmgFSD8lt2Isbmj8ZXKYdin1RqIArg3z6ETod
 q/FsX+R9JQC/8wT6n30W4OtfFYCei3GGCiDHcrU7KLSuW+oid23toxBi83NEiuo4BmgN
 VuCq56YbIHMikA6GhwOXcsnP4mBc2zkoItejV8yf02VSpeKIW2Zra+IsEz1OaZAQCcA9
 lqRFHSZUN+mJQQerN5Hl0ZFMuPYJ0ZYWPTcFZUxU374xiOPLxNvegywO7SE7LPPUJ76D
 XqFT9oa0G8wbFHWtNFbjNDZxli/d4l4VFGy1GUwxYuRDyEQ7LjzC+uVnngHczFA7OUTl
 mrxw==
X-Gm-Message-State: APjAAAUzYFEFIk+5kWwlk/dh0gJJ4f63zGurF7r3HE9CIoF3hw9SLkTE
 oWlSxeBgv7HIyG9vGCKlYBzMr3QLHWo=
X-Google-Smtp-Source: APXvYqwGa4/UXeLiL/39o2rnQhczI1gdO+IdfHFL2QhD3cNCrDVwmWwwG5Xg7R8aZ/5euBKk7YiSng==
X-Received: by 2002:a2e:6c01:: with SMTP id h1mr27459759ljc.103.1558721659088; 
 Fri, 24 May 2019 11:14:19 -0700 (PDT)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com.
 [209.85.208.170])
 by smtp.gmail.com with ESMTPSA id m24sm711287lfl.41.2019.05.24.11.14.18
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 11:14:18 -0700 (PDT)
Received: by mail-lj1-f170.google.com with SMTP id j24so9479257ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 11:14:18 -0700 (PDT)
X-Received: by 2002:a2e:9ad1:: with SMTP id p17mr18691595ljj.147.1558721657957; 
 Fri, 24 May 2019 11:14:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190524174357.GC9120@fuggles.cambridge.arm.com>
In-Reply-To: <20190524174357.GC9120@fuggles.cambridge.arm.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 24 May 2019 11:14:02 -0700
X-Gmail-Original-Message-ID: <CAHk-=wijeJ5OjswsUkm0Fns=0kd7kgRo98uPsJE3HQfwP5mBRA@mail.gmail.com>
Message-ID: <CAHk-=wijeJ5OjswsUkm0Fns=0kd7kgRo98uPsJE3HQfwP5mBRA@mail.gmail.com>
Subject: Re: [GIT PULL] arm64: Second round of fixes for -rc2
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_111422_280875_F302778A 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:234 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Only tangentially relevant to this pull request:

On Fri, May 24, 2019 at 10:44 AM Will Deacon <will.deacon@arm.com> wrote:
>
> - Add workaround for Cortex-A76 CPU erratum #1463225
> - Handle Cortex-A76/Neoverse-N1 erratum #1418040 w/ existing workaround

could you perhaps talk to somebody inside ARM about making the errata
documentation publicly available?

I'm not sure why it seems to want an account at arm.com, and as a
result some pretty fundamental development tools ("let me google
that") don't work.

                 Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
