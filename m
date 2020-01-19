Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A76D142090
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 23:50:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ioTfjCuzvN+Ym5fUTRi/MDuE/oJZRqH3WVLFxqyNdZY=; b=cWQa87RW1QSF+Z
	oRIlhjIgpQWJtJ9Ncw34/inyvpCu0IP+3GC71ymkj7qi0NL7F+G0NuAQQxx43i/siaWxv14aRmx4l
	k+69m8t8MUgvO3exNsrEHDh4tUoAFo4odlIWx2gqgxPOj5Uv9KfJFY2x9jtEL/Nh8yBaqcxF5i+Tj
	1N9crI0mfrhzIM4AX3mu15B9PPU34x0GYd3Di7Zwe6GwEh1ca2pK06A+yiUj47E10PAyG98/3RhXN
	jKLJVEg7B+EtulFykeJuIpU1rPUTarT+p7aP21iWJEsVosKvqW7xyG0tRB+MU/iKlLRP/mr/oLrW8
	Vx5rRwAm4GdVHJwu0M4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itJOZ-0003AG-7a; Sun, 19 Jan 2020 22:50:15 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itJOQ-0002NG-ED
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 22:50:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579474203;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Q8gG+1cgJTMe7mIrJCeKPohDJq4KgvzUnmCCGFTyYv0=;
 b=GdHwyGKuomn2CKpQ5bbj3x884XK/Om+mrTq9BpWugcrnnkkPjLxAhYJDZFFPJmYuMXkqt+
 phBQpyF8dhc0mKlfC3oF2Mzp9E2uOgqSvLlBGmt2j0ONLQduJtGtThr/6Y5VyHZiG19H4s
 3rGooIBCulQcXe7C5D8brBcNcLaVRN8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-192-yW7lfmG9NhS_66Jh5-G9Qg-1; Sun, 19 Jan 2020 17:48:03 -0500
X-MC-Unique: yW7lfmG9NhS_66Jh5-G9Qg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6F96E10054E3;
 Sun, 19 Jan 2020 22:48:02 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-61.bne.redhat.com [10.64.54.61])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E612960BE2;
 Sun, 19 Jan 2020 22:47:59 +0000 (UTC)
Subject: Re: [PATCH] KVM: arm/arm64: vgic: Drop the
 kvm_vgic_register_mmio_region()
To: Zenghui Yu <yuzenghui@huawei.com>, maz@kernel.org
References: <20200119090604.398-1-yuzenghui@huawei.com>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <479f2e5f-80c4-37e1-8f3a-2f1197fddd51@redhat.com>
Date: Mon, 20 Jan 2020 09:47:57 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200119090604.398-1-yuzenghui@huawei.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_145006_606261_5E95BB7F 
X-CRM114-Status: GOOD (  14.25  )
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
Reply-To: Gavin Shan <gshan@redhat.com>
Cc: Haibin Wang <wanghaibin.wang@huawei.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/19/20 8:06 PM, Zenghui Yu wrote:
> kvm_vgic_register_mmio_region() was introduced in commit 4493b1c4866a
> ("KVM: arm/arm64: vgic-new: Add MMIO handling framework") but never
> used, and even never implemented. Remove it to avoid confusing readers.
> 
> Reported-by: Haibin Wang <wanghaibin.wang@huawei.com>
> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> ---

Reviewed-by: Gavin Shan <gshan@redhat.com>

>   virt/kvm/arm/vgic/vgic-mmio.h | 5 -----
>   1 file changed, 5 deletions(-)
> 
> diff --git a/virt/kvm/arm/vgic/vgic-mmio.h b/virt/kvm/arm/vgic/vgic-mmio.h
> index 836f418f1ee8..5af2aefad435 100644
> --- a/virt/kvm/arm/vgic/vgic-mmio.h
> +++ b/virt/kvm/arm/vgic/vgic-mmio.h
> @@ -98,11 +98,6 @@ extern struct kvm_io_device_ops kvm_io_gic_ops;
>   		.uaccess_write = uwr,					\
>   	}
>   
> -int kvm_vgic_register_mmio_region(struct kvm *kvm, struct kvm_vcpu *vcpu,
> -				  struct vgic_register_region *reg_desc,
> -				  struct vgic_io_device *region,
> -				  int nr_irqs, bool offset_private);
> -
>   unsigned long vgic_data_mmio_bus_to_host(const void *val, unsigned int len);
>   
>   void vgic_data_host_to_mmio_bus(void *buf, unsigned int len,
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
