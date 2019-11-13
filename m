Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B2AFB627
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 18:17:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hF5ijygez4DKaKYnz6m72dXPX1VRXn+ZhJERR8Uplrw=; b=Mlz00lBWkIfG6q
	3GLfOSq2Si7EVWi5YzD3mvtMfpXB1x1gBM8ZGklw4amdeE7RvHdyJrFqcTtwO8NtzEa1CLO611Sqc
	Kxh5CTNFvLw1DA1N8R3i8/ydetMxI2R8hV32b1KZAfeFRs6ZMxsRzEHonvchtI90sSWXZfcvQfhCY
	hzNPc//fAXP8CHtMCJPeuOdgQyhhAHh8l6wSXNk0eJ9pSjAjWMaSGW1kpwKljxhD2HyLZPxHBV84Y
	YqkVkFOy7dAf6h7fSyXhtSuSeXumYTLhfHItFBtq8rCV4HohD+AaVbmSiVMlcAeXtoC0XSDvGoWy2
	zxon4GT1ZxtG2vzbQEZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUwGJ-0002eo-U6; Wed, 13 Nov 2019 17:16:59 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUwGA-0002du-JA
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 17:16:51 +0000
Received: by mail-lf1-x142.google.com with SMTP id j26so2595255lfh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 09:16:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Tbmpc8I08dUNbz0TweIhlLBpMYWo1Ddtf0bugPdpg4o=;
 b=GpRaz3WzKyv4b6el90Iz4gY68k6ZMkDSEh2Hm5M0XVO2GvGiQXYLuOeRblysRbV95O
 /o9QxM7Dr9VjPZHJbmlPD+v+xOjqiSGlLuBd177bF9Y5icVTpiZRrTKok3ZZTQ/wDtBz
 OD0/VdGCoCIgoImm/TAEY+RuYIVJBGoif7u3rV8vKwf2bmxMkH46wFW8r/B8lLgHUY/j
 AYfLYXuLFlbVDpa/kxWt9gdsZixvnBRgFarHNgasLVY1VE/8+aqZM1tiw/DA61fKvNnp
 rwq1i9Eyg15IRctXukzSqaoYhr16QJbzTuSfXkLs7LUDp3Zvi+TCTQ1gaTePQTg2eWA7
 0sHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Tbmpc8I08dUNbz0TweIhlLBpMYWo1Ddtf0bugPdpg4o=;
 b=JLDXW7CzhTadp4y3flguYz09A480Rngd1BfiCaMs5wfxaIpOeyFI5H+Jj+5Phtuzkb
 XMf6lGH1z0U3mrPfIsaFmynPW/n5H/LyZGs+Wuilmf06mmM6x7FBKXlIdX3WQzIiFAOu
 0slAOOvec/4bvJ8LJMn9s0uIGypg2Mzhd5j2MpbDVL3YTIkyZQYmsgTxJRDEyt3HRbQL
 Tzi4pcZTZCtiQzrJL7INkp3wZCAq0ey1xlx1vf8zs/L2qAT59gF8OoJkCtHg6qtuVMGJ
 1sALcEs9onez+iDAZYF1jVte1slank56l660qsGasWJKEkozMyevdUCE90NRYFy5pLdL
 bghQ==
X-Gm-Message-State: APjAAAWdBhbjs8S/qG2rZf8w3RpoAko8lYrUjX7RChe3ABcPj8lBuBmd
 4e1qELYcMatqoxd1QMO+rcaEujtyd/nO6j7CHhnrYA==
X-Google-Smtp-Source: APXvYqzIPzbgpPUyvUtrneet0HOhaTTyNY9TeCNaIXTIuQ/Kcp/SiKtz7hsji0MJix60noP5lG6p8beaOSZpn4+OlKA=
X-Received: by 2002:ac2:4a8f:: with SMTP id l15mr3446808lfp.5.1573665408550;
 Wed, 13 Nov 2019 09:16:48 -0800 (PST)
MIME-Version: 1.0
References: <20191113094256.1108-1-peter.ujfalusi@ti.com>
 <20191113094256.1108-6-peter.ujfalusi@ti.com>
In-Reply-To: <20191113094256.1108-6-peter.ujfalusi@ti.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 13 Nov 2019 18:16:37 +0100
Message-ID: <CACRpkdZ=xM2GYTDDLKoFwwdqp09-UDOyqogDW5pLvg4QaZXR6Q@mail.gmail.com>
Subject: Re: [PATCH 5/9] spi: pl022: Use dma_request_chan() directly for
 channel request
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_091650_705972_548C4370 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kukjin Kim <kgene@kernel.org>, MSM <linux-arm-msm@vger.kernel.org>,
 radu_nicolae.pirea@upb.ro, linux-spi <linux-spi@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Laxman Dewangan <ldewangan@nvidia.com>,
 Mark Brown <broonie@kernel.org>, Andi Shyti <andi@etezian.org>,
 linux-tegra@vger.kernel.org,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 Jon Hunter <jonathanh@nvidia.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 10:42 AM Peter Ujfalusi <peter.ujfalusi@ti.com> wrote:

> dma_request_slave_channel_reason() is:
> #define dma_request_slave_channel_reason(dev, name) \
>         dma_request_chan(dev, name)
>
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
