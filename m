Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A41E71259BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 03:57:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cON3EJEcaAIk0C6DADn6ERdCmOzKfdi/XAp7RKgFPAs=; b=LpvWjU8NvgiA+s
	OfpfS2LbIn4S8g3W4sycjpLyl2zQbvhwl9cJkp/vvUS4XpRWzV/5dnmMuQmWEBFdLBlZP6UvpmlQC
	IsUjl+Bgv+nCrAJkXb43rpMH+QOFkfdCqMztiJbqucNFkTqDPBP68nmDGovg7ZQZAF8lRAi0FpdTZ
	/9KBH/B95dHeWLuWpnjQuU0XJR10uykU2HTo7SuBrSARU/hp86uknq1xwlqy/8UHoLTWvw3U8GeZG
	jh0LbPvr2N1+ttDTGNNH4TvEEeN74CQ0fmwdvMp/L63MZpY6IxS/tCA58+99huiZMtcGJDKGW24oi
	CQH00q6a1nwn8R7Ibs0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihlzm-0000Fb-LC; Thu, 19 Dec 2019 02:56:58 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihlzW-0000DW-QR; Thu, 19 Dec 2019 02:56:44 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 68396688B725795AE78A;
 Thu, 19 Dec 2019 10:56:33 +0800 (CST)
Received: from [127.0.0.1] (10.177.131.64) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Thu, 19 Dec 2019
 10:56:26 +0800
Subject: Re: [PATCH v6 0/4] support reserving crashkernel above 4G on arm64
 kdump
To: John Donnelly <john.p.donnelly@oracle.com>
References: <20190830071200.56169-1-chenzhou10@huawei.com>
 <2a97b296-59e7-0a26-84fa-e2ddcd7987b6@huawei.com>
 <11E080AF-28F1-481A-BF16-9C062091D900@oracle.com>
From: Chen Zhou <chenzhou10@huawei.com>
Message-ID: <94c4540b-6467-002f-6cfc-bacc4ac45d24@huawei.com>
Date: Thu, 19 Dec 2019 10:56:25 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <11E080AF-28F1-481A-BF16-9C062091D900@oracle.com>
X-Originating-IP: [10.177.131.64]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_185643_178794_7810AD31 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: horms@verge.net.au, will@kernel.org, catalin.marinas@arm.com,
 bhsharma@redhat.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 mingo@redhat.com, james.morse@arm.com, guohanjun@huawei.com,
 tglx@linutronix.de, dyoung@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi John,

On 2019/12/19 1:18, John Donnelly wrote:
> HI =

> =

> SEE INLINE ON A QUESTION :
> =

>> On Dec 17, 2019, at 8:07 PM, Chen Zhou <chenzhou10@huawei.com> wrote:
>>
>> Hi all,
>>
>> Friendly ping...
>>
>> On 2019/8/30 15:11, Chen Zhou wrote:
>>> I am busy with other things, so it was a long time before this version =
was
>>> released.
>>>
>>> This patch series enable reserving crashkernel above 4G in arm64.
>>>
>>> There are following issues in arm64 kdump:
>>> 1. We use crashkernel=3DX to reserve crashkernel below 4G, which will f=
ail
>>> when there is no enough low memory.
>>> 2. Currently, crashkernel=3DY@X can be used to reserve crashkernel abov=
e 4G,
>>> in this case, if swiotlb or DMA buffers are requierd, crash dump kernel
>>> will boot failure because there is no low memory available for allocati=
on.
> =

>   =

>       Can you elaborate when the boot failures may fail due to lacking  s=
wiotlb or DMA buffers ? Are these related to certain adapters or specific  =
platforms  ? =

> =

>      I have not seen this when using   crashkernel=3D2024M@35GB . =

> =


For example, in my environment "Huawei TaiShan 2280",
we need to use mpt3sas driver in crash dump kernel for dumping vmcore.

mpt3sas driver needs to call dma_pool_alloc to allocate some pages,
if there is no DMA buffer, page allocation will fail, which leads to crash =
dump kernel boot failure,
like this:

