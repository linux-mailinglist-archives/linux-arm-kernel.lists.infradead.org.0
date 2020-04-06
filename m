Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8870519FB0A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 19:09:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MsPAX4IWlK8BqrfVnb7J7ZinoTmW6N3DYjAWbG8Vn9w=; b=IGW/gTYIpZCj95
	8TtDoYf1LjZp8hxm3VqEKD3EUWcDjQ1UfPjoyQpASySu0bxy4/Zgt/1rWWtZGhum5UWCK+FxhWYQQ
	Q7YDAC7RXzzMiVm/WIvOtT5ArF2MDgB9yISM5eUN+rjkd9LD5cNq4ybhOhWKsHE6QGV1xOI2cdtYL
	xKAykk783J056xNNgBNSmKMiv/Yi5MrXR21K4/MaIuOsxyTQBSoZZ1geo0eh8Hq9RT2IVxo1qSb4P
	d94+GlckDTi9QjUypWsbHWa/t0ebzapQmrhrf1vXFzHu6HsbaUD3+2E8IqhvVrNcRzGyNLE1n0aAT
	hUwSYaGWS4KquVFNKRvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLVFW-0001GB-Iv; Mon, 06 Apr 2020 17:09:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLVFN-0001Fm-Jd
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 17:09:19 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A3F70249C3;
 Mon,  6 Apr 2020 17:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586192957;
 bh=jGlWkL5YDyGUqffV9CUBwhs+ieoeBSdeSCJjrAMi7+k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bX0J7CVKPDu/QIq9uQnf9dItL0Yzl4bDcJcljSzEPOOiqin2OZvTml6CkaO62pLAv
 K9QqMIjQCNhZP4Vpk/GbF7q8Pz6D2vnJplND4/FWUGeSXJmWeg9IhJtUPwDDj71SJz
 lqxG1EHkPqFtMupQgI4o/ezaQW19nu24BhHG4NSc=
Date: Mon, 6 Apr 2020 18:09:12 +0100
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 0/6] Introduce ID_PFR2 and other CPU feature changes
Message-ID: <20200406170911.GA7446@willie-the-truck>
References: <1580215149-21492-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1580215149-21492-1-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_100917_669718_603FAC94 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Marc Zyngier <maz@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 06:09:03PM +0530, Anshuman Khandual wrote:
> This series is primarily motivated from an adhoc list from Mark Rutland
> during our ID_ISAR6 discussion [1]. Besides, it also includes a patch
> which does macro replacement for various open bits shift encodings in
> various CPU ID registers. This series is based on linux-next 20200124.
> 
> [1] https://patchwork.kernel.org/patch/11287805/
> 
> Is there anything else apart from these changes which can be accommodated
> in this series, please do let me know. Thank you.

The latest Arm ARM also talks about DFR1 and MMFR5. Please can you include
those too? Might also be worth checking to see if anything is missing on
the 64-bit side as well (I didn't look).

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
