Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5339816A741
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 14:24:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LsULIpIHAKGrtTPWy/d5nj49NNg+WLYa/jpMTc3dMKI=; b=ZWgP4leIYQ/j5R
	GBCrbpnjOkoAcbMGU+1w1tcjauAN9OyVPi+IM2o4nlV6tSdQO++4MJURl4FiicAMy00D/oFXiRTZg
	2K/ZYx8a8W06iqRcl62ls/1mLSA79ko9/1uxueLbMyfistOsC1AYbcggyoAoECb2WkMU2+PL0FLHj
	X/BefYPJ/Z0WbOpZ3E1TcuFdZ5PzPJO5rsIuq93wCIeZ+CitlxjpNmGKAupR/uC+PfQweeFvjBDrL
	cHffvama1flmcGgBPmoZLxfy2igenxrAonKgMx1CmVv9OR3J9XDbNx4ludXpGzpYQFNTvBHVnuZk4
	nEKEnp3BhtPhoMMLyxGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Dif-0002qA-5X; Mon, 24 Feb 2020 13:24:21 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6DiT-0002pm-71
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 13:24:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582550647;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AQSjOCN08tuHWwFl/AFZaF1M6yIcbXibQI3Uq0KWdfM=;
 b=AtHmtCyjiE76EpWaqOfZ+tWC+l8VwlEJoAt/cBiAul4VpjiyZLrJSscDQwuFT7ZrZqWKZt
 PSNufuLAqKrdsYDkZZ6u1mQz1GI2EbSU09VYR6azXQQu8WqA8By8O8Kc/tkUUMs5zUeABy
 ZcHGHSmOkuRfjGdX38EmiLLl2+gxX/Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-25-vny8QQvLOrO2Y37m0onvfA-1; Mon, 24 Feb 2020 08:22:07 -0500
X-MC-Unique: vny8QQvLOrO2Y37m0onvfA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F2DDC1005F6C;
 Mon, 24 Feb 2020 13:22:04 +0000 (UTC)
Received: from kamzik.brq.redhat.com (unknown [10.43.2.160])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 21E4C5C554;
 Mon, 24 Feb 2020 13:22:02 +0000 (UTC)
Date: Mon, 24 Feb 2020 14:22:00 +0100
From: Andrew Jones <drjones@redhat.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 0/3] KVM: arm64: Ask the compiler to __always_inline
 functions used by KVM at HYP
Message-ID: <20200224132200.ho7hgmnah2zfh27x@kamzik.brq.redhat.com>
References: <20200220165839.256881-1-james.morse@arm.com>
 <cb56f509ea0a4a9e1809af76f319daa2@kernel.org>
MIME-Version: 1.0
In-Reply-To: <cb56f509ea0a4a9e1809af76f319daa2@kernel.org>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_052409_331496_86792879 
X-CRM114-Status: GOOD (  17.19  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 12:55:16PM +0000, Marc Zyngier wrote:
> Hi James,
> 
> On 2020-02-20 16:58, James Morse wrote:
> > Hello!
> > 
> > It turns out KVM relies on the inline hint being honoured by the
> > compiler
> > in quite a few more places than expected. Something about the Shadow
> > Call
> > Stack support[0] causes the compiler to avoid inline-ing and to place
> > these functions outside the __hyp_text. This ruins KVM's day.
> > 
> > Add the simon-says __always_inline annotation to all the static
> > inlines that KVM calls from HYP code.
> > 
> > This series based on v5.6-rc2.
> 
> Many thanks for going through all this.
> 
> I'm happy to take it if Catalin or Will ack the arm64 patches.
> It case we decide to go the other way around:
> 
> Acked-by: Marc Zyngier <maz@kernel.org>
> 
> One thing I'd like to look into though is a compile-time check that
> nothing in the hyp_text section has a reference to a non-hyp_text
> symbol.
> 
> We already have checks around non-init symbols pointing to init symbols,
> and I was wondering if we could reuse this for fun and profit...

Hi Marc,

I recall that you've suggested that before, and I even tried it around
that time [*]. I wasn't happy enough with it to post a proper patch
though.

[*] https://lists.cs.columbia.edu/pipermail/kvmarm/2018-May/031629.html

Thanks,
drew

> 
> Thanks,
> 
>         M.
> -- 
> Jazz is not dead. It just smells funny...
> _______________________________________________
> kvmarm mailing list
> kvmarm@lists.cs.columbia.edu
> https://lists.cs.columbia.edu/mailman/listinfo/kvmarm
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
