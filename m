Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C71F6E2118
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 18:54:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PM1CSd+zL1A5xS5PMfmpXL1FbZJcodoGsSPLkhKHVq4=; b=qGCwqSsDc2ZI6I
	1Hfxles2jRrUwNEUg6jDNtfjFFbTTLbzvd3FyLwAl4QYoud3K8qraN/2303jd179kwEJhWf54AWX6
	H1KalEHVVqMDqiY7kdxC1uU9sa3q2ChJ51S0f91QRpklhE/hj3m19ub4e5G46SqlCDsaPiDlkmQSs
	6d7f2p/6w02RHimGY24zwRPbNXjyqR4kThVMlr68aIQXvOwpEBP3MginAM/Zon05b95zWV1qdWtSg
	kp+OY/ahxhSZHzYvKrUl2s+lrBTICMGsB7VuRxwFGCYEvdk/LQoiWDzYMAwH6IdTKbRICyO1eVFz5
	i47hRZs51bUZu1rHcpIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNJu7-0008Q7-4N; Wed, 23 Oct 2019 16:54:35 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJtt-0008Ny-8g
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 16:54:24 +0000
Received: by mail-oi1-x244.google.com with SMTP id v186so5192128oie.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 09:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EQ6HtKFRVKwkx70dv6lhY5+sv55++939i+kxJIbYQOk=;
 b=XwqTEbh83WUk9swwM+S6MduBQYUxV1UnqpAXzdKB3NHcdnBNjHgAjwZCEBCq3OS0Bh
 GjZg/QQsOqt87xgcrBHXuz4vYGnC9U1Hj3lWGaS53rLGdMpvE0J0ycin9HPETlHF5qCi
 wuQ3zFKUwaijdeDJK68QnYuvrB9Nn04OxF9cIbI3RtPpFF9dTF+nwmGk88xry3rW8lgo
 cuZTNIwELXwQPjQh+rqoEOkNQF6SGAjuBUZwfTFrPbF7mTl21peNPDHnlXz9LW42oV12
 Jgxryp4LkCb72DUjN2sHDVVjJuQL5z27QTfFuFzTzM1KbHB7n4G63IZGpvcL6K7toM/g
 phBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EQ6HtKFRVKwkx70dv6lhY5+sv55++939i+kxJIbYQOk=;
 b=Y01NUpoh4z37AN6UuJD7SgqrB7JsfCDdZIIreQk0WCYHSHHWl/MvXc0A1GHAc75G71
 a4D1Cw4d5zpTG1ps78//DAb3aR1JTboHq3wSC8D26mfgHpnsoroi6sqBoPyx97MGw7Mk
 tw7ZUfWYOy+0v+aMs3KPgZ3VTR7QrGh6OxtqFUXrBjRlpcUeKtoKL76YEf1tcw5P6y3h
 4AcVFhBTbdeso4EzLk3J4SwehaHUC/OENN3tFuH9GB/cIsMSgABkyvP7vnUD8utUwvVU
 sbeLWQgOoipSdKdwRveVpyv332XS76hhFu6DLa4chFLH9cxz6LOFFUrxs/r+0N1h3waW
 FgSA==
X-Gm-Message-State: APjAAAW7NqlvtQ5CNty8QCB1pKfuku5yW5L5oA8k49GyWEkON60m8q3E
 Q50H4OjIdZEwEbIuKjo+44SOrsa9zfM=
X-Google-Smtp-Source: APXvYqxH8dH2sQQliq9O/qFxXaaYdDo1CANEBZgRu2OntBGDnoOtV1DAe3ZPTpbdtQ3m8TSxljUstw==
X-Received: by 2002:aca:5007:: with SMTP id e7mr736105oib.123.1571849659358;
 Wed, 23 Oct 2019 09:54:19 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id y16sm6186987otg.7.2019.10.23.09.54.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 23 Oct 2019 09:54:18 -0700 (PDT)
Date: Wed, 23 Oct 2019 09:54:17 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] cpufreq: s3c64xx: Remove pointless NULL check in
 s3c64xx_cpufreq_driver_init
Message-ID: <20191023165417.GA15082@ubuntu-m2-xlarge-x86>
References: <20191023000906.14374-1-natechancellor@gmail.com>
 <20191023032302.tu5nkvulo2yoctgr@vireshk-i7>
 <20191023104304.GA5723@sirena.co.uk>
 <20191023162628.GA10997@ubuntu-m2-xlarge-x86>
 <20191023163656.GH5723@sirena.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023163656.GH5723@sirena.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_095421_322927_E733FC1E 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
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

On Wed, Oct 23, 2019 at 05:36:56PM +0100, Mark Brown wrote:
> On Wed, Oct 23, 2019 at 09:26:28AM -0700, Nathan Chancellor wrote:
> > On Wed, Oct 23, 2019 at 11:43:04AM +0100, Mark Brown wrote:
> 
> > > The driver should also have supported s3c6400 as well.
> 
> > Kconfig says otherwise, unless I am missing something.
> 
> > config ARM_S3C64XX_CPUFREQ
> >         bool "Samsung S3C64XX"
> >         depends on CPU_S3C6410
> >         default y
> >         help
> >           This adds the CPUFreq driver for Samsung S3C6410 SoC.
> > 
> >           If in doubt, say N.
> 
> Note the XX in the config option.

But what about the depends and the help text?

If I just enable the following config options in multi_v7_defconfig and
remove that depends, the driver will not build because the {dvfs,freq}_table
definitions only get added to the final source file when CONFIG CPU_S3C6410 is
set...

CONFIG_ARCH_MULTI_V6=y
CONFIG_ARCH_S3C64XX=y
CONFIG_MACH_SMDK6400=y

  CC      drivers/cpufreq/s3c64xx-cpufreq.o
../drivers/cpufreq/s3c64xx-cpufreq.c:61:13: error: use of undeclared identifier 's3c64xx_freq_table'
        new_freq = s3c64xx_freq_table[index].frequency;
                   ^
../drivers/cpufreq/s3c64xx-cpufreq.c:62:29: error: use of undeclared identifier 's3c64xx_freq_table'
        dvfs = &s3c64xx_dvfs_table[s3c64xx_freq_table[index].driver_data];
                                   ^
../drivers/cpufreq/s3c64xx-cpufreq.c:62:10: error: use of undeclared identifier 's3c64xx_dvfs_table'
        dvfs = &s3c64xx_dvfs_table[s3c64xx_freq_table[index].driver_data];
                ^
...
14 errors generated.

So maybe it _should_ support s3c6400 but it does not appear to, which
is why there is this clang warning that my patch is trying to address.

If I am missing something critical, please let me know.

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
