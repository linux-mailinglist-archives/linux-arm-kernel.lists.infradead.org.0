Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F884BDD6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 18:14:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a+7cPaGz3ucu4kv4WI3uSRx8RySe9uTQ2aScQP+JUKM=; b=j4w9Xp4ypINdaQ
	u/4If2hIC/Qhur4lV0/dlr8T7g6XCoHIwqDAfJvNBZSpOhKQIzQ/23OgQnFRygfmNu/H/uF2YDzLi
	ojE7KJMtc2GT5NHEE7BB24kW/DYdJlXrfKSQbkFSDep8oiZQcB4GJWaXeViF0HbMDyQp4Q4nfAoV9
	LCAa7d4jUx4i/idF8Z0Yciu7Ig2ktLLa9FacjFYvUtl+RuDmJd+9lNPniDOKz7G7ghRQUr8sFYV54
	v2NjrHYZuJgMbgTOfXZR/szLE2YlJCZ/YCowY2spUiv5UkJC7nao4UMXxMBf8aHZ/zWoy+4REcP78
	4gQbEUpGAcJuxTKHVxtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hddER-0006lG-Kg; Wed, 19 Jun 2019 16:14:43 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hddEE-0006ji-24
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 16:14:31 +0000
Received: by mail-lj1-x241.google.com with SMTP id 131so3859910ljf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 09:14:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MioIFnKhM+05qcubYXJQjpMLkTW4JIqAqPZxGgNfSzo=;
 b=bzCQOAi1DxcthFZCX+I7KmnOJVz0yhQiVks41SCJKdzcUWJTpsdG0vf5sIM1fE3Tiy
 0s0OLiXuAsCbnhTaeUlZD1wsZc7CH2FtmbeLh+oflFWcN/NQmpPBpmFQwdsY2UHTKQxc
 oV4YPFkdMPwLU9R8F7uiH5aaIsiqiNlHGHNjJTzz8Ao4YCvryUdP3olk0OJoXZ89++4z
 vqwKE6PNa++VPnwM4xBTM96IdGrxqk9fzUdPgieT3KvclQ/KNaGacLPy9I9tvzKGThy5
 TW+BWwm9VBHh4F3TIEEjazLao03nptKtwmYH50vAwrQq+PqKIDJupXiNIQDUWLFnkzao
 CW/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MioIFnKhM+05qcubYXJQjpMLkTW4JIqAqPZxGgNfSzo=;
 b=ZfkXcozSbw4RYKJhK7K7ngaZogBxvA5i34Y9L9RDuDfl3n/9DxFhDpqNIqh1O9k5ms
 u61IP7DV33+GtDxQrd+hpY75FhUSi7JsTR3xEQJVbLo+EoiLtiQf2Gq+HaKD7Fw8+J5D
 5cL00xq3QBuvUoSy55bnIXbxaicCguJi57trsdyqbyYXJAwcyb9sBEoZWSnOZ3XJEcWg
 qB0KbRu4/+JXqcfZGQ7mboDR8JxHkIYi9rIKntuTPQ4h0MBBNLKLwLSDWxNjRzNKPKH5
 8ZQJeavO9OvaYpVmo9AOCBQ4mqicCxlTedkY4DAEYGo9wjRYuXbAjKamHy/hdtBGRlEx
 yIQw==
X-Gm-Message-State: APjAAAXULb9mdTUH3bGDbVjgm3TU93p0tI+2DKsi+1qxdW4xcXZhOArB
 jjsEZI/Xtg+2NZ+OF2RRLmp9HA==
X-Google-Smtp-Source: APXvYqwgzsmROiL6pTEHg4ScWRdAZQ9XCRi9ONd4Cg2Q7KFqTH6ZtscBDgmKybogGFEcYT7lffW5fQ==
X-Received: by 2002:a2e:8495:: with SMTP id b21mr3545520ljh.149.1560960868667; 
 Wed, 19 Jun 2019 09:14:28 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id i62sm494348lji.14.2019.06.19.09.14.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 09:14:27 -0700 (PDT)
Date: Wed, 19 Jun 2019 09:10:07 -0700
From: Olof Johansson <olof@lixom.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [GIT PULL 4/6] Broadcom maintainers changes for 5.3
Message-ID: <20190619161007.zsql2ga4mj2nsfks@localhost>
References: <20190612025028.13118-1-f.fainelli@gmail.com>
 <20190612025028.13118-4-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612025028.13118-4-f.fainelli@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_091430_111654_49DF3A8C 
X-CRM114-Status: GOOD (  12.80  )
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
Cc: arm@kernel.org, bcm-kernel-feedback-list@broadcom.com, arnd@arndb.de,
 linux-arm-kernel@lists.infradead.org, khilman@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 07:50:26PM -0700, Florian Fainelli wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.3/maintainers
> 
> for you to fetch changes up to 64f35709d5735ddbf8ab52d60ab3d62550b544d7:
> 
>   MAINTAINERS: BCM53573: Add internal Broadcom mailing list (2019-06-11 19:43:05 -0700)
> 
> ----------------------------------------------------------------
> This pull request contains MAINTAINERS file updates for Broadcom SoCs
> entries for 5.3, please pull the following:
> 
> - Florian adds the Broadcom internal mailing-list which has a patchwork
>   instance behind for the BCM2835 and BCM53573 SoCs entries

Merged into arm/fixes.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
