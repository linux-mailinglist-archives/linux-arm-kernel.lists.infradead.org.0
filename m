Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 251D4ED2C4
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 10:48:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BxGGSQOSYWUDRwt9GXBLwC05lyJI9nnSy2DYK0gzg5U=; b=GJtQwpqGisFtXf
	REZUWtWb4D8nX8HkolBf0LoCczISb4+3TcD9sem1KlYIlogz6Nxy1kGd2+YPaCKeyCWItlDXAyXvj
	hAH8hhMjfZiwEngsephfFPpAcVdXIo46UVLzlBgi4x21fd3mluJMIQfNqb03luAHXvVZtPlj4FHXu
	zmp0tuph/NdBorac3oikksBi4fpIcVb0i5cS6ulTE7n769y0jWfWoIQFN58pht3Hb0k8FQb6P8jzx
	aKkdA3ctneL0jc5FEorBq3+FnbrmKdXDcyOXi3qLOl3+xkeUnAZGwjba1lWqXvxDEWnMLCoHwcPvt
	/F7z43muYefVvqwNb3yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRCV5-0005Di-Iq; Sun, 03 Nov 2019 09:48:47 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRCUx-0005DN-Aq
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 09:48:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572774500;
 bh=N2kuRaL/NF7eaENHQ2C+jDHjdPCKjWSQuPIkJH8g0pI=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Q2LlccFTCc8rL0GBfgZNe9A0tsXwG98A45djoICyEGqjYkhqOm/3zKgqakud0cGA4
 v/FKU9L7M9GbZlJWKd1dFqjGyYoC5x07EqtkZ1SPfPQ4uNIWY+nGCkieEeOjMAraW5
 xnqUoW+Ygn0g2uXdDb9SKCo4b9S2b+ThdE/5yZsc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.112]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MEm27-1iBW6S3N87-00GEz5; Sun, 03
 Nov 2019 10:48:19 +0100
Subject: Re: [PATCH RFC V2 3/6] net: bcmgenet: use optional max DMA burst size
 property
To: Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>, "David S . Miller"
 <davem@davemloft.net>
References: <1572702093-18261-1-git-send-email-wahrenst@gmx.net>
 <1572702093-18261-4-git-send-email-wahrenst@gmx.net>
 <e1182432-19d8-6c9d-fd41-bb4d739b579a@gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <b2066bc6-2191-5b9d-ff59-2ba4a95bfa03@gmx.net>
