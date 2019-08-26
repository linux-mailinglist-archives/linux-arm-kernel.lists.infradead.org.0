Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1F19D6D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 21:33:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fzhzMO9uJW3ZNkshdLX2HKCUNi75Qpew6ShrpN8Q0ug=; b=bmdcfCNvZdBdUzb268Gyh1AJN
	0mF+4g561tRCxoupmflxl7hx33x8LDZ+A7RVKTLYH6wWx+ts/fm+fcAje43Gmjj8fnLIIElGHeSeW
	Cct5ByFocVI96O6W38udVuj/BCNXVkArrCB1hbF6YGjTtncmt99COOmZ7wtmtCkBfnUoqtIPK8WjE
	I+P4FtPszuYCcmHU6EXC+R1clBDEO2Q+rKBlBHa/u8CQaPoojajacEG2lmkEDHQVyS8JkijSNMJX0
	nBhtdmgVi6AwvsxjhilYreMOYavqXldYROEmIURa0wQvCSzPfEMZRjv8MUrqk/VHVJ49iyEwT7rrX
	FMrVce/pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2KkL-0003RX-47; Mon, 26 Aug 2019 19:33:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2KkA-0003QQ-8c
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 19:33:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6AA0C337;
 Mon, 26 Aug 2019 12:33:27 -0700 (PDT)
Received: from [10.37.9.91] (unknown [10.37.9.91])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3822F3F246;
 Mon, 26 Aug 2019 12:33:25 -0700 (PDT)
Subject: Re: [RFC PATCH 0/7] Unify SMP stop generic logic to common code
To: Christoph Hellwig <hch@infradead.org>
References: <20190823115720.605-1-cristian.marussi@arm.com>
 <20190826153401.GB9591@infradead.org>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <2b4a744c-ea20-00e6-828f-7be125326792@arm.com>
Date: Mon, 26 Aug 2019 20:33:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190826153401.GB9591@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_123334_351879_AAF1B919 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, mark.rutland@arm.com, peterz@infradead.org,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 takahiro.akashi@linaro.org, james.morse@arm.com, hidehiro.kawai.ez@hitachi.com,
 tglx@linutronix.de, will@kernel.org, dave.martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph

thanks for the review.

On 8/26/19 4:34 PM, Christoph Hellwig wrote:
> On Fri, Aug 23, 2019 at 12:57:13PM +0100, Cristian Marussi wrote:
>> An architecture willing to rely on this SMP common logic has to define its
>> own helpers and set CONFIG_ARCH_USE_COMMON_SMP_STOP=y.
>> The series wire this up for arm64.
>>
>> Behaviour is not changed for architectures not adopting this new common
>> logic.
> 
> Seens like this common code only covers arm64.  I think we should
> generally have at least two users for common code.
> 

Yes absolutely, but this RFC was an attempt at first to explore if this
approach was deemed sensible upstream or not, so I wired up only arm64 for now.

Thanks

Cristian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
