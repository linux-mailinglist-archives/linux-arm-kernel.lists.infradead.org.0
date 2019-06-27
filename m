Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C1357C6A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:48:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jS6afbRP0kS2cRxLE0ZCSWb5B+lv70t5MfczBlTraeo=; b=Bf0I9mvH4yt4c7
	HOYXq+y/1rgTAyk6CnE1d9ddQPboYI6D1vUy7bkwBVCR98tdwZeZe9vNcHlyfLNAIY0Kz//YFEd34
	RIxbgeILLqMSXmpa9pjSvP7/2nYzo1ftPbE4h8JoUqYcUuEWARUEb4/nqj9JdeUJcaNlQrttfqdOJ
	IT06SUnUlgHecEhbhiV7WQgXZ3VC8rBkBsnX0q15tGNi60fOJkjP9d+0V/Q9z055yy0dE9YbSXDHM
	V1NiZhKG3p4fMqmubQluJFbq3sOhYJhYy0pIZ+ntyhtcUlVtll3S8Syk6gJ2hD5ZKw4WHafKRCvAI
	gcvPahxqF+gbLiKJejuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOCk-0002fz-FF; Thu, 27 Jun 2019 06:48:22 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8M-0006KM-Nx
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 06:43:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YqSJkouCdbmz4bvieX9MmvoCdaOvWPYtwXCJEllW7aE=; b=WHJ8vd4kLAzhtUDx0NeOXAAl0
 71Ibb0LdJJ1MPtmTTV0Du3Nj1BhEjmxtNyl4mGdG3DwU7fLQ02EKtg45rbiY4NvAubSsSTd7RvzgX
 uFfk4PZ+uxk2q5to9f4yqK0sjRzZH8COsXaVxdWo3Ixv4fXLDBsDYIOylQy45n7jPAGWgc1Q8hs2y
 W9Zt+hsACYR/xIRUadwDRMtH+1vK7vpIbI/ZikGCmNL1dogy0tjXKo98w95ko9zzvxhoBe4/HsWZA
 9gYDsPoGq2ei0j2QyxNnTrir0kc1J+zhRuQY6plS/vr8dqVDbGTj3HGzwxwSSdnNclKSWtFDb7zMe
 KaauOdU6Q==;
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgKFZ-0005w6-Il
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 02:35:02 +0000
Received: by mail-lj1-x241.google.com with SMTP id 16so624174ljv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 19:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YqSJkouCdbmz4bvieX9MmvoCdaOvWPYtwXCJEllW7aE=;
 b=ofOF3Pcn7Fsnx8bfodWEdspjWibel0QtIkMI76mLhMU7ufARyT4XCtgDrRSrGGAaPH
 K81LLtmZ6Cxq4q9nNfAoZuEyOD+4GJ++Q3J2LwIOnvLbG2irctb9GISDQhF2Rv4Y+TKM
 PxT8lCnp17sR7UZqooYTXhH7Q0sMtRDufezoy1+MEK2zb44VvZ7A9W4XkzsXk1N4fscL
 Lr5vh7kbqV6fBSWJSEFgua0OQFEokSfI9D59D+DB/iOunGtmjf5z/bLOCuGuD9/fHEZ2
 85jcYLHjrUu26mXDn0xj9dm1tu1VJ2S2KDh2G/fH2S2IcQ/R7XyzAm98dVUB1UBAKBD9
 PUrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YqSJkouCdbmz4bvieX9MmvoCdaOvWPYtwXCJEllW7aE=;
 b=QkqMamieqV9OoTwWm9//4D2XVNbuJ/msCB0FRYaqK4uRgW7jEisbRRqii3p9TGt5VA
 zMJNkBC1rWlKgthnatzq64wnwJpP0bDv7Wq2JjgYiPLO4ZGhRTnfLnZBmmMvA1tE3fMO
 eeaDBGh8iBQaz1Jiy4UK9PRyFlhoTLMZol5971sgkb1ex/vURRcAJse43chkruOh9ek1
 h00z8meBOZLf6jb3GTVgMCgGoJ8js7T96+lj/bRHI+FtxfHdCezYj8j9LTdg0zWCXiXW
 2ZxX5lfnWNl999aCwLuLBZpo2rwq0E0ag8PpD69+/TRTbUN2+wjPBTTYV3Rx6HPtzl/s
 vkcA==
X-Gm-Message-State: APjAAAX/NVlou5oqN3XSNyBK1nX8mEoDboHzIrVTKngs7U6XNzw0jhqg
 EqayWAA+hMzTh5SMkIIZ/CaogA==
X-Google-Smtp-Source: APXvYqzUo/OMOEtxCgRTsVH9uHTyjCrqs+2MYNudDPes4ncQUwwtP9ffEH64O9IdQtyZOyUc3YK1nA==
X-Received: by 2002:a2e:7c15:: with SMTP id x21mr872691ljc.55.1561602836467;
 Wed, 26 Jun 2019 19:33:56 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id f30sm106397lfa.48.2019.06.26.19.33.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jun 2019 19:33:55 -0700 (PDT)
Date: Wed, 26 Jun 2019 19:24:23 -0700
From: Olof Johansson <olof@lixom.net>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [GIT PULL 3/4] arm64: dts: exynos: Pull for v5.3
Message-ID: <20190627022423.u36lomov33w3smtr@localhost>
References: <20190625193451.7696-1-krzk@kernel.org>
 <20190625193451.7696-3-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625193451.7696-3-krzk@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, arm@kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 09:34:50PM +0200, Krzysztof Kozlowski wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-dt64-5.3
> 
> for you to fetch changes up to 4dc2a25d058d71f39e41da986777327b423b92f1:
> 
>   arm64: dts: exynos: Add GPU/Mali T760 node to Exynos7 (2019-06-24 19:52:48 +0200)
> 
> ----------------------------------------------------------------
> Samsung DTS ARM64 changes for v5.3
> 
> Add Mali nodes to Exynos3 and Exynos4.


Merged, but updating the message to Exynos7/5433.



Thanks,

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
