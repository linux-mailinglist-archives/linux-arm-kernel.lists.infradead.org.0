Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD1054FE3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:11:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NMjHavivRgWvfHqjO6Mv0vUdgND020b8a6MedWYgvn8=; b=pktRL5Mk9WDEQS
	wvO4GoR+OmU6xMQHS+brDAW47mIkmHAnukgqwSt1HbAwQ7/Y3Qe0RS7S0EfMYPpJykWIdntZGt8Kt
	rRM6c2q53XCWh2iM3EVI9X5T/BQ/7jtdmkgQYu3L8g5pfW0sWiTFXM4DeX4Ty8PfqpmK+C5XGHAO4
	62Q0ljlAWdCi6XQsp/TyNa5jxGBpROMeduFjR16VaAUTmxfW0Btr0ccoYy1AV4h57ChqYdpWtyNYw
	dv++KSxG3Fcgo4ILz48C0mPdMguz2c2LXGfIpaEP7XMcjIxh9G5J3COVxpKo22mVgevVP1itfH7qP
	+xFlx4QSQFj8E56klPXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflE4-00005s-Ue; Tue, 25 Jun 2019 13:11:08 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl8I-0002Il-Ka
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:05:13 +0000
Received: by mail-lj1-x241.google.com with SMTP id a21so16170789ljh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HiDDaGbLbNiizAYEPIqiYku1CUXUnvmvT7gGstSM7Hw=;
 b=V3fQ3g7cV87ib2au8etcejEm6dFtOJzOFODfm1C3A8qVJ9BkRCEYQV/bbv7pOXN0L9
 Ah5xm1VXUML9zyBoXjA62FqazPzNPOBhKTLh6WibpBV3mQKvOwVIO/q4uUbZvaLhmKmP
 EmFaNnfBkdU4AnwVslQHoFe9XuJL9+sVr1ur0KXjYNcz/7G3H44QYnEN6Ty4xVmZxQT8
 mA8zw8jIfYDgBXyXpAW25LnobxO/41Hkypq39rG1s7tED/38/HanmLAvYNBe9SgvjoOn
 JXv/DtjvC+MQO840Lx/G/NOaXbFU7t8QNgnf3YIj4+2hMzEBdVinAX7OyTVoT730Pocg
 suOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HiDDaGbLbNiizAYEPIqiYku1CUXUnvmvT7gGstSM7Hw=;
 b=tbAIEJKZyHQXc5MwGGL2hXsTrycFpIS2O0Z6r45ZXVTgZsxIJZTiIZp9Q/rzTy/5xN
 hQ2J3AWryO41uieqmqdEJS5LsoFaDF7sJJRq1yqqdc+R1R0F64ewH6snEDrRMbZTWngx
 UvLoaItFJKBVrwTTlEA+jk5sbhYEgolAGNqPk1g4rltHjy8HzhE2Ne5X+x0SqeF/19/7
 +pAaL6VnkvStLKPIcW86+KjLz6IR/58vIZSY+jWIS0cm3VFmopdHAG1BGsWIUbsFUmEH
 8Mzka8JP9nD8m76PSrD4tlf8dRQ9oWtwf8cgZBccUnFRKY3Bo+0bAykhvYOkmrFu9TQb
 v69Q==
X-Gm-Message-State: APjAAAVX4f+cDBjsicCZbRc+4jeoBp4SNcmJr149n18qEE7SC3PpM45G
 le808/LE1W/CvvjjjJostWKxpg==
X-Google-Smtp-Source: APXvYqwyLOVtv56HkjnDiOnbOFU0te1wyZEj9DGE6nCBXpmWzbHZLR/QmhZUF5joOKsTsrrdfCUMqg==
X-Received: by 2002:a2e:50e:: with SMTP id 14mr66569975ljf.5.1561467907522;
 Tue, 25 Jun 2019 06:05:07 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id l11sm2266959lfc.18.2019.06.25.06.05.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 06:05:06 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:51:03 -0700
From: Olof Johansson <olof@lixom.net>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [GIT PULL RESEND] ARM: at91: SoC for 5.3
Message-ID: <20190625125103.xan7nklv4gh6xw5o@localhost>
References: <20190621212019.GA29971@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621212019.GA29971@piout.net>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060511_116992_BCD59A83 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 11:20:19PM +0200, Alexandre Belloni wrote:
> Arnd, Olof,
> 
> A single fix for a warning when compiling with W=1
> 
> Please disregard the previous one, it doesn't point ot the correct
> repository.
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux tags/at91-5.3-soc
> 
> for you to fetch changes up to 95701b1c3c8fe36368361394e3950094eece4723:
> 
>   arm: add missing include platform-data/atmel.h (2019-06-20 12:15:47 +0200)

No worries, but ideally please do the resend as a reply to the original so they
thread together. In this case, nothing had come inbetween so I noticed it in
time. :-)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
