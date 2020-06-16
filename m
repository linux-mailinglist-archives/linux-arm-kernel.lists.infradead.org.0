Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9A81FAF92
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 13:55:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DfkuzDPSfiMp34RHnFJlwFs+iG0mnqOak9DPqtR49Ak=; b=RFW2XF/z2NBT5k2+UN0GFmTET
	Ul+A6psuzBJ12GJIj1ko0dE8XpaqfalGcgftlX2TskAdZJLLIhlC/0Bi6eAu898OTGDRp6jCNIG3+
	L0aULpjmC1XAEXZS9FeJzxst8vaup380+75+AbxvD2OY0yH+rOQzIePOU962LXd/GpkxIFnMkyjeS
	AemVsjzuduimF9ZfEzXLGto+DfsigMaJaWs0Q2cwLPRMaTBDJB7uGPQniR0bTmXlrRNBCQHlf4CT7
	a06Pze5sP3JvWlws21LbJkzg4b3/t2DK3h9vWH13fgvX7Bqw51cMkbyIWJ5ZGCICfxMEtVs1oCWbU
	y2jf5Iqsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlABR-0002fU-CZ; Tue, 16 Jun 2020 11:55:17 +0000
Received: from out30-57.freemail.mail.aliyun.com ([115.124.30.57])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlABD-0001VP-19
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 11:55:05 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R181e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e07484;
 MF=tianjia.zhang@linux.alibaba.com; NM=1; PH=DS; RN=37; SR=0;
 TI=SMTPD_---0U.mfflQ_1592308495; 
Received: from 30.27.116.240(mailfrom:tianjia.zhang@linux.alibaba.com
 fp:SMTPD_---0U.mfflQ_1592308495) by smtp.aliyun-inc.com(127.0.0.1);
 Tue, 16 Jun 2020 19:54:57 +0800
Subject: Re: [PATCH v4 6/7] KVM: MIPS: clean up redundant 'kvm_run' parameters
To: Paolo Bonzini <pbonzini@redhat.com>, Huacai Chen <chenhuacai@gmail.com>
References: <20200427043514.16144-1-tianjia.zhang@linux.alibaba.com>
 <20200427043514.16144-7-tianjia.zhang@linux.alibaba.com>
 <CAAhV-H7kpKUfQoWid6GSNL5+4hTTroGyL83EaW6yZwS2+Ti9kA@mail.gmail.com>
 <37246a25-c4dc-7757-3f5c-d46870a4f186@linux.alibaba.com>
 <30c2ac06-1a7e-2f85-fbe1-e9dc25bf2ae2@redhat.com>
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Message-ID: <5f0d01ad-d299-083b-70e4-995ad7596fbd@linux.alibaba.com>
Date: Tue, 16 Jun 2020 19:54:54 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <30c2ac06-1a7e-2f85-fbe1-e9dc25bf2ae2@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_045503_274100_BC0A4EF8 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.57 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 vkuznets@redhat.com, linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2020/5/29 17:48, Paolo Bonzini wrote:
> On 27/05/20 08:24, Tianjia Zhang wrote:
>>>>
>>>>
>>
>> Hi Huacai,
>>
>> These two patches(6/7 and 7/7) should be merged into the tree of the
>> mips architecture separately. At present, there seems to be no good way
>> to merge the whole architecture patchs.
>>
>> For this series of patches, some architectures have been merged, some
>> need to update the patch.
> 
> Hi Tianjia, I will take care of this during the merge window.
> 
> Thanks,
> 
> Paolo
> 

Hi Paolo,

The following individual patch is the v5 version of 5/7 in this group of 
patches.

https://lkml.org/lkml/2020/5/28/106
([v5] KVM: PPC: clean up redundant kvm_run parameters in assembly)

Thanks and best,
Tianjia

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
