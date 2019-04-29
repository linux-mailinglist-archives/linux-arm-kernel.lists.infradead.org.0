Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A680E876
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:11:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kVx36JKGLk5Ok/Q2py4id+U9PKJ6kOqUaPt7A7ThrpQ=; b=EWbjgtkq8q2xkZ
	v3uL9qP4seG++KhbRGC9nlBpQ6Sc2noWrs5f+5+lyzPbFZowoC5i2Fo5bWI/5p0twKRFZTaW4M1Cc
	HU5dqrOxRtMF6u1MuCXSaKLMCphL0t/ncaW9KDU5KT6P+iOd5XRfslI3kfUI85JGyJh2Ce1wi0ryu
	0iB0YpR3D/T0RFerKwF9x1QG07RVdGLcJexLX2HsbazjCeva+3DGYkGsnk7xQ28rca2d7n4K8K/lV
	Axyqlm5nZF1LT000M4BzpUuaav2BmwDBY8e+TWv4kd1GgdsUvd3tUBlPXHUMEw+GRSxSHt/k7Q59a
	puFk96tN8Wfe5NgB0WCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9oQ-0007rM-LQ; Mon, 29 Apr 2019 17:11:30 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9lF-0003Gq-4u
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:08:35 +0000
Received: by mail-lf1-x141.google.com with SMTP id j11so8618170lfm.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wOR2n/WKNBUlgLsrspMYLj33ij4ail9EpMWAzQM+fOY=;
 b=y1BPnATeiJgU4rbLMQZ4SDld1g79zw1NXRTsk+8h63rzjqInRjWUhGv0v6WovaaJSq
 VuhXW5O9E1zkcB/iwlN5yGm29aNmDlOjHjLp6Nlqr63G9n/jMRjRgprCl8LDMl+5nL0U
 OAOERZB4jzHMVIrDRt7+rIGiCEI6P7eXKZW6tHGugru+uQ+JRd/l4vkSoCHSmr1aBD6g
 3uYBojW4MMbtg8DxmTRzmHN/6md6zhYVzH2crjPNqZfZBheAJA45U90HBsX95pDARVP0
 mcKL5QSbdzrWlKH0KkOBwczqjSP6C5jrh8XUkadM2Dr95VhzHzP0FBGfYUmrNDqOec1S
 Ot6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wOR2n/WKNBUlgLsrspMYLj33ij4ail9EpMWAzQM+fOY=;
 b=QYYwUY1lieoV6YDZil1TZROehLmmnSNF+KUeiJTWgktdDujhits+iXYphVewT+uTzl
 zLAJmpE/9cffSYV7Zfc4rkgXIxhCoNi1Fnbphv/VZLEUvmejtZydHIJQ2225XxNmwc9Y
 rL0mXYtgSOnBuGJYuUugtVqQSxIrvTLCq5qCLdLMJsJnYTu+GPU5Mxtjt0dovzJoZuwB
 GbK5cYS2Ib4Tx3Jbmlo9DfUKkO0DgEEpI/UpOaUDulRQTwFr9HQ5B0KrfSKHPPdY9mFa
 kf/oWUZM/MKeQjM9Drw4HSvuzk7JoW0BppSQzggYDWcSdN3Y5Vl4ZDluB3beTst/41Ua
 cIvw==
X-Gm-Message-State: APjAAAW1sxl+Y+19i16mdDupbMM5MhTYmT61zJozfUrvXUi3QZmH1X8W
 jRuTPzB1NiKdFlU1OZSQc+GuRw==
X-Google-Smtp-Source: APXvYqxXXQVdOGHrHWTt813C818iLtBiUoofOLkGEeN7de2qupW3UQIVzhxdljtgdI/QBEPD1lS1oQ==
X-Received: by 2002:a19:751a:: with SMTP id y26mr12229470lfe.47.1556557691259; 
 Mon, 29 Apr 2019 10:08:11 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id z16sm8795165lfi.9.2019.04.29.10.08.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:08:09 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:52:42 -0700
From: Olof Johansson <olof@lixom.net>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [GIT PULL] soc: mediatek: soc driver updates for v5.2
Message-ID: <20190429165242.lzujqpkym4p43etl@localhost>
References: <269cf168-14c0-6a72-5078-0c8e307655eb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <269cf168-14c0-6a72-5078-0c8e307655eb@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_100813_540456_3C3449A0 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
Cc: Fabien Parent <fparent@baylibre.com>,
 Nathan Chancellor <natechancellor@gmail.com>, arm-soc <arm@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 06:14:24PM +0200, Matthias Brugger wrote:
> Hi Olof and Arnd,
> 
> Below you can find the updates for soc drivers ready to be merged for v5.2.
> 
> Please take them into account.
> 
> Best regards,
> Matthias
> 
> ---
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/matthias.bgg/linux.git/
> tags/v5.1-next-soc
> 
> for you to fetch changes up to 89e28da82836530f1ac7a3a32fecc31f22d79b3e:
> 
>   soc: mediatek: pwrap: Zero initialize rdata in pwrap_init_cipher (2019-04-12
> 21:57:49 +0200)
> 
> ----------------------------------------------------------------
> pmic wrapper:
> - add mt8516 bindings
> - add mt8516 driver support
> - fix clang warning

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
