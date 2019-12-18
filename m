Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 053B812545F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 22:11:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2GUcKdhfkif5PGy+Ah7s4V7vegl56yqDHHp+XM4IyJE=; b=ijY+RD+955Td3+
	PhdeW3Kk9bpRozay86PinCqY1foH6CPW0xrkNXydcuk6HLCslPgK+FxvfjPvrGf12kUuHyiXurP3t
	Rz51ufCq/bYZ+AOK3lSYP6znYZSIEFxNTXMEfERMub1ToSRQRL1ITe92D9EmaYrPcng0monMzEbXs
	3gU/03EKWClOB90RxxeayWe15ZG7uh8/CH97H5ZR/P835rW44H9CH7pBJ0fugOdqdYEbz1UlIy1fb
	OKJsICI+7spGucDxud7/4+FiDwNWR9XZ/bAfYLH3UQ8UDa0qzkawWlAZpGGLHSuN0KoaklUYS/glS
	h3nXGjVC5q2V5CbP7c1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihgbr-0005p1-P8; Wed, 18 Dec 2019 21:11:55 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihgbd-0005oS-IN
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 21:11:42 +0000
Received: by mail-ed1-x541.google.com with SMTP id l8so2842954edw.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 13:11:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gRnTtk9JZIi/3I1W9vSxQ7/mm0z0CC1gLLvuFpfUIuI=;
 b=SDMWOZ6lQOb/VZRxOexIDEBtyrlvnLSoH+FiJyCNSXqPnRFfJ26Gn0LuQPT12y7A0c
 lnJolpTE8N8rqaP6nxeRUdAGqO8uwJW2n+hreJFUcssOvxBco69nMD89oSqbkKa74G+n
 RxXaI2ISeSqylE/bYEEcez6fS72xry1fa1bsuc66nnJeHlIXPW9zK3oEj6ybcmuOyPEq
 NwahnSFrJp2yti1ljc0Raocs3d8Cp+JYUVuQCDw0K7ZvqfD/HnPCn6/+X7BeJLcGnkgF
 z/PFEpAyrntX6BKJDaoTI9ptXkbOuQh4C81cI86Igt/lS0jNk5pVeWMmDEocZIyYQmDS
 oI4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gRnTtk9JZIi/3I1W9vSxQ7/mm0z0CC1gLLvuFpfUIuI=;
 b=CQtfVNe81nQV8oS5bpQ2SjnpUHmtL/uc4c0dDwDlyO6Dr06ufk7+/Rxz1DiQUVX0JB
 lSAPxTqr8N/3mY3qJFOdkVPes0xOdxB4xuNxzGHORtLf8CroWiWzjv4c78R/evLAHhai
 UH0i6+TNIXIWPXmKQryuBEp72Zlmqo0gGMVAs0HaEQd/QEeSwT/jlN8YRLRlQdcAO/JI
 cLchd1GqjRpS3fy5wwedj7L5+yiHirlUnq+/5Ita4JeEcpAtx9TnHBoZQIYDSD3UXo2l
 FEonf1iQzSXY3ZGdjppaIiW0LpiJLug5NMc7iHMExSWmapcy9WjlKd/u+Hjto50ah0EN
 /+cw==
X-Gm-Message-State: APjAAAU/gRmhUbOH/2mrwHTFGnpWMe8YyB8aGga9Zzg4kIafsKoSmhXs
 YuV8SFrQiPpvNYtUVj7BQwcNhyqN0ptaf79prcCy0w==
X-Google-Smtp-Source: APXvYqzCSdZ2WNjJ4q1+2kgxv6xiSMyDM5buf7JnxsPCxLvV6KwaInc5wgRm4EmYWM+VKPm9g7bHq7zLHX0kZcHWPLw=
X-Received: by 2002:aa7:d64f:: with SMTP id v15mr4964015edr.71.1576703500385; 
 Wed, 18 Dec 2019 13:11:40 -0800 (PST)
MIME-Version: 1.0
References: <20191204232058.2500117-1-pasha.tatashin@soleen.com>
 <20191204232058.2500117-3-pasha.tatashin@soleen.com>
 <b3a6359a-e7df-b47b-f50d-31b716fae191@xen.org>
In-Reply-To: <b3a6359a-e7df-b47b-f50d-31b716fae191@xen.org>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 18 Dec 2019 16:11:29 -0500
Message-ID: <CA+CK2bAw62_6UpTR6316FVE3AiNV7fH7FkF55vRjE8R4=ocd+Q@mail.gmail.com>
Subject: Re: [PATCH v4 2/6] arm/arm64/xen: use C inlines for privcmd_call
To: Julien Grall <julien@xen.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_131141_600903_07EB088D 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Catalin Marinas <catalin.marinas@arm.com>, Stefan Agner <stefan@agner.ch>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Will Deacon <will@kernel.org>,
 boris.ostrovsky@oracle.com, Sasha Levin <sashal@kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, Marc Zyngier <maz@kernel.org>,
 James Morris <jmorris@namei.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 xen-devel@lists.xenproject.org, Vladimir Murzin <vladimir.murzin@arm.com>,
 alexios.zavras@intel.com, Thomas Gleixner <tglx@linutronix.de>,
 allison@lohutok.net, jgross@suse.com, steve.capper@arm.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>,
 Andrew Cooper <andrew.cooper3@citrix.com>, info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 3:41 PM Julien Grall <julien@xen.org> wrote:
>
> Hello,
>
> On 04/12/2019 23:20, Pavel Tatashin wrote:
> > privcmd_call requires to enable access to userspace for the
> > duration of the hypercall.
> >
> > Currently, this is done via assembly macros. Change it to C
> > inlines instead.
> >
> > Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
> > Acked-by: Stefano Stabellini <sstabellini@kernel.org>
>
> Reviewed-by: Julien Grall <julien@xen.org>

Great, thank you!

Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
