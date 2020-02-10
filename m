Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDBA157ECA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 16:32:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+sf07PakUvEEj9j0Ny54HeAZ3FR+U48UrY1qFBUQbVk=; b=FdapQkJu/dO6uN
	0zvGNqKszpV/B5X2TsiSDzSblvq6MqLfgs2mJE+HcSk96azkoDayTPIQD8bdGIX3CGyMNAwSiPHWl
	HhW8greUzU98jPMSaHwmRNm/1/GxkcudbmRSMY3SCU2XvS1YvcMlzeZTmyubCut4rpCHig2PosxEi
	xmkrC7OhHpsTgsohgOT4nt9iaPZYVDnfa2VgthuTEODZk+yE9VNaF8JrTmxtuiyQU8V55H81h25+f
	BQh+su9QsYcXVPJI5pte5rn7hxw1BfkCYJHP1Fl6/3A70WKaNMVVIYQsnnwINEMbLPDjblebMaxOh
	e2ekjQAJ/8dSMRuHhlag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1B2g-0000DS-Pv; Mon, 10 Feb 2020 15:32:10 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1B2X-0000Ce-BY
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 15:32:02 +0000
Received: by mail-il1-x144.google.com with SMTP id i7so546028ilr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 07:32:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rJKu0curXNDiIv07BXA7ZVrF2bICC0+Hs2nUqvpWWBE=;
 b=CAXc09ubXS9ZFxUmd/SbvlfA3zsu6fw84nPAia6Y37IBnkkixzVnQQ1DvPc4gVvSDy
 W6Uq5WrNvmHIM9pR9ez7FYUhIv6XdEX9GEwY2rJl2vY33gTufoWhbjwUcACu+BIPxG5G
 bAgK1f8xNqN/VhPHCmGFF+SDEbTzUji36h+YGdbhQmDJdX3HrBJ3fQ7RFH6TSmczTUaI
 l8Lh7ZdUVtAyloybvuqg1r1VSaZqNUt/8vLmi/SyTQGmfdOyC29Tgxf2X4u9kYNOUF8c
 D8wdvnGGssR7+hgN4BP19DR9Am1ylWfvoMD4pA/mEq3/e3yQTNmVwZHuB6JEdy2D62Br
 iXZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rJKu0curXNDiIv07BXA7ZVrF2bICC0+Hs2nUqvpWWBE=;
 b=TRaGEVeM9eOIFKqlPdjXbai+5J2YXPif4oksKiHq9Xx9SHAycX+mnrnyrTsUwWxVrE
 ys/fhV77iNIfefVl8CqfZU5B64kMnYlnXqPxA4kzghvyUIyvt26veYMuqGIIcpEiw3N6
 +oPEuuU7kNM+bIwwpQRkguFiMPg/xnlYrVvpilvVA9BHbFCOgQv4duec4u9d1Updfi1g
 rFBNPIc24rK5eW2OO5y1X4+wJn7ibRjnQnkHsjiDJrM7+3EkKoI4pfpHVInlb2sjdBez
 prp2DjCJ9Ue9z6XSytyMnosDPPD8FGHFyZwixAL5mFaYlhkqS+VkEg2MB2QvQVNRb7kD
 kIhA==
X-Gm-Message-State: APjAAAUKXwymAH28uq+FKtYm7aosaMaWhTRr/xA5gYBPmNxQ8NXDzvjc
 ODFHoLTw+Qj3HscPMfGElWpAIa0mTsVab0PZngkcFA==
X-Google-Smtp-Source: APXvYqxYx29kgSFceIBbFGWRItTIbjo6m8Fbpp5JsPt65w5bFXVn9ceiixXHhUS3KHfAZHhdKoQKoj4ONXPF4oZheGk=
X-Received: by 2002:a92:9f1a:: with SMTP id u26mr1986348ili.72.1581348719752; 
 Mon, 10 Feb 2020 07:31:59 -0800 (PST)
MIME-Version: 1.0
References: <20200210141324.21090-1-maz@kernel.org>
In-Reply-To: <20200210141324.21090-1-maz@kernel.org>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 10 Feb 2020 16:21:42 +0100
Message-ID: <CAOesGMhHkez-5vxwWuzXc2Rm=dYYWjMX9C8AewVy9GDWuZcwMw@mail.gmail.com>
Subject: Re: [RFC PATCH 0/5] Removing support for 32bit KVM/arm host
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_073201_398360_813237BA 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anders Berg <anders.berg@lsi.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 Russell King <linux@arm.linux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Quentin Perret <qperret@google.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 3:13 PM Marc Zyngier <maz@kernel.org> wrote:
>
> KVM/arm was merged just over 7 years ago, and has lived a very quiet
> life so far. It mostly works if you're prepared to deal with its
> limitations, it has been a good prototype for the arm64 version,
> but it suffers a few problems:
>
> - It is incomplete (no debug support, no PMU)
> - It hasn't followed any of the architectural evolutions
> - It has zero users (I don't count myself here)
> - It is more and more getting in the way of new arm64 developments
>
> So here it is: unless someone screams and shows that they rely on
> KVM/arm to be maintained upsteam, I'll remove 32bit host support
> form the tree. One of the reasons that makes me confident nobody is
> using it is that I never receive *any* bug report. Yes, it is perfect.
> But if you depend on KVM/arm being available in mainline, please shout.
>
> To reiterate: 32bit guest support for arm64 stays, of course. Only
> 32bit host goes. Once this is merged, I plan to move virt/kvm/arm to
> arm64, and cleanup all the now unnecessary abstractions.
>
> The patches have been generated with the -D option to avoid spamming
> everyone with huge diffs, and there is a kvm-arm/goodbye branch in
> my kernel.org repository.
>
> Marc Zyngier (5):
>   arm: Unplug KVM from the build system
>   arm: Remove KVM from config files
>   arm: Remove 32bit KVM host support
>   arm: Remove HYP/Stage-2 page-table support
>   arm: Remove GICv3 vgic compatibility macros

Since I'm generally happy to drop legacy code that has no users, with
the "if there are any significant users that speak up, I'll revoke my
support" caveat:

Acked-by: Olof Johansson <olof@lixom.net>


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
