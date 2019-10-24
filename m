Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3920FE3D24
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 22:24:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p+MjwX1BuxqEKkWHPX2hkp/8LEF9mm/fDRbd3X4Ypy8=; b=V/XN+5nWlk1UVk
	IopwSaRQSZSmfuHC8964cmCWHpZTxlvOWHiXl/k/6GxKhoW2oLbz20ULWMKrOaaAT1RqN2pNBXSd5
	ykqX42DQPKYkSo4vemLst8LCD8f+RQxtv1DDaXGOr+uglusiVTSQDYkOgX95fuipEqOrU6J53r1xQ
	ihPCZqhlqs+eUbyFcDJfeKgoVkass8OAjAPNIHCBVgzG7qWtyBPnohHSjOVF4Z5mwhk9L7UyoqdCg
	4XyercOaUCxaBePIOIA10dYznQW46+exmEgb93CJ0P8Hoj8GAd14srp7R6cXbUT5EWasY6PRjcOPF
	m0OJRGXGdpxhvfe61OEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNjek-0006CG-0g; Thu, 24 Oct 2019 20:24:26 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNjeY-0006BT-LO
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 20:24:16 +0000
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2CDC4330276
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 20:24:13 +0000 (UTC)
Received: by mail-wr1-f70.google.com with SMTP id 67so13391887wrm.18
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 13:24:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZRT3dVDu4csQhfGia5nCcLIZe2YAZImGVAl5gr6pUcE=;
 b=LaE6f76O/VBovXlCgu4hB6Un24+5oEhpOMB7+qUTCL3Aa9By61SVbilS7uzjYasESb
 dA8g5FCv7YoRgx2lEjs6apAAY6Gm67zryhrsfNYRIfaYkBXGeAv11AXl2Zz+wjszbzt/
 qNQW0mzeSQ9xNIBFM385i6BDzL8tXMy3ptUgvWUBLkWXsmwCyVmFdDVZUimEoS9erNHO
 Wci4RDVpMNoeaSOcTVkRFJSztJrF+5jPxrswrBVqhHsrt1D/qWtUJKrPIrnV3fRM/NFT
 WMkAuedErcEmmxDe0pD2S5CKVmf85qvG8xo9q1z+9Xm7cogvs08GzXc95CqS2zCL+UXh
 e97A==
X-Gm-Message-State: APjAAAVq9M7HdlENIG3VdgwjGwTHWoyyWXmVpZdd0xizx13BzLOWEEEI
 7Pm09HtTo3aeik2nkIunCIXgD08xZLwOJGQ89WqAjRyruj/RotN7eFbMAB475/66HOyk3+qIdRw
 dt2Wv07qVKFlkhJ0oh7J6cJ/oa/zjC0OfoTA=
X-Received: by 2002:a5d:4a03:: with SMTP id m3mr5578395wrq.359.1571948651617; 
 Thu, 24 Oct 2019 13:24:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx4p9hq+y70/y8WlLn0/OTguCJ96CcuhVxxvxeJyvnyp8Rzk3Jc6wiDxI+nnKN+OJXQKdf4DA==
X-Received: by 2002:a5d:4a03:: with SMTP id m3mr5578369wrq.359.1571948651305; 
 Thu, 24 Oct 2019 13:24:11 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:302c:998e:a769:c583?
 ([2001:b07:6468:f312:302c:998e:a769:c583])
 by smtp.gmail.com with ESMTPSA id v128sm5252067wmb.14.2019.10.24.13.24.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Oct 2019 13:24:10 -0700 (PDT)
Subject: Re: [PATCH v2 14/15] KVM: Terminate memslot walks via used_slots
To: Sean Christopherson <sean.j.christopherson@intel.com>
References: <20191022003537.13013-1-sean.j.christopherson@intel.com>
 <20191022003537.13013-15-sean.j.christopherson@intel.com>
 <642f73ee-9425-0149-f4f4-f56be9ae5713@redhat.com>
 <20191022152827.GC2343@linux.intel.com>
 <625e511f-bd35-3b92-0c6d-550c10fc5827@redhat.com>
 <20191022155220.GD2343@linux.intel.com>
 <5c61c094-ee32-4dcf-b3ae-092eba0159c5@redhat.com>
 <20191024193856.GA28043@linux.intel.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <5320341c-1abb-610b-8f5e-090a6726a9b1@redhat.com>
Date: Thu, 24 Oct 2019 22:24:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191024193856.GA28043@linux.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_132414_736152_355B6F43 
X-CRM114-Status: GOOD (  20.39  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: Cornelia Huck <cohuck@redhat.com>, Wanpeng Li <wanpengli@tencent.com>,
 Janosch Frank <frankja@linux.ibm.com>, kvm@vger.kernel.org,
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 James Hogan <jhogan@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 David Hildenbrand <david@redhat.com>, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Marc Zyngier <maz@kernel.org>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24/10/19 21:38, Sean Christopherson wrote:
> only
>  * its new index into the array is update.

s/update/tracked/?

  Returns the changed memslot's
>  * current index into the memslots array.
>  */
> static inline int kvm_memslot_move_backward(struct kvm_memslots *slots,
> 					    struct kvm_memory_slot *memslot)
> {
> 	struct kvm_memory_slot *mslots = slots->memslots;
> 	int i;
> 
> 	if (WARN_ON_ONCE(slots->id_to_index[memslot->id] == -1) ||
> 	    WARN_ON_ONCE(!slots->used_slots))
> 		return -1;
> 
> 	for (i = slots->id_to_index[memslot->id]; i < slots->used_slots - 1; i++) {
> 		if (memslot->base_gfn > mslots[i + 1].base_gfn)
> 			break;
> 
> 		WARN_ON_ONCE(memslot->base_gfn == mslots[i + 1].base_gfn);
> 
> 		/* Shift the next memslot forward one and update its index. */
> 		mslots[i] = mslots[i + 1];
> 		slots->id_to_index[mslots[i].id] = i;
> 	}
> 	return i;
> }
> 
> /*
>  * Move a changed memslot forwards in the array by shifting existing slots with
>  * a lower GFN toward the back of the array.  Note, the changed memslot itself
>  * is not preserved in the array, i.e. not swapped at this time, only its new
>  * index into the array is updated

Same here?

>  * Note, slots are sorted from highest->lowest instead of lowest->highest for
>  * historical reasons.

Not just that, the largest slot (with all RAM above 4GB) is also often
at the highest address at least on x86.  But we could sort them by size
now, so I agree to call these historical reasons.

The code itself is fine, thanks for the work on documenting it.

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
