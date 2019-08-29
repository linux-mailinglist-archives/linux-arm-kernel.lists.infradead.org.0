Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E12A20D4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 18:25:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eRrqP7dfzReV5j0K3w5vnteyCC7c8BQ96LMVfH1X6XE=; b=egX4Zj+9cXX98U
	I3ZFQ+4fNu7g7hUzjYEhhLaThybdGdykPb/gybK6D9DDS3q8kFzoom8Y3z8uU6kHQHAKQU4DXV20Q
	zekdYkCKco0WXRYNgjsvszu4FKNFvCZSZM77tFeFLPWqC5ab4uB0p6hEJ15ja00glqE9NqHYl8Y88
	d4MychSimp4SWAZwRw6r24YWj1q4ESmZSrcXKpk6wbVTFsci76d4uIjvAVzzTEo9xjbmpuBMhDNak
	afXpUWYhQqlgrK1Sqgd0eBhrBN3Dv6hSm9qb83KlheqURzIgCW6V5/VirIP5CVxyNI5rbEbswmcmz
	gt0NUQsmjE7PZex7Qnqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3NF8-0001oi-Oz; Thu, 29 Aug 2019 16:25:50 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3NEt-0001oJ-7W
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 16:25:36 +0000
Received: by mail-pl1-x642.google.com with SMTP id y8so1800198plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 09:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9NodY+xkfUIg3E6331/CvHT0V1g9ZW0PT0MxsWow5HA=;
 b=etoVtj4UlWpEbbRwKE/PpGH+FPNJEzegH6JB1v3FeFWW5iyR7h65mY3bYVoXp53RYZ
 EiSRSC/9xAsaKT2qV9FXBMyEWvYLLmFH8UmEo1JV5qF3s/8oPdRHtCPt9H8P+rZRbKwA
 OuHFo/IuxOt7b97FbhQFLL2jF5aCTHcejH10U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9NodY+xkfUIg3E6331/CvHT0V1g9ZW0PT0MxsWow5HA=;
 b=q4y1boDtnWgwm+9Ajr784JYF4GIUyJDjFd6PQNWfIDkab3G6vr9thmITuu8fx2Oj9V
 j83GwD5IVKNJXiBgbSfS1KZHhKuSSxJLPBsEHRvxOAffnUUZ5hmfHwV/cpk6SKpYNF6c
 E7JDAPDcP56F1/qjq8F0AFpQnRgPJ/PVoADt4sgx0ZbL3Ae4uo+L/m3We+Iqd2EhgZuL
 dfjPOcYW2yfG06ocmohMojfareTHGi9x2RYUiLyGo7OBw7uIAIDz6QBtPhvH0cpAqPub
 M0Q9lQd3kBui/NBt55q00jrAz5dSrSkPLSCj9ZWjx7RA/U/9exJa8rzFqOLSenmbgpQs
 otjA==
X-Gm-Message-State: APjAAAWSl3iDABYBjt3oxZqHHqETj7JlTzcjemqDNcx0C+u+pq/ymwLP
 upvEyb7UCvZp7Eff56OIAysJuw==
X-Google-Smtp-Source: APXvYqxe3GfFk9toRv7fiyatC1ZwEl4ctbSCVUGT75dAuNX4AlJOjAknDFFnkYzDdxwd/tA+gTONDw==
X-Received: by 2002:a17:902:e686:: with SMTP id
 cn6mr10988837plb.12.1567095934198; 
 Thu, 29 Aug 2019 09:25:34 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id z68sm2866767pgz.88.2019.08.29.09.25.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 09:25:33 -0700 (PDT)
Date: Thu, 29 Aug 2019 09:25:32 -0700
From: Kees Cook <keescook@chromium.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Stephen Boyd <swboyd@chromium.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, 
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H . Peter Anvin" <hpa@zytor.com>,
 "Paul E . McKenney" <paulmck@linux.vnet.ibm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Arnd Bergmann <arnd@arndb.de>, Marc Zyngier <maz@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wei Li <liwei391@huawei.com>, Anders Roxell <anders.roxell@linaro.org>,
 Rob Herring <robh@kernel.org>, Aaro Koskinen <aaro.koskinen@nokia.com>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Tim Chen <tim.c.chen@linux.intel.com>,
 Rik van Riel <riel@surriel.com>, Waiman Long <longman@redhat.com>,
 Marcelo Tosatti <mtosatti@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, Armijn Hemel <armijn@tjaldur.nl>,
 Grzegorz Halat <ghalat@redhat.com>, Len Brown <len.brown@intel.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Guenter Roeck <groeck@chromium.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Alexey Dobriyan <adobriyan@gmail.com>, Yury Norov <ynorov@marvell.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Jiri Kosina <jkosina@suse.cz>,
 Mukesh Ojha <mojha@codeaurora.org>, lkml <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v9 2/3] fdt: add support for rng-seed
Message-ID: <201908290922.5C6E4885D@keescook>
References: <20190822071522.143986-1-hsinyi@chromium.org>
 <20190822071522.143986-3-hsinyi@chromium.org>
 <5d5ed368.1c69fb81.419fc.0803@mx.google.com>
 <201908241203.92CC0BE8@keescook>
 <CAJMQK-iDoPxbFUH3JUeJ7SehCptZOnjKZiUoFd1PqLjDdGHujA@mail.gmail.com>
 <20190829154505.GB10779@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829154505.GB10779@mit.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_092535_274811_2B759D9D 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 11:45:05AM -0400, Theodore Y. Ts'o wrote:
> I thought about asking for this, but we really want to do this as
> early as possible, so that it can be used by KASLR and other services

KASLR entropy is sent via a separate DT entry, since it's needed before
the kernel is even running.

> that are run super early.  Also, whether or not we can trust the

Are there things using the kernel RNG before the stack canary is set up?
I tried to move all of that code as early as possible already.

> bootloader is going to be a system-level thing.  This should probably
> be defaulted to off, and only enabled by the system integrator if they
> are 100%, positively sure, that the entire system is one where we can
> trust the source of randomness which the bootloader is using --- or
> for that matter, that the bootloader is trustworthy!
> 
> Is it really going to be that useful for a random system administrator
> to be able to flip this on or off from the command line?  Hopefully
> there will be an easy way to configure the firmware or the bootloader
> to simply not supply entropy, if for some reason it's not trustworthy.

You have a point about bootloader vs system design. I'm cautiously
convinced we don't need a boot param, but if we CAN put all the entropy
collection in a single place, that'd be nice.

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
