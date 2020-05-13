Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 410FE1D1167
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 13:32:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y5I7NGDe/HlwdQCNJBuU0fMRNYUMNhiO2hnEg3B9SCE=; b=TG8pJtrhPS6B96
	Fgmd3FBHsupfoZHUFhRFurb7CItbNCkav7VaMQjPVENGOVpZhhUO+m8POM/b9jQice9n/WhuHWynl
	sqKIes5Gdr/uvO4VEUOg2Ne8LilMlYuL+JRHWV6AAI6yWWeKNlPzCgGsNULzov/SS4H9mFy2JTOOm
	AnSV9QsRrq9r+TYBJ8H2A+09FOwcBqnfKvn9uUF9W9AH5sTsuzMD685laF+595ScJc9hq0WVzxOTQ
	GFpRzWdTMoyN9wC4DAEFck1IPN7yFn8RP65Hv9BWm8A7YaKUzCYldxPj7U3kKZJy7Mu2zUDWE3uQ6
	B0xpmf+cEPorNq06CmEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYpcq-0002oe-Kd; Wed, 13 May 2020 11:32:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYpch-0002oF-Jc
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 11:32:28 +0000
Received: from localhost (unknown [106.200.233.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 38048206D6;
 Wed, 13 May 2020 11:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589369547;
 bh=yt2oTtk3DAQ2TBz+mJVtLGeNnrAuw0cG11zANkU/Q38=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jRgjKmMS/bGTaOQ30XwWSSgGjWKO/LPqih6o7hC8Ju8ziLbHInawgo5iszTrZIZK+
 ZgOOr+hmNPk1+bctnBho+Loo0EAH8F5cmE6mZzU8Kg8eLzb+uiWu5cd2fGLKAwNJl8
 lgfIA8krFpRhMCWrbhiIu6Y5ENltBBUgDDIXikVQ=
Date: Wed, 13 May 2020 17:02:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jason Yan <yanaijie@huawei.com>
Subject: Re: [PATCH] dmaengine: qcom_hidma: use true,false for bool variable
Message-ID: <20200513113223.GF14092@vkoul-mobl>
References: <20200504113406.41530-1-yanaijie@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504113406.41530-1-yanaijie@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_043227_662568_47010B5F 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-msm@vger.kernel.org, okaya@kernel.org,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org, agross@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04-05-20, 19:34, Jason Yan wrote:
> Fix the following coccicheck warning:
> 
> drivers/dma/qcom/hidma.c:553:1-17: WARNING: Assignment of 0/1 to bool
> variable

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
