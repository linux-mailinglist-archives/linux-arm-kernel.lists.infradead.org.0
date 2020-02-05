Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74A6153B40
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 23:45:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHqxanr4GKsm3iyYM0L2WdzDiuhAjoFns+47qs+WpMg=; b=PIhMUHL5icvZqJ
	Z0GqDugoX6rEtS9N+IOmAOT6e8gbGlKXCD2q2KkOCfRQ28ljurTJWPKrsi1HcZO3zJ8NX4fjuX56b
	SWx46Ocqnw1o99UJx0cU7M8kEIiZyzfesrjvPb0vXMD//RYN42hQ5FHk9r8ct1MbEnevOWc/FRPAO
	Z92HcQIHGRiR8cKcvDeBaxfbyKk+8r5QPekiZ3z+RFuq+UVJIa1ra1nLn3vSEQF/7dkw+4xiqchnr
	dYowc001ZifQs+jXSV5huw0EVTTMlEqf0hdXsPfhiRL2yEXZ3USJnIX73+gaDkU2GvmOwD3Q3ybLn
	glNHLN8vT3bqaCsiQpPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izTQG-0003vC-Gj; Wed, 05 Feb 2020 22:45:28 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izTQ9-0003uV-QU
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 22:45:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580942719;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dLW36RQDcQlBWq87U9OJm0bMCerLux+JLB20TQpqI/c=;
 b=fynN7DoZQR2/2OgHT3zT99gexl2ZayKv8mm2HrBGXGumU5x8j6xYc+BcParpbbFa3q2rkT
 d+ePtcPA/Ojctsi7MgjxH8hkIbG8IZttKL3K8YZz4Pf4jlryU2alZ6UKlEmnMzGY52vvqQ
 uEcbBM3mkIkzOGaraBiHmDXtfABxv4E=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-324-ycCvKcrhP_2hnijW-WGXQg-1; Wed, 05 Feb 2020 17:45:17 -0500
Received: by mail-qk1-f199.google.com with SMTP id x127so2345178qkb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 14:45:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Qhu3K4UfMyr9rLuPVrEXyLiBiRw+0bLNH6EYh61xjr4=;
 b=jLoYI4jPbZAsSSBZLXuDu6dvUi/qUNDJcqW0le8wlhcOo2SnvzyPG5h1twwvY+BB12
 9KTeoQnvulPYIjzv5fHCu4+qjq2433V+vqePf1lHpUVldCkh2KV48Xp+totvQiUhqdAe
 FshiPwAC0asXGrMzJ74B+TqRfqyq6ZSbBfXjnK3FIEobsgKY7vh+E5pyU6AsESJQRiCx
 rV3kZwmQMN1fuvcDbnWJBWOTBQ6hIbK92LG1ckbgYwhxSYcK/hKmxYeA3Az8TbL+lqbB
 5A6lD7mZtTnBrLbkOQ4yjs7uzbZWgGda9Z4g6EalQHPt69r4VfxvL1pqGgHlY7dzaaqU
 pxKQ==
X-Gm-Message-State: APjAAAWI9PMurMlLjImhjSX0vNrv6bULLZmN3Z2AOTg39lC8F8ZNH2d0
 /6bu1ocmS4p+/L2nOsQAgLrfojS3orDp8zV9P2ai7e1NE+A43n0/P9iltcmteYAROnt/e/zczuB
 /VRwOEOpEU999Rlk7fERKfiYxdpMwQOBAYpA=
X-Received: by 2002:a05:620a:1654:: with SMTP id
 c20mr61827qko.116.1580942717358; 
 Wed, 05 Feb 2020 14:45:17 -0800 (PST)
X-Google-Smtp-Source: APXvYqyAvhOweFr4KXXnP5Mb9+7dhUBLh1Z13T+81iDjtWqZt6EK3UE5xX8DXWaSS5tvfd+S4d7C7g==
X-Received: by 2002:a05:620a:1654:: with SMTP id
 c20mr61812qko.116.1580942717130; 
 Wed, 05 Feb 2020 14:45:17 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id x22sm615496qtq.30.2020.02.05.14.45.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2020 14:45:16 -0800 (PST)
Date: Wed, 5 Feb 2020 17:45:13 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 06/19] KVM: Drop kvm_arch_create_memslot()
Message-ID: <20200205224513.GH387680@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-7-sean.j.christopherson@intel.com>
MIME-Version: 1.0
In-Reply-To: <20200121223157.15263-7-sean.j.christopherson@intel.com>
X-MC-Unique: ycCvKcrhP_2hnijW-WGXQg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_144521_936268_B33FD8E1 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
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

On Tue, Jan 21, 2020 at 02:31:44PM -0800, Sean Christopherson wrote:
> Remove kvm_arch_create_memslot() now that all arch implementations are
> effectively nops.  Removing kvm_arch_create_memslot() eliminates the
> possibility for arch specific code to allocate memory prior to setting
> a memslot, which sets the stage for simplifying kvm_free_memslot().
> 
> Cc: Janosch Frank <frankja@linux.ibm.com>
> Acked-by: Christian Borntraeger <borntraeger@de.ibm.com>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>

Reviewed-by: Peter Xu <peterx@redhat.com>

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
