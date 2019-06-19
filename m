Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5704BC7B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 17:08:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HCMUBz/L+2GRGEXFIheqwHy6fPLZ5G5IIjD/Lt6E7jM=; b=pZz6CI/INeCzoD
	0LQ7hmw7WYQuuMRHbVK6Y0tmjlr+ghUXOweOMP1kmXv+ssUTmvR3gGXltggT6VKBi5qZZDyN5r/yg
	AFVQE7uXXtRatLPSqRyOjmDYdWVYAsIdUGlLplzS6LGYSpCxy9XGUNxEa8I/sCGezHp4C8w7bfbKX
	7uAPxvgi37umB0Hmv5En4XpPUzsQdhhtZ+nnOkpdUg/oBu8cTUj9NnYBfNDTvGj+0p0JI4tTQPd/h
	+4IERRsPRC8UgFp2PjLXb7P0hSdAbO2b7xU665apFJqw55XnFWFVWrR65yT2Ie2dOOFDvStFZa44B
	bZJZVkye1oiJaN9Lphmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdcCI-0003hF-Jt; Wed, 19 Jun 2019 15:08:26 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdcA3-0002JL-Gu
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 15:06:09 +0000
Received: by mail-lj1-x241.google.com with SMTP id a21so3605745ljh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 08:06:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=iYqw55Gz2MUp86I8nNBi2SjuahBkRXax37PIeqPVSUQ=;
 b=v/h3Du2aB9YVZbQNyAxCFdv0tsiThqy3T3FcJD8+BVI6tza94WcTK+xMOfKKJHYerA
 xj3cRmvinImLPU5+Bx/NlDJraHkhb3oCNHsa5iWUnaWIVo9ICCVSryZLgI7TDQmPQ8Hz
 ToeMQ5q2y0bQpNIcSEGfun9rztqMlkXyHLfDDb7JxYfAHYWWOLHFHDutamNY6iMV+0bM
 2PNVTeaLd0RbK4LxZbqGzCAgzxpAWe8z8QYpcDe5NvVFS7Ho2pxrMP/+mU0i3JlX+4jy
 UpGib1gTqN60b2McE2lfRbV3G6EyEwAnkOFCmYGIyc2kaovUN6NBuv8O7+CeS5y2VMcY
 tGOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iYqw55Gz2MUp86I8nNBi2SjuahBkRXax37PIeqPVSUQ=;
 b=Uhj/NTGVlLAZ0ePhASVX2MjLjoj9jZUCA1CBtSTvrSr7EOVH3v3shjW8I+NEM9y8CP
 R5t02DaXc5CepvKDXRORPd+giO3tYi9IHOW9RO2Q7rOj9r9rrbXz4oEXYQmYovfYYaIB
 4Jhdl8WQHnT1qJRhb3JI3yaOTqyMX/SrC1XijHvbaEaF1XRLo8r5WiID663hs+kQB2ts
 5Cx8IKqaINzeKvqYvnKmYrV25qbaVX/LWp0MkTQBlwQiNZKstrBlCBfwznEQezOZD4Bj
 kRVtHGNG/meaxH4cQ2dVUUD1jjOnUXLRPxCr4W83cqQEAEsETj/sj5/8leetNBeJh4Sc
 aKiQ==
X-Gm-Message-State: APjAAAXG1BYupJlkCdpzQJQJZrwmHjkyqzHOEgE4Bgb9si1qjt1A6prx
 ecdT2CS2XiBNcT83jPBzh+WHQQ==
X-Google-Smtp-Source: APXvYqzHV/RviCFvCfJMC5EWh1GWJAukNhuetdv46P5Iim7cEJv31N/o566CoYlfZtgdMaGywj7V+Q==
X-Received: by 2002:a2e:89d0:: with SMTP id c16mr56530310ljk.219.1560956765707; 
 Wed, 19 Jun 2019 08:06:05 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id l1sm2744943lfe.60.2019.06.19.08.06.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 08:06:04 -0700 (PDT)
Date: Wed, 19 Jun 2019 07:12:57 -0700
From: Olof Johansson <olof@lixom.net>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 1/2] arm64: defconfig: enable Lima driver
Message-ID: <20190619141257.6e7qacefrsubhnnb@localhost>
References: <20190606085645.31642-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606085645.31642-1-narmstrong@baylibre.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_080607_658244_C1C99021 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, arm@kernel.org,
 linux-kernel@vger.kernel.org, arnd@arndb.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 10:56:44AM +0200, Neil Armstrong wrote:
> A bunch of arm64 boards can now use the Lima driver, let's enable it
> in defconfig, it will be useful to have it enabled for KernelCI
> boot and runtime testing.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Applied, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
