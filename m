Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC1417E4B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 17:23:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vJVLMev6i5WaBAGIC8VgL10rqr5fsh2MH+SLLoi8+oM=; b=b0809WUIooxJGO
	nzGEkjLFmY7wPDmGAIez2o6KR2FyvDbMEqTmSj90LmzK6Mh1d2xNYdWNEUt7ANPBJ4UCenuVUFxS4
	gxJ4XEwPzaUOR98SX7YnYh+4nFNDLSowB6rY4PiVLIWM3S3z1BpJeMQsDg0GiulEuJr7zYmWTYtq1
	+K1M+I9gM5knFUk9SyQ4hXRkPjrlLrv2sghSHpHV9F0luFGVzfDIgPcBlOjxy5EXxwnWwpu0VXXVS
	sDCgoKlKNEJpTtJpA5VL4h8H1pHFovVAun4pP70A3bnAh/eoGxIFJ5N5UqPzmnhuKdCIrMG0qZe7n
	dXRQZlR5wxd9NS+kjkAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLBw-0005Ux-VR; Mon, 09 Mar 2020 16:23:44 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBLBm-0005U5-Lr
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 16:23:36 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200309162332euoutp015ad4c656c12b23a304acb16aa5fd0f27~6r1g7uFt22550225502euoutp01w
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  9 Mar 2020 16:23:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200309162332euoutp015ad4c656c12b23a304acb16aa5fd0f27~6r1g7uFt22550225502euoutp01w
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1583771012;
 bh=mVaSzErXXr6NkeK167F1lomH4Gm8JqQhQ+aVHg2/4o8=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=mMmigeNknFMFtAV13UVky5lBOLNbmelucHrz+0NJhlJPELLZggyQssSJ8Xxbfjwhi
 hjy7kTh/RXLEpWJA6F8XJOFd7g8toZtp30n+TIO1Rsz4gdf/DWH9NFwi+IyLP04CRx
 z2/rnOBp4Gz6TlaCy6zMkYczNZ6RG7OY96OhIGw0=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200309162332eucas1p2bae9eb1d7c08ded75beb0d3730f212d6~6r1gq3ZkH1251512515eucas1p2g;
 Mon,  9 Mar 2020 16:23:32 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id DA.C2.61286.48D666E5; Mon,  9
 Mar 2020 16:23:32 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200309162331eucas1p206c78f3ed49cccd2f401980b158654ab~6r1gW2pe-1255312553eucas1p2o;
 Mon,  9 Mar 2020 16:23:31 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200309162331eusmtrp2298c3dcb041eef344c24c03f4d890f10~6r1gWKkqI3143831438eusmtrp2I;
 Mon,  9 Mar 2020 16:23:31 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-96-5e666d849f15
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 51.FC.07950.38D666E5; Mon,  9
 Mar 2020 16:23:31 +0000 (GMT)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200309162331eusmtip1e47cac4268bd201db6e9c36373ef8856~6r1f3cI341492714927eusmtip12;
 Mon,  9 Mar 2020 16:23:31 +0000 (GMT)
Subject: Re: [PATCH] Revert
 "tty: serial: samsung_tty: build it for any platform"
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Geert Uytterhoeven
 <geert@linux-m68k.org>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <6ec29c9d-4a59-77fc-6cb4-38b86d62d22f@samsung.com>
