Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7769C123A23
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 23:37:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P64oaiW8WteB9AQpc0CGr6fnXLtRm+xhGD0A/sSZtjI=; b=VA29TYcb4ZFLWk
	lo1OG/P3Hp/2sDWSJfUxaMxaWbjl5vZb2YpY106LsBhBILgP2QA2uxFKRZv3KXGdlNEjFIhkdnDXS
	Bdw8c/6+wgC/WW8CnlPdqlsOOefiSpX+52ba5rBs3lHM/56PE44tqc/K0Py2hpzMddVRjz+RSgDon
	rDO5IZxjnAR/10iEy3iCdHDV7bPETPKozfJg7YgWPIcuKgDz8FILSbsOI6XmIFv/lRCgUuy35vqGQ
	wHpBddcYHptR96su+oJIpxPRYMQQDrqnQdqypf7tL30VLoQbyOBp3vaj3p5c8g9ZoKVEZmWvQuXc4
	klcGx2ObqmpjOEOqYbBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihLTU-00080O-5Z; Tue, 17 Dec 2019 22:37:52 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihLTJ-0007zN-U1
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 22:37:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576622260;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9EsUXbZY6U+Bm0swUVD6VBLhpD0mHgCBqOKLzv1eXnA=;
 b=ODjlvhWxTNEDcFZgp8jtDOxSSc3Lex0MMTibQNcCDJ50zNeJkSj4VjIK/hpj4wcaI+wEcD
 26IHkl6dw859lF+84DJfah1fI45qC0znkwV7uM6ZBkr71VmGs46In9Ll596UEa9wTXITMQ
 NBeDzYJ8XIfYWfoT9JOEYGr1BEz4Tkk=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-430-icYImGX-NTim0dWRTnHj2Q-1; Tue, 17 Dec 2019 17:37:36 -0500
Received: by mail-qk1-f199.google.com with SMTP id u10so67565qkk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 14:37:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4AxsEtCek/f0aziPe+wCZz9Hjxg7TgpaT9NrNyuqheA=;
 b=jsW/Fs6s729YOR1qbyxRoqAx/FbgSKt0Za7DUIra3/b2dWeA86CXF6nvA4V1Cn8IUr
 eUmeWnElzyntLHm/6ImMU1+JM6OoE8uUV22ZH8tIAM95jOqa+3q+RPofKVg2JGBIQGWE
 GYwzqCmlhCXmvM5PgYAulX6e6DY5Sa1wLex5h9B7wM2lZk3ceGd4GK9hPGgJPle3QoWw
 RdJKSp79lCVXct6qR2oJP0S9fMEtHqUIl5NngVKi6ftDcmzza4qfLaVqNKM0dPsWzvxr
 RQIRKTAyfTv/MtgsvaCqX2PvCDHJB8ogKybQoHnRFHutk0VK1RMPFwZreTIoxpYZ3FNl
 awQg==
X-Gm-Message-State: APjAAAVchelmJrsuKznQaDVBLbOO1KjQpLzfnygLb75uV2hCNavDMslF
 c5OEJeNJ/xNFjqbiyXEXNvzefZcptIJb9mznBtg75WQoi0xNSaSestsmr/ie/3H9w/DR/MSR1MT
 6rG9N85ePVXggIC2Oup46Fa162T2LZB2uBHE=
X-Received: by 2002:a37:4d45:: with SMTP id a66mr374454qkb.65.1576622256396;
 Tue, 17 Dec 2019 14:37:36 -0800 (PST)
X-Google-Smtp-Source: APXvYqxl93uuG9B4gn7WP+rric6T9Je7Dj1Ol6DxMKHs7+zQRPC1qeoFeX2QtpGDhXhtHyWXATL+iw==
X-Received: by 2002:a37:4d45:: with SMTP id a66mr374408qkb.65.1576622256150;
 Tue, 17 Dec 2019 14:37:36 -0800 (PST)
Received: from xz-x1 ([104.156.64.74])
 by smtp.gmail.com with ESMTPSA id g62sm11961qkd.25.2019.12.17.14.37.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 14:37:35 -0800 (PST)
Date: Tue, 17 Dec 2019 17:37:34 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v4 01/19] KVM: x86: Allocate new rmap and large page
 tracking when moving memslot
Message-ID: <20191217223734.GL7258@xz-x1>
References: <20191217204041.10815-1-sean.j.christopherson@intel.com>
 <20191217204041.10815-2-sean.j.christopherson@intel.com>
 <20191217215640.GI7258@xz-x1>
 <20191217222058.GD11771@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20191217222058.GD11771@linux.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-MC-Unique: icYImGX-NTim0dWRTnHj2Q-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_143742_041844_D6758D84 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Wanpeng Li <wanpengli@tencent.com>, Janosch Frank <frankja@linux.ibm.com>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 James Hogan <jhogan@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-kernel@vger.kernel.org,
 Philippe =?utf-8?Q?Mathieu-Daud=C3=A9?= <f4bug@amsat.org>,
 kvm-ppc@vger.kernel.org, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Marc Zyngier <maz@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 David Gibson <david@gibson.dropbear.id.au>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 02:20:59PM -0800, Sean Christopherson wrote:
> > For example, I see PPC has this:
> > 
> > struct kvm_arch_memory_slot {
> > #ifdef CONFIG_KVM_BOOK3S_HV_POSSIBLE
> > 	unsigned long *rmap;
> > #endif /* CONFIG_KVM_BOOK3S_HV_POSSIBLE */
> > };
> > 
> > I started to look into HV code of it a bit, then I see...
> > 
> >  - kvm_arch_create_memslot(kvmppc_core_create_memslot_hv) init slot->arch.rmap,
> >  - kvm_arch_flush_shadow_memslot(kvmppc_core_flush_memslot_hv) didn't free it,
> >  - kvm_arch_prepare_memory_region(kvmppc_core_prepare_memory_region_hv) is nop.
> > 
> > So Does it have similar issue?
> 
> No, KVM doesn't allow a memslot's size to be changed, and PPC's rmap
> allocation is directly tied to the size of the memslot.  The x86 bug exists
> because the size of its metadata arrays varies based on the alignment of
> the base gfn.

Yes, I was actually thinking those rmap would be invalid rather than
the size after the move.  But I think kvm_arch_flush_shadow_memslot()
will flush all of them anyways... So yes it seems fine.

Thanks,

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
