Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCEE23242
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 13:25:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eHSPGlFhtD6OiXOAKXLCZzhxv2vTNPDVuCyPx74z69M=; b=CLsSq+ps/Fq6IN
	yf3Rk0eP0GICylg8Bfsc4XicJPPl7NI9GaAoTpoZNtGynq4Dzsnctc9Z6VQipWAViycZV0mqivx9x
	08YwBc0SmY0JqED3QOpo/2YaOubvwvR/1hAgjSJWPl06XB2uW6rlS/fukng6zyhF+056IfcTQFJBt
	hjdpiGXSY2o088A39mvMbCN8k+xvveR+htdy+s6joyuNTir8XC/rORHLaHVXR5+Aux/FThQd+9P5W
	uT0aHk5swi7w16A7cjw4NssPrGlwMnLlkchYQ0q1d9axBL5ZInkfRJZJERxM1bvXNw1TYdzx41sGB
	eHI5zn3zA73o3yduFqMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSgQ4-0006gR-Aj; Mon, 20 May 2019 11:25:28 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSgPv-0006ed-3O
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 11:25:20 +0000
Received: by mail-wr1-x444.google.com with SMTP id r4so14128914wro.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 04:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=jjlgRqd7/3GdbXtzivENZGFK0W6UGcne26rpZyW4X3o=;
 b=KH9eQMCgAcp+vePFV58EJikabmf6tk7CPaw16nowcMlcJ9rfsp+jqtVbW4ziTIqtJn
 pWBQacIbPY+n191m2WqHswFszkMDXBbauB4/HyE6ZwSzMGnaDM8mc8BC2ItArt3r48p2
 hDW8UVhT/aOcBwNkv3AV39O5SBWYxCLPywsppIcLpCzNlu/SO8Kh6XrvNVW+vDf3BVGO
 dgf7CDa6gkuA6sajvyDCOePcqFxpVeLPk1UFIDhhneZxknvlnqxb4xVh9g1wgPR2ykgo
 bBj2h5PQdq+NXx0DTW2epwkjiXbsm30gJiyeKCUH09+ynK2MOyTfMXH1G5PwwvMSpl9b
 Ihnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=jjlgRqd7/3GdbXtzivENZGFK0W6UGcne26rpZyW4X3o=;
 b=ihcntekUTlgykvnJdTy38qEmeXi3pKu/epSzI5eLYB3mgKBig3KKSM46aajpXROJ4f
 +467D82YwKyv5/wupVBLlZyegXR3ymqqy4JQZ0sdKx0rcj5hVlgeKsGoLUPjAwNAsdFJ
 36PShnM5TPnKKx/DL35f1VkvOKsb6NYwv1BuBo9QRDk3ZvTePjxxiBJHSDdoSncyl5Pc
 1qgEa36dHDv94kPSbw8QERvvioxvgM8AgA6ROp+d21r9UJS12wBwBMG9KnEa+iAhx6Gq
 JVS93YeYb6ymbpI791MbN+1PN/1+rIG+kQFngAhU5Na7RTJdsmeg09d+qkufidZSFJ0m
 hQjQ==
X-Gm-Message-State: APjAAAWy4/jGyBr3wHgzND++ReuY1t2V0JU5Sm92qX7Dr9Te2UPl34/6
 g0VKXlwO3+5az9bnrDU6Ob1fmQ==
X-Google-Smtp-Source: APXvYqwD19LntnajDRGhTBQ60xM1YyUoHyMgHC0GjSUru7HiinTiDHC+FsHKj7HQJg4LRDftmwD8dQ==
X-Received: by 2002:a5d:624d:: with SMTP id m13mr45190092wrv.305.1558351516800; 
 Mon, 20 May 2019 04:25:16 -0700 (PDT)
Received: from boomer.baylibre.com
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id m13sm15690440wrs.87.2019.05.20.04.25.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 20 May 2019 04:25:16 -0700 (PDT)
Message-ID: <fa275d9d4a451d6ef5332a6836e8316c5644d913.camel@baylibre.com>
Subject: Re: [PATCH 1/1] clk: meson: meson8b: fix a typo in the VPU parent
 names array variable
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 linux-amlogic@lists.infradead.org, narmstrong@baylibre.com
Date: Mon, 20 May 2019 13:25:14 +0200
In-Reply-To: <20190512194300.7445-2-martin.blumenstingl@googlemail.com>
References: <20190512194300.7445-1-martin.blumenstingl@googlemail.com>
 <20190512194300.7445-2-martin.blumenstingl@googlemail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_042519_191859_A6EAB097 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 2019-05-12 at 21:43 +0200, Martin Blumenstingl wrote:
> The variable which holds the parent names for the VPU clocks has a typo
> in it. Fix this typo to make the variable naming in the driver
> consistent. No functional changes.
> 
> Fixes: 41785ce562491d ("clk: meson: meson8b: add the VPU clock trees")
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

applied to v5.3/fixes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