Date: Mon, 9 Mar 2020 17:23:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200306130314.GA3778623@kroah.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SbUhTYRiGeXfOzjlai7dp+KRWMCIy0LSsDpVhILZ+GQQlZeqyk0puyo5a
 +qPsA51CmlMpZ2a10mWlY4qmqdEmWvlVlhYmJPiBZiNTS3JpeTxK/rve+7lvnvuBlyHkbVJ3
 JlaTyGk1qjgF5UzWtPzu8r6mPhvuO+Ag2Tl9C82O9DVK2KvGSorNN09I2JzBcYIdrhqUsF1d
 Zpq1DPZK2VtdTRK23XidZt98nKICVykds3qktJRnUkqrTYeUL4qf0MqqB5eUH15dkSorq3tI
 5ZRl4xHmhPP+M1xcbDKn3X4g0jmm3/GUSviy/kJFTlgaGnHNQk4MYH/ov5tGZyFnRo5NCEwv
 66XiYxpBkSmTFFxyPIXgqnnzcmKks5gQTWUI5od1hGiyL5gmQgR2wUdBP2eTCOyKI6F52kgJ
 AQLPSKCn5jMSBhTeC7kZ5Ysswwcge/TPwjaGIfFmqDZ5CfI6HAqTAzapaFkLrwuHFgs5YT+o
 NFsWmcBu0DdUIhF5E9Taby+WAzxGQ07Ne0psHQQPa+tokV3ga2v1EnvC3zohLAQqEMzpRpfS
 tQjK8uaX0vugv3OWEtoR2Asq67eL8kFoKPxNCzLgNfDJvlYssQb0NTcJUZaBLl0uureAudRM
 La/NqntE3EAKw4rTDCvOMaw4x/B/711EliM3LolXR3O8n4Y778Or1HySJtonKl5tQQtfrG2+
 dfIZ+tl92oowgxSrZTHeZ8PlUlUyn6K2ImAIhavs8raocLnsjColldPGR2iT4jjeijwYUuEm
 23l/7JQcR6sSuXMcl8Bpl6cSxsk9DTWtM/fn9myKSJ9qCHwcUtbxw7+gPKyxMGB/tuMQb5zt
 oNvHjaVlu96S777d6Z5pj325p+DkbcOE7vvuoDl9QLTNmuGZGpp43MnUYnqkmW4t8ShKe55i
 ts00/DIG74joPfbL3nduQ2P3vaats0d0zXZL30Uu7ylUSPOD93k7ug/7Kkg+RuW3jdDyqn8P
 Zu1sXgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrDIsWRmVeSWpSXmKPExsVy+t/xu7rNuWlxBuvmGVr8nXSM3eLZrb1M
 Fs2L17NZTNnwgcmi//FrZounmx8zWZw/v4HdYtPja6wWM87vY7I4s7iX3eLU9c9sDtwev39N
 YvTYtKqTzePQ4Q5Gj/1z17B7bF5S73HlRBOrx/otV1k8Pm+SC+CI0rMpyi8tSVXIyC8usVWK
 NrQw0jO0tNAzMrHUMzQ2j7UyMlXSt7NJSc3JLEst0rdL0Mu483stW8F9yYp1/TENjM9Euhg5
 OSQETCSenZvL3MXIxSEksJRRYs7qN6xdjBxACRmJ4+vLIGqEJf5c62IDsYUEXjNKPPvKC1Ii
 LBAsceaHFkhYRCBB4kbHVCaQMcwCP5kkFj6ewwo1k0li/Z/fYM1sAlYSE9tXMYLYvAJ2En0v
 /rCADGIRUJHYskITJCwqECFxeMcsqBJBiZMzn7CA2JwChhLrN2wCs5kF1CX+zLvEDGGLS9x6
 Mp8JwpaX2P52DvMERqFZSNpnIWmZhaRlFpKWBYwsqxhFUkuLc9Nzi430ihNzi0vz0vWS83M3
 MQJjdtuxn1t2MHa9Cz7EKMDBqMTDK6CdFifEmlhWXJl7iFGCg1lJhLdRKzlOiDclsbIqtSg/
 vqg0J7X4EKMp0G8TmaVEk/OB6SSvJN7Q1NDcwtLQ3Njc2MxCSZy3Q+BgjJBAemJJanZqakFq
 EUwfEwenVAPjmj1O5tuMyx0Z5Hk29nyNSn0WsNbsYoDlhNqQI5wC8zgTlNnnqJYe9D20gMG1
 jKHD2qJxXvjnSysOK9Xqv7a4vSj6xpWW/VdvnJ+xvP/QSZ45pSEdetWG/A/ik3Zv6oh5fdjg
 oGzyjIXZmx++mHP85UUvSWbBCUnTVR/W3FjK/GXSH9kvv7rWKbEUZyQaajEXFScCAIf8/0fv
 AgAA