[2019/12/19 9:12:41] [   12.403501] mpt3sas_cm0: diag reset: SUCCESS
[2019/12/19 9:12:41] [   12.456076] mpt3sas_cm0: reply_post_free pool: dma_=
pool_alloc failed
[2019/12/19 9:12:41] [   12.462515] pci 0004:48:00.0: can't derive routing =
for PCI INT A
[2019/12/19 9:12:41] [   12.468761] mpt3sas 0004:49:00.0: PCI INT A: no GSI
[2019/12/19 9:12:41] [   12.476348] mpt3sas_cm0: failure at drivers/scsi/mp=
t3sas/mpt3sas_scsih.c:10626/_scsih_probe()!
[2019/12/19 9:14:38] [ TIME ] Timed out waiting for device dev-di=85b3\x2d8=
90a\x2d2ead7df26f48.device.
[2019/12/19 9:14:38] [DEPEND] Dependency failed for Initrd Root Device.
[2019/12/19 9:14:38] [DEPEND] Dependency failed for /sysroot.
[2019/12/19 9:14:38] [DEPEND] Dependency failed for Initrd Root File System.
[2019/12/19 9:14:38] [DEPEND] Dependency failed for Reload Configuration fr=
om the Real Root.
[2019/12/19 9:14:38] [DEPEND] Dependency failed for File System C=8540bae-9=
eb8-46b3-890a-2ead7df26f48.

Thanks,
Chen Zhou

> =

>>>
>>> To solve these issues, introduce crashkernel=3DX,low to reserve specifi=
ed
>>> size low memory.
>>> Crashkernel=3DX tries to reserve memory for the crash dump kernel under
>>> 4G. If crashkernel=3DY,low is specified simultaneously, reserve spcified
>>> size low memory for crash kdump kernel devices firstly and then reserve
>>> memory above 4G.
>>>
>>> When crashkernel is reserved above 4G in memory, that is, crashkernel=
=3DX,low
>>> is specified simultaneously, kernel should reserve specified size low m=
emory
>>> for crash dump kernel devices. So there may be two crash kernel regions=
, one
>>> is below 4G, the other is above 4G.
>>> In order to distinct from the high region and make no effect to the use=
 of
>>> kexec-tools, rename the low region as "Crash kernel (low)", and add DT =
property
>>> "linux,low-memory-range" to crash dump kernel's dtb to pass the low reg=
ion.
>>>
>>> Besides, we need to modify kexec-tools:
>>> arm64: kdump: add another DT property to crash dump kernel's dtb(see [1=
])
>>>
>>> The previous changes and discussions can be retrieved from:
>>>
>>> Changes since [v5]
>>> - Move reserve_crashkernel_low() into kernel/crash_core.c.
>>> - Delete crashkernel=3DX,high.
>>> - Modify crashkernel=3DX,low.
>>> If crashkernel=3DX,low is specified simultaneously, reserve spcified si=
ze low
>>> memory for crash kdump kernel devices firstly and then reserve memory a=
bove 4G.
>>> In addition, rename crashk_low_res as "Crash kernel (low)" for arm64, a=
nd then
>>> pass to crash dump kernel by DT property "linux,low-memory-range".
>>> - Update Documentation/admin-guide/kdump/kdump.rst.
>>>
>>> Changes since [v4]
>>> - Reimplement memblock_cap_memory_ranges for multiple ranges by Mike.
>>>
>>> Changes since [v3]
>>> - Add memblock_cap_memory_ranges back for multiple ranges.
>>> - Fix some compiling warnings.
>>>
>>> Changes since [v2]
>>> - Split patch "arm64: kdump: support reserving crashkernel above 4G" as
>>> two. Put "move reserve_crashkernel_low() into kexec_core.c" in a separa=
te
>>> patch.
>>>
>>> Changes since [v1]:
>>> - Move common reserve_crashkernel_low() code into kernel/kexec_core.c.
>>> - Remove memblock_cap_memory_ranges() i added in v1 and implement that
>>> in fdt_enforce_memory_region().
>>> There are at most two crash kernel regions, for two crash kernel regions
>>> case, we cap the memory range [min(regs[*].start), max(regs[*].end)]
>>> and then remove the memory range in the middle.
>>>
>>> [1]: https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.infrad=
ead.org_pipermail_kexec_2019-2DAugust_023569.html&d=3DDwICAg&c=3DRoP1YumCXC=
gaWHvlZYR8PZh8Bv7qIrMUB65eapI_JnE&r=3Dt2fPg9D87F7D8jm0_3CG9yoiIKdRg4qc_thBw=
4bzMhc&m=3DZAC6UYbT-3qLR3Dvevd09m6neWWzGWSphuvXXlXow68&s=3D9tn9kUBabiuYhVtX=
auANSDGaISnCnHLYcAUQgsPBFxs&e=3D =

