Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E94BDDEE30
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 15:43:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PnDGBeyK3lLKcHsjl4khlNOi0mW4xLskhLQiR68rnIw=; b=LeNdmVw0nXtGIG
	I93wcI+bgrNbtUbJQFdg4SxRYScr0TJO3Nnyp54cqfTV4cCiDe5pSgX0GmqxDUg8ZFiBc3rsi1KpQ
	hP/oEjKgr6VzEa5eG34CE+gwleyJtvhlA3QAgNgNmVLBiGT/PhaElQwRPf1FTQM/S1QHl+h6y1Z6W
	WktY/K927vCWKiAV98MhsCXeQ5AEuEgLSI1Xi3RUCBO3IZfjOhmEqksuVqg5eMdJmNjCDN32ioB4a
	ngk9nYIe3SP8jVlETnGosbexcB1pfQ6CRPHqTNxH91zbpsvY5fbCLSGW8vjobBSlgb3j/eLd0eBY/
	jL/CtuTozzrCwcu27mHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMXyS-0001AS-LE; Mon, 21 Oct 2019 13:43:52 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMXyI-00018x-DF
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 13:43:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 978551007;
 Mon, 21 Oct 2019 06:43:31 -0700 (PDT)
Received: from [10.1.194.43] (e112269-lin.cambridge.arm.com [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 80D133F718;
 Mon, 21 Oct 2019 06:43:29 -0700 (PDT)
Subject: Re: [PATCH v6 08/10] arm/arm64: Provide a wrapper for SMCCC 1.1 calls
To: Marc Zyngier <maz@kernel.org>
References: <20191011125930.40834-1-steven.price@arm.com>
 <20191011125930.40834-9-steven.price@arm.com>
 <099040bb979b7cb878a7f489033aacc7@www.loen.fr>
From: Steven Price <steven.price@arm.com>
Message-ID: <890a7909-1083-2e6d-368a-f1d03788f5a1@arm.com>
Date: Mon, 21 Oct 2019 14:43:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <099040bb979b7cb878a7f489033aacc7@www.loen.fr>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_064342_492435_63673068 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, linux-doc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/10/2019 12:42, Marc Zyngier wrote:
> On 2019-10-11 13:59, Steven Price wrote:
[...]
> All this should most probably go on top of the SMCCC conduit cleanup that
> has already been already queued in the arm64 tree (see
> arm64/for-next/smccc-conduit-cleanup).

Good point, I'll rebase. Are you happy for the entire series to be based
on top of that? i.e. based on commit e6ea46511b1a ("firmware: arm_sdei:
use common SMCCC_CONDUIT_*")

Thanks,

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
