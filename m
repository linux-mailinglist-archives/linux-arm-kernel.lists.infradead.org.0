Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 783F81172B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 18:25:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pVb/mO0vv03pKXGVd7Pz8E59T99IMPcpGopPOJqvY3g=; b=PJJqcsnSQNoZaG
	HFuiEP3Svbh9qhfy0SkkASsfVK62f6garwaL5sJwthxGmm0jLChaiFLrulHJY5yrS5zAcguLdCwFg
	s3GyskAzu31o15X2Y8aWI05xN9axCK4WhumKU7FeuIVlh3v5jX3C/g2c/YytP+uku/46Lgd7Coah6
	IcbSDk5NPgp8dlsUllAp05CDnenWUwbXoLG5E59xGbhKNg+PDvGC+gyo3MR4cuZAY0ZIdSoUVJw9b
	IApzo3mg90z5EMXtdfEqw58BwjPpHpTIjxUFtWB6c6LkD47DrZFIKsHS0NUYXLA6F51NWz4+dDZh+
	d7KrFEAG52dTF71KrVEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieMmn-0002MM-0j; Mon, 09 Dec 2019 17:25:29 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieMmT-0001ft-Lb
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 17:25:11 +0000
Received: by mail-lf1-x141.google.com with SMTP id b15so11351390lfc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 09:25:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=W/QJ5ovOHc4Q7NQmlc4wzHJJBcoki7MUH+1DSWQU63c=;
 b=aGdC8bNygzNmZFS0MkVcG2q9mU+4yfymSLwjdyJeEUTueWhiPaGoDF5Y1v/1Y4jIEH
 8uRPyaxH8jivAGk7bbXj4AIRWX4diMdaWsR8tBFN/PMQpb2mb0Cig1zilqi5oC954XBF
 3aR9u8nHb6JjUYcADRDRXWnSDftlrXlAxqakCS9APSTFQWg25V/4XoOM0IiwOEtbHUP3
 z+JudUVWroFoquKrqjFVQbmcfHmZmEZCzHmPmbrmAMxLY9FfJj/NOEuKblh01UaESTmT
 Q30cxYQKK5+0kEByO4m7Zr0Ir6+DFWCoeZjm89KTlZPR1g60o61Juqm/W6UQCcBi3SD3
 fc1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=W/QJ5ovOHc4Q7NQmlc4wzHJJBcoki7MUH+1DSWQU63c=;
 b=LhHqWhrHskj++PE/plbkQsUwvk/oyNUtF/eKve+3nKKAqpzSwLTMOOS/GZfwOWYdhF
 LBNDGKn1VVAvLuNrPuUm0qCZNAlojae/l3yShfZDX3MHSK4kM5xWBdKKl8XFSDtHTcnf
 3paDB1NLWuOxx5Euj1djf3N8W5IUIIhJxii/w+E9eYVppD22aLohqpKbTNjg9jpliBP0
 1297axiCHoXpoTKQPi1OqeX98Pk/p8nFM7YlhOf3SlM7eSg1R6S132RMlUg+M8WO9DCC
 4YoClX9OyWf4VzsgHUVW4Ub7ZIfM+p4e6R5LXHgtJIAFrKgFLvVzLhc9TuQAJ34cb6bX
 VK2Q==
X-Gm-Message-State: APjAAAXUI6YGtlShIWOIX+EuAC2bGzWmtqwEfrnbs/iNRkIyjau6/3ZC
 sR0Mgfl44Gu8IhnXZDAkp9Z14g==
X-Google-Smtp-Source: APXvYqwdi5x5du1IVH+xwVTC4as4D6VV+lXmBmm1HEyRlHBFA1Xo9c3Y0t/S5G4V/y8rSQcrNmA2OA==
X-Received: by 2002:ac2:44ce:: with SMTP id d14mr11736754lfm.140.1575912304733; 
 Mon, 09 Dec 2019 09:25:04 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id h14sm45462lfc.2.2019.12.09.09.25.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 09:25:03 -0800 (PST)
Date: Mon, 9 Dec 2019 09:22:28 -0800
From: Olof Johansson <olof@lixom.net>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [GIT PULL] ARM: dts: exynos: Second pull for v5.5
Message-ID: <20191209172228.sdhzd52u7jbfmas6@localhost>
References: <20191119142026.7190-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191119142026.7190-1-krzk@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_092509_774533_3FD2134A 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, soc@kernel.org, arm@kernel.org,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 03:20:26PM +0100, Krzysztof Kozlowski wrote:
> Hi,
> 
> On top of previous pull request - minor updates for next cycle.

Hi,

Given that this was new features, and it came in late, I didn't merge it in
before the window opened. I have however staged it into arm/dt for 5.6 now.


Thanks,

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
