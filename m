Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C670D419E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 15:44:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bea11/IlWz6m1kREmYX/GjNRTsvGlNhbGbCXpFM0IEg=; b=NQNZEVnioK8U194WZwzgpvWDw
	eFgbMwjUNiqs9CrW1czNctaU8VyG1qpvIJAVaxPpg4HclLqVQJr8uj/YgctbLobM+gIxCAEiUX/c5
	LI2AN9svN7eHT8yDGYaBsys50OfFae9LdVeYXbWpKcjL7V2S7gxLcZaGdf11KRwL1IIz3UST5RPuY
	4yje8zxlcKn1McV86sZM568c3/p1bP8E+ojCAmp0NXyyrPM+M6Ta4FaWWU6qpBYikw1rOTtlEt5ez
	QqkNLLGuMFYUIlo+J9s+sOPL8KeT2bQEmQQCUW1EkiWTZ+j5XbfLRwSAg9D/cFY/ZAZFgB5x9acUK
	OCDMzNfuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIvDj-00016x-IQ; Fri, 11 Oct 2019 13:44:39 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIvDX-00016J-BD
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 13:44:28 +0000
Received: from [167.98.27.226] (helo=[10.35.5.173])
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iIvDV-0005kC-UC; Fri, 11 Oct 2019 14:44:26 +0100
Subject: Re: [PATCH] arm: add kernel/fork.c function definitions
To: Christoph Hellwig <hch@infradead.org>
References: <20191009140637.12443-1-ben.dooks@codethink.co.uk>
 <20191009153316.GA25186@infradead.org>
From: Ben Dooks <ben.dooks@codethink.co.uk>
Organization: Codethink Limited.
Message-ID: <12dd599c-e7e8-2cdb-4363-fdf18c023bef@codethink.co.uk>
Date: Fri, 11 Oct 2019 14:44:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191009153316.GA25186@infradead.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_064427_528793_B86CBA24 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@lists.codethink.co.uk, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/10/2019 16:33, Christoph Hellwig wrote:
> On Wed, Oct 09, 2019 at 03:06:37PM +0100, Ben Dooks wrote:
>> Add the definitions of arch_release_task_struct,
>> arch_task_cache_init and arch_dup_task_struct which
>> are used in kernel/fork.c but defined in various
>> architecture's <asm/thread_info.h>.
> 
> So please lift them into a common header.  In fact I'm pretty sure
> I had that comment before when people did the same blind sparse
> cleanups for riscv..

Does anyone have a preference to where these should go?

-- 
Ben Dooks				http://www.codethink.co.uk/
Senior Engineer				Codethink - Providing Genius

https://www.codethink.co.uk/privacy.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
