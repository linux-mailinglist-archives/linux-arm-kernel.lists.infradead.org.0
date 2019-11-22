Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 037DA105DC8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 01:39:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z0JgaFoe6/0ng7wgJPFhiUmfs/tmIzvZST95Lt6vyhY=; b=Pppdvtz2FOdhZH
	WJrTdHFvnKm3vQHTLWYxjTuVB9AYi7r/yGrOgd1sLMTu5rr5fEZVZ3fBNMvp+rZ0NPX8vQ3/uBypT
	V7IicvVH8dnMBU3xtHIMcQt+YHpNCtvLe/pLmP7Qgx2xG+hML0qsCnHLQum/Tnfkb/exVex3RJUyR
	oM4tWYI6amwe/UWsTJ7+W/MrM1ZKacugv3sN0R3nRd8n8L/ZsHyZBN4B+J3LaZtJkDb2Kn8/QmyaO
	b5M4E6Kou7CtWGfP++pcsaPyfWuOzdZFE8tFhFQE56Ys5mNKjmkBwe4yzPEuHXw/uoxoLvh05tEOn
	l1eyCu8Lxz98mWXJNdvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXwzE-00062I-3y; Fri, 22 Nov 2019 00:39:48 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXwz2-00060M-OM
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 00:39:37 +0000
Received: by mail-ed1-x544.google.com with SMTP id k14so4457847eds.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 16:39:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oHj++TIMg4Ens0F3aJfk7j7E8iHr52gJeFlshV/ISiw=;
 b=YJIHNZEUFsgL4TpJs14+fbdITnHvxz0M9LOs/Dgy5BnL6M72oTwQRtOfHbO+T05ufJ
 1/h2bu5CbngwpOk9xEAXUGoL47+0wPGVl8kzdVFg01KrkZWwGTKp9iyOPCAMdvcn1fFt
 OMdq3ceEnzKogu7+hA4aBhv8w2Jc3Ofz5LZnK7luVq1GrJUQnU/fVoBM6h3G2vQprGJO
 dfL6DlR4mjWJ8D5CyC68cL6TvpB2mRxeylMzeU5xftSuNDAa8J9opSHNTrz+YLpFlpWc
 KfWihhOYnN6H7SyWReveUP0uLF3kZEWSuZ5asTyXPmCHwKTW3sgqpxJeiC1yudV73OrE
 HZlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oHj++TIMg4Ens0F3aJfk7j7E8iHr52gJeFlshV/ISiw=;
 b=ofjklaunTZht3Ga0fo2B9QALw1kHRr/2Al04Fihb8zeUz6F39VpAN9boYJfbes9hzh
 Ck9XUSBsMwR0VdDHGAmFfh9YspvqXIhS2DlzjUv7ycHSzVXhq/NF8vtgJ6l3Tcq9VmIo
 dKqBlNqYzrH/87tUNNg7Q5ZWP+UA4axlXMuCOc2HKX46jx1tmORw8pdFNGCNiVGGAjGv
 gUzTeL+I69VGfdMo2PSJf/9XeW8UzeP0WewXuUc7G+hEzjtPIYYIKdloqtdOVF5OzI1R
 V64ovqFlRSyP1LvSrxVF6hH11qe7tzDTkKNs0sJJeRrkD1o4FO+cZsfXhztXEUx9rSmK
 kPkg==
X-Gm-Message-State: APjAAAVZUcDcPGiZSVS/8fWWJ5f4iNtOts8+GuL+gDu6a8DoWRhqqycT
 u9GLmezGEXQ170FAH7sfP0c4hRj0Ae6/gupOMS0CTA==
X-Google-Smtp-Source: APXvYqwrtfAyjGP3wgLyPbLQNwjFVQfaBija5h4rX527rHpvOeFUrxNZS7l2iyVXlFryl9sSPZTcyswY1QHfRpt/xos=
X-Received: by 2002:a17:906:b30c:: with SMTP id
 n12mr17585915ejz.96.1574383173304; 
 Thu, 21 Nov 2019 16:39:33 -0800 (PST)
MIME-Version: 1.0
References: <20191121184805.414758-1-pasha.tatashin@soleen.com>
 <20191121184805.414758-2-pasha.tatashin@soleen.com>
 <20191122002258.GD25745@shell.armlinux.org.uk>
 <CA+CK2bDtADA2eVwJAUEPhpic8vXWegh8yLjo6Q6WmXZDxAfJpA@mail.gmail.com>
 <20191122003403.GG25745@shell.armlinux.org.uk>
 <20191122003524.GH25745@shell.armlinux.org.uk>
In-Reply-To: <20191122003524.GH25745@shell.armlinux.org.uk>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Thu, 21 Nov 2019 19:39:22 -0500
Message-ID: <CA+CK2bAm0r8zLMz_gdq30zF8io5RzVnbXFSV9NkyT_uUxKJwLA@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm/arm64/xen: use C inlines for privcmd_call
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_163936_791793_1B40394D 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, stefan@agner.ch,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Sasha Levin <sashal@kernel.org>,
 sstabellini@kernel.org, James Morris <jmorris@namei.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 xen-devel@lists.xenproject.org, Vladimir Murzin <vladimir.murzin@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, alexios.zavras@intel.com,
 boris.ostrovsky@oracle.com, allison@lohutok.net, jgross@suse.com,
 steve.capper@arm.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>,
 info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > That may be, but be very careful that you only use them in ARMv7-only
> > code.  Using them elsewhere is unsafe as the domain register is used
> > for other purposes, and merely blatting over it (as your
> > uaccess_enable and uaccess_disable functions do) is unsafe.
>
> In fact, I'll turn that into a bit more than a suggestion.  I'll make
> it a NAK on adding them to 32-bit ARM.
>

That's fine, and I also did not want to change ARM 32-bit. But, do you
have a suggestion how differentiate between arm64 and arm in
include/xen/arm/hypercall.h without ugly ifdefs?

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
