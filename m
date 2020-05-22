Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9D31DE187
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 10:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eO4JsqtITqQqzBInUpTHXSIzAoUMHG3RpIbIVnDLqzM=; b=LPgfEMZXsk0Q52iLLQGs2VK3Y
	U369ZJoB3aSdjxQ0L9UvGkPm6NScgm58WNoZujKJ3IzWp6ncJ35FFDKaWqbtv6OWvEKrEcK+4Thoq
	JlXzSoRAnAMABEBfxsi4yC3H91Hg0rDfRstHGnJ3VqWVHf1/0dY9dA7a+ae4J1IDQsDq5ypMbloc+
	9xzSbiChMmUW0rfsoUdj1Vy22nbA80XadXVgZxBWGm3UPFvqUufXd5hKClLGUaL3aeK+3GW1XhhY9
	zDmGRk9JY6hlb3I7ulZhVpEHDlWmb8eVyJ90WmrSS6HfiQXeK/NDGCz4lJyoL0r4bfEz9A9IILHUr
	JU8hwPYIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc2ia-0008TB-Iw; Fri, 22 May 2020 08:07:48 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc2iR-0008RB-2R
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 08:07:41 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 03A2323164A41ED81F03;
 Fri, 22 May 2020 16:07:20 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.93) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.487.0; Fri, 22 May 2020
 16:07:15 +0800
Subject: Re: arm64/acpi: NULL dereference reports from UBSAN at boot
To: Will Deacon <will@kernel.org>, <lorenzo.pieralisi@arm.com>
References: <20200521100952.GA5360@willie-the-truck>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <ad521a36-c080-f761-e91b-dc38b8af08ee@huawei.com>
Date: Fri, 22 May 2020 16:07:14 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200521100952.GA5360@willie-the-truck>
Content-Language: en-GB
X-Originating-IP: [10.166.213.93]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_010739_276555_E7D591C6 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 2020/5/21 18:09, Will Deacon wrote:
> Hi folks,
> 
> I just tried booting the arm64 for-kernelci branch under QEMU (version
> 4.2.50 (v4.2.0-779-g4354edb6dcc7)) with UBSAN enabled, and I see a couple
> of NULL pointer dereferences reported at boot. I think they're both GIC
> related (log below). I don't see a panic with UBSAN disabled, so something's
> fishy here.
> 
> Please can you take a look when you get a chance? I haven't had time to see
> if this is a regression or not, but I don't think it's particularly serious
> as I have all sorts of horrible stuff enabled in my .config, since I'm
> trying to chase down another bug:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/plain/arch/arm64/configs/fuzzing.config?h=fuzzing/arm64-kernelci-20200519&id=c149cf6a51aa4f72d53fc681c6661094e93ef660
> 
> (on top of defconfig)
> 
> CONFIG_FAIL_PAGE_ALLOC may be to blame.

I enabled UBSAN and CONFIG_FAIL_PAGE_ALLOC on top of defconfig,
testing against the for-kernelci branch on the D06 board, I
can see some UBSAN warnings from megaraid_sas driver [0], but not
from any other subsystem including ACPI, I will try all your
configs above to see if I can get more warnings.

Thanks
Hanjun

[0]:
[   18.244272] 
================================================================================
[   18.252673] UBSAN: array-index-out-of-bounds in 
drivers/scsi/megaraid/megaraid_sas_fp.c:104:32
[   18.261244] index 1 is out of range for type 'MR_LD_SPAN_MAP [1]'
[   18.267313] CPU: 0 PID: 656 Comm: kworker/0:1 Not tainted 
5.7.0-rc6-1-14703-gf4582661223d-dirty #20
[   18.276314] Hardware name: Huawei TaiShan 2280 V2/BC82AMDC, BIOS 
2280-V2 CS V3.B210.01 03/12/2020
[   18.285151] Workqueue: events work_for_cpu_fn
[   18.289488] Call trace:
[   18.291925]  dump_backtrace+0x0/0x248
[   18.295572]  show_stack+0x18/0x28
[   18.298873]  dump_stack+0xc0/0x10c
[   18.302261]  ubsan_epilogue+0x10/0x58
[   18.305905]  __ubsan_handle_out_of_bounds+0x8c/0xa8
[   18.310763]  mr_update_load_balance_params+0x118/0x120
[   18.315877]  MR_ValidateMapInfo+0x300/0xb00
[   18.320040]  megasas_get_map_info+0x134/0x1f8
[   18.324377]  megasas_init_adapter_fusion+0xba8/0x10a0
[   18.329403]  megasas_probe_one+0x6e0/0x1b70
[   18.333569]  local_pci_probe+0x40/0xb0
[   18.337299]  work_for_cpu_fn+0x1c/0x30
[   18.341031]  process_one_work+0x1f8/0x378
[   18.345022]  worker_thread+0x21c/0x4c0
[   18.348753]  kthread+0x150/0x158
[   18.351967]  ret_from_fork+0x10/0x18
[   18.355529] 
================================================================================

[   18.592274] 
================================================================================
[   18.600672] UBSAN: array-index-out-of-bounds in 
drivers/scsi/megaraid/megaraid_sas_fp.c:141:9
[   18.609155] index 1 is out of range for type 'MR_LD_SPAN_MAP [1]'
[   18.615221] CPU: 0 PID: 656 Comm: kworker/0:1 Not tainted 
5.7.0-rc6-1-14703-gf4582661223d-dirty #20
[   18.624222] Hardware name: Huawei TaiShan 2280 V2/BC82AMDC, BIOS 
2280-V2 CS V3.B210.01 03/12/2020
[   18.633050] Workqueue: events work_for_cpu_fn
[   18.637387] Call trace:
[   18.639822]  dump_backtrace+0x0/0x248
[   18.643467]  show_stack+0x18/0x28
[   18.646767]  dump_stack+0xc0/0x10c
[   18.650152]  ubsan_epilogue+0x10/0x58
[   18.653796]  __ubsan_handle_out_of_bounds+0x8c/0xa8
[   18.658652]  MR_GetLDTgtId+0x58/0x60
[   18.662211]  megasas_sync_map_info+0xd0/0x1c0
[   18.666547]  megasas_init_adapter_fusion+0xd60/0x10a0
[   18.671574]  megasas_probe_one+0x6e0/0x1b70
[   18.675736]  local_pci_probe+0x40/0xb0
[   18.679466]  work_for_cpu_fn+0x1c/0x30
[   18.683197]  process_one_work+0x1f8/0x378
[   18.687188]  worker_thread+0x21c/0x4c0
[   18.690920]  kthread+0x150/0x158
[   18.694123]  ret_from_fork+0x10/0x18
[   18.697683] 
================================================================================


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
