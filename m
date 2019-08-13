Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD938B26D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 10:28:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oxpmCczrY1T6/Jbz3deLObvP7+IPw9GiqGPKmrgl7ZM=; b=WI6lcaqjT7tk5f
	NrFXFaxrRe7PZ/2kQ4eOwVTib4m8F1NknOA1sYdrBLXUNjsLFtmGUAv/XY4gquYU+0KQtjfdyPuGf
	n8ZVtb8dzMXu8+MeHeo0boit0Rgx+/ln8BfZNwSNhiJL4Fk3ap/91jtd5f8SVXPET1SbPA+HqVzNN
	RnSm5tYo/12Q1Ngl5g2wPtvKAXIZKwIZ6FduxlI9iT6ui1uEowSdtXGVHtnc7n+mcuYze1Mq3tNJE
	HtwWvW6zwVrxDn4hH6N6phj07GVdRXdf40moPkn6JgBHYq0tsTS6JzGPtPtpJ4dNp2D+olJq8tFKq
	XAwNmlJSWbMwSfzd+xpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxSA0-0003Xy-NF; Tue, 13 Aug 2019 08:28:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxS9n-0003XI-Pt
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 08:27:53 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4CE3820663;
 Tue, 13 Aug 2019 08:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565684871;
 bh=ijpfiLD9sMLgqwaHAQaKtfQ0oW53gq9SgIUsFx/EV8w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QkIvwE5tYT09KkCFtpJwm7HZLlHqi7YtD2t9dHzFHHbudHhT6m3fHElv7f/famL6V
 6RX2sDey0FfjTlcVcY0xV4h11w9BZ4L3bLfmClSBlRNoJ3iznV5dNmefm1i0ut2eGV
 BMQdBYfRU1YgwtqKokZT9Mj2zs7yUdAEeZEiu9ds=
Date: Tue, 13 Aug 2019 09:27:44 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH 12/16] arm64: prefer __section from compiler_attributes.h
Message-ID: <20190813082744.xmzmm4j675rqiz47@willie-the-truck>
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-12-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812215052.71840-12-ndesaulniers@google.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_012751_861573_F741A929 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Song Liu <songliubraving@fb.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 clang-built-linux@googlegroups.com, Allison Randal <allison@lohutok.net>,
 yhs@fb.com, Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Alexios Zavras <alexios.zavras@intel.com>, jpoimboe@redhat.com,
 sedat.dilek@gmail.com, Thomas Gleixner <tglx@linutronix.de>,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 miguel.ojeda.sandonis@gmail.com, netdev@vger.kernel.org,
 akpm@linux-foundation.org, Enrico Weigelt <info@metux.net>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nick,

On Mon, Aug 12, 2019 at 02:50:45PM -0700, Nick Desaulniers wrote:
> GCC unescapes escaped string section names while Clang does not. Because
> __section uses the `#` stringification operator for the section name, it
> doesn't need to be escaped.
> 
> This antipattern was found with:
> $ grep -e __section\(\" -e __section__\(\" -r
> 
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/arm64/include/asm/cache.h     | 2 +-
>  arch/arm64/kernel/smp_spin_table.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Does this fix a build issue, or is it just cosmetic or do we end up with
duplicate sections or something else?

Happy to route it via arm64, just having trouble working out whether it's
5.3 material!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
