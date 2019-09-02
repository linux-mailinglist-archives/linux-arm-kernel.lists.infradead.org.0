Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B38A51C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 10:34:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rMwN9dhgdFdPM/tJhXDmJxG3V3Pgd4l1x9IiChNYjbo=; b=SAyBLI8fF3OBXI
	PRK76nHg3UBw/wcpb80MCVgYfkGFXi/SHWD3TISvpl4CMcSXe/Yd8GDWY+SMxI3QNSHwRhJLbyKXH
	E3bj9KpVSytH9C+jxQH7Y9cAwYw9MDjlm9QalzJx4PppZBrUj+gm3/icn+McOsMFNyRo2MoyBYpWp
	rLhzfjtmD7r8XHshN02kdeYX8GWfCQ19LPBpUwGv120fp2uFCDz+7P7mf0lv/4LB5ueNMn6k0ypp+
	A5azx9TXaAfoQ8PEWsj4T1g7YdMLY/aK0qUQdOo4q9JkgNVxBrpqdd/FBKX7Y3k/5oWaYrXhuGs/N
	Di/yVLf2JT4Qnw0rpO1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4hnE-0001zK-OU; Mon, 02 Sep 2019 08:34:32 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4hmq-0001yt-4A
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 08:34:09 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5E2C237E79;
 Mon,  2 Sep 2019 08:34:07 +0000 (UTC)
Received: from kamzik.brq.redhat.com (unknown [10.43.2.160])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CC9681000337;
 Mon,  2 Sep 2019 08:34:05 +0000 (UTC)
Date: Mon, 2 Sep 2019 10:34:03 +0200
From: Andrew Jones <drjones@redhat.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 0/3] arm64: KVM: Kiss hyp_alternate_select() goodbye
Message-ID: <20190902083403.ujiilcurhzrbc4ph@kamzik.brq.redhat.com>
References: <20190901211237.11673-1-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190901211237.11673-1-maz@kernel.org>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Mon, 02 Sep 2019 08:34:07 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_013408_185499_8ED9BA20 
X-CRM114-Status: GOOD (  16.69  )
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 01, 2019 at 10:12:34PM +0100, Marc Zyngier wrote:
> hyp_alternate_select() is a leftover from the my second attempt at
> supporting VHE (the first one was never merged, thankfully), and is
> now an irrelevant relic. It was a way to patch function pointers
> without having to dereference memory, a bit like static keys for
> function calls.
> 
> Lovely idea, but since Christoffer mostly separated the VHE and !VHE
> hypervisor paths, most of the uses of hyp_alternate_select() are
> gone. What is left is two instances that are better replaced by
> already existing static keys. One of the instances becomes
> cpus_have_const_cap(), and the rest is a light sprinkling of
> has_vhe().
> 
> So off it goes.
> 
> Marc Zyngier (3):
>   arm64: KVM: Drop hyp_alternate_select for checking for
>     ARM64_WORKAROUND_834220
>   arm64: KVM: Replace hyp_alternate_select with has_vhe()
>   arm64: KVM: Kill hyp_alternate_select()
> 
>  arch/arm64/include/asm/kvm_hyp.h | 24 ---------------------
>  arch/arm64/kvm/hyp/switch.c      | 17 ++-------------
>  arch/arm64/kvm/hyp/tlb.c         | 36 +++++++++++++++++++-------------
>  3 files changed, 24 insertions(+), 53 deletions(-)
> 
> -- 
> 2.20.1
>

Yay! The 'func()(...)' stuff always gave me cross-eyes.

Reviewed-by: Andrew Jones <drjones@redhat.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
