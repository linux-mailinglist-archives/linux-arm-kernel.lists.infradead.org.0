Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F7915B6CC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 02:44:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I33U+lZYMGL5z9U3ge57CzchsrB5WNEHD4CkKB2muu8=; b=VSk6riWOIt19zA
	Ngvvt4y59dzddVX5pOC50YYDxzR39P0s9Vbr9uS5hPbhsv1xdaJFNcZ0ZQzb4j6B/kgYlhQHn6OEa
	4Rc2OHF/YlZh9LIclTx6nc4WquU+AeIGOqNEKZk+bDDP0hc6AlnEdk8qYI0Z3nB0qbqbVpnlfE6VA
	9nxWknjgBmmBiyEM1YevlVl2QSYxCaifWRHw15gzuWaTSGCC2CN7ADBgkgbhcrQ2taTDkmK4E2LxL
	d2HYKI517oVd3t6dDoSGmF4KZcKD3gpOZnM9e1pDMIiVBUGx355X5q0D7AsdiPOuPtGNOG/hrfiH1
	d7wQx6iFHhqOWdgu1M7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j23Y0-0007fH-4q; Thu, 13 Feb 2020 01:44:08 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j23Xt-0007XG-6Y
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 01:44:02 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 0BBBC75F4;
 Wed, 12 Feb 2020 20:43:56 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Wed, 12 Feb 2020 20:43:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=fm1; bh=8
 T4iiTyw3eLQepB6swSO7o/IfktgWfWV0D82VwCjj/E=; b=f3fRodTyc87ROjGZg
 f6xhISXZ8IB4FeYJ2BWIeWPLgahI9JYegZPO7P3CcMH6/E4ydS7USxBYX2uSIqqS
 j62qH7kzAabWTmpAVWPikAKGKFD/QG5SFc6Od2kIc6ut7vCx200g/R3VVLgZSuNc
 VHmSqEkF1SY43S7Usd4yCT2NzLl0v23IpC2N+Hb/6RldnsWJJCeAFwMPy9jj0/rC
 oIUvhGpeCvQT7eyybmFmraHrBilL1k5ys8ollF57F1bJNZjx+hIO5ovAu8vCMOri
 8lIQetjnk/emqeAK9wG9NZbzoKw8BCAgyWSP7VduZfBv71R85r9vzKIUSEbtpHvR
 FLZKg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=8T4iiTyw3eLQepB6swSO7o/IfktgWfWV0D82VwCjj
 /E=; b=drnYkKGaLTWK14k5w3ipnZ0N5vk+Z9lFw9AqTR7g3IZo/uZR3r4Pi215u
 BCNDdsa2swlyANH3o90lDNa9E2HJxm4mAVkX3MHXRVp/0G3azrsu0/lyCtV8Vy83
 IBLbA7B2MNJ2VQVbhgP7tmRBwBoh6IhpUoNIwCiQ7w+yOQQDv2vfwYI0UohX3QPc
 iCHZEnZgbhOXdzo3kkpNH+42s0oWlR7HDVWK4w0/kFbX2+ylgJySJ8tEld6jHMXE
 9L32xohyxvReK865aZXNm6GdMJ7y/l9+ajDXnzNI/HSC6DKK0dEsOtLsR6oVOn8j
 pzPgsmWTVCEvdRd6+bu8x1i/i+UiA==
X-ME-Sender: <xms:26lEXr8b79IcrzKys9NpAd6DwBB77LrlZx_bbpvVslYAvylDCO-JEQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrieejgdeflecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefuvfhfhffkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:26lEXr9f9XlBa5oH29pVAzdTfXbpVeaYIDa2u5YUyTRzjS8wwnXjYQ>
 <xmx:26lEXkBLPgkXz84vAue5vmJFLZ_p9mUjFH2TTkHEnYWC4MxW_ZKNZw>
 <xmx:26lEXryTINXz7iU6GoqyhRcI4gKucxJm_VTijjkYJmJ_nADf4geiLQ>
 <xmx:26lEXtsaxZdRgXSTUxrimXLAZYwEysseRnM26aYv-EFsaNnmo91MaQ>
Received: from [192.168.50.169]
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 88B8C3060717;
 Wed, 12 Feb 2020 20:43:54 -0500 (EST)
Subject: Re: [PATCH v6 0/6] Allwinner sun6i message box support
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Ondrej Jirman <megous@megous.com>, Vasily Khoruzhick <anarsoul@gmail.com>
References: <20200113051852.15996-1-samuel@sholland.org>
From: Samuel Holland <samuel@sholland.org>
Message-ID: <36f1fee4-c2b7-af55-d867-21edd6bf1e56@sholland.org>
Date: Wed, 12 Feb 2020 19:43:53 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200113051852.15996-1-samuel@sholland.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_174401_387730_950A3CA3 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Jassi,

On 1/12/20 11:18 PM, Samuel Holland wrote:
> This series adds support for the "hardware message box" in sun8i, sun9i,
> and sun50i SoCs, used for communication with the ARISC management
> processor (the platform's equivalent of the ARM SCP). The end goal is to
> use the arm_scpi driver as a client, communicating with firmware running
> on the ARISC CPU.
> 
> I have tested this driver with various firmware programs and mailbox
> clients on the A64, H5, and H6 SoCs (including specifically the arm_scpi
> driver), and Ondrej Jirman has tested the driver on the A83T (using a
> similar patch to arm_scpi).

Ping. Any comments on this? Can this be merged?

Thanks,
Samuel Holland

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
