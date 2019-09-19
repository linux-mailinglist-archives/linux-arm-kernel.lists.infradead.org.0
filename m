Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 478CCB7012
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 02:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=es8upbe2wWW91A0VSZ7O6L8npKE+hudupxYNjXZUUfY=; b=ITb6yIiY8hCZPe
	SDHYazwPG+Xk0flt/REHcfWf0uuCVRKx1uL50fNkX3Iuk9kNVq4ZyqRNqBvg1BNaTG3XJCjnzu8VR
	o0yH0MnYsyDD+WMNrnjW9YFABWBb72yyvxtRieUkEQVLs1YgABwqVOSARaRToa9xTOtOFFB5R2deO
	mnLkvQ8u3CULoCfRRwJvCnn3HHhWjCBdqKZHBrdXsVJIQtIrfunTHJFjrEUjtHdXTe/z6Nk3Uso11
	WjpAzkG3msP8idAaKtCiFCseyDBk5mK4fwEApCDiN0GDA+od+LWPOfVXKMfV6zc9+t3nb03by7oNk
	v90qMnKFCC/jyQSkARBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAkEk-0001uz-Fp; Thu, 19 Sep 2019 00:23:54 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAkET-0001tu-Fr
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 00:23:38 +0000
Received: by ozlabs.org (Postfix, from userid 1003)
 id 46YcyX6FPFz9sNF; Thu, 19 Sep 2019 10:23:32 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ozlabs.org; s=201707;
 t=1568852612; bh=cw3bVSIKyGLl8fd6W8ykuEcHQm9lvtEQ4ISh1Suv21A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R3NvO9RHRrBeHenKeGVQwRwaNzl90QJKU91Oh5UtKsnjPccYcuWsO/+sjMOyqwX7L
 qXGlMsp052mihy0ZJJ2eIVJLqlRGa9kQM/LgVKA7ED5dZy2xxDU0F7hWJ5Tp54i1Oj
 k55td7N92nS1j9aJa2rikaxwZ/Rett3ejrVCl2Y6XgJzt/d7qDn+ismHBncyRTAYV+
 hS8OCe+151b9IycINykjKDkPYC/8MG9vZUkPbnlESnKeZ09ZuP4shL0f/tklBl/8Uc
 RZALg8LGgjsbVJ+XmBlldREITO6j39TWleHK6T7JSCMg1LLpCOuW1Dvvlzw9Z/mO8v
 uxbb98hT109Jg==
Date: Thu, 19 Sep 2019 10:23:28 +1000
From: Paul Mackerras <paulus@ozlabs.org>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH 02/13] KVM: PPC: Move memslot memory allocation into
 prepare_memory_region()
Message-ID: <20190919002328.GB19503@blackberry>
References: <20190911185038.24341-1-sean.j.christopherson@intel.com>
 <20190911185038.24341-3-sean.j.christopherson@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911185038.24341-3-sean.j.christopherson@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_172337_742053_0BBDF19C 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Julien Thierry <julien.thierry@arm.com>, Cornelia Huck <cohuck@redhat.com>,
 Wanpeng Li <wanpengli@tencent.com>, Janosch Frank <frankja@linux.ibm.com>,
 kvm@vger.kernel.org, Radim =?utf-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Marc Zyngier <marc.zyngier@arm.com>, James Hogan <jhogan@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, David Hildenbrand <david@redhat.com>,
 linux-mips@vger.kernel.org, kvm-ppc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christian Borntraeger <borntraeger@de.ibm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 kvmarm@lists.cs.columbia.edu, Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 11:50:27AM -0700, Sean Christopherson wrote:
> Allocate the rmap array during kvm_arch_prepare_memory_region() to pave
> the way for removing kvm_arch_create_memslot() altogether.  Moving PPC's
> memory allocation only changes the order of kernel memory allocations
> between PPC and common KVM code.
> 
> No functional change intended.
> 
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>

Seems OK.

Acked-by: Paul Mackerras <paulus@ozlabs.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
