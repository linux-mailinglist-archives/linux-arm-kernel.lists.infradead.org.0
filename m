Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE51FF9E50
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 00:45:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LsvgBkbLHrT3m2xOrFh7RNPr7zZwpab6IzHjrH+ooh8=; b=IB+E9oPJmwKMh6
	IaJeRsouE9aJqt6sAn9mnufb+ngJM5k5rZi1BBdn8BDUdscaw6YTxit8DKF+uRSV5N9k72hjEl6UM
	liqKvRSxnNdKducDdD3mKoKAoTebaL9UwzgJ6d0v5aUrwrOxHqxYJHqoj5/YRCCTYwQMVNA8PchVv
	K6hWV4L+EKWWu8x6dK0sW8FO9NqtkBoBGp+4fvH/cbTkLOthSnGA9Y8U2lICwPNDYlTZxSZOsz3yH
	IE/3PV6m76uYx0iTz/vFEQ/OtBuWkiQ7m4dIOAtcSPkkZ/cuBvQKK97PHyAkv1+2OvWVF3PYXptyi
	jAxy5IEtje6LUxqIM5Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUfqH-0005sD-Hk; Tue, 12 Nov 2019 23:45:01 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUfq1-0005nn-2K
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 23:44:46 +0000
Received: by mail-pf1-x444.google.com with SMTP id r4so231614pfl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 15:44:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=EcHuuFp0uXLbkkRAA858XYtBunr2zA+LeQirH7UYVa4=;
 b=V8X9HHxHiG0Is+chnq9hKdAdntFAww1rSfsLxVyiP7E6i67FTXBjLe2zS+ZMOC8b1k
 Dx0K/KLvXeHKck7H32Glr39l0lktqFgwNo89bALI4mv0oKnxAMk8fH/ycmz15f5xUEiI
 MHSQl1bOX0rd1bQotssKgZXS0uaqqO2dwUxpU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=EcHuuFp0uXLbkkRAA858XYtBunr2zA+LeQirH7UYVa4=;
 b=kzbyyv5UofAohR8ZFyV1rJ31B0DXRX3wNaYHlHq/O11tCOfSjMk0r2yGRpb/H/HZlf
 MLAwXD8XHI/5JVgbuYHRUoORdV696v53ZP9KGMYzM1Dak/hg0G9duH6548n+iAqsYZnK
 vEtydv9yns/5NASZSt37l6lJhnD3qWmxEiIwYNop8jcClQ2hqTJWFB4O0a2O9xk+LEbw
 5vWFY/srVFVX4Jywg8I/N/fThzVukG6YzeHwAtsgaluoZTVe0+G975AWATTYl4X8mjFY
 8Jtu60T4JzodlCefC6UByZ4AlkOX/hCDUDL+l+hqFIdFVSuByjfv2qCy1ikdzaE6Vkgj
 vZfQ==
X-Gm-Message-State: APjAAAW9HnF0Rl2sEv7iB5awb5RtW6oChLxv4Z2VhlIhdCoZvWVTeUb9
 9Tj4wI1Bv0ejZJCVa4Fdf9HkhA==
X-Google-Smtp-Source: APXvYqy2qGlhbJhYD2XTlLrDucG7ETmNR5WevbQ8m/DZKdYkJBrkAiHNHZ0RU582wg1P7ojJiuH82g==
X-Received: by 2002:a65:6149:: with SMTP id o9mr186489pgv.228.1573602284496;
 Tue, 12 Nov 2019 15:44:44 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id v10sm86650pfg.11.2019.11.12.15.44.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 15:44:43 -0800 (PST)
Date: Tue, 12 Nov 2019 15:44:42 -0800
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v5 00/14] add support for Clang's Shadow Call Stack
Message-ID: <201911121530.FA3D7321F@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105235608.107702-1-samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_154445_140675_0AC2A732 
X-CRM114-Status: GOOD (  10.81  )
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
Cc: clang-built-linux@googlegroups.com,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Marc Zyngier <maz@kernel.org>,
 Jann Horn <jannh@google.com>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, kernel-hardening@lists.openwall.com,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 03:55:54PM -0800, Sami Tolvanen wrote:
> This patch series adds support for Clang's Shadow Call Stack
> (SCS) mitigation, which uses a separately allocated shadow stack
> to protect against return address overwrites. More information

Will, Catalin, Mark,

What's the next step here? I *think* all the comments have been
addressed. Is it possible to land this via the arm tree for v5.5?

Thanks!

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
