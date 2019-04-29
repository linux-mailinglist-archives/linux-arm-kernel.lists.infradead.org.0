Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75951E87A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:11:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rOEnJ2DHa7W3TKQ0taeQp04WH44x8w2CvE8vSDZKjPg=; b=jIJGBPFLyJRVEq
	Vplp7JODuBpdmKm778msgpbmbfsYsotwuYa61G06UoJ3pIbuDx65PIjy9wx0UcyPhoAxMHqedX5aC
	aykRW5G9dQzqfUGLw+2eqaO+YX/IdQkPiN2ufJ/Lxpd+YrTfxomQ6DxYwyxuHZGMmj47ccw2p/XZ4
	XQuPU5eIUJdB3xjaDDcs+itnLL5n3otNTjua+XNtuWOMu2ibrUkJWKuaINBaMg/fnxMIjFIcWb+uJ
	santvYzcv94jdvZQU+7lMPd3UzZ+gsw3aUfmKpsAire8iyY+krnlYMfHRdPq9oep5XjWtBUdmzNBv
	qQrERZm+a7tIZAjJQ3cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9od-0008EJ-Mn; Mon, 29 Apr 2019 17:11:43 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9lH-0003L4-PO
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:08:39 +0000
Received: by mail-lj1-x242.google.com with SMTP id h21so10027767ljk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:08:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/MAnhV++qbN5GK5yZMowt7NqTAUuHPTlsgy+SwNWliU=;
 b=L8mfnMkMqfwgyBcxrAZX60cZqxEgMpX1vvtgF/Q/97C85BV97rpulAeT1ZbAkRvSAX
 vZyRfuS7ms8/BE9oHrp9awldM29Qd50mYADsDahmzl7D8j9YgDiZN6W6xXzWw4atGx+J
 y6nVg1KtKD/55OvwNANqv9wVYGvQw56aBzds1ZhMkYAKciXK3yPrkHlx3esJ3EeiiKVr
 OijVsMWZOeEgDgo/CAitDiGV85SZxFv7DcYEemUIIKkIWWc3Cnd2tjLLRBB6p3wQNbhw
 h92Gu30Mb0pWJQaGb3hLNwEbVU8v3BMYxMZ2OTFrfVqF+ox+dD9V15/oBI5Cv0VzcWAq
 4SNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/MAnhV++qbN5GK5yZMowt7NqTAUuHPTlsgy+SwNWliU=;
 b=o1OZlzOXkRb+OFaM46uBJU+gXAaXrw/WZL/QYE7ECFUwMP1ulvUZv0mE4udODedAqN
 rDEoxAZD7WzSGPuTztmCXxOMHo1g763bDmKrNC8R4SHO2YEWlLwUdfG81s/pcSwP9IN5
 4uO++9otS7CJq8lMDKwe+pKtIOS6nj+WTsSGSl9haArj7lK6Bfwl1TzwiEWTjrqjYItU
 2KaloQOC2kVfFKqj3zYSJ5WKf1xfDsmcaqgUJxv+BFpRk2a0Q2JqjsummYt9++yo8H8w
 68C33nWJJzmZ+VFkftcFUlgcVPAb7nOmtfKyEzcyzEZ+p/f9Lc2EassuEm0wUFlILMhH
 YZiw==
X-Gm-Message-State: APjAAAWoYSJEdYIIBF4ufvthR8iihsCX9DX6CA7x12f+ZaUfbbljqAys
 tELo5m8QN2s6a1uiuXjzPiNwPA==
X-Google-Smtp-Source: APXvYqzxlRmD24m6cE7mZ5y6h1Bo4JKBQjyyp1xJY6LjoRz8qwTITkXLVKxnDmIIdBcx+IikdUjr+w==
X-Received: by 2002:a2e:3207:: with SMTP id y7mr12561482ljy.117.1556557693998; 
 Mon, 29 Apr 2019 10:08:13 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id f15sm2083096lfm.43.2019.04.29.10.08.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:08:12 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:54:03 -0700
From: Olof Johansson <olof@lixom.net>
To: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [GIT PULL] Reset controller fixes for v5.2
Message-ID: <20190429165403.r5ed3u7gxhj47kaa@localhost>
References: <1556122181.2914.5.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556122181.2914.5.camel@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_100816_716927_59F8D396 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: arm@kernel.org, kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 24, 2019 at 06:09:41PM +0200, Philipp Zabel wrote:
> Dear arm-soc maintainers,
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.pengutronix.de/pza/linux tags/reset-for-5.2
> 
> for you to fetch changes up to d005aa750c9b7ca7f77dafd6dda33a0fcb6e7ae3:
> 
>   reset: fix linux/reset.h errors (2019-04-02 17:57:35 +0200)
> 
> ----------------------------------------------------------------
> Reset controller changes for v5.2
> 
> This adds support for 'acquired'/'released' states to exclusive reset
> controls to allow drivers that usually need direct control over their
> reset line, to temporarily yield control to another driver, such as a
> power domain controller during power transitions. A fix adds missing
> headers to linux/reset.h, which caused build errors in linux-next,
> discovered by the new lima DRM driver.
> 
> ----------------------------------------------------------------
> Philipp Zabel (1):
>       reset: add acquired/released state for exclusive reset controls
> 
> Randy Dunlap (1):
>       reset: fix linux/reset.h errors
> 
> Thierry Reding (2):
>       reset: Add acquired flag to of_reset_control_array_get()
>       reset: Add acquire/release support for arrays

Merged, thanks!

> 
>  drivers/reset/core.c              | 180 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++--------
>  drivers/usb/dwc3/dwc3-of-simple.c |   3 +-
>  include/linux/reset.h             | 115 +++++++++++++++++++++++++++++++++++++++++++++++++---------------

Hint: If you redirect the 'git request-pull' output to a file, or pipe
it through cat, it'll format diffstat suitable for 80-column display
(i.e. email).


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
