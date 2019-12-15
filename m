Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4040011FB7C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 22:24:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0EsCADPgN8GYicVnHABcK5rN/P4PYT8rrxx1uSv6A2E=; b=tPhULR/Q60rtaC
	ib/LC0SuWFqNUAA6XDJwA8tlbMx2RBWPe6mYp6Ks3L+w2I05uxjJA0EFZflc/eLkfolfGPO8haYT+
	T2MdN8H5DYGRZCwQKGCm7R6/Kw1IUzPZAp2yQyra1eyJtfkbFULlQEo7SwFAkBN4uVAEINfvmhAmI
	+A1ZsaQOdSEnPcOD5URWyO1Ogy/35D6sebvKVpD9hPjSsZyL3+zECqe8Sh+9STHjZkXB+eoe/fjgz
	GgyWVCQBSOJlOnzBSPmKggk7mJDJvWERzs8wn2nRdD7FvxsrOM/uLxi/BJej3LmfO+iFoBwnYGbPH
	m6LM/jk8Y68Z38esQZ9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igbNN-0006tX-GI; Sun, 15 Dec 2019 21:24:29 +0000
Received: from mout.web.de ([212.227.15.3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igbNE-0006sw-TM; Sun, 15 Dec 2019 21:24:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576445052;
 bh=eCUdcI2nCUe6hq6eD8muOW7l4NxkUtCc/Udi30XHMRo=;
 h=X-UI-Sender-Class:Subject:From:To:Cc:References:Date:In-Reply-To;
 b=KVMa0kkKNkRJdqlY/Cm54b7hjY4HbGyeEaDR2sNFVzd7BMXL42ansFVj2i3N3rr+f
 UpGiYHHwaVVuOO4Cbhfd9RNn5G61O9tuw+2nHxmKcZZT0YUpZ56T38bMyeWJjUFX52
 NOQk7eh4sUL0NehBqpznjPauaGnt1nifBeji+LPo=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.43.108] ([89.204.138.206]) by smtp.web.de (mrweb004
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0Mck7d-1iPLbR1RvF-00HveM; Sun, 15
 Dec 2019 22:24:12 +0100
Subject: Re: [PATCH v2 0/9] brcmfmac: add support for BCM4359 SDIO chipset
From: Soeren Moch <smoch@web.de>
To: Heiko Stuebner <heiko@sntech.de>
References: <20191211235253.2539-1-smoch@web.de>
 <0101016ef97cf6b5-2552a5e4-12de-4616-94d6-b63d9c795ed6-000000@us-west-2.amazonses.com>
 <1daadfe0-5964-db9b-818c-6e4c75ac6a69@web.de>
Message-ID: <22526722-1ae8-a018-0e24-81d7ad7512dd@web.de>
Date: Sun, 15 Dec 2019 22:24:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <1daadfe0-5964-db9b-818c-6e4c75ac6a69@web.de>
Content-Language: en-GB
X-Provags-ID: V03:K1:QhKcYNNQrZd6thN4hQsC9O7Yf91beeDEgTC+ZesnncMwRYbdp6k
 PcVfxxisANZf5uninSbdb8XlFs43Q8aukGZfSECbUxgh+NFVXxC5/CV/0zyqxmrCf9Ujs2x
 b6v7dWT2uNmz5OfaMlimF17bQj8CWalZC/cdhlAPJb5da0W9x7AA244YyuuXUwiusfGxafl
 Xgo4bupLX2lw+JKtOKStw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1ISRg0nEFow=:wc+RMp78TqOTVz7simHpvW
 bK3VSfSBE/9kizexywirb7ZXzVZhs7mriDltIXa16CJdeKX7HfFuTZsc0ZdAYKJSmQORgwQy5
 Zpft+rWolrPyRPfVXjHmP9vwwTjNvjz2cYYy0/1Xf7q7MyUsRpLsxn6oj3yHmsPhZGmopCnwQ
 AqkxbmpU3AiZlhPCqV0vhS+xIXturcE4pLnYlOYZHy6AaWYYxz1K9pIO3wHeBtDEtAfF8qRNR
 msgqmOY3iZ02hrHfdv0AVqNBy3n8Ex+rwL0POG1Cm2z9P0KEm2GO2W9EEZ4xh37/u1lxunK6k
 FnkDUUZpMcnkexMWz12CqOpdlF3uDqQc8J65EZWebAJc25joOd2oJUT/fRn/4LPsP4r5FEJA1
 kYJzAzZrL0bVdwX38Gt9LeAwBhjxB2uySxuaZPcrWI7tMafC3Med8W44nkyyFrhPAhYMNoeJ4
 OSoSKYx63fF885aT0zScBovb1bZZzm3Ja4XHPYaCagNOvG6fzEwM6d2+kGBj9l86sidgml9if
 K1pmjqN1Wf2Mgndz0odCyTXfOSMgVveWhhqfGDe45P2f2KzH0PBg9iPq3BK2V2Tbnd8WwW+De
 KSVZe/W2ommLUL6zBYATH+WTElYuwxbCk+76dh5jJx8Z0gxR1mz40cZw0qvgQvHgx/fqXE8Y0
 7GRZaeQeueNcKzKD/HRUBK7R6yCTgLJS2YlRI6GI6UHDpBGXLbeJcCaWL3Dk38OrsAWYr67fH
 ybBNxY1YB9qd5hA1lHYje/RUMW0zY1JSV5z4WU4SLxYK6UivFrpgq6GOEphRgOVFgxFNqKyoN
 NdyNh8qZCOvPvYmy4OPQ62KfCO7QsM/SgaujMZIencM/T4KJbJsRHKIkJf3GyDZymvpZiG6cH
 TylB2KnNPD8QCdLRz2dwk7f4Z2dBZueBvS38sgT9RnyY/zZNNClNPEMBARzfYJXhmHNT4oPoA
 yzo85V9fzHKgwrsCUfA+CIKdkJqAX/fqp9Zdr+P3klh4dXV1PWmuZldE7SkbBfcGm5hadkOGx
 HLKBN0+GkWt/Cyyz54nhmUITMrlvFY8rRiPca0TXRBktv+1gVsYkYtO2HhxFtggfufsO2Sfrd
 R860lSzrhp7RL8Intuse99bV+424/kScZMvP94VEJ3Bou++y4akIDbP7Y7W1Ix7vlhnh7+MpU
 mxUOcEEQdTi9AVGZxa7JshX8jDsfUiFpFBqyzdhbpzLLO+6xddhCJj02ABW2WUg10SAfYbtQd
 rULgwVJAOeh+Gg5uHa+vTI91QRC1m08sLTyWrgA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_132421_240450_89190608 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.15.3 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: brcm80211-dev-list.pdl@broadcom.com, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 brcm80211-dev-list@cypress.com, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12.12.19 11:59, Soeren Moch wrote:
> On 12.12.19 10:42, Kalle Valo wrote:
>> Soeren Moch <smoch@web.de> writes:
>>
>>> Add support for the BCM4359 chipset with SDIO interface and RSDB support
>>> to the brcmfmac wireless network driver in patches 1-7.
>>>
>>> Enhance devicetree of the RockPro64 arm64/rockchip board to use an
>>> AP6359SA based wifi/bt combo module with this chipset in patches 8-9.
>>>
>>>
>>> Chung-Hsien Hsu (1):
>>>   brcmfmac: set F2 blocksize and watermark for 4359
>>>
>>> Soeren Moch (5):
>>>   brcmfmac: fix rambase for 4359/9
>>>   brcmfmac: make errors when setting roaming parameters non-fatal
>>>   brcmfmac: add support for BCM4359 SDIO chipset
>>>   arm64: dts: rockchip: RockPro64: enable wifi module at sdio0
>>>   arm64: dts: rockchip: RockPro64: hook up bluetooth at uart0
>>>
>>> Wright Feng (3):
>>>   brcmfmac: reset two D11 cores if chip has two D11 cores
>>>   brcmfmac: add RSDB condition when setting interface combinations
>>>   brcmfmac: not set mbss in vif if firmware does not support MBSS
>>>
>>>  .../boot/dts/rockchip/rk3399-rockpro64.dts    | 50 +++++++++++---
>>>  .../broadcom/brcm80211/brcmfmac/bcmsdh.c      |  8 ++-
>>>  .../broadcom/brcm80211/brcmfmac/cfg80211.c    | 68 +++++++++++++++----
>>>  .../broadcom/brcm80211/brcmfmac/chip.c        | 54 ++++++++++++++-
>>>  .../broadcom/brcm80211/brcmfmac/chip.h        |  1 +
>>>  .../broadcom/brcm80211/brcmfmac/pcie.c        |  2 +-
>>>  .../broadcom/brcm80211/brcmfmac/sdio.c        | 17 +++++
>>>  include/linux/mmc/sdio_ids.h                  |  2 +
>>>  8 files changed, 176 insertions(+), 26 deletions(-)
>> Just to make sure we are on the same page, I will apply patches 1-7 to
>> wireless-drivers-next and patches 8-9 go to some other tree? And there
>> are no dependencies between the brcmfmac patches and dts patches?
>>
> Yes, this also is my understanding. I'm glad if you are fine with
> patches 1-7.
> Heiko will pick up patches 8-9 later for linux-rockchip independently.
> And if we need another round of review for patches 8-9, I think we don't
> need to bother linux-wireless with this.

Heiko,

is this OK for you when patches 1-7 are merged now in wireless-drivers,
and then I send a v3 for patches 8-9 only for you to merge in
linux-rockchip later? Or do you prefer a full v3 for the whole series
with only this pending clock name update in patch 9?

Thanks,
Soeren




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
