Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A09C61AAD46
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 18:23:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fYatFKJD8NosG6QSRpL+r4LvTEkmQnUlQxMJTa+dYEM=; b=KDav+VZbAt++aT
	rVwAnTOJoY80JkiXCF+66Zla69vmYbInhVQ2LS/QmPP/PM4P6WlCt/koHbsMxZLOE1mjJ95aReLuT
	X1uTxetDLIB16kfwRR6KB11Az8ehxWguv54gzF+CkkL99rw+fyYZJW5ynI9QGbW47YLwx4i1JST3z
	10Gum8t8S9afhvQojSfnipO+fccjdkiFMG6vpZFR1p/UqngVD/Nej1GmfeQP106yL3I5r/svv1HNR
	LZZ6Lsm9k267bqbS6LmdSSzpUHBArlr31jAjdkr+fXWFjhH/lohvelu+rHc8sSSpL/h8Ox7uqmLgJ
	/vh3LOOnf1mpqoL2Nsnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOkp0-0000kW-HR; Wed, 15 Apr 2020 16:23:30 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOkos-0000iU-9k
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 16:23:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586967799;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Sd5eA/N/NI5n7N98BdtAvkb6ngdNDSTXR+h4Z3gbW68=;
 b=WLmV60JVOfZrqBvXavtjho3u99j3udHo0eYFTD0Zr4Hen5hMyQEnTFVS2E4Nf3t3BtCSV9
 6yW1M/RZGGsqpOt7FGfEgOSZv0FcgH+3kRyIun0aAMiSWbg33ezSw37piqAvNBDOROtiph
 K8HpSE3Fkp4eUQ4h0RmIoJE/zPKRFX8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-45-wrQvUDtbM8mVEqqfRLVCsg-1; Wed, 15 Apr 2020 12:21:15 -0400
X-MC-Unique: wrQvUDtbM8mVEqqfRLVCsg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 90C09107B267;
 Wed, 15 Apr 2020 16:21:12 +0000 (UTC)
Received: from gondolin (ovpn-113-55.ams2.redhat.com [10.36.113.55])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 017ACA63D6;
 Wed, 15 Apr 2020 16:21:02 +0000 (UTC)
Date: Wed, 15 Apr 2020 18:20:37 +0200
From: Cornelia Huck <cohuck@redhat.com>
To: Emanuele Giuseppe Esposito <eesposit@redhat.com>
Subject: Re: [PATCH v2] kvm_host: unify VM_STAT and VCPU_STAT definitions in
 a single place
Message-ID: <20200415182037.521a92b2.cohuck@redhat.com>
In-Reply-To: <20200414155625.20559-1-eesposit@redhat.com>
References: <20200414155625.20559-1-eesposit@redhat.com>
Organization: Red Hat GmbH
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_092322_540085_FC3F2F71 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, kvmarm@lists.cs.columbia.edu,
 linux-s390@vger.kernel.org, Janosch Frank <frankja@linux.ibm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, linux-mips@vger.kernel.org,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Philippe =?UTF-8?B?TWF0aGlldS1EYXVkw6k=?= <f4bug@amsat.org>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 Apr 2020 17:56:25 +0200
Emanuele Giuseppe Esposito <eesposit@redhat.com> wrote:

> The macros VM_STAT and VCPU_STAT are redundantly implemented in multiple
> files, each used by a different architecure to initialize the debugfs
> entries for statistics. Since they all have the same purpose, they can be
> unified in a single common definition in include/linux/kvm_host.h
> 
> Signed-off-by: Emanuele Giuseppe Esposito <eesposit@redhat.com>
> ---
>  arch/arm64/kvm/guest.c    |  23 ++---
>  arch/mips/kvm/mips.c      |  61 ++++++------
>  arch/powerpc/kvm/book3s.c |  61 ++++++------
>  arch/powerpc/kvm/booke.c  |  41 ++++----
>  arch/s390/kvm/kvm-s390.c  | 203 +++++++++++++++++++-------------------
>  arch/x86/kvm/x86.c        |  80 +++++++--------
>  include/linux/kvm_host.h  |   5 +
>  7 files changed, 231 insertions(+), 243 deletions(-)

Adds a bit of churn, but the end result does look nicer. Looks sane,
but did not review in detail.

Acked-by: Cornelia Huck <cohuck@redhat.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
