Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1235FB6A6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nb7Z33hZV0U0jmoYL/hiuKXTdW0o1pq4c0QK19t6QCw=; b=gqcvUvnRxe2Ldg
	CmUnlONjTsk1b1rVeBfJa2k/irTLIjVOhyiCKka1lX9427tsANNkr+EpYKyO5+i/HKxHRSGbR/1io
	hUeZCuMqmzi0IZJT2tErfjsPgOGsSQQxPDeidciC0in+08HoYebp3Vyok2L5Aiu3XgEkcLTzpmUpl
	7/MNO/aX2U/Wm27D3U/tE97Gi4iHMESybcziG4r9uzH9+C0knM6Ir7f1+6gN0uYXh80E7be3T8rhY
	z7XuHtA+OFVhSom2yCNCcEczRGY9MGXhsyxO9tviiQHZdDnlVlZ5FhV9Y238nHcBVXbSiJDsTomDD
	wQ0JheKJZLmmAt+JLAtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqS6-0003eK-GE; Sun, 28 Apr 2019 20:31:10 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqIq-0002G8-C5
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:21:40 +0000
Received: by mail-lf1-x142.google.com with SMTP id d12so6337660lfk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kFmeoaix9Z2dMq+X6MIe066qfewYTqs5uSdHflkUOOc=;
 b=J2SQHCHiaNYPBjdkVDVFlJism2XVyqHEHcw1u92gCBBZqoq91XjqIcheZKtkc9Hcec
 G36Fo2jGZqTapVIgGiIhP+Wq7p0YexfAt+JXgMh2wQKaj3m6D0wDhrWMEEEzK7c/1UHj
 /AVUUdfRMEddq0+9luryQEJTPF52oYfVKsupF+gy6HV+0+4u7Jhb3MzxkstrUzdqN3zf
 rOtIEH9FH8c4jJ9ywj+/CRe1oqwpV7cpFNv6x3vyvs54y3ZJWdHQZVZ2hkyyX/NoQP0t
 Mliu4XMaD0RATgomkQYblbXeujyZYEiLMmcdebg2PpcgSebpkkF4AGsCltoTIoJ+BoRf
 LmLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kFmeoaix9Z2dMq+X6MIe066qfewYTqs5uSdHflkUOOc=;
 b=kTiFmndHzibZhl+ojGpqKHeeWXWQozoodqUeDPlY8ReBDNyoD49vNUZHqRluc4wtsz
 oNlLgJ/dMeWY9PTvm3vQrUwQgT94o82sJDaLyGm2+lqjEKa/NzJ6MnpvcFGXrhp7+BGd
 lC5A1dT+8cC6HXP/sefq2xw6qdNgqTglaPPBlRlgeBz+gYl9ujrL/v+hm975t8vL5qF+
 tWCypxVDNz9hCm66/s2Sz/TG+v5hzRCnDnyhYSk3AUCssyU9i4GRvPTF+paiaa2+uWbM
 SGo0YZWx34/qD7cBn3qWlL5TBxKCUbtzBd9FT3nbIPzv+PkRt+kyVUISjkIsnOptGH1n
 1lSg==
X-Gm-Message-State: APjAAAXws0pwfbYdiOh+8Lc8o8VQOnrB58gk6ji/mfZTC2cadV+q4CWT
 LXeu9U7PZoHLRZx/kUZqyj7lpA==
X-Google-Smtp-Source: APXvYqwvJxdTIHUwqs75iV+dgkD0o36ThgQP5lzxkg2e/VCrilqhnxAYxabNeOQMA1Y1g6bC6qCT3g==
X-Received: by 2002:a19:f001:: with SMTP id p1mr32340057lfc.27.1556482894812; 
 Sun, 28 Apr 2019 13:21:34 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id j76sm6581785ljb.78.2019.04.28.13.21.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:21:33 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:56:31 -0700
From: Olof Johansson <olof@lixom.net>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [GIT PULL] Bitmain changes for v5.2
Message-ID: <20190428195631.qexzfws3uj66fgr2@localhost>
References: <20190423153720.GA4496@Mani-XPS-13-9360>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190423153720.GA4496@Mani-XPS-13-9360>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_132136_910577_88E1160C 
X-CRM114-Status: GOOD (  10.05  )
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
Cc: linux-unisoc@lists.infradead.org, arm@kernel.org, arnd@arndb.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mani,


On Tue, Apr 23, 2019 at 09:07:20PM +0530, Manivannan Sadhasivam wrote:
> Hi Arnd, Olof,
> 
> Please consider pulling the Bitmain SoC changes for v5.2. For this
> cycle only couple of dts changes are added and the details are in
> signed tag.
> 
> Thanks,
> Mani
> 
> ---
> 
> The following changes since commit 085b7755808aa11f78ab9377257e1dad2e6fa4bb:
> 
>   Linux 5.1-rc6 (2019-04-21 10:45:57 -0700)

Unfortunately you based your branch on a very recent -rc. We always strive to
keep most new branches based on older -rcs, to avoid polluting our tree with
repeated back-merges of mainline to make diffstats easier to parse.

Would you mind respinning this with -rc3 or so as a base? Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
