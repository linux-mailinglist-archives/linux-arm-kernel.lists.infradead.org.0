Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E224AAB56
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 20:42:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YlI0dtZxjDnc3r7ICEbnskKPhkqx5OMsTbfFY7ONOhQ=; b=nEgG2awuD+u6Qk
	Hauoh0//wBOVtlDMqU+PZSaRewNkD2Ltvt45BOI3BzEDDZOEm5LEfA2FtxiRoELSci4JvKCjF7DXg
	iHJESwpTJbkGRnU2jTxF7n4gfWVgfPuvEgfq0F4xmXocyNAcyIdxU/mp7oyNxIEf4ogZATCyponVg
	Fy5xhvhOjeqgcIiH7XRG/sVSFQbLSyaIhqRLX/uA4vnHvpgfLI+UmYQN6tIpJlsZCozFf5FYiSaK3
	xPrGGOeBZXZ03MPDZzN1305qj3hNM7WSy3sm2IFrvR5JpSdfxcKi/wFtbTMl4OAH4EbX5131QqyJ/
	G5RKuUV5q1x6sTTuYgHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5whr-000110-Do; Thu, 05 Sep 2019 18:42:07 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5whd-00010V-Ox; Thu, 05 Sep 2019 18:41:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1567708872;
 bh=M1UGnPJJ+2VuEq33S0TdraaobxmDCqcrUAEKeQ8qQUs=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=ZUbcaI0T/PtTrufTRwK68S574RNG0IIdnpXj1FAIZ5Hk2GJ9INr7/CPWoXQf98mlD
 xqb1bKKYrkuiba88qXFMUIdcc0HdiT3JpXBB3hoJKof64v9bk714UXkxmhiRfaSz0T
 7fTJq/e15prco2OCp2oJY6DJpfk8h7K9eVpIydPk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.90]) by mail.gmx.com (mrgmx002
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0M9Jss-1i125G274g-00CkFc; Thu, 05
 Sep 2019 20:41:12 +0200
Subject: Re: [PATCH -next 02/15] thermal: bcm2835: use
 devm_platform_ioremap_resource() to simplify code
To: YueHaibing <yuehaibing@huawei.com>, miquel.raynal@bootlin.com,
 rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, eric@anholt.net, f.fainelli@gmail.com,
 rjui@broadcom.com, sbranden@broadcom.com, mmayer@broadcom.com,
 computersforpeace@gmail.com, gregory.0xf0@gmail.com, matthias.bgg@gmail.com,
 agross@kernel.org, heiko@sntech.de, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, marc.w.gonzalez@free.fr, mans@mansr.com,
 talel@amazon.com, jun.nie@linaro.org, shawnguo@kernel.org,
 phil@raspberrypi.org, gregkh@linuxfoundation.org,
 david.hernandezsanchez@st.com, horms+renesas@verge.net.au,
 wsa+renesas@sang-engineering.com
References: <20190904122939.23780-1-yuehaibing@huawei.com>
 <20190904122939.23780-3-yuehaibing@huawei.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <ba19c083-3c86-eaeb-c071-ea96c2e0dd6e@gmx.net>
Date: Thu, 5 Sep 2019 20:41:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190904122939.23780-3-yuehaibing@huawei.com>
Content-Language: en-US
X-Provags-ID: V03:K1:WOmrGoYt2aZLE0c0r9K+/VJMXUNzvW/kX7vmvJXlWPXzYW5NR9J
 luyrP+5HUxX+Ik46iIlejCplMa2am5XS0NfLLQ7ZhlXmasy18+i/OA5VoR5aEu1/yVdmVn8
 AN3N1d8lbnA4HPsgXXRyGpNFweFZlAReZpmXxwXL0XGXKC31gFW9I6jO2SraUQgZg8eu25p
 foqc0kdcwKEMp61BV4kvQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nkW495xtuv4=:tTHYYykyc8MeFH8VYXAtPV
 1oz89eAs6J4EKmXGB8jywzeB9Rr+HNFXREs3+bl+7MUrhT6Tb5vvEZikpkfN7YcTYBM8A3ZVH
 n4yQa0u0tAnwQxNBcgEVMVosn+/mze41K8we0bObWZxZnDx2pz3YHKwLh/kXBAuFm7+0Rk0Vz
 yZS/73BjtleldpUL66iGqoS9Kj+dBB99d7VSTXyev99g2bS5AtTKgTzYAA9qHIzpXlHp1Snis
 PEOX6R6c/BcoM0LLyefpTFEzY1NY3QGc+6StuImf16b+OmrPPtW8D//puDVdc/ayO1z9cDfeJ
 2PL2gEH1o2MNxNBYTWlBwD8J1tB2j4dcJRftBAnkaqQ85Gnn8YFcAPxPDuXAvIsqLzV5G839e
 t3N7LgD6zsHeAv9bVTecZjXBHpH+dyf2hYb76M23xIsMwiP5LM3kDJiED61MjNEaWcX8zsGfm
 RP9/VZQ1volYqm1DX5jdkWLrIHvMus+bGRoZLYL2Q9xS0OD/7faZ7Od2MonlHbOd/NL+MJ3aS
 5RkRJ+DxwonIs2MCGlaOei4aS36r81FmO4qEESDkxqF7tpHww+f3zGTyKOB3NihhKihqYzL13
 pQeW9GaJIbB8jiwxFakYjSp6Ti/3DZcmc/zXgV5bm4FDgyFgUYqnvUq3AK21ur7WXKI5fAqot
 Xp+FknRGP5lTeyZZ8CsTu46mC2ZzJe50IK5pF1sJhsgLnol8Y4rFGBC1lImxkwgaRFmMvOeRg
 6p+CY4LmFMoUcXfgsv0n8F2h8jtRus6M6jswi9Gt6eu6xOMsMZF1AaYL1Pa6igzbvRrJfwzU3
 yvScYds6ExX42p5vtUeswaXEf/dgE7K2xM8NN1px/JV4fBBYzPPjOzmp/BbOs9ZB0h6Kavpz2
 XAzYn0SJ3Kktzm96QDIc1dqXs9MM/Zh8VYzo8Lc1dT2USxJ6AR+QdDrz6sYDuqhA5BvZrwKSy
 1Hki0CKIATnfugQVT9araYuKn4Cva/enmNtmVQepcuvmixrpK5w/zayiST5ToOI9RpIl/vvB1
 S2oeaSoQM7cpO2Yea2NVgSizipQACekJixPec4JSuy+Yu0VZ9pg7o8EHw76mY2MG+r4CsH0qs
 B+wYJGsCbNNnemavOVy5pwJLAavhQyNzEzkaNeSVbJ8Radnx6JSvwpUHT0j6Z9CbiyqktJXjm
 WAkFtcjYEqCIzTorRGlhm1s0kDMdvWQ48irGv4jdgqqjV0BOUzFd1PFWfxdVIEj2oCItAhZRO
 +wNSe5aKqpNdFgJlAHm64qfczlAf/2dRkGgFKifPkw02mAE78ADOPFEIwwUDxgy7aWF9pxBsk
 BkFDWVHIRO1pQHw1LJYrmWliprIUaSrvL2WGAhCqiZ5p3ie7wRrL1uTXOP5q1jDcd60a/ptQS
 HvdmAdVPs6xsOBeK0uTBLtNTJ7JT6bTKcckdOw/FyjzI0O9H1+fEAqb8MkMB1wRxp5QtVQcZe
 nWoFCFDA87OryLqTPF6kHOtM6PdhH/EI8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_114154_110467_48598D9C 
X-CRM114-Status: UNSURE (   6.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 04.09.19 um 14:29 schrieb YueHaibing:
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Acked-by: Stefan Wahren <wahrenst@gmx.net>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
