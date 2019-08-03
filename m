Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D764806D5
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 16:50:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AUQmBjz3+3dnF4HqU85NnK8bwlE8eBkgxGwy8fPH2Vk=; b=sRkYr2DxFwCj5P
	2vIrKtH9tpOgP5/xXaa4zakrJlpIZkaecoxDr5NVVBXX7RTlgJ3e6t8u4n+rOqDN4r5HL4pfjRdl+
	MrZAU3pwKcv+151dG3eHqzsAyNIEgmU/PCGACYvOV1Pr5l1365fGvLa9rbj/4ElqoQfoSUu8Pejse
	b/1Tk35ZeejKvIjpWa6n5fOeR7kv8UENvP+maqvSjWfPLYCNd8//4Gni568ssxBzPchjE9toxiGBR
	fNtn8AtPs0HgBWpi/pE89CyA0rGMllhrYd6M1QEyNW2hZ03X2uOiE56ooy8v2fyKaQk2LxkxiMhPD
	JjP8vpjaGlzwrBYwYw1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htvN2-0005z7-0y; Sat, 03 Aug 2019 14:50:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htvMp-0005yo-3J
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 14:50:44 +0000
Received: from X250.getinternet.no (98.142.130.235.16clouds.com
 [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D8CAC2075C;
 Sat,  3 Aug 2019 14:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564843842;
 bh=tkbSt5pmygtiBGqZMbLo4ne68Qstn/gKRYx/hNz9Sq0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=erVw3Ky60yjOL8fYvF+Qb0OQdYZUWDMbvEuTNB4Yu2+vQpRjhqv7i3aEnkhUUHVw1
 pT8ZIW72bxRGV4ea+UTrW7TE5O0kXzv+zhArx8VGtznlU+wPDpm1a+k4yNgNHGaUKc
 DTSUPAyPB2B0bVZBfadMSFt/o84SIC//qkvgKv2s=
Date: Sat, 3 Aug 2019 16:50:36 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] ARM: dts: imx: Cleanup style around assignment operator
Message-ID: <20190803145035.GN8870@X250.getinternet.no>
References: <20190727142640.23014-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190727142640.23014-1-krzk@kernel.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_075043_162472_4567E78A 
X-CRM114-Status: UNSURE (   8.52  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jul 27, 2019 at 04:26:40PM +0200, Krzysztof Kozlowski wrote:
> Use a space before and after assignment operator to have consistent
> style.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
