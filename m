Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 385C472197
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 23:34:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1De83BQGVf9VTQFdG9P1xcNSzyt8ZfvNws/ClDoDRBY=; b=mkZpwTG3UQYknd
	y3zJCQFnseMj6LUETx6yCo1E67JrY7WD3KmaMceonXt/9WsSL9D6PmZi1osN+10nXWLX3qY7MHTlA
	6Gk3vEsM5gfblwvTZXL+kOJ6pFsRZQQpe49vPl8RcuCJJZnfoxqBh+9/hXE6QFZig2IGyMeES949g
	Uw0cpDspv2BagCi3TUduP5ZZh/o/KVcRdFCA0Sa75fNJXJXK+wRnE4L4X8wBP0PJlvLsA5CYvkaLG
	kOU+6ssEl9c0jpxEPzLdj9nIFIq178ONiLuzrgV139uUEoSFFdvV9db1JcAkHigJIMHLhYxQ9UjZf
	+MYiPNUbU4ZCjv6Q3X2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq2QS-0005p6-5X; Tue, 23 Jul 2019 21:34:24 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq2QC-0005oj-UE; Tue, 23 Jul 2019 21:34:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563917612;
 bh=r+mxvsFxNstnBrZNL57AG/IrXnf6gomR1qRVuNahHzo=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Yh80MbgsKfdmjhFjME/W4KIBmH0Fsdc7F8lX5rj9MAoVt6LG9JiieQCpzTncbUj43
 aTZVKtv2+Hk/gIoOpNBRYSv3vmdsBeJfOAQ5QfTshzJoVrh00xPApQsSTER9wuRyNz
 Gmi/FA+35aOipFtmc2mBjFtngveAFPkApYrj6Vzo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.115]) by mail.gmx.com (mrgmx001
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0M5dMm-1ieg7w08a0-00xZLC; Tue, 23
 Jul 2019 23:33:32 +0200
Subject: Re: [PATCH v4 6/7] ARM: defconfig: enable cpufreq driver for RPi
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, stefan.wahren@i2se.com,
 Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com
References: <20190612182500.4097-1-nsaenzjulienne@suse.de>
 <20190612182500.4097-7-nsaenzjulienne@suse.de>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <70aba40f-2c63-95b1-166e-f0125ef6372e@gmx.net>
Date: Tue, 23 Jul 2019 23:33:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190612182500.4097-7-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:rDzAHccUgFdH0JEJ207RLkE8pdTRG0kdDOUgfbsFrN46gUX06Vr
 PlAADTyGQ/dLXbEId3Rq+XYUwHDp2s/U/C+JA4dbj8DtYHdSt+m5hJpaJwktTkP6Hi1gR0j
 yYK3DcLigDT0ZiTf0qyzX4zzouCmnDQrjtafqmh00aHBzsrBtabjK2rEXX7oDUI5B43x6RU
 QOHjQw+gImibix94sLgOA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9/p9q6LWFcs=:9RKTowjQ+a+DBLNWoimTtr
 k9xUCiF5Q942VNmSxUbXTwoIyjoCBHwJ1XgoMIYF7KXUzNx7P2iCXJW5qq7L1yn+RcmmFweJr
 dHclwAJVuM46kxBQtXVoaezLMAbXPISVmAupKkDifkxo2Wtq6vfbNTzbYkabzuiDEweUg9bcV
 ZBHo8a8Tgj4rOwBrtdblkSyKVUHBvz/ylyqEV7I90r44LtPpk2ZJkTe3TaaBcYDIfkwuUf6PG
 P1c5GN4s4/j75500k2JFpmkGUQl6D8hZO86SRPsF+QKUaYMDR0+oNAicEyjHnt5Jn0kyYBCkd
 os3lRIm2kKnAHuk0jf9RiCQWLb/zyM240qFCGcgcF1W20PYYqpFPUdLL01uXRbmko6mUJeTqC
 7a6vmua5thSw4rOvCmzyLnHNzhJGOuoZmSwHvsxfhqIEKihupiBPPbR1rSndmUTkYf2gv3W1m
 abC87nuMv/GGMGtA5ESmeSH8XmNVsprjgwZvvHECjXX5Fm0tUa0ud/UHnY2Vvwg1DNdSGwb8+
 /A4E3B/sqtOGbcbiaRzhAIvTysyUuWX4vftUwt+BtmHkrskJssjiS2O756ei+YkLsxAD2+o5a
 Gb2jCVkvyyCfb5oC3ayFjZdHS8Mao7DPnL191nZ69vHVhGdI5Yzf9k9kmd2Tg/YBYbb/ZA7sJ
 95S2i7zm2ONxwSbdAtf+SizF5LMZ00WnKle7TDsgfSXG5eCNJfhHyEmnXWuTqzafCYdUfkJcS
 ubF4NvuFCcTj4gVIF2oxjZqttNRGOg8Sx3aFDQl2//m849qbAhLN17TTYrxN8g9B5JLrUEeQE
 OovMZxd+Gpz6t4X8cewEJLeigSrDF6u9jSZv4yGpT306F0Ck7TOZ9IzZeWimmbzoXZ98bpfnQ
 8SlG5fk5zHHRt2ycdwure78iF76bpGhuRWi4CoDmC9ZYvEZph+k19tbexiRPodDUbwCONzLs6
 KnHWXJ14Gets4bp1P6cUQIcQv534C12LyGEmEkD+XdDDhGeXxGRFF8p1frF1nk3Ior5sTfDun
 kI9WX58Kz1q14FEKrirRjQ2JcQmVyE6HAhTtiryTQEfPkRQb2dcajKqcWmDohRP+aO/tx9hSl
 tTV7F8407OaEP0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_143409_270477_B5BCE3EC 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pm@vger.kernel.org, sboyd@kernel.org, viresh.kumar@linaro.org,
 mturquette@baylibre.com, ptesarik@suse.com, rjw@rjwysocki.net,
 Russell King <linux@armlinux.org.uk>, mbrugger@suse.de,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 12.06.19 um 20:24 schrieb Nicolas Saenz Julienne:
> This enables on both multi_v7_defconfig and bcm2835_defconfig the new
> firmware based clock and cpufreq drivers for the Raspberry Pi platform.
>
> In the case of bcm2835_defconfig, as the cpufreq subsystem was disabled,
> the conservative governor was selected as default since it better
> handles the high frequency transition latency.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Acked-by: Stefan Wahren <stefan.wahren@i2se.com>

Applied to bcm2835-defconfig-next

Thanks


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
