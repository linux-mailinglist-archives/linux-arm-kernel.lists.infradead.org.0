Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0552A0CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 23:58:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i+2WGVX6kT2TbyMrz03RbEJTUSlafrzbT5LZAb/blAY=; b=OY+5xHrZTZXsjw
	M8BmV/V9aCFQQ1YwAcmAeF/doftEkSxVf35cY90NeNjinO9/iARPi1JX31/kxSQnkU1pmS6BDZLVc
	2oh0OO944mRohGzFCUzvTmpEpBrZPVBviRGCdkJ+wA12KMzMNzx+p8v4DBAqp3qr9pdupdo2yQoC9
	KrbxY3tSTEOhNtkxxxHlOoy8op2AciOW1O4WcAevtR+YbuFRlACgPjnz6MRXrkYWHKUog51dplxSP
	IbwF/2yMZwYVl6nbXX3b+f6app0bZcKPD/GiFCb5mAy1ojJm5WN7j1HpIMY7Oi9FzR1qV8Wagy31r
	Y/EBrW9vdO+CeGkvtC5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUID0-0004Q1-UL; Fri, 24 May 2019 21:58:38 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUICt-0004PC-AU
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 21:58:32 +0000
Received: by mail-pf1-x443.google.com with SMTP id c6so6064246pfa.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 14:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rjRYUfRcBF14ALsdZVh4eUyf5Gn6zszEh7GbEagkgVg=;
 b=HDdazYUAalR9pmaU15ErWgu3PPVgDob9gVSXou7nW8UbxW+nbqgg83fKIuRahiHvNj
 tdubuAZZ2Ttt7HHiKwuc26Sq17xC83Ib470RH5PW1XuNmnQZ0hq7VPoLwzcV7eoJwOVD
 CO74edwK8T9ZI/DS22/Hw0d3MUrpLxutWI/dlj640wnD0r7zPnN91bjkrCTApOT2pmIC
 SifOKm99DPebExgAjupYhlihe44nxHm5dvK718xnM1/v49ehi2l+lbf7kOeWzH50fL3V
 vzHm4HdywQ/s7YUnGH8+KFfYIxttaJ0NEmPEubm2K7DxmdWNhO8nr7tMF2XlHHNmJ1pt
 GBzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rjRYUfRcBF14ALsdZVh4eUyf5Gn6zszEh7GbEagkgVg=;
 b=B8eg8aGAvOk9Vp5/KpwmB5j+FDOC0QQuTuQFq8jGSLkHkETmA5ATMcVmRBduUBNMsL
 wktLGsfKnU3Txb2xvjQB70xzYYTg6gWdL6nHv+cWtILX/UPa9nGKGRH+cUsPAobO4vjf
 sXOs1sOigyUkPtV9XwEtBWg0Gf+1YvVbW9wvu7cByDN/PMDhOhv1HqACMtsjBbsdjAWI
 CN+1+YPatwH+vbkOzvLfmOvnAfDwQuGP4Tk09T9hNH3S2qOkNFaDfs2oT0LU6Jgqnecy
 YQOYNvzLKe/IDKZXI/YVVxp6HNtI+tTG7VjFwXscC0BT60GOPvaqMkGv2fg205/HYFTn
 6I0Q==
X-Gm-Message-State: APjAAAWgc8HQYV4Yb4BkKKfTgkdGHxkWwaP0SQwho5UwJJv2qUSq9/iL
 BkCEUmHM0iZ3++SZWSVT/uvMjQ==
X-Google-Smtp-Source: APXvYqwGvV4AAhDHnYnoO9rGokKbRvf0J1/MwriiAClSboTIy5vRpZPPKTQbD+KJ+behpeqmaGdv7g==
X-Received: by 2002:a62:1c06:: with SMTP id c6mr33598081pfc.168.1558735107458; 
 Fri, 24 May 2019 14:58:27 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
 by smtp.gmail.com with ESMTPSA id n33sm3859887pjc.3.2019.05.24.14.58.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 24 May 2019 14:58:26 -0700 (PDT)
Date: Fri, 24 May 2019 14:58:21 -0700
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH v2 3/3] arm64: use the correct function type for
 __arm64_sys_ni_syscall
Message-ID: <20190524215821.GA37129@google.com>
References: <20190503191225.6684-1-samitolvanen@google.com>
 <20190503191225.6684-4-samitolvanen@google.com>
 <20190507172512.GA35803@lakrids.cambridge.arm.com>
 <20190507183227.GA10191@google.com>
 <20190515114035.GG24357@fuggles.cambridge.arm.com>
 <20190524183551.GE9697@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524183551.GE9697@fuggles.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_145831_383864_7058F626 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -11.6 (-----------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-11.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 4.1 FSL_HELO_FAKE          No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 07:35:51PM +0100, Will Deacon wrote:
> > In the absence of a patch from Mark, I'd suggest just adding a SYS_NI macro
> > to our asm/syscall_wrapper.h file which avoids the error injection stuff.

If we don't want to use SYSCALL_DEFINE0, I don't think we need a macro
at all. I believe it's cleaner to just define __arm64_sys_ni_syscall with
the correct type in sys.c.

> Do you plan to repost this?

Yes. Sorry for the delay. I'll post v3 shortly.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
