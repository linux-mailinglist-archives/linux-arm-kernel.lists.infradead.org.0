Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 689B91A8042
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 16:48:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ay4HMMbW/2gARlunqkJ/N8bVIVyjCgikOrk7dkGit8Q=; b=bcFcAcHyN3HN3tWTwskPpdE/Z
	uXarVWqvxm4Mu23V0oOBst4OHve4hThHnClOdNRcMFzfjutNZeXmfabPrKkbB2UQrTwHov4/TQDIl
	EKzFyxZD64Z4mLgFXxFNO3jxZNkq3a3lxfH7kDSMUlL+IBvoBjE7R/nFbKM5TRSFNrbw/WL0TxTXR
	hKmJVlOkrcPzwz8mVs6ZAnbECPEOPwmv5NzPYGiAOz+r3yab4bSrjxFx+OysBfeZZoIQgkKozMBh1
	acm3FH5lcgYXctA2O8GzrDXtgB/QYRpt2H497GPkviWMHsIuiuVwLmcaiDRysuczwJt+aGyYg2G1L
	wVVvUN0Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOMrP-0004ZS-0X; Tue, 14 Apr 2020 14:48:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOMrI-0004Yp-7t
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 14:48:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D207D30E;
 Tue, 14 Apr 2020 07:48:12 -0700 (PDT)
Received: from [10.37.12.1] (unknown [10.37.12.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C922B3F73D;
 Tue, 14 Apr 2020 07:48:11 -0700 (PDT)
Subject: Re: [PATCH] arm64: drop duplicate definitions of ID_AA64MMFR0_TGRAN
 constants
To: ardb@kernel.org, linux-arm-kernel@lists.infradead.org
References: <20200414134706.8435-1-ardb@kernel.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <71144ec0-55b1-921d-7021-0cc7041c2c07@arm.com>
Date: Tue, 14 Apr 2020 15:52:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200414134706.8435-1-ardb@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_074816_323684_9ED15FE5 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: catalin.marinas@arm.com, will@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/14/2020 02:47 PM, Ard Biesheuvel wrote:
> A bunch of ID_AA64MMFR0_TGRAN_* constant definitions appear twice
> in arch/arm64/include/asm/sysreg.h, so drop the duplicates.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

Thanks for the cleanup !

Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
