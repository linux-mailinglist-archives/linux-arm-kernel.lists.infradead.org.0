Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6FDAA439B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 11:17:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t23dQ8rPrGWXsddwUg+IA6cknEO4BMyVfavIBiu56kw=; b=gawZEpdU6hJrgS
	2689EeH5b26E2Tz5wxoijGUhESmquOstzhmUiPpWujxQ4Lwrl1v3LI+14j0ijA4njknLtqP2LS+7G
	zJMJW4b3p9oJMQX0FGSQ8GPnIfWPBsNOME9ORBuqzBAOkTRh95Thpkij8TebDUTSr4eRfOMaDtisp
	NYlGKUoddmSsJnM9SlB1pf+D4Ib5Ebz31n1w3a+Xlcv7p9nyKqeDc5Pby+GgqDYHU/Gt+EZvLnaFs
	vEePx+mm4wlCualALHtjZvhQ1Jrxhwz14jK7l7ZE+/3lMSTLrtlVOBy4jcX96prlCqERaLuM+T+Uh
	EXzOEkKid+ioR7OpkMDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3zVR-0001Ud-Ad; Sat, 31 Aug 2019 09:17:13 +0000
Received: from szxga03-in.huawei.com ([45.249.212.189] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3zV2-0001Tu-76
 for linux-arm-kernel@lists.infradead.org; Sat, 31 Aug 2019 09:16:49 +0000
Received: from DGGEMM401-HUB.china.huawei.com (unknown [172.30.72.55])
 by Forcepoint Email with ESMTP id 9EF652CB9F286DE110CA;
 Sat, 31 Aug 2019 17:16:39 +0800 (CST)
Received: from dggeme764-chm.china.huawei.com (10.3.19.110) by
 DGGEMM401-HUB.china.huawei.com (10.3.20.209) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sat, 31 Aug 2019 17:16:39 +0800
Received: from [127.0.0.1] (10.184.39.28) by dggeme764-chm.china.huawei.com
 (10.3.19.110) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1591.10; Sat, 31
 Aug 2019 17:16:38 +0800
Subject: Re: [PATCH] arm: fix page faults in do_alignment
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <1567171877-101949-1-git-send-email-jingxiangfeng@huawei.com>
 <20190830133522.GZ13294@shell.armlinux.org.uk> <5D69D239.2080908@huawei.com>
 <20190831075524.GI13294@shell.armlinux.org.uk>
From: Jing Xiangfeng <jingxiangfeng@huawei.com>
Message-ID: <5D6A3AEC.7030709@huawei.com>
Date: Sat, 31 Aug 2019 17:16:28 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <20190831075524.GI13294@shell.armlinux.org.uk>
X-Originating-IP: [10.184.39.28]
X-ClientProxiedBy: dggeme713-chm.china.huawei.com (10.1.199.109) To
 dggeme764-chm.china.huawei.com (10.3.19.110)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_021648_443534_0DF0854D 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.189 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kstewart@linuxfoundation.org, gustavo@embeddedor.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 ebiederm@xmission.com, sakari.ailus@linux.intel.com, bhelgaas@google.com,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/8/31 15:55, Russell King - ARM Linux admin wrote:
> On Sat, Aug 31, 2019 at 09:49:45AM +0800, Jing Xiangfeng wrote:
>> On 2019/8/30 21:35, Russell King - ARM Linux admin wrote:
>>> On Fri, Aug 30, 2019 at 09:31:17PM +0800, Jing Xiangfeng wrote:
>>>> The function do_alignment can handle misaligned address for user and
>>>> kernel space. If it is a userspace access, do_alignment may fail on
>>>> a low-memory situation, because page faults are disabled in
>>>> probe_kernel_address.
>>>>
>>>> Fix this by using __copy_from_user stead of probe_kernel_address.
>>>>
>>>> Fixes: b255188 ("ARM: fix scheduling while atomic warning in alignment handling code")
>>>> Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
>>>
>>> NAK.
>>>
>>> The "scheduling while atomic warning in alignment handling code" is
>>> caused by fixing up the page fault while trying to handle the
>>> mis-alignment fault generated from an instruction in atomic context.
>>
>> __might_sleep is called in the function  __get_user which lead to that bug.
>> And that bug is triggered in a kernel space. Page fault can not be generated.
>> Right?
> 
> Your email is now fixed?

Yeah, I just checked the mailbox, it is normal now.

> 
> All of get_user(), __get_user(), copy_from_user() and __copy_from_user()
> _can_ cause a page fault, which might need to fetch the page from disk.
> All these four functions are equivalent as far as that goes - and indeed
> as are their versions that write as well.
> 
> If the page needs to come from disk, all of these functions _will_
> sleep.  If they are called from an atomic context, and the page fault
> handler needs to fetch data from disk, they will attempt to sleep,
> which will issue a warning.
> 
 I understand.

	Thanks


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
