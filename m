Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0407D81BB9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 15:16:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hdgAE10SfnoFmetWqkxwS6AP4jB+jejEE4RlPi2A8Vo=; b=jO5ZNgltRSaaed
	GaaKu+grBz8QNFKpE4hqHsBmVtIYBZGvg19aAbkfyijwaw68Ef0iCSHjkxnUmftv7n5chhdPbc+RC
	HJ9Mu+KikA+VLin1PCuvYryTSPATBcdYR6jOH+XRJMXIdb6SVjSu34P38FKBSMb8SXp1H+za1oaoi
	KtdmIUlW7OE39NXFGyCpWEEMSW2Y2p1nZn8s/l0RrEsMH+UOi8O47ySYPGfaaPiZRXcewWrtx1OZ2
	Ut/Ja2bPExr7/WU3MbmIvdLUicOIEnwrFU8QWoH1XRdk3uK6oB5ZHcChY6lnwFMw/o5n7Q6aeeMFE
	h0kHOF+4G9dOTIECGclw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hucr2-0007bP-38; Mon, 05 Aug 2019 13:16:48 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hucqr-0007am-Pr
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 13:16:39 +0000
Received: by mail-wr1-x441.google.com with SMTP id x4so31211964wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 06:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=aboHDvQ6ED+izD2UcWUy5SYRhwe6k8n3aFGpiqq6F94=;
 b=HJrPdg5vi2acXiTXn2D4z0i7Hr8w9XxLP/M4z2UnD9KSie//GRJr+D7i+HBERo0EyL
 E5xRuusW/sVxMjetijNBd1r+m4y7aPO+7292NQ5ydJqR2IJKF77JAsI54CE17Ta/cdZg
 QrG3JXUa8RWfSFu9Yj8ueDmPzGjfRvEczwrUzyAF6NXpZFHS1fbblvXfUprPBAeDuSVs
 G7kkZpSxO2LtflLSGMe98WVsft4eKAhlMb+AWUwtjg4FVC3SvA0PDrhI7UFd5lX9acGL
 rtGWgEtJiIGVcoJsqWbo5ZVbH0otl6VcYaaYQhB+ovNxMBCVQULGfy9jPcC4aONgj/Ka
 qTpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=aboHDvQ6ED+izD2UcWUy5SYRhwe6k8n3aFGpiqq6F94=;
 b=OyS4OuAEnyXEAcQaaAPEGVFIfuqd8luNvyD1ElePCMNLPcLu1jaxxCGbpGtB3RYUYc
 CYR3dGvRMNL51USh9yrV1B8A5R5aRyFQNhoXiBOtA0Sj+zZ+e7ODKtOog/hrzrd6xGC8
 tDuAwHAF1RD5bXqiMn9mXc+kNhjum6gjCgRDCx/q/TA/OIdcz8hPPuo+t1dKdsr41tlw
 Rki3MzYAstiHbSWlC/0oRfjkme3FOjQmUW6TBiEVIlx6Pz2flJUiFpr4sAu8JiR38f69
 lysE+XTS9d2j51Y1MIQLScloFmPL1247AGf5cEBFaGZTim+cewHWgoI3PedD3akqV3xh
 uXhA==
X-Gm-Message-State: APjAAAXYg3WKpMy9z22r7TrOg6pqlAiO31fSt4Yk3q5EuVqho5S8+bqy
 KIJaFkr7xFM7LghRwKool8s=
X-Google-Smtp-Source: APXvYqzjHltu287XVkm0ryMGRX0Isuk446ECENvX2h1IZhSqC098PAq939JkQVreUtJBofYhKAusxA==
X-Received: by 2002:a5d:60c5:: with SMTP id x5mr74740880wrt.253.1565010995650; 
 Mon, 05 Aug 2019 06:16:35 -0700 (PDT)
Received: from arch-x1c3 ([2a00:5f00:102:0:9665:9cff:feee:aa4d])
 by smtp.gmail.com with ESMTPSA id m7sm71200354wrx.65.2019.08.05.06.16.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 06:16:34 -0700 (PDT)
Date: Mon, 5 Aug 2019 14:15:55 +0100
From: Emil Velikov <emil.l.velikov@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v1 14/16] drm/panel: call prepare/enable only once
Message-ID: <20190805131555.GA5005@arch-x1c3>
References: <20190804201637.1240-1-sam@ravnborg.org>
 <20190804201637.1240-15-sam@ravnborg.org>
 <20190805105928.GI29747@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805105928.GI29747@pendragon.ideasonboard.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_061637_864039_B67472B9 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (emil.l.velikov[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, Marek Vasut <marex@denx.de>,
 linux-samsung-soc@vger.kernel.org, Sean Paul <sean@poorly.run>,
 Allison Randal <allison@lohutok.net>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Jonas Karlman <jonas@kwiboo.se>,
 Alison Wang <alison.wang@nxp.com>, Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 linux-tegra@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Vincent Abriou <vincent.abriou@st.com>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, Enrico Weigelt <info@metux.net>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/08/05, Laurent Pinchart wrote:
> Hi Sam,
> 
> Thank you for the patch.
> 
> On Sun, Aug 04, 2019 at 10:16:35PM +0200, Sam Ravnborg wrote:
> > Many panel drivers duplicate logic to prevent prepare to be called
> > for a panel that is already prepared.
> > Likewise for enable.
> > 
> > Implement this logic in drm_panel so the individual drivers
> > no longer needs this.
> > A panel is considered prepared/enabled only if the prepare/enable call
> > succeeds.
> > For disable/unprepare it is unconditionally considered
> > disabled/unprepared.
> > 
> > This allows calls to prepare/enable again, even if there were
> > some issue disabling a regulator or similar during disable/unprepare.
> 
> Is this the right place to handle this ? Shouldn't the upper layers
> ensure than enable/disable and prepare/unprepare are correcty balanced,
> and not called multiple times ? Adding enabled and prepared state to
> drm_panel not only doesn't align well with atomic state handling, but
> also would hide issues in upper layers that should really be fixed
> there.
> 
Fully agreed. Mistakes happen - hiding them, by returning "success" does
not sound like a wise approach.

HTH
Emil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
