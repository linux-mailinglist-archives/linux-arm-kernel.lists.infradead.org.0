Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2192FE5186
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 18:46:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KCKoPBTMN4SVmVokRwyFrn26T/hR9bDkbEgxVRHtzIQ=; b=ndN4n/9HvALmXF
	6IZ1Rb/FiRChxmStqqEaAwUYxgK5xZNMSpKnKFN9VRGSml6xsDGt0n1lEVViLu5RUlMkfyXUJxgEc
	UluamfOTRGXd4mBD6uoB5awWSi+Tmn1+zImV1U8/sYJ1xx/+GQ6xJyevEN1TPidb8QPTKeHPdn39s
	cWTMyG+DrYWJMgTUldJZh3Wzq79+NLEFr9mNZLBPci9NFEDJeqtv8tD1FBJJbwEWgVc83aW8w/Y+f
	k2tDnfy7JTx95It/AHuSfSx/88jlBaJPPgc1VGS7GBof/ZVbIQmfG2xA1pXVO+UbgJO4k/zCdmAXf
	LZdazbRwp+VMA0LvSaNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO2jC-0001AN-Og; Fri, 25 Oct 2019 16:46:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO2iy-00019d-Jp
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 16:46:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 17ED5328;
 Fri, 25 Oct 2019 09:46:04 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 65B313F71A; Fri, 25 Oct 2019 09:46:03 -0700 (PDT)
Date: Fri, 25 Oct 2019 17:46:01 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v2 0/3] arm64: errata: Workaround Neoverse-N1 #1542419
Message-ID: <20191025164601.GO3328@arrakis.emea.arm.com>
References: <20191017174300.29770-1-james.morse@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017174300.29770-1-james.morse@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_094604_697582_64716FFB 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
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
Cc: Will Deacon <will@kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 06:42:57PM +0100, James Morse wrote:
> James Morse (3):
>   arm64: errata: Hide CTR_EL0.DIC on systems affected by Neoverse-N1
>     #1542419
>   arm64: Fake the IminLine size on systems affected by Neoverse-N1
>     #1542419
>   arm64: compat: Workaround Neoverse-N1 #1542419 for compat user-space

Queued for 5.5 (with the fix suggested by Suzuki). Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
