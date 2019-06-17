Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4634837B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 15:07:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yBWwAv3fQAlOFfbbb0h1k1/ToQYx5QTY9xNZ05tV9E0=; b=IHsni8523kI1aP
	KYUhmpGyaW9G868HSGyzFseTzMsct8ATSlkSZGP4tNqk0F5iQa3bHOoi93bTj9o4DmegdXQGiYUKj
	7/deJxJLVtcq/UKuc/Fk9/VZHU90l8/BDQ675uo00S20HKGSqGQF3tF7HSJSG7ZTV29kyIIgxs6kS
	cDZpZ00qbTYZlAPPBTwKj97WKh1t3K73PJNja/e+rfa3/QkW47rqlWIsQ+JZTRdqxnGp2g9Chhcgp
	Jiz9F2AS/SjcLJtNBrVIa03iv1S0bmwt+aF0dVKyIc0NnUVkgTXEjMdVrLXgs7eYceoDBT9tuzFDh
	onQ6LxPM0s/J40Vpt0Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrLe-0005sd-Lv; Mon, 17 Jun 2019 13:06:58 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrKB-0004jC-AY
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 13:05:28 +0000
Received: by mail-lj1-x243.google.com with SMTP id r9so9226964ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 06:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sAoimktjBAXiZV9EknYkw+MHFftU4AS8zQL6VuGBjFE=;
 b=rR6Ldo4a+7Jz7GRFTpASbzT1pQ4z0s85fgNHFoo6v0obvSO+HUG9B9xJ/CZHzjs/u6
 jks/IYyVL14wjQ4WpJNbDoUw7HLXPla6xVPwF05sAWQKf1/HNzeRvEYTN087Diw8Z6QQ
 2d1kLWpP4uD9aZEuEMCTDg0mBHLj9RohE4IXlQHZsiMkBjXiyjetjGidGlQjiVJf39in
 2y3/nQPV+6j9pqRAF7Z/kAtEhEt10JrxPZQBqDZGxMMM2I273BW+EWvz80e2Bu2pvY56
 TaSGjdWGkljoyarYnlRXmawT+gY8Hp4vGxs/O6Y1vXAqHcD9YVG/4BrDSMY5wdP9ZQzj
 Meow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sAoimktjBAXiZV9EknYkw+MHFftU4AS8zQL6VuGBjFE=;
 b=bizOdRLwCwvhxTGgbBO1+bzOHsRT6x5bjIf20sEDoK+b1TYyTNSz0O9IdZFWws5LVA
 e7YGIoQPOOMNKpOmWaqgKBULSuilOpzd3wfsFTwPtn+EI1qvbZYYe97FlV5bbhWX3Bc4
 7t4isObJJzgfFgG2A0H+VjtW7EoI/yxw1rOnLSp3WkNWWUfkvcoqtSZuZdun+mbDd61m
 IidKy+udzP3JJxTwZv5+4OvuRfuq+wFTC1kwhue3XaCEtqTToVDbEJbgY8fln8H+gBnj
 NNfhu8MjViqQFoZtuBjOxscbFlrLYKzGN1C4xpCLn1Uvrn6DSF04QjX8yTJKHN3gQpVn
 LxlA==
X-Gm-Message-State: APjAAAU/tOcjIFA2NozlvqSh0z6b0VEl5LU0XkQ9Hx4xofzRqEddyV6P
 2BrDTO18dfOuUGfoXB11Sgui2UNappsu3A==
X-Google-Smtp-Source: APXvYqwVuQ8kkNxnBRy784TJg1uf51gSqqqMi2MLdvspQEx07DEtaGihCYUASWpu2FEcynIe5CmtPA==
X-Received: by 2002:a2e:8849:: with SMTP id z9mr10541424ljj.203.1560776725607; 
 Mon, 17 Jun 2019 06:05:25 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id b25sm1757529lff.42.2019.06.17.06.05.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 17 Jun 2019 06:05:24 -0700 (PDT)
Date: Mon, 17 Jun 2019 05:16:55 -0700
From: Olof Johansson <olof@lixom.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [GIT PULL 6/6] Broadcom soc-arm64 changes for 5.3
Message-ID: <20190617121655.rel3rbrts5glrv2o@localhost>
References: <20190612025028.13118-1-f.fainelli@gmail.com>
 <20190612025028.13118-6-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612025028.13118-6-f.fainelli@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_060527_388357_8E5EC478 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: Doug Berger <opendmb@gmail.com>, arm@kernel.org, arnd@arndb.de,
 khilman@kernel.org, Jim Quinlan <jim2101024@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 07:50:28PM -0700, Florian Fainelli wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.3/soc-arm64
> 
> for you to fetch changes up to 724cf0aecb0d839b0b5865901b02a742dcfa6ea4:
> 
>   arm64: Enable PINCTRL for ARCH_BRCMSTB (2019-05-31 10:34:38 -0700)
> 
> ----------------------------------------------------------------
> This pull request contains Broadcom ARM64-based SoCs Kconfig.platform
> changes for 5.3, please pull the following:
> 
> - Jim adds the ability for ARCH_BRCMSTB to use reset controllers
> 
> - Doug adds the ability for ARCH_BRCMSTB to use the PINCTRL framework
> 
> - Florian enables the use of the BCM7038 Level 1 interrupt controller
>   for ARCH_BRCMSTB

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
