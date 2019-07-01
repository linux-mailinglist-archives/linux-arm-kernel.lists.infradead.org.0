Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0375C5B6D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 10:28:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dVoukmPJ/mC2oMqSkgvrYw0ekfnFww926XoO6FI2Jjs=; b=hG5DSQM+xh73sK
	vb3UX2wrh8ukkKrJpnk/u5/Jo69fyPxlsS9Dty7+9FmtUousCm4sukiTtXJsGV5ydXgHHFHhXYRmI
	AvwwAhYXAcJEoV1er+WaO3A573tGPEsE2LDzw1fXNirQTh+bmzxjz5wTct7UOaSlc+mJI2U21cN3X
	QW+Pyk4zLPbbSxOveQ1SFOtZ4fomwEwK1evZyycGfdwoTlNZdQlxaIeJwPQA6uwb7l0lxI1xojqQP
	+J4CnEURSoAi67ca22iR5Chdp/9yIEiw7cd3Lzs8Gft22AUoEx/LndhwYd3BaKJlgy/ek/fgKEGMR
	UGpulTKAwwiD1mEuWQ9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhrfl-0000kw-ON; Mon, 01 Jul 2019 08:28:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhrfY-0000kF-Fo
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 08:28:13 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5FB05208C4;
 Mon,  1 Jul 2019 08:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561969691;
 bh=VA7edMDdwxFSaRG0IcUd5SjoTcBPI34Q3YvdIxNtTpc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LFxuos+Z/2a0YjDDcJRC7XZY/mCtH3+PCtm9X557iA/Z16aYYDReA9p4fgKQeIxZu
 pSERArKKEzOykrNrhNpf7mq528eLZSRxrILKvY34p2s/4tOlzZdMmw1889YCCRAUSs
 6cNfbrXg8MwhnXn7BMlpEimqIahF4v1vNuHuQ+aM=
Date: Mon, 1 Jul 2019 09:28:06 +0100
From: Will Deacon <will@kernel.org>
To: "Saidi, Ali" <alisaidi@amazon.com>
Subject: Re: [PATCH 0/3] Add support for Graviton TRNG
Message-ID: <20190701082805.pifv4attux4mddld@willie-the-truck>
References: <20190604203100.15050-1-alisaidi@amazon.com>
 <20190605122031.GK15030@fuggles.cambridge.arm.com>
 <7EC45708-38A1-4826-BC82-298EFAAE30B1@amazon.com>
 <3104F396-094F-454C-8308-BF651FAB99AB@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3104F396-094F-454C-8308-BF651FAB99AB@amazon.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_012812_548624_75CE9120 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matt Mackall <mpm@selenic.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Rindjunsky,
 Ron" <ronrindj@amazon.com>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, "Woodhouse,
 David" <dwmw@amazon.co.uk>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[Note: this was in my spam folder]

On Fri, Jun 28, 2019 at 06:05:10PM +0000, Saidi, Ali wrote:
> On 6/7/19, 7:59 AM, " Ali Saidi" <alisaidi@amazon.com> wrote:
>     On 6/5/19, 7:20 AM, "Will Deacon" <will.deacon@arm.com> wrote:
>         On Tue, Jun 04, 2019 at 08:30:57PM +0000, Ali Saidi wrote:
>         > AWS Graviton based systems provide an Arm SMC call in the vendor defined
>         > hypervisor region to read random numbers from a HW TRNG and return them to the
>         > guest. 
>         > 
>         > We've observed slower guest boot and especially reboot times due to lack of
>         > entropy and providing access to a TRNG is meant to address this. 
>         
>         Curious, but why this over something like virtio-rng?
>         
>     This interface allows us to provide the functionality from both EL2
>     and EL3 and support multiple different types of our instances which we
>     unfortunately can't do with virt-io.
>     
> Any additional comments?
> Do you know when you'll have a chance to rebase arm64/smccc-cleanup?

Sorry, Ali, this slipped through the cracks. Marc and I will chat today and
look at respinning what we had before; it should then hopefully be
straightforward enough for you to take that as a base for what you want to
do.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
