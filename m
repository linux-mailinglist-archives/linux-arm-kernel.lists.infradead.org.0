Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A153D1466CF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 12:34:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6q/zRxjMzXpnIVdiRzS6RpcKUIBGNZnN+2viV67vQWQ=; b=k9bwvZjtQ34qWa
	ZjMVSV0jSkzE3NUbXzmBmghF+8FjvvDhoaH4sJK3zWVaSJhi873Se3xm6F6nmIv0YXqXnEqXEgi21
	iKKTkhCNYryUboyNTJqheJxQ+Jy558dJikEV3oNT0dzKdEDVerPc3Ep9njOTAMDAUbZYq8O4s4Qma
	gxruqburioKNS6EGCQi2T4Y2g7ZmDKlDzRVNsaF4WtZwGH9DJP6ml7ywYPBl9LwXL9eaDB+V21Eht
	6UABmZETofpjefS/SGrIvsYG4JBe1H7ewTi419/YsfNnWi55/i2ueb35kql4ZkbwXQQwAqPz+fQIR
	GbVSAJs9dqeZbN7ilEGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iual9-0004Af-Q4; Thu, 23 Jan 2020 11:34:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuakz-0004A3-6v
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 11:34:42 +0000
Received: from localhost (unknown [106.200.244.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0CA9624673;
 Thu, 23 Jan 2020 11:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579779280;
 bh=+r90l2uoL8NnqDDDJFW1ex4a2VbKEX/hPb2DVnWyXY0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vJ1SVFv9DOSPiRZtXwZIPhq0Rw5NPM2/pVNyzyhS66BsJJ3WGck/cTi+sXjxHaoJY
 uXpCgDT5pdbV5BaRbg1p6sudwV1JxvMsOtnUvwdOMs4oDeD93lhaPSFpnNGKMr3Xvc
 NqpGjG6/oKCxJkqOb8X/Z7/UbrMQt3QiUGYiCeAA=
Date: Thu, 23 Jan 2020 17:04:36 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] dmaengine: s3c24xx-dma: fix spelling mistake "to" -> "too"
Message-ID: <20200123113436.GX2841@vkoul-mobl>
References: <20200122235237.2830344-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200122235237.2830344-1-colin.king@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_033441_274204_30C295DE 
X-CRM114-Status: UNSURE (   7.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22-01-20, 23:52, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There is a spelling mistake in a dev_err message. Fix it.

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
