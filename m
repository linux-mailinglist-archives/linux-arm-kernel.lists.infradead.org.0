Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 558C3E04D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 15:22:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0muqqXhEJgAeubJTLPOJ4K6wiwy2sQxoiQ7QqqtUIFQ=; b=Vfw8JDxTWUlxOT
	isUX/44Qa5FgrVCwLpbvJTrWTYj46G0gMIOOReqKm9ZfHUgnV+dHWXRtP3uNoJoWSVmDRZjGwJeG6
	ivrhJA/xu6iF0JR+F3Rv2uC8s7GnhDJVI+2NmW4X/PZuirvNxsU6y5NqE2kFEEYnyi7I4ONZtlYMW
	xY3ZPx7J+2E8L3CO2N/2DvOztCWt7f053Eqb0yR5Imyi6GWa+sVW1tkKTHQTAO9O7ZytrZnXyU8S/
	kRtR4mYiV5/q+kKpJarYINRo73E8FVJXOQzC9M1XzY6AVzBWuM1whRqdnvAQVNf4+Wp3re0TDTZry
	urhZvfkVZ21dPE8Np9ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMu7M-0003v4-7h; Tue, 22 Oct 2019 13:22:32 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMu77-0003uT-CT
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 13:22:19 +0000
Received: by mail-wr1-x443.google.com with SMTP id z9so18031963wrl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 06:22:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2fkOFNYm57+Sdwo0Ah8rCzDENCbmy1bQKtTOdjuKRbo=;
 b=KjeQJN5+15TjqUNjpLnGaTFqiE44NRgay2oSkXkt/cNofXfkuD33jYsk1EmeV4RRD6
 ET5KtpIwMagN+onrbT+TGylsbGwzhpY/jtsq+GxzN9mYDeaJO4IpSCqwv3pZdNZaWnzf
 ylG1BOUYOcvDhAyWJb8AQnbGJGGnrnB79CKqmHGo0D9H1IlJaBs9v6avY3gGznVBVrZP
 cI8YR+xt0Rmg8EEeEX7kUMOOGAtT+GRofZ98GHIkTlQgi3TCuRdkqFhSDhrIOAR0euzY
 XvDqSEASCICzYYxg4+rKne09K6u7Ji/ONmW6MJfNt5PmG7akTG3FqQH4rnl2BC/JRiyT
 9dhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2fkOFNYm57+Sdwo0Ah8rCzDENCbmy1bQKtTOdjuKRbo=;
 b=F2dmZ97MOLcj2ywz/z+8yA7cEEIWz703wAwRt+xVRIb8EiQNVinyW24VgRyLBYF9zT
 14zHgmCvSbOKG735IR5ZWoE7DxS+i0Ur9OKaf6ByL4A5GGpxDb9LKimQp10MNwea+HQW
 xfQDR21oZKTedAsUTi8FEljSjJTMtFk/Xd0+6UQhHZAAW9rp7SrxvbUdpYq5yAnBway+
 fu5+nayy5yPai1XS49m525vvBFmDE6LkHhSv6fraoFxDguHOK8X+94ZZ7Bv2CYa+9z/Z
 Ry4p7URQGpURDX7/P2ImvR4ORFWZMIXOfyTqMNv7r6fPBV3/wKuhsNk65fHdgtr1Eq4A
 xFVA==
X-Gm-Message-State: APjAAAV1PcLAJ7LGf9EwAAgey7AVLmbIgVli9wzjecv9SXROSFru9MuO
 G/Vajdi2VVNkTh2c15wEoh8=
X-Google-Smtp-Source: APXvYqw+Y61pf79cn2uA3pPa8HaYl+Fo6rfUnWH7IL7oi83j9v2VMO5HRwd8uenDTPCRfIrkqKNykg==
X-Received: by 2002:a5d:6785:: with SMTP id v5mr3490121wru.174.1571750535358; 
 Tue, 22 Oct 2019 06:22:15 -0700 (PDT)
Received: from Red (lfbn-1-7036-79.w90-116.abo.wanadoo.fr. [90.116.209.79])
 by smtp.googlemail.com with ESMTPSA id p17sm14813947wrn.4.2019.10.22.06.22.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 06:22:14 -0700 (PDT)
Date: Tue, 22 Oct 2019 15:22:12 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v4 02/11] crypto: Add Allwinner sun8i-ce Crypto Engine
Message-ID: <20191022132212.GA28813@Red>
References: <20191012184852.28329-3-clabbe.montjoie@gmail.com>
 <20191022092312.GC10833@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191022092312.GC10833@kadam>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_062217_425597_8353A30E 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, kbuild-all@lists.01.org,
 herbert@gondor.apana.org.au, catalin.marinas@arm.com, kbuild@lists.01.org,
 linux-sunxi@googlegroups.com, linux@armlinux.org.uk, mripard@kernel.org,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, will@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 12:23:12PM +0300, Dan Carpenter wrote:
