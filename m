Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 144C4126E31
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 20:48:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oZOtZitWt/Y6vp548TJl/uzewtHeN8+wRnsdH1kfe6g=; b=VQ+bOsbTv52vVY
	AEssBYkuDW8/2q3nOgp0fK2tppGAmno2TKps8KWmqOCxp324A0ytn3NH7gJIFba7Pk2yYqFf8FtUg
	pjIMZFhp1hXaM0mbHsOIccE0L5Dt1mP+i89Hae/af+AccSJRBZgZWJ+eqylUevNVgibXJCVIf6IZt
	O6hYgJgZd5wHzjIBDPmcJ2h5UslngVEfPMPzFb2nKNQWvQ9V+YB2HRko4UL+o1IvMCAn6wzE41pW8
	CntPzvW5xrt2EYhIC9jeexGAmws8A+yelLeVk4pt4LCt+b4gLU7JQPRN+kG5LwZuVdqKiLVIrOunV
	KHOd/Kr9/YvXrqe8pV7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii1mA-00035L-Vf; Thu, 19 Dec 2019 19:47:59 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii1m2-00034M-AQ
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 19:47:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576784868;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7s8aSCvp52Fcz2Wx/tS6wh/olyKy8a3YGMnOjn2uv8E=;
 b=KxYT5OwG6aazsdc6iH1JX2B+zsw1tJNHBss9X0G3QLQo+t8RYy/AuwVzSFfhDJiXfuW2v9
 +1hVX51fB3zj1kL9bkmX9mUvhlM0IMo6QJzwc1jq2iXk536f0xGIC6iNn2s8Dxc27UNvs3
 wUwbRa0iCiEIEkPv6YiSuisXAILwV0w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-198--uvnZKzHMz6b8tS9keq1SQ-1; Thu, 19 Dec 2019 14:47:46 -0500
X-MC-Unique: -uvnZKzHMz6b8tS9keq1SQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 30A4C1856A60;
 Thu, 19 Dec 2019 19:47:44 +0000 (UTC)
Received: from gondolin (ovpn-117-134.ams2.redhat.com [10.36.117.134])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7E3D610021B2;
 Thu, 19 Dec 2019 19:47:36 +0000 (UTC)
Date: Thu, 19 Dec 2019 20:47:33 +0100
From: Cornelia Huck <cohuck@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v2 26/45] KVM: s390: Invoke kvm_vcpu_init() before
 allocating sie_page
Message-ID: <20191219204733.791f7380.cohuck@redhat.com>
In-Reply-To: <20191218215530.2280-27-sean.j.christopherson@intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
 <20191218215530.2280-27-sean.j.christopherson@intel.com>
Organization: Red Hat GmbH
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_114750_429861_EDCB0A3F 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Wed, 18 Dec 2019 13:55:11 -0800
Sean Christopherson <sean.j.christopherson@intel.com> wrote:

> Now that s390's implementation of kvm_arch_vcpu_init() is empty, move
> the call to kvm_vcpu_init() above the allocation of the sie_page.  This
> paves the way for moving vcpu allocation and initialization into common
> KVM code without any associated functional change.
> 
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  arch/s390/kvm/kvm-s390.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)

Seems to be fine.

Reviewed-by: Cornelia Huck <cohuck@redhat.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
