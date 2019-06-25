Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 873B854E78
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:11:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TH82nFaROrQjTYNh3BTK5uK0nles+ueFDLb1u1DTrTc=; b=f1wOK4xW04XGKc
	4MH41ZLSQfyXTaOLM+pROupo/rKYcaWryh7h7fVqKW6I60TihYnARou5fTk4mNbUjTsHxVVFJcqb2
	tzKVuWtkIHrfcQDrrtAPgUw6dgw1d2hwve9sX2qvM2Fo1k8T8nfQiunh5WeYuz0dsYI15nuisyOEK
	2YO0lIX/jENlDF8Wi4NeCGJxzFBILdUHF5xm6rM2pXzra3F+hgfBOXhgU2reQ5g+nhYUv9NtSSw29
	MkSB5OzlrMrjovwdjXFadrGBN1TLxiZRU5ctVwgC0z9J6JK4deiLfbXVpIYyyo2aQJaXjpg1IAav7
	gNCxkQXPA//Xzm7cjeLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkIO-000672-WD; Tue, 25 Jun 2019 12:11:33 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkBs-0000C6-Q4
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:05:01 +0000
Received: by mail-lj1-x243.google.com with SMTP id r9so15971895ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3MF7bcAVPPCysWmUwSApBgXj9NF1/5Ua3PevCaAuoP4=;
 b=dw77pZ7aTWMeGMK+xJdtNL0B6Rp9bm6qGNd5DIxEpsCWNx5nw2pRmGnxAtIvPJgRkR
 NCQ9CixZWD4iSIv9yquea3A5uydRWQO+hPYU6sCeEuv1XDsxAUGrjARfPvS9y2RMJddw
 y60qMi9dFi6rMhEEjDeVAmWiYTx0nwg7vtYqVZvTnlZai48HPeUSJjwgiFRCpRz2JwxK
 drt0vZlQ1j3vWjy8e6YL8wCwSKHmjjNNu8xzsvdz99A/kuQ6WCrtRd1MGvYC6YBcaaCn
 JWqtp9vvWaGkGCcUXvx3UMup4gh4Vqy94hhEvdWjAuEOMOT0r4S5fzEmFIQm8qu6i1X4
 v5SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3MF7bcAVPPCysWmUwSApBgXj9NF1/5Ua3PevCaAuoP4=;
 b=FTHTkwfqAgefJU4UPS2NC9bMwxqmBBAnXNFogMePsKKZOeKlpKOyWqXQ4v4JtTgv0e
 hfVtRduYfwMr/Nb3GIv39CSrMSFcVXf0WHNZCUcBLhlGSpF32OqxJS6XSpCpCvVbpQI2
 6MMQzzKTkr46ewZ6d2uefJyVKU3o/mXwQunvsZcYd+po3JQKAbkKbubx9ACukUMOHXQ4
 PnW6rAEKq2lARY3iF3BGO+gmQnRLTxF8q++D/hs52JZOA18VvAZZuuuMX2ZzEivmE/rg
 PntVrnvxLBs3i4Rkif2DTmMoSz1zBU6Sa2XezR3+BF07GtgYpLIR4ftgez4FpK3fmwfb
 gcHA==
X-Gm-Message-State: APjAAAWMeFkcQsF1IybIaOQzwBHBFK7ssR8Z/IQg/yXqGxjZM1O4VLJk
 dyBfl52ALJQXz5gP5CfJUk+ud/4rqumd5Q==
X-Google-Smtp-Source: APXvYqwaNKmeQLvFbTcTYRfIpUIwIk0L/EukkFBtGGhSVLkzPGtVU/An2uqrw3Qup9dupbhtNSB5sQ==
X-Received: by 2002:a2e:2b57:: with SMTP id q84mr37945222lje.105.1561464287481; 
 Tue, 25 Jun 2019 05:04:47 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id 2sm2227714lji.94.2019.06.25.05.04.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:04:46 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:41:52 -0700
From: Olof Johansson <olof@lixom.net>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [GIT PULL] Allwinner arm64 Device Tree Changes for 5.3
Message-ID: <20190625114152.h3hlio3cr4fcyu4s@localhost>
References: <0ded8794-cfd8-4e5b-a1c6-7dbb875e9bc1.lettre@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0ded8794-cfd8-4e5b-a1c6-7dbb875e9bc1.lettre@localhost>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050500_227005_19F6C72C 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chen-Yu Tsai <wens@csie.org>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 10:08:27AM +0200, Maxime Ripard wrote:
> Hi,
> 
> Please pull the following changes for the next release.
> 
> Thanks!
> Maxime
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-dt64-for-5.3-201906210808
> 
> for you to fetch changes up to 9164665a390a2a42e9f56094eeec8c4a52748723:
> 
>   arm64: dts: allwinner: h6: Add DMA node (2019-06-12 15:25:59 +0200)
> 
> ----------------------------------------------------------------
> Our usual bunch of arm64 DT changes, this time with:
>   - Some fixes for the DT schemas that were added during this release
>   - Wifi support for the H6
>   - LRADC suppport for the A64
>   - Some background work on A64 boards, to enable various devices such
>     as touchscreens, PMIC, audio, wifi, etc.

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
