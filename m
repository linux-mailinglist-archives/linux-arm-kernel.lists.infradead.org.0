Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D861010506
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 06:58:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NV/je7BQLxLUbBlekXs7ZTpZ9L6quLJhT/JortFcTcs=; b=hpwe/uOiQv2XlP
	SQGF9wmgbpiTXo2f4WsDz7i5cyzBmagP2gvpJlg72mBs9R4LrVDXPPAbQ32dhdqgTzLkn6Rb7Mt+v
	9HvDMEe6Mb2cZDE8gdjTpw4jT/XilN6qdU6Nf6QuL0G0xa+0NGizCxHzCn2A8Epn4Es63XaycDTI/
	rq3/zN+HW3NBm33OaGuFQ0VgQJYxzdAYruwH+s8HaC5tZpSo/4f27eGpDpK4o82OrlPGKy+t+klkZ
	aV3NQFkIb/9Bd08gNGVGCV1eg3DpdHAJoMgfHuK3Px67wW82yC4Ap3XNZHDeQPjFH0OBAQMc+3VBt
	fIUYmAzClgRB6BgBz54w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLhJh-0006Aq-RZ; Wed, 01 May 2019 04:58:01 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLhJa-0006AS-Ar
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 04:57:55 +0000
Received: by mail-vs1-xe42.google.com with SMTP id b74so6202726vsd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 21:57:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:sender:from:date:message-id
 :subject:to:cc;
 bh=P35e7lRyscrNykmykjGORtzoqMJ17nJ+ZLBUjZaf8W8=;
 b=jk3uZai79rictqwRVoY5gVykyQX0rWp6GdiDrCKWKzfZ4vsvSxpOEhFSoxnRtgJDeU
 q5Opb8dbwtHsOX53YvBfMezNSGEQ8MqWkffC4vtjqTAhKh+nHxjrn/xZn+yydAKDkEw6
 Z1J9ctz4jOk0r6sDeSQZLs8PLgc44OyDzKxpmCnWI2ADv1+madbSWR9yp4THp9lQcF+Z
 eNte0ic17ursuxPZekHtbHpl88XHHwzCYFsq/q66mrEKR+w6V6K/05AFdpCvSLNW4Gel
 zRe9VzOz52AUx/XwQLJvDHJkczICRgSunDQtDqa9ib2s9I+77V+fdUMMXTzEJrXO5oS8
 /eCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:sender:from
 :date:message-id:subject:to:cc;
 bh=P35e7lRyscrNykmykjGORtzoqMJ17nJ+ZLBUjZaf8W8=;
 b=Spr8jiV+nt2hznK8lJaOtVV1AXv4p+GxW7xtYIIK1/hrvmP6ixarUAOrVPm8OPshu4
 tuCG7d4zK4pfm1fE6VkE3dP3OzrB77n2LiuLxmynBfmiroz3WteHvpWkeESB2FCHuxtc
 MNjztykTnlfcRv4VzfUCqwcgFzQ7rRUYFK1dlDYrZ4BHCvtdZc//Q3lrCuQgXceNVTmQ
 iRxJ+yq9rQE7puenT+nC/y7ui5XFScqbUkvR+5fhu/Xb2wB9Ci75QA9mnua4T5s2WQWx
 gCC8XxF76AfZ97Dd7LJpvTNpWXnWUEWdSu3r0CIPUrO+GFgPp8ugQf1XFS8t9qfwdzBO
 p5Uw==
X-Gm-Message-State: APjAAAX9cvbiRbj4be/bcZVhvBQ92tF5V/SzeTzZffD1ZSAwec+egF/o
 JfblxumUsyJYHVQXdoTGq68rde3YOgDamP6OFgILIg==
X-Google-Smtp-Source: APXvYqzEnB4DoeQEjRUTP7Rrb9UtV8lh5NMof5rUud2cq+tj+Q8YHXzKJgoWfF0WXAVfSYHdvgCImZvT9GBs+RmBqoM=
X-Received: by 2002:a05:6102:119:: with SMTP id
 z25mr9470996vsq.145.1556686672284; 
 Tue, 30 Apr 2019 21:57:52 -0700 (PDT)
MIME-Version: 1.0
References: <1556620535-10060-1-git-send-email-arunks@codeaurora.org>
 <20190430110624.GB16204@fuggles.cambridge.arm.com>
In-Reply-To: <20190430110624.GB16204@fuggles.cambridge.arm.com>
X-Google-Sender-Delegation: getarunks@gmail.com
From: Arun KS <arunks.linux@gmail.com>
Date: Wed, 1 May 2019 10:27:41 +0530
X-Google-Sender-Auth: p5VwC2BvVDMs0Em29d4QJN7nPsQ
Message-ID: <CAKZGPAOprkJfBXeMqx+ipVh4xqMUCbZdoS=mjBzLO9=LQniU9A@mail.gmail.com>
Subject: Re: arm64: Fix size of __early_cpu_boot_status
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_215754_407688_28D4BF25 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arunks.linux[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Steve Capper <steve.capper@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Jun Yao <yaojun8558363@gmail.com>, Arun KS <arunks@codeaurora.org>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 4:39 PM Will Deacon <will.deacon@arm.com> wrote:
>
> On Tue, Apr 30, 2019 at 04:05:04PM +0530, Arun KS wrote:
> > __early_cpu_boot_status is of type long. Use quad
> > assembler directive to allocate proper size.
> >
> > Signed-off-by: Arun KS <arunks@codeaurora.org>
> > ---
> >  arch/arm64/kernel/head.S | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
> > index eecf792..115f332 100644
> > --- a/arch/arm64/kernel/head.S
> > +++ b/arch/arm64/kernel/head.S
> > @@ -684,7 +684,7 @@ ENTRY(__boot_cpu_mode)
> >   * with MMU turned off.
> >   */
> >  ENTRY(__early_cpu_boot_status)
> > -     .long   0
> > +     .quad   0
>
> Yikes. How did you spot this? Did we end up corrupting an adjacent variable,
> or does the alignment in the linker script save us in practice?

Rite now there is no adjacent variable. But I was adding one and it
was getting corrupted.

Regards,
Arun
>
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
