Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6831B9510
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 04:11:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fBGbrwJgghlzZwO3XHIMAG7CizsvWf2droXo5Tb8OGU=; b=bKIlO+hlassmku
	8Le8cmzcuUF6jPJJoZQrptrbsB4Ha9MEpOTR7Pv4wApv/mvcXOeyKuHQPuC7jwDJkA9yMkyDNoa5M
	+fnsbXx+1l9fZnYfxgCEdytQyFqK94NVBOsLVBRmN5xfvwVw+FF0hz8ni5egxU48su3X6VEd+q9nY
	8u01MvmeMv50sPI8bQYcPTba+pwRPCWFnJAoURpadAVzgrd70RTPfh9/B1B5kabeeFQ2xKsPgBAOj
	zyhkXTuTDqOKHIAsHr+CXVCBeOEJoIeztlQd4ftpSvgGcXeWInwPI9ywGpODn0CGB8AQUscYTsFF/
	Ka5c1wLZkEQ007fb5JlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jStEb-00025I-MX; Mon, 27 Apr 2020 02:11:01 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jStEU-000241-22
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 02:10:56 +0000
Received: by mail-ot1-x344.google.com with SMTP id i27so23665249ota.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 19:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4N0tzn6HxWCVKhbcP3iPrPzqWqbdVMDQSlnfjcrFqNo=;
 b=Hl5k9q5ukoi3szf18rgUOm17uhLI9srrE7wVvHse+gpzS+zBzRST8NQCHhV5LvGtKM
 FuJRIQlamx0E48HcHe6y8OIsWlt46/5MGyHVSa9+FtTO5p1zQVDDWiHSYXxlB6SjitK9
 nt/a+y5ZgdHXhYOh3+ChcRoHW3tM0HQuqS/IKFlXquKuRrBAL1gyA7t09BMAhdZWoCKc
 yNIvBR9DevGIMOe33mjjW1Sij6Nidm3IHW/MSkSq4oSaYvhk7ydRLgr+jX4LWgpwDY+H
 lYV5O4QfbF0ena7beBiIGjmeOhhQ5xo7VFIM+dDlKgpwJEsp8Z6iKQJ1j1LXgWrxmCwU
 rhJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4N0tzn6HxWCVKhbcP3iPrPzqWqbdVMDQSlnfjcrFqNo=;
 b=l+5ZX3Fne94hzroLLYNLHnHojXgG/CmsxSCyO/WJaOToooFxO6nSMXF+u5l2i5MEmk
 stQhOEsJMY67NSqs8kLMqNuWuyOw/LqCXY2hvWgz4R6MgdR/E1Ey3qk7cAUlBGrFP8Pe
 mfeA/a/iDnf2Zxxo9CbmWBPsLnbr7TZ77lgL5MBAxHcjLNp+YP2n3EXfumyrpKWUMS2l
 7Zty5w0oRUv+VvtL3IW4A89rqygAjA/mu2czZ6EDYwYs8E53+ru3VudcxVo+uNFW+LDD
 SEIoGeaF1e4q3hrovQAWo3OxN1XnwrVFmNvPQdReJWQ/XWOu2S8Ga7pPQ2t2PczNcae3
 kBew==
X-Gm-Message-State: AGi0PuYsy9+IfnVpZ9Jsr+o7llW/M9pJb20iQp2tGrmP+liii0KSyPq4
 DaNRhrjhAmjHa2X6vr28AwVcJnYp
X-Google-Smtp-Source: APiQypJrYOdevGlvw/kgcnt9kU19pHmd/u7nQtNhqmbnRNON7LpqS2Fr1a/gxig/Gh3i9GdvpiRZUQ==
X-Received: by 2002:aca:c6ca:: with SMTP id
 w193mr14030066oif.165.1587953452299; 
 Sun, 26 Apr 2020 19:10:52 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id s10sm3589988otd.69.2020.04.26.19.10.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 26 Apr 2020 19:10:51 -0700 (PDT)
Date: Sun, 26 Apr 2020 19:10:50 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH] kbuild: remove unused AS assignment
Message-ID: <20200427021050.GA27787@ubuntu-s3-xlarge-x86>
References: <20200427003019.2401592-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427003019.2401592-1-masahiroy@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_191054_099976_7AEC3370 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-kbuild@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Joel Stanley <joel@jms.id.au>, Nathan Huckleberry <nhuck15@gmail.com>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 09:30:19AM +0900, Masahiro Yamada wrote:
> $(AS) is not used anywhere, hence commit aa824e0c962b ("kbuild: remove
> AS variable") killed it.
> 
> Remove the left-over code in arch/{arm,arm64}/Makefile.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