> Hi Corentin,
> 
> url:    https://github.com/0day-ci/linux/commits/Corentin-Labbe/crypto-add-sun8i-ce-driver-for-Allwinner-crypto-engine/20191014-104401
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/herbert/cryptodev-2.6.git master
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> 
> smatch warnings:
> drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c:371 sun8i_ce_allocate_chanlist() error: uninitialized symbol 'err'.
> 
> # https://github.com/0day-ci/linux/commit/f113059e7b4f94c545994aeafdc809a3e4907ae4
> git remote add linux-review https://github.com/0day-ci/linux
> git remote update linux-review
> git checkout f113059e7b4f94c545994aeafdc809a3e4907ae4
> vim +/err +371 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
> 
> f113059e7b4f94 Corentin Labbe 2019-10-12  334  static int sun8i_ce_allocate_chanlist(struct sun8i_ce_dev *ce)
> f113059e7b4f94 Corentin Labbe 2019-10-12  335  {
> f113059e7b4f94 Corentin Labbe 2019-10-12  336  	int i, err;
> f113059e7b4f94 Corentin Labbe 2019-10-12  337  
> f113059e7b4f94 Corentin Labbe 2019-10-12  338  	ce->chanlist = devm_kcalloc(ce->dev, MAXFLOW,
> f113059e7b4f94 Corentin Labbe 2019-10-12  339  				    sizeof(struct sun8i_ce_flow), GFP_KERNEL);
> f113059e7b4f94 Corentin Labbe 2019-10-12  340  	if (!ce->chanlist)
> f113059e7b4f94 Corentin Labbe 2019-10-12  341  		return -ENOMEM;
> f113059e7b4f94 Corentin Labbe 2019-10-12  342  
> f113059e7b4f94 Corentin Labbe 2019-10-12  343  	for (i = 0; i < MAXFLOW; i++) {
> f113059e7b4f94 Corentin Labbe 2019-10-12  344  		init_completion(&ce->chanlist[i].complete);
> f113059e7b4f94 Corentin Labbe 2019-10-12  345  
> f113059e7b4f94 Corentin Labbe 2019-10-12  346  		ce->chanlist[i].engine = crypto_engine_alloc_init(ce->dev, true);
> f113059e7b4f94 Corentin Labbe 2019-10-12  347  		if (!ce->chanlist[i].engine) {
> f113059e7b4f94 Corentin Labbe 2019-10-12  348  			dev_err(ce->dev, "Cannot allocate engine\n");
> f113059e7b4f94 Corentin Labbe 2019-10-12  349  			i--;
> f113059e7b4f94 Corentin Labbe 2019-10-12  350  			goto error_engine;
> 
> err = -ENOMEM;
> 
> f113059e7b4f94 Corentin Labbe 2019-10-12  351  		}
> f113059e7b4f94 Corentin Labbe 2019-10-12  352  		err = crypto_engine_start(ce->chanlist[i].engine);
> f113059e7b4f94 Corentin Labbe 2019-10-12  353  		if (err) {
> f113059e7b4f94 Corentin Labbe 2019-10-12  354  			dev_err(ce->dev, "Cannot start engine\n");
> f113059e7b4f94 Corentin Labbe 2019-10-12  355  			goto error_engine;
> f113059e7b4f94 Corentin Labbe 2019-10-12  356  		}
> f113059e7b4f94 Corentin Labbe 2019-10-12  357  		ce->chanlist[i].tl = dma_alloc_coherent(ce->dev,
> f113059e7b4f94 Corentin Labbe 2019-10-12  358  							sizeof(struct ce_task),
> f113059e7b4f94 Corentin Labbe 2019-10-12  359  							&ce->chanlist[i].t_phy,
> f113059e7b4f94 Corentin Labbe 2019-10-12  360  							GFP_KERNEL);
> f113059e7b4f94 Corentin Labbe 2019-10-12  361  		if (!ce->chanlist[i].tl) {
> f113059e7b4f94 Corentin Labbe 2019-10-12  362  			dev_err(ce->dev, "Cannot get DMA memory for task %d\n",
> f113059e7b4f94 Corentin Labbe 2019-10-12  363  				i);
> f113059e7b4f94 Corentin Labbe 2019-10-12  364  			err = -ENOMEM;
> f113059e7b4f94 Corentin Labbe 2019-10-12  365  			goto error_engine;
> f113059e7b4f94 Corentin Labbe 2019-10-12  366  		}
> f113059e7b4f94 Corentin Labbe 2019-10-12  367  	}
> f113059e7b4f94 Corentin Labbe 2019-10-12  368  	return 0;
> f113059e7b4f94 Corentin Labbe 2019-10-12  369  error_engine:
> f113059e7b4f94 Corentin Labbe 2019-10-12  370  	sun8i_ce_free_chanlist(ce, i);
> f113059e7b4f94 Corentin Labbe 2019-10-12 @371  	return err;
> f113059e7b4f94 Corentin Labbe 2019-10-12  372  }
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

fixed.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
