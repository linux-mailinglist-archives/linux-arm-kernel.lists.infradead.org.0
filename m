Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37302E05EA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 16:05:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tmnsz7IyH2t/j2W8LtTFjl+Rrp/L3Im6NTNC1G83iZU=; b=L4WJ4dX8nQyrfF
	6OLgWD6lXHk2QxoPk1zdqes5DQ1HMfzUu5m1/OpOJeR9vCPb3abUIaViJkucPWCQXc7mV7+nKDd+W
	s8MCbPaSgqIVpOAbPMYxeNFVjr7XpAbfQCdpeXopXXYu3UBfzPInxu+iI5Chlfy5aIEW7ocPXd5qP
	Y7ZR+2qTJXSt6WwDEALL6uTKHRufop+feaNxkTD0HsVV5aQw4rGWc58SF1CXk/u9dNdavqk/7QzpM
	B4yRDW2UPFJdjEt8QXKgUOfshGHEvIyInpRJsN2i6Dd7vw1Ixwhsrrchx5m4ybyz1ae6P9IrVhAT/
	SBeoaCCQiPda7wCZB0PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMunJ-0000Ls-UJ; Tue, 22 Oct 2019 14:05:53 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMumQ-0006uN-IN
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 14:05:01 +0000
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id AF470A705
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 14:04:57 +0000 (UTC)
Received: by mail-wm1-f71.google.com with SMTP id 6so3009331wmj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 07:04:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GRXx0prZyWf8Ie3WBmFM/bIRv9+8DKKzcw/xRf9RZ/k=;
 b=RCTtKg3WQCMlpm3pyrs6Xab8eMe7vHnNcBLCElO8vOY6XPSNfcZNw30bHhHg4w0rXe
 U0Aqo8rseDtF94gHgdvZ6++yi4GvDy1R1DK/FzpYtNPafY+UMcghuC/egLnr0CR7G1Dw
 Wlnu3W2IsO29iHdGUQ5nk76zZJvMyQYApq1stvY7XShLEO/NrZhmFqZ3vnij6cbeu5EY
 l1oRu9SueUetGH3K/BSQTRuhnq07cc7kcaPU68geZebxkiJ/2fQ1vap5wB4jddO1GfZO
 RijzCnkVU+J8YbBX1aadMUcEfoy/HRk8C8Jqu5YMsB+DL1TgnigOki0AZBWSIpjGKF3y
 cEFg==
X-Gm-Message-State: APjAAAVHa7Xgx8jysxLJhkmyUXHnD539TPCWb8nmJMGuqTFVK4t4W5qZ
 tKXnXPA0ltL0RMCUluejs6lv/8yh7CE/kgkDV7mq5iQWv06ipxn0zH/7TaWj9zRoVC1gJ1UTRll
 q2PQ5M6fIUuuP3jVAv627eNJgxkqfXuLg2Ik=
X-Received: by 2002:a1c:7e57:: with SMTP id z84mr3319589wmc.84.1571753096262; 
 Tue, 22 Oct 2019 07:04:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwWqRcFVSe00YfZqVULXyrnOBOt0DAtwntm2KhRrr6N6A/cSYud38QIAc8/I73DEBmlFbuFZw==
X-Received: by 2002:a1c:7e57:: with SMTP id z84mr3319555wmc.84.1571753095982; 
 Tue, 22 Oct 2019 07:04:55 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:c0e4:dcf4:b543:ce19?
 ([2001:b07:6468:f312:c0e4:dcf4:b543:ce19])
 by smtp.gmail.com with ESMTPSA id b196sm11755492wmd.24.2019.10.22.07.04.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Oct 2019 07:04:55 -0700 (PDT)
Subject: Re: [PATCH v2 00/15] KVM: Dynamically size memslot arrays
To: Sean Christopherson <sean.j.christopherson@intel.com>,
 James Hogan <jhogan@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?=
 <rkrcmar@redhat.com>, Marc Zyngier <maz@kernel.org>
References: <20191022003537.13013-1-sean.j.christopherson@intel.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <129444cc-5211-5b60-15fc-0f0fe998f023@redhat.com>
Date: Tue, 22 Oct 2019 16:04:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191022003537.13013-1-sean.j.christopherson@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_070458_654775_DC5E336F 
X-CRM114-Status: GOOD (  20.15  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

On 22/10/19 02:35, Sean Christopherson wrote:
> The end goal of this series is to dynamically size the memslot array so
> that KVM allocates memory based on the number of memslots in use, as
> opposed to unconditionally allocating memory for the maximum number of
> memslots.  On x86, each memslot consumes 88 bytes, and so with 2 address
> spaces of 512 memslots, each VM consumes ~90k bytes for the memslots.
> E.g. given a VM that uses a total of 30 memslots, dynamic sizing reduces
> the memory footprint from 90k to ~2.6k bytes.
> 
> The changes required to support dynamic sizing are relatively small,
> e.g. are essentially contained in patches 12/13 and 13/13.  Patches 1-11
> clean up the memslot code, which has gotten quite crusy, especially
> __kvm_set_memory_region().  The clean up is likely not strictly necessary
> to switch to dynamic sizing, but I didn't have a remotely reasonable
> level of confidence in the correctness of the dynamic sizing without first
> doing the clean up.
> 
> Testing, especially non-x86 platforms, would be greatly appreciated.  The
> non-x86 changes are for all intents and purposes untested, e.g. I compile
> tested pieces of the code by copying them into x86, but that's it.  In
> theory, the vast majority of the functional changes are arch agnostic, in
> theory...
> 
> v2:
>   - Split "Drop kvm_arch_create_memslot()" into three patches to move
>     minor functional changes to standalone patches [Janosch].
>   - Rebase to latest kvm/queue (f0574a1cea5b, "KVM: x86: fix ...")
>   - Collect an Acked-by and a Reviewed-by

I only have some cosmetic changes on patches 14-15.  Let's wait for
testing results.

Paolo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
