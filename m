Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4122B7013
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 02:24:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7jD1i1AfwQUKzKsLIlqrU6RsGtDCRtVayqEZJEwXyKQ=; b=Oj1hghLhLmhSR1
	qOTvR3gKlxlIa+mYUZCJ4z9tI2zZsZRD2zRYWk+1a5/94ONuTWf2Utm7VrtiOmbVmG7+nY/Wew5aB
	Vl/FJdqTw6fvxK5T2zBcx87GueWFriUeUS/IcAlvqKfDcaGa7yw79z7HHpQFTY3TUpR6dMpkOxhsw
	xmSlgWabtQ7FifJk8z+b8gM377+OExVX0+7ipjIU2uArxiIt3Q5ueIOr10S2Bef5hMp9VLL7cUES8
	rW84v8WJlBQZxdy/cYqRhiaA1ja7jO+n60wX+YUf3a3dK66vzrx6nnFxdOwGP4WFwDex7jhGHjOMN
	W3kvHf420Ky0aYv5sHLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAkF5-00028b-Mh; Thu, 19 Sep 2019 00:24:15 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAkET-0001ts-E5
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 00:23:38 +0000
Received: by ozlabs.org (Postfix, from userid 1003)
 id 46YcyX5cBKz9sNf; Thu, 19 Sep 2019 10:23:32 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ozlabs.org; s=201707;
 t=1568852612; bh=cu6MqzQ+Jjg6jBgAMHqPfsdtuEEEpXwelfg4ezvXdsY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Nt4NYXLQPNaOq5EaXwA6J6CUQqtE4sYHQnvkHZSOhCjqqWJ01CdAB4tfDaD7elmpm
 n8+n+jy0vrYBX7bhjUejT61fggDfeR0cgCIUnTuqNkpIC0IXNlLj5BQyxdJITIPcBR
 mnSFYsZrVTQqPYzswqowK1En17cvpVKAST5slijgNdV7bpZykh7hDKsvP4WJVNLb/9
 Ol1XIqjO/OL2LCmIx/vGzkgBlQMKHpTE8RacF1q2tw33WNlisVf3Zmdf+cisE74bOX
 ghUTBd1CuYuzqzcB8Zaw4KJe2JcyTf9IC7kOu6x2wrhVjXAyrW69MyKAvq+7wse73h
 GRj1zPawfFkIQ==
Date: Thu, 19 Sep 2019 10:22:42 +1000
From: Paul Mackerras <paulus@ozlabs.org>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH 10/13] KVM: Provide common implementation for generic
 dirty log functions
Message-ID: <20190919002242.GA19503@blackberry>
References: <20190911185038.24341-1-sean.j.christopherson@intel.com>
 <20190911185038.24341-11-sean.j.christopherson@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911185038.24341-11-sean.j.christopherson@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_172337_729296_2BB6936A 
X-CRM114-Status: GOOD (  10.17  )
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

On Wed, Sep 11, 2019 at 11:50:35AM -0700, Sean Christopherson wrote:
> Move the implementations of KVM_GET_DIRTY_LOG and KVM_CLEAR_DIRTY_LOG
> for CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT into common KVM code.
> The arch specific implemenations are extremely similar, differing
> only in whether the dirty log needs to be sync'd from hardware (x86)
> and how the TLBs are flushed.  Add new arch hooks to handle sync
> and TLB flush; the sync will also be used for non-generic dirty log
> support in a future patch (s390).
> 
> The ulterior motive for providing a common implementation is to
> eliminate the dependency between arch and common code with respect to
> the memslot referenced by the dirty log, i.e. to make it obvious in the
> code that the validity of the memslot is guaranteed, as a future patch
> will rework memslot handling such that id_to_memslot() can return NULL.

I notice you add empty definitions of kvm_arch_sync_dirty_log() for
PPC, both Book E and Book 3S.  Given that PPC doesn't select
CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT, why is this necessary?

Paul.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
