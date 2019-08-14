Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5F68D6BA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 16:57:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3KK3wkC96PjcGnIRwcY044/wnBJr2u/S76iscY0andw=; b=ewi/v1yvq4+8jl
	VOxy/duLGrXhL6a6XkJ8aZ0Kg2FLA+uD8dO2ZXoAeLnke4+LOxr4Y2OyWGdJup5fEYj+oYfypSWKj
	XcVglGVwz3eyUcgL/R+fOEvwO0D9M6p4TNl6Y2kDrgPTKP+adFpkvkZTzJZk5ovFcRkcHjD/8EN5V
	IvrWvhtIYlacpCvmdXK4jiC3ko1eJmo3B/uprMO5DtZkIx+2t+QyeLL9IgftYVIEXhisnRwmi/oVA
	eRllyXPVB7IKEXrR2hUi4rKYKSpfVhAewTeyEUob4FMCIoOBoxG1pfiVA46DF/2m6QBZ5QC8LQT+9
	G5JVkppE668bdHEQjDFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxuhz-0003Tr-Cg; Wed, 14 Aug 2019 14:57:03 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxuho-0003TA-Nn
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 14:56:54 +0000
Received: by mail-pg1-x544.google.com with SMTP id n190so12400924pgn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 07:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:subject:from:cc:to:user-agent:date;
 bh=F1GjfCc2krRsyUeVwEv+ETsarz/0iBe3cVZ9IWqsuE4=;
 b=OgoALIDSa27QJkQOovdQN7tDVvKvC7JT/uR0Vr77J4sHjRPiIQf5z29tSucW9dpJtS
 5D+1w5dhaBHMcUc8M6WnqmqTFJZQk9d/X5a17RFGhlPYkBFRWI+fK+n15xoATY7dPaLv
 z06mTqEstQHnYhwgdNnyuXEYaygB+jTBbFzp4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:subject:from:cc:to
 :user-agent:date;
 bh=F1GjfCc2krRsyUeVwEv+ETsarz/0iBe3cVZ9IWqsuE4=;
 b=m5temkfwl2AFYPHeLGRHU6l0Ac1LNH8tOqIc30UVeY7WeQbXpKblkwBOYVOB+DgWb0
 IHeVAfvp1JDa+05dPn8CHyjJnrskHIozCeOd84RiInUZMksArssM/qUlXTFYUKGGOvjI
 p2Z333kuVfr56Rrm8yfj7QE3dCXAOBnKmxyQhouE2KPXAA0U6duOxJi0TZ5mdCi/CqDG
 PDKlZxTPYnwiVzHFefquW0/9EL6SrlkH3fV1dqTe7QaNC5F6FqvpQnbHUMFqC8Rw5yZ9
 khwjinEjOx3rdtPA90OA7ACaT9eGVQr4JxIACSRCQhBdSlstVac+OqOQwxHtqi5wLDeO
 4gWA==
X-Gm-Message-State: APjAAAUfjrLfCgthNEl2ACSHJ3VBhi6Q/e0CjzJsX5PB8gNe9nMxdA2t
 y3hH6QLUsvILbvKAvYCi2FZrAFJ1fsh2jw==
X-Google-Smtp-Source: APXvYqwQBr4lyDRs7b6AInnwp0mZfbr70TLkQcTPjskS6KrON2YWuEVTwXqWbAwfbbq6CAKITZkU4w==
X-Received: by 2002:a65:52ca:: with SMTP id z10mr40206305pgp.424.1565794611658; 
 Wed, 14 Aug 2019 07:56:51 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id c5sm16888pfo.175.2019.08.14.07.56.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 14 Aug 2019 07:56:51 -0700 (PDT)
Message-ID: <5d542133.1c69fb81.f5f57.0098@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <20190814073234.GZ52127@atomide.com>
References: <20190814063803.GY52127@atomide.com>
 <5d53b378.1c69fb81.31b2e.5077@mx.google.com>
 <20190814073234.GZ52127@atomide.com>
Subject: Re: Regression in Linux next with show wakeup sources stats in sysfs
From: Stephen Boyd <swboyd@chromium.org>
To: Tony Lindgren <tony@atomide.com>
User-Agent: alot/0.8.1
Date: Wed, 14 Aug 2019 07:56:50 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_075652_802216_5B3C8489 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tri Vo <trong@android.com>, linux-pm@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, linux-kernel@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, Kalesh Singh <kaleshsingh@google.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Tony Lindgren (2019-08-14 00:32:34)
> * Stephen Boyd <swboyd@chromium.org> [190814 07:09]:
> > Quoting Tony Lindgren (2019-08-13 23:38:03)
> > > Hi all,
> > > 
> > > Looks like commit 986845e747af ("PM / wakeup: Show wakeup sources stats
> > > in sysfs") has caused a regression in Linux next where I can now get
> > > some errors like this during the boot:
> > > 
> > > kobject_add_internal failed for wakeup10 (error: -2 parent: usb)
> > > 
> > > Any ideas why this might be happening? Maybe some deferred probe
> > > related issue?
> > > 
> > 
> > Yeah! Take a look at this thread[1] and please test out patches I'm
> > throwing out there like a total cowboy(d).
> > 
> > [1] https://lkml.kernel.org/r/1565731976.8572.16.camel@lca.pw
> 
> Oh OK thanks, looks like I'm a bit behind then. My test case turned
> out to be caused by device_init_wakeup() called before device_add() for
> power_supply in case that helps. In that case create_dir() will fail
> for kobject_add_internal(). Doing something like below fixes the
> issue, but seems like we probably have other similar issues as well.
> Adding Sebastian to Cc in case this might be a real problem despite
> the other issues.
> 

Ah yeah. I sent a patch for power supply earlier[2], but now I'm
thinking that it would be better to take the approach in the thread I
mentioned where we just don't add sysfs stuff until when device_add() is
called.

[2] https://lkml.kernel.org/r/20190801213330.81079-1-swboyd@chromium.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
