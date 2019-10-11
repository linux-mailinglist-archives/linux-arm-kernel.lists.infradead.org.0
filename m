Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A78BBD40CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 15:15:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GGdhsYsFB1T1qKVJapl2uFVwKKNPeeuaTmfj6yZuhGE=; b=SGSD+LabdtP/lG
	g+lo31Ty10fOp1nFJSGcSV4qaOAQ/byvG/0oBd43bnuuDwakIMlrUP56NED6q76UFD91s5o7gKwoF
	cqMpzU6f218yJEXtjJI2h9wL1L1nLtL0m2onIPeOluPRe9aAmUpJKiyR4Z94ppbwhiFVSV5A2i+mZ
	80fLE6yTdsIMPpTHO9ELbfkdr4P9jEFdTZR7eJ/kFgGbXSYmKN0NGcSz3ItRTJfNoGbx1noLCXzXV
	LuGt+L8pF6sR0ZKnVJV9dbRjgLvYCqDWeejSttV168bWNB3V3eM2n5vyDUrhOGPbt28ZQ+etHajae
	jMll8hdaLm0XoZ5rOsUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIulq-0006Ng-Gz; Fri, 11 Oct 2019 13:15:50 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIulb-0006M3-Fl
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 13:15:37 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191011131533euoutp015b0be65f3d1133fabd8674618e231156~Mmgj78-nM2714627146euoutp01v
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 13:15:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191011131533euoutp015b0be65f3d1133fabd8674618e231156~Mmgj78-nM2714627146euoutp01v
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1570799733;
 bh=GguMI2QjBcToBDJHA5HvNypfh1Vjz8JzyzEooSQs1XI=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=M6fIX8rOgnCFM3Jmz/y5s6d+YaBorq+jbjm6XyNbsBg96eT5oFTs7SJiuxnxDkj+E
 y+/wECvyK7Mj+0B8VjSHfq40tcKS71N2q54/phlS/VcAMy337lC1U8nRFHDP8pDeD/
 QhP9JhvJYO33vxGdv/WgJJyge+TmBkyv5j/kBRI4=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191011131533eucas1p13c19e3c1aa6e9050e33ce8b796d50ed2~MmgjtiSgn0162401624eucas1p1D;
 Fri, 11 Oct 2019 13:15:33 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 1D.1F.04309.57080AD5; Fri, 11
 Oct 2019 14:15:33 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191011131532eucas1p16d4005b62e440e076bdfd5131cd073af~MmgjaerHw0161501615eucas1p1B;
 Fri, 11 Oct 2019 13:15:32 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191011131532eusmtrp231341720fc6ab008d3afb5ae859a4332~MmgjT_xhO0632606326eusmtrp2p;
 Fri, 11 Oct 2019 13:15:32 +0000 (GMT)
X-AuditID: cbfec7f4-afbff700000010d5-fd-5da080751e7f
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id AA.70.04117.47080AD5; Fri, 11
 Oct 2019 14:15:32 +0100 (BST)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191011131532eusmtip1881cdbbf5bfd8dc63ac5edc7a3b30492~Mmgi8cxdg0053300533eusmtip1e;
 Fri, 11 Oct 2019 13:15:32 +0000 (GMT)
