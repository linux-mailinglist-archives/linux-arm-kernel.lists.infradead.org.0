Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D62E208E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 18:26:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=udzjiAcZejkdOyiEX5kiIyIQEA1VD7A8wZNrB6Im8IM=; b=AwmKMl9gofm/Aw
	w2gzAN4/81vF5ugjGRN9ueWmtbzRlF5kVcYxT/jKqGbFBJtt37VhTIht0i1WOR6J7QS1oygTtlJWj
	Wh4RRPdxdhP5/bRfdM9ITpBbGjwDvUDR/alYDGjCzgrwYzn36LuNeGkNNiC83ynHyN/Lr+jGLG0xd
	oXEP1AbjHX2Esa4m8ZEP821a4dD6C/plFb9EVWgHCaynGQpdXzMK37N/+WXp1DECqnARt0FbnvHGp
	Fgj5P3OIk+tXnyv/APG++/qZVYabGT9s5A6Re7sY2jak9WMszVYviLjODlG0tLvrIScsasSaRL4KF
	mhXypFnbFLB2YEjGRc1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNJT7-0003TU-S4; Wed, 23 Oct 2019 16:26:41 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJSx-0003So-Fu
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 16:26:32 +0000
Received: by mail-ot1-x344.google.com with SMTP id 41so17932316oti.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 09:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EAeizC7dUymc6uqIjtz5jyoFjB5RNX3davj32nJWlag=;
 b=eSVKJPPSrxkfXuHWE0N6bFOTDmX4LGsHHVQcIk6qNzDrNfvL0D431RQT5BrQp9Mej+
 +esFGeEsSIY+RZzJcJGxgfxIRWgE5gSKWHI+YZ6uT9wXF38Jo43sb5mSYNELJCHdTW1p
 eXIhe7NpJ8aEnZB6o6j+zasHLKgF8Pt0nTA0ui/+A10OBmAH15RKeimEIptjE/YfKWq9
 kPLOj9nbUVnvaFtC7AoAr577+VENuOTy16j/F9zdfVv2JXW5j/FoInQDyfaUZIuy7qCR
 HY0XIqGceqsOaww6Noi+0MMFYS/j7D3JE0F4FpUn+hM3UtAM9lj+divH+QNsm2j8bjRK
 isng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EAeizC7dUymc6uqIjtz5jyoFjB5RNX3davj32nJWlag=;
 b=EKz8QwgEYwIaRcdW/apLfTCAEKLI8lwN2QJG/+K7iZi+wEByx89XmwG3oArsdY6nU1
 DK4SdkciTSU4lSNAj7jINQoYcPnN7zZVCgsfAG9wbTuGDKFHhojAahVKQ/48W1kOYkK2
 E0PTnrGkSwBJIERV98c+ocRP/pUt+EadZ4xWZrnGfkyoBoXZeS3+8bnpToLDxwjsDRz6
 8Dk7LhZ96lPwo/EYvAi5BMn+C0AxuLG58eiPhlpdOhQwowZP+n5wrv1AUvQjAe4eXkeU
 gGCUuVpg9ATdsX6umwQPlDRQWCXk3AJl4UUbhXnlyrngXk/J8mNQS1u2aFw+XGduH+rW
 nu9g==
X-Gm-Message-State: APjAAAWdQ9Y6D3P6OKMH4eBykvbc0P32C4fQ+UmCWpc+5CPq+Ws8kLqb
 Q8hjOlv7XNG3U7ki4I6A5uc=
X-Google-Smtp-Source: APXvYqxGGHjlYhN0aCecroWTpgfM2cdkJJ4tljItbCQ5HKCIO85N4Hy2T18gE58ANs4ielIxOJ6sEw==
X-Received: by 2002:a05:6830:1685:: with SMTP id
 k5mr8411180otr.203.1571847990325; 
 Wed, 23 Oct 2019 09:26:30 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id k19sm5688229oiw.31.2019.10.23.09.26.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 23 Oct 2019 09:26:29 -0700 (PDT)
Date: Wed, 23 Oct 2019 09:26:28 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] cpufreq: s3c64xx: Remove pointless NULL check in
 s3c64xx_cpufreq_driver_init
Message-ID: <20191023162628.GA10997@ubuntu-m2-xlarge-x86>
References: <20191023000906.14374-1-natechancellor@gmail.com>
 <20191023032302.tu5nkvulo2yoctgr@vireshk-i7>
 <20191023104304.GA5723@sirena.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023104304.GA5723@sirena.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_092631_551349_35AEE2C6 
X-CRM114-Status: GOOD (  16.90  )
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

On Wed, Oct 23, 2019 at 11:43:04AM +0100, Mark Brown wrote:
> On Wed, Oct 23, 2019 at 08:53:02AM +0530, Viresh Kumar wrote:
> > On 22-10-19, 17:09, Nathan Chancellor wrote:
> > > When building with Clang + -Wtautological-pointer-compare:
> > > 
> > > drivers/cpufreq/s3c64xx-cpufreq.c:152:6: warning: comparison of array
> > > 's3c64xx_freq_table' equal to a null pointer is always false
> > > [-Wtautological-pointer-compare]
> > >         if (s3c64xx_freq_table == NULL) {
> > >             ^~~~~~~~~~~~~~~~~~    ~~~~
> > > 1 warning generated.
> > > 
> > > The definition of s3c64xx_freq_table is surrounded by an ifdef
> > > directive for CONFIG_CPU_S3C6410, which is always true for this driver
> > > because it depends on it in drivers/cpufreq/Kconfig.arm (and if it
> > > weren't, there would be a build error because s3c64xx_freq_table would
> > > not be a defined symbol).
> 
> > +broonie, who wrote this patch to see his views on why he kept it like
> > this.
> 
> The driver should also have supported s3c6400 as well.

Kconfig says otherwise, unless I am missing something.

config ARM_S3C64XX_CPUFREQ
        bool "Samsung S3C64XX"
        depends on CPU_S3C6410
        default y
        help
          This adds the CPUFreq driver for Samsung S3C6410 SoC.

          If in doubt, say N.

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
