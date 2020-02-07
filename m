Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 062E3155BF3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 17:38:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9EstY5yu6QthBZ1Fbs7BDgoirLHcTlQAgahJ61ngrMM=; b=ffWO9QltV8nQNd
	MsGTrn/ntA76koS8ETiU/l/mgcQJURmbZ4sLyxIb0JNhA7QYOnKAbmudPSJmms0cLEk24vdMaNw/e
	JpWBOUU+/3BfuejfKP87pSuYdoA+Ja+6jlhdY6nXLlfmhZKZ84eF20/Gxul1wASzcC69Y1JRSb4em
	/iEsPCotasByF6zTtag9sB24JSvmqTMcPOYv/EoqF6w/Eut0L2ZzU/4WLL1YLc9sr3apYqfpFudc7
	aP9veigfNN49qbZHgLXIhZ0wEPex6Rk/3xq0DmqKIfrQrP4nEl5ys858SPb9Nevm/BYQDYcoK4rQu
	ZHfNRV10Wt4wNg0v7X/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j06dh-00029V-CM; Fri, 07 Feb 2020 16:37:57 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j06dZ-00028V-An
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 16:37:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581093467;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Kvzyalww/whqgM6x9oBUKbglc/i5Jao1bW6lbVLXvlE=;
 b=JLOfAY3m9LiXzAmT9SNYOcz9sDwAxp6YWG7jtRMxBDUIFa26kvgg+wulZn7mmVzj7rbm/k
 l31RYy13zXLP3WITuqKgK7uHTYjeEk2EFlUZUe9iApr9OP3I2f4MBgXXbXuWZn8jjpSUB5
 xWLVytMuxjRrvC+HnJtV2Zi/frl/97c=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-230-sTn1PUkZN8WGX58_4cpbUA-1; Fri, 07 Feb 2020 11:37:45 -0500
Received: by mail-qt1-f200.google.com with SMTP id d16so2004485qtr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 08:37:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=cgH9xO+cWS+9pXG73bIgnka4EVIZlSpUaEw9L/nO7Zs=;
 b=B4Sb1S6Y3EWVvdLlWlepvySIbnMhZFPr0VpSc4bfyCBW9yG5E3mJwO7TGdec3gq/C5
 kAxmedpoJNg4bGzdqRJnpf8RJgBmhD4faCnyvkQfRFMMu9LNw2Kb8XwPfW+cQ6GThzOg
 hEDShRqayOuM9gRqm4ZIVScbmeArQXym68NMkBd3i05s/ZjkTPzDA0pDyBruRypL6tEt
 wtnHULRabr20bnJqVxlufhd+RiXCMoV3GLNH+lfgCm6x6gNzQyvR/Oivz2ILfFF+BZgC
 tQk/CLj0r56RJZdghwowGSGAKZSJ1H43p0UVu/BBvzrFfw7SkMJQ2/Dpu4QwIE+k/af+
 I78A==
X-Gm-Message-State: APjAAAVN2OULnolEiN7xffoByLVGYRy4w9JKkJaORc1nmsv7AJ9wB/va
 uwc+wtEsCSgC5FFB7xXugM6rj3ONJqLusE3Prr9rbtVNhAUlp84/l2a02eygsBoJBYror4al4AC
 YH2HTXaieF6vfE+aQ2+7OeP7EUwg2Ez8LP14=
X-Received: by 2002:a05:6214:11ac:: with SMTP id
 u12mr7667085qvv.85.1581093464519; 
 Fri, 07 Feb 2020 08:37:44 -0800 (PST)
X-Google-Smtp-Source: APXvYqyADx3loVUdRKb44G4UQsDsAdknpBOKbHmW0fDqmSZoyg4OJXL3ZNHkOudrrNbkAu5Phy9RLA==
X-Received: by 2002:a05:6214:11ac:: with SMTP id
 u12mr7667045qvv.85.1581093464263; 
 Fri, 07 Feb 2020 08:37:44 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id 124sm1548666qko.11.2020.02.07.08.37.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 08:37:43 -0800 (PST)
Date: Fri, 7 Feb 2020 11:37:40 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 18/19] KVM: Dynamically size memslot array based on
 number of used slots
Message-ID: <20200207163740.GA720553@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-19-sean.j.christopherson@intel.com>
 <20200206221208.GI700495@xz-x1>
 <20200207153829.GA2401@linux.intel.com>
 <20200207160546.GA707371@xz-x1>
 <20200207161553.GE2401@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20200207161553.GE2401@linux.intel.com>
X-MC-Unique: sTn1PUkZN8WGX58_4cpbUA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_083749_447555_722F871F 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
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

On Fri, Feb 07, 2020 at 08:15:53AM -0800, Sean Christopherson wrote:
> On Fri, Feb 07, 2020 at 11:05:46AM -0500, Peter Xu wrote:
> > On Fri, Feb 07, 2020 at 07:38:29AM -0800, Sean Christopherson wrote:
> > > On Thu, Feb 06, 2020 at 05:12:08PM -0500, Peter Xu wrote:
> > > > This patch is tested so I believe this works, however normally I need
> > > > to do similar thing with [0] otherwise gcc might complaint.  Is there
> > > > any trick behind to make this work?  Or is that because of different
> > > > gcc versions?
> > > 
> > > array[] and array[0] have the same net affect, but array[] is given special
> > > treatment by gcc to provide extra sanity checks, e.g. requires the field to
> > > be the end of the struct.  Last I checked, gcc also doesn't allow array[]
> > > in unions.  There are probably other restrictions.
> > > 
> > > But, it's precisely because of those restrictions that using array[] is
> > > preferred, as it provides extra protections, e.g. if someone moved memslots
> > > to the top of the struct it would fail to compile.
> > 
> > However...
> > 
> > xz-x1:tmp $ cat a.c
> > struct a {
> >     int s[];
> > };
> > 
> > int main(void) { }
> > xz-x1:tmp $ make a
> > cc     a.c   -o a
> > a.c:2:9: error: flexible array member in a struct with no named members
>                                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> 
> gcc is telling you quite explicitly why it's angry.  Copy+paste from the
> internet[*]:
> 
>   Flexible Array Member(FAM) is a feature introduced in the C99 standard of the
>   C programming language.
> 
>   For the structures in C programming language from C99 standard onwards, we
>   can declare an array without a dimension and whose size is flexible in nature.
> 
>   Such an array inside the structure should preferably be declared as the last 
>   member of structure and its size is variable(can be changed be at runtime).
>   
>   The structure must contain at least one more named member in addition to the
>   flexible array member. 
> 
> [*] https://www.geeksforgeeks.org/flexible-array-members-structure-c/

Sorry again for not being able to identify the meaning of that
sentence myself.  My English is probably even worse than I thought...

So I think my r-b keeps.

Thanks,

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
