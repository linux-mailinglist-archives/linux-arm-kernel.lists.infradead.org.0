Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1DA143C60
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 12:57:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5IaPU+N2pvmVxm1afphfJorHrRSwqs8LIC+QCg+XAPc=; b=AectLWosHDL+WZ
	MU5wVHxmyPHf5BT0pCY3F8Zh6nn3igHxY6uO6SQazfGgKd1Va+ieLh9vfZQmtKtNpLgAE3goJgQ48
	54PEUdfJmF4fJisCuDQuf9sgL1fB0jgwvIRQHJany3SiriC5qp6ifp0WXzQqOYjx/Rq8Ry0NqPTa6
	wl08I9sPhUy5gwvvdw2hIHiGdmjGvyYDmFevbfxuHYGuFRDQltQksY16T4Tr/OzFoF9Ysa+rGo3RA
	d4j5HX8gB0oxGPj+KvRdjsT1lLS93bJw9UnK29nTko2WExjrfn7ucvv5LSmwJB6SYjm1TsBbb/swx
	g3YMYLeTj45PhK8xPIBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1its9w-00046L-VE; Tue, 21 Jan 2020 11:57:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1its9n-00045r-Hd
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 11:57:21 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 40E4021569;
 Tue, 21 Jan 2020 11:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579607838;
 bh=hiKXb4QufdG9bjr36c56wmifhde1DM2AMuzjPKdVVDQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=C8jJUAzu+XNcQm1xd52L7qSHl8EbywBOMQnKK47usntRPv4NoLl+Q582FmaxXyySM
 oANbIoZ93KhAsLvQscZvcg4gx/k2NjjbvlhjJlD8oI2EbvzTUyeXUKeilkWZM/lHpc
 sWDox6qtP2iUxcvGEtHj0rEFNs/8S5uJowB17hSM=
Date: Tue, 21 Jan 2020 11:57:13 +0000
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v12 0/2] ARMv8.5-RNG support
Message-ID: <20200121115713.GA12014@willie-the-truck>
References: <20200120134621.43531-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120134621.43531-1-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_035719_604366_0F02107F 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 01:46:19PM +0000, Mark Brown wrote:
> This series is based on Richard Henderson's previous v7, it addresses
> review comments from that version by dropping the boot time RNG
> support and adds a new change that uses the v8.5-RNG extension to
> seed KASLR when ARCH_RANDOM is enabled.  The boot time support
> will be re-added later, there are awkward potential interactons
> with CPU feature enumeration which need a bit more thought.
> 
> v12:
>  - Move definition of __early_cpu_has_rndr() into KASLR patch.

Hmm, the HWCAP also seems to have disappeared in this version :/

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
