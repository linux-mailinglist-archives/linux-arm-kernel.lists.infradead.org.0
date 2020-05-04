Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7761C3847
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 13:35:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jEpQMD43Y5Jdb0Gn7HkBA01qYXJA+tMufQh7tFc2ufU=; b=N/k+2L9TKwoO7Q
	n3dy3fWsvnHY3NyZpHjx9C434IzkNqcZVB3P2py4cUgqwcEYnD79U53quPsEgRBFbVYhGXbpWVFlx
	CJqkbb8U4D6dLZasHOS3Cl3haonq7FDE6zPmKt//qjlkDjG5rS0uSCWnT01DViAyEESNKcfRoF2n+
	4dgV2QavuaabXwzSsE9a84D4tE52NAq7Wx6+lfSTYJpIDK4NeomzMdV8tCEVdef7O0w08+zTmwqGh
	GOUliMHVI4aEG+BKe63k9hcOfjmP0fKeNUHjmIMdMp0kEvv+8gybo+beRB34YlK8KdFVPce9r1JDv
	s96g5AX1ioEuCpr2zbog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVZNp-0005mF-1v; Mon, 04 May 2020 11:35:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVZNI-0003Mt-Bg
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 11:35:06 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1A5CE2073E;
 Mon,  4 May 2020 11:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588592101;
 bh=/Fy029ucC+efYPOQOL7ZVilAVIHcqwu2rtfv9GhVdkU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CMuPkCc6MzEKmvHq+p+BVwMm2CATSNoewN1AbHy6rV0if1yFVPJIAWRqQ6QQgZWoP
 oTGGBRPBsXNPbPG2QHNnRuwa2FFNiZk6L6VS/uTjsygmnpej4Zm3suY++qFnspqeui
 dzoq0B2wh4ItnG4aXLwzy8egjJ0m/bxhzzszGSqc=
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/2] ACPI/IORT: rework num_ids off-by-one quirk
Date: Mon,  4 May 2020 12:34:53 +0100
Message-Id: <158859046152.207472.4391733811307896496.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200501161014.5935-1-ardb@kernel.org>
References: <20200501161014.5935-1-ardb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_043504_743295_0D7FFE7D 
X-CRM114-Status: GOOD (  11.84  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, catalin.marinas@arm.com,
 Pankaj Bansal <pankaj.bansal@nxp.com>, Hanjun Guo <guohanjun@huawei.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-acpi@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 1 May 2020 18:10:12 +0200, Ard Biesheuvel wrote:
> Replace the ACPI OEM ID matching based IORT quirk for the ID region size
> ambiguity with runtime handling of this condition.
> 
> This is based on the observation that we only care about this when it
> causes ambiguity regarding the output reference, which means that we
> will have more than one match for the input ID. In this case, we can
> just disregard the one at the end of a multi-ID region: if we hit it
> first, we record it tentatively but allow a subsequent match to
> supersede it. If we hit the correct match first, there is nothing we
> need to do.
> 
> [...]

Applied to arm64 (for-next/acpi), thanks!

[1/2] Revert "ACPI/IORT: Fix 'Number of IDs' handling in iort_id_map()"
      https://git.kernel.org/arm64/c/6d3b29d07c3c
[2/2] ACPI/IORT: work around num_ids ambiguity
      https://git.kernel.org/arm64/c/539979b6ec62

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
