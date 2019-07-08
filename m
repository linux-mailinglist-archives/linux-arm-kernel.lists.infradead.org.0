Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE5862906
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 21:11:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uHbuH5okz4NG0OfukdNDsPsKTHDEUja+XdzCALZeR94=; b=spHjqxqQAe7ek2
	BIS6CRvTUjlx9On/b1NdtMybhlE0DRp1OdXtlaw7GwwwLy1nrWGYEyUElPJ/blV9NDzk8S6dtFYZ1
	wQz7q5luAgFe/384fACDPn7VhxkOQIguZ4bRkmGUCeqdEIBCWTRxGUz5LQINoiyEDPBkk15wigJJf
	72le8AY4HdIrnaHsxycUkxXl3BI44K2BkFF2Lv+MaIshrc9Dh+bca8Fe1c4b4v2cuPkNVc2tmGJgF
	leQebIcDAOhIFT/CXiKygUB70qtNPeF9kw4y+uYfRio0+dZbS2WPla0gMl6CbFuANqew1wkpUOMcH
	aU2E2epVQgcQIvINFXVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkZ2X-00009x-Fi; Mon, 08 Jul 2019 19:11:05 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkZ2G-00009H-L9
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 19:10:50 +0000
Received: from [192.168.1.110] ([95.117.164.184]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MJmX3-1i4AFV1OC9-00K9mg; Mon, 08 Jul 2019 21:10:24 +0200
Subject: Re: [RFC] SW connection between DVB Transport Stream demuxer and
 I2C-based frontend
To: Marc Gonzalez <marc.w.gonzalez@free.fr>, I2C <linux-i2c@vger.kernel.org>, 
 linux-media <linux-media@vger.kernel.org>,
 GPIO <linux-gpio@vger.kernel.org>
References: <5e35b4fb-646d-6428-f372-ee47d7352cd6@free.fr>
 <b6abf5a2-3151-29e5-8eb7-c960580fd4ea@metux.net>
 <79b9bd5e-be05-daa8-0d16-d84a383138a7@free.fr>
From: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Organization: metux IT consult
Message-ID: <bb66e283-477b-38f1-cc0d-95ee94b70dc2@metux.net>
Date: Mon, 8 Jul 2019 21:10:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686 on x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <79b9bd5e-be05-daa8-0d16-d84a383138a7@free.fr>
Content-Language: en-US
X-Provags-ID: V03:K1:DUR7avr6KGM5zxlK1ue3WZpoy1VAsrFT6DJH9exnTs1P7lmuw8m
 hNEimNt/6wbWi+eUJJB3YXAECYZ4Zi6nVmmKD5CAzozqNe/FxzfE6yyk/G2dkDNq9aAcp4N
 4sTdHKGEByCyj9Dfx9+s6RoHCTdk6pImgvpKULqu54mg7+u4Lv9DuazEy+N6jR25fJ+Hu/d
 re3MaMlUEphN7reVEUwPw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:R2Teip2HdFg=:CEjBvuK84q3bHjaHNjALxP
 3x7wSBcQtwBN664UW6zPBtZ0BOkxCUAFuyuCJr+LljA/W+g7V6t1lSjluQPfZDs6EykCgNQ6L
 mNJ/XSSQpeMbcUv3o8ppdMhUVH+WSO6UrnxU4iwvstsJFP9qisCZG/vNxmr1e/ovYBIS8ytzN
 8KbPjiIE7B0+tCcvl72uQ1hPYPJ240KaiQ0DQxKj5vUmh/vfEawzvxPjdeU4qGOIIrKUEMoOJ
 +Ak2UK1Ey/YGQ/T7O7s3W5+mEcW+qFNzZRkBSGyc6l6GTcnnp4VY5v5GOsySisyQfGoPClGXg
 I9ry0QG1YoYZsU8vomszqm8ZK48bQlJr2uKTvWLExO+qYfK1bm6nbgPvfLb43nZQv38ATpq1m
 ggt+HvQ1A3vYBAxEQ/waPl9eFWO/n1sbT4cPAzQZH1HEPlqjru1kVoYKqlvy23jAyVA0LKcI6
 vTevNMFNJ8cloIgfIKqCvwjGXfv+Egs1umAdKGxobhoh3U8K+vYxNHg8vPnZBzE2XXdJ1gpPQ
 2cEhfs48Sv5zNPn0/a47NxYpQy0qeVZUCo7s/yEJUoeoDBY2BB6rq2JN/HSLGmAwFUfzxVxDp
 iNzL+I5AAZ3RYkMU+hhXHmk1UlA411dH2e3v8h3i7ID7KhxIcFUz6aW/oBtT1prlPWSgVzUwB
 jSxIVmUeEfTfCrki2YXJNJYrfbdbm/9uqge1oJkWzkpe6+6FLMBPscU6jTFg65yAdHsgP+SIp
 oWO0OYz/St7hJuspEPwVvfdJwLGZOmqiS2kzx6ZmiJzVLcRMPbA1KAVxTrA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_121049_072010_CEBC7F2A 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Peter Korsgaard <peter@korsgaard.com>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, Wolfram Sang <wsa@the-dreams.de>,
 Linus Walleij <linus.walleij@linaro.org>, Brad Love <brad@nextdimension.cc>,
 =?UTF-8?Q?Jonathan_Neusch=c3=a4fer?= <j.neuschaefer@gmx.net>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Antti Palosaari <crope@iki.fi>,
 Simon Horman <horms+renesas@verge.net.au>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Olli Salonen <olli.salonen@iki.fi>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08.07.19 17:03, Marc Gonzalez wrote:

> One problem is that since the internal bus is "created" (declared?) at run-time,
> it doesn't seem possible to define it (or its client) in DT.

Maybe declare it nested inside the si2168 device ?
The driver then needs a piece of glue code for triggering device probing
on that bus. (so, it really needs to provide a full blown i2c driver ?)

--mtx

-- 
Enrico Weigelt, metux IT consult
Free software and Linux embedded engineering
info@metux.net -- +49-151-27565287

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
