Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2032615491D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 17:27:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wpfZscI2U+t3DM6Jzyv1lziP6k9cAcJVkS+aX84z/YY=; b=PAykUt4iDh9PyD
	ffXagAxgp0cB43dsWigmnvoz4rH2S+p1GatSeQyRmkes2hF1zjD1URoShJjH5Zq0C0PzKhWgWGDnM
	oOG39CsULhH0MYLR1pceulPJVXJi57AT6H2FQi9PrBj4RZYU4qmEMuGV1pmhNj0Bpzn8FEPT/uZVi
	h2nO4HR+YBRotTLDBAYj/m56b1II3IvkCwktw4IduGd0sxkfEFzUijQwP7ZXHMIQXNkci93zzGDTl
	RJChIBtQIzE5n5vdtOGgHp/WTnO6aiAyWtACpJTRkJNWMR8+7eXgBOM9bt1BNZPuHEo+0YDCJgtZW
	Mu9be7uctoZQ3GiX4S4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izjzS-000705-EG; Thu, 06 Feb 2020 16:26:54 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izjzL-0006xV-6U
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 16:26:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581006406;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pWA9L7Zc04chq1QqnWc7kHBbjNHvMkxLdbW90aT2420=;
 b=bnu7a8LvgMNmfuWnYXz3YqZlNpKVQDQZCB4oJq7bL3ylBI63CvSX0Y4YVFZrW4LGwPUhCc
 fI2zl+zDSQc8zQhe2MjW2cMkA62ZvxUzlgOQmptgeSmlJZ7v2pgkRoHTy1eEioH6gtw5fs
 2S/p3FiYk89ToPQNuYDmPKqUJ1scANI=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-430-Ht2DZZBrMaC3DridEw_3hA-1; Thu, 06 Feb 2020 11:26:44 -0500
Received: by mail-qt1-f200.google.com with SMTP id d9so4193938qtq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 08:26:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=H3nLSU6aNBKxxlwzEldmN2l97fU6AU4NrctqbL5/r9Q=;
 b=gGOWlAjFcnidW1bX7xdtgAMzrzxj0yw0XtQ9yYMu1zGyczOOO0Cws5S+widbuqV4d6
 AXaHjOde0pgyWL+T7KZLPZFvoOSr0quO7ZckN/Lf008vOakFaEQ30ExxLnnvtjnOS9bL
 /piZeEFeyBmIxltqt8KzzRW12UFa0nB/DdoLuXyHRenM+4IDJ7em2ExxfMiG5db4mzVa
 Ujsk0k/iAau8Oq5FQLd3zZEGnCDYWF4vOjq3SIdMFyrV/G7x/mhE33233cbiZLPJSgdo
 HH5tlfd0464hUKQ/KOgfe0c4AO4kUaOn3HOV2T92sAwDwh7a7cj9tcyozMCGS64a6Udi
 dnhw==
X-Gm-Message-State: APjAAAWNrS3z2FiscUp1T3LcJOzsRdCzkInYNQvLDgmjFsAbo81SRQgV
 93z1s/yjcojTtGrHGsXdZ0h2GI7KEKnFmv/zWYa8rIKnGmYH5pdLYKpkUBPJ4QL3SuvgE2N62hY
 fxF9bA5UIxAMLcDZskY+3xPI6nhNnxZgHeHo=
X-Received: by 2002:ac8:1e08:: with SMTP id n8mr3297386qtl.175.1581006403787; 
 Thu, 06 Feb 2020 08:26:43 -0800 (PST)
X-Google-Smtp-Source: APXvYqxQlIJcJ9283T0k3SJBUCagGgD/4X0S4VFGYxAKtPxVCA909nX5ytULcXgwNYLmQcG3Ogy1yQ==
X-Received: by 2002:ac8:1e08:: with SMTP id n8mr3297351qtl.175.1581006403586; 
 Thu, 06 Feb 2020 08:26:43 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id q7sm1618375qkc.43.2020.02.06.08.26.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 08:26:42 -0800 (PST)
Date: Thu, 6 Feb 2020 11:26:39 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 10/19] KVM: Drop "const" attribute from old memslot in
 commit_memory_region()
Message-ID: <20200206162639.GC695333@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-11-sean.j.christopherson@intel.com>
MIME-Version: 1.0
In-Reply-To: <20200121223157.15263-11-sean.j.christopherson@intel.com>
X-MC-Unique: Ht2DZZBrMaC3DridEw_3hA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_082647_310780_00E06752 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
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

On Tue, Jan 21, 2020 at 02:31:48PM -0800, Sean Christopherson wrote:
> Drop the "const" attribute from @old in kvm_arch_commit_memory_region()
> to allow arch specific code to free arch specific resources in the old
> memslot without having to cast away the attribute.  Freeing resources in
> kvm_arch_commit_memory_region() paves the way for simplifying
> kvm_free_memslot() by eliminating the last usage of its @dont param.
> 
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>

Reviewed-by: Peter Xu <peterx@redhat.com>

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
