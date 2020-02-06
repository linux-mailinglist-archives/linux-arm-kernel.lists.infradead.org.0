Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9CC154EED
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 23:30:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWxZnCd6PbCC6mnFc97sUb9LvtVgTEzq3n7eQhBNR1s=; b=l8E6m+mP6gdGo9
	MESQY0ZgWVPxkUcVUVYFS8eYgpepaOESXlqBcc9m2jO4cvPuGLIgSldROm+FJ9Bcv1I7hO3mKT7rM
	jEZeFx0ex3611KK0loPm+XfQLXdG7Ss0DECG7F72z+NvbrdI4B1sLcKYpn4wOMD+lDxyDsORJzXnz
	lTMoYhw5c3PzG4a6hBZ57qfwN1JakmVFFgyC/63BCuGuzooMDPD9rLRU61j/Rwc+8/HFnYLk+jA6K
	jNbW/SBRTTDtHyFdRfLDtdNeQ9DBiR90Mlwj1GgVoigGy0yjlEZohYhrtvml2zzU2WBaVfE33EhTQ
	die8YdQSiq3+7vzv9xMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izpf9-0002Jo-P8; Thu, 06 Feb 2020 22:30:19 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izpf2-00022Q-2O
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 22:30:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581028207;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=08Ua6YM4bGr29OQGZ6f7H3nnpZ7bguggvktlAX07D4M=;
 b=gO8o67LrUDMlXo7h0Xq4OqGPgBGy/O/bFmNeyh5K8FPUg99WqyCnbaIgIoMrQSU1eMYLZ8
 fejcZo5fLGcYZJ6ud0JJnWwsMdKr7KzZ9GGoOWDnwvKTfWew4kXlvuHRqxOAnwHi+7DxLb
 i9huzvmQGp+EKGQJDGQcAYdUe89KzRc=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-283-fifppBLNPA6BVO5YyGmfAw-1; Thu, 06 Feb 2020 17:30:05 -0500
Received: by mail-qt1-f200.google.com with SMTP id o24so262364qtr.17
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 14:30:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=y9cBxEKgtYZ4SHZJ2KCZ291mafsQUmmbyOmTI5C6x9c=;
 b=BQQw0QCRZtFG3RuYGbKQHYQypB/gKl2ABLYY3T8NR3vxPxg9wVprYvgPgdJW92iDLJ
 yycxmClajZi9xJfgFn9v00nl6cIzOF8GNox5I/fPXMNCpAJHVU5fvi3othhcODDVsVqb
 qpefdQ6UBfk248ff2sefURfJ+Jnmr7AvB8UMQAzjWeAGOiSLBhxdj/49GE4IN1OXNtIB
 cRWdtycAo1E1CREd+dFCITH3RGdwKdOftrQxn4a78DETisPhUKTyEXGLvgdo1CHi8lg5
 XcsLVxCKEyeNXZViPWjLg52n3dsxKrg9q9fRsLBQhszbl0Zot80iApe/GhRFInFCAg0K
 qgxA==
X-Gm-Message-State: APjAAAUUV+SmAY46B6MtiW+f8nnD28mUWVLOg+sTWF4jhSDoI5gHSHuv
 JbjwEcXw7kkNU2hSFkmeVihFn8IS0oo76CyXQ79CbEk6izL1vv1/9EDjCO5vQRHdnWJyuv6sRYB
 lvrvDXmj6Rfq/meUmXzcW8P/QjJcMZzSjyFU=
X-Received: by 2002:a37:7884:: with SMTP id t126mr4700918qkc.288.1581028204600; 
 Thu, 06 Feb 2020 14:30:04 -0800 (PST)
X-Google-Smtp-Source: APXvYqzvEhS0XgXcsen5IJpPtTelaoRM0D8F8yYe4NbZxtsmBW+xmvTRWnxA6Vkem/WNxI4KksN37A==
X-Received: by 2002:a37:7884:: with SMTP id t126mr4700901qkc.288.1581028204379; 
 Thu, 06 Feb 2020 14:30:04 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id z185sm352349qkb.116.2020.02.06.14.30.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 14:30:03 -0800 (PST)
Date: Thu, 6 Feb 2020 17:30:01 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 19/19] KVM: selftests: Add test for
 KVM_SET_USER_MEMORY_REGION
Message-ID: <20200206223001.GJ700495@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-20-sean.j.christopherson@intel.com>
MIME-Version: 1.0
In-Reply-To: <20200121223157.15263-20-sean.j.christopherson@intel.com>
X-MC-Unique: fifppBLNPA6BVO5YyGmfAw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_143012_192219_E6AA4F57 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Tue, Jan 21, 2020 at 02:31:57PM -0800, Sean Christopherson wrote:
> Add a KVM selftest to test moving the base gfn of a userspace memory
> region.  Although the basic concept of moving memory regions is not x86
> specific, the assumptions regarding large pages and MMIO shenanigans
> used to verify the correctness make this x86_64 only for the time being.
> 
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>

(I'm a bit curious why write 2 first before 1...)

Reviewed-by: Peter Xu <peterx@redhat.com>

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
