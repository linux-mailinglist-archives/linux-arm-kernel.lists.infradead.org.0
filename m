Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DB816EC32
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:12:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tKo8rG7WJVuKQ+s68RpKrLKSj7pZPbEWF2lszPSc1I=; b=Qn7wWG0EFqb0tR
	f+9xzEF8j/k3YhXfJEFWZpWiPyn4ZfAarwWNPft8+0obd/zSlWRFY83b7aty/whtjiZyK2nYehIUa
	HbbM/xOvOuOPfgWd6hEN92p62Ur4vb1IoFjdOIzcPz3UDOH8UxmtVtMRzx1P9MW8KRbMlE8hKNdZP
	pXcc7hFhQ8aXfmMwGRIG5SHcz7euaXYVNQUeY2ZwFMOIKlFReY4Hq2GtQvroscbXWR0V+Cj4HJxGO
	hwAcGrNhDz4OMUBsd6Unj2iZP0hg4vR7oJvy36Hbvegt/fYJx7xGiqZEVrrWicmc4gf3F6fC+Cvum
	QgX8iyvPKZlQb2vWjH5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6dkb-0006gy-7a; Tue, 25 Feb 2020 17:12:05 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6dkS-0006gN-Ga
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 17:11:57 +0000
Received: by mail-oi1-x242.google.com with SMTP id q81so70365oig.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 09:11:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FzXxl0jc8vGuT43gzS1YGwtn9EteCh5YO/BU5ueEHLE=;
 b=cj35R8/i4KpRP2IpILGBzTKkaEAEJZaLFTKrOt7V5PP0s58g8zZxh5n2q7dkuRgNPt
 SHK7n8EpzjSjAQQUSFoPG3xO1lZMboBRCfUZXKlDhovddr1Ot29arFh+xev0qKOH8+po
 G3xWbA5uSpABJZC09nA9eHOh0kWr1whVAewVk0onPBKVMvpk1aslUDhtYFfZFWoo0ZF0
 EMvo4zfdHqLLf1cp9sIuB6DPxZIpOryShGS1F4VcidITFwPXW4hD4m4kDtm3KPV5Rew8
 6cKK2fxpizthEDORKxZnZYrvR5XwZ+/m6DLKEM5X26/dTl3vrVpCpSa5c6Ax0ud8UrvZ
 SVFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FzXxl0jc8vGuT43gzS1YGwtn9EteCh5YO/BU5ueEHLE=;
 b=PyyKl3W1YYORrJVtWjSLdqtK4LugiaYD/Q132XHnjjblIyy3fXK6MaVkSIqJacqBF2
 0krvfOXLtsuitjq1uaYl+TvBhhO6ML1FO+uJ+3iPe29GaUXMIDyDL+FQLIyDAjav/omg
 fEl/rXZCVAhsqa2I7nYtoZyX4vBaT/yVaXDUI7ImOVvTcZCqEMcQI4V1WiqUFlEoMh0i
 qhfLOe4TaiVyLsNLkfZrUhH8vYO0cNPwkPQnp7/egKxjtrS/j7hghQZvaliXMKvaLb55
 tGyrIK7pLx4x3Jtp0h8jpd+/wozeFfXgbHYA2Q0qW02MLNIHTAKwb0bsj3s51EeN/B67
 oBfQ==
X-Gm-Message-State: APjAAAXvaeIAkVbYF7s1iZ5jjhNiw4R4S4LeN1TtHWVP1JPaYdHS9XvP
 dLdEmS1nNehS/zLqwLjracTv1TjbS2juxJC6MtfYiXLS
X-Google-Smtp-Source: APXvYqx9Fva4pYcNAqXgEIkCfxFTpZCO2q6cVL49M8m8ITMFrE/oGz8iuP7T9adp+643vBJeaY/06xYWXP94oDsnJCo=
X-Received: by 2002:aca:df88:: with SMTP id w130mr3285963oig.172.1582650715502; 
 Tue, 25 Feb 2020 09:11:55 -0800 (PST)
MIME-Version: 1.0
References: <CAJ+vNU3mhhFbE6ZZTNUbnQVLAepffzba9Dsm4uwccQ_cH8RrtA@mail.gmail.com>
 <f732995ffdbcde8d0d0935d68dc0d5a2@kernel.org>
 <CAJ+vNU13-57OeaYVw0kHt=FgJT+TsM_muWM+f-H_zETeJNjTiA@mail.gmail.com>
 <6f3ce71073f38fbd4e0f7b75852a8846@kernel.org>
 <CAJ+vNU3XVNkdHXbq-KJaRecSxpPxboVW5Cx7zVEv64Gm1dt+Vg@mail.gmail.com>
 <da8f38078ef8805200b102a1d24da4ae@kernel.org>
 <20200225163507.3ob4k3wzek5gypis@rric.localdomain>
In-Reply-To: <20200225163507.3ob4k3wzek5gypis@rric.localdomain>
From: Tim Harvey <tharvey@gateworks.com>
Date: Tue, 25 Feb 2020 09:11:44 -0800
Message-ID: <CAJ+vNU0jF65=whGtgLhJuVdtTW4gvgo4gfhcQ1n1jJuABa9MUw@mail.gmail.com>
Subject: Re: ARM64_SW_TTBR0_PAN enabled causing hangs on OcteonTX
To: Robert Richter <rrichter@marvell.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_091156_548645_D4D842A2 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 Sunil Goutham <sgoutham@marvell.com>, linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 8:35 AM Robert Richter <rrichter@marvell.com> wrote:
>
> Marc,
>
> On 25.02.20 16:27:41, Marc Zyngier wrote:
> > On 2020-02-25 16:13, Tim Harvey wrote:
>
> > > That does enable the erratum, disable KPTI and boot properly but I
> > > misread the erratum and it shouldn't be needed for T81 pass 1.2... the
> > > erratum is documented only needed for pass 1.0.
> >
> > Can you then remove the patch *and* disable KPTI?
> >
> > TX1 is broken beyond recognition and KPTI is known to explode on this HW
> > (which is why we disable KPTI on it). We always attributed it to this
> > erratum,
> > but in the absence of any help from Cavium to identify the problem, we just
> > keyed it on that.
> >
> > *IF* this HW is indeed unaffected by it, then it is probably the mix of
> > KPTI and SWPAN that triggers the issue. If my suspicion is correct, you'll
> > need to have a chat with Cavium/Marvell to understand what is happening
> > there.
>
> I checked the docs and Tim is right, this should be only visible on
> pass 1.0. Thus, the rev range to enable the workaround as implemented
> upstream should be ok. I have asked hw folks regarding this.
>

Robert,

Thank you - please keep me updated so we can get this resolved
upstream in a proper fashion. The Marvell SDK currently supports Linux
4.14 where you can easily reproduce this. I don't have any CN81XX
boards handy - our boards all have CN80XX (we use
CN8020/CN8021/CN8030/CN8031) which apparently Marvell is all but
dropping support for as the current SDK produces boot firmware (BDK
boot.bin from SDK won't even fit into the smaller CN80XX L2 cache
without hacking the code up).

Best Regards,

Tim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
