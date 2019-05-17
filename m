Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D357421F35
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 22:56:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6J6IZWuN0ri5qkNe/e2T38Pnsu4KPaCUHttaHVXLeWM=; b=QVBEaofdWX7Ng6
	lfWTPEom09J7gWD7iQXRCeuvfLqxXGIih4GhMT1a6M7OUbrRIYwD4WAE50zXCE9S70pnNJMxoPAK4
	yfpOWqJJ6SvnHpm3CoVrDPyrTeCpqx1YjBr7qH2/bqJdfbkSkdEegnmXddy+Osiojb2YIXvYioDoW
	yjCXEfcGLavxiL1V0lwB9lgO7ku12GSekfaOsXboHTiLJYaBn1j2MNZZjTZwfA8s0MNqliRT5LKlb
	B0Q7Om7io7m7VmpjJNdGGCLcwlrJyK7V+exC8VgtURpeI3JV9LNXLzjjn+RASAvJ8j10mjKzAreSy
	bK/YlcUqlQXjqu+HZPtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRjto-0002Fs-Qg; Fri, 17 May 2019 20:56:16 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRjti-0002FH-4H
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 20:56:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1558126560;
 bh=HI4SNpJD9kyetB4gW9KvGGP7C6zR9uWQeIt7hvEdDT4=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=B2DGTI5UL1+F3FQ/bVS3Iz5EbZvCTcq4mMe8TteAC0S+1LYUlgKYR1kM5aszCL4ZO
 T/yAKFm/by1CAknhEC1jbu39yEtL5oowHQWWIQavTvTJeiK+IP/FrdJCSIzROn0uPc
 gabEe7dDlJXoWPQUcV/JXfBeFQMbvGM1hbWYDA7I=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.123.56] ([84.118.159.3]) by mail.gmx.com (mrgmx103
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0Lmazv-1grqmK3Yjj-00aF8W; Fri, 17
 May 2019 22:55:59 +0200
Subject: Re: [PATCH 1/1] arm64: dts: marvell: mcbin: enlarge PCI memory window
To: Gregory CLEMENT <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Russell King <linux@armlinux.org.uk>
References: <20190517161123.9293-1-xypron.glpk@gmx.de>
 <87k1eozvxb.fsf@FE-laptop>
From: Heinrich Schuchardt <xypron.glpk@gmx.de>
Openpgp: preference=signencrypt
Autocrypt: addr=xypron.glpk@gmx.de; prefer-encrypt=mutual; keydata=
 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 Eg==
Message-ID: <f633e7d1-264b-8a17-7bc0-452ab38883af@gmx.de>
Date: Fri, 17 May 2019 22:55:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <87k1eozvxb.fsf@FE-laptop>
Content-Language: en-US
X-Provags-ID: V03:K1:WG4WahyBFtDa+GEWF5Q+TwdDp3t4SgzQhiMyiwQLv9Cg13MVoy6
 L2EhChJbrPekk8oYRt1n7L+izJQmFajXgmL+ks6sjWNRiPZUX0HjbTXyvFKgbhIxeGlKEgF
 sXur02qQ4nnUMi0ofhuYTfZtq5FYAS+0tSFY3HSpwscp+fuoH32PVV62jzSGhjOQKW5Kczo
 EZvT7WQIjWQEUAxjIo4AA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eb2OA9PKOyQ=:xzL2EDMVNgEGhEppyiah6t
 wZfrmxd2/skrW2i0rzMYRQy1Q43klUy6AS45OT6M8clhbnc3kHAbqoM5akYn4AkUeA63U243A
 pyA9LFg6eoQyxruWegJa10lqRJiq9IDLK9f0HCw8Jx5R+TT7wmfA1UKN1cFa51te6GLhmnNJu
 nVrPEySKTnYR8Gg+q1Y2q2Kj+4yhCZAgWjydfSUbhVhAAhzly+1r6DL2QgSkmFrRGmzS3TZKh
 Ki8/KZEhVJXtP1i2YiCCE3769ZvLWoPxmK+zSpchz9THiqloVyXIe4/o88a4R+1geCHG0EzLS
 wbdXdVOX4Zk7RGcKukPWx9RC3OVuEmwI5WWEGFtJgTPjvHnBm9v2eztwJIMJYEppxeZsPf0JS
 42kuOys44o9+ijaAy2f0zqkfJ/jcZJj1v4PVL7XrW1WTOJugd3j+CCiF5Ho2T9bqJzBGIvoTr
 tUqO28oO87p/m7b+52nGpLiJOqosBGZswiaJGLsg8izCMxQ8KIO1sA0D0ojyCZQ1/vvVZymTx
 d+swna9fM4n67CQUJoZc+J5Gd8IUp0qAtBo13RznyQF/Y+gv010cRKGY1VCJU0QZB4hWYr/TD
 rrRFjVpSeahV16mX7dBksRdvGBNvVf2UQw6DU6DuVxYBzdCLToZnCaOvX0BeeCOBiBpNs3BwJ
 gis7uTRFH1MmeMLoc7Ob+njaiUA+GNV16NqOBKdt31+1uqM3o2fSYKVDLQG8hXMF4rNRSLH4t
 bOG8NmBAToDICkbIbeOc9K1ukBQA23bR+yqSYNx+xdXv+dVoku9/VmX2g0GbhVz5HcNZKPeKR
 ztc1moV9PcgaTPfRuabsVRxEBebPdYr5DfV6nGtOkAULJBCF/5JiqVVXmmmxJt6QNFqtjEPLU
 TU+0kmw80huQAQwdH3wU9hulUuV2ug/CYIQDFtvKyJCgEnBH83J6m/smlub6Jx59yVfBJZ1Mk
 dbkQSXxKHxyetR6wxK89hRX+HZ1lJCK0OqWrEAkBCMaO5tvvAUnl1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_135610_512508_6E114C04 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (xypron.glpk[at]gmx.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/17/19 10:08 PM, Gregory CLEMENT wrote:
> Hi Heinrich Schuchardt,
>
>> Running a graphics adapter on the MACCHIATObin fails due to an
>> insufficently sized memory window.
> I think "insufficient" is enough or I miss something.

Thanks for reviewing. Do I have to resend with corrected wording?

>
>>
>> Enlarge the memory window for the PCIe slot to 512 MiB.
>>
>> With the patch I am able to use a GT710 graphics adapter with 1 GB onboard
>> memory.
>>
>> These are the mapped memory areas that the graphics adapter is actually
>> using:
>>
>> Region 0: Memory at cc000000 (32-bit, non-prefetchable) [size=16M]
>> Region 1: Memory at c0000000 (64-bit, prefetchable) [size=128M]
>> Region 3: Memory at c8000000 (64-bit, prefetchable) [size=32M]
>> Region 5: I/O ports at 1000 [size=128]
>> Expansion ROM at ca000000 [disabled] [size=512K]
>
>>From my point of view this patch is correct, I don't think it is a
> problem to map more memory. So I applied on it mvebu/dt64.
>

To which repository are your referring?

Best regards

Heinrich

> But I add also Thomas in CC who know better the PCIe support on mvebu/
>
> Thanks,
>
> Gregory
>
>
>>
>> Signed-off-by: Heinrich Schuchardt <xypron.glpk@gmx.de>
>> ---
>>  arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
>> index 329f8ceeebea..205071b45a32 100644
>> --- a/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
>> +++ b/arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtsi
>> @@ -184,6 +184,8 @@
>>  	num-lanes = <4>;
>>  	num-viewport = <8>;
>>  	reset-gpios = <&cp0_gpio2 20 GPIO_ACTIVE_LOW>;
>> +	ranges = <0x81000000 0x0 0xf9010000 0x0 0xf9010000 0x0 0x10000
>> +		  0x82000000 0x0 0xc0000000 0x0 0xc0000000 0x0 0x20000000>;
>>  	status = "okay";
>>  };
>>
>> --
>> 2.20.1
>>
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
