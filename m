Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F7E1B4896
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 17:27:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DjuJXSJJcB9Uxp2S+yA2Ucdm1tTc6y8gGO1o8LVHSkQ=; b=giPC4qarivq0SH
	JD+1ZqbH31T5bU3BUCdcTSKobXXTDK557F1HMqK1x1cQ4zq5/dGAdeYdLbn12FMEyxJFHA2W0cv1S
	cRQYJlCB/hSmxkCRjQjIpti3L91izrl2+KSTK/z6rZwto7jMd7fK4AMGe0iRk1b08p0Hd17qnBR5A
	IPRaMYIYrvIzu7eqsZ0Dq8Rxxd0di8UWM8+EtpOvo0LpAp7PiiNWuhWIHiya5jcYl+MHCTA0Sfdhb
	KcoGHO+KMrAQjtj9PkABb26Nf1/kp958CPxBiVGZueDIHxVEz5mAApiCAI3SxAlXxPKD9nqEP7b78
	YLKwT4uLYeYzlvZ7Kqyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRHHL-00069X-GA; Wed, 22 Apr 2020 15:27:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRHHB-00068o-UZ
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 15:27:03 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D2752074B;
 Wed, 22 Apr 2020 15:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587569221;
 bh=iFj8MYiWc1vTLbtxX79bjqZqrGedGEOkRoAIX7PaOm0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2nktKRWLprljtpWMUuVD9MoVOINAjjG5gwTPDM2UKS/8aCjWrkckWAnkD9y9wDRgc
 6J8ImMMDeDpVDhF9TCJd9YN1hRSv9TJfa+8vlyUuYPv8ZVvyDtAk6ne9AncLpJy0JT
 +0Oxe0JPM8bURH6ch8grpO4+XAURnv6fcSu5F6FE=
Date: Wed, 22 Apr 2020 16:26:56 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v2] arm64: add check_wx_pages debugfs for CHECK_WX
Message-ID: <20200422152656.GF676@willie-the-truck>
References: <20200307093926.27145-1-tranmanphong@gmail.com>
 <20200421173557.10817-1-tranmanphong@gmail.com>
 <20200422143526.GD54796@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422143526.GD54796@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_082702_009799_6BF8C220 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: keescook@chromium.org, steve.capper@arm.com,
 Phong Tran <tranmanphong@gmail.com>, greg@kroah.com,
 kernel-hardening@lists.openwall.com, linux-kernel@vger.kernel.org,
 steven.price@arm.com, alexios.zavras@intel.com, broonie@kernel.org,
 akpm@linux-foundation.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 03:35:27PM +0100, Mark Rutland wrote:
> On Wed, Apr 22, 2020 at 12:35:58AM +0700, Phong Tran wrote:
> > follow the suggestion from
> > https://github.com/KSPP/linux/issues/35
> > 
> > Signed-off-by: Phong Tran <tranmanphong@gmail.com>
> > ---
> > Change since v1:
> > - Update the Kconfig help text
> > - Don't check the return value of debugfs_create_file()
> > - Tested on QEMU aarch64
> 
> As on v1, I think that this should be generic across all architectures
> with CONFIG_DEBUG_WX. Adding this only on arm64 under
> CONFIG_PTDUMP_DEBUGFS (which does not generally imply a WX check)
> doesn't seem right.
> 
> Maybe we need a new ARCH_HAS_CHECK_WX config to make that simpler, but
> that seems simple to me.

Agreed. When I asked about respinning, I assumed this would be done in
generic code as you requested on the first version. Phong -- do you think
you can take a look at that, please?

> Thanks,
> Marm.

Wow, employee of the month!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
