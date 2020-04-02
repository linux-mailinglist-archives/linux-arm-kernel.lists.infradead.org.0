Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4571F19C0AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 14:05:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQztewkH05KlR57CRHvVGiXoLG+Ku0AZifqe4jEEgwc=; b=Kb+uI2zRCY2JXf
	1j1mdysBPcABo6KfZU2ABa/nP4ul/wOAB+YSaS0IgTkSHzwy+XplgigubWV5GuXOD+erZ/1DpEY3O
	8YL5Qvw6+BpN5rlyuoSmi6yZXCjRx2ajJpnGbY+vggDdGj/nxec+jeWLbC4nyR4Ew6/ob0OiRO8U2
	8s0W4Z7cenRAIqe51x+lwmWPU6g1q0TghfeYcHDRc+eIjKlbMS5Dp0snBoeYLTGoAJ5FOAeaejqAp
	VDhiCBJ6jC2bmsJCbbqg//ru3RWXEzMaFrXXAtMu1kFHjSdxm0f9ZNTwdQU8pMXWVGx3wLceoJH1W
	KhEMYfgR55DGVMezCPKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJybC-0001tm-VR; Thu, 02 Apr 2020 12:05:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJyb4-0001su-AJ
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 12:05:23 +0000
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
 [209.85.166.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D8ACA207FF
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  2 Apr 2020 12:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585829121;
 bh=DOCQ79khuQuDX0scByQjV/Dc+mOTV7PRi2d4y/PFuMw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=iD87RcG6nBHeTUMhqFAjd+RBG0FGs4BeQ4ux6X6bhnYF6VnOep4M1fGpvbTOhrfQI
 ebNclHF2SR1Ut2knX/Xv0Vgk8ZTvOB5ZDD0EaRIsU7djv1MJpx02Q/L5kbQXEQVxSA
 xD+yUGtzFfRae/rBsiwinYeO9P6kFZGsZMpdMzhM=
Received: by mail-io1-f49.google.com with SMTP id b12so3277269ion.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 05:05:21 -0700 (PDT)
X-Gm-Message-State: AGi0PuZm8+zFrWYmwq+e5/OwpjfyLwJtcvVPQUIY30cUuW2JeAgHWNpi
 9ZHN/lZrk8c6gc/rEn1Zj+aP/PnwlhIwyLpnx+k=
X-Google-Smtp-Source: APiQypKiGRMVC/rZ/zmEQRLEdmyG/DKSK9Po+czO2H2U6ZtZ+m0OEYQCKxKanhryjTbOQCpeiqefVGI+Qu4nXgiL3E4=
X-Received: by 2002:a6b:f413:: with SMTP id i19mr2424610iog.203.1585829121163; 
 Thu, 02 Apr 2020 05:05:21 -0700 (PDT)
MIME-Version: 1.0
References: <5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan@agner.ch>
 <CAKwvOdkyOW6RXTOCt1xMp2H+uH28ofByQOjyx776t8RDxTED2w@mail.gmail.com>
 <CAMj1kXGYiMobkue642iDRdOjEHQK=KXpp=Urrgik9UU-eWWibQ@mail.gmail.com>
 <DBBPR08MB4823129E272220712B470716F8C60@DBBPR08MB4823.eurprd08.prod.outlook.com>
In-Reply-To: <DBBPR08MB4823129E272220712B470716F8C60@DBBPR08MB4823.eurprd08.prod.outlook.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 2 Apr 2020 14:05:10 +0200
X-Gmail-Original-Message-ID: <CAMj1kXEQ4v9e6386ogPdy+s+++9H02DMPnDpTq0WSY2e78ts+Q@mail.gmail.com>
Message-ID: <CAMj1kXEQ4v9e6386ogPdy+s+++9H02DMPnDpTq0WSY2e78ts+Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: OMAP2+: drop unnecessary adrl
To: Peter Smith <Peter.Smith@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_050522_398262_ABE21D05 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
 Tony Lindgren <tony@atomide.com>, Nick Desaulniers <ndesaulniers@google.com>,
 Russell King <linux@armlinux.org.uk>, Stefan Agner <stefan@agner.ch>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>, nd <nd@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2 Apr 2020 at 13:50, Peter Smith <Peter.Smith@arm.com> wrote:
>
> > I take it this implies that the LLVM linker does not support the
> > R_ARM_ALU_PC_Gn relocations? Since otherwise, adrl could simply be
> > expanded to a pair of adds with the appropriate relocations, letting
> > the linker fix up the immediates (and the ADD vs SUB bits)
>
> Not at the moment. I have a patch in review to add the G0 variants for these in Arm state at reviews.llvm.org/D75349 . As far as I know LLVM MC does not have support for generating the relocations either. This could be added though. I agree that using the G* relocations with a pair of add/sub instructions would be the ideal solution. The adrl psuedo is essentially that but implemented at assembly time. I think it would be possible to implement in LLVM but at the time (4+ years ago) I wasn't confident in finding someone that would think that adrl support was worth the disruption, for example the current Arm assembly backend can only produce 1 instruction as output and adrl requires two.
>
> I'd be happy to look at group relocation support in LLD, I haven't got a lot of spare time so progress is likely to be slow though.
>

For Linux, I have proposed another approach in the past, which is to
define a (Linux-local) adr_l macro with unlimited range [0], which
basically comes down to place relative movw/movt pairs for v7+, and
something along the lines of

        ldr <reg>, 222f
111:    add <reg>, <reg>, pc
        .subsection 1
222:    .long <sym> - (111b + 8)
        .previous

for v6 and earlier. Could you comment on whether Clang's integrated
assembler could support anything like this?


Thanks,
Ard.



[0] https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/commit/?h=arm-kaslr-latest&id=fd440f1131553a5201ce3b94905419bd067b93b3

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