Date: Sun, 3 Nov 2019 10:48:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <e1182432-19d8-6c9d-fd41-bb4d739b579a@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:TjbITlT8S+N4og2qQ/L3geR8VbQ2YegWvTpFryWOffB3y8H+u80
 XLSmbluUbx8OVBwiaWmxpvvlM7wsb2uLvD555bD2uNrumhZi/Km8E01QePV4vlhawwvvi4d
 blhtsDCxHJZhwbGSp6MorGuS40UOzwJwf+U+UlllsOS2EutMSb+q9/izOCTvAo2SuH5T97B
 gqlKvZmOU9Lbwkqc9OMLg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vWSAY7d1Vro=:zlEbxOb1E1Pibo+wZSmzpV
 s2Q8zNIc0w6kFiQmPNbea5t7ZzjjZ5gu6CnKjJzT6usef1WJYworSJ54eRD0xcNDcZx9uaAkE
 Z0SqiKIgnk0F/wSyxgbVOpgZdz/mRtnKYNqirMbnif2ut1B2jtJcfSmgRWBWBMjZrEJofGz68
 Ps2S94xnpAsuqY+3LwWGesl8XXUJ6umFuLdeDlZZtwH6N65hYmXUV2J1yaJVyP6XghqU7WhiD
 xPfyyKFGqD7NE85rpgjaND1xR74W+OmU5bCTD3aRTW3TpzjIgpUYpnn/M+87FNbki2Ayv2T5k
 nazuloDFRCjO1CYFSLf15r5qDUAdeMP4iIuXvO60qzIOvybpwwboU4VJL6diJpYmSyPYNvLcJ
 8zTDJaT7F6Q7vaOsEVZR9fonQJQmPvXIw5+xw13HB7e009mmC1eJCn8VZDtIsqpRH0pqrkF+T
 4X6exuiEQNTN64cYUUo+sXvntnPAp1lShFvrqde+bSvW9zQroUqrD3lbvRvP/NX+kXu06pMXH
 zplhx3X/fTgJN+CfN7m4bvZW5KspwsbM1IqVhQORe8BtXTFcK+vfx4Ae6JA5l80uBTYz6QnOJ
 eE9GbinWwy8JJobsr2k4Aq6w9FX0HwGhNVlghT/JmlwwMiq3dVs7tKpECrv4u40L1k0cVmsFM
 9f/frQFeNkh6C47vhVwZr2grGejjuiPIRC3u4E3HExvuq4NRFoS/kZKHsJtGAYsEH3G7Z9M04
 m+B24TQomgVTyV1iPgYk12mxuVRDegQUu945XUyZLP8RxeZfQRs8yV3NmwqWa3eRQJl5T1RBo
 IsAB1v5CRrgiGrdafnwDyXDWnn4Nw/hwBA3VZ82lAbn9K4j3AQnjl0pkcEPbUPHfzIB9Ajxty
 o6aGm/1IUHMxB75JO8LE0OXeppBB66DBh+K1zLpGFPnf7oXohZTT+StzCR5B1WjfH86CvV4yg
 /rxNSKLY5pXbpkRYXGSjWssAn0UmdgyJicTd0qg/qqS7rc/y20q5qIm2j0LbYarOG2UlOFgUO
 uIud4bHb8XHvUhGt0s5TGc2PzWiE7XL04vIb6WSCY9yzi/XwhDqtI+SiHEOUSaB4oelDJWW5l
 NqE/ErlKex4zJ8Z8rlc6VMd4mgUROL4QR3q9rERE14XUOFrc/Nchwg/yu1njAUqLkiyzwFD4o
 a/r1qgdaMbv06t8E38azNMNwAUva4Jx1hk1Jkvzoxn0b4EnYXaZyBSn2QZjM6TEwClZM/filY
 JycQpcPl3ahxhb5JeHh1hqVHro0yASWcRqkWCkp7tba170VUyu4sKMKo1Tys=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_014839_708354_CF5B15E4 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Doug Berger <opendmb@gmail.com>, netdev@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

Am 02.11.19 um 20:34 schrieb Florian Fainelli:
> On 11/2/2019 6:41 AM, Stefan Wahren wrote:
>> From: Matthias Brugger <mbrugger@suse.com>
>>
>> Depending on the HW, the maximal usable DMA burst size can vary.
>> If not set accordingly a timeout in the transmit queue happens and no
>> package can be sent. Read to optional max-burst-sz property, if not
>> present, fallback to the standard value.
>>
>> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
> Missing your Signed-off-by here since you are carrying this patch from
> Matthias.
oops
>
>> ---
> [snip]
>
>> +	if (dn) {
>> +		of_property_read_u32(dn, "dma-burst-sz",
>> +				     &priv->dma_max_burst_length);
>> +	} else {
>> +		priv->dma_max_burst_length = DMA_MAX_BURST_LENGTH;
>> +	}
> I would maintain the previous position provided on Matthias' patch
> series, which is the integration of the GENETv5 hardware block in 2711
> is done in a way that is different enough (due to the SCB/AXI bridge)
> that a separate compatibility string would be in order. Once you that
> defined that "brcm,bcm2711-genet-v5" compatibility string defined, you
> can derive the DMA burst size off of it.
this is what i meant with didn't address all your comments. I'm fine
with your suggestion, but too lazy to integrate it in this patch series.
I assumed Matthias already take care of it.
> If adding a compatibility string is not practical because of the
> downstream DTBs, then can we at least fix this patch in two ways:
>
> - define the property in the binding document
> - spell out the property in full names: max-dma-burst-size so as to
> reflect what it does

In case of incompatibilities with the downstream DTB, i will take care
of it in the downstream tree like last time.

Regards
Stefan

>
> Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
