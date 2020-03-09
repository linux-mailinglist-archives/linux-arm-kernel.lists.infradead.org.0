Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C525617E239
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 15:08:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23Ch8/wTB8UBDy1+/KdXeGLX3M+STDO5wzsvhbfV4Ec=; b=THbiZ3M/UNCPEv
	nQNsYIOZebSSi+RJsK98tCJKUrC2wKa3T21bCMoWM4QHa9ENPIjIFXqB6vsRZerV052RE00xDyiLI
	jBr/CvZGfUbg8G4oigv3rurs7hx8/H1cuQHbv2Oq86ixcrw9F7FMMDiPJxmLaBHfBUTwjNJPVaMsC
	HyN0drIRHzU+PK6PgPQzJCUOT8aGY5EOWb27BSmpndEvHsOKCRl97h2+t+IxF2acM+ZT46FYkJLEZ
	xuJy3OSxBVU5o62e/hH8SW+egrZsqi3H0cUrDXUCaeExEJiWEA9D8vcbOEsyjUJ73KHmd3KA4Pff+
	u9BCbRS4wLpz8KRvS6sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBJ4V-0006Vb-O8; Mon, 09 Mar 2020 14:07:55 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBJ4D-0006Uu-DB
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 14:07:39 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200309140734euoutp0114be0963ae3802493bb691e6f2a00ac3~6p_zRuQ7A0938509385euoutp01A
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  9 Mar 2020 14:07:34 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200309140734euoutp0114be0963ae3802493bb691e6f2a00ac3~6p_zRuQ7A0938509385euoutp01A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1583762854;
 bh=cg5t0Da4lhAK6gQ5DUlbPYsie4fYWIl5Vuwnv6DKKCg=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=e3/+5DAaGegrby872ppu9c8Vf1EJwPZ6PckckXbEiao1d6jpplPbVhi0DTpwpwltR
 /d8Ghwp1a7lpyQrTEBUkoPAKdlY9Mk/Ed5YkbxP2i/CRIvvp2yJjTJQ0h6YayyMqL6
 TgbZFivVr9hByvyJXFyEctHyVs1sVLcYNzqHq/0s=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200309140734eucas1p26ab4c149cf5ef15a49c8e745953ecb65~6p_zAuLs02626026260eucas1p2y;
 Mon,  9 Mar 2020 14:07:34 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id DC.66.60679.6AD466E5; Mon,  9
 Mar 2020 14:07:34 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200309140733eucas1p29c89780bfab3e830561269a74ddd74e7~6p_ylo6oJ1933519335eucas1p2E;
 Mon,  9 Mar 2020 14:07:33 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200309140733eusmtrp2c3356c26365ae0c2ed49343f3a680cba~6p_yk89Qg1097510975eusmtrp2B;
 Mon,  9 Mar 2020 14:07:33 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-89-5e664da6dde4
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 4E.2C.08375.5AD466E5; Mon,  9
 Mar 2020 14:07:33 +0000 (GMT)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200309140733eusmtip29a08b427997b26ad55541811564e525c~6p_yEUzV12056020560eusmtip2k;
 Mon,  9 Mar 2020 14:07:33 +0000 (GMT)
Subject: Re: [PATCH] Revert
 "tty: serial: samsung_tty: build it for any platform"
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Geert Uytterhoeven
 <geert@linux-m68k.org>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <2416878c-fe51-0999-52a9-7b29f796f30e@samsung.com>
