Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C032B1DE36D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 11:44:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yGIA+0TzJFaxokIxBX13eECz4v7CTJ4D85110hDSVH4=; b=b/u9LveUlNfK5LHLxLomQweX3
	Sa7+/2TRnUpV4xK4+Kg5+QGTq2FGDkyENpUc6FkNQYlIZ79VW8kGbfq9Go64vQxFX9PNaSaacM3UB
	BUktqYgVQ4Lf0UhNXHdzo9i1JWV7csBzSj8/jaFpD8k/mG2Oski0QlJc9KCIKIhatOVtJ2NWrjIl9
	c7yKZvN97fq9XLjxDdxBzpX45t5M7rJyEfj/0r0+a60XRRpIAE+PZMmd94BrOpxh0fHAxSnXLJskW
	PcUVz/b3Hfw5G0vHf/b+26YJpMb2cKMOB0j1NhAUBkaUdYqJbB6sbMtnt4m62s2g9E3SDm/38MaPY
	ng93K5Tlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc4Dd-0008AI-5l; Fri, 22 May 2020 09:43:57 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc4DT-00089o-E6
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 09:43:49 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id CA04AC95D7E41B77ACF4;
 Fri, 22 May 2020 17:43:38 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.93) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.487.0; Fri, 22 May 2020
 17:43:37 +0800
Subject: Re: arm64/acpi: NULL dereference reports from UBSAN at boot
From: Hanjun Guo <guohanjun@huawei.com>
To: Will Deacon <will@kernel.org>, <lorenzo.pieralisi@arm.com>
References: <20200521100952.GA5360@willie-the-truck>
 <ad521a36-c080-f761-e91b-dc38b8af08ee@huawei.com>
Message-ID: <381deefd-db48-7884-8335-fb9e8f5c96dd@huawei.com>
Date: Fri, 22 May 2020 17:43:37 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <ad521a36-c080-f761-e91b-dc38b8af08ee@huawei.com>
Content-Language: en-GB
X-Originating-IP: [10.166.213.93]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_024347_643134_39D1CC7A 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On 2020/5/22 16:07, Hanjun Guo wrote:
> Hi Will,
> 
> On 2020/5/21 18:09, Will Deacon wrote:
>> Hi folks,
>>
>> I just tried booting the arm64 for-kernelci branch under QEMU (version
>> 4.2.50 (v4.2.0-779-g4354edb6dcc7)) with UBSAN enabled, and I see a couple
>> of NULL pointer dereferences reported at boot. I think they're both GIC
>> related (log below). I don't see a panic with UBSAN disabled, so 
>> something's
>> fishy here.
>>
>> Please can you take a look when you get a chance? I haven't had time 
>> to see
>> if this is a regression or not, but I don't think it's particularly 
>> serious
>> as I have all sorts of horrible stuff enabled in my .config, since I'm
>> trying to chase down another bug:
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/plain/arch/arm64/configs/fuzzing.config?h=fuzzing/arm64-kernelci-20200519&id=c149cf6a51aa4f72d53fc681c6661094e93ef660 
>>
>>
>> (on top of defconfig)
>>
>> CONFIG_FAIL_PAGE_ALLOC may be to blame.
> 
> I enabled UBSAN and CONFIG_FAIL_PAGE_ALLOC on top of defconfig,
> testing against the for-kernelci branch on the D06 board, I
> can see some UBSAN warnings from megaraid_sas driver [0], but not
> from any other subsystem including ACPI, I will try all your
> configs above to see if I can get more warnings.

Enabled all the configs except "CONFIG_MODULES=n" and
"CONFIG_SHADOW_CALL_STACK=y" (can't do that via make menuconfig,
do it manually?) in the link, but still got the same warnings and
no other warnings as before, the system is in good function, please
let me know I can do anything more to help the debug.

Thanks
Hanjun



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
