Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2014128048
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 17:03:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TpQ39AnC6Ve8fJa/ZCNNZ9sqzESowHxTk71w8tVgH78=; b=uJY4VDQQdAHXHO
	lhlgbxz4iXgSP/pIBcbpZF+AukspPyDLqUd7DRjona0Wxx7d4OqNB1PKWG50Vz7i+vF7y6tgipZzr
	PcyZnmyyz9M83WcT1Y+eiG3WagsAgVNfkCAgbrbNsReuGvHMFAxCGAc5PbJbeGBa/c/IglFhfWpOB
	FevJy9977ONBTXRryzCxgiJrhuplZARJwoe68K0woGqzOx7OEzt5DHyhZRZMc5A+FFqa7y4qGLmbt
	NZ0hYQjFlOQwgZkhoYZTfiqO0v3xPwploZzCeKRGjC57ZyL4wGVuae00Peh65OYgiB+46z3WWsz1i
	wWYAAU5VxijJdbwu/m9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiKkA-0003kd-Uh; Fri, 20 Dec 2019 16:03:10 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiKk1-0003jy-TV
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 16:03:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576857779;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Limel4VO1ZO8KIpqt7RZ5ENsq2TZL0E/VYpHsSOkzgY=;
 b=eF++EM3PKBb+GS+33uHkDobPJsw/nO5fOLSXQJbwJOd+sARaj0CYHbvN5AoXDWbDDsAtWX
 /JvkrcM8KtHXDX8RwZAxtNKhlmWdr7gbOainPe1nLuelkoRZKyAycuoc6FYwXdVVMYDAfm
 klRc9ja6g8Ul+IRTes21pB5sWTPs2ws=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-269-b1Oxt-77Nh-zF7_6vmGaow-1; Fri, 20 Dec 2019 11:02:57 -0500
X-MC-Unique: b1Oxt-77Nh-zF7_6vmGaow-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 92EE2107ACCC;
 Fri, 20 Dec 2019 16:02:54 +0000 (UTC)
Received: from gondolin (dhcp-192-245.str.redhat.com [10.33.192.245])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AC82560BF3;
 Fri, 20 Dec 2019 16:02:48 +0000 (UTC)
Date: Fri, 20 Dec 2019 17:02:46 +0100
From: Cornelia Huck <cohuck@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v2 35/45] KVM: s390: Manually invoke vcpu setup during
 kvm_arch_vcpu_create()
Message-ID: <20191220170246.76ba681a.cohuck@redhat.com>
In-Reply-To: <20191220155607.GB20453@linux.intel.com>
References: <20191218215530.2280-1-sean.j.christopherson@intel.com>
 <20191218215530.2280-36-sean.j.christopherson@intel.com>
 <20191220110445.3a42041a.cohuck@redhat.com>
 <20191220155607.GB20453@linux.intel.com>
Organization: Red Hat GmbH
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_080302_029409_E390ECB2 
X-CRM114-Status: GOOD (  18.53  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Fri, 20 Dec 2019 07:56:07 -0800
Sean Christopherson <sean.j.christopherson@intel.com> wrote:

> On Fri, Dec 20, 2019 at 11:04:45AM +0100, Cornelia Huck wrote:
> > On Wed, 18 Dec 2019 13:55:20 -0800
> > Sean Christopherson <sean.j.christopherson@intel.com> wrote:
> >   
> > > Rename kvm_arch_vcpu_setup() to kvm_s390_vcpu_setup() and manually call
> > > the new function during kvm_arch_vcpu_create().  Define an empty
> > > kvm_arch_vcpu_setup() as it's still required for compilation.  This
> > > is effectively a nop as kvm_arch_vcpu_create() and kvm_arch_vcpu_setup()
> > > are called back-to-back by common KVM code.  Obsoleting
> > > kvm_arch_vcpu_setup() paves the way for its removal.
> > > 
> > > Note, gmap_remove() is now called if setup fails, as s390 was previously
> > > freeing it via kvm_arch_vcpu_destroy(), which is called by common KVM
> > > code if kvm_arch_vcpu_setup() fails.  
> > 
> > Yes, this looks like the only thing that needs to be undone
> > (sca_add_vcpu() is done later in the process.)
> > 
> > Maybe mention that gmap_remove() is for ucontrol only? I was confused
> > for a moment :)  
> 
> Will do.
> 
> Would it also make sense to open code __kvm_ucontrol_vcpu_init() in a
> separate patch immediately preceding this change?  That'd make it a little
> more obvious why gmap_remove() is called, and it would eliminate the
> "uninit" verbiage in the label, e.g.:

I'm a bit undecided here; especially as I'm not sure if there are any
future plans with ucontrol. I'll leave that for Christian and Janosch
to decide.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
