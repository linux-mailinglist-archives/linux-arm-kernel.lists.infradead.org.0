Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB700118032
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 07:09:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3pmrf9cUA9k5SyFXwXEO8INJs4E9cwCQBF7/D2z8U8E=; b=kPlMwbPyoGotRW
	vQlJEr76RHp3G/fnCbDUDozJAzlI85Fyj8wuhEol6ohnaeDTlJh3EKUsjYHgINviLPEl452fhcPrn
	EHMnZCYgDdo1tdTFfI6Aq4UqG2cRynoJ9uVhK3Ext7oE188kOQqOCqeMpB+hmp+g582sVNzwA1+v5
	ZK4/q+BrUHRuuyk2CscmvGRZjD3Uoa5EAVsCnP8xjyyHbe7h9NrKJofJ2iFelepgUOv5toVhmGb1W
	Ur2X7DCPdcwZeGQ6Si7P2yzqJeqNsjUp9NIcJxjh8uL6YyEU2mKYf3tbRz0GsskzltY9Qy0eWndmV
	xr79D4hQaEvYgx0w9wLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieYiQ-0002SQ-B7; Tue, 10 Dec 2019 06:09:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieYiI-0002RM-CV
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 06:09:39 +0000
Received: from localhost (unknown [106.201.45.82])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DBA43206D5;
 Tue, 10 Dec 2019 06:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575958172;
 bh=4rDF19OTGhWr2Yz1zu32PLgeh+yNxqh4/GNJ9Sj427g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Rt9q6vjmgljzO240i4f+vxunERmneKwL8BMDsiVxxdMc67sKv/yFx5gVOynIUhVpb
 UUfaA8QiYCrS9wNEmBbs4ZMSLsRoiJULBsV1B6YYy9S2U9fdiprzbBVoJxVIHtgfc2
 Kaa1yLnY3TVClvhMB4smhcqMuOMTZFgk81LkjFyA=
Date: Tue, 10 Dec 2019 11:39:28 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 0/2] dmaengine: pl330: A few system suspend/resume changes
Message-ID: <20191210060928.GS82508@vkoul-mobl>
References: <20191205143746.24873-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191205143746.24873-1-ulf.hansson@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_220938_446485_A4AA1D77 
X-CRM114-Status: UNSURE (   8.07  )
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
Cc: dmaengine@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05-12-19, 15:37, Ulf Hansson wrote:
> I accidentally stumbled over a couple of things for the system suspend/resume
> support in the pl330 driver, that I thought deserved to be improved. So here
> there are, only compile tested, so far.

Applied both, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
