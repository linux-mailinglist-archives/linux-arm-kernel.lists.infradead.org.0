Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C88DFB7AF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 19:34:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ISXISK5gjkxx8y9C4rrE0EhoVI/hQXZtGLxO6X3tPaU=; b=gvsldRpiNKrPji
	z+a95vrinHn+978OX001ySfcVtjDJS27J5TixnumkjrQqmAmtm+DiDinqnMkIGQgfW8UWWI08L46L
	9M6d+nyS9cjR1XFtpKXnRlS7smBPVpnx42+su4mN5Jclr+7rB6uoHctHkdNu9w6PhXBcOJVGUX5i0
	X6AJO4grlCfpntYyKT8yMwinOuw+/7pcWtXcNHdLfqxD1JQ+bjUjjryKEhjBIyTh37meGXGxeMfjY
	Hrk11uZ76QLxOFjD021EZiYGG5Y2uyZuVn5snLSzdycol0A27hiUd66gDQaC8Tg6ikAX3Y1YTfT/V
	rKwpgEZ9D/y4neEa9mgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUxSj-0000Iv-TL; Wed, 13 Nov 2019 18:33:53 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUxSX-0000IY-Fu
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 18:33:42 +0000
Received: by mail-pf1-x444.google.com with SMTP id p26so2215094pfq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 10:33:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=OhPSTTe4Xdz6gOjsaJlaEdC5pAfYubYxDCg4SrgVoSo=;
 b=gLQ0w0IxUEQnchYuilJR1nbU4m7SgY//cNaWQR/mt0lvyefOxSBkOsqifZytiwFIh0
 GkBnn3qUVJAEMrTsVlq+svxxCP/slE/95ux0WpqRsVgnTHuEvwwCdJWa6c+0L9ne+iP7
 6ydiQoWKF8IYJkGO42ArzjKHFxLH3sDY6CwOk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=OhPSTTe4Xdz6gOjsaJlaEdC5pAfYubYxDCg4SrgVoSo=;
 b=RPlGAkDs+wgNwDaGd9KEZoF6+rSNQUa/BFR/ChU9BT0yWvEFZazsg18410eXibimLU
 VWDmkyVRDIBbLPvtgQ8dbKde5R8sGLZqE3xoVmhdGANOGdwrwVkwf+Ki/aX89F7DJ7uD
 rApxxwsZGFKIiLtjL+19yBYV31EtlNwSUqBwbP3IsnMt46pjG3KehDAGPSAq7PQlJbYA
 CPxEwNfskmxs9yQubcKKKJbnB3oryJuaH5C9YJ/x7B4t8Nsj2f4A2LZm40kg2qgKB6rB
 lnCwTGF7fm05P/l0J2zsT6Zy53tAUnHacVnqLGaxS8Mca2rLmDpYlO5FLc/5hHJ+28YK
 b6YA==
X-Gm-Message-State: APjAAAVtJ7p868/W++eTJocorO/361d7zXJopFefU4EiszgDjJVb6tmJ
 rSO3ruaApUR177/V+ES5cEfATg==
X-Google-Smtp-Source: APXvYqyLkzEBHbWiCqJacPQ3CBKaBpCEr8iph2zitT6ozdOmqjw+YxPYFt/3IfvrDawkJj7K8FBEVg==
X-Received: by 2002:a62:20e:: with SMTP id 14mr6074555pfc.153.1573670020389;
 Wed, 13 Nov 2019 10:33:40 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id k84sm5150717pfd.157.2019.11.13.10.33.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 10:33:39 -0800 (PST)
Date: Wed, 13 Nov 2019 10:33:38 -0800
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v5 00/14] add support for Clang's Shadow Call Stack
Message-ID: <201911131033.435C8F77D@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
 <201911121530.FA3D7321F@keescook>
 <20191113120337.GA26599@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113120337.GA26599@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_103341_553540_6DDC3973 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, clang-built-linux@googlegroups.com,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, Marc Zyngier <maz@kernel.org>,
 kernel-hardening@lists.openwall.com, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 12:03:38PM +0000, Will Deacon wrote:
> On Tue, Nov 12, 2019 at 03:44:42PM -0800, Kees Cook wrote:
> > On Tue, Nov 05, 2019 at 03:55:54PM -0800, Sami Tolvanen wrote:
> > > This patch series adds support for Clang's Shadow Call Stack
> > > (SCS) mitigation, which uses a separately allocated shadow stack
> > > to protect against return address overwrites. More information
> > 
> > Will, Catalin, Mark,
> > 
> > What's the next step here? I *think* all the comments have been
> > addressed. Is it possible to land this via the arm tree for v5.5?
> 
> I was planning to queue this for 5.6, given that I'd really like it to
> spend some quality time in linux-next.

Sounds fine to me; I just wanted to have an idea what to expect. :)
Thanks!

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
