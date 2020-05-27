Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FEB51E3914
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 08:24:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C+OcRHtZPlT2+kEFwDdoi0O5Yr/Nu6ju3zRORe4Ku24=; b=M2QNBBxonr8Hzr4BnyYQ1wWZ4
	gcW+SboPMwE8IzPavyve3Yzg0ys/0VXYIBi+8uwlHMFoDcPQD4RVCvB2uO3okkbaTRD3+Y+szN+LR
	nlOkCzpLyiHdeIndNm5BZ7tidE2aktGVNCB2GG9ZV+L33BOA2VK+JBFMfvvb6cuvMUHf3t9cwPjYo
	H79CO/lR1YrAt9ryOuNk/Y5XGjq/c59+RNoykPFdG5IlXB/xX4ACk8YK6riOfPwd9dmGSX8YT2FGv
	NqjC1kQh/+HMaZ4U4I+8n5EK9sBIiOOvIcgLbtqC9q5kLwLGIbnLzVBcWgOlTPfR7XpuqnG0UUV0N
	Draz3ZbHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdpUR-0002r8-3m; Wed, 27 May 2020 06:24:35 +0000
Received: from out30-130.freemail.mail.aliyun.com ([115.124.30.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdpUC-0002pb-RA
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 06:24:28 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R941e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e07425;
 MF=tianjia.zhang@linux.alibaba.com; NM=1; PH=DS; RN=37; SR=0;
 TI=SMTPD_---0TzmW8ts_1590560648; 
Received: from 30.27.118.64(mailfrom:tianjia.zhang@linux.alibaba.com
 fp:SMTPD_---0TzmW8ts_1590560648) by smtp.aliyun-inc.com(127.0.0.1);
 Wed, 27 May 2020 14:24:10 +0800
Subject: Re: [PATCH v4 6/7] KVM: MIPS: clean up redundant 'kvm_run' parameters
To: Huacai Chen <chenhuacai@gmail.com>
References: <20200427043514.16144-1-tianjia.zhang@linux.alibaba.com>
 <20200427043514.16144-7-tianjia.zhang@linux.alibaba.com>
 <CAAhV-H7kpKUfQoWid6GSNL5+4hTTroGyL83EaW6yZwS2+Ti9kA@mail.gmail.com>
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Message-ID: <37246a25-c4dc-7757-3f5c-d46870a4f186@linux.alibaba.com>
Date: Wed, 27 May 2020 14:24:08 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAAhV-H7kpKUfQoWid6GSNL5+4hTTroGyL83EaW6yZwS2+Ti9kA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_232426_933244_0666025F 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, heiko.carstens@de.ibm.com,
 Peter Xu <peterx@redhat.com>, "open list:MIPS" <linux-mips@vger.kernel.org>,
 paulus@ozlabs.org, hpa@zytor.com, kvmarm@lists.cs.columbia.edu,
 linux-s390@vger.kernel.org, frankja@linux.ibm.com,
 Marc Zyngier <maz@kernel.org>, joro@8bytes.org, x86@kernel.org,
 borntraeger@de.ibm.com, mingo@redhat.com, julien.thierry.kdev@gmail.com,
 thuth@redhat.com, gor@linux.ibm.com, suzuki.poulose@arm.com,
 kvm-ppc@vger.kernel.org, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, jmattson@google.com,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, cohuck@redhat.com,
 christoffer.dall@arm.com, sean.j.christopherson@intel.com,
 LKML <linux-kernel@vger.kernel.org>, james.morse@arm.com, mpe@ellerman.id.au,
 Paolo Bonzini <pbonzini@redhat.com>, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2020/4/27 13:40, Huacai Chen wrote:
> Reviewed-by: Huacai Chen <chenhc@lemote.com>
> 
> On Mon, Apr 27, 2020 at 12:35 PM Tianjia Zhang
> <tianjia.zhang@linux.alibaba.com> wrote:
>>
>> In the current kvm version, 'kvm_run' has been included in the 'kvm_vcpu'
>> structure. For historical reasons, many kvm-related function parameters
>> retain the 'kvm_run' and 'kvm_vcpu' parameters at the same time. This
>> patch does a unified cleanup of these remaining redundant parameters.
>>
>> Signed-off-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
>> ---
>>   arch/mips/include/asm/kvm_host.h |  28 +-------
>>   arch/mips/kvm/emulate.c          |  59 ++++++----------
>>   arch/mips/kvm/mips.c             |  11 ++-
>>   arch/mips/kvm/trap_emul.c        | 114 ++++++++++++++-----------------
>>   arch/mips/kvm/vz.c               |  26 +++----
>>   5 files changed, 87 insertions(+), 151 deletions(-)
>>

Hi Huacai,

These two patches(6/7 and 7/7) should be merged into the tree of the 
mips architecture separately. At present, there seems to be no good way 
to merge the whole architecture patchs.

For this series of patches, some architectures have been merged, some 
need to update the patch.

Thanks and best,
Tianjia

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
