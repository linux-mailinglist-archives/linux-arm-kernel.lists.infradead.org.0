Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA45195647
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 12:24:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YC403/NZ9rOzRaxZfonj5wZ8cI41eTFfUk9MzoWDbTw=; b=nh6wQW1rhZD42y
	o4NfSle1Qux6v4TkNqHSRzvhWgmVeAAtGQcy2Nit2749CLHV74JZ6AGnF9nQeihTtZLkJpKIoL24A
	n6RpR11nJj0umR2vjGf8P/lHJU6L7j7/V0G8h9KahrJAra6yNgFzc1yQUFqG2cTIPNCdcprQksR/4
	4/sdndDOqiQmouf9aQJL7J3OJYYj25+SK1dXUl9aj43xlExjDMLk5miTrT7VJ3v+CfCuHo+7XDYEa
	qJyKSS5+oHOqtIQ4JrleSjibiTgUnhBkga4rhiu5cLdZTQpePGLFR93KRF4I60XQgCrfZSu6XFk1Y
	peZr4uPW/b19S8Om8lSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHn6V-0002ZU-KD; Fri, 27 Mar 2020 11:24:47 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHn6H-0002YI-BT
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 11:24:35 +0000
Received: from [192.168.1.183] ([37.4.249.171]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MGgRW-1j57eA21oY-00DoGH; Fri, 27 Mar 2020 12:24:28 +0100
Subject: Re: [PATCH] ARM: dts: bcm283x: Use firmware PM driver for V3D
To: Florian Fainelli <f.fainelli@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
References: <20200303173217.3987-1-nsaenzjulienne@suse.de>
 <24f850f64b5c71c71938110775e16caaec2811cc.camel@suse.de>
 <8c2bdd83-c8a9-7ba8-8d61-69594e6a2bde@i2se.com>
 <4239bf44-1a2d-09c4-fc1b-186955c062ab@gmail.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <216d21e5-1a69-7d76-55bb-118715b30278@i2se.com>
Date: Fri, 27 Mar 2020 12:24:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <4239bf44-1a2d-09c4-fc1b-186955c062ab@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:HuG7uCzm5sZSv/V781JbnxNGfw9eNTrd9ceDEEQiH1za3YOHg28
 oqHcXFj9VxfhL8TdKJftky6E7iK+sDMECZPtRb9NXHO/zkypN7X8bX2OmrVRBfNjX0+enVX
 OSGgT5SKr/+zUCP6s6WSViyI6+YRzVIqZ6BDobGm6+gVPFlQ50kJN6eBV2K7gkh0aCKbbLV
 iTdmJg+7yv/4ohugTSgkg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MU00D6eHlgM=:EjXFpbGi/SSpjJhCoTA+0B
 BWeVSWcGKaCGJXdCWiLtx6MMFwuXDh/jxiAl8T6rst4DxZTouMaaLARlZyqe4eWG/B5rrbvn0
 /BYX3VObOyONSs1h48R/d11X44SAn7Et7pEwmFghvLqnR4j5kI5BL2zg2zLVL8L8MzISmnIWw
 bpzu7f3gq3EJwNKo2UJIqDN+9PZOyNYv+F1nZ6FcSzcz9NDCpepZPgmrPXpgT/3uFfUgeomMJ
 R2oogJKPIN8YX6JCBvq4D/t5c5HgfDYpC/Wo/HTXsJ5v4oXh+8LBwUrH2qDVIG+A5a94hk3ja
 QtNFSIavfat58qbxTi9a7slHNwQQfVe5Wr73+OoYMGUNm7fNFIJF+Ng6XeKSGY9PP5WOypG4t
 vmAHJWqTcU124bcKh3zlHIuJNh9XD4uVPJs1TF1thce37v6nIOmB5eyZX7e3yrFH3OG8qKvqG
 hcIU05Za2Yo9GXp/ML/N0Z6IWddQvvUyQ9fmUlna9D02fgj7euyoVoVfwFvKaiRL78nGaacoH
 /cha0f0gNUUILIdNREUe5jNVeyyHMzeCFDbWKgaAflzWNlxQHUWg6gF/bTF0um0R7wWO/GFU7
 Wk64YSDrEvirVkdYltdZahnTDTGu1i3a4+XrY53AMIF8AIMBIxFpxjV3Cd/BpDG+nZ93wqtLG
 /JJ5a2lnd/q9rObOLDKcQdowpWzzDVaMNgIuMmJdIlriPeKplCFRlRdzR+ZB8VDp5Zv2rt3Xl
 m2j+NVsuJzRwp/Nuf4AN4AAEn0G8RZAd9+1Xn+eg6T7GK/5BLm6pCDwWvoh/Blj0gY0DkxJ+3
 7wjNfWG5IviCOuX1i0CkQ140q72ZQJ4eMeTsQFZVpeQL8UhQaCTuY+Ys/jMhQjQn1MIB7v/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_042433_687291_4C93BCCA 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 wahrenst@gmx.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am 27.03.20 um 01:35 schrieb Florian Fainelli:
>
> On 3/26/2020 10:24 AM, Stefan Wahren wrote:
>> Am 26.03.20 um 13:24 schrieb Nicolas Saenz Julienne:
>>> Hi Stefan and Florian,
>>>
>>> On Tue, 2020-03-03 at 18:32 +0100, Nicolas Saenz Julienne wrote:
>>>> The register based driver turned out to be unstable, specially on RPi3a+
>>>> but not limited to it. While a fix is being worked on, we roll back to
>>>> using firmware based scheme.
>>>>
>>>> Fixes: e1dc2b2e1bef ("ARM: bcm283x: Switch V3D over to using the PM driver
>>>> instead of firmware")
>>>> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>>>> ---
>>> now that the problem Stefan was seeing is being taken care of, I think it's
>>> fair to reconsider taking this patch. Maybe even adding a Tested-by by Stefan?
>> after applying "drm/vc4: Fix HDMI mode validation" this commit doesn't
>> cause any regression:
>>
>> Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
> Good, how do you like to see this applied? Do we need to ensure that
> drm/vc4: Fix HDMI mode validation is applied to Linus' tree before
> merging this one? Nicolas, should this be queued for 5.7 or 5.8 (I do
> not think the 5.7 PRs have been merged yet).
not sure how many are affected. I'm fine as long as both patches are
applied to a tree.

Regards


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
