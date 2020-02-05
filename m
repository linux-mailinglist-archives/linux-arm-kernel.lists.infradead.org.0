Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C00B6153AF7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 23:28:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NNzMm7jBqrl1n69n2x3XbtBXp7b3EE7IE+saHz8SYLA=; b=mc6BSJaXBRHCRb
	LEtf/wE734iIrxjSVZHT/Qr3LuW4744eZ9WGhMIfaqV9z3Ggs1HHHADyz0ttxT3ZZJ3g/BymCtMEJ
	iCit/23E3NzKXIjBsEla2rdfHTT/L0AT15RVPQsvaT1m7sDeVrbhnaSuf3DRbvs7UIpKem8s9O/Mc
	vaJzHA1KPySKGzCTxiMDkWPPYOFVtS9EpoC3K4rttoZc+eOCyWNvwo3p9wY1X34upnyUEKjSOmKFU
	w0xmQ798muXos845TvM/GAkiAZWs4w+W0UcQiCj3+kBZ3+CNJPOaXWgDppR7XPHNlglXOrRxKFcDf
	A1fBLLdEEGJ1CT/P2Fsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izTA5-0005ra-BX; Wed, 05 Feb 2020 22:28:45 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izT9y-0005rG-V9
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 22:28:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580941716;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TlZ291EmGopDCG5ErV/B6q6MCWpQFGiaDWjGBWMPhvg=;
 b=EYXduHnOunpeSVhd2v6DQ3Dh9Ih8wY2nGejwTkqwacbE2rcTsSvBkEajhHI9nXgd+VsEHm
 7AFThfOyjrBRzb6rjKi/VVWqYTU3MiReYZSqry6LAwd7NTlu9sAbwpsvk3PkkXYtsTX3ae
 d+pQRAzY3YsYV6r/QsNiWWo2qRUllJs=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-185-aKyGuqkPMVWjbHe6zM-KQQ-1; Wed, 05 Feb 2020 17:28:34 -0500
Received: by mail-qv1-f71.google.com with SMTP id l1so2450243qvu.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 14:28:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xN2n9jkJvkSR0RH/zWMkRvEj2quGdHH6HsawLgUOQOY=;
 b=sOFyAO3vaT+KQ1K/V9jFt8IXkZIhwhtC7C4hbskUopr8xiS5I7D9TTuva66c0rc6Wp
 reK1cSI63KUHcwkJyK0IGBQif5Nspj0uqg82vO/RV+/zuWt+xXb2WApRbp762J1y+5lt
 sFqH5w7AHswMyvaI/u4f07DiHoH8u+DfJlib4UnBZaugDYXYdansSish7Kj/XL/fp5zk
 cFk4v5kJJS6eEz2HAj5if5vbvneal/rxsr9SsFMI9BIM1bn4kSh8a/HKdqT88P++kVVe
 qj+PEZSlWguvBysAPODmyh0xDqzbKeMggICcs1BIJwo8uPTcZ+gTS4QnZ3DHiJP8YyRa
 M4oA==
X-Gm-Message-State: APjAAAVmUFwwkFrIFORJOmThc954YuZamYJQruRnvipX5RWd7u8sqYOz
 yVkaNE9hAR/e0lt2hdfcBlKD13TsrtPXiQJDF8MB/G+96cL/eTdepQRKfhSmrFFFaxnI81L/PFB
 6wIWeW+wqaHVO2EmqbpnfDKb8sQ/la7GagxM=
X-Received: by 2002:a05:620a:a46:: with SMTP id j6mr13690qka.164.1580941714104; 
 Wed, 05 Feb 2020 14:28:34 -0800 (PST)
X-Google-Smtp-Source: APXvYqzgDC/fBZ4GnRbk3BQEXE+eWIhbbieAb4nE+MGEKdPSLikBImrRnbk5qAuaCcwE1K66PslinA==
X-Received: by 2002:a05:620a:a46:: with SMTP id j6mr13650qka.164.1580941713724; 
 Wed, 05 Feb 2020 14:28:33 -0800 (PST)
Received: from xz-x1 ([2607:9880:19c8:32::2])
 by smtp.gmail.com with ESMTPSA id c184sm503353qke.118.2020.02.05.14.28.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2020 14:28:33 -0800 (PST)
Date: Wed, 5 Feb 2020 17:28:29 -0500
From: Peter Xu <peterx@redhat.com>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH v5 03/19] KVM: Don't free new memslot if allocation of
 said memslot fails
Message-ID: <20200205222829.GF387680@xz-x1>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
 <20200121223157.15263-4-sean.j.christopherson@intel.com>
MIME-Version: 1.0
In-Reply-To: <20200121223157.15263-4-sean.j.christopherson@intel.com>
X-MC-Unique: aKyGuqkPMVWjbHe6zM-KQQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_142839_080626_879E47FD 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
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

On Tue, Jan 21, 2020 at 02:31:41PM -0800, Sean Christopherson wrote:
> The two implementations of kvm_arch_create_memslot() in x86 and PPC are
> both good citizens and free up all local resources if creation fails.
> Return immediately (via a superfluous goto) instead of calling
> kvm_free_memslot().
> 
> Note, the call to kvm_free_memslot() is effectively an expensive nop in
> this case as there are no resources to be freed.

(I failed to understand why that is expensive.. but the change looks OK)

> 
> No functional change intended.
> 
> Acked-by: Christoffer Dall <christoffer.dall@arm.com>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>

Reviewed-by: Peter Xu <peterx@redhat.com>

-- 
Peter Xu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
