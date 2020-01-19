Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D431141AE1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 02:25:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4q1IpAzguP77Ktu9nUbSXF3p3CRbcjw2X6ipJAxSAUk=; b=n1xF2o/ZNjmKpe
	FgVVdnCX2G0ii4pH2j/8saz/rAVCGFRDvzNJVUm98LhLROIeCrVIHXvIi5U/llfRqSwT5iuMe3Jsg
	/mCBL8YYOEDBc/TAwuQ7OG3Mb2A3itpbLluzA8IqQ4VKz1qxzs/SMj19tGKHyZX/1iS/FnMhRghH6
	0c6n9Tcps+lNQa7n/mOjpKMNpFey3mLnoQRGEa1Wf9QOMKYMkGqe7fWjAj/fNDrhtEoo9MeyKfpGI
	jvx7LDrvg8zoyLa6j03YOwV6OGfH6cw5MXPIHLjRVUcjO7Ns1318JW3l8UnPADCYRFMtB2JDeIle/
	RphaqVjTBKa2q9+83Spg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iszKn-0002sh-7d; Sun, 19 Jan 2020 01:25:01 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iszKd-0002qQ-UT
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 01:24:55 +0000
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com
 [209.85.222.46]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id 00J1OcTi015175
 for <linux-arm-kernel@lists.infradead.org>; Sun, 19 Jan 2020 10:24:38 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 00J1OcTi015175
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1579397079;
 bh=Jqo96td/ObWYQIbBXemOoirCWsxHweKiuuiVKjHEhbs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ktBKhBGY7/AO421S1PPiqoqApEJgEhGfpDay+7kocfKoh+XYauiR2oNthuKEqY/yE
 nPFGdqnlkx/eEr5nFBuqMcuXZet/hlwtcPI0MtMWTnMdSWzW5dupMfHZ3ZMUKOPCep
 FlqSTdTtgWPPiSS+7wmVSS50Il9dHByzl9cFJmRXA8yiLBf3wJUI4zEI4TfxOgYmtp
 RqIHpZys/h+EwTURU6AWh6gDBSck1lczcJWVphkPihK1lf/VgzcoR2kP5kPyLxO3MN
 kNfCqQvVNEHFy+M+P51b8H6P89Qm85MzYVwNCVFf6V88PdmW6CCQECX/xv1UOryNNi
 doC/w1Nme93hA==
X-Nifty-SrcIP: [209.85.222.46]
Received: by mail-ua1-f46.google.com with SMTP id y3so10316416uae.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Jan 2020 17:24:38 -0800 (PST)
X-Gm-Message-State: APjAAAUFzkEL+dQ4XOQITMC+gqxXImjfnDJyY5fHf6HNO/WQk31B5e3l
 O4nx0JL3ANA+aNKAx1P4NQcNLMwYBn1jSy7dsRg=
X-Google-Smtp-Source: APXvYqyXaHIRtN2qaDHZBVtF6xp/fQ55KREgbCsXUHTfL4JL2dpAskq6hijX/0Y7xBawJuy3ggiPQhoJLZ3umHondYw=
X-Received: by 2002:ab0:14ea:: with SMTP id f39mr25531225uae.40.1579397077609; 
 Sat, 18 Jan 2020 17:24:37 -0800 (PST)
MIME-Version: 1.0
References: <20191204044950.10418-1-masahiroy@kernel.org>
 <20200117221534.GR25745@shell.armlinux.org.uk>
In-Reply-To: <20200117221534.GR25745@shell.armlinux.org.uk>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sun, 19 Jan 2020 10:24:01 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR2zdOLyoJRJpYVt0C+TqQ172z32OJMQi5tHKP6=0G=WA@mail.gmail.com>
Message-ID: <CAK7LNAR2zdOLyoJRJpYVt0C+TqQ172z32OJMQi5tHKP6=0G=WA@mail.gmail.com>
Subject: Re: [PATCH] ARM: decompressor: simplify libfdt builds
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_172452_214063_033DA6A4 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.90 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Sat, Jan 18, 2020 at 7:15 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
> > -ifeq ($(CONFIG_ARM_ATAG_DTB_COMPAT),y)
> > -OBJS += $(libfdt_objs) atags_to_fdt.o
> > +# -fstack-protector-strong triggers protection checks in this code,
> > +# but it is being used too early to link to meaningful stack_chk logic.
> > +nossp-flags-$(CONFIG_CC_HAS_STACKPROTECTOR_NONE) := -fno-stack-protector
> > +$(foreach o, $(libfdt_objs), \
> > +     $(eval CFLAGS_$(o) := -I $(srctree)/scripts/dtc/libfdt) $(nossp-flags-y))
>
> The above change causes build breakage over a number of ARM builds,
> which unfortunately doesn't result in emails from any build system
> containing the cause of the failure.
>
> See
> https://kernelci.org/build/rmk/branch/for-next/kernel/v5.5-rc1-12-g9a6545e2fc83/
>
> where the failures are reported as:
>
> ../arch/arm/boot/compressed/Makefile:87: *** missing separator. Stop.
>
> Thanks.  Patch dropped.


Sorry, I made a mistake about the location of
the closing parenthesis.


I fixed the build error, and posted v2:

https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=8953/1





-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
