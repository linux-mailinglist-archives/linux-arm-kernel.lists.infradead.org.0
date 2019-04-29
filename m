Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5441FE872
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:10:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T6TEsa1oI6+UdFvBxV3F/8+VjX8HXLGgWL3sb7oLlwM=; b=g28oBjF4wNpEwM
	0QhoQzIbiTV51cAMAan6pEwzi3EDQnWjDTHXrDUzkyVZcw01RhAfQBFFglW0QqzovxYCm5Mu/FUVG
	BZoe4TPUGRF45WhaYcE+qidTwrsVIy+kSnf3Y2/q4M2PUUosvy6+79j9Oyk0ugU9fB85e84Ej2XZH
	/kmr1zyyzKVOuUww4d6TyZ6wQpDZ7tJvpeHKFVh0RrCNFdTQzRRWjVj2sAWQMvi+qr81m3hw9Svyc
	W1qvYi+hlEcCz7gxL3RaRZBmM6gD9A6nHv7t9KxRW0PcK6yID0dlozDWAf3DUpky0yEc905zm+4Bz
	WctORjjaRGdLi/Ir6AJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9nj-0006f6-7T; Mon, 29 Apr 2019 17:10:47 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9l4-00031t-92
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:08:08 +0000
Received: by mail-lj1-x241.google.com with SMTP id b12so8885876lji.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qsbgXCN/PwYj7wCV4kaeVvpbuS4dGG+2oO3ZVWyx0hc=;
 b=PiLSnScrIBGywTUMriDmFFAkHfNSpOHYqyIfYD60ECJ7BDolJiLVzVdBdobW+WWIfj
 LkfUluNs8hoA1/aDBV2ylDUqWnKur2Se6+3jwcLlfNjxsVKp+u4K30FQBDNIwxwninpD
 puENkSSwPbW0KjzcoyiJsbZN3EekCycvvSJUISyffzr3QPZPOAaQ/NRyJXvEWQd1RQ+9
 9Vfh6Zh1XyiIZkUChT9waBFJ0SbHVXskxIQPyDm06k9qP3Xlg8O1xebiW6vBpSmn0vLn
 oIf5mu/+oR7camQ2t6QUNk33MQ7GuXpkUT3HWxg7/EQC9DGpWXoOQPP2zhSf6qL4KqDE
 PAww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qsbgXCN/PwYj7wCV4kaeVvpbuS4dGG+2oO3ZVWyx0hc=;
 b=EkGZwlzFDCP4xzWZYuOh5oF0UL9+z9N1HT6MqIkUBMKRaYNMBsN05kbv74skUOW3oK
 SWmvLpvZXgDVFoQbN6rltKWhRdy5WPyqNZLJ3b3VP8Vrd/JEIsXLHZPrVF+ExozHWJEy
 TYXSduS33NDq8YWXTbkY//pLO2874IXjnGdXbSy6SyLgbLZe0qqfPOeUZHboo3Pq/AGh
 PAV1ChVqIF+879Suh6mEf64v80r0I6jW/ey/IC1nm5cNsnvKyDkWniB9qyi8dvsFVMcJ
 P0muziuWcsA5ZOjsPqS3qSRmr7WqjYFodaKEHKHsKsBvWNj9mOzQiZZ2Fil1EcCQzwLX
 0HfQ==
X-Gm-Message-State: APjAAAX+dXGn7BYj9gsDWWsnBGs7TBC+swtTRGiSDuJn4GU7poSfZ0Q+
 L1rog3FeYwX0gsjjrv7fLbSL0V/LTpQQsg==
X-Google-Smtp-Source: APXvYqxzdDKJcwTUmPPN2VlnkF7tSrSy0PkkkXggymwTSIeON95ezsj6xHpKw+R91qTqOhx/a4FWZA==
X-Received: by 2002:a2e:8050:: with SMTP id p16mr17833478ljg.160.1556557680522; 
 Mon, 29 Apr 2019 10:08:00 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id p25sm5849450ljg.9.2019.04.29.10.07.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:07:59 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:43:54 -0700
From: Olof Johansson <olof@lixom.net>
To: Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: Re: [GIT PULL] ARM: at91: SoC for 5.2
Message-ID: <20190429164354.bxngd2shia4qhyuv@localhost>
References: <20190423062243.27437-1-ludovic.desroches@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190423062243.27437-1-ludovic.desroches@microchip.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_100802_782665_27A39425 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 08:22:43AM +0200, Ludovic Desroches wrote:
> Hi Arnd, Kevin, Olof,
> 
> Changes are about PM for the SAM9X60 SoC.
> 
> There should be a conflict between "ARM: at91: pm: introduce at91_soc_pm structure"
> and a fixes for 5.1 "ARM: at91: pm: introduce at91_soc_pm structure" which has
> been solved in linux-next.
> 
> Regards
> 
> Ludovic

I just noticed you're not using signed tags -- I missed that on the DT branch.

Please get setup with a key and use tags, and use those to describe your
pull requests. Given that you've got kernel.org access you must already
have a key signed by people so that step is already taken care of.



-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
