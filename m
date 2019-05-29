Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC762DDDD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 15:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7n39zITQbHMpkUrl4krtJ+cI6DL9pPd6LTtQYa22K8Q=; b=A8r1XgTx4odrd0TUYGre1ZBBF5
	oI4ExICvo1V8GSgxh54hLuMDfOU6m25FL6IXBNKKPcqGBLQ/BozXk+1nEsyIBd65xbk6xaqN1efBZ
	Y2CyCWgmdnX3nGb1VSoKA2BE56oqP03eNFIrso/RGcW5M3UEC2nv4a3eCZCgqjGQFcrNSj5YZdXB/
	u9zmyt2IPUwPytHmxEHvsbMMOeQBAozgFaPVyeewFOoT1FBF0kzQvzVbdpliyP5dMUkGOVsNdxlnO
	+pdkuRYERTkDBAlqAHolOt/nMcW9ep9AmC+3RkML3XY5ikgRLH4Atygu0GicSi3JHq1sh4ZFVMTxk
	Nn5JEDQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVyQR-0008FP-4o; Wed, 29 May 2019 13:15:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVyPy-0006kR-Kp
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 13:15:00 +0000
Received: from localhost (unknown [23.100.24.84])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 282302183F;
 Wed, 29 May 2019 13:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559135698;
 bh=GzFgmmuODM5CuQgYNQIZQ/v15pTBr5DIpb+FOTiC5yA=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:From;
 b=vQXbFNp9ZvPxDhC3CP1ydypNRJozsRz/x4qNvCoR9vU9zRs7HXJpXJolO25mOrUFA
 66fASJ2Fg2XpWPsfeN8I5qXupoD0MSbm1TooiYowICl0SDHIMTpuRx/Z56y8C8vUTB
 8bHXMYvIdphI71Kd5g7wRAUVIGIohAkaj9LXtM1U=
Date: Wed, 29 May 2019 13:14:57 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] module/ksymtab: use 64-bit relative reference for target
 symbol
In-Reply-To: <20190522150239.19314-1-ard.biesheuvel@arm.com>
References: <20190522150239.19314-1-ard.biesheuvel@arm.com>
Message-Id: <20190529131458.282302183F@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_061458_856337_EA508177 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: , marc.zyngier@arm.com, will.deacon@arm.com, stable@vger.kernel.org,
 james.morse@arm.com, Jessica Yu <jeyu@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

[This is an automated email]

This commit has been processed because it contains a -stable tag.
The stable tag indicates that it's relevant for the following trees: 4.19+

The bot has tested the following trees: v5.1.4, v5.0.18, v4.19.45.

v5.1.4: Build failed! Errors:

v5.0.18: Build failed! Errors:

v4.19.45: Build failed! Errors:


How should we proceed with this patch?

--
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
