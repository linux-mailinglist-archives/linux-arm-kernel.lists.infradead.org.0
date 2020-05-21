Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABDF11DD110
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 17:20:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e7C6Y0CcuTPb2iLPqUxVEv6QJypZZtTHT5CVkvGjt7U=; b=fZOUp7O2AB+sFu
	PQP16cZty4bh1853d5PUGxLUjChlRsi3Z/lhi6gb5ktMXODUBnn+hEAmOG6EkmXryRrhBzKKU1vOI
	QNeShFCKjdgsaIR38MFzHsNg8P1GLQsS18oNZYAlvHtONQkT97S9nML4CgmHfcTSJjaf0X4tmJepW
	ScVh9eQYytSfeBofjBHuRYejXWyWrGx2aqpcBQtxVVQrTW22pbi3regCbJYvBamoW5C4p+7ZgftSE
	ZWmVeco5ih6s17jNyyC3wumfOAlntKS8IWmyUaEbnUQc96BH1mINBCUDkK+m3JvJxUQw7WGCfyKEn
	/3NtZkKCckxsJdWWHRVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbmzy-0003RD-S0; Thu, 21 May 2020 15:20:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbmzR-0002K0-Do
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 15:20:10 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 73D7120721;
 Thu, 21 May 2020 15:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590074409;
 bh=VBHf/uwr9lVUGNN4guQrPlWpSAkPwFVKYMF0nx/qEf0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bNZpuo0s+QAkT1PVqY2bgohTDbUXm3WcmnYR9HKTaONoJ5ZdEUxBB4jj6Hn2CKyCK
 WBVQ/37AWr11YRcpYt9BnZldDlmN49hfPfiLm3Dj7y91a0RLJ8XxXiZFnitp7y7QaM
 GyE9pGj2NSVwl2KIOOlhC4p1mpZqHJfzsCDh29O8=
From: Will Deacon <will@kernel.org>
To: Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] firmware: smccc: Fix missing prototype warning for
 arm_smccc_version_init
Date: Thu, 21 May 2020 16:19:59 +0100
Message-Id: <159006645790.155638.4933300366215582782.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200521110836.57252-1-sudeep.holla@arm.com>
References: <20200521110836.57252-1-sudeep.holla@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_082009_508011_210B13B0 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 21 May 2020 12:08:36 +0100, Sudeep Holla wrote:
> Commit f2ae97062a48 ("firmware: smccc: Refactor SMCCC specific bits into
> separate file") introduced the following build warning:
> 
> drivers/firmware/smccc/smccc.c:14:13: warning: no previous prototype for
> 	function 'arm_smccc_version_init' [-Wmissing-prototypes]
>  void __init arm_smccc_version_init(u32 version, enum arm_smccc_conduit conduit)
>              ^~~~~~~~~~~~~~~~~~~~~~
> 
> [...]

Applied to arm64 (for-next/smccc), thanks!

[1/1] firmware: smccc: Fix missing prototype warning for arm_smccc_version_init
      https://git.kernel.org/arm64/c/269fd61e15d7

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
