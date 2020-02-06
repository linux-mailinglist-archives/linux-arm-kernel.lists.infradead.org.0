Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CA2154DE2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 22:24:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VTupAJ+s1456J2tY/i2HyRoQpjW0+9as4QsovDOY1bc=; b=Qr6xyGP7wbfRay
	6GWPVntdbekJMaWjeEZKxyo5Bi8pysxPUNNe5NTo2d5K3Rrib4EVROR7vk5bD7RqRuZYUkC7eBlIB
	J5Fk9wgIhv390pUuGL6a63KfJeqs8vN4Xy0US7grpP5WZF7+y+KQH2vRbO1U8BSha/ijDRdPss/1u
	+6GW93YZbZEsbkt9Mp6YKovap9mTdj8TL5H+kvSwDac/Xp+lWmlkYXLIndWROM9e32ZuFSRda0bxA
	WB+taSezzA45hQ7h7+/3bMu4g1W86pZNon0bW8F9uE+ojsbbcrNMCTaLOSib5DLkrmuQuLa3BP12V
	aBJwWKhsqpt835wjiRMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izodj-0004wA-5n; Thu, 06 Feb 2020 21:24:47 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izodb-0004vh-9Y
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 21:24:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581024277;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3Y2UsX0iGKeSydEQeVi48EFJ1DRsKZGjPTwGNyfBBJI=;
 b=ECxvkbK9gs4u1B01jrYWKsjX1a0Dj+T2vlq0KTEdGZuz7+xzhcK365Eo1EguWypMYokpZu
 FiAz6zd1d52Nbr4YzY6FaAsPPElQEZc6tQX/x35jZ9QJGEkEgwyiRzAv7LCzPy050Ws4ft
 Qcj82fGNWXdZn43drvQjgOwfIVUy3R0=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-414-ejS91z_0Nj6Xnk2XewYg_g-1; Thu, 06 Feb 2020 16:24:35 -0500
Received: by mail-qk1-f197.google.com with SMTP id z1so4525223qkl.15
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 13:24:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=mpppjCJmC0FyN5SMr7bSEAaCj98EBVmwQP8+IcdCU94=;
 b=ZcdwsWwKiXoRpQp1Myl1bEIxLO8vjah8+v7FSuxdZNrkpxnu371p46CxIwm8XbosNO
 ffjXhzVHKYSqSjnkvK6ZT6mxpGJFVdS2D/NA2GmTLtRfBbU2Dnt8CitdNTE18EYngf1o
 QR90aRRM3IriMsiQQsKs3Muk5ZZvBTH0f1gvywhhxiKisP6DRBp9KKyX3q0qUvy2pcdr
 s7s0oN4y97nKDAEkSCQzOHc+jtftwQkkyP194UUyPFw0a5fxzTs0PrlN0qU2t14dIIuV
 KId2WCvpR8QQ8uya9V9rQcEg53/SQYHLTqtMtLIrrl5qllF5PQnCRYrm4I7VrFMCFG03
 CGUg==
X-Gm-Message-State: APjAAAV7ROThIvaIkTQVRW65c0xTKng/inns+bmpdHp5LQOwLTTvNiC8
 AkNb7Zxmu/1WT5WnMGTuk3peShyfdQPXd/SC7dVNTiDZz1Gc34dIEBVci7jC8G5Sj1A6qHV9M2h
 PIw8LVEqY4hjzPsl5got+GDvU2L/L/lFc1kE=
X-Received: by 2002:ae9:ebd8:: with SMTP id b207mr4579999qkg.353.1581024275409; 
 Thu, 06 Feb 2020 13:24:35 -0800 (PST)
X-Google-Smtp-Source: APXvYqz5VOLMiLzF1LhwmvuD3bg8z0IeFMhpmxCeKGC9RcbBKEXcR3SRyFUKynAlxMw185+NrKLCqw==
X-Received: by 2002:ae9:ebd8:: with SMTP id b207mr4579963qkg.353.1581024275206; 
 Thu, 06 Feb 2020 13:24:35 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id v78sm278695qkb.48.2020.02.06.13.24.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 13:24:34 -0800 (PST)
Date: Thu, 6 Feb 2020 16:24:31 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 15/19] KVM: Provide common implementation for generic
 dirty log functions
Message-ID: <20200206212431.GF700495@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-16-sean.j.christopherson@intel.com>
MIME-Version: 1.0
In-Reply-To: <20200121223157.15263-16-sean.j.christopherson@intel.com>
X-MC-Unique: ejS91z_0Nj6Xnk2XewYg_g-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_132439_413138_D67F0044 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
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

On Tue, Jan 21, 2020 at 02:31:53PM -0800, Sean Christopherson wrote:

[...]

> @@ -1333,6 +1369,7 @@ int kvm_clear_dirty_log_protect(struct kvm *kvm,
>  	unsigned long i, n;
>  	unsigned long *dirty_bitmap;
>  	unsigned long *dirty_bitmap_buffer;
> +	bool flush;
>  
>  	as_id = log->slot >> 16;
>  	id = (u16)log->slot;
> @@ -1356,7 +1393,9 @@ int kvm_clear_dirty_log_protect(struct kvm *kvm,
>  	    (log->num_pages < memslot->npages - log->first_page && (log->num_pages & 63)))
>  	    return -EINVAL;
>  
> -	*flush = false;
> +	kvm_arch_sync_dirty_log(kvm, memslot);

Do we need this even for clear dirty log?

> +
> +	flush = false;
>  	dirty_bitmap_buffer = kvm_second_dirty_bitmap(memslot);
>  	if (copy_from_user(dirty_bitmap_buffer, log->dirty_bitmap, n))
>  		return -EFAULT;

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
