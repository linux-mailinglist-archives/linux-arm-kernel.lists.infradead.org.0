Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D536D194565
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 18:25:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XzGPPDGVqf+tLt1GAPILOEvlWlcHgbfvX709fVvuHYo=; b=YjQSuD05wAeKB2
	PM+kDksdZlVQ3WkYGGusHz8nrgVRSkyKxJgeKOql+o1d+FNCFdlzTpMSvT0Qoaz1ysZB2F/KYyEUk
	FnaiRcaDTElsNacDLH8/HusL/prf9cUMvDZ+CaG7VSQxLOv2hZRlZMHRX+b0gI9XqPJB/23oxyj4N
	4uu+fWq1nmm531aGKolHmBGIdNMPvRl6x6cbAhPt7207VmH+aR4i2hqZpynGVjP8TlfD6ZL3JqVTO
	QUKd3PFHa1NZmHZyDUQCaP79dIKQZKvoI7G1yrx3TLJwMEvHoKrebDZoLtwxKZx/SCZqwJLhEfOSo
	UwuGj1bxGvA/yrNPm4Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHWFn-0007QB-Ck; Thu, 26 Mar 2020 17:25:15 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHWFO-0007Pf-D6; Thu, 26 Mar 2020 17:24:51 +0000
Received: from [192.168.1.183] ([37.4.249.171]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mk178-1jfYT036uO-00kQMZ; Thu, 26 Mar 2020 18:24:46 +0100
Subject: Re: [PATCH] ARM: dts: bcm283x: Use firmware PM driver for V3D
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
References: <20200303173217.3987-1-nsaenzjulienne@suse.de>
 <24f850f64b5c71c71938110775e16caaec2811cc.camel@suse.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <8c2bdd83-c8a9-7ba8-8d61-69594e6a2bde@i2se.com>
Date: Thu, 26 Mar 2020 18:24:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <24f850f64b5c71c71938110775e16caaec2811cc.camel@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:Ac7dLnMcbgcgIHaNRY2OVn2AFh3p6JDdm2ydQ54cEcT2mSjqKa3
 +NMdof+DtagSo61Cnlr/p19IyEN89nop7uW/8NunpYl26vTnQtbadf/RC5GZHbyID6qqbBU
 7QzOzEYomgGmUoiRjw+ROkj3LxUxcUMjMQCgVFMU+rNyO+DqTO5HatZ/gQMW/0yI2eOYvO2
 W+bVC+5UyZqyE9hS+6Hrw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cZABVwr5tBY=:d0bGNLa0oO/7atjaXzIj/Q
 SXY5z+mQUIu8mc9ZUrmlD564A+EJxx+/VKSc1NpceSEivcaJmPOcYLDBEKnigO2QACkd3Loqm
 MRK2bBhs9tb9TnYhWlAZ4rUHGBbxHogeGr7ny+amSDPgh04Gk9khk+iH5pkcOI+P5k+CDPZiF
 TizQFAfG8w664he2Lass4hhohwHmn/wtJhQEolrZ/pnkJyAHJhRNBoiEaf6VoURj5qm0o2kP8
 xcqAg1SFVqC/5HBpzVxLFngP34oUdG+KZPD8Z75CEeS+jaQeSfkkJTUa/op3mi9mdjdjnQU5J
 NhpWwFiSuXsiaokWQ9rWwBzxsDbrdLowGYyuIl5DSjode7LxjL/2lf+b7v/sBQUxC3tTiVpgS
 ci8UCxao4myngeF/X0CYBtlq7s8dtkL3iCmA3/74LrzqGNieMfy7Fu2O7FIxQbrlvzVUYjVDm
 n5Pc4nvsxXScOvoXR8E8V1aIqaCDtEENUf+s62AsWugJpO7Q0v29toq5R5omtLYQkbyAxMAyc
 vLzfZ3orvwt12t7M2HZGsqtSdtKuFN4m4WXkoSxjLaz7l+gWS4oNERt9bbBUPwe3mAg+mqdKB
 bcdW7Gpzk4rc6ykgou6j3Bzhp7s8heXEKPiEOX2uzwmzbtXDd2bxiFTycWIvpoAUEufE45wIE
 QOzaAsWhE+RCfXAk89LFNOFvVsxDdigHrSNco1oS4Ua6RPScGZBrc+BQtQue2q9k/eg0HX1Tz
 mRRLXLCaJHqSa+Fq2PVGgpW6+cney67wUIF6XN90MreAz4C4C9/1yXJQyNIM1TCFaxMYdFrms
 j2W6toqYG9BBMXrAit2vYJHsjL0gLvgioF1hJ1SjPHRq+L/8XLd5VuwkRwgiSlFC+sgtonQ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_102450_747455_2F052442 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 wahrenst@gmx.net, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 26.03.20 um 13:24 schrieb Nicolas Saenz Julienne:
> Hi Stefan and Florian,
>
> On Tue, 2020-03-03 at 18:32 +0100, Nicolas Saenz Julienne wrote:
>> The register based driver turned out to be unstable, specially on RPi3a+
>> but not limited to it. While a fix is being worked on, we roll back to
>> using firmware based scheme.
>>
>> Fixes: e1dc2b2e1bef ("ARM: bcm283x: Switch V3D over to using the PM driver
>> instead of firmware")
>> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>> ---
> now that the problem Stefan was seeing is being taken care of, I think it's
> fair to reconsider taking this patch. Maybe even adding a Tested-by by Stefan?

after applying "drm/vc4: Fix HDMI mode validation" this commit doesn't
cause any regression:

Tested-by: Stefan Wahren <stefan.wahren@i2se.com>

Thanks

>
> Regards,
> Nicolas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