Subject: Re: ARM Juno r1 + CONFIG_PROVE_LOCKING=y => boot failure
To: Sudeep Holla <sudeep.holla@arm.com>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <0b02b15f-38be-7a63-14cc-eabd288782eb@samsung.com>
Date: Fri, 11 Oct 2019 15:15:32 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191011131058.GA26061@bogus>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrJKsWRmVeSWpSXmKPExsWy7djP87qlDQtiDVbcYrN4v6yH0eL+vuVM
 FpseX2O1uLxrDpvFgaXtLBZvfr9gt1h+ageLRcsdUwcOjzXz1jB6bFrVyeaxeUm9x+dNcgEs
 UVw2Kak5mWWpRfp2CVwZv9+2sxbM5a24+mc9YwPjc64uRk4OCQETiff9b5hAbCGBFYwST/uS
 uhi5gOwvjBLfNi9ghUh8BnJOycA0dG87ygRRtJxR4uCH41DOW0aJoxc/soBUCQs4SjRMv8UM
 YosIqEssObuFEaSIWWASk0Tv1r9gRWwChhJdb7vYQGxeATuJk69fgtksAqoSS/ZMB2sWFYiV
 uPfjODNEjaDEyZlPwHo5BbQlrv8+yw5iMwvIS2x/O4cZwhaXuPVkPthFEgKb2CXezn/CCnG3
 i8S3P2tYIGxhiVfHt7BD2DIS/3fCNDQzSjw8t5YdwulhlLjcNIMRospa4vDxi0CTOIBWaEqs
 36UPEXaUmHvwBBNIWEKAT+LGW0GII/gkJm0DeQAkzCvR0SYEUa0mMev4Ori1By9cYp7AqDQL
 yWuzkLwzC8k7sxD2LmBkWcUonlpanJueWmyUl1quV5yYW1yal66XnJ+7iRGYgE7/O/5lB+Ou
 P0mHGAU4GJV4eGfIz48VYk0sK67MPcQowcGsJMK7aNacWCHelMTKqtSi/Pii0pzU4kOM0hws
 SuK81QwPooUE0hNLUrNTUwtSi2CyTBycUg2M69OyNrq2RzEtLp3UYT73/9tJ5zvv9euvlP4v
 /GjBh86FeWunXF+uYH2pkPWzY7ZF6mT2Dfprv7lUi9xXy5Ex/WJ3wS2qc+Ofvaz3NubVLu4+
 YPuoqb2C7V/syfOhuiXujxtXbu+dHhSefT9XxzvM8mV0ZF21XIAs155OAfFJPHf4L2ppz1mp
 xFKckWioxVxUnAgAsfz+NjwDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrDIsWRmVeSWpSXmKPExsVy+t/xu7olDQtiDX616Fq8X9bDaHF/33Im
 i02Pr7FaXN41h83iwNJ2Fos3v1+wWyw/tYPFouWOqQOHx5p5axg9Nq3qZPPYvKTe4/MmuQCW
 KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1MlfTublNSczLLUIn27BL2M32/b
 WQvm8lZc/bOesYHxOVcXIyeHhICJRPe2o0xdjFwcQgJLGSXm3WlnhkjISJyc1sAKYQtL/LnW
 xQZR9JpR4tnM1WAJYQFHiYbpt8AaRATUJZac3cIIUsQsMIVJYvfmblaIju1MEv83z2AEqWIT
 MJToegsyipODV8BO4uTrl2A2i4CqxJI904EmcXCICsRKbNprBlEiKHFy5hMWEJtTQFvi+u+z
 7CA2s4CZxLzND5khbHmJ7W/nQNniEreezGeawCg0C0n7LCQts5C0zELSsoCRZRWjSGppcW56
 brGRXnFibnFpXrpecn7uJkZgzG079nPLDsaud8GHGAU4GJV4eGfIz48VYk0sK67MPcQowcGs
 JMK7aNacWCHelMTKqtSi/Pii0pzU4kOMpkC/TWSWEk3OB6aDvJJ4Q1NDcwtLQ3Njc2MzCyVx
 3g6BgzFCAumJJanZqakFqUUwfUwcnFINjFELGr9odc9NfVRydq7p2ifscXuiuGYeVqwwZ/z6
 0OO95PuOv8pFKzKP7dBQOJGzheHUin+OBk7JWmvFbc1Djr6u1vCX6L2X/lN8lbv7PrsJJ271
 b6w44cNSKvPezaxXxuBleP97/vDyve9EK1dtZjsm88ag3jPU5MKkxiluJ5p7rr00in16WYml
 OCPRUIu5qDgRAB5LqwrPAgAA
X-CMS-MailID: 20191011131532eucas1p16d4005b62e440e076bdfd5131cd073af
X-Msg-Generator: CA
X-RootMTR: 20191011092604eucas1p1ca11ab9c4c7508776914b0eb4f35e69b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191011092604eucas1p1ca11ab9c4c7508776914b0eb4f35e69b
References: <CGME20191011092604eucas1p1ca11ab9c4c7508776914b0eb4f35e69b@eucas1p1.samsung.com>
 <33a83dce-e9f0-7814-923b-763d33e70257@samsung.com>
 <20191011100521.GA5122@bogus> <7655fb41-cd13-0bc4-e656-040e0875bab8@arm.com>
 <2bf88cd2-9c4f-11dc-4b70-f717de891cff@samsung.com>
 <20191011131058.GA26061@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_061535_732679_1D8B1498 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 LKML <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep

On 11.10.2019 15:10, Sudeep Holla wrote:
> On Fri, Oct 11, 2019 at 03:02:42PM +0200, Marek Szyprowski wrote:
>> Hi James,
>>
>> On 11.10.2019 12:38, James Morse wrote:
>>> Hi guys,
>>>
>>> On 11/10/2019 11:05, Sudeep Holla wrote:
>>>> On Fri, Oct 11, 2019 at 11:26:04AM +0200, Marek Szyprowski wrote:
>>>>> Recently I've got access to ARM Juno R1 board and did some tests with
>>>>> current mainline kernel on it. I'm a bit surprised that enabling
>>>>> CONFIG_PROVE_LOCKING causes a boot failure on this board. After enabling
>>>>> this Kconfig option, I get no single message from the kernel, although I
>>>>> have earlycon enabled.
>>>> I don't have Juno R1 but I tried defconfig + CONFIG_PROVE_LOCKING and
>>>> it boots fine.
>>> I just tried this on my r1, v5.4-rc1 with this configuration worked just fine.
>>>
>>> My cmdline is:
>>> | root=/dev/sda6 loglevel=9 earlycon=pl011,0x7ff80000 hugepagesz=2M hugepages=512
>>> | crashkernel=1G console=ttyAMA0 resume=/dev/sda2 no_console_suspend efi=debug
>>>
>> That is a bit strange. Here is a boot log from v5.4-rc1 with pure
>> defconfig: https://paste.debian.net/1105851/
>>
> I see from the boot log that both Image.gz and dtb being loaded at the
> same address 0x82000000, will u-boot uncompress it elsewhere after loading
> it ? Just for my understanding.

tftp downloads Image.gz to 0x82000000, then decompress it to 
$kernel_addr to save transfer time

my bootcmd is:

tftp ${fdt_addr} juno/Image.gz; unzip ${fdt_addr} ${kernel_addr}; tftp 
${fdt_addr} juno/juno-r1.dtb; booti ${kernel_addr} - ${fdt_addr};


Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
