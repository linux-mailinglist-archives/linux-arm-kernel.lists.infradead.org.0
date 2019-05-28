Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F7D2C897
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 16:18:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C1hGIHZUBbrjBIKoBouI2HrK8vyS0qPSugg/evecLHc=; b=GYue1KvnSDBRMk
	jTyIsKYY49t8JP9y4c322UzTVQ+tmXfvmaywkwQHEpc1StMGYXmPblLNNn+/L53ygxbRC7HVovwJY
	iIGxcZuq8XB88s5NQgk4+uF6QbhGVDbXT1gCAYjVHtswlpSvpF5mlHj9HZEwH4uJ2imyTNp1ogFsD
	jcA93Y4DgdJ8gePphuA0fUSS54epI9OkT/jrJUVu+Jb1PSYPuHniXbq1dw4OdNGmO9ajbvgLABaPS
	KV8+K3wN+Iw4t+cA7QS6OYGFyxJ0s62O6U8XA/j4uvK4JCYev0rDQdhzX0BPN6rK+yWLY0hgl7ep2
	fIqLIp6jHKwAZT0UlGug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVcvg-0000pX-1w; Tue, 28 May 2019 14:18:16 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVcvZ-0000p8-KC
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 14:18:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3A8F080D;
 Tue, 28 May 2019 07:18:09 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 29CFB3F5AF;
 Tue, 28 May 2019 07:18:08 -0700 (PDT)
Date: Tue, 28 May 2019 15:18:05 +0100
From: Will Deacon <will.deacon@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v2] arm64/module: revert to unsigned interpretation of
 ABS16/32 relocations
Message-ID: <20190528141805.GD20758@fuggles.cambridge.arm.com>
References: <20190528141316.3304-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528141316.3304-1-ard.biesheuvel@linaro.org>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_071809_667000_8D1117AC 
X-CRM114-Status: GOOD (  14.32  )
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
Cc: mark.rutland@arm.com, marc.zyngier@arm.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 04:13:16PM +0200, Ard Biesheuvel wrote:
> Commit 1cf24a2cc3fd
> 
>   ("arm64/module: deal with ambiguity in PRELxx relocation ranges")
> 
> updated the overflow checking logic in the relocation handling code to
> ensure that PREL16/32 relocations don't overflow signed quantities.
> 
> However, the same code path is used for absolute relocations, where the
> interpretation is the opposite: the only current use case for absolute
> relocations operating on non-native word size quantities is the CRC32
> handling in the CONFIG_MODVERSIONS code, and these CRCs are unsigned
> 32-bit quantities, which are now being rejected by the module loader
> if bit 31 happens to be set.
> 
> So let's use different ranges for quanties subject to absolute vs.
> relative relocations:
> - ABS16/32 relocations should be in the range [0, Uxx_MAX)
> - PREL16/32 relocations should be in the range [Sxx_MIN, Sxx_MAX)
> - otherwise, print an error since no other 16 or 32 bit wide data
>   relocations are currently supported.
> 
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
> v2: use nested switch to test the RELOC_OP_xx type, and print an error if we
>     encounter an unsupported one

Thanks, Ard.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
