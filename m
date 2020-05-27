Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B259F1E3828
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 07:26:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=La/j8R+hY3rlAusPw4bj4HEC70yEhe6aaln5oFZsuKQ=; b=HeWhdpGSRO49Sg96qmDcnBWkc
	dGostnpioDr/2wD29jlWqnLhgjN4tUOHUc4UBaHBp9Bi4iu/M/LSsiZPnjluu91RPIhXUrQ5pJXE2
	V+Wc6rMH8u+2cL/AcjJqJVL7YhlvWwrjvDSLiEAj0jRccIpx77ZBF56s1sRPX1qMN3IOwkdup/pQF
	1GvDZZwdxA1gU7aZGRyx+RtJR1h0tXBZ9XGtwZkP1JkI14n9YeJl5pb2V8wP5dkAkQlpZk0RBaIww
	Hyq38ALZw6dNxesf4bI01DTc72+rMHFdXG2jJCl2P+t4K85EhC6zxVhFnFkGYvVOtmFA0EPbmtBLr
	pPABYzHtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdoaG-0003Y7-Dq; Wed, 27 May 2020 05:26:32 +0000
Received: from out4436.biz.mail.alibaba.com ([47.88.44.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdoa4-0003XE-LH
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 05:26:21 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R191e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e01358;
 MF=tianjia.zhang@linux.alibaba.com; NM=1; PH=DS; RN=37; SR=0;
 TI=SMTPD_---0TzmMcE-_1590557034; 
Received: from 30.27.118.64(mailfrom:tianjia.zhang@linux.alibaba.com
 fp:SMTPD_---0TzmMcE-_1590557034) by smtp.aliyun-inc.com(127.0.0.1);
 Wed, 27 May 2020 13:23:56 +0800
Subject: Re: [PATCH v4 3/7] KVM: PPC: Remove redundant kvm_run from vcpu_arch
To: Paul Mackerras <paulus@ozlabs.org>
References: <20200427043514.16144-1-tianjia.zhang@linux.alibaba.com>
 <20200427043514.16144-4-tianjia.zhang@linux.alibaba.com>
 <20200527042055.GG293451@thinks.paulus.ozlabs.org>
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Message-ID: <56064e35-583f-0dc8-9156-aabebdb8aff4@linux.alibaba.com>
Date: Wed, 27 May 2020 13:23:54 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200527042055.GG293451@thinks.paulus.ozlabs.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_222620_838438_6F3BAEAA 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.7 (--------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-8.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [47.88.44.36 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [47.88.44.36 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: wanpengli@tencent.com, kvm@vger.kernel.org, david@redhat.com,
 benh@kernel.crashing.org, heiko.carstens@de.ibm.com, peterx@redhat.com,
 linux-mips@vger.kernel.org, hpa@zytor.com, kvmarm@lists.cs.columbia.edu,
 linux-s390@vger.kernel.org, frankja@linux.ibm.com, chenhuacai@gmail.com,
 maz@kernel.org, joro@8bytes.org, x86@kernel.org, borntraeger@de.ibm.com,
 mingo@redhat.com, julien.thierry.kdev@gmail.com, thuth@redhat.com,
 gor@linux.ibm.com, suzuki.poulose@arm.com, kvm-ppc@vger.kernel.org,
 bp@alien8.de, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 jmattson@google.com, tsbogend@alpha.franken.de, cohuck@redhat.com,
 christoffer.dall@arm.com, sean.j.christopherson@intel.com,
 linux-kernel@vger.kernel.org, james.morse@arm.com, mpe@ellerman.id.au,
 pbonzini@redhat.com, vkuznets@redhat.com, linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2020/5/27 12:20, Paul Mackerras wrote:
> On Mon, Apr 27, 2020 at 12:35:10PM +0800, Tianjia Zhang wrote:
>> The 'kvm_run' field already exists in the 'vcpu' structure, which
>> is the same structure as the 'kvm_run' in the 'vcpu_arch' and
>> should be deleted.
>>
>> Signed-off-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
> 
> Thanks, patches 3 and 4 of this series applied to my kvm-ppc-next branch.
> 
> Paul.
> 

Thanks for your suggestion, for 5/7, I will submit a new version patch.

Thanks,
Tianjia

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
