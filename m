Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFFEB4EF0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 15:14:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p1Sk5Ac5x9hfhJM930M0QwmHf6rU1CftXc0rh2JL5AE=; b=Mn171n6l4ZddoK
	KctecCF9YKlGkmrHobf7pPxPLtnSvJdG0SpipIWKJae9kHa1CpEEbH3ICd6tmHhT7On6s2OpmKF2w
	DeE6pvTBt8P/WMU57obSwn1EkRlja+8It9H5eAMuhpC5CYWDbQ+FC5PIklANVHzV1h9p7EYFZs1sT
	s+2LEseNQK9YDk4TgV0GkPmAel/2p/kpqRViRVvdIbFNlt5bqdXJC6ED23fz4EsUrRJS1BhqAwFJ5
	Sy4RbVgjwvm/cNUtCbms9tzDnrH7PVCwajCYOEXt8C602LvHdP/PvA6wYlA7qILSPOq6DSEQOqFP5
	nBWJdO7+6xKG/QZugcMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iADJc-0004ne-Oa; Tue, 17 Sep 2019 13:14:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iADJH-0004eR-3O
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 13:14:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6957F28;
 Tue, 17 Sep 2019 06:14:22 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 B6A843F575; Tue, 17 Sep 2019 06:14:21 -0700 (PDT)
Subject: Re: [PATCH] KVM: arm64: vgic-v4: Move the GICv4 residency flow to be
 driven by vcpu_load/put
To: Zenghui Yu <yuzenghui@huawei.com>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
References: <20190903155747.219802-1-maz@kernel.org>
 <5ab75fec-6014-e3b4-92a3-63d5015814c1@huawei.com>
 <07ddb304-9a7a-64a3-386a-96eea4516346@kernel.org>
 <dcc5a10b-c9ca-f833-4a60-e5d3726fa0b9@huawei.com>
 <3b2d4a15-5658-f50f-0214-1da708cd4923@huawei.com>
From: Marc Zyngier <maz@kernel.org>
Organization: Approximate
Message-ID: <c068036a-e9e2-0cb1-d1b5-9cf6d53e963f@kernel.org>
Date: Tue, 17 Sep 2019 14:14:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3b2d4a15-5658-f50f-0214-1da708cd4923@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_061423_235218_07D72ABC 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Andre Przywara <Andre.Przywara@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/09/2019 11:17, Zenghui Yu wrote:
> Hi Marc,
> 
> On 2019/9/17 17:31, Zenghui Yu wrote:
>>
>> But this time I got the following WARNING:
> 
> Please ignore it. I think this is mostly caused by my local buggy
> patch... Sorry for the noise.

Right. I couldn't quite figure out how this could happen with the
current state of the code...

	M.
-- 
Jazz is not dead, it just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
