Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D288D6D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 17:04:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GAmXIlr1HgRWPDoNGMakLwdsBzf/l4mnz/wFfvLCT/c=; b=udjMGepxVmYprZ
	/fXS1YjuW0h/XWGloJeza+v+BnZF/BdloFloyEOrh2fXz+awCE/c3cf/HM7+TGUNpspv1NZBXNqCv
	fVDb2jIpKm2KTmvREG+xc4crC7AHRJ1Q379KrZO3aHFT4HCwGP5IyiQFy79qaX9Fqj3knAUasNu8s
	q/BXHWzaESfn1+xWOkUzs05WlWEw2jkmErO3fd8BR0bQfiNbXKIVn+y5WdmuY7VNCrZ2dovlcCbef
	AXyCcPRVgI2PsC7CKQemJqc2ofIt8rIN/ZLmbtcE4fEBdUZ0Wm2VO+JxQHlROQGVQIwlQdNiY6QKE
	7LmoSkdJ34l93ydpvYdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxupS-0005oH-Ah; Wed, 14 Aug 2019 15:04:46 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxupG-0005nq-Ck
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 15:04:35 +0000
Received: by mail-oi1-x243.google.com with SMTP id g7so73288679oia.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 08:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F/p97iQZnXTuUHhiYplY/Za6YnkQQ3wC/QnPWgUZezo=;
 b=TkubPT652d2A8SsiB1hPYRHsyGm/kX6niHNGd5xmKRw56W6a2s6XAcQdqfkpOc3DGR
 e4BvSHKESFFoD3PxBlSsWr9BtJiAvR0ht4ILGJ86om7Gndkl5Nhz/6Wym/FnNdntfjt7
 qwx02gpi0Si6zC801v/9WxDiu2Zji41tnOzpt2p9WxGxoMQn6Kldu513NwmPkKhZYAmX
 Jguir6tGF6fYseJxmdnIRa26hh8D4K890+QZYxb4G5xMPeeINucTXsRtP9rXkA29Prax
 ETMXaOZQVpiStZRR+wx3aujevygxWl0z/2U2uIV3fWgC4icqbkCeTyzm4iXVSUNLe68E
 iLfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F/p97iQZnXTuUHhiYplY/Za6YnkQQ3wC/QnPWgUZezo=;
 b=NiHwoRY3s5kR3ncncrMxfXsCj0mhSV3afLZWrlJA/h+i1PjrqcldlvICtZ08rj06Xi
 RA3PArim6a6TPXTKKhyhJ8RJipjJCd1xnhXNLIiY2WyZmfdDwhaJ+9hiJJCM/Z4T+AMq
 Y55DvyC5InAxwRFNbOtGIeTfxN4LxVhCB9ykgSYAej0vuj8Q+uLuHnYF0kytwQNJ/6ST
 nnQDSaze3TEA4moahnzbB2332BlUOMHdZ7LmnD9OG5vZq+NfiOC6Tq1/CDWYx0wMEDtq
 wWSXdbLl7TKM/WQy4QM7VNmI8xHFpjlpNizLsgu/+J/lhGnXnzU0r1uuD5Rn79QQRFYL
 YHww==
X-Gm-Message-State: APjAAAVN3v+cMWs9SGc5BFKNwUIJM8/xbbdM5tryl4YX9WFpRCAkcfd/
 NMalGIWABKUXRLIutBcPJy3fYZejIlA9DrcX7GipUw==
X-Google-Smtp-Source: APXvYqxIhMfzqtXvkG0y/c9RMdINmaRf8z4zNGwoAjV2RmkBxHjhYmNOpz7ekBDnwSG8BZ9m4sHsOxAugJkNJAbC4zk=
X-Received: by 2002:a02:6914:: with SMTP id e20mr1662340jac.83.1565795072861; 
 Wed, 14 Aug 2019 08:04:32 -0700 (PDT)
MIME-Version: 1.0
References: <CANLsYkzH-ZWV3qF4p4Yvfy3EfBvZUYyDH+SDdUyuS3fGw9h_Fw@mail.gmail.com>
 <20190814003557.97004-1-yabinc@google.com>
In-Reply-To: <20190814003557.97004-1-yabinc@google.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 14 Aug 2019 09:04:22 -0600
Message-ID: <CANLsYkyjQ2SfA6_1+FVLPwK1V9iqU31vBwHYK4BGewV5o27G7g@mail.gmail.com>
Subject: Re: [PATCH v3] coresight: Serialize enabling/disabling a link device.
To: Yabin Cui <yabinc@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_080434_464834_DA8F42B3 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
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
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 13 Aug 2019 at 18:36, Yabin Cui <yabinc@google.com> wrote:
>
> > The patch isn't difficult to do but does go deeper in each link
> > drivers (ETF, funnel, replicator).  Let me know if you are not
> > comfortable with the idea and I will see what I can do on my side.
>
> I am comfortable with the idea. I chose to add lock in coresight_enable_link() just because it
> is the smallest change. But a refactor probably is better for maintainance.

Yes, that is  my prime concern.

>
> Feel free to upload a new patch fixing the problem. I can help to test it.

I have a few things on my plate at this time so you might beat me to
the punch.  I'll see how the next few days go.

Mathieu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
