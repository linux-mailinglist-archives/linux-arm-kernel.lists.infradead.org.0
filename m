Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0779A1AB5B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 04:01:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qCNkzdWOGQfqnPU6UOCNu54VZ8hfYx7dRQtQGQea7aY=; b=CrbSDYVqT+cuDZgsQeCxDYJWN
	ClmXb8s/LJIQC4dWYydqAeuspiIZPkDpuxuweq2bEeGeYjictpEaFDn/FpL5OzfTE5JsZI0JRviTF
	QYDvtnyyPxOhwCNX9Ss7VySDw4KQPBRUtdu74x+2v/ixLnySGErBatIk2/jlZf/8cdfEjbsSKROLI
	CQhFbclkwNgBXNmT16k5nmIUJzydrlShLvwK4rW/c7nL3+3dquNEDcM2BWj78WeOMf4SzHJpxAJDF
	jICN7cOwa2ba/XuylsQjAV5FNH7frg1D2ojoVtHH5Yjb7DLzk8/e2bExNTSi490QJKcHu4tT7dGWL
	//0uZhsVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOtpz-0001IC-3t; Thu, 16 Apr 2020 02:01:07 +0000
Received: from out30-54.freemail.mail.aliyun.com ([115.124.30.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOtpr-0001H6-Nf
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 02:01:01 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R851e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e07488;
 MF=tianjia.zhang@linux.alibaba.com; NM=1; PH=DS; RN=19; SR=0;
 TI=SMTPD_---0Tveg8zr_1587002446; 
Received: from 30.27.118.45(mailfrom:tianjia.zhang@linux.alibaba.com
 fp:SMTPD_---0Tveg8zr_1587002446) by smtp.aliyun-inc.com(127.0.0.1);
 Thu, 16 Apr 2020 10:00:47 +0800
Subject: Re: [PATCH] KVM: Optimize kvm_arch_vcpu_ioctl_run function
To: Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>
References: <20200413034523.110548-1-tianjia.zhang@linux.alibaba.com>
 <875ze2ywhy.fsf@vitty.brq.redhat.com>
 <cc29ce22-4c70-87d1-d7aa-9d38438ba8a5@linux.alibaba.com>
 <87a73dxgk6.fsf@vitty.brq.redhat.com>
 <9e122372-249d-3d93-99ed-a670fff33936@redhat.com>
From: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Message-ID: <4843f690-7071-aa4f-cc9d-d9cc2321e669@linux.alibaba.com>
Date: Thu, 16 Apr 2020 10:00:46 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <9e122372-249d-3d93-99ed-a670fff33936@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_190059_937959_CE6AC529 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.54 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
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
Cc: wanpengli@tencent.com, kvm@vger.kernel.org, suzuki.poulose@arm.com,
 maz@kernel.org, joro@8bytes.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, mingo@redhat.com, bp@alien8.de,
 julien.thierry.kdev@gmail.com, hpa@zytor.com, james.morse@arm.com,
 tglx@linutronix.de, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, jmattson@google.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2020/4/15 22:53, Paolo Bonzini wrote:
> On 15/04/20 11:07, Vitaly Kuznetsov wrote:
>> In case this is no longer needed I'd suggest we drop 'kvm_run' parameter
>> and extract it from 'struct kvm_vcpu' when needed. This looks like a
>> natural add-on to your cleanup patch.
> 
> I agree, though I think it should be _instead_ of Tianjia's patch rather
> than on top.
> 
> Paolo
> 

Thank you very much for the comments of Vitaly and Paolo, I will make a 
v2 patch.

Thanks and best,
Tianjia

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
