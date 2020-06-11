Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42AEE1F6B7B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 17:47:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d5qz0JTTJbMQSivqcR0i60qNcRn6m6gTK+hiaDi1EXo=; b=PJGnxlOj0ty9oe
	6nLpP1xzwJcevlZrFdrW8PFYCjrC8HIJYKD6L+9Idyr3orr26QNO9XRliwIjDzePJBMeQ8tYzE0wn
	bVh2eLkYRO256bVau34iHV7xTCdfTo8/fclBAosEapT+sQe5wuoMg6lw27nBtibWWy+ht0kQRWjLN
	mMEjpBX+A6q7wWREwYiKYdr9zP10b6lEW/OmcqdX1WbKrtnDflxXb4AHT9dpH9unSn3CtLP0cFrqd
	z2yncHmxECO0YqiQ2+KwXXca9m0qf5gBKosZAYms3elfJrm/bama2HTRLBpQWrulrwQ/CrYaYPrbQ
	a71J5E1Zwv9QLID6FEvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjPQW-0000t0-7W; Thu, 11 Jun 2020 15:47:36 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjPPF-0008Mv-Qf
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 15:46:19 +0000
IronPort-SDR: k87t13apUFuO61yX3IWDe4LU/3eOIKCv0JsXqx7C36hjEWu0lQex5Ggw7WPxZz1mcAVDJJ1YAP
 alcoy7UNSi2A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 08:46:15 -0700
IronPort-SDR: 3iKlFSNmGLJIQjG6i4tV9DKlsjIjo/kGZ/UFziPeMJdfG9W3E92AKxhhodHCTS+EuQk+hqoqc0
 jidNOjbX/9Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,499,1583222400"; d="scan'208";a="419145052"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.152])
 by orsmga004.jf.intel.com with ESMTP; 11 Jun 2020 08:46:15 -0700
Date: Thu, 11 Jun 2020 08:46:15 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 18/21] KVM: arm64: Use common KVM implementation of MMU
 memory caches
Message-ID: <20200611154615.GG29918@linux.intel.com>
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-19-sean.j.christopherson@intel.com>
 <3555daf3b38c890e1e74f05d6f49f9be@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3555daf3b38c890e1e74f05d6f49f9be@kernel.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_084618_213081_F35D59E3 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Christoffer Dall <christoffer.dall@arm.com>,
 Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, Ben Gardon <bgardon@google.com>,
 Claudio Imbrenda <imbrenda@linux.ibm.com>, kvmarm@lists.cs.columbia.edu,
 Janosch Frank <frankja@linux.ibm.com>, Joerg Roedel <joro@8bytes.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Junaid Shahid <junaids@google.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jim Mattson <jmattson@google.com>, Cornelia Huck <cohuck@redhat.com>,
 Peter Shier <pshier@google.com>, linux-mips@vger.kernel.org,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Peter Feiner <pfeiner@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 09:01:44AM +0100, Marc Zyngier wrote:
> On 2020-06-05 22:38, Sean Christopherson wrote:

...

> >@@ -1024,7 +993,7 @@ static pud_t *stage2_get_pud(struct kvm *kvm,
> >struct kvm_mmu_memory_cache *cache
> > 	if (stage2_pgd_none(kvm, *pgd)) {
> > 		if (!cache)
> > 			return NULL;
> >-		pud = mmu_memory_cache_alloc(cache);
> >+		pud = kvm_mmu_memory_cache_alloc(cache);
> > 		stage2_pgd_populate(kvm, pgd, pud);
> > 		get_page(virt_to_page(pgd));
> > 	}
> 
> Quick note: this patch (as it is) breaks on arm64 due to Mike Rapoport's
> P4D rework. I've fixed it locally in order to test the series.

Good to know, I'll wait to send v2 until that gets pulled into Paolo's tree.
Thanks for the heads up, and especially for testing!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
