Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8294630B59
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 11:22:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EG5gtJ2A6LgN3l3j4WmC+cxE+Vt5IsX7eQzBUlBEuNE=; b=rgmE5K80X1YlFS
	cTk2v0IArhCegNi08vg5+Cd6q/u5FLj9F+LbDN9YaLoj6Vd5+QLR8A2GVKE+PMBU01f1RFFRrezz4
	Itcc+igcukWa8Vd/cn6/TxbWL88kI5soqMp7r7uH6+x4RSj7v0lt8kUvU47JqHFtTful63ATq/5Nm
	B2hERBCD7o2SRm07mO289d5IFsSwzGRg3pK51UArlpNqQT7tjT5wl+SOZJs2KnkBpCwP28wkRgF8m
	GW12Ydr4kjtknRsSIP3gZfWhaHPyaNwIlihSNdXMp7pl/1mVe+u581l+3A7tZijeN6kdMBbjar9fT
	3bgzCcpj3yohlASCkNYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWdjt-0004gL-96; Fri, 31 May 2019 09:22:17 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWdjl-0004fr-N3
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 09:22:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 691B0341;
 Fri, 31 May 2019 02:22:09 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DD0E03F59C;
 Fri, 31 May 2019 02:22:06 -0700 (PDT)
Date: Fri, 31 May 2019 10:22:02 +0100
From: Will Deacon <will.deacon@arm.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [RFC v2 0/7] arm64: return address signing
Message-ID: <20190531092202.GA19208@fuggles.cambridge.arm.com>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <201905292004.3809FBAA66@keescook>
 <DB7PR08MB3865C4AA36C9C465B2A687DABF180@DB7PR08MB3865.eurprd08.prod.outlook.com>
 <201905300851.4A68705B0@keescook>
 <DB7PR08MB3865A83066179CE419D171EDBF180@DB7PR08MB3865.eurprd08.prod.outlook.com>
 <201905301058.CA55245A0@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201905301058.CA55245A0@keescook>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_022209_759371_547D68BF 
X-CRM114-Status: GOOD (  20.80  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Luke Cheeseman <Luke.Cheeseman2@arm.com>,
 Diogo Sampaio <Diogo.Sampaio@arm.com>, Luke Cheeseman <luke.cheeseman@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Kristina Martsenko <Kristina.Martsenko@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, Kristof Beyls <Kristof.Beyls@arm.com>,
 Christof Douma <Christof.Douma@arm.com>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Dave P Martin <Dave.Martin@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 11:05:15AM -0700, Kees Cook wrote:
> On Thu, May 30, 2019 at 04:55:08PM +0000, Luke Cheeseman wrote:
> > The semantics of this attribute are straightforward enough but it
> > raises some questions. One question being why would I want to turn off
> > BTI (also controlled by this option) for one function in a file? Which
> > gets a bit odd.
> 
> It's about leaving very early CPU startup functions in the kernel from
> getting marked up (since they are running before or during the PAC setup).
> 
> > I don't know if the alternatives have been suggested but it's
> > possible to achieve the result you seem to be after (a function without
> > return address signing) in a couple of ways. First and foremost,
> > separating the function out into it's own file and compiling with
> > -mbranch-protection=none. Alternatively, writing the function in assembly
> > or perhaps even a naked function with inline assembly.
> 
> Fair enough. :) Thanks for the clarification. Yeah, split on compilation
> unit could work. (In the future, though, having the attribute flexibility
> would be nice.)
> 
> Kristina, would it be feasible to split these functions into a separate
> source file? (There doesn't seem to be a need to inline them, given
> they're not performance sensitive and only used once, etc?)

Right, and we could call it kernel.c

Sarcasm aside, please fix this in the toolchain. Moving logically unrelated
functions into one file just because the toolchain doesn't yet support this
feature just messes up the codebase and removes the incentive to get this
implemented properly. After all, you need something to do now that asm goto
is out of the way, right? ;)

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
