Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7249126837
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 18:35:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fxlPNgEwPxtzqzprBu+q7z9vwqT9BIwfw8OrsFrrsbg=; b=DFhIm0HYiBkGiR2AXmnucXNU1
	PSgE1xeJoPdOSXY4LwDJgNtDx5awdBVhFexz9NoAWXEqKxKhzoeaXSs50QAkUejsIMsqueDm9Cdhg
	QXWnl7xq/vJB3nsky3h+qJ3LW/u7e6T0aMTWXlbamiuM3GB3kN2gLfR7ZHGxe/cKcy+51qx8enWkq
	qhBLTlhskhRntabD95mzknbijzAHt1P2eKnNocYR333cp4PdRls+obqkGtVeYYLzyR8MV7Pu00LX0
	hDKqNQ8ieDUsYhgahbgj3Xk6gb0hutooi5apGySI/52/k1Bj9W1SqplkS8pYgOjdrCZZb7x/Uk+Yl
	qdq1VvH7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihzhn-0001N4-84; Thu, 19 Dec 2019 17:35:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihzha-0000wK-4M
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 17:35:07 +0000
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 492B6227BF;
 Thu, 19 Dec 2019 17:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576776905;
 bh=s5oaspOL57PeyHvJJ2IZujrmMyDV5G1RgW/jNsRFpcI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aeu9sc1zY3qe/XYURcfyADyDRQSTY4m2jgc72uJjDA9qYqsqBUeapVh15uArYh1Pz
 /j2mksn7HnCACdYISyc8+X3B8RSXfCmgNGfo6CFlQdR8YvP+RNFi4eBFnFfrcL5c0b
 brTHvQUO3hWECeyPuRkD51cWKHNHIIaUCg9yeyjY=
Date: Thu, 19 Dec 2019 12:35:04 -0500
From: Sasha Levin <sashal@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH AUTOSEL 5.4 128/350] spi: pxa2xx: Set
 controller->max_transfer_size in dma mode
Message-ID: <20191219173504.GN17708@sasha-vm>
References: <20191210210735.9077-1-sashal@kernel.org>
 <20191210210735.9077-89-sashal@kernel.org>
 <20191211104738.GA3870@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211104738.GA3870@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_093506_222664_F9D5AAAB 
X-CRM114-Status: UNSURE (   7.80  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org,
 Andy Shevchenko <andriy.shevchenko@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Robert Jarzmik <robert.jarzmik@free.fr>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, linux-spi@vger.kernel.org,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 Daniel Mack <daniel@zonque.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 10:47:38AM +0000, Mark Brown wrote:
>On Tue, Dec 10, 2019 at 04:03:53PM -0500, Sasha Levin wrote:
>> From: Daniel Vetter <daniel.vetter@ffwll.ch>
>>
>> [ Upstream commit b2662a164f9dc48da8822e56600686d639056282 ]
>>
>> In DMA mode we have a maximum transfer size, past that the driver
>> falls back to PIO (see the check at the top of pxa2xx_spi_transfer_one).
>> Falling back to PIO for big transfers defeats the point of a dma engine,
>> hence set the max transfer size to inform spi clients that they need
>> to do something smarter.
>
>This won't fix anything by itself, this asks other code to change how it
>behaves which may or may not work in older kernels.

I'll drop it then, thanks!

-- 
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
