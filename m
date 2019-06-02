Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 792D6323BB
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Jun 2019 17:44:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YN9ULUFX++II+1GoITv3MjFyO6ZjaMwAcxl9lXFYtps=; b=kEbJKbPZS6A98f
	m8CWOblbtyxmHqBGKU6jeuk91VvE+qGfe/DKXvPcdnPTAEfhx9fhehkjCru8R4BAHhT+CfI3H4tj2
	39S0tPVkWVXdkaX6lIwsmFYMkdDJdXPhgxrzORjJ0X98ufCR1fH6QHG2oVcRy2QlS4E3DsUPduDvB
	iwRQ5ciwgOt0Xw2tsYVJzyntgTX8CpIXCev5E/+FQdOQIE0X6LDpuijfRCL4d7InxS3VakxXlCOHA
	QENP625sQf/EpgzRgw+pyh6c7kFYuim/WeIB5Kk/2Lu6hmdGSQ4oYma+8wVIL23OjyYd0BDPPcmxj
	zwUqxCVEfmpkBGp9HSJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXSeT-0002BG-Pg; Sun, 02 Jun 2019 15:44:05 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXSeM-0002Au-CX
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Jun 2019 15:44:00 +0000
Received: by mail-pg1-x544.google.com with SMTP id h17so6823463pgv.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Jun 2019 08:43:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=mlo0gjDzmF7fVZ14XgMkSAL1vi16/ChE8MgpBDwOXFI=;
 b=iRd1qYLw7xZ/zyDbodOqAQI1Vjgg2n0eyz0xlmpxGMI/gzTPy+kNn1n8SoFUop/O6Q
 a9Flci437eG14r2J+Cd+NW9AGbXSEqYVKau2LhXDPZqlRZJWxlhIO1OpOit0LBOn392G
 sYvtC5CCTbhO+Qv66ROnrMfrI5lii9r6tS/l8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=mlo0gjDzmF7fVZ14XgMkSAL1vi16/ChE8MgpBDwOXFI=;
 b=rw1bOOEcmFgdbZfkoGT4pZn4ilHIJbabCtGFOV8OxFibobEXQSJb7r6Y86hXDH/XrE
 LhRDooYOrcNJG9W57yiN7hvDf1OTgR/IHrFHXDNKtJGBiBYH9N2/Xjx50r4d21ZyYS8/
 HEIuXPkRUk91+SDIdRqtFe0slS9TZQZJAdS7HWvseqaAr123QYF7D8OKN3AGRlg/7gxu
 2fjINXmMJjnWklrKc+uVXWnvORbq99WVZJR5iIVOJw/+E84bzOIA8/MjHnuBsopKWVkH
 vzhlbfs29y60B2Uioe0w9hhJlnXQwJcVusQfGRhM2In7WhhWG0kOgubgx68v2kPa8dzv
 Ab4g==
X-Gm-Message-State: APjAAAXmiJAuNNDdaa5yMXNVBAZ3JZW5dC0bgg4slWeNB9dbdVzZJMQL
 +TFEmNExpcY+KHxl+bC2Move7g==
X-Google-Smtp-Source: APXvYqxDP17fGIONK1n8hjzsU8R8jmikO9E5E1Y15mOb2eWnPzW1g1/nvwWcZPn+u8TYICzFJfPyRA==
X-Received: by 2002:a63:1844:: with SMTP id 4mr21236394pgy.402.1559490237756; 
 Sun, 02 Jun 2019 08:43:57 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id e5sm9285304pgh.35.2019.06.02.08.43.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 02 Jun 2019 08:43:56 -0700 (PDT)
Date: Sun, 2 Jun 2019 08:43:55 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [RFC v2 0/7] arm64: return address signing
Message-ID: <201906020843.140EC55FB@keescook>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <201905292004.3809FBAA66@keescook>
 <DB7PR08MB3865C4AA36C9C465B2A687DABF180@DB7PR08MB3865.eurprd08.prod.outlook.com>
 <201905300851.4A68705B0@keescook>
 <DB7PR08MB3865A83066179CE419D171EDBF180@DB7PR08MB3865.eurprd08.prod.outlook.com>
 <201905301058.CA55245A0@keescook>
 <20190531092202.GA19208@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531092202.GA19208@fuggles.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_084358_471810_5F76CE41 
X-CRM114-Status: GOOD (  21.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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

On Fri, May 31, 2019 at 10:22:02AM +0100, Will Deacon wrote:
> On Thu, May 30, 2019 at 11:05:15AM -0700, Kees Cook wrote:
> > On Thu, May 30, 2019 at 04:55:08PM +0000, Luke Cheeseman wrote:
> > > The semantics of this attribute are straightforward enough but it
> > > raises some questions. One question being why would I want to turn off
> > > BTI (also controlled by this option) for one function in a file? Which
> > > gets a bit odd.
> > 
> > It's about leaving very early CPU startup functions in the kernel from
> > getting marked up (since they are running before or during the PAC setup).
> > 
> > > I don't know if the alternatives have been suggested but it's
> > > possible to achieve the result you seem to be after (a function without
> > > return address signing) in a couple of ways. First and foremost,
> > > separating the function out into it's own file and compiling with
> > > -mbranch-protection=none. Alternatively, writing the function in assembly
> > > or perhaps even a naked function with inline assembly.
> > 
> > Fair enough. :) Thanks for the clarification. Yeah, split on compilation
> > unit could work. (In the future, though, having the attribute flexibility
> > would be nice.)
> > 
> > Kristina, would it be feasible to split these functions into a separate
> > source file? (There doesn't seem to be a need to inline them, given
> > they're not performance sensitive and only used once, etc?)
> 
> Right, and we could call it kernel.c
> 
> Sarcasm aside, please fix this in the toolchain. Moving logically unrelated
> functions into one file just because the toolchain doesn't yet support this
> feature just messes up the codebase and removes the incentive to get this
> implemented properly. After all, you need something to do now that asm goto
> is out of the way, right? ;)

LLVM tracking bug created...
https://bugs.llvm.org/show_bug.cgi?id=42095

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
