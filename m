Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B7A1278CD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 11:06:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/zpr23uUWFGoyog48lDfq9dqMwBa6ofTz2raWS7B43Q=; b=gDqWz26DBWY2ZH
	+cwPNn218AOls/rY2w1e4uizfIEEuRhlmShsY6rYRKRYtkgyEXQpMhh64/Z5ZkGJUFavIXzlOafIm
	AoqoAZ5jLcVdaYalWkNRQnTWZkmBwtRuHXpU6fP4geLhu1vSVy5hT1ReXBpoYsT1PBZLfb6C12rg9
	YF7MN7aI7mt73endggFsx/InAhZ5lDmj10MdCBAlRFiqnLaYm8MTydotdCWZgi+BY5AikUiS0cA1n
	QoKncVlTX6L+oabudf4dd8o1Z8joVHoAXHTLygew+rYHGSu+neD0QLYbLA9Mp0JF4ZU6GOFaOb9Pm
	llcCrlova85UUTzJNfVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiFBI-0006hw-Ts; Fri, 20 Dec 2019 10:06:49 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiFB7-0006fd-D9
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 10:06:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576836394;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TJRAO3L22Ih+Pz3y1jOIE97EY53hqHdNJLLu6DqeuvU=;
 b=DQ87E3uKlcmKSmYWWnszQbwsu7l7Jux6fhXJxrQ4J70EMxD5faikeocPsPB6gM2V883zS4
 usYAwEP7H2n3OoC+US/AqRz8SXdFdzVVArs+CLZlCJQyJFKJoNcVkxtwmhKspKT0sr8Aau
 QCgNCQ6a2gxjOcBmghbZtM0MLnYkMOI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-209-Q-jcCQ3WOJCPBNkNsbH44Q-1; Fri, 20 Dec 2019 05:06:30 -0500
X-MC-Unique: Q-jcCQ3WOJCPBNkNsbH44Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E665694D13;
 Fri, 20 Dec 2019 10:06:26 +0000 (UTC)
Received: from gondolin (dhcp-192-245.str.redhat.com [10.33.192.245])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0B2431001B00;
 Fri, 20 Dec 2019 10:06:20 +0000 (UTC)
Date: Fri, 20 Dec 2019 11:06:18 +0100
From: Cornelia Huck <cohuck@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v2 37/45] KVM: Drop kvm_arch_vcpu_setup()
Message-ID: <20191220110618.05b1dc86.cohuck@redhat.com>
In-Reply-To: <20191218215530.2280-38-sean.j.christopherson@intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
 <20191218215530.2280-38-sean.j.christopherson@intel.com>
Organization: Red Hat GmbH
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_020637_520633_051EC7D0 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Wanpeng Li <wanpengli@tencent.com>, Janosch Frank <frankja@linux.ibm.com>,
 kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 David Hildenbrand <david@redhat.com>, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Greg Kurz <groug@kaod.org>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 James Hogan <jhogan@kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 18 Dec 2019 13:55:22 -0800
Sean Christopherson <sean.j.christopherson@intel.com> wrote:

> Remove kvm_arch_vcpu_setup() now that all arch specific implementations
> are nops.
> 
> Acked-by: Christoffer Dall <christoffer.dall@arm.com>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  arch/arm/kvm/guest.c      | 5 -----
>  arch/arm64/kvm/guest.c    | 5 -----
>  arch/mips/kvm/mips.c      | 5 -----
>  arch/powerpc/kvm/book3s.c | 5 -----
>  arch/powerpc/kvm/booke.c  | 5 -----
>  arch/s390/kvm/kvm-s390.c  | 5 -----
>  arch/x86/kvm/x86.c        | 5 -----
>  include/linux/kvm_host.h  | 1 -
>  virt/kvm/kvm_main.c       | 5 -----
>  9 files changed, 41 deletions(-)

Reviewed-by: Cornelia Huck <cohuck@redhat.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