>>> [v1]: https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lkml.org_l=
kml_2019_4_2_1174&d=3DDwICAg&c=3DRoP1YumCXCgaWHvlZYR8PZh8Bv7qIrMUB65eapI_Jn=
E&r=3Dt2fPg9D87F7D8jm0_3CG9yoiIKdRg4qc_thBw4bzMhc&m=3DZAC6UYbT-3qLR3Dvevd09=
m6neWWzGWSphuvXXlXow68&s=3DF-lM7II2cuMF_sK3b6-QhSbWM3X-pI_WZEs0sZitS7A&e=3D =

>>> [v2]: https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lkml.org_l=
kml_2019_4_9_86&d=3DDwICAg&c=3DRoP1YumCXCgaWHvlZYR8PZh8Bv7qIrMUB65eapI_JnE&=
r=3Dt2fPg9D87F7D8jm0_3CG9yoiIKdRg4qc_thBw4bzMhc&m=3DZAC6UYbT-3qLR3Dvevd09m6=
neWWzGWSphuvXXlXow68&s=3D5Y-S6sqMTklHkOQsNtjTX3C7pV05BjKLGhJVfMHEvDs&e=3D =

>>> [v3]: https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lkml.org_l=
kml_2019_4_9_306&d=3DDwICAg&c=3DRoP1YumCXCgaWHvlZYR8PZh8Bv7qIrMUB65eapI_JnE=
&r=3Dt2fPg9D87F7D8jm0_3CG9yoiIKdRg4qc_thBw4bzMhc&m=3DZAC6UYbT-3qLR3Dvevd09m=
6neWWzGWSphuvXXlXow68&s=3DcWn4zSRQupaZ3jjz4eDvD-pNkoLyL_hsZoRx4yJoD0c&e=3D =

>>> [v4]: https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lkml.org_l=
kml_2019_4_15_273&d=3DDwICAg&c=3DRoP1YumCXCgaWHvlZYR8PZh8Bv7qIrMUB65eapI_Jn=
E&r=3Dt2fPg9D87F7D8jm0_3CG9yoiIKdRg4qc_thBw4bzMhc&m=3DZAC6UYbT-3qLR3Dvevd09=
m6neWWzGWSphuvXXlXow68&s=3DNslk4RJKIyIuT0IoQoolXNjupEDXplPhQQwnTSoXNWE&e=3D =

>>> [v5]: https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lkml.org_l=
kml_2019_5_6_1360&d=3DDwICAg&c=3DRoP1YumCXCgaWHvlZYR8PZh8Bv7qIrMUB65eapI_Jn=
E&r=3Dt2fPg9D87F7D8jm0_3CG9yoiIKdRg4qc_thBw4bzMhc&m=3DZAC6UYbT-3qLR3Dvevd09=
m6neWWzGWSphuvXXlXow68&s=3DHJVAM6sCxV2DnNg5d4pw8WPqtkmQnKvztEmkSIgtQ5M&e=3D =

>>>
>>> Chen Zhou (4):
>>>  x86: kdump: move reserve_crashkernel_low() into crash_core.c
>>>  arm64: kdump: reserve crashkenel above 4G for crash dump kernel
>>>  arm64: kdump: add memory for devices by DT property, low-memory-range
>>>  kdump: update Documentation about crashkernel on arm64
>>>
>>> Documentation/admin-guide/kdump/kdump.rst       | 13 ++++-
>>> Documentation/admin-guide/kernel-parameters.txt | 12 ++++-
>>> arch/arm64/include/asm/kexec.h                  |  3 ++
>>> arch/arm64/kernel/setup.c                       |  8 ++-
>>> arch/arm64/mm/init.c                            | 61 ++++++++++++++++++=
+++--
>>> arch/x86/include/asm/kexec.h                    |  3 ++
>>> arch/x86/kernel/setup.c                         | 65 +++---------------=
-------
>>> include/linux/crash_core.h                      |  4 ++
>>> include/linux/kexec.h                           |  1 -
>>> kernel/crash_core.c                             | 65 ++++++++++++++++++=
+++++++
>>> 10 files changed, 168 insertions(+), 67 deletions(-)
>>>
>>
>>
>> _______________________________________________
>> kexec mailing list
>> kexec@lists.infradead.org
>> https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.infradead.or=
g_mailman_listinfo_kexec&d=3DDwICAg&c=3DRoP1YumCXCgaWHvlZYR8PZh8Bv7qIrMUB65=
eapI_JnE&r=3Dt2fPg9D87F7D8jm0_3CG9yoiIKdRg4qc_thBw4bzMhc&m=3DZAC6UYbT-3qLR3=
Dvevd09m6neWWzGWSphuvXXlXow68&s=3DXMcFx61B_QPg-FUfG_-t88DKCnGm4grqu6zRguiHY=
rU&e=3D =

> =

> =

> .
> =



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
