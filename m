Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CE11B58A2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 11:56:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cjPLjRD31A8bdBLSy1g9hf6eJYQbOmyQ0e39cOdj8tI=; b=bVkasMYc5uCps4
	rElM8hJrp3MuD5WNJqVrGxTwJQJPwOksFXH5O+Ohxg12dE3XQciCCHPoq99UlpA1lLEyhUz1l0mJ3
	lgJhbaM4wu7OI2Xuhvqp99d7WRRfYpRDMeyY3mPTDU7Rc/mIAmdab1H1LQgptKIumPKpaDSqOwc/5
	Zrn20t5CVxtf63UhDLj6baRlg3+zxBMvtY3Ylo5Hb5SxhDSANMRC3bND9QdgZ0Xi6dicHu9zNChMd
	Q8aMl0w3FQFgfBCwKIETPaxWuR3gaLTX+cvfWgtLMFXO63GYwxjBAslYWMHZf4gTnzB1A97VTYa3K
	C+LB7R58txUXF88f/hOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRYaP-0006h4-RR; Thu, 23 Apr 2020 09:56:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRYZy-0006XH-Gi
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 09:55:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E9B2B31B;
 Thu, 23 Apr 2020 02:55:33 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 39ECC3F68F;
 Thu, 23 Apr 2020 02:55:33 -0700 (PDT)
Date: Thu, 23 Apr 2020 10:55:31 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: docs: Mandate that the I-cache doesn't hold stale
 kernel text
Message-ID: <20200423095530.GB4963@gaia>
References: <20200423093658.10602-1-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423093658.10602-1-will@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_025536_091441_6EABBD7F 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 10:36:58AM +0100, Will Deacon wrote:
> Although we require that the loaded kernel Image has been cleaned to the
> PoC, we neglect to spell out the state of the I-cache. Although this
> should be reasonably obvious, it doesn't hurt to be explicit.
> 
> Require that the I-cache doesn't hold any stale entries for the kernel
> Image at boot.
> 
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Will Deacon <will@kernel.org>

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
