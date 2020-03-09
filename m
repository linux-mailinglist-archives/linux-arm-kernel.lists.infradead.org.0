Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7BEC17E67A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 19:09:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xtsbGMduoK+s25lOnl4DLI4vV2VxHsZXJ1VPkeWnAgg=; b=UG5OZRdiGNx3Mb
	m9/CoHe9GU9M1IqC2XjgHmKRwE3rXwTLanP2fCBcKmJhwVV5a4WsfyKZMACIN8oZR1j6zLrL4dK3W
	7v84QtS+GFObzVucMqwLNP5dlME1ic3Goj+3Ap5MAQaQESO3Rmeo1MPBRPxpMwOn8foabO6Z+560l
	sRT3Q+QHnrslpIRP0STXGwZRH/0QqWhG3Y9MSxC9mKJ2erRZHobgIhbaKludyp6GV7+fPHn3tBNLG
	HexlGlyfvXIsXVoglE5u9lMPBXyb4lo8SmiArwVPuS4pYMeJF0xUcZ5wcIlwzq61Edg2hkbsg4rbY
	6hwlw6issSU2kgeAKHtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBMqe-0005nX-4M; Mon, 09 Mar 2020 18:09:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBMqQ-0005dO-7z
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 18:09:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E61B51FB;
 Mon,  9 Mar 2020 11:09:29 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 5CE883F67D; Mon,  9 Mar 2020 11:09:29 -0700 (PDT)
Date: Mon, 9 Mar 2020 18:09:27 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: csum: Optimise IPv6 header checksum
Message-ID: <20200309180927.GF4124965@arrakis.emea.arm.com>
References: <3a723a4b08938154c37febe2504f029c4480e53c.1579546194.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3a723a4b08938154c37febe2504f029c4480e53c.1579546194.git.robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_110938_398570_E33FB16E 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 06:52:29PM +0000, Robin Murphy wrote:
> Throwing our __uint128_t idioms at csum_ipv6_magic() makes it
> about 1.3x-2x faster across a range of microarchitecture/compiler
> combinations. Not much in absolute terms, but every little helps.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

Queued for 5.7. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
