Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8D7FB0B7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 13:44:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hS+lk0YFBaAJSEqMdsLaknhC54Lxd6jey2ytOf3w56g=; b=k8cbNRdPhsh7NWrpSnIDfNtWc
	xyf0VvI3YzPehqNHNO4hEqQh5P3FWX128pUqypVaqgLhKL5Qs+4AxpfxNgKI83zaLpOA28Nn9T3B5
	9RJiQEfaHCxTsyI4zowp2lrGv+cFbl+7sGku2nvVEL8xODc4XAX1eyKv76E4F/weiXvevHU7KLJEY
	Rkuh0UDFAJvLFT90UbQlLpdxanJtynAaDB8yoUofAs3qfX/vyNhYD8TJImQiHfnib8uX9OQsmhz27
	KNr7UbcB899qtXTXeltYKW5gsYOzFVc62eCfKMauLlqUvmgGsJaLxJiM8G2L2cAhd6LsaovoBMU6l
	nvpuM16Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUs0u-0002Rl-AJ; Wed, 13 Nov 2019 12:44:48 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUs0e-0002I7-4r
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 12:44:33 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iUs0a-0001J2-0j; Wed, 13 Nov 2019 13:44:28 +0100
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v2 1/2] arm64: Combine workarounds for speculative AT
 errata
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 13 Nov 2019 13:53:48 +0109
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191113114118.2427-2-steven.price@arm.com>
References: <20191113114118.2427-1-steven.price@arm.com>
 <20191113114118.2427-2-steven.price@arm.com>
Message-ID: <566ecd45c8bf07b3cb5d75a10c9413a8@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: steven.price@arm.com, catalin.marinas@arm.com,
 will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_044432_331900_198B2898 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 BUG6152_INVALID_DATE_TZ_ABSURD No description available.
 0.6 INVALID_DATE_TZ_ABSURD Invalid Date: header (timezone does not
 exist)
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-13 12:50, Steven Price wrote:
> Cortex-A57/A72 have a similar errata to Cortex-A76 regarding 
> speculation
> of the AT instruction. Since the workaround for A57/A72 doesn't 
> require
> VHE, the restriction enforcing VHE for A76 can be removed by 
> combining
> the workaround flag for both errata.

Are we sure that A76 behaves the same as A57/A72 when it comes to not
caching any of the EPD* bits in the TLB? Because the 1319367 workaround
has a lot of the A72 microarch implicit to it, and I'm not sure this
works as is on A76 or A55...

The patch itself looks OK, but I'd like some reassurance about the
above.

          M.
-- 
Jazz is not dead. It just smells funny...


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
