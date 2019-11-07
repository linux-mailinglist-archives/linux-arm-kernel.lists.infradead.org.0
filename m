Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 044E9F388E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 20:27:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PwhXFKoJ9jOEasszrjX3pRKFcsJrqaqPVNAXBp6/GTM=; b=ng0fP6nmt+TuIK
	SrkAoocXU+9O3bjzj0wepZaLpEduyI9VQwSKo4hp002ZRPkvxs19kkwMIabAVe/Z9u8WqtAwcvWpR
	p5QRgMhtJB5tE8kd3E8BqkSt8oE2gTKbinOp5+kgvhvmmJI2yWZLADNuayRcv02MfG/z7xigO9xJX
	Vrk/qMWEl/TaQUgGyOz2HjisaDRr+dF0C0M6y9HFIO19/pVMBCsRoQjixOXztumZqCkC7otSk9C1x
	xPDd9z8m2QqNCLBkvNr/qc09uu7Co6X4aSdkWGLfHJFqYcE2kHHJmUe0r74NLBIvwe1AyLD3Zu/29
	q2mRNYmN5gPjZ6WRESOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSnQp-0002nh-J6; Thu, 07 Nov 2019 19:26:59 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSnQh-0002nI-LV
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 19:26:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573154801;
 bh=xawfGxYO19f3p4N+XueC04HGQz7giCgh66byjPBNNp4=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=YbDWEYIwPSPWqXNIRjI94xiVaUAEfBf7dXW4BDDeeyUGGuvQ1iuRhOiHUV3Com+9e
 WrMvD549/qVhsRg+jTzGAD1JctWAXDF0Lmlv9CfCWRPnZdtTF8RyA6MUVYqj1QI2Gb
 7P/19+fFALCrHh00BjhzSztlumYbKq1HC8E1k95Y=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.167] ([37.4.249.112]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M89Gj-1iY2Db3vYB-005JBe; Thu, 07
 Nov 2019 20:26:41 +0100
Subject: Re: [PATCH 1/4] dt-bindings: Add BCM2711 thermal
To: Florian Fainelli <f.fainelli@gmail.com>, Rob Herring <robh@kernel.org>
References: <1572615749-9524-1-git-send-email-wahrenst@gmx.net>
 <1572615749-9524-2-git-send-email-wahrenst@gmx.net>
 <20191106042107.GA27699@bogus>
 <fee109e6-fdf8-d132-b390-c2878915fb11@gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <82125042-684a-b4e2-fbaa-45a393b2ce5e@gmx.net>
Date: Thu, 7 Nov 2019 20:26:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <fee109e6-fdf8-d132-b390-c2878915fb11@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:ENLSKuzPcc1QSabmsVxrxyMEJZTi5LglGmSJo5ibqCwtw3g9x9E
 bTnDH4cyORDbuAybOBZYMHAFvBFG5Fe6AjmrGHw5S+acepDk+HKobBYJgixRFOYAqIcldbm
 jDXhN9lA/fAWNZwVvI+9v6I8Fvl8sMLdCRe+LqkSKu3pmrWucHs6Tr9b5TuHgHjSvbioMrC
 u0LAHt1QRW792CS2KeYFA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cqhzf7Pnxxw=:071RTMHZB7mf3qgH83a1J5
 pDhUQGvBtIpajC0iXei9A5ZzrYk3ZQ2xoW1dkmG/EhRbnMtBK+IbYhj1Bz26c/1GysBEGvdqp
 5QWFzTTxYggZHrhSHqjop7QL6To7K1uuQpsSN7CqIY9ymk7ttZh/CQLhnh4lca/yo/QGDXz+Z
 jc2vUDDi8mGRr4fn5VV/J0VMuIEQXtb1W87EjdLJ2EQsD+5zvJhE7xYaEiJ0UyDKBBLaknOoH
 Bpr3JFit99M7GC1OzcC+1SkEZRgOfmPIV0bRVzfJZMDel5GNOYlg0hl36WVkRwFmltGVQzK9c
 KSeSZu8f9kyPgDKkNerE4GYg7sW/nwIN8gttAQDvfcpSXyBpphlw/nmiG0NVZIGmv8c2JhUFc
 asqvorKuqU6z+G+l627MH/fpOWbFgLZ8rHWTOvaXjRuGaHmrhXrXW1ru8dgOfnEkkjjzVLy1o
 mtsZJDLCceaktfinoQcZn5pJ4hmfKxf9piMoigJeQtWcrNJdH9SGoafe/7yh13YjIQ5oe0fyQ
 YWD0U4DzR4+0dKtFgBrZ4hsgCOhlyIv4AyjIN3IrDsugblxx1I6yGDloziU1Hh5WC36i6hCTQ
 6f9NgliSt9n8VzymINOpaYO97VNitDPv/5CiUQWRgHTBV0vsItI0nxH8XX7r61ixD2GzWqIJP
 1LuUv7tH/xYp8HuUm9yrezIy69HdVT3n2Tygc7xhmW03jnl5cCM8nkhZ6GFrFblTtbWzYrahk
 DI9/U8yQN9f4SAShD0krEXSuAVG6/dU01+R2IK7hdcISpBSSTUwCZY2aL2t9nNU4CcPRtiA0b
 FUPLxghzqIgITRLPDp8l8RT5d1Bh5o89aiU+3OkDboykMPFS4Uq7oDZc0SFzR58d7bbwe2kML
 RCojoG8zq8f/5AD8ddqn4M812AiZgOA5Jt/3P0zs5c0mt5faKuAH1UuHhPTYmkxQzRNXs6cTs
 5jblxXAUv6calnYQa1OGkb1pdW3QLKQCowYelWDHBOPjCmJ6ct9O4Y6WoQn8O/NlhfMHlTk+f
 WrSLlTEfpAnTj53VqcD1PxJd/AU+ZUtpaUBUEZR3ybN9URzTgZ7ZsQgONCuS252eYCbrD1CCi
 Y+FhezVKqjlqc2eexnfU0eP2QNj3viOw9fkbYrKi5TwoJWHeBdlZcjj3CTnu9vtL/dPjZfpwN
 DyP2MkafJp76FWw3i2SNyDmuz5YcphBZTAd6zA3lJE5unU6AB8QaQBmcwHMub5knK/dprgbrv
 rlYsy3oQR880oQBgKILKR1yj+kN0awq4bv2DI05N9MYDmcuAzsO9Lgz0qV98=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_112651_994501_09198689 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Amit Kucheria <amit.kucheria@verdurent.com>, linux-pm@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Eduardo Valentin <edubezval@gmail.com>, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>, Chen-Yu Tsai <wens@kernel.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 06.11.19 um 05:41 schrieb Florian Fainelli:
>
> On 11/5/2019 8:21 PM, Rob Herring wrote:
>> On Fri, Nov 01, 2019 at 02:42:26PM +0100, Stefan Wahren wrote:
>>> Since the BCM2711 doesn't have a AVS TMON block, the thermal information
>>> must be retrieved from the AVS ring oscillator block. So add a new
>>> suitable binding.
>> Anything else in that block?
> Yes, the register space is quite big, and contains a bunch of raw
> sensors (voltage, ring oscillators etc.). It might be more appropriate
> to define the ring oscillator node and then use a syscon phandle to it
> with the appropriate register offset within that block.
AVS_MONITOR: 0x7d5d2000 - 0x7d5d2eff
AVS_RO_REGISTERS_0: 0x7d5d2200 - 0x7d5d22e3

So i should define a node for AVS_RO_REGISTERS_0 ?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
