Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B44E0D0D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 22:08:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+44kout9iSg+nyDqW4Nsu2Izns5QT68PpVo9XoZwvY0=; b=lNY9INcPinHrMd
	jb4QVsPL7Qq5xpKR/fa2qiLtOliF6qnYhZ0Qkb8Gux5o1Wforr7bLxM05GjhqXu7dUy1ZqeKvT37i
	OZ5vBv59acEtHKcWOze12GO6I3deWOKoSpCCnzfAakYlK97K9BkTSr+KtWD+ELs3b7XvOzg9WCUQ0
	fTesLSMtuaO9KiHcILeH9VzzHqBNM/Pi7kfAjvWcxCImMGzMYIoD3eEKI/wfsTOpe1RzuaNfG+Zuh
	PLDeCS+T+VkzhPhBIpzI6QZ0eu6J8VYY2v5cxp3WlecXUHnXhnAJGL5E5nN9hih+PGm/cxUpJ1qER
	G5XHsa6PHryz/ca28nPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN0Ry-00082G-Tt; Tue, 22 Oct 2019 20:08:14 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN0Rn-00081n-Tj
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 20:08:05 +0000
Received: by mail-lj1-x241.google.com with SMTP id j19so18565000lja.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 13:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=Jepvi8++4KHG9zardrX3M8QtVwArs/duyX7iXwqTssk=;
 b=hTrtaAgEvhNL0YSN4U/x7Ca1+Q6F/DEsj55rl49kx51S9+p2NR+6PM81lRfoDLK9lf
 837MSmEeURh7Y/sXwPp0y3bYNslB1HEp3ToeLTT/chG/obKoJSZ2HtUZ/95uMt8rfPlO
 g5nHV5XCj1IWeIaftr1vFN4QXb3uFltJs783fwOHs0A0QJVcWT41VJeZoThHcK7t2iJT
 f9dWzOIX6OwZbaeBacSubKeCVZyS7/HHK0k9xK87b027TFPMjLffxioec+lQTYQE/8PV
 qWcFyjAUZk4OiY1Dq2jGS60GfL0ll2hI/SOnQ+u9g7uJDfvuPFk7hvNwJDAWTBjFvi5/
 XHCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=Jepvi8++4KHG9zardrX3M8QtVwArs/duyX7iXwqTssk=;
 b=pXSt/DTeZhpr2Js+vYxLwD8wZMvWQyOmIbgs/xdwENmsowqkDaT+LwAiaGRHaPFsl+
 MdhHFLinZzdSaS/W7wy/Do4Avcdbr1R4RcK5znAcuWjIMvhKM4KQP6A0aDieAFBZok98
 tK3qnzUiuLOTqCbfDIERXlijuLoxwdEvVTJ4j6oNjYYDAtxaRHM8ojaUj08TciP4bFr0
 fe1b+0tNm7yLgMBbWc/rtzRaN9IZ9VQmz+9o/pOvsujUKCOZj3P+W2KZh0dSxDC38r7w
 AHaoA/6EyCLndd/Sv015EgSuqTloFvDmbG0Phq2aDonpfKsVQq7WHgbjfXlhjT9AJe1A
 9uKA==
X-Gm-Message-State: APjAAAWS8hCFvV/hx9CYyJ4Gwp42K5d+rTJGGNKoG8jLZAHIjgPSHX8j
 zFydY+lNPEZBaxYYD3LyUsWOyA==
X-Google-Smtp-Source: APXvYqzHW17dZfehUbHroL+khGtd2o684rg84WG/ysl2SL0ML5ulZOe6aNdkECAkJAUfz3BKic2dBA==
X-Received: by 2002:a2e:9a99:: with SMTP id p25mr19086167lji.171.1571774881729; 
 Tue, 22 Oct 2019 13:08:01 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id q16sm7027794lfo.7.2019.10.22.13.07.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 13:08:01 -0700 (PDT)
Date: Tue, 22 Oct 2019 13:07:53 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>
Subject: Re: [PATCH v2] net: stmmac: Fix the problem of tso_xmit
Message-ID: <20191022130753.70c12b55@cakuba.netronome.com>
In-Reply-To: <1571628454-29550-1-git-send-email-zhangshaokun@hisilicon.com>
References: <0b6b3394-f9f0-2804-0665-fe914ad2cdea@gmail.com>
 <1571628454-29550-1-git-send-email-zhangshaokun@hisilicon.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_130803_960256_D3E6138A 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Eric Dumazet <eric.dumazet@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, "David S.
 Miller" <davem@davemloft.net>, yuqi jin <jinyuqi@huawei.com>,
 Jose Abreu <joabreu@synopsys.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 21 Oct 2019 11:27:34 +0800, Shaokun Zhang wrote:
> From: yuqi jin <jinyuqi@huawei.com>
> 
> When the address width of DMA is greater than 32, the packet header occupies
> a BD descriptor. The starting address of the data should be added to the
> header length.
> 
> Fixes: a993db88d17d ("net: stmmac: Enable support for > 32 Bits addressing in XGMAC")
> Cc: Eric Dumazet <eric.dumazet@gmail.com>
> Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Jose Abreu <joabreu@synopsys.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Signed-off-by: yuqi jin <jinyuqi@huawei.com>
> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
> ---
> Changes in v2: 
>     -- Address Eric's comment: add the Fixes tag

Applied and queued for 5.3, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
