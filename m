Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A62B212391A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 23:07:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C5fXQkR2Mxm0Kt1Owp0BH7yFEPiDYmyL+pTVI8DQCVQ=; b=ZXBq01gw/DAaGd
	w72aGE9Nb98TenXJFwyNLgjy82j0mabOqI7Wb785suzXx1DxzBhaU1gQVrggkunUfcK43sMANr0pU
	4tQMX7zetusJNw7FFjUC40/486fpQboeCSK59vAfuGOjYv3+BzVCsI2GotrVKnDpHU1Bkgfs+Gwyt
	3agQsK90nMU6B53KyU85Vb5CrM5A6oNSt5qGJjQCFvol0zC7KuxM3tso8uE7ZD+Cg18wFHMZgK7ue
	H1YA+PVzhN5BRXXsijt7U9PsaP1BkirXezR8dldDodpktL6ygNa95gcheesmJPLzvc9RsYYehjaN+
	kmAwqZUtqfXFwM1eu0bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihL0E-0005Ya-57; Tue, 17 Dec 2019 22:07:38 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihL05-0005X4-Qa
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 22:07:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576620445;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dMNrU891HIbbCXzuvJMLqIA+nkJje43G6ahYCI5AhR8=;
 b=DLtqyOr7NW1tNXcZ0IRHbQqnk6jKLTG/WuBzfO4Vx1u9Jm7GGGu3TdjZauOb9kbEhwaP8C
 wnJgWGE8mMunvCIulNQ3/yPd3OiXVuZVmS2TaccBO/BEXSIto/U07wNqtxsgcGFhgQRaKP
 xtW/fM8CwhWFjkBNFEKSTLJYOY88ToY=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-335-mGtjtNEcOsaOdDeEJ1gxRg-1; Tue, 17 Dec 2019 17:07:21 -0500
Received: by mail-qt1-f197.google.com with SMTP id d18so121146qtp.16
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 14:07:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=slGVCNmnwx0F1K+nCa+cID8Tdy/RHxQkOhSUfY0VX6I=;
 b=j4495L4ENKmtmBFU9eVv+lIpoA9IN6q52Zylh1pZk97Qspgaefqr18trKTLtNV1Q4H
 1Xzs3CC4i2Fnvsw55JxkFR7bJMuG9f2vZFUm3OgIVHSr6waEE8RszlqzCkmgSLlJNS4A
 JhLJvEMqLHDF3c4/z2tNG4fqxa4BXo8f74xmq7UrchKrToUuoV5R+btX8H7zwHJoOX6M
 S0UQ1augfHagYpQ+bh6dcFJWuiFnnNvSsUuTL1FlUTBkgpRCDoLAsKNe1kcsWoCYf10N
 N+0Of9K+6IUdVSu4q9CQ0MMW7l0+JaL1BA4AT1ejJI2YsxuCH6MKpURD6qOq73f0iImX
 ibpA==
X-Gm-Message-State: APjAAAW3EOZl5GzzVyo41Y5x5N5D7IJ+0E6KBMQFhAbjvAkDc7S/QqOV
 DeDyBK5+uv1Hcyo9R0EJuK6tde1VmmsAmGszNk/iz8VGlXqgkSGjPwMV4vTt3PhAFFrKha//2bX
 tB7oW90G6jWX359ThzBfYsQXNtKFjAMoO9mI=
X-Received: by 2002:a0c:f68f:: with SMTP id p15mr6885120qvn.79.1576620441552; 
 Tue, 17 Dec 2019 14:07:21 -0800 (PST)
X-Google-Smtp-Source: APXvYqyYYchEVtwDwgk4Pr56pOeSJtWkuin1D2pVTuKZ433b4vaBfoHv6+mbPiSSnU54NveRu8NnwQ==
X-Received: by 2002:a0c:f68f:: with SMTP id p15mr6885088qvn.79.1576620441243; 
 Tue, 17 Dec 2019 14:07:21 -0800 (PST)
Received: from xz-x1 ([104.156.64.74])
 by smtp.gmail.com with ESMTPSA id o9sm7592950qko.16.2019.12.17.14.07.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 14:07:20 -0800 (PST)
Date: Tue, 17 Dec 2019 17:07:18 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v4 05/19] KVM: x86: Allocate memslot resources during
 prepare_memory_region()
Message-ID: <20191217220718.GJ7258@xz-x1>
References: <20191217204041.10815-1-sean.j.christopherson@intel.com>
 <20191217204041.10815-6-sean.j.christopherson@intel.com>
MIME-Version: 1.0
In-Reply-To: <20191217204041.10815-6-sean.j.christopherson@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-MC-Unique: mGtjtNEcOsaOdDeEJ1gxRg-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_140729_949330_BBFEDDF8 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
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
Cc: Wanpeng Li <wanpengli@tencent.com>, Janosch Frank <frankja@linux.ibm.com>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 James Hogan <jhogan@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-kernel@vger.kernel.org,
 Philippe =?utf-8?Q?Mathieu-Daud=C3=A9?= <f4bug@amsat.org>,
 kvm-ppc@vger.kernel.org, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Marc Zyngier <maz@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 12:40:27PM -0800, Sean Christopherson wrote:
> Allocate the various metadata structures associated with a new memslot
> during kvm_arch_prepare_memory_region(), which paves the way for
> removing kvm_arch_create_memslot() altogether.  Moving x86's memory
> allocation only changes the order of kernel memory allocations between
> x86 and common KVM code.
> 
> No functional change intended.

(I still think it's a functional change, though...)

> 
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>

Reviewed-by: Peter Xu <peterx@redhat.com>

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
