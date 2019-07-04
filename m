Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B475F9B2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 16:07:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hE1l2k+BL9CWIiwOudSUOLXeWV5mWZPb1CV4yeldSDA=; b=tlXNbJzu81n6bL
	UelBpjIZm5ieBBjFD7fyVWJxFnKFYujMbaM9KTLeyXCs7Wj3j7tFJoOAFWnr2hFebM86WPJyOHoEJ
	NCeY0nlMPPYqD36N5TCb7e7TqaTPuojhLtDQbw8xtw12kwLqa9ynmsIZVAqiWcpflwVCEGi3pkedB
	HwpxA6Tu6R5y+8LhcHNl+at1y4f3OqvVlJRHJRPe8mJPv06gjp8eodgOpJDjhIR7xjHN+N8utSN3v
	kOZMJH+7GTCS6do+E4mpw3SoNjtZ4PK9FSVbGEMUdPZQ/XowZB54Qk6RpyVJi6Cg+7FnMwPLaU6x/
	uVCyACDD5AVChRfNAjIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj2Of-0005qw-Nd; Thu, 04 Jul 2019 14:07:37 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj2OT-0005pR-Om
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 14:07:27 +0000
Received: by mail-lj1-x242.google.com with SMTP id m23so6266556lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 07:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QLABmz7XD5Md9n8S8fFJqAE6BsCziKvSLjVQgpA/V54=;
 b=aM3e4V+eRqk2hASwPZAqAt6ZuaSjgwka6a4sHya88ONxDteNjUP6mS+EUWkpIIHgQ5
 Gag1BW6ssbIsCvOeLifDhZj5/yX2cQhDHNokgwJqH9p5OQCr/iAtpcrqwaugHyVxq2s5
 2ZXJwjuTYHD5RUCeO+3mf2g1jaC0KyljhRCzLDZef9G/FIEsJZLQFlXergOle2ut7Awl
 /w4EC9TLNRwVtXz5yj/rAZ5GkGUvGxmUlAoBctVCm8UWbpEccgcxgKUAoHgc1nY76gmy
 egALDf7tRlOx/UYsL45GBZFx49OdYlARlxrNQR2hkBrEZDMXjaNmZzmcSxd4LNJYI/0h
 9l6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QLABmz7XD5Md9n8S8fFJqAE6BsCziKvSLjVQgpA/V54=;
 b=Vi9MeWH49/X9srherqcdiPkPCPMV1RxxBjgI1Ycpq3VFnyXQk0uU3UGxnFkYDWqgg5
 sS/At+qOSkhqmbKiwWZsiYj2J9dxF2li4IiZPD4+Dx8of0L/6XZRzBm80oRLFOXz2K/e
 63fBBoFCjl4IOZ3cNo2C12wQGdvyeUMxHGF4RvUvv+w4VTwKZ+TnqZ+HrU0U2Wti3KzR
 JGphCADUgD2vDOTRQNE6GldaciWNHuw0DQSJL5vAW2bXGPESt+ZzC1jNKiS9x76VdKzJ
 /nQRtjj8Pa/xdXJTCjrg/hdA8VfPWfUPLCCalZn/URUG0Mb7g9gdNi0hl8m1eteeiLdD
 xWDw==
X-Gm-Message-State: APjAAAWFbmYJlNLTm0GR7AaBHCon/bSsLsnXmb8nihbG6Yd/JX9AYclD
 ngaS1Jqfb40vWT6sr7k/9hQvg+I084IGdw==
X-Google-Smtp-Source: APXvYqzXCIpvOvc4tpBOaNMtyhzgcQ+p7efI6u8jZGk43eizHGvGqXZjqEugiIvWNS0yd44aH2JGxg==
X-Received: by 2002:a2e:6d02:: with SMTP id i2mr24276634ljc.124.1562249243438; 
 Thu, 04 Jul 2019 07:07:23 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id h78sm1158927ljf.88.2019.07.04.07.07.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 04 Jul 2019 07:07:22 -0700 (PDT)
Date: Thu, 4 Jul 2019 07:03:04 -0700
From: Olof Johansson <olof@lixom.net>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [GIT PULL] Allwinner DT64 changes for 5.3 - round 2
Message-ID: <20190704140304.p5clirrmnnlrmv3c@localhost>
References: <20190704065326.GA19010@wens.csie.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704065326.GA19010@wens.csie.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_070725_832010_553A828D 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 02:53:26PM +0800, Chen-Yu Tsai wrote:
> The following changes since commit 9164665a390a2a42e9f56094eeec8c4a52748723:
> 
>   arm64: dts: allwinner: h6: Add DMA node (2019-06-12 15:25:59 +0200)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git tags/sunxi-dt64-for-5.3-round-2
> 
> for you to fetch changes up to 0bb9d1876c0605815ea0452f68cb819a775a75f9:
> 
>   arm64: dts: allwinner: h6: Pine H64: Add interrupt line for RTC (2019-06-24 16:07:14 +0800)
> 
> ----------------------------------------------------------------
> Allwinner DT64 Changes for 5.3 - Round 2
> 
> One extra change wiring up the interrupt line for the external RTC chip
> on the Pine H64.

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
