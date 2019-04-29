Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF92FDC5B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 08:56:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+NUSmO2EGmaPanuqXGQ8DcOk00xWnyL1P/x3COHT2h8=; b=JEz7Uxv+a83xaw
	KbzRf0Cju1n8QfVxrYqCd+afPufq5/PB3xiLssLx/xJvRUcdxokobV4kEVGMeRb74PULc017vudMv
	OIuDB6t0/vVWKT026i3JeftjExAs7G6pJTLHXUr7wz/XScz4uBRVHbuJag2OZGJmAd/aFhs1qSsBS
	6bfnjgMfzYb1HUTF4j08G0wgUR2PlAyAsrdl7z9s+YU+eXrCm3O1W6bHUe76Jh2C6OxNh99L9iK9Y
	Wg84pnh55oU1fmQvKM/rD5bq5GV/SpAlJUynbohp6Fr1ftJrScYYggMvwWlhnGM43clqF8Lyp1t2R
	BbOSesXSB27JSydIKCKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0DM-00069n-QI; Mon, 29 Apr 2019 06:56:36 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0CD-0004yD-PH
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:55:27 +0000
Received: by mail-lf1-x142.google.com with SMTP id k18so6927783lfj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=iASSyqsmVgn4Aj5UKRTTBijpmwqUJXawopxneyeTBUw=;
 b=09QHWRy5p1tZcTliRx3GoXe7M3fDuPhhHUkDaO+BU4e8mXdSzJQkEUee7JIfvbgayr
 yYuEbWjCJMWQZ0gw6SdrwL3Dp7/fRCGkKCFq8JiG02WwFsrrYjGiUEnGbieubO7Lxjfs
 t7aqAr4tN70QjGmQNvCik7gW2QTk+Rru5jDwz/BDXHu2hWoAbQpaPQnfuJIzmLOI++NI
 We2jXlXLBYsR3QbgLWC0JwHSsEU8M24DVufkAuXxr6Au2d2GjE6C5ogaKlSk4k8y0Bwb
 ICUp4XTT5a9dPGoJBvRg3mGmS2THpq8kwpJphh+uonZ8QIPLoye/JFkHrkg7cgY/rR3q
 V0eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iASSyqsmVgn4Aj5UKRTTBijpmwqUJXawopxneyeTBUw=;
 b=jP3jAMaVm68K5Tmx7/ZTGvCVsjm00BUjwBqPyNtsvtAXG/4MO6/iuhFLnASNa9ozZD
 tNIwpDMYC2Ak/Fvk2CRGqO+xjTF+++0VAOnGIFtR1xunomJ3kbk2LUmi3c0cWnQq9S8y
 6g+IyNVtkmFs/5Nqm618TG3WgbdCwchSWAPjrwFPZ/K+E05pTFjiTcywJlSmo5jFrKPg
 SpjKTRaO7etwTq3MzdyhySb78pGaryH6F2tZ89QwAjPAXVBvjL84l7Ef4kl+PL/BUf/p
 vWkydoutUttkipDBq6XTHJQtOqik88apKjMOyJxpP/Zu9wYKx/z3n8ovc4VWIm09OP1w
 cUuQ==
X-Gm-Message-State: APjAAAUUhBZW6VYhBHk9tEhyfxIn+Jqn0/IU1XiGehHFHEtulaj7zfXc
 oAqI8Wy0VWOb3jtNrr34MdUIhA==
X-Google-Smtp-Source: APXvYqweAyUdSs16y9Sz+3G3QnPmN8ubDb5yzsNlu4o1+s389EszASk/xeRg3oxxbZUes60ce671nw==
X-Received: by 2002:a19:5218:: with SMTP id m24mr28716799lfb.113.1556520924148; 
 Sun, 28 Apr 2019 23:55:24 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id v24sm477398lje.31.2019.04.28.23.55.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:55:23 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:05:44 -0700
From: Olof Johansson <olof@lixom.net>
To: Robert Jarzmik <robert.jarzmik@free.fr>
Subject: Re: [GIT PULL] pxa for v5.2
Message-ID: <20190429060544.2b4qzof3t34apego@localhost>
References: <875zrgmj46.fsf@belgarion.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <875zrgmj46.fsf@belgarion.home>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235525_829834_EC7B4260 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: arm@kernel.org, linux-arm-kernel@lists.infradead.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Daniel Mack <zonque@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 14, 2019 at 10:23:21PM +0200, Robert Jarzmik wrote:
> Hi Arnd, Kevin, and Olof,
> 
> This is the pxa pull request for 5.2. Can you please consider pulling ?
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   https://github.com/rjarzmik/linux.git tags/pxa-for-5.2
> 
> for you to fetch changes up to 9ee8578d953023cc57e7e736ae48502c707c0210:
> 
>   ARM: pxa: ssp: Fix "WARNING: invalid free of devm_ allocated data" (2019-04-14 21:54:50 +0200)
> 
> ----------------------------------------------------------------
> This is the pxa changes for 5.2 cycle :
>  - only a little fix the PXA SSP removal path

Merged, thanks!


-Olof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
