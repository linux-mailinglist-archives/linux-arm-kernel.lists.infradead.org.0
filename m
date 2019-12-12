Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE0011CBA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 11:59:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XwwvkUzAwHcGEKWj+88ZPiOZ0ZBDrrJCz/sd4NIulhQ=; b=N8wlX8mPaEJR+b
	RJQ1u+PwUX/nibI2p+DoIkOcRRJ+RGiegnrauO0AV3QyUNI3U5tXP3nIqLIrDRekpu3/vE5E0q0XL
	fk/BpRCDhmIH/nlhtZB+yfRvG7HOpXqpWCjcFO7ZEKKVQKI+4Bo5gQrwxrGhbZxauGvhuuTuGebhn
	kGup0+Q84ewUk+9DC4zYbeyS/TUdjeWcfrvHhri8DHwZZQOgfm+/oRg33R0r6bqz8VhE6ZRePEZMy
	zZQQPpu0Q6TzKuMMGmkUlxo15iurMlZKeQ6mWiD7lp342hzgahk9+vU2fuyekG4tir3gQU6gFAyEB
	jjpkhIFYRsSAboT1LBvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifMC2-0003Pq-Sg; Thu, 12 Dec 2019 10:59:38 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifMBr-0003PJ-TK; Thu, 12 Dec 2019 10:59:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576148357;
 bh=keZMm0sbIdLHuKg2ERn1DL+jHDL/cWURqxHw0Hu/p0A=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=aA2fwg0bcpAURby5zURwZamBbgaMsktdVD6saMWtZuaoSVSoxO+4Pyc/8/4jwG2BV
 1ejH7AznNmia67ny1h1ssx6Z01fXY6xjLka1D3VvwWmLBWQBKtVZPYE+UNnwhMb01M
 aznF098xbi3gBtnkhRv3JV/5OHkbvFg4yxJQnTPM=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.43.108] ([89.204.139.166]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0M3Bhz-1hpaVu0SM3-00szdL; Thu, 12
 Dec 2019 11:59:17 +0100
Subject: Re: [PATCH v2 0/9] brcmfmac: add support for BCM4359 SDIO chipset
To: Kalle Valo <kvalo@codeaurora.org>
References: <20191211235253.2539-1-smoch@web.de>
 <0101016ef97cf6b5-2552a5e4-12de-4616-94d6-b63d9c795ed6-000000@us-west-2.amazonses.com>
From: Soeren Moch <smoch@web.de>
Message-ID: <1daadfe0-5964-db9b-818c-6e4c75ac6a69@web.de>
Date: Thu, 12 Dec 2019 11:59:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <0101016ef97cf6b5-2552a5e4-12de-4616-94d6-b63d9c795ed6-000000@us-west-2.amazonses.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:X1VXSbz0SVvWmuA9nSQSUNDgrZCFbxASzXxbWmYUVAixHdeM2ap
 5jmIj84J8M/PXs/xv2KPflfJqUt1QNjJv5GJgJoLMLXyLiCjk0/Q3dLXeNg9mRE5SgJDMrp
 lMtjGHcpWNZZDPCuLLeuS1tRI3rHa+cB30xT2NU+YYo77xPbDHOD+6iyqP03+Hh+I890Zym
 DY/WgF90Ef1JOL5NUpYVA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nlKbbsRR7i0=:E+Q+EdeHtqjknVu7hYEK3S
 euzrTVn88dNTLxE8S8Bmf9etZpvuQ+ug2P/QlYtYWAvl6n5LeLFWYDUeZP8pMmhaW7kqTgs3V
 lT4dRgdn+ljCmrzCfjae5wbBHgUiv94nXEYCLSyRbUNi0w9+hMrjcobzp0HP8SZ3BaHb/Y/bS
 p1M8vXBKf3J17rBwRBwldk++//LFDOwBMSH1NJ1dl8wVua+01mQftvDogUSvv9JjSS7f/3URL
 Q6NNd7m+Umlw4wjz3wBbUDrFis01Cx6GzsDc/CVo0oNcUctbNrkFtmrbrNhcP32+zgg0SJsDR
 KjRIASeSNRRQKvnUhdNpwDvGaxz0d67FjGG9tg9L6T0wri4W+osqi7/S7CVq6P6ilteV9EY5j
 Joh3ig7b0psa4p8iR0vdKRjujfAtljo2MvB9JySRM6g6Jzy6p/4mBL2TswUxHssyzVdJhadEr
 VOnFagxMXcJD6/Bt6qkqk1sc4VBXHLE+y7mUvlcq8X1yxEE+GP1IWTOEHyFpJQVlgcxHf/bH4
 ezYtSPRp/55TUrUQsEULFDJIBHwKtLN0n2nWB2rc0xL1vDkVWCUGIiqtWUJlCQbvmxradRvzf
 3IhC9nMdlUiwiq1J4IrSYRrI05627W4XAqLE9sCyQjbXTxaXvuiif5sQJYARAM46Qw8Pu8hQR
 q3ota1qXM6Vim/0XSoZGFcX0puCW+hfgx3ih4lat3dZhzbycUMyG/ZUg6AcEs9BAQAlAjB4/r
 qPYF5YDnohZEXMHPsLhIS14+NFQSPr9K5JzQZdix4QrggGcD1nU+RBXrKvzPuJuSz/Ybf8Bng
 OUCNE3nwUMqKDKMqwPPyONgbRFxmnsXYxBXSNlEZhQNzyQmpBWTzuMJyxgdxpcRGgWLhErbf3
 E17Z5TA64ZVTUX7PByWYChmwPpkDvVvJGdLGIw76hrdxs18tLy/57MY4TWunoefJS2TMplt15
 DGNeV1Bdaee9swC9w1PWtu03rqkXFIz2g1T0XDwqpxW6BnzbGdG3/xjCKiutsAEmKPfFvr71g
 egloZRpK3i3UQ1CEJn39vavZWYF/sxNfCwvz1OHafER/+PYgKcGXhZxgvj0xMTTiw/u+GQWuo
 sQvb15A1OdGWKK+cwMPCVOdWDSZc/XjeKojhCrY2891siO4IVsFQA24CScAYCM1YLSG+CVO47
 IPuicuo1OFqGIe23wysjRGfQsXbfw1Tm9KiqGCTFrymq0rv6+ZAnb+WDhf96GNsGKctmuxT7C
 lsN0L8y2/vEhLWXhXuLVXJE2s7y783NfGiXTdYQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_025928_247583_964D0109 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: brcm80211-dev-list.pdl@broadcom.com, Heiko Stuebner <heiko@sntech.de>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 brcm80211-dev-list@cypress.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12.12.19 10:42, Kalle Valo wrote:
> Soeren Moch <smoch@web.de> writes:
>
>> Add support for the BCM4359 chipset with SDIO interface and RSDB support
>> to the brcmfmac wireless network driver in patches 1-7.
>>
>> Enhance devicetree of the RockPro64 arm64/rockchip board to use an
>> AP6359SA based wifi/bt combo module with this chipset in patches 8-9.
>>
>>
>> Chung-Hsien Hsu (1):
>>   brcmfmac: set F2 blocksize and watermark for 4359
>>
>> Soeren Moch (5):
>>   brcmfmac: fix rambase for 4359/9
>>   brcmfmac: make errors when setting roaming parameters non-fatal
>>   brcmfmac: add support for BCM4359 SDIO chipset
>>   arm64: dts: rockchip: RockPro64: enable wifi module at sdio0
>>   arm64: dts: rockchip: RockPro64: hook up bluetooth at uart0
>>
>> Wright Feng (3):
>>   brcmfmac: reset two D11 cores if chip has two D11 cores
>>   brcmfmac: add RSDB condition when setting interface combinations
>>   brcmfmac: not set mbss in vif if firmware does not support MBSS
>>
>>  .../boot/dts/rockchip/rk3399-rockpro64.dts    | 50 +++++++++++---
>>  .../broadcom/brcm80211/brcmfmac/bcmsdh.c      |  8 ++-
>>  .../broadcom/brcm80211/brcmfmac/cfg80211.c    | 68 +++++++++++++++----
>>  .../broadcom/brcm80211/brcmfmac/chip.c        | 54 ++++++++++++++-
>>  .../broadcom/brcm80211/brcmfmac/chip.h        |  1 +
>>  .../broadcom/brcm80211/brcmfmac/pcie.c        |  2 +-
>>  .../broadcom/brcm80211/brcmfmac/sdio.c        | 17 +++++
>>  include/linux/mmc/sdio_ids.h                  |  2 +
>>  8 files changed, 176 insertions(+), 26 deletions(-)
> Just to make sure we are on the same page, I will apply patches 1-7 to
> wireless-drivers-next and patches 8-9 go to some other tree? And there
> are no dependencies between the brcmfmac patches and dts patches?
>
Yes, this also is my understanding. I'm glad if you are fine with
patches 1-7.
Heiko will pick up patches 8-9 later for linux-rockchip independently.
And if we need another round of review for patches 8-9, I think we don't
need to bother linux-wireless with this.

Thanks,
Soeren

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
