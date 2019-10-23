Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D12E4E214E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 19:03:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PcbQAyjwBI+k8GZ+niXt57WrCm/gxNDsFdaFdM2XCvc=; b=q+V+uBXf/HqwRv
	/oXHjiErzLQHOXchuGAYk2+AJCmAT0vCPfzbNH8VTwCbjhrdikEu75fTefpA/Ol4nzRQP5pq/h50f
	ZeEQN9k69+GDHffbaHhM9B3iSGXHicrEQVA/70hKpohNEVa09AFs75/gqWYruPkct+JOVSQJS6REr
	+9uIvEXmG+oVgJXVhjbqYFh+E7g00IzCh9OYC+PMtxTJM/qBVYx1wNqklNYopu8xDXLU7mnwxpnYR
	+R1PM2ofhzzxxhPi58Zy4LfXIuWcKDXiZMtzgU+JJYMZWhKpMSqdaaQF8D+sKwkrRcA2T/u6WH5si
	2nDZHrIyQiNYhz2cVy7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNK2m-0006IH-Ck; Wed, 23 Oct 2019 17:03:32 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNK2L-00064c-VC
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 17:03:07 +0000
Received: by mail-ot1-x344.google.com with SMTP id 53so6444284otv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 10:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LNIlo875oLUnbVBAslOcAnj59hqK1kHx858TCXge7cA=;
 b=N4mOPS98IWbZY/2/KBp62o4U8DpmiY8K/DxEPJzcpUxxxheeFNhUu7vukEldTwgqYR
 rHqct06pgkkgI7CxlYFrLPVZFWX0enc8m766N5KPfidbuNpOhSlOnf7lUm4GpzbTXhqi
 mKxKG1Y07F9CS+p9fzQ9CFIozlQSEzIVJiYzQjPfo6BpMzEDSObuiZoB7x9je0fp6S0/
 DyL2E/W6hxxWsJfr0QGpj9uWjDA0V25V2YCZx82kOEZYyAZ8gLMmecgtPLXiTgUOyeY+
 X9ZQcx5xLJl2//NB9fL0WDdd6hfY1K67a98OMzhy12qY9cFN8oW7zGfw3Oiphk5MZUXX
 LNyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LNIlo875oLUnbVBAslOcAnj59hqK1kHx858TCXge7cA=;
 b=GDP47Bv7BeaUhs0fXznP9a3MsHRt2ahbpv4vhRWgPKxVU4ccaPvq4dlwsYQy6i+KwR
 gQoEYH/8NUDX0kQYYrQbFjKz0wJgmD8LfsjLWHMRV/HD0XxCFXU1Mr66PFVFZcl33SCM
 diV50fgvY0SxcS/B39ai1XuUqyzfrvqC3AuLugAp3Xaxfy+OzSst9EUrm8PE0JauBLLH
 TpqVY6IWCondqrI6I5x6nGE6M92BNsvyLztg/7sgRcAvPX48oRadwye5nbk61L5rI+0q
 0U5GdbaYbfR0navPBpmmIfvhwXBir/fIdNFlo8i2ksL6ykr87Owx6gNXDSsFJF2BEsFu
 w70A==
X-Gm-Message-State: APjAAAWiO1s2K2M0ib32YwsQW7phmIT2HJRnMDUDNlk3rlXO2prsb9kt
 Fvs8LequCaHHU0cvUNszjU4=
X-Google-Smtp-Source: APXvYqyr+KOjBV2W0qrTz7k8vKZIZRshNryK06zDkLhWk6XYcHe9LOVkSReS/D2+RnKymZPKRqgmvQ==
X-Received: by 2002:a9d:6ace:: with SMTP id m14mr8170163otq.11.1571850184682; 
 Wed, 23 Oct 2019 10:03:04 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id r26sm5705285oij.46.2019.10.23.10.03.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 23 Oct 2019 10:03:04 -0700 (PDT)
Date: Wed, 23 Oct 2019 10:03:02 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] cpufreq: s3c64xx: Remove pointless NULL check in
 s3c64xx_cpufreq_driver_init
Message-ID: <20191023170302.GA45373@ubuntu-m2-xlarge-x86>
References: <20191023000906.14374-1-natechancellor@gmail.com>
 <20191023032302.tu5nkvulo2yoctgr@vireshk-i7>
 <20191023104304.GA5723@sirena.co.uk>
 <20191023162628.GA10997@ubuntu-m2-xlarge-x86>
 <20191023163656.GH5723@sirena.co.uk>
 <20191023165417.GA15082@ubuntu-m2-xlarge-x86>
 <20191023165923.GL5723@sirena.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023165923.GL5723@sirena.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_100306_023880_36DD3F10 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, clang-built-linux@googlegroups.com,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 05:59:23PM +0100, Mark Brown wrote:
> On Wed, Oct 23, 2019 at 09:54:17AM -0700, Nathan Chancellor wrote:
> > On Wed, Oct 23, 2019 at 05:36:56PM +0100, Mark Brown wrote:
> > > On Wed, Oct 23, 2019 at 09:26:28AM -0700, Nathan Chancellor wrote:
> > > > On Wed, Oct 23, 2019 at 11:43:04AM +0100, Mark Brown wrote:
> 
> > > > > The driver should also have supported s3c6400 as well.
> 
> > > > Kconfig says otherwise, unless I am missing something.
> 
> > > Note the XX in the config option.
> 
> > But what about the depends and the help text?
> 
> Viresh asked why the driver was written with s3c6410 support optional.
> I explained that the reason that it was written this way was to
> accomodate s3c6400 support.

Ah understood, thanks for the clarification and sorry for the
misunderstanding!

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
