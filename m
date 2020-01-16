Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7095A13D43A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 07:22:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lynUmBaik2agaqNrkXQMgwGlvBTYmx+qboZcRgKQINs=; b=biq0uaIg6g1LyY
	rdVgu8i+cBJtnmnre61q+NqVdtMEToOftyOJJ4O3HEPoSGeVJXpUKSfC74OhYSXpIUK/OINkRA5O5
	CD3pCVrMOF+PAr225pxP1UigPYBuwKA6Qifm2lPk0W1UmhbB9rkcn3EHwP2SoDx0+ILC6jcmqvPd6
	900xZWMA+alowc0M0dhZPODncZo/nm/OPZ0t9cSSqQI+vJrmlH908O7EdhkoASBHbF605DHL4WJGO
	Tgjzr1DAxnL1ANcUHVFjjKtT+FcAi01ZwWYySzvjDEjdoKpvZikFvIDv+slcJLeNTsEc9I5wvqL6J
	SgMa/Ab1KfaRD3RSmkGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iryXt-00078F-4g; Thu, 16 Jan 2020 06:22:21 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iryXf-00076m-My
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 06:22:12 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id BD99A811C5DD757182DD;
 Thu, 16 Jan 2020 14:21:56 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Thu, 16 Jan 2020
 14:21:50 +0800
Subject: Re: [Question about KVM on arm64] Consider putting VINVALL to
 deactivation
To: Marc Zyngier <maz@kernel.org>
References: <bf470803-8e1c-d1c3-d5ac-731536196543@hisilicon.com>
 <37126a877e1160ed50ee6d95a03d1574@kernel.org>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Message-ID: <d41bcfbd-69b1-641b-fc54-9255ac3e82b2@hisilicon.com>
Date: Thu, 16 Jan 2020 14:21:49 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <37126a877e1160ed50ee6d95a03d1574@kernel.org>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_222207_927866_CEBF4177 
X-CRM114-Status: GOOD (  12.39  )
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
Cc: wangwudi <wangwudi@hisilicon.com>, Lizixian <lizixian@hisilicon.com>,
 jiayanlei@huawei.com, fanhenglong@huawei.com,
 "Tangnianyao \(ICT\)" <tangnianyao@huawei.com>, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2020/1/15 21:50, Marc Zyngier wrote:
> Hi Shaokun,
> 
> On 2020-01-14 14:20, Shaokun Zhang wrote:
>> Hi Marc,
>>
>> On activation, VMAPP command is followed by a VINVALL, which could be
>> quite expensive for the start-up of virtual machine. If a vpeid is allowed
>> successfully, it is not used in system.
> 
> How expensive? This is exactly similar to what happens on a physical machine
> where we perform an INVALL on MAPC. And yet you don't complain about that.
> 

Agree, I didn't consider this before.

> Please provide numbers.
> 
>> We may consider put VINVALL to deactivation to ensure all cache of certain
>> vpeid is invalid, to simplify activation. We consider start-up may be more
>> common and more time-consuming-sensitive than shutdown process.
> 
> In my world, they cost the same thing, and happen just as often. Also, I want
> guarantees that on VMAPP, there is no stale information even if this is the
> first time we're using this VPEid (who knows what happens over kexec, for
> example).
> 
>> Do you think it's all right?
> 
> I don't, for the reasons stated above. You also provide no numbers showing
> how bad the overhead is, so I'm left guessing.
> 

Got it, you are right :-).

Thanks for your explaination
Shaokun

> Thanks,
> 
>         M.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
