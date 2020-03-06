Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF1217C71D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 21:34:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3R7+nT9Ur3deNHFA49ACKZpmxTfM7NAFGMiQd557k/0=; b=FfQDfAa3EfodmX
	Yj26QToZ95RAw/cI18tYv9wNyq2aZNcZRQvNDZvEe+rCsEiv16saOl8IPut2tSYiC4mfP2D0Uhv0P
	XiUvz4A2H6nHqVPRp3tWqVP785884CGSVE2WpACoyhjgAti1XTebWmL+3KKDumnTsch0h2FBaYiM+
	rQ2kk1SpX7mSy5Nk2I5FDSs1N7Vj4bXcPdVTWIWgmQE5xkP//ohX5HL4352AK3I111ErpMljqUkI8
	ykPrK+awGH8GpOEqP6meH5YEb4+vt5R7TIY6hCnv8lrn8uVwr/rdHzDiyEeJpxROATL84bCgRSM1/
	Rd2jHVHkHH9Wa8gp9YEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAJfI-0005O1-D3; Fri, 06 Mar 2020 20:33:48 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAJf9-0005NS-4V; Fri, 06 Mar 2020 20:33:40 +0000
Received: from [192.168.1.183] ([37.4.249.171]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mq2vU-1jeN9h0Z0c-00n9yz; Fri, 06 Mar 2020 21:33:27 +0100
Subject: Re: [PATCH] ARM: dts: bcm283x: Use firmware PM driver for V3D
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Eric Anholt <eric@anholt.net>
References: <20200303173217.3987-1-nsaenzjulienne@suse.de>
 <736f0c59-352b-03b2-f77f-bfc22171b3fb@i2se.com>
 <03fcb1e2bc7f3ff389b6dfbf3964e159a93ae835.camel@suse.de>
 <d3d40174-9c08-f42f-e088-08e23c2dc029@i2se.com>
 <f2ec22160ac86aec8d252ade7d6eb8789777cc42.camel@suse.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <01ceb60e-a791-b6ca-352e-ad2e79f264e3@i2se.com>
Date: Fri, 6 Mar 2020 21:33:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <f2ec22160ac86aec8d252ade7d6eb8789777cc42.camel@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:u+EseD9Ih7mod1fhH/Pdgh/fp0W2D2m/EzFB4lsw/lodf8gCHCU
 SKtZV+752kEyEdC+quRwxwrI3fw9ZOnNDSRpX1LEmV3pomvT730VEDfQbvHXNqod3k7NhAX
 IZnPlIbMHuXdyk8dR2JLJL3wfyqEMJ8etIAGwme1M+CwbMTVtaVMCFTPUgdpy8nDwLgCPr4
 ZSsZNltulnE4H4/AVCRWA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:QBbaB1y8KJ8=:ZYjE5OHv/iFsetiK4D4yCr
 kl44n0JSzMvgBBFxvYY/mgfz3JUmZKw3cFefCwgadkbIN+pRThPJnHzX9qUPLmeGC2NGqiZx4
 v3HTq58tHCokKgL6ZkWs6gwO5sxel3d5VFtEko6DVi89ZAVcQYFWWaAHdnamPZu04yvsZJXsW
 +zh5VHtvWxzbH3m2EVoMTUnOsxKX3qg5WUeUp3fRQLCot8dhk8BzEoHhmPtpFNB+0Euk8DX7E
 Geno+FsZQpg6246FaFMPPK5vrJhqHf7VLXr4N2g+a9Atc8Fz1iIDFKYcn9uQOweyX5o9qUyiN
 rDhOFXqkRbYR3nUkiS6dnv1GdEoGNSj69MkJFfZQ/iD+wzCTd5n6Ip14rzLdBkXdCZmt3OWpP
 8jALEixzLzUIkmCOSFqh3pWCTNY5STmO1EBXfjfImD1wAKJm/WbbpnIWl1lZCRiRSSXGRwR1h
 smLxDKjPk4hVFn/0pLcdmKMPHxIDkzST5JaLtENy21CcXNZz9fYlEU4j0/Gw4LTu9h/nQi5c7
 hflqIAYjrQsR7hQ9EQov7vYoG+hZrTUfag/5f/uqdZ2h0VS9B/URixBb50FX9SxXlAT3jZaxj
 2rTpeIzY58x4fQYfF2iZWD3DTnlmQrInEo23ubrxuAndFpssFHWObVsNpWss58wZIkWJ8ntMN
 w1YdjAXi66j66fcPsOc1Z95eFQMXEkE5yyxCXN92gtdLJA8AYD35A+tqEvHKMLNDkszdLrQmp
 2zR06Dtgg3vGBg2ogXenadsyUQuUqMVpDChIYNQCi1Upl0MRvyNWoItcDT1p2ji94cQBbndKT
 OXiRR5OrDkg6e93NGEp5HhVTXmyigLTuqIwrxpDqNfgQSjYSuidEUarpLjecQJmHQREX0X0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_123339_473365_4D73BAA5 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, wahrenst@gmx.net,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

Am 05.03.20 um 11:44 schrieb Nicolas Saenz Julienne:
> Hi Stefan,
>
> On Tue, 2020-03-03 at 20:24 +0100, Stefan Wahren wrote:
>>>>> Note: I tested this on RPi3b, RPi3a+ and RPi2b.
>>>> as i already wrote this prevent X to start on current Raspbian on my
>>>> Raspberry Pi 3A+ (multi_v7_defconfig, no u-boot). We must be careful here.
>>>>
>>>> I will take a look at the debug UART. Maybe there are more helpful
>>>> information.
>>> It seems we're seeing different things, I tested this on raspbian
>>> (multi_v7_defconfig) and on arm64. I'll try again from scratch tomorrow.
>> My modifications to the Raspbian image (from 13.2.2020) are little:
>>
>> - specify devicetree to config.txt
>> - change console to ttyS1 and remove "silent" in cmdline.txt
>> - rename all original kernel7*.img
>> - copy dtb and kernel7.img to boot partition
>> - copy kernel modules to root partition
> Would you mind retesting with the latest linux-next? I validated an image based
> on 5.6.0-rc4-next-20200305-00001-g285a7a64cd56 and a fresh raspbian download on
> RPi3a+ without X issues.

i retested with todays linux-next and the issue persists on my RPi 3A+ /
HP ZR2440w with this patch applied.

I will try more hardware combinations tomorrow to see, this issue is
more board or display related.

Best regards
Stefan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
