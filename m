Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7E915348A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 16:47:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lzcttCqKMvQC7WNmP6vTWyqatVHpMl5j0AEVPIkx6JA=; b=f6G19mjrGO3vfG
	fD5nbFKFrvv+03ifRh0olHQVZ3H9n4I3HwcJoqcAz9TavE+mqg84SKefRf0UkPJhJO50owg3e7HVh
	0EjEFoUpBfu4tT2UAl14MCzUSeE3qVoETpOXXU1WETpNRBOMa67iV+b9HgEWUcYOkj05WzPLtOZYn
	W5TXzd0dCf9WcZi4s2GpsKBv5L8F/3wWwSm2N/EOF0SwyRhAkrLXgaPvCWOiTEeXch2r0JeaTELdl
	cn8omgNC85YRoTtlL+hnmZqP1Z28BnHOJm62emU+G07ckdwxfyqsreLk9WVRty6E4IZP30UyJHGZ1
	abQCoa1H4Ln67cpcLuKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izMtl-0004G1-3x; Wed, 05 Feb 2020 15:47:29 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izMtd-0004FX-UE
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 15:47:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580917638;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oFsmPcTmpKK74hHiUMCVVaDBnbXf1XdgHTJLxT7DmFI=;
 b=K1gEwpxekmj1HubD8iHTJ/dIENFoKlQPcXh8jkIJLvcB/RxmHFbnaNb6tFksHvgsD63EOo
 fUTCPQpopSzMgJ+ay7Z95dULqmpz7dv7Ea/Unq+xbarA681/gD1oeAC/HTjBJuzKiBnDEh
 rq6UWtEBm6JMYrzBImFvXLNIj8aFMEM=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-165-K9xVjS_ZM9GD4Kk_XdsUsg-1; Wed, 05 Feb 2020 10:47:02 -0500
Received: by mail-qk1-f198.google.com with SMTP id c206so1540489qkg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 07:47:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7nlVGeHpp9SUIG8wrpMffu8Rdrv8R00fvHa/mYaOU0g=;
 b=FIas6Dlh7/1T58OyxGW7KfD5rOiTg1z/e1Y+Y5rOzfrCSB51BZg1Qg54Il+E3m5xxf
 zNKz+62f9qTtf/dIkAw6ReCwjWgk358LAwbEWHPKwQ7VuPKAUK0tzsN/3IWZ/BrqzzbH
 xYkL+yH4jP1rgGwEoKDx7oZ1eTnzhQQK47BgshoaOtMq5oYs7j9H8pXNAl4Uku4k3jVu
 9dOfxTVh8sUNQ9K3do+/tK6EvXhkeeIlP85EF2tOhVZixIpYEmPrKhR8Jc8vDrVHbW2Z
 LcvvHC1q1bX1NZNW72htcbseb6An8ABL+H7YvLMGjeowjeSeiRtkmN1P6aXHVfhJnqoi
 AqzA==
X-Gm-Message-State: APjAAAUnJqxuFdPh12MUmlkL1Z/41tjD/mjB1hwj+INrDFj/ItZjc78U
 JYm7Z9L3vfiErq2a3/cAeBOmyv+Mm6CO5dj7/KxdQLr6TEHDfyMctBlS5H/JP+gzQz8AuTRcSkA
 3mQR6gucVp0IgHOkgjfAiPCn29GHOigt7Ens=
X-Received: by 2002:ac8:43c1:: with SMTP id w1mr33141984qtn.156.1580917622333; 
 Wed, 05 Feb 2020 07:47:02 -0800 (PST)
X-Google-Smtp-Source: APXvYqyR3gtl04B5/ivAmSsxK+0IHBbTQlobHqHrH3aYmEjs8G/RJ/srgXoWDoXwLSsFiE3ITI4dCw==
X-Received: by 2002:ac8:43c1:: with SMTP id w1mr33141949qtn.156.1580917622035; 
 Wed, 05 Feb 2020 07:47:02 -0800 (PST)
Received: from dev.jcline.org ([136.56.87.133])
 by smtp.gmail.com with ESMTPSA id h7sm6394qke.30.2020.02.05.07.47.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2020 07:47:01 -0800 (PST)
Date: Wed, 5 Feb 2020 10:46:59 -0500
From: Jeremy Cline <jcline@redhat.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] KVM: arm/arm64: Fix up includes for trace.h
Message-ID: <20200205154659.GA83976@dev.jcline.org>
References: <20200205134146.82678-1-jcline@redhat.com>
 <e3446187abb20eb2a95eae1f51b36ca1@kernel.org>
MIME-Version: 1.0
In-Reply-To: <e3446187abb20eb2a95eae1f51b36ca1@kernel.org>
X-MC-Unique: K9xVjS_ZM9GD4Kk_XdsUsg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_074722_048066_EDAE89A3 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 05, 2020 at 03:18:05PM +0000, Marc Zyngier wrote:
> On 2020-02-05 13:41, Jeremy Cline wrote:
> > Fedora kernel builds on armv7hl began failing recently because
> > kvm_arm_exception_type and kvm_arm_exception_class were undeclared in
> > trace.h. Add the missing include.
> > 
> > Signed-off-by: Jeremy Cline <jcline@redhat.com>
> > ---
> > 
> > I've not dug very deeply into what exactly changed between commit
> > b3a608222336 (the last build that succeeded) and commit 14cd0bd04907,
> > but my guess was commit 0e20f5e25556 ("KVM: arm/arm64: Cleanup MMIO
> > handling").
> > 
> > Fedora's build config is available at
> > https://src.fedoraproject.org/rpms/kernel/blob/master/f/kernel-armv7hl-fedora.config
> 
> This config doesn't have KVM enabled.
> 

Whoops, I did indeed mean
https://src.fedoraproject.org/rpms/kernel/blob/master/f/kernel-armv7hl-lpae-fedora.config.
Sorry about that.

> > 
> >  virt/kvm/arm/trace.h | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/virt/kvm/arm/trace.h b/virt/kvm/arm/trace.h
> > index 204d210d01c2..cc94ccc68821 100644
> > --- a/virt/kvm/arm/trace.h
> > +++ b/virt/kvm/arm/trace.h
> > @@ -4,6 +4,7 @@
> > 
> >  #include <kvm/arm_arch_timer.h>
> >  #include <linux/tracepoint.h>
> > +#include <asm/kvm_arm.h>
> > 
> >  #undef TRACE_SYSTEM
> >  #define TRACE_SYSTEM kvm
> 
> After enabling KVM in the above config (which requires LPAE), I've managed
> to reproduce
> the problem.
> 
> Fix now queued, thanks.
> 

Thanks!

- Jeremy


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
