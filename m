Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B17CF7AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 13:01:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7wmphpNfQo1ndrMqB26fHCz1EccG1BmX3vPVTIXyx2U=; b=SA+lE1up1Y+Kpb
	PkbWFTc/Jv8DY/6dmEMJBrJIIn5nEcugLO30mexr9cwMogpNnKgdIuX3JhUk3pdPwqcFxTC0Pymn3
	Pn2TwupfExgjKcSuTIDBlmt+lDGJuBtcvxU72VXNLXtsg7gwpXlutNGBzFLWF/Wd0Lb5evZf7u7Lf
	2SxLBWH37rCrpyuN+VsFg0C9hejHQ6ouoHtcj9HYUYq5eB6LNV6v02g7ymZUwmnBRH3NB0Oxzyv04
	mh9L9KmYy5kC2eHiLwM0m83s0cXj9JZoXTKVYZdwlQ+MYpMLbnBJYlidG2cpg85jmW8ue3UghpxBp
	+j3KbnT0alS/fGImdVNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHnFV-0002yE-QF; Tue, 08 Oct 2019 11:01:49 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHnFO-0002xA-Ex
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 11:01:44 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 03AEDD409179B17EE88B;
 Tue,  8 Oct 2019 19:01:31 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 8 Oct 2019 19:01:30 +0800
Subject: Re: [PATCH v2] arm64: armv8_deprecated: Checking return value for
 memory allocation
To: Will Deacon <will@kernel.org>
References: <bd558d56-18a9-3607-3db0-ad203ab12aa8@huawei.com>
 <20191007153710.7xpx27kgeewz75kt@willie-the-truck>
 <e58c36f6-23e3-12b2-bd9c-1ef731b5f8fd@huawei.com>
 <20191008102511.pmkqcpf7spkogarp@willie-the-truck>
From: Yunfeng Ye <yeyunfeng@huawei.com>
Message-ID: <7b70fec7-e232-0d09-fd51-1fdd205823b8@huawei.com>
Date: Tue, 8 Oct 2019 19:01:23 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191008102511.pmkqcpf7spkogarp@willie-the-truck>
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_040142_670998_AD548BB6 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: kstewart@linuxfoundation.org, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org, tglx@linutronix.de,
 info@metux.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/10/8 18:25, Will Deacon wrote:
> On Tue, Oct 08, 2019 at 10:33:17AM +0800, Yunfeng Ye wrote:
>> On 2019/10/7 23:37, Will Deacon wrote:
>>> On Mon, Oct 07, 2019 at 06:06:35PM +0800, Yunfeng Ye wrote:
>>>> @@ -617,25 +624,47 @@ static int t16_setend_handler(struct pt_regs *regs, u32 instr)
>>>>   */
>>>>  static int __init armv8_deprecated_init(void)
>>>>  {
>>>> -	if (IS_ENABLED(CONFIG_SWP_EMULATION))
>>>> -		register_insn_emulation(&swp_ops);
>>>> +	int ret = 0;
>>>> +	int err = 0;
>>>> +
>>>> +	if (IS_ENABLED(CONFIG_SWP_EMULATION)) {
>>>> +		ret = register_insn_emulation(&swp_ops);
>>>> +		if (ret) {
>>>> +			pr_err("register insn emulation swp: fail\n");
>>>> +			err = ret;
>>>> +		}
>>>> +	}
>>>
>>> Is there much point in continuing here? May as well just return ret, I
>>> think. I also don't think you need to print anything, since kmalloc
>>> should already have shouted.
>>>
>> The registration of each instruction simulation is independent. I think
>> that one failure does not affect the registration of other instructions.
> 
> Dunno, I think that if kmalloc() starts failing then it's time to give up!
> 
>> In addition, if return directly, is it need to unregister? Of course,
>> the first instruction registration can be directly returned, If the
>> following instruction registration fails, is it need unregister operation?
>> currently the unregistration of instruction simulation is not be implemented
>> yet.
> 
> That's an interesting one -- currently there isn't a way to unregister
> an emulation hook afaict. We could add unregister_insn_emulation() to
> remove the emulation hook from the insn_emulation list and free it, but
> I'm actually now starting to prefer your initial patch after all. The only
> way these failures will happen are either because the system is doomed
> or kmalloc fault injection is being used; so keeping things simple rather
> than add rarely executed complexity is probably best.
> 
>> The purpose of printing information is to replace the direct return, which
>> can distinguish which instruction failed to register. There is no need to print
>> information if it returns directly.
> 
> What do you expect people to do with that information?
> 
> Are you ok with me applying your original patch?
> 
I agree, it is simple. thanks.

> Will
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
