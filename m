Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CBB7853D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 08:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H9t4DThvAs9wZGb5jeMus8/ktVFBGCU2Tv5J2jiN5Ho=; b=cfb26B0Yre648+
	g5+zdKsGd0LwKMkGbDhKv4LKsoqfwGSBrd3VijAecyYMt9eft4C1NEUo2vYLHWEfB3tOS2eSgja1E
	kh0T9Mi5LK2ufS+w+FzVSHteC6Is7nz2vRnj6ja6qdcEKwinI69BwasrWEh0O5Qq6Z20otqXKHMSU
	3bfWFdqkWGlhzYutUWohAZ1swlmv91RRslig1umbR8CsiQ2bWOixu1X8Ve35vf3F9Yy7GopeZWriT
	spIksWP+rvdmVb41Xiulf75ugt9hfsgLYj+530I97mtTaPUpcuaJJIzjv2V/PKlpAiteJl2I8+wfN
	puOsQcN1g4qDH0iA5itw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrzVF-0001X9-Jn; Mon, 29 Jul 2019 06:51:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrzUh-0001Wd-Ib
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 06:50:52 +0000
Received: from localhost (unknown [122.178.221.187])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 723802073F;
 Mon, 29 Jul 2019 06:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564383051;
 bh=7EIM/UdJcMdkBEpYL/2lqKx3znF0JoheFSPt0gtaius=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=utZbpH0utAK7Pcs9kxBWH9OmIzm/OcTo1xoYGsYMaWWgblC4G3Sc5HVHQ9LKutdcT
 9IhaKCcq0nZLN2dFeZoZRQlKvaRht2DPypeYtiekkPmlh/F1+7k74jMIHMwFakGZAz
 9PSBcUVNDoMfqOIlju89+2kvtPUs+pjf4Ehi70n0=
Date: Mon, 29 Jul 2019 12:19:39 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: dma: Add YAML schemas for the
 generic DMA bindings
Message-ID: <20190729064939.GH12733@vkoul-mobl.Dlink>
References: <20190720092607.31095-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190720092607.31095-1-maxime.ripard@bootlin.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_235051_652270_950AA9D2 
X-CRM114-Status: UNSURE (   9.56  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, dmaengine@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-07-19, 11:26, Maxime Ripard wrote:
> The DMA controllers and consumers have a bunch of generic properties that
> are needed in a device tree. Add a YAML schemas for those.

Applied after changinge subsystem name to dmaengine in patch title

thanks
-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
