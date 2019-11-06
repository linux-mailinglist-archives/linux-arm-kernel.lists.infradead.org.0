Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E79F1A3C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 16:42:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/B3ncnD6uQeZzce1Gy2rRbeblwKGgZQW9HKK+9RIe0=; b=m+pFc2zw4yRjN4
	FP0Vk6Q78zgNC3MOt0ruQ+Hh1F5zdg9ACV8t/aU9Ifih/BRknjM2L+9e7NqISj7RWiJqTiq4TnPaV
	p50o6srqdmFUuPIXlfm9BGCs9kCPkimIyhx/P2FYZlZDgk5lzXIqDeTmf4GHqoQFa+kAYb2YzOvbG
	de2xXgO3z7+9zrYc5+c6ojhb7/FJkHREaGS6eAv7iZZs3C8xvO37vaR5lg+b5Do0CHE2W4xbWL4It
	DlROizDNzgSsaG4G/UsRHxVpyTuMnIRdyNCB4rRgF9mraM3Gz7UBRkTJnZxdtYUdhLsYWMgDWLK/r
	Z0g7J/euFc5zeeq/+YOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSNS2-00015v-1b; Wed, 06 Nov 2019 15:42:30 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSNRv-00015A-DS
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 15:42:24 +0000
Received: by mail-lj1-x241.google.com with SMTP id q2so20097157ljg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 07:42:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9jXG6bZDYKPfNtC0/1d2Ai+KRGjpbhwAlT7QOJRQNmY=;
 b=dj67ZwgbjbMBznzK1iB433/HFDv0v74ESHEDFVCv/BFBLIe5H8RpuerRswHyhLYqRq
 u2a0/psUn/ZUrmnQRqz1jULEMbB0ZLjxaqHQQxwm/roXjBIZVO9tS60xAn+Omdf7iQZ9
 tb9GLHR9/d85rIvJELUySNrMvJfqQyC4AtutZ/Dg2HfLKAJcWYmkGrhAChg8YWu7frTb
 N3y7UQSkTGRHDVyEYZ1oQAzCqbVcRbLTTYkUHZmk7XArjMdTsREcMrUj06AqUxVei0sv
 8Kamzn71UvNo99tGoQnqBRDsdVl3a/1PspaUqrcHJQwnbq3joqiLv2k80Y9g5HEOEsin
 g/mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9jXG6bZDYKPfNtC0/1d2Ai+KRGjpbhwAlT7QOJRQNmY=;
 b=HEsYjAPgaooyof2O5erGw6QqF46yAnb9HnJ9XApmP8Sah5S21kveXm+1SW2+OYuW8y
 IELHW3gnN8FxzmjbFERJymLYh4dg3uN8ZHS/t/OdG0IVpTYUA1TUjFHGwuvB62tazAQc
 m5NObPyZjPo1o6Aq17eel64LjyEq3xjkaD1g/mRV58+SRNNcgbZ3txj2bXmWllxnl5gn
 XUFSE2+pALt0V7n4b0z/i8zx1EljE+ps49CRMcQxoXyFkhd1kw6KI4lM87s3eKONU4u1
 UTs8HR2HF/Af8UpgQ2wB7DAVbTsTEYaCwncZMUCGdunP9qe0PWHHOhM2ZmMkpibDadxW
 MyNQ==
X-Gm-Message-State: APjAAAUW7jdjoZ009/agpQjxUGe+jNVkiKvv0+TW1xZM7wtEHcI0gOY6
 KPzdT2EwGJ+olDjcACDO9RMTEA==
X-Google-Smtp-Source: APXvYqz69irX5muxQriV8JTcckFg53O7A25ptmixa7PFa4m+W2Ni5LJitXfbgWMt4qjub87007uUhg==
X-Received: by 2002:a2e:3a09:: with SMTP id h9mr2526396lja.33.1573054940341;
 Wed, 06 Nov 2019 07:42:20 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id s11sm5799063ljo.42.2019.11.06.07.42.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 06 Nov 2019 07:42:18 -0800 (PST)
Date: Wed, 6 Nov 2019 07:41:05 -0800
From: Olof Johansson <olof@lixom.net>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [GIT PULL] Allwinner Fixes for 5.4, take 3
Message-ID: <20191106154105.ntwb75qwenxxlazl@localhost>
References: <45023fa6-b2bc-4934-b85c-3e7841dde0b1.lettre@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <45023fa6-b2bc-4934-b85c-3e7841dde0b1.lettre@localhost>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_074223_499592_804CBBA1 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: soc@kernel.org, arm@kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 01:14:23PM +0100, Maxime Ripard wrote:
> Hi,
> 
> Please pull the following changes for the current release. While this
> is a patch that adds a node (and thus a feature), that node was
> removed in a previous fixes PR since no interrupts were working on the
> PMU. This has been figured out now, so the net outcome of those two
> patches are making a device that wasn't functional functional, hence
> why it's in a fixes PR.

Hi,

This doesn't fix a regression, so I've queued it up for 5.5.


Thanks,

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
