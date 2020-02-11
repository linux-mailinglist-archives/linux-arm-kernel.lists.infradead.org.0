Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B3C158803
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 02:48:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ldofzcqmR0Sb22vdn03hUuv/icnSrOusBJ0UvlIfkAQ=; b=dHAzmI6rFdxXjilGiYGBMarLs
	4vWjozm73D+aFifaCSQ+p6z+V6uZ6xJ4hXIb7vADLdYGO1Wsmw0OM0sy8zZFgrit2z9Hl0A88WvsX
	KJB4M5HU59U18PJQvQArE7or5Ml8qkU4FO78qRrzSnx41OGuBQTpnxlcQMmbXryKcim1bn1gU/mMo
	Eo0NzSE1ARpnFJxLbMya1oI+MM4vPMJMipVTyEIwzZy7bTkHPRvYBZ3g6QZwY96yN5dkvrW2k/eJi
	2/xc9UIKZwTtKdODLhSEcr5BUxbjxL5mT6OGuijGsVFn3Z/YW0PAwq/fnhH7UALLrW8y1co+fF8uM
	TsND4imPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Ket-0000GW-Qa; Tue, 11 Feb 2020 01:48:15 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Kek-0000G4-4K
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 01:48:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581385681;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6iVQASVhB0Iy/v0ukW/HE+W72aMu8dFlbk6Ccjpl6Z0=;
 b=IEaB8Hlid2Si/YcUIBsCevypNhF9EOoUUCm4WRm8epoipH4i051qyxjiZf7TVeKYie/Rj3
 5jAgvOz+S8az62fweQ6uYwtyZtBit2IygUDsAObr5/XFF0XbvYTdIm0VtjnsEE/Tax2tzz
 K249nT/yKUT1a9vRmOKI2vnRyFB3Dec=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-261-mcazCzvUMzyKRTL_6kKqXQ-1; Mon, 10 Feb 2020 20:47:59 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5A97B107B103;
 Tue, 11 Feb 2020 01:47:58 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-51.bne.redhat.com [10.64.54.51])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 08F2226FB0;
 Tue, 11 Feb 2020 01:47:55 +0000 (UTC)
Subject: Re: [PATCH v2 0/4] arm64: Dereference CPU operations indirectly
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
References: <20200203235107.190609-1-gshan@redhat.com>
Message-ID: <77eaa6aa-7e3e-9f74-f28a-9298bdb760b1@redhat.com>
Date: Tue, 11 Feb 2020 12:47:53 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200203235107.190609-1-gshan@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: mcazCzvUMzyKRTL_6kKqXQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_174806_251246_55ECFE1F 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will@kernel.org,
 catalin.marinas@arm.com, sudeep.holla@arm.com, robin.murphy@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/4/20 10:51 AM, Gavin Shan wrote:
> In current implementation, an array (@cpu_ops[NR_CPUS]) is maintained
> to dereference the CPU operations. 2KB memory are consumed when NR_CPUS
> is configured to 256. It's too much than what I expected. This series
> reworks the implementation to dereference the CPU operations indirectly,
> so that less memory (64 bytes) will be consumed for the same purpose.
> The optimization bases on the assumption: these CPU operations aren't
> dereferenced in hot path.
> 
> PATCH[1/4] isn't too much relevant, to declare ACPI parking protocol only
> when CONFIG_ARM64_ACPI_PARKING_PROTOCOL has been enabled. PATCH[2/4]
> renames cpu_read_ops() to init_cpu_ops(), which is obviously more precise
> because it's initializing the CPU operations. PATCH[3/4] introduces
> get_cpu_ops(), preparing for dereferencing CPU operations indirectly.
> PATCH[4/4] makes dereferencing CPU operations indirectly happen.
> 
> Changelog
> =========
> v2:
>     * Pack 4 CPUs' indexes into one byte. 64 bytes are consumed in order
>       to get the CPU operations                            (Robin Murphy)
>     * Use ARRAY_SIZE() to iterate @cpu_ops[]               (Robin Murphy)
>     * Make index-0 valid                                   (Robin Murphy)
> 

Robin, Please let me know if you have more comments on this series, thanks!

Thanks,
Gavin

> Gavin Shan (4):
>    arm64: Declare ACPI parking protocol CPU operation if needed
>    arm64: Rename cpu_read_ops() to init_cpu_ops()
>    arm64: Introduce get_cpu_ops() helper function
>    arm64: Dereference CPU operations indirectly
> 
>   arch/arm64/include/asm/cpu_ops.h |  8 ++---
>   arch/arm64/kernel/cpu_ops.c      | 56 ++++++++++++++++--------------
>   arch/arm64/kernel/cpuidle.c      |  9 ++---
>   arch/arm64/kernel/setup.c        |  8 +++--
>   arch/arm64/kernel/smp.c          | 59 ++++++++++++++++++++++----------
>   5 files changed, 85 insertions(+), 55 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
