Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F7B1548E9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 17:14:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2wAociuTZTuBIk115zoXxzwpXc0HEFAtzCbi23jxYVg=; b=CihFsGdpJp40Hj
	n3RvondZipe8L9of9HMQ1agIYvjoyo0c1Ye/Cep0iJHZgKXVjmPUa7vjSh2qMD/g2OIfrNh+n6fLo
	/WRBtBjc/uwGmtpJ8gwiEFB92QzlxMMRAtmN7EhbJ7itf0psVR+qGMO51ak+m/Sjr7Y02tD6R4LXg
	zLRtjMDoKOEzcVY4J6jkZr492yf4x/DRWXCz57vhBlc81wkWiKio+dpQ9oh8B+GOwgOJNpoOVWcu5
	zNkw4EpvQEn9CwBpZLbp3lNMbtYPBtZAT8koOYXh/GwYwQkO7r6MuR3QKNDC5+vxU8Ws7yC571VCi
	YAo/lu496VGEkQ96B5Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izjnT-0001zs-5m; Thu, 06 Feb 2020 16:14:31 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izjnM-0001zL-22
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 16:14:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581005662;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mNaIfC8axAPc5ot635/t+73YbS91NIurqIIFBQVX1is=;
 b=EnjYedFpc5VYwVKNABbbH6m767eDrMsIkXj+VEuqLBt58TETuDKR8YgSKNqEvW5Q7KIZFy
 NIJ7m3qY8OVc26/ig4be0lUg2y/7ZyHzk+G2zm5TZPH/eJloaFsHwV3mxL2e4e+ekXTbM0
 sXSkWMjbDsKw49dfyFpzpzfXEujktzA=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-418-jFze07mWNi6qCr0oQV8d9Q-1; Thu, 06 Feb 2020 11:14:21 -0500
Received: by mail-qv1-f69.google.com with SMTP id l1so3981085qvu.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 08:14:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zD2zZ3ak+8ZDNOjl3NQ0JmucKO3t2SwHGRlR5dLOuQs=;
 b=XanqPmriwWaY8pSXyBsnh/8IEJdqujkcXKp2eH5m6Z8vbH9zaCAGRW1H7CxfjKN3FV
 TI93803XY+p7/4UhuoBUKF6XBYS900VRQbICASof2b3NwYY2RD7eLsxvgeXbROjZN6Mg
 pZIeVvqsx3iPOSlb1ZqCBEWrLUREhdwW2WqN3LPLYTLH8Ekocjz6CnflepoOkKAqHrDT
 xmrKj7kQBXefa0kb3z5aaYVC+CdyOn62n9v5gez5cziSc8rIoeNUayF+B+CrwEa/BlXR
 Xwotv5Fcco+ZKkh8IN0AfciD1HwG0M9bDt9Dl60NstvOF1cqGelwhSb3Ha/pIdJ+iKN8
 FATw==
X-Gm-Message-State: APjAAAV51VPHWoyCFMr2ckLFI6LFfPHjRjFB0W7fNUDLS7ua3gp8dMNW
 Q3FpQ4hPT6L6MZ4qPshbuSrU5rcuEx81BMsi28aAXeHP0eGbI+Q7WOVBSTSA8nHtUWB3LdwpLai
 IvZqxgtJHI6IC8oq6ZWpqX9D+4+JNkaIwnBY=
X-Received: by 2002:ac8:6f27:: with SMTP id i7mr3235329qtv.253.1581005660655; 
 Thu, 06 Feb 2020 08:14:20 -0800 (PST)
X-Google-Smtp-Source: APXvYqzCPmrX47EJacBvj/8AwtDA4K9i5Vm/4QY2t/yuwCUp2i98pBnWQFyP1cxUVQ9RQgxjF7p4Wg==
X-Received: by 2002:ac8:6f27:: with SMTP id i7mr3235285qtv.253.1581005660385; 
 Thu, 06 Feb 2020 08:14:20 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id 136sm1590227qkn.109.2020.02.06.08.14.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 08:14:19 -0800 (PST)
Date: Thu, 6 Feb 2020 11:14:15 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 12/19] KVM: Move memslot deletion to helper function
Message-ID: <20200206161415.GA695333@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-13-sean.j.christopherson@intel.com>
MIME-Version: 1.0
In-Reply-To: <20200121223157.15263-13-sean.j.christopherson@intel.com>
X-MC-Unique: jFze07mWNi6qCr0oQV8d9Q-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_081424_176698_1FF89CAF 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Tue, Jan 21, 2020 at 02:31:50PM -0800, Sean Christopherson wrote:
> Move memslot deletion into its own routine so that the success path for
> other memslot updates does not need to use kvm_free_memslot(), i.e. can
> explicitly destroy the dirty bitmap when necessary.  This paves the way
> for dropping @dont from kvm_free_memslot(), i.e. all callers now pass
> NULL for @dont.
> 
> Add a comment above the code to make a copy of the existing memslot
> prior to deletion, it is not at all obvious that the pointer will become
> stale during sorting and/or installation of new memslots.

Could you help explain a bit on this explicit comment?  I can follow
up with the patch itself which looks all correct to me, but I failed
to catch what this extra comment wants to emphasize...

Thanks,

> 
> Note, kvm_arch_commit_memory_region() allows an architecture to free
> resources when moving a memslot or changing its flags, e.g. x86 frees
> its arch specific memslot metadata during commit_memory_region().

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
