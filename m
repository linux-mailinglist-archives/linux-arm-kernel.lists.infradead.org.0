Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4D4BE58A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 21:21:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZrXr6/43nR96PAODHHygerNAHpEiLp2HDjMRlNMOzE=; b=Ns2sLG7LyINic+
	ZTiq9ghSMssEWOmC2lHDG5FEmengQVoKOMK2XS5vqpyUpeaxrf/bgD1Kn+rSGgQohe8dSka+5yMy/
	15N+xLS+Aifc6Wf4fW/JWG7sRtSJo7214u4Td/uo7me1PQcBFpJks8C3ObkwSeAXK2j6CZ95R7CRd
	8zWlBHCPY6Xy+74p5x3D63EDscbXxkw3etFZ2qSmWB3pTsDM2zIfxamccyNBzBdkN4mjvgnIw9Kr0
	gFm6ubuKML+EoTmfOpen6FdmgerPYWjybuTvVf4OG4Dl/JFbSYJ5gyyZLh2uQ4VUmqb1Fm+Kiyj4/
	/rP751mPERmWgsUoIFGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDCqb-00054v-6D; Wed, 25 Sep 2019 19:21:09 +0000
Received: from atlmailgw1.ami.com ([63.147.10.40])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDCqL-00051C-64
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 19:20:54 +0000
X-AuditID: ac1060b2-791ff700000017bd-b6-5d8bbe11adce
Received: from atlms1.us.megatrends.com (atlms1.us.megatrends.com
 [172.16.96.144])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by atlmailgw1.ami.com (Symantec Messaging Gateway) with SMTP id
 03.CA.06077.11EBB8D5; Wed, 25 Sep 2019 15:20:50 -0400 (EDT)
Received: from hongweiz-Ubuntu-AMI.us.megatrends.com (172.16.98.93) by
 atlms1.us.megatrends.com (172.16.96.144) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 25 Sep 2019 15:20:50 -0400
From: Hongwei Zhang <hongweiz@ami.com>
To: Linus Walleij <linus.walleij@linaro.org>, Andrew Jeffery
 <andrew@aj.id.au>, <linux-gpio@vger.kernel.org>, Joel Stanley
 <joel@jms.id.au>
Subject: [v1, 0/1] gpio: dts: aspeed: Add SGPIO driver
Date: Wed, 25 Sep 2019 15:20:48 -0400
Message-ID: <1569439248-10430-1-git-send-email-hongweiz@ami.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569351740-6285-1-git-send-email-hongweiz@ami.com>
References: <1569351740-6285-1-git-send-email-hongweiz@ami.com>
MIME-Version: 1.0
X-Originating-IP: [172.16.98.93]
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrIIsWRmVeSWpSXmKPExsWyRiBhgq7Qvu5YgxkrmS3mrF/DZrHrMofF
 /w+7GS2+75/FavF30jF2i6ZDp9gsvsw9xWIx/8g5Vovf5/8yW0z5s5zJYtPja6wWzavPMVts
 nv+H0eLyrjlsFoem7mW0WHr9IpPF+0+dTBate4+wW9yY0sBmsffeZ0YHEY+r7bvYPdbMW8Po
 cfnaRWaP378mMXq8v9HK7nHx4zFmj02rOtk87lzbw+ZxYsZvFo8Jiw4wemxeUu9xfsZCRo+/
 jV/ZPU5M/87i8XmTXAB/FJdNSmpOZllqkb5dAldGb08rU8EL1orpswsaGM+wdDFyckgImEjs
 uXedqYuRi0NIYBeTxKkN0xkhnMOMEqc+fmUFqWITUJPYu3kOWJWIQD+jxPUdTWwgDrPAVlaJ
 7QeawKqEBcwkOqfOBbNZBFQlLrXfZQSxeQUcJG5dbmaE2CcncfNcJzOIzQkUv7z4A9gdQgL2
 EqsXnISqF5Q4OfMJWJxZQELi4IsXzBA1shK3Dj1mgpijIPG87zHLBEaBWUhaZiFpWcDItIpR
 KLEkJzcxMye93FAvMTdTLzk/dxMjJFo37WBsuWh+iJGJg/EQowQHs5II7yyZrlgh3pTEyqrU
 ovz4otKc1OJDjNIcLErivCvXfIsREkhPLEnNTk0tSC2CyTJxcEo1MC59Wrj1TlnSxR5PR4H0
 jeeUD7zzczCc/kL2xue9d7R7f7pOyVwYqm9ey7tkh4rj86+yooqnb8Z8ioxWaJF7bLugZ+Xh
 v1vPBx1qXLn81RLrsrVN9W+uN5exZZw/9OSA1hc/uxmMr94sfbFQ5ew2f93uCpXSro3Grz3Z
 ms9/vW73wuz4b2frVdeVWIozEg21mIuKEwFFarKcxAIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_122053_288335_2E10F316 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.147.10.40 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-aspeed@lists.ozlabs.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Doug Anderson <armlinux@m.disordat.com>,
 Andrew Morton <akpm@linux-foundation.org>, Hongwei Zhang <hongweiz@ami.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> 
> > The related SGPIO driver has been accepted and merged into v5.4:
> > _http://patchwork.ozlabs.org/patch/1150357/
> 
> Oh what a mess, it didn't add the necessary code into Kconfig and Makefile, also names it sgpio-gpio.c 
> when everything else is named gpio-sgpio.c.
> 
> I guess I have to fix it up. My fault for missing.
> 
> Linus Walleij

Thanks Linus,

It's not your fault, I misunderstood a earlier comment from another 
reviewer and thought I should wait until the driver is accecpted, 
and then submit the patch to include / enable it.

As Bart suggested, I splitte the patches. 

Regarding the driver name, following the gpio-SoC_name.o convention 
in the Makefile, we choose sgpio-aspeed.o .

--Hongwei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
