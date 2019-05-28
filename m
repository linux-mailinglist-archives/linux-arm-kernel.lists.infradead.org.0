Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6B42BE7B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 07:04:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N/BEWjCHz7iSlr5pr2bElBRfgSkpueQMyhE/iaxQom8=; b=JmAwQRIvvvn1qK
	3qvT4LVQYpUVJu7ok3ELeTxyiUwLt7UwMVyQ1qSltMM3ZmmOd6uipsd8OKyWs+Cbhsd1AFSedstHb
	YVthiLl6UDb2YcgLllf+7ulFHMJWTuRAKbhLPuuw8/ih5jooVKd2EuS/joW9bX1pPYhJ9tvzKm2j4
	amezrRiZ7HyK2gvKI0wYirl9cSgo4A7CVXMSrXeerJtuVZO982FVpej9ajCv6klS6C/xjIgjIf+Yf
	DyPM5DZSHZtTjiLLNdgINHTEoG55/Wz2jz5mP3nheK2ZMplvHUAXmRaz73ta5zoc2eg9+GIgPNZdS
	5VAlYl6/1THrdDo8dUSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVUHW-0007Ny-AF; Tue, 28 May 2019 05:04:14 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVUHP-0007MZ-2Z
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 05:04:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1559019833;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=9WkeJIWpDgnu/Qz4CisdQbmN4fg73bYivCn+uApvxPE=;
 b=o1PnMKhVrXjtep7n8+QCUPYCUSxaM+64wFgsvDKwp9dbBIpOHgmL6JMykMbip5/iNZ
 OZcRWXEL4NNOZWVvOlIKokFFXp3MsXRBW3Byy4JOp5ajfZV1/j+hxbgkjJYuvyoK2JkN
 LFYBg01eir4lP9QxicRpEhIEkhu8Y9zn77ClKKMrRLpB5sOTmHKQLCgGFuHCv9u6AQZ9
 7o75T01IbqBHqw4ICF0gPTZnZOiDT9AaEhW4nwGv+5WYW6ZGSDgOWoU3RkFEYhzyBEg1
 myavY5EpcnWw7ylnf6qoBrKmCwjjpwK14DLGTxdTPTukvplMx2TBiOTPaXw0ngRJv1eB
 QUHg==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGH/zvwDCv+Ds="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 44.18 DYNA|AUTH)
 with ESMTPSA id j04dc1v4S53bn3g
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH
 bits, eq. 15360 bits RSA)) (Client did not present a certificate);
 Tue, 28 May 2019 07:03:37 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: omap2plus_defconfig broken on ARMv6
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <20190527204135.GA24195@darkstar.musicnaut.iki.fi>
Date: Tue, 28 May 2019 07:03:36 +0200
Message-Id: <56990EA4-E280-4C78-9536-E8AE1964725E@goldelico.com>
References: <20190524220731.GB4597@t60.musicnaut.iki.fi>
 <20190527055746.GH5447@atomide.com>
 <20190527204135.GA24195@darkstar.musicnaut.iki.fi>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_220407_703865_FBF21842 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:3 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Am 27.05.2019 um 22:41 schrieb Aaro Koskinen <aaro.koskinen@iki.fi>:
> 
> Hi,
> 
> On Sun, May 26, 2019 at 10:57:46PM -0700, Tony Lindgren wrote:
>> * Aaro Koskinen <aaro.koskinen@iki.fi> [190524 22:07]:
>>> Noticed today that booting omap2plus_defconfig on N8x0 crashes
>>> early. Disabling CONFIG_SMP makes it work.
>> 
>> OK. It sure used to work when I last tested but that's been quite
>> a while now. Any ideas which commit caused the ldrexd regression?
> 
> No idea, I tried even 3.16 and even that seems to have the same issue
> if multi v6/v7 and SMP is selected.

Could it be an unknown compiler issue?

I just had the effect that v5.2-rc1 started to try to build gcc-plugins
(something I had never heard of before) because some Kconfig defaults
were changed. And my cross-compiler setup is not capable of doing that.

I have grepped a little into the code and the offending assembler statements
seem to come from __cmpxchg64() which is indeed very old [1]. But the question
may be why this 64 bit code is compiled for a 32 bit ARMv6.

Other code seems to be guarded by #ifndef CONFIG_CPU_V6	/* min ARCH >= ARMv6K */

[1]: https://elixir.bootlin.com/linux/v5.2-rc2/source/arch/arm/include/asm/cmpxchg.h#L244
     https://elixir.bootlin.com/linux/v3.16.68/source/arch/arm/include/asm/cmpxchg.h#L230
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
