Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9662661774
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jul 2019 22:36:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/y3/GdV9VKF/8ri4/fZd/aSajoNdf8uSdsL5be9l2HE=; b=QcYn7kn3eWIbFr
	uK5aTkwlKebUu9iDOu39QLHMR+CNEezxY2oIBiS/1OeOvo9skrlhXtXS9rnXRGe0adolDQJ9rfbdN
	g+vTGjhZAP0crE5QkgRr9EZB77ci2UT32TUBWqbR8K5aFSKs+Thz0tE4epLI6MY85M4syc5vvAJ6F
	zrY0oJI5t7gmUPfRIhlskgREMWW8snkzndLUq/v2TgvHAdcrcrarHrlJamUbS+BPYVjIpOWJIxIye
	SlBNJfPEMV1+LCH4TLkvr6ksxqzLHWygp+tzXrgI77tTS6mud5Daqp/Q7KJCmD9LGduNHZKbM29Ml
	MuBdwvIgW8WwD77qoRFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkDtU-0005US-Ha; Sun, 07 Jul 2019 20:36:20 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkDtA-0005Tw-WE
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jul 2019 20:36:02 +0000
Received: by mail-lf1-x141.google.com with SMTP id b17so5875162lff.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jul 2019 13:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CPIJZQwW/FI43UGQYwYapti+p0y2P7uNM/osNJ5Hxk8=;
 b=gahvQpaWIVnkaAZoc+//PaCsSgRurVLckY2w7I4LNpHCVDud9gBWzCkPAOU69NLAKN
 J/SSFfuppAdsFvR6qrVUmaNTLy1SpY5tzhq/qRSKeJZExvY5qJitQbi0qQ2U5wlfCtYh
 KtGAB4tInFse1JnjnBpJP1Qbfbi3sEtRUGtvGbWvSyBPG1cp0k8XhOvInSPmwiugO305
 Tw1BLrJ3TT13txdkXWCqB636eFjv8e0FksmOxn+brXAB7uqDRapm/E3JBtpclOp6x/Dy
 S53Gp1wxDiaR8I2KGHpk4g+5m+8WUIiocjef9o3eg3m+tpBSzY1injl5jIYSYfC8UBqV
 wsSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CPIJZQwW/FI43UGQYwYapti+p0y2P7uNM/osNJ5Hxk8=;
 b=gWd9N2YxIfYDIoVwmZNP6lpijvtIJEPSrVSCA+bdDoFVeJm6XeXySiohwfzdUvQusS
 m/TsWw/BbGlMbB8IeXd0ygMeZNxVpyo2Gg3g1KjkYli/SXHT0LEAKccanVF84MrZtEb0
 qdBb2wdDNl7/g/45LOBCxz22GSL1GKNhCOqy81cm+u+jtv0Bo782yp7jg7+nEVCsI9gu
 ao/EvQe25f0wPvQPFOGU+CCEBx012ZQ97gBcuNT7fP8y463tGoP9wrimAfBG3jhM51Fl
 KeA83GN+8YthDjAtQ66xFk3D5cE5zDG7YkhrxZnLNxeNZMhpyapURO9/eBWTe3VfcC7k
 wkdA==
X-Gm-Message-State: APjAAAVYAPlSZ4ukhCuOlNgnDX66VA+ILEikkucFd2Ps/yD9BXWcZemB
 Z01QqENCcaBJ9IGDEEJR8VlsCg==
X-Google-Smtp-Source: APXvYqzgu+JX9Cks72JMfNggltTrkkVHJCJTPY0I6PKNzLLFJfYrQrbIXgiYEzWPBVkoPSDnYTXDGQ==
X-Received: by 2002:ac2:5a5e:: with SMTP id r30mr6822454lfn.12.1562531755053; 
 Sun, 07 Jul 2019 13:35:55 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id g5sm3197074ljj.69.2019.07.07.13.35.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 07 Jul 2019 13:35:53 -0700 (PDT)
Date: Sun, 7 Jul 2019 13:33:19 -0700
From: Olof Johansson <olof@lixom.net>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [GIT PULL] ARM: dts: exynos: Late pull for v5.3
Message-ID: <20190707203319.qqzeb2mwb65p7gn7@localhost>
References: <20190707180115.5562-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190707180115.5562-1-krzk@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_133601_100239_4BA39100 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, soc@kernel.org, arm@kernel.org,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 07, 2019 at 08:01:15PM +0200, Krzysztof Kozlowski wrote:
> Hi,
> 
> Late third pull of DTS changes, on top of previous pull request.
> This contains important fix for stuff merged recently, one cleanup
> and two minor fixups for regulators.
> 
> Best regards,
> Krzysztof
> 
> 
> The following changes since commit 13efd80acaa4cdb61fde52732178ff9eb4141104:
> 
>   ARM: dts: exynos: Add GPU/Mali 400 node to Exynos4 (2019-06-24 20:03:42 +0200)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-dt-5.3-3
> 
> for you to fetch changes up to 841ed60264b3d37d5bf3e32cff168920e4923f88:
> 
>   ARM: dts: exynos: Adjust buck[78] regulators to supported values on Arndale Octa (2019-07-01 20:28:37 +0200)

Applied, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
