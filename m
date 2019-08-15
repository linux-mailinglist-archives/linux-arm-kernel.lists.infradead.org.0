Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7728E665
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 10:31:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IjRI+OgPEBWkJfQlkv84aayu3fUNFHhNr/ftmeqo9Wk=; b=mk3sdk3/moBIsf
	uOwngJUeZQd9nWqUA9P5e26uQX2HClrByVOi3bJvuCOT3jLat1Bg1ZmfmF6/zWIQtgvUp0HF99XYv
	tFlJ7PBhrzeAIKoTmfAy3uEzlno78BCWl+vcQn6K4IGUwDsyf1K/Apr9qsuwQfnrcGLCOaILpKY1l
	EZ2cfXKBmPqwfCBOLiQGJq2cITla71eEpPGOuanJA3tEbc+RwNikmMjgznYFlr6IbN84CWY5nlX6G
	cP+xkKHfb/qt1GrjC1/hjQ+Vvmba6R4zPtOyQLEE+KBIy0/CMWc1jkHWIK6sKAeMBFRNmeaObojR6
	nBT7dp+tL/7Y0hpI659A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyBAb-0000RN-Ms; Thu, 15 Aug 2019 08:31:41 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyBAN-0000R5-JF
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 08:31:28 +0000
Received: by mail-lj1-x242.google.com with SMTP id e27so1548565ljb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 01:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i/yfx5NeV3piU61gQdhfpnzlq/6GHBCfJ8yX0HleDDU=;
 b=rild4YlbRJU5wL1IgqlE2vanKqYTSRQWlpn+ut7lNDUUlySGDV7+Y8nqmVm+tCwfxP
 fF1pS/jvkhsXhDQfovqqUYoMMEuBrEOoaEvG9VehZ0mOPwEwFthyG/8t4T9NhYyj+9z7
 FzROK9y8F90mbOlCBpBB3Cs0Wsy2z2VXmF2A6AIthCV1UjCJy3cWW4NUevVl6c7gzRFE
 lhuLhtLiW5z6R3PgaVYhzlPmCe/GYpAoE3SKp03R8Th06dkcUEhoaSCZMhVg87OOSPKi
 C2YXbDeXfFo9O6FWqdUSAYbCNXAkpH48L0fivxYoziaZy8TFVo0Sel5vSyvt7y6cgRW6
 L1UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i/yfx5NeV3piU61gQdhfpnzlq/6GHBCfJ8yX0HleDDU=;
 b=Q77wBjL43AzrTf/GIr7g7CJ5bX5zo9xTsFUa/YMZ8gKbZ0Byimq+XiMglxzfQ8z9bh
 hogis/00Z5fAxuPJwHno5Aj5pbw1/K4fX9L+3rpHnQPnAp0FYLNfhOVNKaDXxYVHuyX8
 55Y9yfUP23DHYfEkhKsT6XTYyobHKzryn1IWrB1BOeyyStMmwlEcsGoX/LGaXjbm/Tdm
 HZtP7XLCQGzdW+1lj5SFbLAVmIGInxOV1jdh93OTjtrspiRTaZzIbqUROAhU+8UTVEXd
 zVVlSTBpr0HBpC68UoY/ANTNlqE8a8WCfKNmEw4ZBvxJv+z+OLaon7nilH7UGnQHS/7j
 3ftA==
X-Gm-Message-State: APjAAAXErRAhuYYeHFoaq6q3ADpDrS34IxNPdyh0HDRpio8xu1SJKTDG
 xyoffj8hIyid9sZmCWjxdQDdGH8SP5RANnAoNk8AEA==
X-Google-Smtp-Source: APXvYqzsrobqE4nMFnjhW6qVN2v/WuS6+a4azs9xd0z0wQrNczcpbiWvts190l19juTT3G+lBBGs1PS8c9qSK1SDMvQ=
X-Received: by 2002:a2e:3a0e:: with SMTP id h14mr2084652lja.180.1565857886156; 
 Thu, 15 Aug 2019 01:31:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190815004854.19860-1-masneyb@onstation.org>
 <20190815004854.19860-12-masneyb@onstation.org>
In-Reply-To: <20190815004854.19860-12-masneyb@onstation.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 15 Aug 2019 10:31:14 +0200
Message-ID: <CACRpkdYSHHqY50=3yo0QDinTaXbO9GzHoOFqMS4K3SiNghssGA@mail.gmail.com>
Subject: Re: [PATCH RFC 11/11] ARM: dts: qcom: msm8974-hammerhead: add support
 for external display
To: Brian Masney <masneyb@onstation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_013127_634594_54E820C0 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Neil Armstrong <narmstrong@baylibre.com>, Dave Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>, Andy Gross <agross@kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Clark <robdclark@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, MSM <linux-arm-msm@vger.kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 freedreno <freedreno@lists.freedesktop.org>, Sean Paul <sean@poorly.run>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 2:49 AM Brian Masney <masneyb@onstation.org> wrote:

> Add HDMI nodes and other supporting infrastructure in order to support
> the external display. This is based on work from Jonathan Marek.
>
> Signed-off-by: Brian Masney <masneyb@onstation.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
