Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C20A72BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 20:48:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mHL/opvo3gp1O40nGUvRET7Z7mknA439f0wd4VgPn9M=; b=ZdtXpMMqFAwA/K
	Y8DESjdq4q16kfsCBwdCrTK9Vdu8WWaVWK3UTOdFRvflpTv86UTuC2f8iqinRDKb3LTRN/dpNe3hz
	9ELvAnkp+vn53uqsAjm/uen56ZHSD+E0kxIBTRlqbwxheOhD7aYrM+byN5mfCGyOc3sRndW6CK7+/
	bn0ivYVQEvEqVIb12RbsHC90mWMYjDmprKYVWWCs0ozLxfKhWwDTkX1i2UbR2SROSLwed/IqYqaam
	qZnp2IXt1aQPPMTWCL5mjUOu4fyP8fnVNABFiRYjJKHGFC4XsgvFvyWTO2C/HWsqjmMQgJJMf98D3
	8U8wpRFxwqerdDxPLDfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Dr2-0003XO-3o; Tue, 03 Sep 2019 18:48:36 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Dqp-0003We-G9
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 18:48:24 +0000
Received: by mail-pg1-x544.google.com with SMTP id d1so9631668pgp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 11:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=IEYeijqNBx8FKsQCqztccyibS69/cramAhDtz2iOU7k=;
 b=OyE3pxgc7aeDvUAkSmCMjkF82tfwOvEd6uR6WwP8Y27TMiWd6UxOGWlzMn+hdx4Lyv
 rpIVbvfseTf6gbuZaAzdJniutKEjgVfg09dgi50K11LcjfEFIwdURoBmHyOkKq1ZsQDD
 vMZsxocGWcH2DwAMUDoMsv+Sj+8jZ8ecnR1Dw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IEYeijqNBx8FKsQCqztccyibS69/cramAhDtz2iOU7k=;
 b=KM/93jSAjnpCyqoq6PsdclqJxeeeDPwBpbDYgTb+bszClNlVXaO8nFPgy/ynwjqzqY
 XiFGUAOE6XNLT4IkcgkEZ7QGUy6yD1fwXVOSPziCXYy80clcNaJjFbHZK+y9hDESe2Kw
 JdrKpterSNFJM7S4wPuIjK+pv3lNm8b/69khrwkiVzHbbsMtt3jHjKCdePxbPj1R8R/g
 sTUbFEAJkDviSVGXp+F5ZdYl7n11bfhQ5NcGI0AhUZqlzCa1Hwf7LQsdqo1g0mznR7u9
 N7uBVSaL20WZqmvigpIzdih8Ei22DvqszgDWzoBBMhRAxQXb5rNxe4BsGbS6lLDUJNo7
 PJ2A==
X-Gm-Message-State: APjAAAV3UuCuxnqkar1Txt7PQ2MiVZ3Oo8k3RwDb4uV3YKVr7UBKqzjY
 j81J62nIinrFZjsRLWpNOrPyqg==
X-Google-Smtp-Source: APXvYqzX++xeelL0zbZVBt9i8AsSwDpC4wmYT9xqvVJMc0+k+GzPp/aiQiH3XMrvni+m2rj6xGSltg==
X-Received: by 2002:a63:1310:: with SMTP id i16mr31163370pgl.187.1567536502419; 
 Tue, 03 Sep 2019 11:48:22 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id q4sm6220900pfh.115.2019.09.03.11.48.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Sep 2019 11:48:21 -0700 (PDT)
Date: Tue, 3 Sep 2019 11:48:16 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH v2] ARM: Emit __gnu_mcount_nc when using Clang 10.0.0 or
 newer
Message-ID: <20190903184816.GF70797@google.com>
References: <20190829062635.45609-1-natechancellor@gmail.com>
 <20190831060530.43082-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190831060530.43082-1-natechancellor@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_114823_559961_DBC15B07 
X-CRM114-Status: GOOD (  13.45  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers <ndesaulniers@google.com>,
 Russell King <linux@armlinux.org.uk>, Stefan Agner <stefan@agner.ch>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 11:05:31PM -0700, Nathan Chancellor wrote:
> Currently, multi_v7_defconfig + CONFIG_FUNCTION_TRACER fails to build
> with clang:
> 
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `_local_bh_enable':
> softirq.c:(.text+0x504): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `__local_bh_enable_ip':
> softirq.c:(.text+0x58c): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `do_softirq':
> softirq.c:(.text+0x6c8): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_enter':
> softirq.c:(.text+0x75c): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_exit':
> softirq.c:(.text+0x840): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o:softirq.c:(.text+0xa50): more undefined references to `mcount' follow
> 
> clang can emit a working mcount symbol, __gnu_mcount_nc, when
> '-meabi gnu' is passed to it. Until r369147 in LLVM, this was
> broken and caused the kernel not to boot with '-pg' because the
> calling convention was not correct. Always build with '-meabi gnu'
> when using clang but ensure that '-pg' (which is added with
> CONFIG_FUNCTION_TRACER and its prereq CONFIG_HAVE_FUNCTION_TRACER)
> cannot be added with it unless this is fixed (which means using
> clang 10.0.0 and newer).
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/35
> Link: https://bugs.llvm.org/show_bug.cgi?id=33845
> Link: https://github.com/llvm/llvm-project/commit/16fa8b09702378bacfa3d07081afe6b353b99e60
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Stefan Agner <stefan@agner.ch>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
