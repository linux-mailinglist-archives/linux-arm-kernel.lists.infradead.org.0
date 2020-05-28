Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBA41E5767
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 08:15:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rk8DhlRDgmjYnw7NXNzz3ngLxA5UoVH7D/g8hNs9B0Y=; b=RQ7VRubIfR/eT3
	bOmN+irPbVDDo8afUH9dv/8JX1lQdd55nABw0ULvueTtSEzLq4Pci59355FBtRSe/m+PvaSgBf+Xn
	KFTV+k2h+U8NEPhdwoSQsndqzmsFqYEBubebicNPJXbXVe0b4gbEFgJ6+n3d/T7U4t+I3TTUv2/YP
	tFsGjmUKbuZPFpaOkn6rqo15sPsSSyB1HNhBzCFKXla1h4bI9Ip7G+06ckUMVMz2lCFPLsEteiuPo
	VPS9eTpBC/Egm3pTAtXUC7z42E6HUjofZP+meueWNmMlLRWuw1cTskmq9aqcJReCL/y0/JtW5yGC0
	UcQvA5bAIt8wWooySsdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeBp4-0008ON-BD; Thu, 28 May 2020 06:15:22 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeBom-0007JA-07
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 06:15:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590646500;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4HlwVLTYjSh4OXGx2V1FosENazDNDDnLDE+J78PlVsQ=;
 b=JuRxa14QgvaAg++yeiGidXF5sJ9YM3DT8ef6XMmdjuX62SQChcD0WyJ2kuQIRKqIy/7hHq
 E7Q8HimiI2DJUFeE3L5uGD6LnC5vnpcpgfjXoxY1UOM3whJ2aIFxHPBSm0ZIdi017XJj6z
 R+wa8750Ila7EsRyQYm5fpB3yiAXUc8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-292-Jyx1kD06MQi5z-b6o7S42A-1; Thu, 28 May 2020 02:14:59 -0400
X-MC-Unique: Jyx1kD06MQi5z-b6o7S42A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 23FF0100CCC0;
 Thu, 28 May 2020 06:14:58 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-130.bne.redhat.com
 [10.64.54.130])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D8E9E19D82;
 Thu, 28 May 2020 06:14:55 +0000 (UTC)
Subject: Re: [PATCH RFCv2 9/9] arm64: Support async page fault
To: Paolo Bonzini <pbonzini@redhat.com>, kvmarm@lists.cs.columbia.edu
References: <20200508032919.52147-1-gshan@redhat.com>
 <20200508032919.52147-10-gshan@redhat.com>
 <81adf013-3de7-23e6-7648-8aec821b033c@redhat.com>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <a6addc25-29af-3690-8392-efa5e8381e98@redhat.com>
Date: Thu, 28 May 2020 16:14:52 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <81adf013-3de7-23e6-7648-8aec821b033c@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_231504_156867_962665B2 
X-CRM114-Status: GOOD (  20.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: maz@kernel.org, linux-kernel@vger.kernel.org, shan.gavin@gmail.com,
 catalin.marinas@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paolo,

On 5/27/20 4:48 PM, Paolo Bonzini wrote:
> I definitely appreciate the work, but this is repeating most of the
> mistakes done in the x86 implementation.  In particular:
> 
> - the page ready signal can be done as an interrupt, rather than an
> exception.  This is because "page ready" can be handled asynchronously,
> in contrast to "page not present" which must be done on the same
> instruction that triggers it.  You can refer to the recent series from
> Vitaly Kuznetsov that switched "page ready" to an interrupt.
> 

Yeah, page ready can be handled asynchronously. I think it would be
nice for x86/arm64 to share same design. x86 has 256 vectors and it
seems 0xec is picked for the purpose. However, arm64 doesn't have so
many (interrupt/exception) vectors and PPI might be appropriate for
the purpose if I'm correct, because it has same INTD for all CPUs.
 From this point, it's similar to x86's vector. There are 16 PPIs, which
are in range of 16 to 31, and we might reserve one for this. According
to GICv3/v4 spec, 22 - 30 have been assigned.

> - the page not present is reusing the memory abort exception, and
> there's really no reason to do so.  I think it would be best if ARM
> could reserve one ESR exception code for the hypervisor.  Mark, any
> ideas how to proceed here?
> 

Well, a subclass of ESR exception code, whose DFSC (Data Fault Status
Code) is 0x34, was taken for the purpose in RFCv1. The code is IMPDEF
one and Mark suggested not to do so. I agree the page not present needs a
separately subclass of exception. With that, there will be less conflicts
and complexity. However, the question is which subclass or DFSC code I should
used for the purpose.

> - for x86 we're also thinking of initiating the page fault from the
> exception handler, rather than doing so from the hypervisor before
> injecting the exception.  If ARM leads the way here, we would do our
> best to share code when x86 does the same.
> 

Sorry, Paolo, I don't follow your idea here. Could you please provide
more details?

> - do not bother with using KVM_ASYNC_PF_SEND_ALWAYS, it's a fringe case
> that adds a lot of complexity.
> 

Yeah, I don't consider it so far.

> Also, please include me on further iterations of the series.
> 

Sure.

Thanks,
Gavin

[...]


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