Date: Mon, 9 Mar 2020 15:07:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200306130314.GA3778623@kroah.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrLKsWRmVeSWpSXmKPExsWy7djP87rLfNPiDA5O57b4O+kYu8WzW3uZ
 LJoXr2ezmLLhA5NF/+PXzBZPNz9msjh/fgO7xabH11gtZpzfx2RxZnEvu8Wp65/ZHLg9fv+a
 xOixaVUnm8ehwx2MHvvnrmH32Lyk3uPKiSZWj/VbrrJ4fN4kF8ARxWWTkpqTWZZapG+XwJXR
 8+M0S8Exq4rPZ8obGLv1uxg5OSQETCT6b3xh6WLk4hASWMEo8fTMYVYI5wujxLxni9ghnM+M
 ErM7G1lgWh79OcQEkVjOKLF/91eolreMEl8WnWQFqRIWCJaY9PcwE4gtIpAgceTLYjaQImaB
 70wSV7fdZgRJsAlYSUxsXwVkc3DwCthJXOmXBQmzCKhIPL+5iw3EFhWIkPj04DDYTF4BQYmT
 M5+AXcEpYCixfsMmMJtZQFzi1pP5TBC2vMT2t3OYQXZJCLxll1hydwMzxNkuEuv+7mCDsIUl
 Xh3fwg5hy0j83zmfCaJhHaPE344XUN3bGSWWT/4H1WEtcefcLzaQS5kFNCXW74IGn6PEnpk/
 2UHCEgJ8EjfeCkIcwScxadt0Zogwr0RHmxBEtZrEhmUb2GDWdu1cyTyBUWkWktdmIXlnFpJ3
 ZiHsXcDIsopRPLW0ODc9tdgoL7Vcrzgxt7g0L10vOT93EyMwkZ3+d/zLDsZdf5IOMQpwMCrx
 8GbopsUJsSaWFVfmHmKU4GBWEuFt1EqOE+JNSaysSi3Kjy8qzUktPsQozcGiJM5rvOhlrJBA
 emJJanZqakFqEUyWiYNTqoGRz1fKTD/GhjPg/PVaxb7yCI/NRkZbWPhLUlq9t5zV1/dYNs13
 X3sD58sFqxJ+fzvaP/dufeQc0fbKdxeuTN0+WVlzr/MTw83fGBp1s37/NM7pz58ameRZ8f9W
 tSrbr8g5Z48sfFEa7FfwRcnuf1P9AzuzjCDWqvs19+ML76YX/L17RFtr2XklluKMREMt5qLi
 RAD7P0mCYAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrLIsWRmVeSWpSXmKPExsVy+t/xe7pLfdPiDGbO0rL4O+kYu8WzW3uZ
 LJoXr2ezmLLhA5NF/+PXzBZPNz9msjh/fgO7xabH11gtZpzfx2RxZnEvu8Wp65/ZHLg9fv+a
 xOixaVUnm8ehwx2MHvvnrmH32Lyk3uPKiSZWj/VbrrJ4fN4kF8ARpWdTlF9akqqQkV9cYqsU
 bWhhpGdoaaFnZGKpZ2hsHmtlZKqkb2eTkpqTWZZapG+XoJfR8+M0S8Exq4rPZ8obGLv1uxg5
 OSQETCQe/TnE1MXIxSEksJRRYs7RR8xdjBxACRmJ4+vLIGqEJf5c62KDqHnNKPHuy0VWkBph
 gWCJMz+0QGpEBBIkbnRMBZvDLPCTSWLh4zmsUEOZJNb/+c0GUsUmYCUxsX0VI0gzr4CdxJV+
 WZAwi4CKxPObu8BKRAUiJA7vmMUIYvMKCEqcnPmEBcTmFDCUWL9hE5jNLKAu8WfeJWYIW1zi
 1pP5TBC2vMT2t3OYJzAKzULSPgtJyywkLbOQtCxgZFnFKJJaWpybnltsqFecmFtcmpeul5yf
 u4kRGLXbjv3cvIPx0sbgQ4wCHIxKPLwZumlxQqyJZcWVuYcYJTiYlUR4G7WS44R4UxIrq1KL
 8uOLSnNSiw8xmgI9N5FZSjQ5H5hQ8kriDU0NzS0sDc2NzY3NLJTEeTsEDsYICaQnlqRmp6YW
 pBbB9DFxcEo1MFr9uNnoYjHr3Yu7qk8T5x8/U3Xh+6tupu+cmls+7J/9ZF7ISvnuZ4Wulr9E
 b98vXs/acOVKVeAUrrotTQbNTC2rNidNdPifL+Pp1uLV7HbYj8FAzPdp0U91JaYN1w5GTL57
 42KMVFfBA++/Rdemluvz7Fkjs8H31YeJB35uY2T2e3Z+zqH3nvuUWIozEg21mIuKEwFdXNj4
 8AIAAA==
X-CMS-MailID: 20200309140733eucas1p29c89780bfab3e830561269a74ddd74e7
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
X-CRM114-CacheID: sfid-20200309_070737_757433_A7455736 
X-CRM114-Status: GOOD (  31.88  )
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

Acked-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>

The original commit has been merged so quickly after being posted
that people had no time to review/NAK it properly:

commit 175b558d0efb8b4f33aa7bd2c1b5389b912d3019
Author:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
AuthorDate: Thu Feb 20 11:26:27 2020 +0100
Commit:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CommitDate: Thu Feb 20 13:46:19 2020 +0100

Also I have no idea why Krzysztof has posted his "Reviewed-by:" tag
for the original commit. 

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
>>
>> Exactly my feeling.
>>
>>> No, I don't want this.  My "goal" is to be able to get rid of all of the
>>> crazy "PLAT_*" symbols as they make it impossible to build a single
>>> kernel that supports multiple ARM64 systems.

