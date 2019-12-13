Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7343711EB75
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 21:02:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ilrk0iJzrWD6uTl62tRmHK00b/+HQS/ddYM1GbmDCkE=; b=slrsJqQMy5Q6IO
	6vdfVSmhvkjI9xVql4cm5LmUh7HzVtq1jb2zu5lSEi1DFyhK4hjy+4+eGdGA4ccqGVZ4Kk1TxHruD
	H4LzMCNTgRYYOTIxqwDCmxcJDq1leAUEB1o+fK/xskMJ7TQFDMZKp1IQH4SzgshD4lkvApNuLqkVv
	xlXJhcg4zbENO/sfOGe8/0rfrh85e6CqCJVS8VCXfITp+9yGyoe7nngDPpsZX4TQDIil9YXNMnspL
	9jpy9cCA5Xv5ZG0HGkbt1VzFmZ7uSzYhm/N5fYJO8Qy1GF8zgAPAdM6cVw9ou35ZB++lLR+I/SNPJ
	o2QeS1GabFDDi4HNSgEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifr8v-0006oF-Ac; Fri, 13 Dec 2019 20:02:29 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifr8j-0006nl-Sa
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 20:02:19 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 12:01:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,311,1571727600"; d="scan'208";a="208563026"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.202])
 by orsmga008.jf.intel.com with ESMTP; 13 Dec 2019 12:01:51 -0800
Date: Fri, 13 Dec 2019 12:01:51 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: James Hogan <jhogan@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Radim =?utf-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v3 00/15] KVM: Dynamically size memslot arrays
Message-ID: <20191213200151.GF31552@linux.intel.com>
References: <20191024230744.14543-1-sean.j.christopherson@intel.com>
 <20191203221433.GK19877@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203221433.GK19877@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_120217_935847_2AEB4ECB 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 David Hildenbrand <david@redhat.com>, Joerg Roedel <joro@8bytes.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 02:14:33PM -0800, Sean Christopherson wrote:
> On Thu, Oct 24, 2019 at 04:07:29PM -0700, Sean Christopherson wrote:
> > The end goal of this series is to dynamically size the memslot array so
> > that KVM allocates memory based on the number of memslots in use, as
> > opposed to unconditionally allocating memory for the maximum number of
> > memslots.  On x86, each memslot consumes 88 bytes, and so with 2 address
> > spaces of 512 memslots, each VM consumes ~90k bytes for the memslots.
> > E.g. given a VM that uses a total of 30 memslots, dynamic sizing reduces
> > the memory footprint from 90k to ~2.6k bytes.
> > 
> > The changes required to support dynamic sizing are relatively small,
> > e.g. are essentially contained in patches 14/15 and 15/15.  Patches 1-13
> > clean up the memslot code, which has gotten quite crusty, especially
> > __kvm_set_memory_region().  The clean up is likely not strictly necessary
> > to switch to dynamic sizing, but I didn't have a remotely reasonable
> > level of confidence in the correctness of the dynamic sizing without first
> > doing the clean up.
> > 
> > Christoffer, I added your Tested-by to the patches that I was confident
> > would be fully tested based on the desription of what you tested.  Let me
> > know if you disagree with any of 'em.
> > 
> > v3:
> >   - Fix build errors on PPC and MIPS due to missed params during
> >     refactoring [kbuild test robot].
> >   - Rename the helpers for update_memslots() and add comments describing
> >     the new algorithm and how it interacts with searching [Paolo].
> >   - Remove the unnecessary and obnoxious warning regarding memslots being
> >     a flexible array [Paolo].
> >   - Fix typos in the changelog of patch 09/15 [Christoffer].
> >   - Collect tags [Christoffer].
> > 
> > v2:
> >   - Split "Drop kvm_arch_create_memslot()" into three patches to move
> >     minor functional changes to standalone patches [Janosch].
> >   - Rebase to latest kvm/queue (f0574a1cea5b, "KVM: x86: fix ...")
> >   - Collect an Acked-by and a Reviewed-by
> 
> Paolo, do you want me to rebase this to the latest kvm/queue?

Ping.

Applies cleanly on the current kvm/queue and nothing caught fire in
testing (though I only re-tested the series as a whole).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
