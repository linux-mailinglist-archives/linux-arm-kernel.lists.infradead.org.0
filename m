Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D88DE6FDA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 12:19:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P4faO9gF72G0o9FYick8+GsOkufMiE4s/nRn7ZjX7jU=; b=nLv4Hzf4gluU9s
	FWBBBsk7P90kZNzFQfyL4eF/81m2vMK/0J+Vtg3qQLhO98i70goHYzB/jPn4BiUdfm16V6SJAfHZC
	IIjFC7KmY3VRQ9uR6itaH3hMV0s+gfeVzLcY78k3Pj8rZtwQAYPI6dU+YuFytKCllHEBM4/G/lPKj
	564TfZnb8Y927IbtObymo3J0Q9w3dumaHhIrIHZ7yysrcILrY3JagWsyc7ucES7hMnA0XsqwEiuKk
	gfC1a+BL4vbAmA5dDLaMTaphuYbDfyTHKXscnNlUEViNNmdnkPCnWcQTbes5T+8GfcFOZ0kGSTX2f
	mAKUT0D7f5FLZUVqiv/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpVPM-0003nk-Cj; Mon, 22 Jul 2019 10:19:04 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpVOu-0003km-KP
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 10:18:39 +0000
Received: by mail-wm1-x342.google.com with SMTP id v19so34749996wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 03:18:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+GcrJc5mWQ55cEUCcfbBZGMvLQ78HJvPwtodMDzyle8=;
 b=G/KTQPys8CcucScPfqsgmQtz62QdZqLEo1kJwQNA+4eLiF2asiNiddgtT/h14Ix94U
 /CdTawyAL79G+1ILA0FvrmO8i2FryDf4LH9+Yj6o4XGqgEMRSjeMmCPzYQxKNpoZorLo
 z+SV+ac1Cei6AWdxZ6IceFB28kHbysTzIUNOHaUoxyQYbqkiAlOpN1troV3WXeI636me
 pZqpRxgTA+gDotUsJGcbBrxF3vsWRMbB6fLgmFb0seU6n83Fjiw5lyPCsGhKFl5VBVtA
 j6RauOuX7Z0lH14cBe9PTdWl14HxQfSyO24r5I9K866EX/AQa4BQydrhG1rhbyb9i/j+
 VvTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+GcrJc5mWQ55cEUCcfbBZGMvLQ78HJvPwtodMDzyle8=;
 b=iBFM9gX6tPhmFuhU82BThwRwGYB4mQtAcGimGmjaR4ZZsZXglvtSpQb2Iigj//c+E1
 QN7gaA6U4Io1wyTfzIm9uD1N9gwShMTjjcA7mNFM1LSFCct83IG9FbmQnWffiX/HO7KN
 i3ksC51qPypc7ifKmNCRfhUcHG/TsOc/GakiNQWrUehrqOD3lKIsbN/+LLwekSe284dw
 JFjYKohlPCiIIV1rG87CkxFtJD8SmZb2nPbpjsJrqNsWp2PZdatSlkFbcOFCDm3GO50g
 C8R8Y5bbQCmvC9OW26xoyBywOaMgyItsF/t6Fd+mnez7q8x8l1V0t3aTci4Zdv3i4QRI
 F2dg==
X-Gm-Message-State: APjAAAUGfyA9jmpp+PH5T6sNBRwyOrI01ZQY9+76lEjiViHHvogRgLLr
 Q/X2G/kNNiC7cWqOzmMZqr/rig==
X-Google-Smtp-Source: APXvYqwWpeo4gQ4edBUy9N5k3STiDsB6fnGJqOqO58p5YopawrIHfEaaX/V07cjOuiVOf8ftj5mijg==
X-Received: by 2002:a7b:cc97:: with SMTP id p23mr64661606wma.120.1563790714647; 
 Mon, 22 Jul 2019 03:18:34 -0700 (PDT)
Received: from apalos (athedsl-373703.home.otenet.gr. [79.131.11.197])
 by smtp.gmail.com with ESMTPSA id f17sm34005987wmf.27.2019.07.22.03.18.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 03:18:33 -0700 (PDT)
Date: Mon, 22 Jul 2019 13:18:30 +0300
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Message-ID: <20190722101830.GA24948@apalos>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <29dcc161-f7c8-026e-c3cc-5adb04df128c@nvidia.com>
 <BN8PR12MB32661E919A8DEBC7095BAA12D3C80@BN8PR12MB3266.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN8PR12MB32661E919A8DEBC7095BAA12D3C80@BN8PR12MB3266.namprd12.prod.outlook.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_031836_864969_DB9C7286 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "David S . Miller" <davem@davemloft.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jon Hunter <jonathanh@nvidia.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 07:48:04AM +0000, Jose Abreu wrote:
> From: Jon Hunter <jonathanh@nvidia.com>
> Date: Jul/17/2019, 19:58:53 (UTC+00:00)
> 
> > Let me know if you have any thoughts.
> 
> Can you try attached patch ?
> 

The log says  someone calls panic() right?
Can we trye and figure were that happens during the stmmac init phase?

Thanks
/Ilias


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
