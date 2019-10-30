Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2CD7EA514
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 22:00:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3pu1ggCXZY7d2PRGwexFmdNG3RMQsWd3mklpLyfk+78=; b=HZ3pD6buY7u/qf
	HTLHzlPDzCvuttP/3w7JOBnXi+OFt32bznWVHH2Sej+2IY6CNokyoXX9ivZPZfo/frH/5XAmT45b0
	L7xX4RSHid97ZQO2QXU24vr753BukWi9XzSdr0vtwKpmzu4QgQ3u8WuN28d3q1rcpuPrJPm7vdA7A
	8uzZD4YwLJbFBTxnSFvDG8ycgQXwS7wlgN2xWwnhlGuEgza4nCNK4Y8i+TVp3AdpbATVKi4dAgLTB
	1d6EM3dPRjGiQx9DBmT84WEv9QzGw6nfJQwezag3BMnwZ01Wbinaeri+mWOgQ9cs0ZuF4gU5DzUMP
	Uxef5ck1j6d6ckUjCxsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPv4q-0001i6-Bn; Wed, 30 Oct 2019 21:00:24 +0000
Received: from smtp08.smtpout.orange.fr ([80.12.242.130]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPv4a-000198-Kx
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 21:00:10 +0000
Received: from belgarion ([90.55.204.252]) by mwinf5d15 with ME
 id Kx06210075TFNlm03x06pi; Wed, 30 Oct 2019 22:00:07 +0100
X-ME-Helo: belgarion
X-ME-Auth: amFyem1pay5yb2JlcnRAb3JhbmdlLmZy
X-ME-Date: Wed, 30 Oct 2019 22:00:07 +0100
X-ME-IP: 90.55.204.252
From: Robert Jarzmik <robert.jarzmik@free.fr>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 37/46] ARM: pxa: move clk register definitions to driver
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-37-arnd@arndb.de>
 <20191028093421.4F5C120B7C@mail.kernel.org>
X-URL: http://belgarath.falguerolles.org/
Date: Wed, 30 Oct 2019 22:00:06 +0100
In-Reply-To: <20191028093421.4F5C120B7C@mail.kernel.org> (Stephen Boyd's
 message of "Mon, 28 Oct 2019 02:34:20 -0700")
Message-ID: <87lft2lzjd.fsf@belgarion.home>
User-Agent: Gnus/5.130008 (Ma Gnus v0.8) Emacs/26 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_140008_983843_9D3BC52D 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robert.jarzmik[at]free.fr)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.130 listed in wl.mailspike.net]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Michael Turquette <mturquette@baylibre.com>, Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Stephen Boyd <sboyd@kernel.org> writes:

> Quoting Arnd Bergmann (2019-10-18 08:41:52)
>> The clock register definitions are now used (almost) exclusively in the
>> clk driver, and that relies on no other mach/*.h header files any more.
>> 
>> Remove the dependency on mach/pxa*-regs.h by addressing the registers
>> as offsets from a void __iomem * pointer, which is either passed from
>> a board file, or (for the moment) ioremapped at boot time from a hardcoded
>> address in case of DT (this should be moved into the DT of course).
>> 
>> Cc: Michael Turquette <mturquette@baylibre.com>
>> Cc: Stephen Boyd <sboyd@kernel.org>
>> Cc: linux-clk@vger.kernel.org
>> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>> ---
>
> Acked-by: Stephen Boyd <sboyd@kernel.org>
Acked-by: Robert Jarzmik <robert.jarzmik@free.fr>

Cheers.

--
Robert

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
