Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 040EB30555
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 01:14:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TOWlpB+nB3zOfirwBFa/ybD7LwRR9IydEKvdeLvitgs=; b=G9cnsedwxlzx9X
	C212KkLwnpxcsJ7W9am1f5K24HfLbQ/v810FatXXspmhKGHkocHBLkjj7yj4ZGKOPk3hySycuRWiu
	u+1ulCu2RSgFumuig50Ijy/Upi2oocdgz8XBBxq+yyaXZ09hZaW9tISRH4OK9cHUgtn6qZ63UM8gs
	4Vem3wzxThvLqFXnCFdKWlDSYcqMGsPAK9+5pnJWR3/K9FrQtMduqxDOErJDTLj+9FAvtTSDiWE6l
	uw0GgU+/kW3aBIRA8enlqkoEUgQ35KowCy/oVRlfeUmQ8QT+AJ+gTzYHAqZFeDwETTSz0fvhUeAut
	qVuYr5av/JJBnRsBXsxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWUFH-00067H-9q; Thu, 30 May 2019 23:14:03 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWUFA-000667-Bz
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 23:13:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8InXajByqtc/JKE+hZJWwr/k2+XcOKa2bF4JyWtAX9Q=; b=A8yOrtZO9nvfqWq5j6DgJowTD
 eKZl8fXmJt8ch+RjOkHB0OeoFdx7EmJNtMPr5Ba3Y+TfcQVs2stzmkyiEYymGTq2PQl3vZ068Y005
 F7Oy0qkEQ7+BabakvTZ6L/yzwkieHfHssGPBg0Gz36NNpG6Lymc7PNZ/eAadiSBGNbWc0DB/UpjQL
 TgUCAPVCaqPof8nYdGp/6dnu4heGO+NhvdskEb+BRn9i7Cd+x/tXPrPU+hJ9dsIp35l7wLonFSjYt
 fn6U22Ubq44vCW07LST7i39N5xhmKXbk3kYHb+fwQD8zKwb6a+Ag/g5I7hRBPRcKBaHLULrzhrbxR
 yjYnNbgUg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:52724)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hWUF2-0005cm-1R; Fri, 31 May 2019 00:13:48 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hWUF0-0005mp-Ho; Fri, 31 May 2019 00:13:46 +0100
Date: Fri, 31 May 2019 00:13:46 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Tri Vo <trong@android.com>
Subject: Re: CONFIG_FRAME_POINTER support for Clang
Message-ID: <20190530231346.ede52pjznj3pgfll@shell.armlinux.org.uk>
References: <CANA+-vBHL9a9fXDWxALXXuJk6r8ObZZjhrGp-p5JUnfOThEV5g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANA+-vBHL9a9fXDWxALXXuJk6r8ObZZjhrGp-p5JUnfOThEV5g@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_161356_407911_BC34B2A2 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: irogers@google.com, Nick Desaulniers <ndesaulniers@google.com>,
 stefan@agner.ch, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 03:56:06PM -0700, Tri Vo wrote:
> Hello Russell,
> 
> I'm trying to implement support for CONFIG_FRAME_POINTER when building Linux
> with Clang compiler.
> 
> Currently, CONFIG_FRAME_POINTER relies on function prologue that is emitted by
> GCC using -mapcs flag. However, APCS is obsolete and Clang doesn't support it.
> 
> So in order to accommodate Clang-emitted frame layout, I'm thinking of
> providing Clang-specific implementation of code that relies on frame pointer,
> most notably in these files:
>         lib/backtrace.S
>         arch/arm/kernel/stacktrace.c
>         arch/arm/net/bpf_jit_32.c

What format stack frames does Clang use?  I don't use clang, never seen
any clang ARM assembly, so I've no idea on this.

> This will likely involve putting "#ifdef CC_IS_CLANG" statements in the source
> code. Is that OK?
> 
> Another caveat is that Clang implementation of backtracing won't be able to
> dump saved registers or dump precise pc value of the caller, because IIUC that
> information is derived from APCS's fixed prologue.
> 
> What do you think about this approach?
> 
> Thanks,
> Tri
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
