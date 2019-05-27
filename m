Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 175B42AE4F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 07:54:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3oZTgeTLi6+/mr4z9FQPkDhEzSpwjsFsSntkhUpvn/Y=; b=mwBqE/AOTC20lh
	XE+zXooJ8smE3KTisEOX+m0Y2o+uPNOqAZN/JJ57FljN1uw0ZdG+LhyTsYdnLSuMc26vmbOnBIZmW
	43k8ypjDZLkYGgpY2CzLxvVdz47szROnFR5JNwJqjGzLFWCxRJQoYSdvpzZ3jEJr26z3FnqVbltJc
	quKcioACdkxMgUj3J34IPsM0wyZlRxmDduoxDMgwsimNYbQSZRqYPUtqlGzkyvtt0lu1vjPwHiXWQ
	zMEqR1NXkMWUfFW2IvDoRD08LuuRjYvdUk64quhIeXwAz1rvD7R1UduEgDlhmqd5DSD2eIuOOShj4
	zlL/dy5exYrkMAUK+MVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV8aY-00028H-4m; Mon, 27 May 2019 05:54:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV8aR-00027i-EZ
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 05:54:20 +0000
Received: from localhost (unknown [171.61.91.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 87701206BA;
 Mon, 27 May 2019 05:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558936458;
 bh=kTw1vIy63CpClmQ1NgX+q/BmbQU4gJ8nmM5rDKV/lig=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uFCIi4/VcdUahYdnkFYtl1U+KJI/g4FzbMitep4L3JOecatzJ3BTr/U5hNAFtmhDF
 4E+VOFNyj4QYLeLswDpKeiIQJ+qfDT8UDMc4KMXNUatvAHKrLJNSav99Q8b/i13KLU
 V3Wc8MHZY/TRrT7YRa0Y2QLyJd46EbA9GzIEahUw=
Date: Mon, 27 May 2019 11:24:14 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Baolin Wang <baolin.wang@linaro.org>
Subject: Re: [PATCH v2 0/8] Add matching device node validation in DMA engine
 core
Message-ID: <20190527055414.GB15118@vkoul-mobl>
References: <cover.1558351667.git.baolin.wang@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1558351667.git.baolin.wang@linaro.org>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_225419_500191_30428121 
X-CRM114-Status: UNSURE (   9.39  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: jroedel@suse.de, vincent.guittot@linaro.org, dmaengine@vger.kernel.org,
 festevam@gmail.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 jonathanh@nvidia.com, wsa+renesas@sang-engineering.com,
 thierry.reding@gmail.com, linux-imx@nxp.com, kernel@pengutronix.de,
 linux-tegra@vger.kernel.org, dan.j.williams@intel.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-05-19, 19:32, Baolin Wang wrote:
> Hi,
> 
> This patch set adds a device node validation in DMA engine core, that will
> help some drivers to remove the duplicate device node validation in each
> driver.

Applied all, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
