Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32291A86DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 19:12:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zuMbAa0sfbp51VbpIwOXGEK+zxL4IiDDpW3BcB84V8I=; b=pkTAHBCCGnPLs/
	o6YfJYvBvEwgaU6wy9W+yn+4qbP7YKKZE9S4JJeRe48pAoSNMiXaYWyZ/c7yE2Ml8ObXwnGe1NBjC
	bY2UjzAlMbkz6DJAnBILU2iCL/lia95hrbFy93W4vqUUYFX9oM3nKgOXDC4HHkOmqDr+N3zERiaC2
	jzCsQxK1amcX5Jo9IXQ+geSENMCW8V4TZwLQGTB61T1h488sHzGhRlUVBUGepkpZMSF8hBgFIXs8Z
	9Sl4OA81DYcPQ6McGvzjqAaQ8d6y5V6ImwIBnIDV+ddPeA62Hhv0viLc8yZFRwbmkP3QF7w0ynSsi
	zdx1UpQOMk1NIacVpEpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5YpT-0001BX-8H; Wed, 04 Sep 2019 17:12:23 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5YpG-0001At-O3
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 17:12:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1567617122;
 bh=1n1HaF9t0WkUVnpmWkz6uOjzjdURJY5x8aJXSZr0khQ=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=IEbI+/Q2cFlCGMUoDUADc1ny1oJzW/Ston/nCuHxHcyy4r3aKT0e2FplZoI0JgecQ
 R0IuHWpcXpIcpBwrgixeXmKOJmN4JEBEDXfZtWakNdYIGhfq0+esyX+PEQzWfbPANJ
 1cuQwh12Ej7ex5rX9AeS6LBvf5T7dyE/D9PD7Jd8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.140]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M5fIW-1i7DQQ1LaM-007Fkg; Wed, 04
 Sep 2019 19:06:32 +0200
Subject: Re: [GIT PULL 2/3] Broadcom defconfig-arm64 changes for 5.4
To: Arnd Bergmann <arnd@arndb.de>, Florian Fainelli <f.fainelli@gmail.com>
References: <20190819190552.11254-1-f.fainelli@gmail.com>
 <20190819190552.11254-2-f.fainelli@gmail.com>
 <CAK8P3a2XbU0s0S7wsX5s+UDNc5tfDkqs2KZw+7qXNZ5RuYW8MA@mail.gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <4fd4b848-669d-00c5-144b-deab7a62a263@gmx.net>
Date: Wed, 4 Sep 2019 19:06:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a2XbU0s0S7wsX5s+UDNc5tfDkqs2KZw+7qXNZ5RuYW8MA@mail.gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:csyOLxODtVXub5DV1c8vrUHQm9XiD1l8LgXBhXMb8ypjXni2r60
 15DhSZ7shu2xCJjNeO7sV9MTVh2tC0TncJkIr4xjQ5y7opko2Urwi6CqT0McUMDRxE3FTjY
 aooly3KlAYIoQzbEck6Jz0HoWcJW8HUOcruOCj3y1yfUrKK6fgw4vNhc32JGuiK3moti34+
 gMZgR1G0tHJ5ICXcEovoQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MGQeG1ij99Q=:CUNpzL7pT9evneMmVAOpNI
 Gw+L/JJc3R9ezGaER7YJDmHg3gG9KFkvc8uEpai1cQI38h8omgv1b5BrJctvhIBNS2qm4mFQX
 Nu9JW6S9a/ASLbjQvgLOoNy3xEzV5vHuoktrtalDHz9QiRw1SiIdZ/jENw4R04CTWXFDPLrvz
 atp2VfGQfPNvuuEM/QRasawtJeGN+BIL3OMJky6JGmuDIOmrLIeVBgZISNMZfutJGBHvlXnMD
 RhfbjZKygx1VeML4aSDoA3VJZWiIwxF91P9np1aCXvsOYxD8igOzIgRMApyEZExIkA3GB+A7s
 EAaNhPoOyTdHxrfQJg2Vx70PjrNaL3WVFtWIw39hT01P+Fqrf3M191S9fGlLS3z9F6KZIFFDo
 9ef1bmONWwOO6EcxsO9HVMNTNV38g59JeXx5WbhDCWTdd8TO20G3cM1eVrYfwV6UnZ9nCQpdF
 0LfABPsfZd+K5PE9Y8QqvVPGyozxWQNxWEd5y6OpZZ+Js2r9w30jWQBwo3r1t/rD8BYjMTbdA
 hY6r8g4wKWBUhRqtoeAHWEae7oRkfrxzCTQurbnsQftsSaQ90CP8rIWFOMxahD40F3Dd6Aat0
 9g7aTF9SFDFN2Fb/YdN36TQEpH5fazDK4Z2VPsXYfLXe5MYcEUbIsKkRPY0QvR15sRYRHuhyP
 rmPj1ond+LqQ5Y54wNHb7fQ+JGS5l2fgz37OqJSthJWPMvHO8x4gJBVh1Lb/Hj9fmUP+Il08T
 7HOSWEWaB3htebds0ZAm/kj/L9R+QMZookcFFSYyrNPSTLsur40b5m8b4ZniBMW/+i0PHVLfC
 dMucWQ/YWtxBStSeGm0x7UguuML4HWsLrh9adtjAFPdtmqh4PIL5/jOMh9EF9zBIvoSypi48S
 21CIBVl6WBz2ew46IE+VhUVQsnf1+YXxgB5cx3VTjZR0AGr/sLnpBwu8Rfr45bNgCt0tHWnop
 b8PVJ+jqhA4byfNrDVbCbCc5O1brXd53M3Ac2txYA1T2TCPTcvd8kCiLWb5LSlh5DEjGJdhNV
 PmJ9KvBbDMWKZ/NiAb8aOEBCUvRRDqpJhlID8yFVA7NU5YrIpw+liDa4HuCu4SQdbhKxfSLaR
 vdF5lsKGSlAjwEE9R+BHyVgmZRmbwN06y8+dUAtUPR8VSYOjOlajusCJmSpl8unfXSwIw04oC
 MC8y19f+nzTlJ/3q3Y+XVDi+ISaAbeVedqq7D5E269B4uacYS6ADF6JRFCdR3QPd+arvE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_101211_110476_62A868B9 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, Kevin Hilman <khilman@kernel.org>,
 arm-soc <arm@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

Am 04.09.19 um 15:02 schrieb Arnd Bergmann:
> On Mon, Aug 19, 2019 at 9:06 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
>> The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
>>
>>   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
>>
>> are available in the Git repository at:
>>
>>   https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.4/defconfig-arm64
>>
>> for you to fetch changes up to d6cc9ddd23f8b113797152896462b27e2b213ece:
>>
>>   Merge tag 'tags/bcm2835-defconfig-64-next-2019-08-15' into defconfig-arm64/next (2019-08-15 11:38:29 -0700)
>>
>> ----------------------------------------------------------------
>> This pull request contains Broadcom ARM64-based SoCs defconfig updates
>> for 5.4, please pull the following:
>>
>> - Nicolas enables the Raspberry Pi CPUFREQ driver in the ARM64 defconfig file
> Pulled into arm/defconfig.
>
> The way we work at the moment, there is no real need to split changes
> to the arm32 and arm64 defconfig files into separate pull requests or even
> separate patches.

this is new to me. My understanding was to separate all changes between
arm32 and arm64 changes.

So this isn't necessary for the DT arm/arm64 changes, too?

> Since this is the same change as the previous pull
> request, having a single patch to enable cpufreq everywhere would have
> been easier.
>
>       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