No, they don't. Geert has explained this to you twice (however
for some reason you seem to keep on ignoring this).

Also on ARM64 there is no PLAT_SAMSUNG defined at all!

In case of PLAT_SAMSUNG usage in SERIAL_SAMSUNG dependencies
it is just a shortcut for saying:

	depends on ARCH_S3C24XX || ARCH_S3C64XX || ARCH_S5PV210 || \
		   ARCH_EXYNOS || COMPILE_TEST

and we can just use ARCH_* dependencies as well (PLAT_SAMSUNG
is used only because it is shorter).

ARCH_* dependencies on ARM platforms are used to describe SoC
families and are in no conflict of supporting multi-platforms
images (somer SoC families don't support such images but for
other reasons).

On ARM64 building the single kernel that supports multiple ARM64
systems is the default and all Samsung SoCs are included in such
image (as only some Samsung Exynos SoCs are 64-bit capable only
ARCH_EXYNOS is relevant on ARM64).

Also ARM multi-platform support is similar to other archs (like
mips or powerpc).

>> This dependency does not make it impossible to build a single
>> kernel that supports multiple ARM64 systems.
>>
>> Those "PLAT_*" symbols are not crazy.  They are needed to configure a
>> kernel for your specific hardware, leaving out support you don't need.
>> Not everyone has the hardware resources to run an allyesconfig kernel.
>>
>>> As an example of just such a system, see the 5.4 tree here:
>>>         https://android.googlesource.com/kernel/common/+/refs/heads/android-5.4
>>> it is now building and booting on multiple SoCs.
>>
>> arm/multi_v7_defconfig and arm64/defconfig kernels are already booting
>> on multiple SoCs in upstream, and have done so for years.
>>
>>> But yes, it still does have to enable some PLAT_* config options, but
>>> the goal is to not have to do that eventually.
>>
>> Whether the dependency is present or not does not change this.
>>
>>> There is no reason that we need vendor-specific config options just to
>>> lump random drivers into, like serial drivers.  If the hardware is not
>>> present, the driver will just not bind to the hardware, and all is fine.
>>
>> Not having the dependency means you will ask the user useless questions
>> when configuring his kernel.
>> My goal is to make kernel configuration easier, not more difficult.
>>
>>> Just like x86, we don't have this issue there, and ARM64 should also not
>>> have this.

On x86 we have BIOS, ACPI and other forms of hardware abstractions
that we don't have on ARM64.

Please also note that we have things like "depends on X86_32" or
"depends on ACPI" also on x86.

>> No, because x86 is considered the golden standard ;-)
>>
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

Like described above: PLAT_SAMSUNG is just a way to share the common
architecture code between different Samsung SoCs families inside
arch/arm/*:

arch/arm/plat-samsung/Kconfig:

...
config PLAT_SAMSUNG
	bool
	depends on PLAT_S3C24XX || ARCH_S3C64XX || ARCH_EXYNOS || ARCH_S5PV210
	default y
	select GENERIC_IRQ_CHIP
	select NO_IOPORT_MAP
	help
	  Base platform code for all Samsung SoC based systems
...

while PLAT_S3C24XX comes from arch/arm/mach-s3c24xx/Kconfig:

...
if ARCH_S3C24XX

config PLAT_S3C24XX
	def_bool y
	select GPIOLIB
	select NO_IOPORT_MAP
	select S3C_DEV_NAND
	select IRQ_DOMAIN
	select COMMON_CLK
	help
	  Base platform code for any Samsung S3C24XX device
...

We can use ARCH_* symbols for device drivers dependencies directly,
PLAT_SAMSUNG is used only because it is shorter.

> at all.  We try to always describe functionality of hardware, not try to
> declare specific vendor's hardware choices, right?
> 
> PLAT_FOO is interesting, but given that a specific driver is really not
> tied to that platform logically, only by virtue that no one else might
> not happen to have that hardware, it seems odd to have that.

We don't expect Samsung Serial hardware to start appearing on non
ARM/Samsung SoCs any day soon (if ever).

Currently your changes make i.e. x86_64 configs to ask about its support,
(people doing "make oldconfig" on linux-next are seeing it).

> Yes, asking lots of questions is tough, but we passed that problem so
> long ago.  Are we now trying to add PLAT_FOO entries to all hardware

Yes, we have passed that problem with the usage of COMPILE_TEST config
option and your change defeats its whole purpose.

I've asked you in the original commit mail thread whether you are
planning to remove COMPILE_TEST and you seem to avoid answering my
question.

> drivers in order to make this type of selection easier?  I thought we
> were just doing that by providing defconfig files to make the initial
> selection saner.
> 
> thanks,
> 
> greg k-h 
Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
