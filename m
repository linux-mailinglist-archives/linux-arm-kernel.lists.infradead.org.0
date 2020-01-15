Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D9813C713
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 16:12:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zX3Pteb6jMgZwtW0pI/iOtCUAwrmMbORveTo0W6gb5w=; b=ZFOZv6q2fhZDBd
	wCtrpN4Xpbcj/zmM4PNOxOIJQ7aW3yRsYFdOipymfMKd+uaY8iIyjH9+hRuF8FX8cXOv88eXxoJFp
	XxTOtDO535aUuJQH/FuQraIawvoZx2aNYWqR3D7Esk4cjceHLpq1MCj/HNGHBdrSkpXgScK2DHJMi
	h03sudk4IpVskM3AKth6WTuLS6r6YNlyt0OgsXH8a82OJqGOmEBWKK0DXF4642S95JovBEFcPgYUH
	gIhc/7m0h6Hh1e/zvOCtotmmcEGnkFE3dV/NgF+mFVoqtikuEGwiSdFoj4jnnhpt/j8P6m0LFceW0
	+sq6uJMa2YutmrOXMtzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irkL1-0002uC-3I; Wed, 15 Jan 2020 15:12:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irkKm-0002sm-8Y
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 15:11:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 03D6431B;
 Wed, 15 Jan 2020 07:11:51 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 196203F718; Wed, 15 Jan 2020 07:11:49 -0800 (PST)
Date: Wed, 15 Jan 2020 15:11:48 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 0/2] A couple of cleanups on top of for-next/e0pd
Message-ID: <20200115151147.GD3429@arrakis.emea.arm.com>
References: <20200115142900.28976-1-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115142900.28976-1-will@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_071152_354776_231DF022 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Marc Zyngier <maz@kernel.org>, broonie@kernel.org, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 02:28:58PM +0000, Will Deacon wrote:
> Will Deacon (2):
>   arm64: Simplify early check for broken TX1 when KASLR is enabled
>   arm64: Use register field helper in kaslr_requires_kpti()

The clean-ups look fine to me. With the latest patches we never call
kaslr_requires_kpti() after arm64_const_caps_ready has been set.

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
