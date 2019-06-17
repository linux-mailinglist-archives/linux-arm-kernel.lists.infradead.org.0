Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEFF4817E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:03:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CqUWO9Fzx6GUWA7UErl0didgMfFtscYncN0zCfBZ5FQ=; b=LCpnsM5cQJtz9p
	hmd5r+Nc0CVjDCd1sOmRQyw+yi9jNEzDLyzZkTeBC1iL+H2jhwI4FCl80ZrYnYbZTOew9N+jWWQk1
	hAt09Y9jjeIENMxKK2DB7e22UFX5NJgZFjeFQVBMQprHUsozpk699wfL3ND5LAo015fDEZBiXKeD/
	xzJaB9bavq1KzpbqTqhZFS0tPkc6VATyPK/W4BsCm/2vkvm9TeH3oAjcawbxyq4dYcwoUgDamadpd
	JzAWmcXwBaZjA/iAhPAG6fJCi99Bj1JUCjo/Fa76Qy62vx1h2fEb8jIt9aBWYMkQQHEVuX1bWP01k
	p07te70KdVR/gOXBk6BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqM0-0004Qq-FQ; Mon, 17 Jun 2019 12:03:16 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqJs-0002zb-ID
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:01:07 +0000
Received: by mail-lf1-x141.google.com with SMTP id d11so6301000lfb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 05:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4Ih0Ph8oC6uMsKA+uhLc1rxiEAxwD+deP8zIILVSJDo=;
 b=jMYfkRw9zDEwPQMidTy1aFlGPcKO0p6VvKCnBKiCzs9EVArrZqUSH9bV7mNVfSxuHL
 1GYy0RkVcmAvbk/raJpUFQfOc4lcRtUGzNY5A+aT2Sl2CR1OAak+c5IixDxW64wcw2Kj
 3iXzOKoWBuQUq1hP0SysgTCghoQh8ho8dZmABN1vw2TUfHq6DdyeKHEgezO2FkQnNxAE
 6MMjMhtzGVHrZMN21s7UY7UaG1utOWz7UcAKJq99WwNx0LoKzey9r7so/STo22nusmrC
 fhE8KSDyAZf0nZfk9AejABwTzOP+ouH1b7OsbSjPDF/qj4PI6Fx7/t5hs5Pp+8eJvpsg
 ir+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4Ih0Ph8oC6uMsKA+uhLc1rxiEAxwD+deP8zIILVSJDo=;
 b=sq3eTw9wXJwp8Pa1XaQ8UrDNU8NW+13CroXMAKR0I7AwBNVjM4at1gtEq9oXebJnY9
 CyNw103QtsO/R7wI+N9FBt3Pwb94aAYPyiajxffL2krnA9P4QVPTNL4L7fhkaYCXL/iq
 ybb+ISxxDedOJbfU5OY6IbTfHGG3w3hv2SxlRgoP/o6asWPybLJWyHQ78yRHI3rVEBGZ
 YEIyhOfdLAFmZSs8cF5EnSzP3VCWrg2i9socGETiKYMXqbud2cyVS5lw2+zn2OUVIguN
 8Foa+Bgf0v125Y2ROWLo6gwCafBdMOB4rpwtkdtDCohEThptsKo0+8bz+mJpkv8z7Eq9
 wEcQ==
X-Gm-Message-State: APjAAAWINrtlQsThk9oNDZx9O85JWD3NiEd0k2/cK0LVJTPQM36mPzGq
 GsnJlAIvarwN+G8UDQpgYGaJ7g==
X-Google-Smtp-Source: APXvYqzrbLmDvJaHbdws0BUkuKLXoMnOFCrEuTd+5Imrxg0ApYQG6A71dGbCsGXqqASKndm0PZ2M4Q==
X-Received: by 2002:ac2:52b7:: with SMTP id r23mr54873902lfm.120.1560772862007; 
 Mon, 17 Jun 2019 05:01:02 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id 24sm2322246ljs.63.2019.06.17.05.01.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 17 Jun 2019 05:01:01 -0700 (PDT)
Date: Mon, 17 Jun 2019 04:55:27 -0700
From: Olof Johansson <olof@lixom.net>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [GIT PULL] firmware: arm_scmi: updates for v5.3
Message-ID: <20190617115527.7kmfi6cqketrm64e@localhost>
References: <20190613142305.GC7283@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613142305.GC7283@e107155-lin>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_050104_685310_BE908A69 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
Cc: ARM SoC Team <arm@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 ALKML <linux-arm-kernel@lists.infradead.org>,
 Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 03:23:05PM +0100, Sudeep Holla wrote:
> Hi ARM SoC Team,
> 
> Please pull !
> Note this contains associated/dependent hwmon driver changes that is
> Acked by Guenter Roeck
> 
> Regards,
> Sudeep
> 
> -->8
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git tags/scmi-updates-5.3
> 
> for you to fetch changes up to ac778e62634eee0685b622605b063a49edf2f2d1:
> 
>   hwmon: scmi: Scale values to target desired HWMON units (2019-06-12 12:29:51 +0100)
> 
> ----------------------------------------------------------------
> ARM SCMI updates/fixes for v5.3
> 
> 1. Correction to ARM document ID referred in SCMI protocol binding
> 2. Fix to correct bitfield definitions for SENSOR_DESC attributes which
>    otherwise will calculate sensor values on wrong scale
> 3. Adds the missing rate_discrete flag setting so that discrete clocks
>    are handled correctly. Without this fix it assumes continuous range
>    which is incorrect
> 4. Adds support to read and scale the sensor values based on the factor
>    read from the firmware

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
