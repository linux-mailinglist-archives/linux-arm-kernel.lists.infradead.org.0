Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3D3E8834
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 13:30:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7IxOeD3cIkZoZ9Nq+V1rmeaDoaH4l6j1dc+n8OOEjkM=; b=JM4NuieHZB9Zkj
	IbWARbUCDUk4bNkRcUpWbbE3Z2KhLJJQiWbyt9lrtjY/luTf01sZPQEpHjFCS0+Tx9maj0MFg6G7S
	1dDlHaLv/HrSgG2Uv+JT9EUvNqvIx+oDp9IbINPDCZAPAOS6XGTcVO2ojyxciKW+3EB58FdDuDoxR
	dIe8e4j2b39sNjkTdDf5p6YKqZNOA5V+h+aF0gpxkdrXrQfO4n812uhbJxzAG3/dTJaCDCXwBVR4M
	bo67YirL1HowuaEOhS0MxaFK7CwLa7z1Nv/bO537aNMEbsdAbpn/Lcss5FAaHbENp0Dthl2vpRlPK
	4ZenBh4w0px2BhHFmYpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQde-0004dQ-Mp; Tue, 29 Oct 2019 12:30:18 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQd8-0004UJ-VM
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 12:29:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572352185;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=isE3WXtq6TdHNbe0eCrSyqXMPps4oLg4qOCvldTLLWc=;
 b=EwmFUpBqW6Q9n8lqe8QAXTt2Q6DSb8YFkvlfsnwddpvDn6G26E0I6e7+y75rN8YXUQiCdS
 hVa4QeR20XNWUr4tsHTM27RGaa962dccK5ryocs9p5uHldTLSNQ9Yii19REAZ8Cx6R4CjF
 V5OqUIhWsOG0Rp2PoiBff5+HZpsfGrU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-322-5xRQ-dLzNiCOO_F_zL5VZg-1; Tue, 29 Oct 2019 08:29:39 -0400
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 21D0A801E64;
 Tue, 29 Oct 2019 12:29:38 +0000 (UTC)
Received: from [10.36.118.15] (unknown [10.36.118.15])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6906960C4B;
 Tue, 29 Oct 2019 12:29:34 +0000 (UTC)
Subject: Re: [PATCH 1/3] KVM: arm/arm64: vgic: Remove the declaration of
 kvm_send_userspace_msi()
To: Zenghui Yu <yuzenghui@huawei.com>, maz@kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
References: <20191029071919.177-1-yuzenghui@huawei.com>
 <20191029071919.177-2-yuzenghui@huawei.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <a38976ea-8c10-6fde-67a8-a25aa13c964e@redhat.com>
Date: Tue, 29 Oct 2019 13:29:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20191029071919.177-2-yuzenghui@huawei.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: 5xRQ-dLzNiCOO_F_zL5VZg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_052947_107491_EF965507 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: wanghaibin.wang@huawei.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zenghui,

On 10/29/19 8:19 AM, Zenghui Yu wrote:
> The callsite of kvm_send_userspace_msi() is currently arch agnostic.
> There seems no reason to keep an extra declaration of it in arm_vgic.h
> (we already have one in include/linux/kvm_host.h).
> 
> Remove it.
> 
> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
>  include/kvm/arm_vgic.h | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/include/kvm/arm_vgic.h b/include/kvm/arm_vgic.h
> index af4f09c02bf1..0fb240ec0a2a 100644
> --- a/include/kvm/arm_vgic.h
> +++ b/include/kvm/arm_vgic.h
> @@ -378,8 +378,6 @@ static inline int kvm_vgic_get_max_vcpus(void)
>  	return kvm_vgic_global_state.max_gic_vcpus;
>  }
>  
> -int kvm_send_userspace_msi(struct kvm *kvm, struct kvm_msi *msi);
> -
>  /**
>   * kvm_vgic_setup_default_irq_routing:
>   * Setup a default flat gsi routing table mapping all SPIs
> 

Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks

Eric


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
