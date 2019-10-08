Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B12FD03CC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 01:07:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p3WkCIDzUdSU/WW0fADu4JFgKuXHZkWOZmRDFiAd+ow=; b=A02W0jWnSz01rF
	GMus0dEZPKZaxFePX0sjm7bBTUkZFlXujctnwcc39SrtCrd6QiyfF1vd4pPePY6CQxyCQEzKb17cY
	rpnaaTl0hp9uFv9u0IgDndKgRMziFS/jHtgM1MvyDxp4zrwzAiJyT8OslWbczrf6xC8cOtqrEYtJw
	Lvta6pBM1E1nXksEx2s2ofaBS4SI6TzoaxuQZsFolU/phEJdFyMWamF5R8QNmlOkutEwg1NXzxcMa
	ziZOzRGPX4y9RwKMU+kuht8tHFozzweO8LhtG5woZfMRl6ZhTEjuedHAVKNxXZPcT8BHbR7BIRAeq
	l1Zu0uRu6gEVC96Qo09g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHyZP-0004ya-9q; Tue, 08 Oct 2019 23:07:07 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHyZE-0004xY-Ez
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 23:06:57 +0000
Received: by mail-qt1-x841.google.com with SMTP id w14so626739qto.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 16:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=atsmqMocA5CyL6gwgsiLT5GHB2fp+M6rgJRLl0QguUI=;
 b=Yf1PnrqJhvtoylbafl92Bfw8ux3dLraYowqxbyDrdbEwmrb/Foqz5TlOsshmV0Dmtg
 eWdp9Ap/S27I1mPrqK6kCp3hFGr9kR/inLVgnQFRqJzjSdQKagRKhz9TqP5rjUyZKts4
 YvbQaD/6PuXN9wVWjluEGRnxy3nEbI9/RROkQ7hkF+J4IKdS7Txg3eNz2CBKTvLvb6im
 0NPb7qDBIn1959sX1s1XGAYXkgxH4CcDaEj19c54dw84PbhgslpexIDawjhjDwwXaIkU
 Xrhc0g55tOtHLW3GeWPrOzB1IQwv3bHit1hVr/EeyLrLwXYc/9xd63ti23ss0gRZQTQb
 iAig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=atsmqMocA5CyL6gwgsiLT5GHB2fp+M6rgJRLl0QguUI=;
 b=XkWsHHZoRDSoUqw/KSdL9i3vfwpsD/NVYUKGI1rozhfIsbwNeMr9I4Wr/OY/1TT5s8
 ctg7EI8od2jYjA04DDIaLq6/4iEiQshya2cj7j5UGing1m9vfS8FZQm+RC+wbOV2pUye
 7B17qbZH7crPRImmg6jP32lSVmTaW/Zwud4OumSfu1/3v+UNwEsyGP/jOUkYu36jz85z
 OntNKagUGu7ugqNhxmPEcMIQ3gTVL9Tzs4S51tYZkRI8wYNiS7PaPfjOZkwKvXrHkH6m
 zb3CKrxBo2RVAQelCZwkEtP8w7nK92g5RQpLX0TnWoOnA26saWJ4JUbEVFfZ7qRetY1T
 OtJg==
X-Gm-Message-State: APjAAAUQFNFDiY5UGz63cd5fm00CQjM+Ye7nDIawjDQtW8RGW9iquzde
 VC0emvBRrYohD4qbAndXhjRI4FU1DKw=
X-Google-Smtp-Source: APXvYqx/64qjNyPamHObAX+fZWZqmEP0Vy13opmS7WjDT+nYyQ/NnL33mmrlR73uH81IkMFcAKV8/g==
X-Received: by 2002:ac8:4a84:: with SMTP id l4mr463525qtq.118.1570576015229;
 Tue, 08 Oct 2019 16:06:55 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id t73sm93418qke.113.2019.10.08.16.06.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 16:06:55 -0700 (PDT)
Date: Tue, 8 Oct 2019 16:06:43 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: MarkLee <Mark-MC.Lee@mediatek.com>
Subject: Re: [PATCH net,v2 1/2] net: ethernet: mediatek: Fix MT7629 missing
 GMII mode support
Message-ID: <20191008160643.1c1d31ff@cakuba.netronome.com>
In-Reply-To: <20191007070844.14212-2-Mark-MC.Lee@mediatek.com>
References: <20191007070844.14212-1-Mark-MC.Lee@mediatek.com>
 <20191007070844.14212-2-Mark-MC.Lee@mediatek.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_160656_508056_17F046C6 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Nelson Chang <nelson.chang@mediatek.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, Rene van Dorst <opensource@vdorst.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 7 Oct 2019 15:08:43 +0800, MarkLee wrote:
> Add missing configuration for mt7629 gmii mode support
> 
> Fixes: 7e538372694b ("net: ethernet: mediatek: Re-add support SGMII")

Thank you for adding the Fixes tag. It seem, however, that the patch in
question did not change the ge_mode setting. Is it because GMII now
makes a call to mtk_gmac_gephy_path_setup() that the different setting
is required? The Fixes tag should point to the commit which introduced
the wrong behaviour, it may be the initial commit of the driver if the
behaviour was always there.

Could you add more information to the patch description and perhaps
update Fixes tag if 7e538372694b didn't introduce the problem?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
