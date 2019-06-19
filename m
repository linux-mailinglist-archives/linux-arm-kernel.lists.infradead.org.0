Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A50704BC6A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 17:07:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oO8M1LWrvYcMm3iieDA/qUond3pZ8LuT/iFRrc1BtuI=; b=i1N2J1BCYQNFXc
	Eso2dZd1nppLM2k76naP70STmkc3XbV7vZ9VU/grpA7uFLijUNrQwciqUmQmCwvWCDcFfkau4b71u
	XGoMMMTEnjMjKGm9K2t2B+IRw6OW0Bw+TP6+aaH7Ki6FGXqf6JTK68XBbyE8znnL+Kdr53w/vjXRB
	ItC4Zv0cRN4Y5qHREfQJDnjURaRS9yF19f5aN+rrqxKn2YryC8XQPgLzNtwXkXHgdI2Dt48pV8cKT
	1Jg3+1P6ys3YNjq8bLwuk5wxxaKoAyr/zmqMbrBa3qNyib0Dm58Vec6WMVYizvsS+7su0Pd/jE6c8
	0U9RunIPDRmqZcGnbVzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdcBF-0002tE-OH; Wed, 19 Jun 2019 15:07:21 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdc9w-0002BU-TM
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 15:06:02 +0000
Received: by mail-lj1-x243.google.com with SMTP id v24so3571331ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 08:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ibyG5bX60xLf/QgXN/rIQ6uHQgmGprxM+/cTln4vbLM=;
 b=qDPrAoze7yjN7tb9Vzm/Frb+wUNsibV8JByFDq/HfnkJ313bNTu9K0tCuaraybSodO
 EVyUOlXDkJ6lMzD+veBxVb/0OtyU9/CnYBSiIOapR9jEx6Wf2YKa9Rct92jeqfXRcu2q
 L1HJ1/Dyncr2bY3oMZVampivb+jVz8rGNOYASawBtnK5/7Ph4yRQaULqMekzN4KRQv/4
 8Xsw2E1IZKD9L/XATSVcf2mLEtd5iM0dKlP85fjsBZ3FTSffksy0XnGLaJiteql6S0ft
 MIXGu0MBPcPmZVda3Iam8h1yWwPEKVSeLSDjiMhAGYnW8K0VvH8zqXN+2SsgHvOMJNsh
 am1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ibyG5bX60xLf/QgXN/rIQ6uHQgmGprxM+/cTln4vbLM=;
 b=J3Cm8QaWg71THg+82gCL9KrxZuPemhV1kK/lk9s3+X2r6V+nYXAL7ooBW1kL2XxfJl
 n8WeZsdYbAY0NmEUu3JRpjuVxks2Thr31JbZc0IvY9CbErPojVvDp1md2LwQxs2glBkw
 K1WAwlfzWovLw6peGHLkKM5GEP2kenKcGozZ4cfN8E9bnuiQ1rxwPyXd8tWuaw/0i5xu
 HgoTcL1SCUN/1Rssp32TdEK5auPt8+TB0pSSOCsCCtXSveJJz7+dUW2uG4nUofavE4Qs
 DrHgurIrTiO8096E7rDSUV/kqHrUoJII29a88BLqiOZxeGw1+0R9ttgqj8QXoQt7j3rp
 /Xfg==
X-Gm-Message-State: APjAAAVZry46fFh+uQGwccWtz7heJgxRMLMZOFXmNqMjRsjAG1DAVQLq
 843QYhJX2wpzEoS6dangkMeG6Q==
X-Google-Smtp-Source: APXvYqzJDv99mVWs86VvqX5o/RwXHyWCNeveKdAKlLtCN4h/+JqnERmwmNhgra9lNpm/APw4dXZdNA==
X-Received: by 2002:a2e:8007:: with SMTP id j7mr21387070ljg.191.1560956759016; 
 Wed, 19 Jun 2019 08:05:59 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id r84sm3467491lja.54.2019.06.19.08.05.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 08:05:57 -0700 (PDT)
Date: Wed, 19 Jun 2019 07:11:01 -0700
From: Olof Johansson <olof@lixom.net>
To: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Subject: Re: [PATCH 1/2] ARM: multi_v7_defconfig: add Panfrost driver
Message-ID: <20190619141101.lfkj62regpbt7dlp@localhost>
References: <20190604112003.31813-1-tomeu.vizoso@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604112003.31813-1-tomeu.vizoso@collabora.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_080600_975403_64A2A425 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Tony Lindgren <tony@atomide.com>,
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 Yannick =?iso-8859-1?Q?Fertr=E9?= <yannick.fertre@st.com>, arm@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Simon Horman <horms+renesas@verge.net.au>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 01:20:01PM +0200, Tomeu Vizoso wrote:
> With the goal of making it easier for CI services such as KernelCI to
> run tests for it.
> 
> Signed-off-by: Tomeu Vizoso <tomeu.vizoso@collabora.com>
> ---
>  arch/arm/configs/multi_v7_defconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
