Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 801E2FC410
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 11:25:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wYdfcM0WfYFYD7EmVfwYM7zSp6w/tr2+yOqED+2y5wg=; b=CSEuC1a04IQtozZDQNh7jcvCp
	0JJ2Vi1ZsinI8bEN9q6Z6l2vR9aGsd+djb8b5srnTs/bwri+6/LJV5sxF7MTBfxNfn2YAqiWNEbav
	QJ/EO0yL7k0vrsklRKKh93GM07/oHEa+1oOELW/Osebcff/g6CD9CcV6dlkkJB5E7B/xGzVW1DJaP
	5ZOzsOziUE9+cWbuYXa70dh3/NN/Ute7WIpnyJVsDkRSbuc89UgTfVVWVl/Ntj8ZvV6cfjlWdaYWS
	qN18EA2h+wv2cmiLbRH3MRdrpfVWTdM+BQ0XQEg0iZV3iVqM6E0QtWdI2RD0meYuD6oBiyj7wAkSD
	zRvXB7KAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVCJZ-0002bX-8s; Thu, 14 Nov 2019 10:25:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVCJP-0002ak-5z
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 10:25:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3376731B;
 Thu, 14 Nov 2019 02:25:13 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0C19B3F6C4;
 Thu, 14 Nov 2019 02:25:11 -0800 (PST)
Subject: Re: [PATCH v3 1/3] arm64: Rename WORKAROUND_1165522 to
 SPECULATIVE_AT_VHE
To: Steven Price <steven.price@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>
References: <20191113172252.12610-1-steven.price@arm.com>
 <20191113172252.12610-2-steven.price@arm.com>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <090d6a4b-b221-6cc0-1fda-84f09013e931@arm.com>
Date: Thu, 14 Nov 2019 10:25:03 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191113172252.12610-2-steven.price@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_022515_276095_4B31C21A 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>,
 James Morse <james.morse@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/11/2019 17:22, Steven Price wrote:
> Cortex-A55 is affected by a similar erratum, so rename the existing
> workaround for errarum 1165522 so it can be used for both errata.
> 
> Signed-off-by: Steven Price <steven.price@arm.com>

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
