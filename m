Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 296AA100C60
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 20:45:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lKz5dFRRbi/osNySYPjqc3kH2Z1vWo7o4W3bWZ8Dltw=; b=OURne2eMywlLHH
	5sXsEpmj/HdHLnlorHzEU/buDjYAcZ6ltz80HQUDk6FV4IfRENS0BFRz1IqEWIltCgw222HL6JL4T
	k7w0MIMwFxVSVhjbVuxWqF/mN9rkWuDtj9TjQIoTRE83W4ap2XrT4RqnnLtRVRRm6JgQkQorQLPcU
	7kd7mOx75fnBoyaj5exPZO27KOfBysPwF7VW/yP1w0d/aJj0GGsp0hFgJE/1SuedVDyiDZMkWnLSg
	g4FksSHEncC/2glMQvm/Eus9OPVd3Y7Rx0jmzYx3H+iafvB/nABqDrIH1tm0KfUIQev3xUUAqRpkw
	kDeT5Rh+nV2vnnp6BaOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWmxj-0004Gr-3d; Mon, 18 Nov 2019 19:45:27 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWmxb-0004G6-5H; Mon, 18 Nov 2019 19:45:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1574106298;
 bh=XSpYzjhcgiHHrYhcZHLykdCAj0e3wpqTkNXlUfzkU4o=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Kob6o5l5jdcqPStOSOAJau0p9oouSqofToVYgzuAbv8dHGLXf3UOzpelxCJoeeZdQ
 PlvPIgb+WEHwGwDKPU4e6rANIbrfeiWZFB+aLYApWxlwId/7mos3Jj5Vx6WztjEYP6
 o4HL5jyK4tEnrL5LVdUpJu2W+3V8hai9kcJorfyc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.176] ([37.4.249.101]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MKbkC-1iIQQo2sto-00Kxvf; Mon, 18
 Nov 2019 20:44:58 +0100
Subject: Re: [PATCH 3/3] ARM: dts: bcm2711: Enable HWRNG support
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Stephen Brennan <stephen@brennan.io>
References: <20191118075807.165126-1-stephen@brennan.io>
 <20191118075807.165126-4-stephen@brennan.io>
 <3209f601ad0537a7ef01e2a752f022ccf8816210.camel@suse.de>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <5cc711fd-4d47-5369-c424-363677334b9f@gmx.net>
Date: Mon, 18 Nov 2019 20:44:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <3209f601ad0537a7ef01e2a752f022ccf8816210.camel@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:hOwNU8cCHONZ9O486Jwq2iYZo79fAwXMhOiTJGOJ2PlKe+8gm6Q
 UGZOE/CTkcMnh13XIW02vvGVxZLDBTfhtyX/V+eFjeKG0rSDSrVsYC2qS+YNqdTpolkbIr1
 67O8WyoHcMO0Pt+KOgbWoq45imjgCX1ZRtzKZ6z8dTO+YJtfGNVKw91mLvvOE+StvshZzFX
 9hmwXJS0vB8xxwCdtGr6A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:IR+/bxyYH8U=:KGTLKGtCmOSFtC86RHUyRn
 6tBB+OxxEMNzyMCEHd3PLrD51+ULa0dMFC6VFO6GSgSf8Qbc9YmGewKKfnFZSPJj1CQ63o0Eu
 YIvVXMzkYxK1Ym4dJQXgJ6xYwO9xn2Vz5AV5eeo9A/Xudzp3vtsx0Uh7cGUm8xtHOzAVZiKFM
 gP18EqKGWZLG9h5wuEm9R5TFO19ROMpvSP9kA8tQBedg8pwejpEjtPVgOpZaGHF2Vq4mo3f33
 ixgrEi9tK7b/L1P0OyDXmWFnQSh4zxDPrsrEwdnzedQfzUAaImRjZjUOwxVv3e+KLgBYcA1Dn
 lCHD2oeAh/MRII5QCGIm00VxQcG5dIquSyWB62p1R+GPvbsI5rlCNV7zvICgNdsUwQlWGmIjs
 5MVqLbWloeovB1G6M0NX8Uf5XwGLbe6aeDUPy7bX5WCwbTOHxhc11IpozjrONNJQji7PbGUFe
 bGjK49FUrzNQFkeYReJVw0ioZS0HhDh3OzzcjBlF4YJ8UT8hoLqRFFcxFWDZM1cPKLu6nwJj/
 5ZUUasjCFowFJ0d8Pa5CS3PRtiRWkddic2hR/t3dok7S93xnqbpqx04uNbhjnKek9lQME8rWV
 GzQn/Gx1tgACdbcIyaMWvTaf/n1Ugkk1UldXuWDICh6qBAquh1nWGU5lBNlKty9nqcf7eiuUL
 5OXXIKImipmMor65OEVHn38eGHqCCprKlwywlR1oqU4gzbw7yxZGh15okVFVZLdbyUgE+Oz5W
 J7nFv6u2bRj4CCBAn/skhbeWQGoJA9PQFrhEpKEi3oL/nyRnelSyp0TXVOVyfNDXzix8EskVJ
 V3EjiGpPqMs12Q4yiV3kKPbbLAnffb/OdtqMKXsMFuLs1SS/Ek+u+17CNr7NfqpYnMaLCFF8r
 LnTzE5w4FDLEQ890vHGFah/jCdH0hEJCDUNvIyYes+whaFKen2q9wa69F+F8h06TBE7Pr/qjL
 3dX1Frn9NBqOb7E36gRbhFYQK1Kxg/I/8g+qkNDwR0MWP0l9nSFSiO8WjHZ2K8Y5xTMP05kat
 DhlYiF7sJ79RkVOHApJaRlaPUfJwVjQww/0HuiOr1edGc6StO69beT+0R2WNTk83Buu1zcG2v
 EzQuqvmvvXH8ufwxcYV8YsMAbpnZQrbsfS3rCH0tnYHyfHZ3a9vUPHLBI58Py0+aAPRwTozp0
 eQ1npU3/B3X/xQTedc7ruIIhRdCvBZnj+VtLFiBzRoLIFO40y9i9q3EI2udLHptGcRmb6cHV1
 u3VU1rHYZgDFYg229qicqHv6Bn+KBoUXrpPN5NKwgRWjL02CtdXcA6ihZWfU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_114519_539337_20C61ECD 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-crypto@vger.kernel.org, Matt Mackall <mpm@selenic.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am 18.11.19 um 12:44 schrieb Nicolas Saenz Julienne:
> Hi Stephen,
>
> On Sun, 2019-11-17 at 23:58 -0800, Stephen Brennan wrote:
>> From: Stefan Wahren <wahrenst@gmx.net>
>>
>> This enables hardware random number generator support for the BCM2711
>> on the Raspberry Pi 4 board.
>>
>> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
>> Signed-off-by: Stephen Brennan <stephen@brennan.io>
>> ---
>>  arch/arm/boot/dts/bcm2711.dtsi | 5 ++---
>>  1 file changed, 2 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
>> index ac83dac2e6ba..2c19e5de284a 100644
>> --- a/arch/arm/boot/dts/bcm2711.dtsi
>> +++ b/arch/arm/boot/dts/bcm2711.dtsi
>> @@ -92,10 +92,9 @@ pm: watchdog@7e100000 {
>>  		};
>>
>>  		rng@7e104000 {
>> +			compatible = "brcm,bcm2711-rng200";
>>  			interrupts = <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
>> -
>> -			/* RNG is incompatible with brcm,bcm2835-rng */
>> -			status = "disabled";
>> +			status = "okay";
>>  		};
>>
>>  		uart2: serial@7e201400 {
> We inherit the reg property from bcm283x.dtsi, on which we only define a size
> of 0x10 bytes. I gather from the driver that iproc-rng200's register space is
> at least 0x28 bytes big. We should also update the 'reg' property to:
>
> 	reg = <0x7e104000 0x28>;

Thanks for sending and noticing. A proper solution would be to move the
whole rng node from bcm283x.dtsi to bcm283x-common.dtsi and define a
completely new rng node in bcm2711.dtsi.

Regards
Stefan

>
> Regards,
> Nicolas
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
