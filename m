Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8DE13F432
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:48:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I2TL/Qi0K7YGG8g3GV7eD0ZxQzNOTXPtmw1kryC0eEs=; b=pOn7Uc8MVMlz65
	6J2ltmh4y2ImQFiLmYKeYA8cZ0RzHz7h6lEQuE9KPa1esb4XmSuG0RAgKGcajmdaWHxiYh/o+fsOj
	q9cy9V2w2dLYUqtma91o3L7SRdhIJSqiTlYp4/jt/MOIKJys7xpupCmaZNVR3wZyj5bCYXcV5S/cX
	/t8fovDFjJVVlGV8Ks6XY+uOx+7Qk1BhOwnub7OL87IIoCTGzbx/WxmfayMPxqYIWJtmsmbcJ4kXj
	t+hwb43wE9EfbubcjYUnk6FGuErUyBfir77YjoHr8Ldcu5b6FuvwnfPR1rDWTm1gEFXzjrnwWyZuF
	eK2dekQMCAwisyulCwGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isABf-0003wY-9C; Thu, 16 Jan 2020 18:48:11 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9qk-0003uU-7W
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 18:26:40 +0000
Received: from [192.168.1.176] ([37.4.249.101]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MPooP-1jF49C0hyV-00Mq1t; Thu, 16 Jan 2020 19:26:25 +0100
Subject: Re: [PATCH V5 1/4] dt-bindings: Add Broadcom AVS RO thermal
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Rob Herring <robh+dt@kernel.org>
References: <1578941778-23321-1-git-send-email-stefan.wahren@i2se.com>
 <1578941778-23321-2-git-send-email-stefan.wahren@i2se.com>
 <CAL_Jsq+w0KGE-=XkAwpdqh67pH=V34ETCy8X92L_u1=_8xuKCg@mail.gmail.com>
 <ca02714a-538e-3057-3fc6-70fb453b411c@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <1ceb7940-2aeb-d703-e74a-56636013795c@i2se.com>
Date: Thu, 16 Jan 2020 19:26:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <ca02714a-538e-3057-3fc6-70fb453b411c@i2se.com>
Content-Language: en-US
X-Provags-ID: V03:K1:5TJBEY8cu7QdmJ6a65BVy2eqEAVN4AbMfj4Ezc6DkETnvKqqzLy
 ASWwWkoWdKpYRkqoGNqCd7EQyaYtmYa3uQGEKRnBoS85++8dB7L2IB4DbTTuM3LJZbnsZc/
 cObXhyMs9a0Z+fsrelOsF9O4IkCPfta3+n+cJuBClV7Dsxz+dC4SCuQ47N/Grwr91CvEv6r
 TrjtUZ/EOv8FLhwDcryvQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1XMhZKvXgc4=:BXW4IiBgOi/jnFiMjcCnyX
 Xjad6R5+5+AD0DM1nmx5YkMa/wICV4mplh5jT1TTQI9pXocyS+CyGDy8q/505wYwLgMywSunJ
 pXP/APbA0YoyYCJlksWM+3ibgM25ljmYtEPkrYFyiFlGxvKw0QW/26c5G8AVd7YKKUDCXUhE9
 IaShDI5ZqT0gKXDJqpXXoakRPtOYdW62CMtVk6V3zcVdtwvrwXOMd7jrmq+NalgpR68rPDG9i
 GAnnb8My23mURvuwi5uqkhJNUSW/8S7c8v1OB2kpRDixdcIS/qY9fc0NlCXn5xNHhDipvIhD2
 3Iqzj7kkJnBowJZbnNI3H/0b7P0bR1HWXb7ptvS0UKD1aa2NfJ8bFd1/77fO/G/elDYdqzIV4
 q/DttjpBe4gnDu/A+ygpjmzPrYqSI/9HzdUUuV7hLa5wSxc/XN1xWdNhdugFsDQnCZpjnDQEe
 ZH8XHmiFZQpOKBG8dtaKYJE/tUTNsLSVQS7ZqUu4VWKVWh6b4uCuad/rqDPTA3I1X1PN8Yacu
 vWcKa5w72ZvhNPoRK4VXWnCDvWnhqek0K+VswoQ7f4sVx5MpMJme+bO0NB2kOdp8n3HIu6ugC
 X0V3tdVFVZJp+k8DFRgFWIIimakvrhgrl3+PNfcTtDslA8HFlG3hkJkywYSTxiz/mXBmF8j/K
 Wi7FUvEHzD5Jv3y+32z0fkwhZXyO7nOlNBPA0UyANxRtPlTkkquK3f+dLaVCYUEiY67ebEV5/
 d0ZEE6rFPiKtgO7N/Wh2SaAHR0CpHT21TUYBrPdVUytNxnx+HsGBzaRq6inHBnFVD75c4sc4s
 qtZwTqc6//menH4hjD12LAsHJUWsdluyGaTeTukaCT7Lcc4IYKDC5cfs/Re6i2oqtqRVX1CGk
 a4b+GqeVG51RfhT4gK9OtGwMZGo0G/B/wONb5tBb8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_102634_588849_AE23313A 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Zhang Rui <rui.zhang@intel.com>,
 Will Deacon <will@kernel.org>, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 16.01.20 um 19:23 schrieb Stefan Wahren:
> Hi Rob,
>
> Am 16.01.20 um 18:33 schrieb Rob Herring:
>> On Mon, Jan 13, 2020 at 12:56 PM Stefan Wahren <stefan.wahren@i2se.com> wrote:
>>> Since the BCM2711 doesn't have a AVS TMON block, the thermal information
>>> must be retrieved from the AVS ring oscillator block. This block is part
>>> of the AVS monitor which contains a bunch of raw sensors.
>>>
>>> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
>>> Reviewed-by: Rob Herring <robh@kernel.org>
>>> Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>>> ---
>>>  .../bindings/thermal/brcm,avs-ro-thermal.yaml      | 45 ++++++++++++++++++++++
>>>  1 file changed, 45 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.yaml
>> The example fails 'make dt_binding_check':
>>
>> /builds/robherring/linux-dt-bindings/Documentation/devicetree/bindings/thermal/brcm,avs-ro-thermal.example.dt.yaml:
>> thermal: 'reg' is a required property
> can you please explain what is the reason for this? The example below
> has a reg property. I'm confused.

Please ignore, i got the issue.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
