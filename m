Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4FE1C8D7C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 16:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5bn5C6f2PgZhIlSjeIYkEGvkxEXeeIpZfiJ+YmrgYug=; b=LPN6Ou8/e9b5q6
	+uOCs90bp/aX3w+vYgbFy3QDtvOgvKfHXzapZMGVOlgCtRknjYgz+B1DqTj56TnootOirf7bE21qV
	EqQuR1fPVrxzXNl70y6SyKMos772GmW4Bps9ySotZeZhbPFkHvHYUSwt88Bq9MuEvMgFwagKm8j6L
	QyvDoDomSQT0Q/XgOIgJ18v99WFmLIg89pPfJzQLdnTBRcFWYv1Wkk5rqWXlwb4r33FTV3HmjJXtN
	+5PDSX+wTzMEC/wDP0M7g6lHSwuNYrXbH5m4LCMJMyjEPeZzaP6wBJaYCUqYKedcoPg0ckQpLVoyl
	O0W9ork4r0pG4r9m2IVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWh9a-00021g-Iw; Thu, 07 May 2020 14:05:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWh98-0008Vs-Mp
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 14:05:08 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8BD282084D;
 Thu,  7 May 2020 14:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588860306;
 bh=SiwCH8RCKfzXT3qqrhJZK6OicpexUtZYquQREUsumG0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AvO/xVWP7PR6qhNwWQTmOuJP+VmmvTjbcv7/q8WBox/SvGGpjlLs0ZpZWiMQQqE8k
 07XEMskdNPbV4W/3A3Sd8DKXulryXo/P7jizjir6hH/A3wgkZ1oTWAuapQYbWI+5An
 RgrPeC32TR1T/YvGhq3ltgPztLpwbdSfcFH4UqHk=
From: Will Deacon <will@kernel.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Douglas Anderson <dianders@chromium.org>, Joerg Roedel <joro@8bytes.org>,
 Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCHv2] iommu/arm-smmu: Make remove callback message more
 informative
Date: Thu,  7 May 2020 15:04:54 +0100
Message-Id: <158885763013.86999.17864741879925126551.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200423095531.9868-1-saiprakash.ranjan@codeaurora.org>
References: <20200423095531.9868-1-saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_070506_797542_2E12D9C8 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-arm-msm@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 23 Apr 2020 15:25:31 +0530, Sai Prakash Ranjan wrote:
> Currently on reboot/shutdown, the following messages are
> displayed on the console as error messages before the
> system reboots/shutdown as part of remove callback.
> 
> On SC7180:
> 
>   arm-smmu 15000000.iommu: removing device with active domains!
>   arm-smmu 5040000.iommu: removing device with active domains!
> 
> [...]

Applied to will (for-joerg/arm-smmu/updates), thanks!

[1/1] iommu/arm-smmu: Make remove callback message more informative
      https://git.kernel.org/will/c/02782f3d60f1

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
