Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5A5181207
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 08:35:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mht/PIUIwwBrh/R2WaGXVWId94/6Rh1sEjPdTYiKC/Y=; b=Y4TWZLKA8tBQBi
	onCFFqAgG74xU4se39HSKeoRHyb7Z5UtfRms6gNv8ImYnLRV75TxD+bOPy3XmyyTMF5Xn2j8/msl5
	n6fpQ0tvcC1oR5QFM5rcv/1f2uqO4oxf3hhwPHELxcB0Cw7+ue11td7MHBxqjgIv3GO41v6ePeKhZ
	42ERBhsZHwmdxoJFZnz5Q2Ejn4+aAYYTa6cwhXjckGoa67PIBrQjwQOD5f6rVhlpeBxjILNTyCkPx
	e4Awxa3SAO3ecaI/FPUOCZ4EHgPwcQfopsjNCupKdaFFqKQNp733M+Oaxc+aoXx0ZuEYuHtSNHIFy
	LtSaluV9HysQU3PmoRag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBvtu-0000iV-8v; Wed, 11 Mar 2020 07:35:34 +0000
Received: from szxga08-in.huawei.com ([45.249.212.255] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBvth-0000Ws-79
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 07:35:23 +0000
Received: from DGGEMM402-HUB.china.huawei.com (unknown [172.30.72.53])
 by Forcepoint Email with ESMTP id 8A9A3905D61B99ACD7FD;
 Wed, 11 Mar 2020 15:35:03 +0800 (CST)
Received: from DGGEMM421-HUB.china.huawei.com (10.1.198.38) by
 DGGEMM402-HUB.china.huawei.com (10.3.20.210) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 11 Mar 2020 15:35:02 +0800
Received: from DGGEMM528-MBX.china.huawei.com ([169.254.8.90]) by
 dggemm421-hub.china.huawei.com ([10.1.198.38]) with mapi id 14.03.0439.000;
 Wed, 11 Mar 2020 15:34:56 +0800
From: "Zhoujian (jay)" <jianjay.zhou@huawei.com>
To: zhukeqian <zhukeqian1@huawei.com>, Marc Zyngier <maz@kernel.org>
Subject: RE: [RFC] KVM: arm64: support enabling dirty log graually in small
 chunks
Thread-Topic: [RFC] KVM: arm64: support enabling dirty log graually in small
 chunks
Thread-Index: AQHV9fES7bnu3RiLvUOZvoLEbVPgkKg/noOAgAFalYCAAFE+gIABLpcAgACIxzA=
Date: Wed, 11 Mar 2020 07:34:55 +0000
Message-ID: <B2D15215269B544CADD246097EACE7474BB64495@DGGEMM528-MBX.china.huawei.com>
References: <20200309085727.1106-1-zhukeqian1@huawei.com>
 <4b85699ec1d354cc73f5302560231f86@misterjones.org>
 <64925c8b-af3d-beb5-bc9b-66ef1e47f92d@huawei.com>
 <a642a79ea9190542a9098e4c9dc5a9f2@kernel.org>
 <9ddefc54-dd5b-0555-0aaa-00a3a23febcf@huawei.com>
In-Reply-To: <9ddefc54-dd5b-0555-0aaa-00a3a23febcf@huawei.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.173.228.206]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_003521_449822_116FBD89 
X-CRM114-Status: GOOD (  19.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.255 listed in list.dnswl.org]
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
Cc: "Huangweidong \(C\)" <weidong.huang@huawei.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 "wangxin \(U\)" <wangxinxin.wang@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Paolo Bonzini <pbonzini@redhat.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: zhukeqian
> Sent: Wednesday, March 11, 2020 3:20 PM
> To: Marc Zyngier <maz@kernel.org>
> Cc: kvmarm@lists.cs.columbia.edu; kvm@vger.kernel.org;
> linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; Zhoujian (jay)
> <jianjay.zhou@huawei.com>; Sean Christopherson
> <sean.j.christopherson@intel.com>; Paolo Bonzini <pbonzini@redhat.com>;
> James Morse <james.morse@arm.com>; Julien Thierry
> <julien.thierry.kdev@gmail.com>; Suzuki K Poulose <suzuki.poulose@arm.com>
> Subject: Re: [RFC] KVM: arm64: support enabling dirty log graually in small chunks
> 
> Hi Marc,
> 
> On 2020/3/10 21:16, Marc Zyngier wrote:
> > On 2020-03-10 08:26, zhukeqian wrote:
> >> Hi Marc,
> >>
> >> On 2020/3/9 19:45, Marc Zyngier wrote:
> >>> Kegian,
> >
> > [...]
> >
> >>> Is there a userspace counterpart to it?
> >>>
> >> As this KVM/x86 related changes have not been merged to mainline
> >> kernel, some little modification is needed on mainline Qemu.
> >
> > Could you please point me to these changes?
> I made some changes locally listed below.
> 
> However, Qemu can choose to enable KVM_DIRTY_LOG_INITIALLY_SET or not.
> Here I made no judgement on dirty_log_manual_caps because I just want to
> verify the optimization of this patch.
> 
> diff --git a/accel/kvm/kvm-all.c b/accel/kvm/kvm-all.c index
> 439a4efe52..1611f644a4 100644
> --- a/accel/kvm/kvm-all.c
> +++ b/accel/kvm/kvm-all.c
> @@ -2007,14 +2007,16 @@ static int kvm_init(MachineState *ms)
>      s->coalesced_pio = s->coalesced_mmio &&
>                         kvm_check_extension(s,
> KVM_CAP_COALESCED_PIO);
> 
> -    s->manual_dirty_log_protect =
> +    uint64_t dirty_log_manual_caps =
>          kvm_check_extension(s,
> KVM_CAP_MANUAL_DIRTY_LOG_PROTECT2);
> -    if (s->manual_dirty_log_protect) {
> -        ret = kvm_vm_enable_cap(s,
> KVM_CAP_MANUAL_DIRTY_LOG_PROTECT2, 0, 1);
> +    if (dirty_log_manual_caps) {
> +        ret = kvm_vm_enable_cap(s,
> KVM_CAP_MANUAL_DIRTY_LOG_PROTECT2, 0,
> +                                dirty_log_manual_caps);
>          if (ret) {
>              warn_report("Trying to enable
> KVM_CAP_MANUAL_DIRTY_LOG_PROTECT2 "
>                          "but failed.  Falling back to the legacy mode. ");
> -            s->manual_dirty_log_protect = false;
> +        } else {
> +            s->manual_dirty_log_protect = true;
>          }
>      }

FYI: I had submitted a patch to the Qemu community some days ago:
https://patchwork.kernel.org/patch/11419191/

> >
> >> As I tested this patch on a 128GB RAM Linux VM with no huge pages,
> >> the time of enabling dirty log will decrease obviously.
> >
> > I'm not sure how realistic that is. Not having huge pages tends to
> > lead to pretty bad performance in general...
> Sure, this has no effect on guests which are all of huge pages.
> 
> For my understanding, once a guest has normal pages (maybe are initialized at
> beginning or dissloved from huge pages), it can benefit from this patch.

Yes, I agree.



Regards,
Jay Zhou

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
