Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C127029C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 16:46:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qF1BSzzGLnlD/P+WthSpC254pf5CziHDwsBPVhgMjMQ=; b=aYlO/p3tMCNC3q
	jytp1pQvA5wHc3mE9O4bs6aEUzR6ibi4lG1/enLlp5txE3m3fwRBmHeZd3qGpxGYjDR3eplyBxtzu
	7JMZb30wAijM0C6nZ2uUjkHGQf/XdNvxyXxpV8CzVF/sNh1f9hYeNw90UAmfpFirdUYV5y05JY9yE
	NXx4j4p8ZNkSVL4jV5vuaZ1uWzxno1DJfWvXvemgqqhldkq5RbRs4d9mzbhk7VmKG3D0iPaaBg8OZ
	b+Z02FhWNxLvigm2ZVICFKZFiaSsZznFJSqSsa1nzJucLfWoLfFSQD04Bjp+a3tW7lnjg8uF0w97t
	1TTjPYL2wHKZM5rqS4Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpZaZ-0007ap-Vs; Mon, 22 Jul 2019 14:46:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZaL-0007aF-8h; Mon, 22 Jul 2019 14:46:42 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 96B672190D;
 Mon, 22 Jul 2019 14:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563806800;
 bh=aN96RqHhbFtraBsB4bpQicZmqqEyfnQJXn8t4OUjY4w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tyh1qOuD2zxIAHoQanGJSEjjKR+xzOAF2BvPz9mtGD8uktf4/NlJYADLSDTaEse1B
 U0PoouZqx2ctRbcQjoroLaIuoa7G/k5+1Jkdio2T9uFfs+ufkuW3/1e3veTOzA7tLz
 /jsIOgNadEzTef5znP5z8xVDabajM0LTUdCiiQl4=
Date: Mon, 22 Jul 2019 15:46:36 +0100
From: Will Deacon <will@kernel.org>
To: Vicente Bergas <vicencb@gmail.com>
Subject: Re: kexec on rk3399
Message-ID: <20190722144636.x3bxq2ky7w2yfn3m@willie-the-truck>
References: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_074641_320546_976695B0 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
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
Cc: Heiko Stuebner <heiko@sntech.de>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 04:31:27PM +0200, Vicente Bergas wrote:
> Hi, i have been running linux on rk3399 booted with kexec fine until 5.2
> From 5.2 onwards, there are memory corruption issues as reported here:
> http://lkml.iu.edu/hypermail/linux/kernel/1906.2/07211.html
> kexec has been identified as the principal reason for the issues.

I thought that you resolved this issue by upgrading u-boot. Did that not
actually work?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
