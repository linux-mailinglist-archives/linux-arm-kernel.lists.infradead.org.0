Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E07A0A5ADA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 17:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9KMTluikh4mpGcSVJ502+tWxQiGIfj0mTDsWVGlNEXA=; b=auwrxSZOAQ2sUC
	4j7f7W5jDKe5bq/sFMlT0wP7mynXOz4N24cdKHFYEYQBAboOqrxPJomJVvbu4W65H/ntyzx7RJ5az
	U2q3tOyFGVtsv5QvUbiiz3o0glIAZ39m7dWDJbQw6m11PQJIIC3GWQq+Yqbe1oNXQ7noR8WXtl8JN
	fMzh8eSGLSpZrWw30JVeaMW1GIbRy2uhei5VAt1XpSQFPRaVq16GrR0hVhch4/A3TXlsRcldLmd8W
	pTbQVkPOqPgyfQ/keQwqqmPPS3WXNL1FLSj4ZWZiXz7xpIILc/d5QdRGlx4eslwYBItqOuG8CHH7z
	hlSQBy/Zqt0NM74zsD0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4of7-00005y-0M; Mon, 02 Sep 2019 15:54:37 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4oex-00005e-NS
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 15:54:28 +0000
Received: by mail-wm1-f67.google.com with SMTP id k2so13669447wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 08:54:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CDEjyCo5ZOdNRThV6Hb6ycwISVyUSHmo+4YRzMBGWHg=;
 b=dtou44wi0iv1lp0TuQ53TyphnEiYdG9QtaCfn4OnpPgdybm3akXy8SwA8E0gcNOoYn
 SVZVr4gEsJrOA9YvAP4K7/QLrCD1fIed17dnNX3lIPRuTLcCxm0t/1hyrs4hXyFm+ylg
 BhJdsi9dFYFFPPV0qU5aZMMNDTZzAn/SxCV9w54vRIT11tNAJUqi4o/+iMZhf5ZmRTFn
 92uMGJ286Gxtw/W0PF/E/mBrrZa7LkhEj5SxLVVMrhSJnzqOzANBH2OF51hMpKlwSexe
 C1CRroRAIXEkt4KHBC6QkiWPu91WRZKn4YpMfInO+WChjT3uR1FLBd6f9NX5Gydxq5y3
 JDbQ==
X-Gm-Message-State: APjAAAVVrAVwqEPWqEb/sgghG+IuCWWBFI62F1QXB+DQLeSjbtNp2sMT
 CZg/scVY9tC1i3oiEeHLwxA=
X-Google-Smtp-Source: APXvYqx5FbD9fwB4WVj+9PkR1nusoj7UGQlQJlM6QgP3CAXQpfNCDUCzlNmAdaCWo6vT+tMLowM9zQ==
X-Received: by 2002:a1c:f50c:: with SMTP id t12mr37157794wmh.49.1567439665822; 
 Mon, 02 Sep 2019 08:54:25 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id
 b194sm34131397wmg.46.2019.09.02.08.54.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Sep 2019 08:54:25 -0700 (PDT)
Date: Mon, 2 Sep 2019 17:54:23 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH] ARM: multi_v7_defconfig: Make MAX77802 regulator driver
 built-in
Message-ID: <20190902155423.GC9289@kozik-lap>
References: <CGME20190830130425eucas1p1b6806fad77366797271e70ce8ef4d296@eucas1p1.samsung.com>
 <20190830130416.10420-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830130416.10420-1-m.szyprowski@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_085427_762990_1F7F2701 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 03:04:16PM +0200, Marek Szyprowski wrote:
> Maxim 77802 PMIC is a main PMIC for the following Exynos5 based boards:
> Odroid XU, Chromebook Pit and Chromebook Pi. Driver for its voltage
> regulator is needed very early during boot to properly instantiate SD/MMC
> devices and mount rootfs, so change that driver to be compiled-in.
> 
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---
>  arch/arm/configs/multi_v7_defconfig | 2 +-

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
