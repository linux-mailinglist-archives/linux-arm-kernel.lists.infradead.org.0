Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B0054E6F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:10:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pnebyAgQkf4viRmCjYdN5arSYG2JLUNqrrIQT5tu8FE=; b=HKGyzvGkMTfknY
	S3NKDGMFmOs0PT4jHml5jOrEQT+01pjy48xHQwnu+yiFbXlhe4f7lYpclD/7YKOo2kT0jdRU29Zio
	QKmMdDQOc0Y2Tiwvd5PZVwftulYpS1GPNn8QW8Pk2ewIJdXayGEB825Pbl746at8Z1QMMWLjoBnqZ
	KfbwRe3sbrJmDJaQI7uPtzZru0oTDyTH2EQPGSoZL1FPpp0aEpHJUSv+YaVczke08Ntns7NzVHR0I
	IjHWpjjawEK2CVk3Q4vIm9p3R8kpX5NkkYVX/fjty7jepc16JPtPABubKaop1A1ZD6Z3aj2iKBS+Z
	EY2gEqqmxbmpJfnzaw+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkHS-00055E-JX; Tue, 25 Jun 2019 12:10:34 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkBi-0008WM-R5
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:04:41 +0000
Received: by mail-lj1-x243.google.com with SMTP id m23so15944367lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=z4XsQI9r3zgLSCqnQ/EBqswCUpZjuVFZcMFBR4ZXA0c=;
 b=jPIyrkQiGDbi3xcB+wPr34WQcfntKoDvbPuU60XSKx4F8IblnVJBWeHX1/1n+/iQ0g
 vvjRnu4te0A4osICcy9k+YsnwLDgo2NmjJG1VN1yUQ5xutdMjA+ctuYSrXTEn+FdcX1u
 mPhmrVjABeP13eEVEjZLKRNA47QN1zp96UBVT6Tz8l/uNTEdx+T6n/iMlyJ+08e9RkM4
 UYwZaf/7AyhmyT4LsE3r0Sffq32eW/I4YR2qiTBZ8r7eO0NCdn2oBnafm+LG/7fMhXza
 DvixQaIZf96sMSBEKkG4a9t1GSQiD4CbNLFXfh8Lzk1ZTMhQbS9ZnQip30cRw7AKD+ie
 jq4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=z4XsQI9r3zgLSCqnQ/EBqswCUpZjuVFZcMFBR4ZXA0c=;
 b=tl+bjSNDYO1pIA9RCy+FIXGL75IrzJsnRZCTZyZlijkhHO/2rROLhusTZu/+wLDtOt
 NjjkvHTHv8ZtL3QCmmBT8jU8+8YPogOlvuE8YNKT7n6FQy8N41M/SIRImTlk/M810wDZ
 SotE4ctdXQr1xNfQ31qJelLF4bBQyQIpxFhnQhXT4NhttdCTdBm+Uxp7QsRlZJS7sNCn
 XwLwQOaF720YFbabJmZgk55N6pphqLdPeuaYGvqlBdKQYaTwmCEP8WG8oVQ3TNAtvRKn
 c3qedhcMJlldZTq6znpZ7J/IzwD4x6YJLG8m/DWxkjZCjdbv9xRH3l9zzlAzv1BhQern
 9IYQ==
X-Gm-Message-State: APjAAAVD8F19gfXxgFPl1iX/y3062impDyr0667WTCzGjQmQGvbo4YUZ
 gluHChB/94g8GqTXafa/U2ywTg==
X-Google-Smtp-Source: APXvYqy/FnDivULLxZ2Wc9B3BXXFhEFNfqa3GnLUyjOrJkfRR3rVJTddV2nFa79laoonnwV0Sce3mg==
X-Received: by 2002:a2e:5b94:: with SMTP id m20mr75023837lje.7.1561464277190; 
 Tue, 25 Jun 2019 05:04:37 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id q21sm996152lfc.96.2019.06.25.05.04.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:04:35 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:36:57 -0700
From: Olof Johansson <olof@lixom.net>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [GIT PULL] ARM: aspeed: dts changes for 5.3
Message-ID: <20190625113657.uiy7ytcotn57hq3r@localhost>
References: <CACPK8XfMEzqvTGZz7JZxz0XQ0tBHzpJRDxtCEFB-ZzKCyDeuQw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPK8XfMEzqvTGZz7JZxz0XQ0tBHzpJRDxtCEFB-ZzKCyDeuQw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050438_908713_504602D4 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Jeffery <andrew@aj.id.au>, arm <arm@kernel.org>,
 linux-aspeed@lists.ozlabs.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 07:34:16AM +0000, Joel Stanley wrote:
> Hello ARM maintainers,
> 
> Here's the ASPEED device tree changes for 5.3. Most of the patches
> have been baking for a number of weeks, with a few late changes added
> in today.
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git \
>     tags/aspeed-5.3-devicetree
> 
> for you to fetch changes up to 6084110a0e9c4bff75970f3d68091ceff9e2c2c7:
> 
>   ARM: dts: aspeed: Enable video engine on romulus and wtherspoon
> (2019-06-20 16:37:26 +0930)
> 
> ----------------------------------------------------------------
> ASPEED device tree updates for 5.3
> 
> We have various device tree updates from the OpenBMC project to enable
> bits and pieces in existing systems, notably updates to Google's Zaius.
> 
> There are some AST2500 machines under development:
> 
>   * Lenovo Hr630
>   * IBM Swift
>   * Facebook YAMP
> 
> And some AST2400 machines that have been around but out of tree and have
> now joined the party:
> 
>   * YADRO VESNIN
>   * Microsoft Olympus

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