X-CMS-MailID: 20200309162331eucas1p206c78f3ed49cccd2f401980b158654ab
X-Msg-Generator: CA
X-RootMTR: 20200306130320eucas1p18bda7b5cdf613e1a811bda6eb99a5847
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200306130320eucas1p18bda7b5cdf613e1a811bda6eb99a5847
References: <20200306102301.16870-1-geert+renesas@glider.be>
 <20200306103652.GA3634389@kroah.com>
 <CAMuHMdUy8RjkY+0gBv-=mpcuamNQgB=k4rvNsiaj2s4uUDc5UA@mail.gmail.com>
 <CGME20200306130320eucas1p18bda7b5cdf613e1a811bda6eb99a5847@eucas1p1.samsung.com>
 <20200306130314.GA3778623@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_092334_918180_E9357029 
X-CRM114-Status: GOOD (  24.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 3/6/20 2:03 PM, Greg Kroah-Hartman wrote:
> On Fri, Mar 06, 2020 at 01:53:01PM +0100, Geert Uytterhoeven wrote:
>> Hi Greg,
>>
>> On Fri, Mar 6, 2020 at 1:29 PM Greg Kroah-Hartman
>> <gregkh@linuxfoundation.org> wrote:
>>> On Fri, Mar 06, 2020 at 11:23:01AM +0100, Geert Uytterhoeven wrote:
>>>> This reverts commit 175b558d0efb8b4f33aa7bd2c1b5389b912d3019.
>>>>
>>>> When the user configures a kernel without support for Samsung SoCs, it
>>>> makes no sense to ask the user about enabling "Samsung SoC serial
>>>> support", as Samsung serial ports can only be found on Samsung SoCs.
>>>>
>>>> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>>>> ---
>>>>  drivers/tty/serial/Kconfig | 1 +
>>>>  1 file changed, 1 insertion(+)
>>>>
>>>> diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
>>>> index 880b962015302dca..932ad51099deae7d 100644
>>>> --- a/drivers/tty/serial/Kconfig
>>>> +++ b/drivers/tty/serial/Kconfig
>>>> @@ -237,6 +237,7 @@ config SERIAL_CLPS711X_CONSOLE
>>>>
>>>>  config SERIAL_SAMSUNG
>>>>       tristate "Samsung SoC serial support"
>>>> +     depends on PLAT_SAMSUNG || ARCH_EXYNOS || COMPILE_TEST
>>>>       select SERIAL_CORE
>>>>       help
>>>>         Support for the on-chip UARTs on the Samsung S3C24XX series CPUs,
>>>
>>> {sigh}

[...]

>> Dropping those dependencies is similar to always having a simple PCI
>> core without any host PCI bridges, dropping "depends on PCI" from all
>> PCI drivers, and building an all*config kernel for your old i386 that
>> predates PCI (you can replace PCI by ACPI to modernize the example).
>>
>> What am I missing?!?
> 
> "depends on PCI" describes the hardware bus that a driver depends on.
> 
> PLAT_FOO is just trying to somehow classify that this type of driver
> only shows up on this vendor's devices.  It is not defining the hardware
> at all.  We try to always describe functionality of hardware, not try to
> declare specific vendor's hardware choices, right?
> 
> PLAT_FOO is interesting, but given that a specific driver is really not
> tied to that platform logically, only by virtue that no one else might
> not happen to have that hardware, it seems odd to have that.

Your particular patch is not about removing PLAT_FOO dependency but
about removing actual architecture/platform specific dependencies.

Please look at your patch and note that in addition to removing
PLAT_SAMSUNG dependency (even ignoring for a moment that it can be
replaced by a few ARCH_* dependencies and PLAT_SAMSUNG was used only
because it was shorter) has also removed ARCH_EXYNOS dependency.

How do you explain this?

> Yes, asking lots of questions is tough, but we passed that problem so
> long ago.  Are we now trying to add PLAT_FOO entries to all hardware
> drivers in order to make this type of selection easier?  I thought we

We are not going to add anything because for the vast majority of
the drivers the needed entries are already there:

$ find drivers/ -name 'Kconfig*'|xargs cat|grep "depends on"|grep ARCH_|wc -l
1310

> were just doing that by providing defconfig files to make the initial
> selection saner.

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
