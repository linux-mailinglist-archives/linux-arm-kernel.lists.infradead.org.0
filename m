Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC68155B96
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 17:16:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tGiKpPrb0QfuHDve9wT/YECFPjhKxvUDORVLoSRUpWs=; b=Uc0IMpYrB27tB+
	aFD+oB1N1a5033YY4ICCLFlUNPe5/FIEmCWHHh9M4mQKJ8AxtQkq9yb2sa25LY6P1DOZYinq7qGEE
	x5AsGgfFydi77Hj0JgDQQhGMBa6MkAfeYA2surkYOt+RUrlH6F4z6mV9A8px/45hro7jzGAOZy5T8
	S1rfXGAfwMwcUlbB/yV8kc+T1xP3eCvOPvUeTSTVtzIG02IKNt811fCddFuxPqXMvub1dAUJYdk4k
	n1fgLQjPIr4ggZaYllbtXvPan3CXezfGJtgWNWcZxXUSpQMoT2KeSO1ebt347z5fADmbAphTuRbMw
	YtLXOgIHCdzFo9Q58AVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j06If-0003Ff-VM; Fri, 07 Feb 2020 16:16:14 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j06IO-00036R-3o
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 16:15:57 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 08:15:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,414,1574150400"; d="scan'208";a="226515846"
Received: from sjchrist-coffee.jf.intel.com (HELO linux.intel.com)
 ([10.54.74.202])
 by fmsmga008.fm.intel.com with ESMTP; 07 Feb 2020 08:15:53 -0800
Date: Fri, 7 Feb 2020 08:15:53 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Peter Xu <peterx@redhat.com>
Subject: Re: [PATCH v5 18/19] KVM: Dynamically size memslot array based on
 number of used slots
Message-ID: <20200207161553.GE2401@linux.intel.com>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-19-sean.j.christopherson@intel.com>
 <20200206221208.GI700495@xz-x1>
 <20200207153829.GA2401@linux.intel.com>
 <20200207160546.GA707371@xz-x1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200207160546.GA707371@xz-x1>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_081556_188779_466C76CF 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Philippe =?iso-8859-1?Q?Mathieu-Daud=E9?= <f4bug@amsat.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 07, 2020 at 11:05:46AM -0500, Peter Xu wrote:
> On Fri, Feb 07, 2020 at 07:38:29AM -0800, Sean Christopherson wrote:
> > On Thu, Feb 06, 2020 at 05:12:08PM -0500, Peter Xu wrote:
> > > This patch is tested so I believe this works, however normally I need
> > > to do similar thing with [0] otherwise gcc might complaint.  Is there
> > > any trick behind to make this work?  Or is that because of different
> > > gcc versions?
> > 
> > array[] and array[0] have the same net affect, but array[] is given special
> > treatment by gcc to provide extra sanity checks, e.g. requires the field to
> > be the end of the struct.  Last I checked, gcc also doesn't allow array[]
> > in unions.  There are probably other restrictions.
> > 
> > But, it's precisely because of those restrictions that using array[] is
> > preferred, as it provides extra protections, e.g. if someone moved memslots
> > to the top of the struct it would fail to compile.
> 
> However...
> 
> xz-x1:tmp $ cat a.c
> struct a {
>     int s[];
> };
> 
> int main(void) { }
> xz-x1:tmp $ make a
> cc     a.c   -o a
> a.c:2:9: error: flexible array member in a struct with no named members
                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

gcc is telling you quite explicitly why it's angry.  Copy+paste from the
internet[*]:

  Flexible Array Member(FAM) is a feature introduced in the C99 standard of the
  C programming language.

  For the structures in C programming language from C99 standard onwards, we
  can declare an array without a dimension and whose size is flexible in nature.

  Such an array inside the structure should preferably be declared as the last 
  member of structure and its size is variable(can be changed be at runtime).
  
  The structure must contain at least one more named member in addition to the
  flexible array member. 

[*] https://www.geeksforgeeks.org/flexible-array-members-structure-c/

>     2 |     int s[];
>       |         ^
> make: *** [<builtin>: a] Error 1
> 
> My gcc version is 9.2.1 20190827 (Red Hat 9.2.1-1) (GCC).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
