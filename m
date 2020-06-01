Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F16A1E9CE7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 07:08:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iTtJpbGINmY6k7JBzi4SmGzfuF/7o4cIZiL1Ezs/xmM=; b=BnxEf5Ecz0TbSpNI6VZJ7u2jOS
	oFgXjwidBOWE+Y1TKu2qJj+TUNYwAI8m/jn2RA610Eav+8SEhx88wR6TckXlp1jQ5SMlnzXyFxspQ
	L5o34dfXyND9WIHpQwL90PjkeTNSIngdw/C1PsbU1Oo3M+NKMed64TSveIKoEHK3yvHg+sWVG5Bh6
	59ypS5mvrV2bp00onetDvCEzYbmPS+w/xkHiIWZZZv2e8HoelL4UhUlCW04/kZDqlEf4BBISRWYLP
	2aOHB4oE9oI3UQS+PIze60vQrUEyzFamwS/UbG2h8vaKLWgRONXQxtjO/l5dVgi9h27xFvvx/z8IM
	lNotb3Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfcgG-0008Hy-BC; Mon, 01 Jun 2020 05:08:12 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfcg6-0008GG-1y
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 05:08:03 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 576901095CA6B941DA98
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  1 Jun 2020 13:07:46 +0800 (CST)
Received: from [10.173.221.230] (10.173.221.230) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.487.0; Mon, 1 Jun 2020 13:07:43 +0800
Subject: Re: [PATCH RFC] KVM: arm64: Sidestep stage2_unmap_vm() on vcpu reset
 when S2FWB is supported
To: <linux-arm-kernel@lists.infradead.org>
References: <20200415072835.1164-1-yuzenghui@huawei.com>
 <e99bc07d-0dd4-055c-808f-fd9cde88d2fc@arm.com>
 <a1a1961a-2eae-b26c-e607-ab5c0c929f37@arm.com>
 <13db879dff56d091f98f7c5416ab1535@kernel.org>
From: zhukeqian <zhukeqian1@huawei.com>
Message-ID: <899070d6-d6dc-b67d-f761-f57981a7a40c@huawei.com>
Date: Mon, 1 Jun 2020 13:07:32 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <13db879dff56d091f98f7c5416ab1535@kernel.org>
X-Originating-IP: [10.173.221.230]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_220802_264346_C38262E8 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2020/5/31 0:31, Marc Zyngier wrote:
> Hi Alex,
> 
> On 2020-05-30 11:46, Alexandru Elisei wrote:
>> Hi,
[...]
>       */
> -    if (vcpu->arch.has_run_once && !cpus_have_const_cap(ARM64_HAS_STAGE2_FWB))
> -        stage2_unmap_vm(vcpu->kvm);
> +    if (vcpu->arch.has_run_once) {
> +        if (!cpus_have_final_cap(ARM64_HAS_STAGE2_FWB))
> +            stage2_unmap_vm(vcpu->kvm);
> +        else
> +            __flush_icache_all();
I have a question here.
Does this operation flush icaches of all physical CPUs?
> +    }
> 
>      vcpu_reset_hcr(vcpu);
> 
Thanks,
Keqian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
