Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE0EAE29A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 05:43:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RhzWNr2Q90Pia2tsMonevRKk37itvhx1ncSO58Nzxxc=; b=tsHSoQtLj4xzhZ
	r7nS/SdcaIf3FpoPufxA8xa48OfTH5gqQIEkwb4J82nxP7uipUGNRviMrw8BfO8zMCNxr22ChA+OX
	Dnf5xpG1SIVAZpY9mFBpTv6ebc1nQQeBy6HEQN02PG3E3Pv0N5RUnWXkyMsYi91vIpSOtL+NbtgpY
	mfqPBq/f6STPlXxrhqlPe1JAxzvEwwj2LAE0VcbHuzgAiD6gu7ZB05X+O6VGokSQjWtb/4FJ+1ohB
	AV96lwy4HwbqzAvvhpdr6AUkfliaxWLkiBuzCcMPuDl3zeK51tTmbMdEQpgRl8BgdSeKvH3c707Sd
	VgULX3aXS8R7kHIDLCgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7X3e-0004Mg-8h; Tue, 10 Sep 2019 03:43:10 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7X3S-0004Ln-Ft
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 03:42:59 +0000
Received: by mail-wr1-x441.google.com with SMTP id i1so16458735wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 20:42:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=I9JwKIwr+KcLef+7d1/5gjR3bCqIxL34IZ86LTorCns=;
 b=CVQ3+cgxLWw61FKj7yOWdKz1jojuyE5x8+YMKLQUh3cHfsAnx1GBOuXKoUfaKnjRTp
 267Pc+WAALy9205rd+jwgWl7mdvOpFEgg8bwKmFmktSFCm1WSLgRm4kFWYBMhUSHECh1
 gCGKVBwIf2PKCOuPiCP12Wh34KpSieSNo7nc1JL/bEbM/rn9K9l+K0XQpTL2uu57U2xO
 HndZDqRGBrH9oomuVwrqmvYGroEKvifAgp0ZG3YxCwV69jr21gjTYBUtNYI1wXgL9Whv
 SwceE4gu3ZqPSpt0XahzXFL/R1FUlTMGZIO+46AotOR0rlLSaEms8mhzKyg9lMj2Xo5U
 iknQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=I9JwKIwr+KcLef+7d1/5gjR3bCqIxL34IZ86LTorCns=;
 b=XcwivTNizLYbmpijOCKwBJJfiXTRMiG1Sg0q5cf8UDdkDM4U+9CStHeKy2Q1OfckSn
 Bk9DLibww8Z2D1bBNK+jGdUQNVxgP0hFld3S0JsxmIk4tE9u0snQkyYeRarTVqdkKZ44
 0fpcbNSjDx6WjpvdGJ7saoDRi0GE2FHXahzNtMFIOd7Z2VzEl69GLQMsrc8mashBr90H
 CHgaO8DI7Nwr+ODYiJ02XC3vBMWJ/YsxUIVFNrHvDazZngHYWLFaJqIyDm5Beb5XCXjF
 YO143c0iHqTdnVk7UKqq2Xcxne6xB4g6sNfZPWR7dnGBlOt/JM4RORTR2Xkt5sKYfSiH
 F5NA==
X-Gm-Message-State: APjAAAWUiPvjkKH0qBLBpI4NvmusR9+PlmPnZ2SORLKwz3AMGUcGVks3
 cUrB/hLBT1Y13/qZnCoO/0A=
X-Google-Smtp-Source: APXvYqwFd/V3DElk6ZTAgVymeX7vhXdJdlcT95PolE9nZPbW6sNLcQZYU1WiKR3wmqMY4xNuV8QpWg==
X-Received: by 2002:adf:ef12:: with SMTP id e18mr22693738wro.65.1568086971953; 
 Mon, 09 Sep 2019 20:42:51 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id 74sm1437257wma.15.2019.09.09.20.42.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 20:42:51 -0700 (PDT)
Date: Mon, 9 Sep 2019 20:42:49 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] arm64: fix unreachable code issue with cmpxchg
Message-ID: <20190910034249.GA1673@archlinux-threadripper>
References: <20190909202153.144970-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190909202153.144970-1-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_204258_560153_569DE456 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Andrew Murray <andrew.murray@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 09, 2019 at 10:21:35PM +0200, Arnd Bergmann wrote:
> On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
> when CONFIG_OPTIMIZE_INLINING is set.
> Clang then fails a compile-time assertion, because it cannot tell at
> compile time what the size of the argument is:
> 
> mm/memcontrol.o: In function `__cmpxchg_mb':
> memcontrol.c:(.text+0x1a4c): undefined reference to `__compiletime_assert_175'
> memcontrol.c:(.text+0x1a4c): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `__compiletime_assert_175'
> 
> Mark all of the cmpxchg() style functions as __always_inline to
> ensure that the compiler can see the result.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
