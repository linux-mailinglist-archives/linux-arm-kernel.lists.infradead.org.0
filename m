Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C571A6A6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 May 2019 06:28:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVgY4AmsYE7aNbqBvXgZ2vzfSkrRGcOQ5aK0TjrDhWU=; b=oXp0GQg2BHx+Ap
	PYhbjA7gN0rxtZo8/6j2/eK0chQ6Ly9caVQpUA4KQGlT8XbGHJUhLYR89U6OwxY3GoLvSz7XvL12d
	ePvCyVa/y2pj5Kq4eHz2+yGT3GlTi//9gRq/hlOUad9cnR00bbWzAGyZVkLP8q9JlUD50WnjZ175V
	MFCHGM22LZ9sj9xScGrYmpM18sijexZp8CoiU/pmxyMiky9WdsEkWzY6FWVJWa97++kcqr2BO/oWK
	YFA8PEMiz/bhKa1GR5UVpR8EWtJ8QRSRyaeWeW4XJjRv2rouSnPVpj6IRS8WAsM1CaM0KSEQhE9wU
	ZxzGf9+6mnERXBRKiQPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPJcs-0000IW-86; Sat, 11 May 2019 04:28:46 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPJcl-0000I0-JS
 for linux-arm-kernel@lists.infradead.org; Sat, 11 May 2019 04:28:41 +0000
Received: by mail-pf1-x442.google.com with SMTP id 13so4255580pfw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 21:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references:from
 :subject:cc:to:message-id:user-agent:date;
 bh=hRMart1iNsOfZ4XtJXaVBFmcLibgJ1Ww0Q9rcJYqncQ=;
 b=mxuU3lqGlXDteyUl0MMAp2DhltFQ/CtjpqvD8F3YkxvLDZN/zIoabjRQTvV8rcF69a
 usUWAH0yKi00jc2+uaHYCKIiaqiQYAF/4KaUPycf00WltUiTeOeYCuXY3kZKfQakuncV
 /SMTyG83pJ0UjEEsoZB5Ualr+BdGMQI1fe6jg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:from:subject:cc:to:message-id:user-agent
 :date;
 bh=hRMart1iNsOfZ4XtJXaVBFmcLibgJ1Ww0Q9rcJYqncQ=;
 b=RlkVZs3Q4AWRzSqUktJ7nSKAqyVngTq6hpwUk1siPhYJtbPwScGmd+QG+CHUmNR0iI
 CAV3z45YJQrJ9OEkSj+UdENkgogJRrOqR1wHcgSfzBG346AaAbJxG6x97R2CcLc+wesy
 40pS6uzci7aVfHjUopG09CkCLA5FlFAsTGTG651f9HURUXnK+5twv4Pa3fT0ZO2efsA5
 la8C0PSAxB3swxZvkfpWRI2N5v3AdH9TvRD5TgVShHHdcmC1pzcjfLwmVDT37EE1onrQ
 vIYB0aVLff+W8ZCFPm7LdftUZFM3qab8Eeu8dwVsNZ7NV9WeMBMZjcVlCvo3D1CtZc1Z
 RS8g==
X-Gm-Message-State: APjAAAV4STSKAFPhzOdDKy30c2t2C7OlwjUKeuYRw85RwFTf3qBzk+Ii
 5apR9bxW99KpWbbFHmRd4ttc3k6wuutnHA==
X-Google-Smtp-Source: APXvYqyzN5HRGYMbLWVdEGazvcCcceqk7ClqB7NwVd6g1nCPGn5gGQF88ZZhvF3fV1QDpgNPA2K1GA==
X-Received: by 2002:a62:6341:: with SMTP id x62mr18776769pfb.63.1557548917910; 
 Fri, 10 May 2019 21:28:37 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id s19sm8637374pfe.74.2019.05.10.21.28.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 10 May 2019 21:28:37 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <36fab640-b98e-9781-f96f-0ed988a71077@rasmusvillemoes.dk>
References: <20190507045433.542-1-hsinyi@chromium.org>
 <CAL_Jsq+rGeFKAPVmPvv_Z+G=BppKUK-tEUphBajZVxFtbRBJvQ@mail.gmail.com>
 <CAJMQK-iVhScf0ybZ85kqP0B5_QPoYZ9PZt35jHRUh8FNHKvu7w@mail.gmail.com>
 <CAL_JsqJZ+mOnrLWt0Cpo_Ybr_ohxwWom1qiyV8_EFocULde7=Q@mail.gmail.com>
 <CAJMQK-jjzYwX3NZAKJ-8ypjcN75o-ZX4iOVD=84JecEd4qV1bA@mail.gmail.com>
 <CAL_JsqLnmedF5cJYH+91U2Q_WX755O8TQs6Ue9mqtEiFKcjGWQ@mail.gmail.com>
 <CAJMQK-hJUG855+TqX=droOjUfb-MKnU0n0FYtr_SW2KByKAW1w@mail.gmail.com>
 <36fab640-b98e-9781-f96f-0ed988a71077@rasmusvillemoes.dk>
From: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH] arm64: add support for rng-seed
To: Hsin-Yi Wang <hsinyi@chromium.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, Rob Herring <robh+dt@kernel.org>
Message-ID: <155754891575.14659.7326257870940088515@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Fri, 10 May 2019 21:28:35 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_212839_664833_0C0A9F85 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Architecture Mailman List <boot-architecture@lists.linaro.org>,
 Michal Hocko <mhocko@suse.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Rasmus Villemoes (2019-05-09 23:14:00)
> 
> So, why not just have the bootloader add whatever entropy it has via the
> commandline, which already gets mixed in? That requires no kernel
> changes, and works for all architectures.
> 
> If anything, perhaps instead of just adding gobbledygook=abc123, make an
> official command line parameter (there was talk about this at some
> point), and have the kernel overwrite the value with xxx so it's not
> visible in /proc/cmdline.
> 

Why is using the commandline desired? Just for ease of implementation
and cross-architecture support because we already mix in the
commandline? 

The kernel commandline is limited in size so we would waste around
64-bytes of the buffer to get a random chunk of data from the bootloader
into the kernel instead of allowing more parameters. Or if we wanted a
large chunk of random bytes then we would start running into the length
limit. Given that EFI based systems already have a way to inject more
randomness into the kernel's RNG very early by means of an RNG seed EFI
protocol it looks irrelevant to want to be cross-architecture in this
way because EFI platforms wouldn't use it. 

If DT based systems can all get support for this in the generic DT code
then we're able to make things work on both EFI and DT platforms with a
little extra __init code while keeping things away from the commandline.
That sounds like a win to me because the commandline is limited in size
and meant to pass things like parameters and flags to the kernel, not
raw data like seeds and binary gook.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
