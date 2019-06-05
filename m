Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9828635C78
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 14:20:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJ5kI5J65yOu+vQqlToUL+iyY63/aQ0ZpgoPDHpW2IM=; b=gHvLmC7qoBEqNl
	gg9QJmHSKulUcR/s7q1fDeipqK9JkZc4zC0ScO+iiyJAyQBgZhN9QfqHUzOuYlNuwM1PWTGeb7KeO
	0wrRFvUGqEzkR98403QmqMDLshCP+z65/S6eo+NmxIo0gd+ueqEh4fKPEE+x7ANajwQTMjnAZI+RO
	UXlF/FZ5fj+Uuhc3uKLAXRGrr0lmHDyyo1LJ3kOPqWxYKSceqPt8VqZK+9no2CH1o2+z8/6P2vUOo
	2r8tc55MwoLUHET5QVz821AyylFIPoIGe6hn4DAm0tOtYgkqoOvrd0YD1+lygJpXjO2uv01OsK8jR
	lijwJLBzfw0sIcVJqBKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUuL-0007y4-Uw; Wed, 05 Jun 2019 12:20:45 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUuC-0007wY-3Q
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 12:20:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8788E80D;
 Wed,  5 Jun 2019 05:20:35 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 732363F246;
 Wed,  5 Jun 2019 05:20:33 -0700 (PDT)
Date: Wed, 5 Jun 2019 13:20:31 +0100
From: Will Deacon <will.deacon@arm.com>
To: Ali Saidi <alisaidi@amazon.com>
Subject: Re: [PATCH 0/3] Add support for Graviton TRNG
Message-ID: <20190605122031.GK15030@fuggles.cambridge.arm.com>
References: <20190604203100.15050-1-alisaidi@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604203100.15050-1-alisaidi@amazon.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_052036_142837_1DC2BC92 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Ron Rindjunsky <ronrindj@amazon.com>, linux-crypto@vger.kernel.org,
 Matt Mackall <mpm@selenic.com>, David Woodhouse <dwmw@amazon.co.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 08:30:57PM +0000, Ali Saidi wrote:
> AWS Graviton based systems provide an Arm SMC call in the vendor defined
> hypervisor region to read random numbers from a HW TRNG and return them to the
> guest. 
> 
> We've observed slower guest boot and especially reboot times due to lack of
> entropy and providing access to a TRNG is meant to address this. 

Curious, but why this over something like virtio-rng?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
