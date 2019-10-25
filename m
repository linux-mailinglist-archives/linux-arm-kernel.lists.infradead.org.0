Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFACE4176
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 04:24:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/rG3NcRSWwlgn6XmEFxIgXWBhJIMQ48rkN6AjmLjTuo=; b=N5PQ0MO8sixdJKSCsADO/qrF3
	YNqqZlP5JFvfDW6J+PmarxBDCZqk1SxR4BoZ19kPUCEPYDV6lVzZCHgFvvbVyPX3/hmEuIHiYT/ye
	2w6DD/KkASpcKjBqUAjuVpj8oVSedKcrSCp3HEgpHEzDIiQwRlRaQENLpu/TLD84b7GHG71IbOzIL
	MCgswX4sbnkTssQKGvW1CFbNoQxV2QjMDej7n2iaLmGyq0JXy0gZ1jjIgsRZI1siwYTMMg6phhmrn
	PDicl2HZKMEHJzbxtH8QCdt59wzYApNMD+DaFiyFQhcBYjnEOGkFgKMEF2r4RQAlhZGOnhBTPdnze
	wD3cpmQ4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNpHR-00079j-1y; Fri, 25 Oct 2019 02:24:45 +0000
Received: from out30-130.freemail.mail.aliyun.com ([115.124.30.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNpHH-00079E-CI
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 02:24:36 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R211e4; CH=green; DM=||false|;
 FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e07417; MF=shannon.zhao@linux.alibaba.com;
 NM=1; PH=DS; RN=8; SR=0; TI=SMTPD_---0Tg7Ey22_1571970253; 
Received: from 30.43.121.138(mailfrom:shannon.zhao@linux.alibaba.com
 fp:SMTPD_---0Tg7Ey22_1571970253) by smtp.aliyun-inc.com(127.0.0.1);
 Fri, 25 Oct 2019 10:24:32 +0800
Subject: Re: [PATCH RFC 0/7] Support KVM being compiled as a kernel module on
 arm64
To: James Morse <james.morse@arm.com>
References: <1571912870-18471-1-git-send-email-shannon.zhao@linux.alibaba.com>
 <8cbd81d6-4ab8-9d2a-5162-8782201cd13d@arm.com>
From: Shannon Zhao <shannon.zhao@linux.alibaba.com>
Message-ID: <975a0c6f-fdff-556f-b447-06edf24141df@linux.alibaba.com>
Date: Fri, 25 Oct 2019 10:24:14 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <8cbd81d6-4ab8-9d2a-5162-8782201cd13d@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_192435_581241_FDE45AD1 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: suzuki.poulose@arm.com, maz@kernel.org, christoffer.dall@arm.com,
 linux-kernel@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On 2019/10/24 18:58, James Morse wrote:
> Hi Shannon,
> 
> On 24/10/2019 11:27, Shannon Zhao wrote:
>> Curently KVM ARM64 doesn't support to compile as a kernel module. It's
>> useful to compile KVM as a module.
> 
>> For example, it could reload kvm without rebooting host machine.
> 
> What problem does this solve?
> 
> KVM has some funny requirements that aren't normal for a module. On v8.0 hardware it must
> have an idmap. Modules don't usually expect their code to be physically contiguous, but
> KVM does. KVM influences they way some of the irqchip stuff is set up during early boot
> (EOI mode ... not that I understand it).
> 
> (I think KVM-as-a-module on x86 is an artifact of how it was developed)
> 
> 
>> This patchset support this feature while there are some limitations
>> to be solved. But I just send it out as RFC to get more suggestion and
>> comments.
> 
>> Curently it only supports for VHE system due to the hyp code section
>> address variables like __hyp_text_start.
> 
> We still need to support !VHE systems, and we need to do it with a single image.
> 
I didn't make it clear. With this patchset we still support !VHE systems 
by choose CONFIG_KVM_ARM_HOST as y and by default CONFIG_KVM_ARM_HOST is 
y. And during module init, I add a check to avoid wrong usage for kvm 
module.

if (IS_MODULE(CONFIG_KVM_ARM_HOST) && !is_kernel_in_hyp_mode()) {
         kvm_err("kvm arm kernel module only supports for VHE system\n");
         return -ENODEV;
}


> 
>> Also it can't call
>> kvm_update_va_mask when loading kvm module and kernel panic with below
>> errors. So I make kern_hyp_va into a nop funtion.
> 
> Making this work for the single-Image on v8.0 is going to be a tremendous amount of work.
> What is the payoff?
> 
Actually we can limit this feature only working for VHE systems and 
don't influence !VHE systems.

Thanks,
Shannon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
