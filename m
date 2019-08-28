Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C22619F85A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 04:30:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iJav9d13JnZ7mMVaYk6Q0Kw1EX8qppvW0QMC5UyjqjE=; b=qbNPEIA0ixLx6b/tyaCVYxpvqM
	1oR1UErxKVOtDXK3v7skCbDuGtp1cqZ7S99xnshnEHmKW93YlS3U+dECykNi2ZxyniYWpe+vxgHml
	cf1sJf8bKpLQn5Apm6axPDF0L8QZPvb/+HhVNdD2nouhpGaCqt4iktiqxp7xdtY+XUloFuKmdyk7C
	0bVhpQ0gg2Hxr8zTyQNk0rfKjk1gt2TH3K+NQb/bQFr5XqXgS/m3LBzHid5yGaZZT6Ew2tWNQAdW0
	ZYam7euCp/0Ku2a79by8fX+ki/aaDDIlKxD+gQI1UrPDHvGosSFMcqh+ee8oRMZIcnsNPzWfoRFpC
	WCwsrbBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2nif-0001Fi-Oo; Wed, 28 Aug 2019 02:29:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2niN-0001FO-3V
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 02:29:40 +0000
Received: from localhost (unknown [40.117.208.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A97992173E;
 Wed, 28 Aug 2019 02:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566959376;
 bh=0uflqG7PzKmn3DfOCePtKJB4PS27A7Scw4BVKd4qE+8=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:From;
 b=t5wXFWOnBSKZNpAQVw1ycpHrG86Xf2BVuwMf7sPLAObNGUAZs+LJN/kMVHu25j56J
 dhAX5bGqlLzfj5HAs230gbnl7hg5N6/G/eNbBoFylhJjmd4Vl632sMn+JQsmZPD4QC
 L4uq6HHazggt9RzmLErZ/BxJi58NNeA5Kerpd4RA=
Date: Wed, 28 Aug 2019 02:29:35 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/6] Revert "arm64: Remove unnecessary ISBs from set_{pte,
 pmd, pud}"
In-Reply-To: <20190827131818.14724-2-will@kernel.org>
References: <20190827131818.14724-2-will@kernel.org>
Message-Id: <20190828022936.A97992173E@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_192939_169660_989C9377 
X-CRM114-Status: UNSURE (   7.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, , Will Deacon <will@kernel.org>,
 stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

[This is an automated email]

This commit has been processed because it contains a "Fixes:" tag,
fixing commit: 24fe1b0efad4 arm64: Remove unnecessary ISBs from set_{pte,pmd,pud}.

The bot has tested the following trees: v5.2.10, v4.19.68.

v5.2.10: Build OK!
v4.19.68: Failed to apply! Possible dependencies:
    0795edaf3f1f ("arm64: pgtable: Implement p[mu]d_valid() and check in set_p[mu]d()")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

--
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
