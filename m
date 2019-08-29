Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09324A21B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 19:03:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eGEZGAWYbHJDyyVFceawvdIc9lQ7nQooMxzK+LGZaCU=; b=taqg5Tzp/PhQLh
	d3FVPL7G8WEfhdixMh7GkOKNVXD/7cLhIKzP7tU6EXDo7a54MQ/DetMRh3TMWTY6HBmoOIL8rqbXf
	x5cxwdAG9KzPPS1xMmvKZ6rhG3Am5D2RXwV6S9gn+eYFdhgq7ZBZny6i+dwjFSXe+x4PKzhm+1c67
	3Kpnbfcnh+etrYH0N9PltizCRVA0WPMmf9UQscgfrd6S8QNS8S7CLcNQUgpFdkDlyGAF00zaTVTJX
	z5eCNb2ubugDLG3//zGkdEJiV6YDGTeaNHaXFZEWDaLkDxztP6WfLtAumgsXQn+R6Iv4Ht98PsCP1
	3l5tkxIm4ZZ8VbqPnvyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3NpV-0006Uw-V0; Thu, 29 Aug 2019 17:03:26 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3NpI-0006UL-JZ
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 17:03:13 +0000
Received: by mail-pg1-x543.google.com with SMTP id n4so1917583pgv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 10:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=cT40aX1Rm158dXbZvg7FygLmkaJhPhVyHtqBmt7878E=;
 b=PAXO8ZbCVqCw0eVBICcj0380noufm8aJLcc22R6FQyST4NWgBmi93l2YHrrW8mL0Bi
 oytzULxOstEziMDvAjIC/na6bXjIH2Gbhn+UtLkEiHbSzC5zuigdjKWDl5IkU9KNaTHk
 vNXzdah4WS39Vp4NQH4N7miEiBLnAxdMrpmLI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=cT40aX1Rm158dXbZvg7FygLmkaJhPhVyHtqBmt7878E=;
 b=IRW1p4YMIO22FmYQBWjH80kQBLD85z+Ybnrg96/gnseY/uuI7IFpPNwN4l2zugRaDo
 WGiAZGccnPcLRJXoeNHRkqSBNYB6u5xFaa6uCELctXNxU9Q9Qe2/JFZLz1Knd7XLv4ux
 RV2qWlqdbEb3nEJENz6jQYXjLPb9o/dE9fUZDIoI7xdma2VKYe/QeSNcTeC9bGZl4BYF
 nP2fTO3IJx+KJVBK++0mFRyQ/G73JngzKysBrnG5phkA/yJau/lXhdfqjhvQoVzQnYT1
 EfuPfuWy86oXoBxtJjFZVyGK9Z8354Tjcu9P8Et/ooNGvCggvhJj+qJCVuhKsPfmKcuf
 s7vw==
X-Gm-Message-State: APjAAAXzUAwyKAny2fcRpIVTRmt+BZjpNr9j+fAIDM2Lnd3a5lTeCmEh
 hcFHCgn5VaeSkjEUwQ9fzMem0A==
X-Google-Smtp-Source: APXvYqx/Q0fFZvZWabn6tcL2I8GORQH9uYo7dBQccjsc+OV6Z3702ta4szivlvQBDGAk0mtwjAaNUQ==
X-Received: by 2002:a62:1a45:: with SMTP id a66mr13125850pfa.142.1567098191599; 
 Thu, 29 Aug 2019 10:03:11 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id t9sm2671099pgj.89.2019.08.29.10.03.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 10:03:10 -0700 (PDT)
Date: Thu, 29 Aug 2019 10:03:09 -0700
From: Kees Cook <keescook@chromium.org>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [PATCH 6/7] media: don't do an unsigned int with a 31 bit shift
Message-ID: <201908291002.2F67F5ADA@keescook>
References: <4a411ba155eb062b6575aba0824123c840806c0b.1566502743.git.mchehab+samsung@kernel.org>
 <1a78a757b37d2628312e1d56d7a741ba89d42a91.1566502743.git.mchehab+samsung@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1a78a757b37d2628312e1d56d7a741ba89d42a91.1566502743.git.mchehab+samsung@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_100312_673206_C61BB5BB 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, Kamil Debski <kamil@wypas.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>, "Lad,
 Prabhakar" <prabhakar.csengg@gmail.com>,
 Bluecherry Maintainers <maintainers@bluecherrydvr.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
 Anton Sviridenko <anton@corp.bluecherry.net>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Andrey Utkin <andrey.utkin@corp.bluecherry.net>,
 Antti Palosaari <crope@iki.fi>, Steve Longerbeam <slongerbeam@gmail.com>,
 Ismael Luceno <ismael@iodev.co.uk>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 linux-arm-msm@vger.kernel.org,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 Jeongtae Park <jtp.park@samsung.com>, linux-samsung-soc@vger.kernel.org,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@infradead.org>, Mike Isely <isely@pobox.com>,
 linux-arm-kernel@lists.infradead.org, Andy Walls <awalls@md.metrocast.net>,
 Richard Fontana <rfontana@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, Andy Gross <agross@kernel.org>,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, Kukjin Kim <kgene@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 04:39:33PM -0300, Mauro Carvalho Chehab wrote:
> Doing something like:
> 
> 	i32 foo = 1, bar;
> 
> 	bar = foo << 31;
> 
> has an undefined behavior in C, as warned by cppcheck, as we're
> shifting a signed integer.
> 
> Instead, force the numbers to be unsigned, in order to solve this
> issue.

I also recommend using the BIT() macro, which does the ULing correctly,
etc.

i.e. instead of:

-	keyup = (gpio & ir->mask_keyup) ? 1 << 31 : 0;
+	keyup = (gpio & ir->mask_keyup) ? 1UL << 31 : 0;

use:

-	keyup = (gpio & ir->mask_keyup) ? 1 << 31 : 0;
+	keyup = (gpio & ir->mask_keyup) ? BIT(31) : 0;

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
