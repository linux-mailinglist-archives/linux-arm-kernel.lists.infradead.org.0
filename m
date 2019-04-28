Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01502B680
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:20:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2B2zfKzlNEOZ3+lqxmyQC2aDUdsBfLnQEo+5sr126M=; b=cG0eWughJ8ABah
	E0YaROM/BbBtRoDrEFhYG6y6XkkPNPzLA1oqXjFtH9OiqOpO0BrN2JvR3V7xEX5ZOCD2eGkOsmKCY
	1SmwNp6NMesfYuDHT8CQIwePfCPSNBMkofoWylslqqUh8Owr/70bOglp6+QvsqNQ/qDQ+UWyueqR3
	tw1YJvjXa/FMfH6cMGqn7j65TcVVFnVgEKp0uE/e0WU9oAq9OFa9J7zuaN704z9LbXMgi+uv1ssX3
	aW5sL6coIwh1EB7Zm97VU05yRaJ+9fnrF9ZjmfEc6G9OR8ZTrmNpSRB2UnxrIVtulv6GvqSdNdF7I
	gBVEmaOsl3c00b4cmxwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqI9-0008Tw-NH; Sun, 28 Apr 2019 20:20:53 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqGR-00078M-R4
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:19:10 +0000
Received: by mail-lj1-x241.google.com with SMTP id s7so4758412ljh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=drtBTLYKAbIQ0v+2iJbh9AJivb+hzVmfXbX10aiOY8U=;
 b=vn8qPE7nHJB61AillBs2r+SvrdQAzQ5otqadLny5wcV6cQOgVEnLQrdemfIpcVogo9
 B8GiA/ytJ5lMkVc/t0C4fwq9Mo/Nb502SMOVEEIrkLRjaS1X3KE+pnzmfPdc3vD2UKJP
 stl5wKpggolAmU93EiI/KX1y2wOfXrNDRPi7ud26HL4Zs6MQZC7lHYjwtqxcJjIOizj3
 5O36aWxcByo6rOcDsqDoSotxdzvCtKIxAPhorhyy7gpHmgA+Z4o2BvupPFWFmUr3idO2
 6ZbfOeQ/NYI030THfnGh2/viRKJSzU/Ka0LCwkSFQ1bkrqvDUow3DA11/rMOR4TAg/CM
 Rg/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=drtBTLYKAbIQ0v+2iJbh9AJivb+hzVmfXbX10aiOY8U=;
 b=HvXigQRMsj2TBz/m7EJHiwgtIRl7sswdLAjhKRCVQOYNoF2rboFgV/M4dDZeA+2Ctr
 Uvn2DLi1AC5Z6wZ8qTwlcCPpWeCE/ujcwot1nhPfpKAv2iqnqN2FLbTOEE3C5w0NxQI0
 gG5Y86LgPogEmXshlN91Itn8ZiIphAuMBzqLUJsC1zAZ0E64yFPayh/8nM8QDATHEyW+
 sggYMybn0jd0JL+epVc4Sqruiec2nUjuudeLdF0HldaqUbKsN6xBCNzquQP4hR034XN3
 GhV8/HqJZZ+pShSUe27TUZwymLE0EYd4gi5vP8kpzKJxtpXJc9LvHao20mHul4U8NfP5
 F0ww==
X-Gm-Message-State: APjAAAXKpwNYudBRBTYMlXGWzvu4dnSfu7IdH9QfxGTh63lNBVyBSOa3
 ZVy6H1zgv/GjHYaHJ/aiobiM+w==
X-Google-Smtp-Source: APXvYqwSmhCdGRXh/4Wra3XqKpZQp1cFm40pRhlpE5ZmjeKQmag6hiIiTy2B/6FXJACDVy84SxSN0A==
X-Received: by 2002:a2e:309:: with SMTP id 9mr32411949ljd.114.1556482746279;
 Sun, 28 Apr 2019 13:19:06 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id d5sm1445917lfn.36.2019.04.28.13.19.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:05 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:13:28 -0700
From: Olof Johansson <olof@lixom.net>
To: Kevin Hilman <khilman@baylibre.com>
Subject: Re: [GIT PULL] ARM: dts: Amlogic updates for v5.2
Message-ID: <20190428191328.2373o6ivmz7jgprd@localhost>
References: <7hwokhv09s.fsf@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7hwokhv09s.fsf@baylibre.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131908_133498_721E9EA2 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
Cc: linux-amlogic@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 29, 2019 at 02:27:59PM -0700, Kevin Hilman wrote:
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-dt
> 
> for you to fetch changes up to 07f9da2900674e8e7b15b090b878d8defe223277:
> 
>   ARM: dts: meson8b: odroidc1: add the GPIO line names (2019-03-29 13:59:02 -0700)
> 
> ----------------------------------------------------------------
> ARM: dts: Amlogic updates for v5.2
>  - add GPIO line names for odroid-c1 boards
>  - support internal clock measure driver

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
