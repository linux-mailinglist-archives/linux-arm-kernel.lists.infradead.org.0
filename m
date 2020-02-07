Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4891560CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 22:46:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WhHp9giTKkmLJQQxg69YfSuG+VZrjs9WtAaATo+BgzI=; b=EPrLdHayugXIIg
	fyGQGtFDcrUhbtU1Le13boyxDvybB4UE1T5URAAxLfVT6JRAO8190YxewfMOSogb9MFnVncQoxgGL
	is00KgUPLDtHhrjpgjY/0QaJsD9s50SamqCIWxjO3HMdv4x3SUUigszFWMvCHfYrDRETWh6KIvsqz
	hVUt3rDOx00X3PI5mniiKc9vfYWS4c0q6JZsNgL5kg5zjdAKaZSUE6zMYsyjCJfGd8T/PhBbfqDXT
	cw1052q6qnlfisHEOef2OX1yTIMRfzap7YAsbIhalrlRTVVIzpfd5XfRBWI8cWbwd/0GBNwt0PPNi
	ktkxB57LqlvZYRdvG1fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0BST-0004lC-4s; Fri, 07 Feb 2020 21:46:41 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0BSK-0004kL-9W
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 21:46:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581111990;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WG242BmndwBfu/MjtxpwMCr6pklOwypN4g+lYWDvs4k=;
 b=jWWq9DniKUu/K5ARVyiXw0czNTSz2dkoJM1HCGbbd2hGsA1a1fkXl8hDJ6LHRA2VY6IMFx
 uoKtAznNad8C+mwm/W0WzuvTmnE62g0cNhWlF4CWWpVUCzB3fY8qVvrI/DygZDdcLU0Mzj
 Lq6u+wF5iSVDd96c6ZAZaGQQ6PzMc3Y=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-51-OnG3x5R_M6aiXFq2EHfC5Q-1; Fri, 07 Feb 2020 16:46:28 -0500
Received: by mail-qv1-f69.google.com with SMTP id z39so420624qve.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 13:46:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vVYpZUcLEUs3sOrjbIqPes1hb8KpqKLOy5PIHOTaenw=;
 b=Ka81v37QKDtj+eFJtkQ2U5l6I377qnv18L8y0ASsdwWlMipBU1AseOWivJDz7X2Fwq
 rXWV1ejCczS7aaQ2uAuycKL9HHsK7FdNCy9JLZdSjSPjR/Y2qD0h1WsFT9waFGFmxn+6
 9pUPqujQcm2kKyfJ+sz9bBTq6AEIwUmZgkfvrobL8lJxz8tP8qQy/JtrvNAuZNVg5rvm
 vkljQOmvdn3w6b+tKbYrAOSBVcw9kqgT+bKhd6cb5TnNx0xw7DL1QWk4h0J35zI7RY0y
 gw1vRS0hpQiuC5FoPXfnIRM5hMBBwI9agvrO9k4u8iop3SQvzTmOd7SaZo8kJ253Lv1w
 OYnw==
X-Gm-Message-State: APjAAAXVFJIwM+LAjAADkPEssOz+LNQ3kRGpLH1dH9EHpejl9MmCDiY1
 d9/gVCc2TmG+jAGWtpbIpLZSlxvmI+RjLrSaDbpE1aO/RIrASRQsd+dtWr9puHcFQmABslTQfUh
 lU2g3+98FkCVJbAXMzUC3GnTQZDGbaBFxWms=
X-Received: by 2002:ae9:e910:: with SMTP id x16mr988296qkf.90.1581111987477;
 Fri, 07 Feb 2020 13:46:27 -0800 (PST)
X-Google-Smtp-Source: APXvYqwxRGnu4XDnzwjnf0DDkOxM5HXmG3kOePeoAJPNmuK0HFHObXtw0rsBdJC1716CoqHguYzOkw==
X-Received: by 2002:ae9:e910:: with SMTP id x16mr988252qkf.90.1581111987166;
 Fri, 07 Feb 2020 13:46:27 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id t16sm1892401qkg.96.2020.02.07.13.46.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 13:46:26 -0800 (PST)
Date: Fri, 7 Feb 2020 16:46:23 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 17/19] KVM: Terminate memslot walks via used_slots
Message-ID: <20200207214623.GF720553@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-18-sean.j.christopherson@intel.com>
 <20200206210944.GD700495@xz-x1>
 <20200207183325.GI2401@linux.intel.com>
 <20200207203909.GE720553@xz-x1>
 <20200207211016.GN2401@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20200207211016.GN2401@linux.intel.com>
X-MC-Unique: OnG3x5R_M6aiXFq2EHfC5Q-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_134633_359890_FC839741 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, kvmarm@lists.cs.columbia.edu,
 Janosch Frank <frankja@linux.ibm.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, Christoffer Dall <christoffer.dall@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Philippe =?utf-8?Q?Mathieu-Daud=C3=A9?= <f4bug@amsat.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 07, 2020 at 01:10:16PM -0800, Sean Christopherson wrote:
> On Fri, Feb 07, 2020 at 03:39:09PM -0500, Peter Xu wrote:
> > On Fri, Feb 07, 2020 at 10:33:25AM -0800, Sean Christopherson wrote:
> > > On Thu, Feb 06, 2020 at 04:09:44PM -0500, Peter Xu wrote:
> > > > On Tue, Jan 21, 2020 at 02:31:55PM -0800, Sean Christopherson wrote:
> > > > > @@ -9652,13 +9652,13 @@ int __x86_set_memory_region(struct kvm *kvm, int id, gpa_t gpa, u32 size)
> > > > >  		if (IS_ERR((void *)hva))
> > > > >  			return PTR_ERR((void *)hva);
> > > > >  	} else {
> > > > > -		if (!slot->npages)
> > > > > +		if (!slot || !slot->npages)
> > > > >  			return 0;
> > > > >  
> > > > > -		hva = 0;
> > > > > +		hva = slot->userspace_addr;
> > > > 
> > > > Is this intended?
> > > 
> > > Yes.  It's possible to allow VA=0 for userspace mappings.  It's extremely
> > > uncommon, but possible.  Therefore "hva == 0" shouldn't be used to
> > > indicate an invalid slot.
> > 
> > Note that this is the deletion path in __x86_set_memory_region() not
> > allocation.  IIUC userspace_addr won't even be used in follow up code
> > path so it shouldn't really matter.  Or am I misunderstood somewhere?
> 
> No, but that's precisely why I don't want to zero out @hva, as doing so
> implies that '0' indicates an invalid hva, which is wrong.
> 
> What if I change this to 
> 
> 			hva = 0xdeadull << 48;
> 
> and add a blurb in the changelog about stuff hva with a non-canonical value
> to indicate it's being destroyed.

IMO it's fairly common to have the case where "when A is XXX then
parameters B is invalid" happens in C.  OK feel free to keep any of
these as you prefer (how many times I spoke this only for today? :) as
long as the maintainers are fine with it.  And for sure an extra
comment would always be nice.

Thanks,

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
