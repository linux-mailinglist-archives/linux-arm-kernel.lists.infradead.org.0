Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37279D1EA0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 04:43:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1KORPOdyq7+jg3yPRHDQ0YsAvhVLjq/BRU00/QJF3F0=; b=Scq8ToggjyPcWL
	W/aznQe54CZU+PAMdL6ZfvrcFXilORYVEP5mHAeI9wykG0Q5QFaHWsBVSfCigdxwvyH8tu3pvds5l
	tdwRiVZO4IrlQY1x0E5lHWgo4QcL60M1aIivSSYXL7ynjyCfyKFKALeZvU2v/We+KN5WEQ5F8bKfK
	PEmPgKadQ7N1F84wsF3EMw0VkK/SIXcbWYDCDhTjIDDL7pDPfGSIYUZPG4+SYVvyKcM463piCHQzX
	LSNqDxrq5fl+PEZTNi98HquLZx3JG3qo9gYrNw4Mrew+sOCnE1AU1ptnyZLd99VnLamYbtRwl2spV
	uBBioaTpMAutgzqaiSrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIOQV-0003Pu-Sn; Thu, 10 Oct 2019 02:43:39 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIOQI-0003NQ-R8
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 02:43:30 +0000
Received: by mail-pf1-x441.google.com with SMTP id y22so2906395pfr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 19:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=QWteHAhBVt9oVGOsOtKHsCiYKtX8kIzt6852sk1FamE=;
 b=iei9S1oj45k0ZQgMqH7H0heioINFqEVoK5QQNnLJC6ig340LF/7lvfzuHdeKQlFK9x
 6Hkzh1+TJ0ShL8YMEXjqTIzqQykuK+7tNtk94vJ4PDCbixkpd/CwsT+tJo73VoTzALs/
 3YWHZQoNIZeLzmRb9W51aeEcULryqpcGxo8kCATCoMkcLHktP/FKv3Ju9PHc7WdcrGqO
 qhS24uqCCsyYuoV3mYvlcqYnea4e3PZbAMiwtrKuLXasFUvy0aiVsLwKeg0yUmpUQano
 OxYzAZwBbkwSmqpihYxzEX7I6XbxUNWZtxCAn7mGV3WyXxBTngz3tgAri5pGzUmpS68u
 GvEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=QWteHAhBVt9oVGOsOtKHsCiYKtX8kIzt6852sk1FamE=;
 b=HkfSwrZJkoYywO27nsr3MD1qdOjFitTBX77YXh34YeYhwkMOcfEjQzgCwVYEQz4uLN
 p/ucYJyGkxTMNr3UnsWmwHEvf1YpbdSWWa/Q2+i4/5vUn94zmX5IeecNnbQ6lWzayGGX
 XYb7e0Qx/rUfHr0jSHFszmXQNP4msPnKUFxOZ0saTzo0Xg7ogAYZRJuztW2z1tLJxeSQ
 j2kbhVjevaJsFIdWq0or87v4zlNJs3qGOQDEbRUio29u+dxQ5ay7N6M0OtG4bwSkAbus
 XVNsDZg4LgPLMp5c2xV4wpYP6ZPA3+2LNOepeXGFYXvn3lVk5+56tZJajzKxkzUiu0GW
 G2SA==
X-Gm-Message-State: APjAAAWJPooA1xFme0/4fJw0whzpWOonZWhjqh8W4tSLyArNmkAIDFCr
 5FrzBrMqgDWixY25i7RlkGfAhg==
X-Google-Smtp-Source: APXvYqwanEd1qtiJMg/JVqFKEiqK+wQJaWOvm1tyP8JvAOqtrzd2OgCokg0CQcOtJoVJeVXoP6I4vw==
X-Received: by 2002:aa7:9e8d:: with SMTP id p13mr7146028pfq.171.1570675405027; 
 Wed, 09 Oct 2019 19:43:25 -0700 (PDT)
Received: from cakuba.netronome.com (c-73-202-202-92.hsd1.ca.comcast.net.
 [73.202.202.92])
 by smtp.gmail.com with ESMTPSA id a16sm4961578pfa.53.2019.10.09.19.43.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 19:43:24 -0700 (PDT)
Date: Wed, 9 Oct 2019 19:43:11 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Biao Huang <biao.huang@mediatek.com>
Subject: Re: [RESEND,PATCH] net: stmmac: dwmac-mediatek: fix wrong delay
 value issue when resume back
Message-ID: <20191009194311.55c8cf6e@cakuba.netronome.com>
In-Reply-To: <20191009073348.5503-1-biao.huang@mediatek.com>
References: <20191009073348.5503-1-biao.huang@mediatek.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_194326_882284_D31843F3 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: andrew@lunn.ch, jianguo.zhang@mediatek.com,
 Alexandre Torgue <alexandre.torgue@st.com>, boon.leong.ong@intel.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, yt.shen@mediatek.com,
 Jose Abreu <joabreu@synopsys.com>, linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 9 Oct 2019 15:33:48 +0800, Biao Huang wrote:
> mac_delay value will be divided by 550/170 in mt2712_delay_ps2stage(),
> which is invoked at the beginning of mt2712_set_delay(), and the value
> should be restored at the end of mt2712_set_delay().
> Or, mac_delay will be divided again when invoking mt2712_set_delay()
> when resume back.
> So, add mt2712_delay_stage2ps() to mt2712_set_delay() to recovery the
> original mac_delay value.
> 
> Signed-off-by: Biao Huang <biao.huang@mediatek.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
