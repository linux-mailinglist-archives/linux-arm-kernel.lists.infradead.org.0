Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7830153AAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 23:08:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CkfxwMdqy9X6JuGwPWQoD1V8u7QVQ93HwRM3zvOFgPE=; b=ntz4ufTLgdr6np
	h9kuFQtjEtxutRPEXmo1vZpSCqkAZKXHfAxnUdOTF+25wUgAJGtIqGrhkJW2KDVg9z2dPr8eYrvKj
	Kf1sy0jlIY9NSdDfh8M1y2zvsGnWMfcRf5E6PjTenrj48qOW7Jj6M99ToGut7kNAFGSrKrZcX8Fx+
	HfxHLhycqRFSGvXSLIUr3431yQ3nYnjL+MNW23+bQEbwNzTepv3M1Kqg6l3+UwcE5la01LX3A9kBm
	nuzYZAui4a+ZC60t6vnxsoi31gyPnxws8cHLu4XU7S0leng84Ede0IVD3DxTXKwBDmHXb+hSzSHFJ
	QXqRAO2oAOmmDUdMKxzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izSqd-0008Ta-90; Wed, 05 Feb 2020 22:08:39 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izSqV-0008SL-OJ
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 22:08:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580940509;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qcqAII0Mla+8J9XCC2F7t68zZyPiZF4YHjS+Fi7LYLQ=;
 b=QlaOB0m99x6nb569DwpCk45XjQzNRfENqyQG8AGqVU6vJvFJqKZraqdcwX0om/+yLKy0GA
 6hzJ+Loyc8kQES3tyZYoqcWGnAKKQLc8AK4qB1BTeIWfjaWklvxpTwGw0YDbyxZfa6NS4q
 rLzMTNjRJEiJ5gh3s6+fEX6EsTJhRHc=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-14-evxyBP1iNACS5RF3yzopMw-1; Wed, 05 Feb 2020 17:08:27 -0500
Received: by mail-qv1-f69.google.com with SMTP id g6so2444827qvp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 14:08:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6bIsTUAiuk9WkuPnamAI4/KWATTYkjxm0pqVjMTg08w=;
 b=blnMkJJ3EiJfNofoXMy2wWrQtcXTEHbhDHeUlaR7HjATxHSRsIH7D/Zflh4AKXbSsa
 ripZ2arbEmW2ZVBORvv0K7an0rVbSEZwNip37unK7aQqFhBi0VtR8WqBcya/7ZxHkGP8
 Y0Xd+6zPVq8idhwU0HQFSXknCi4FidFha9JI6OV5sfDt8UK+U5Zz/FVBAxeagPgvMAn6
 rMPnv2r4NBEfErzs/Yy2eAYyDz7EbadPtqZPbmgpyvwwDbo7sNe7pXTbFoJX/Z1KqmQ7
 MO4NJtpgTDDavU2sMJbFAYhTdtPEzn84aRMKS4BYk1W+k3VPkiJ0+vJGLRN3fyKCF55w
 HMvg==
X-Gm-Message-State: APjAAAXzAaKe47+iH9BPvwbUIXOgSOl8saz44x3hpa6dbDQtjaG8O/RA
 zen+is1uU/306RO09XpZoN+I6tPTXQ+lIZ6pAJ80DxCnsh6k7qfCVuK5ZCxNflBgk6e09Fq1+30
 r54YHguCN2kyDtkFr5R1ZNOPGIhl1n9oNjLw=
X-Received: by 2002:ac8:4e94:: with SMTP id 20mr35228162qtp.335.1580940506681; 
 Wed, 05 Feb 2020 14:08:26 -0800 (PST)
X-Google-Smtp-Source: APXvYqxhvNH1iy5q/tis+s7hwuGT0ebc3dkr1uSM1KA4FQeWbspaaAJT384pUzbSiV9AUE83qayDAQ==
X-Received: by 2002:ac8:4e94:: with SMTP id 20mr35228131qtp.335.1580940506464; 
 Wed, 05 Feb 2020 14:08:26 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id t16sm458993qkg.96.2020.02.05.14.08.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2020 14:08:25 -0800 (PST)
Date: Wed, 5 Feb 2020 17:08:22 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 02/19] KVM: Reinstall old memslots if arch preparation
 fails
Message-ID: <20200205220822.GE387680@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-3-sean.j.christopherson@intel.com>
MIME-Version: 1.0
In-Reply-To: <20200121223157.15263-3-sean.j.christopherson@intel.com>
X-MC-Unique: evxyBP1iNACS5RF3yzopMw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_140831_881090_2874D549 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Tue, Jan 21, 2020 at 02:31:40PM -0800, Sean Christopherson wrote:
> Reinstall the old memslots if preparing the new memory region fails
> after invalidating a to-be-{re}moved memslot.
> 
> Remove the superfluous 'old_memslots' variable so that it's somewhat
> clear that the error handling path needs to free the unused memslots,
> not simply the 'old' memslots.
> 
> Fixes: bc6678a33d9b9 ("KVM: introduce kvm->srcu and convert kvm_set_memory_region to SRCU update")
> Reviewed-by: Christoffer Dall <christoffer.dall@arm.com>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>

Reviewed-by: Peter Xu <peterx@redhat.com>

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
