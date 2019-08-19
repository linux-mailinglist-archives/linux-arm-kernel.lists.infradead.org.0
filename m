Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9581294D45
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 20:55:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QQARBljeeFdls5e/giKV4wNuu4f4xW9y9rCWFJbKrVM=; b=ZQuXbauPyNFnbz
	3IQwkQpcCqR5XZYj7bdvZNCRWzvncuHWUGtpwv2rpAwJJ4F0oCODkTVqqFVqFuSRz8ROJKztRrDsL
	aq5d8V5Menb3F0GKjMwAky1CMtkqkRU6MDNTBBoVZqOtdoNd6yVP2mA3efQHLZ6yFMkxj/PVBQq8c
	ltjRh5gfY4fkLBxgj8FXoeSbLkeK+w4JB53U5FFUFyC8/uyWFEu6+asX538HUTPg7nxgNB3L3PoGt
	D3pruVAkNTAPnPKJnXROUwSNAU0li73yF/TUQneykTafCznDXamI/br4CuUL85xSRb1AeJnQvyZbW
	mFfRKW0BuLLlzn88qUxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmoE-0001PK-Fo; Mon, 19 Aug 2019 18:55:14 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmnr-0001Oy-KZ
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 18:54:53 +0000
Received: by mail-wm1-x344.google.com with SMTP id d16so470924wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 11:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dg+vTJWwF0SC5ZmVktCWggL7FF9o0GnpeAVKAQZcrHw=;
 b=m87NnomK7ts5hsHoKS3cqfxie5TI/YgdQc5Y77eo31iiskjehKMTHJlvc6AIf95M3B
 LwH7s2aer3Yz0UU9I04mV7Qkeu1DdijsQBGMhtaObWLrKFTm2UiuNvDW8tRORVBrnJT9
 ZHCrAmZ+Mclel/8GI7WEx4BZ+6T8Q7pCZPXhE6+yRo/AuX1OYlvPmDuexpuHLtK3K4of
 ciL1ebW6zVrR3e1Ipuyk3MK57HdmgPWaam7g2NbIzUB4ETQ/zRtj+0U8DvsOcFiFfNPy
 iqQ8u/znexucp2Fn0DzbFtw914dzt8v0OY7vArFmw3DUtsiL8QfvrT4ZL+orKHD7+/zf
 O/WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dg+vTJWwF0SC5ZmVktCWggL7FF9o0GnpeAVKAQZcrHw=;
 b=uiFL3/ioN6av48QSDroGP/Phlr3zpOH038aKFKzVMvqHW89tP+oAvn/bWWhPqeymvG
 nq9z5dO2Pq6W5vOeHK1+3iQ/YEtbtgLrpRCrJchQxsgrm2okVKXU1b3/yKwe+WZfCkTI
 B/MrscUHUuyxfK4xF/seGbGbWYd+YTOJjsxFsUObVyMpxn6PXLPbTt/J1cCVHCpk1eu9
 lhyW0/eMK/gQxMh6L3sQSMsMzsw3PVkt3/WzlN/njIddcubuggWzv70xkAyXnbE1n930
 VCrNRSiUp5nn/pITvda5Ib38DXG7efWpjgRT0UCq6pQZvAwBu/0OiN050Kr1ieNPa4uC
 uK1Q==
X-Gm-Message-State: APjAAAUICtKJ2h8zz2SEXV6YTP7ok9R4GYm6reUA8VXBZJm4rKL02CFP
 5zC4NxaCwWPteTqPg7PDR6Q=
X-Google-Smtp-Source: APXvYqw5+rzOdEDCVU9skmAYgtMC7l9GFbyn6rgaAs3/kDGGAmYMsAI7L5QaMNhUNSBXgHX3GpW5VQ==
X-Received: by 2002:a1c:c542:: with SMTP id v63mr21530967wmf.97.1566240889436; 
 Mon, 19 Aug 2019 11:54:49 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net.
 [86.58.59.25])
 by smtp.gmail.com with ESMTPSA id d69sm12353398wmd.4.2019.08.19.11.54.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 11:54:48 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [v5,05/12] drm/modes: Rewrite the command line parser
Date: Mon, 19 Aug 2019 20:54:46 +0200
Message-ID: <5978761.uBj7R84RrF@jernej-laptop>
In-Reply-To: <e32cd4009153b184103554009135c7bf7c9975d7.1560783090.git-series.maxime.ripard@bootlin.com>
References: <e32cd4009153b184103554009135c7bf7c9975d7.1560783090.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_115451_703211_57F3665A 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jernej.skrabec[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: eben@raspberrypi.org, David Airlie <airlied@linux.ie>,
 thomas.graichen@gmail.com,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Sean Paul <seanpaul@chromium.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Maxime Ripard <maxime.ripard@free-electrons.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+CC: Thomas Graichen

Dne ponedeljek, 17. junij 2019 ob 16:51:32 CEST je Maxime Ripard napisal(a):
> From: Maxime Ripard <maxime.ripard@free-electrons.com>
> =

> Rewrite the command line parser in order to get away from the state machi=
ne
> parsing the video mode lines.
> =

> Hopefully, this will allow to extend it more easily to support named modes
> and / or properties set directly on the command line.
> =

> Reviewed-by: Noralf Tr=F8nnes <noralf@tronnes.org>
> Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>

Thomas reported to me that this patch breaks "video=3DCONNECTOR:e" kernel =

parameter which he currently uses as a workaround for H6 HDMI monitor =

detection issue on one STB.

I suppose this is the same issue that Dmitry noticed.

Thomas Graichen (in CC) can provide more information if needed.

Best regards,
Jernej




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
