Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A60F80CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 21:08:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ceWRRYaZfODGHVmJboYn5JDIKX09QOoH5fvyP8v5WMM=; b=ThZuLM3DLhpWvE
	RJ7L+fC/JvnPcpVa+vThz9o/aZjrujNCcF5A12ljElS+En441c5cilOpPoecrSFhWNfKkPyaIhUsT
	ej4aBzmYgRxFhbfhpLjq+V7HmEtwM7oICntzqnmcSJHlxhqQDXy3kKsxqdXaPdgEN/Vf+PNjgUiX1
	GvXReFWDZRwDJ8Fz4lNwY19UPEatMu4ef05aewLiCnAgijiiscEu0FluRLWQp1wf15UHg7jLQv48+
	+z089VHd1I443PXKPGB3HzDs1Xq/PTIkyTItnLyAlymPQyR1HlCK3UErCMh4I0xhs9qkk3PTz0uhq
	jzH4nlzzd1Jxn76cVvbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUFyp-0001Mn-Ra; Mon, 11 Nov 2019 20:08:07 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUFyh-0001MG-Lg
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 20:08:01 +0000
Received: by mail-oi1-x241.google.com with SMTP id a14so12626349oid.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 12:07:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Nwqx7QWQGsC3I4CJNnbzWwRJdYPwJji/UODQxE0sPQU=;
 b=tJIYehn2kw6unw0OwdiFgOkyUDNrINJx43lzHBVIhcCikfiewRFeH0wz19EHFmCPqi
 iOq5Xm9cCQrN4riVXpzA2ONUrp4iIIuzmn1qxbj1rlSE9fP4rLhPkw1QXUDgfDlDP822
 sS/DhORtaU51kFXKb/e2Bp3iMp3mhdxKiH6RxfXhvTrD9GYS8YVJ/Qf9+cxS1bJM8KNh
 vM5ZdFjwBhduSApuEABZyV8IPIWZo2mzYp0dOTTjScZzGQ1Y8CasCIIf30c0MURDOl8b
 1CEOlCMTgqRP5/L+QKc654nXmPyu5UDlgUOYuJmo4QpkwS8OjPb1rlkarO6Kz/YWW0JG
 pFdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Nwqx7QWQGsC3I4CJNnbzWwRJdYPwJji/UODQxE0sPQU=;
 b=b6ZcXkzFo2ZfTDVqyeKZ0nEZI6LgCIJunGfE9X7vIqd+LXBqyj3njtzcHGWMNBsOmC
 6aLGuDdrjRD4c0UXNaYfcT8U6IXnBVV5UPE1dv+NiA5gCaVht5y7+OTO7IBxUWO4Hize
 ct1Cid3jAxsK4hyJLjt9T3YPi7E4Gp1uPPnH6fgbXWVOyeB1xAZcYUNLHVk+QrQuCTsC
 U5FvSr+MHZOvz5d7Biv8lX2sGN0wzaNbgzuFD+88eDDk2NEzMIZ5kpc4glnLDYhEyE7y
 FXjgl0SRHvRLi7XVlCcsw/TUNAb8UvVCKqDW5Qsu/AvP7J0co88JnkUOPMpvQytAS3Zn
 7gMA==
X-Gm-Message-State: APjAAAXrW4nhZ+QRqd/9vqeK/GGuAmaChk1WPXwiri95YyXSrQ4YwHlV
 qvi9kUPg4BgDoI6elQNSkFE=
X-Google-Smtp-Source: APXvYqxFp3PdUYMAB+G6kG11oigcGErslKKXE/y6y8IuzAxeYHF1sdk6mMMKXXdx4wFiItpFcnGCyw==
X-Received: by 2002:aca:5145:: with SMTP id f66mr649745oib.0.1573502877903;
 Mon, 11 Nov 2019 12:07:57 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id e193sm5295951oib.53.2019.11.11.12.07.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 11 Nov 2019 12:07:57 -0800 (PST)
Date: Mon, 11 Nov 2019 13:07:55 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Dmitry Golovin <dima@golovin.in>
Subject: Re: [PATCH] ARM: kbuild: use correct nm executable
Message-ID: <20191111200755.GA2881@ubuntu-m2-xlarge-x86>
References: <20191110153043.111710-1-dima@golovin.in>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191110153043.111710-1-dima@golovin.in>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_120759_734304_A4025ACB 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Nicolas Pitre <nico@fluxnic.net>,
 Matthias Maennich <maennich@google.com>, Russell King <linux@armlinux.org.uk>,
 Stefan Agner <stefan@agner.ch>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 clang-built-linux@googlegroups.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Nov 10, 2019 at 05:30:39PM +0200, Dmitry Golovin wrote:
> Since $(NM) variable can be easily overridden for the whole build, it's
> better to use it instead of $(CROSS_COMPILE)nm. The use of $(CROSS_COMPILE)
> prefixed variables where their calculated equivalents can be used is
> incorrect. This fixes issues with builds where $(NM) is set to llvm-nm.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/766
> Signed-off-by: Dmitry Golovin <dima@golovin.in>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Matthias Maennich <maennich@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
