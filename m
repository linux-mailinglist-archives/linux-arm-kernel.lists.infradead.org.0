Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C71C215612B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 23:25:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bMv0vMtulvSq7mvfikhUadZ4SdeQAG4SDvo4XSqoFVg=; b=INA9IL/asLQbHk
	plS4Ybo5Ty5MpbHvr2kgu/zf/GBNHU6dn71ku8nbS1oKlJchnxy62JJs3Kdox/okDauZCuH1CZdua
	YEzKtUsoXn+IZwqvFewk64yk0ZEPXRxhxCb0yU1wLZeeYqTRDQ02AWhYPWrorY/dqSnjv+7pcoxqW
	Ms+uTzyByXS2oFe6WXZ3UFZ5wwhMT98+7baEp27T4i3U55zUc/0hdA0Dh0EWNFJBjk2gpH91ABEf1
	OB6FmXfe9qmSa+hjvy0ubDg31hHufTUlVk+0vJnwK+HqGpsayqDt+kMB96/g1uDt7e0VxtyHVJ+z7
	ncbUKC/V3u/MknCdMp9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0C3Y-0007mh-U7; Fri, 07 Feb 2020 22:25:00 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0C3P-0007lE-BS
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 22:24:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581114286;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8RjmlokPjnkH8oZxzrYec3fZUGAfizyuGXB6oCxb2rQ=;
 b=gPdx5D+A7vaZnaNRnokB3c45hd+SvcJpL8eSzYNHNehLQCydUzXJnwf9qKFVCmF55MuGXe
 waZpB93O4xCFUEMoh9RXVSk9kabTI9fKKa/+0VmN7p1zGJ78leGoZmVQF1hzGr4h8iX4Ro
 FkG9A8sJ00sS1uEOb0IvATQpVDNu518=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-259--onHan49OsOAnW6MknfteA-1; Fri, 07 Feb 2020 17:24:42 -0500
Received: by mail-qv1-f70.google.com with SMTP id dw11so464093qvb.16
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 14:24:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JRnjR1s6c5pJE2ossLQbJM2NZYkPQ/exCWBRJ0Gziy8=;
 b=OGfC6XzhIN/oX4JsBYmCyekIKUMDrOrDJt6CApwYa9OobMdTLJL6hBkblo9JRILL6q
 R3+rAMF8lfAQf1ibkaHAf4Y2sT5qYs+0ATuHas30FZmgbJUozmid4ty2IRATF+/bKQrr
 VFbLQtMa1gvaWo5pUySTinE9NzEyQTgR5qw3jitRYzcSJoXYFreM4Ko4yCtuPH61AqsG
 DFjfp5p2vZg0T6vagIeuadxt+xOOz/IcYVrYVDsphmKAtJDsPTwaj0ARVIzAQAWxadrl
 +95bfTCxcRS8Avn58PGn9XO0+PdKdaue1OOiIU3XPjMKD+Ehvwx0s8CPq46ihLPSNvyO
 d/WA==
X-Gm-Message-State: APjAAAX7jGFOty3f6TXQ1Zdw+ZwfsjfCXg/grglF5JnOkE9dAaj335i2
 AytA9Hl62BZe7dQg8lgBPR7knaI6uvDW4JUxlGDfVV7SPicoMWtL5XpnSjBsQSFVsZCIO522d1p
 dNAU8Sp9+i8m7gjRCr6DIXvTvPUTMNC1r8mg=
X-Received: by 2002:a37:c53:: with SMTP id 80mr1117258qkm.285.1581114282357;
 Fri, 07 Feb 2020 14:24:42 -0800 (PST)
X-Google-Smtp-Source: APXvYqxdmbvsmW8pfTDFhkNFpJOBOyIyACeKZQZlqIgbOpE5taqn1c19m2GAF/qQjzf2ieRiXzn8Xg==
X-Received: by 2002:a37:c53:: with SMTP id 80mr1117228qkm.285.1581114282106;
 Fri, 07 Feb 2020 14:24:42 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id j1sm1933090qkl.86.2020.02.07.14.24.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 14:24:41 -0800 (PST)
Date: Fri, 7 Feb 2020 17:24:38 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 17/19] KVM: Terminate memslot walks via used_slots
Message-ID: <20200207222438.GH720553@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-18-sean.j.christopherson@intel.com>
 <20200206210944.GD700495@xz-x1>
 <20200207183325.GI2401@linux.intel.com>
 <20200207203909.GE720553@xz-x1>
 <20200207211016.GN2401@linux.intel.com>
 <20200207214623.GF720553@xz-x1>
 <20200207220325.GO2401@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20200207220325.GO2401@linux.intel.com>
X-MC-Unique: -onHan49OsOAnW6MknfteA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_142451_470287_1888FB0C 
X-CRM114-Status: GOOD (  20.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
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

On Fri, Feb 07, 2020 at 02:03:25PM -0800, Sean Christopherson wrote:
> On Fri, Feb 07, 2020 at 04:46:23PM -0500, Peter Xu wrote:
> > On Fri, Feb 07, 2020 at 01:10:16PM -0800, Sean Christopherson wrote:
> > > On Fri, Feb 07, 2020 at 03:39:09PM -0500, Peter Xu wrote:
> > > > On Fri, Feb 07, 2020 at 10:33:25AM -0800, Sean Christopherson wrote:
> > > > > On Thu, Feb 06, 2020 at 04:09:44PM -0500, Peter Xu wrote:
> > > > > > On Tue, Jan 21, 2020 at 02:31:55PM -0800, Sean Christopherson wrote:
> > > > > > > @@ -9652,13 +9652,13 @@ int __x86_set_memory_region(struct kvm *kvm, int id, gpa_t gpa, u32 size)
> > > > > > >  		if (IS_ERR((void *)hva))
> > > > > > >  			return PTR_ERR((void *)hva);
> > > > > > >  	} else {
> > > > > > > -		if (!slot->npages)
> > > > > > > +		if (!slot || !slot->npages)
> > > > > > >  			return 0;
> > > > > > >  
> > > > > > > -		hva = 0;
> > > > > > > +		hva = slot->userspace_addr;
> > > > > > 
> > > > > > Is this intended?
> > > > > 
> > > > > Yes.  It's possible to allow VA=0 for userspace mappings.  It's extremely
> > > > > uncommon, but possible.  Therefore "hva == 0" shouldn't be used to
> > > > > indicate an invalid slot.
> > > > 
> > > > Note that this is the deletion path in __x86_set_memory_region() not
> > > > allocation.  IIUC userspace_addr won't even be used in follow up code
> > > > path so it shouldn't really matter.  Or am I misunderstood somewhere?
> > > 
> > > No, but that's precisely why I don't want to zero out @hva, as doing so
> > > implies that '0' indicates an invalid hva, which is wrong.
> > > 
> > > What if I change this to 
> > > 
> > > 			hva = 0xdeadull << 48;
> > > 
> > > and add a blurb in the changelog about stuff hva with a non-canonical value
> > > to indicate it's being destroyed.
> > 
> > IMO it's fairly common to have the case where "when A is XXX then
> > parameters B is invalid" happens in C.
> 
> I'm not arguing that's not the case.  My point is that there's nothing
> special about '0', so why use it?  E.g. "hva = 1" would also be ok from a
> functional perspective, but more obviously "wrong".

I think the answer is as simple as the original author thought 0 was
better than an arbitrary number on the stack, which I agree. :-)

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
