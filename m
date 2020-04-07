Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FC71A0F19
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 16:27:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=htV+2owqiN6h3VY6lwRdXVAHbUfIHFhXqWdp2Y4NCto=; b=V2aaY4R9Xcr091
	39RiK2noMFEPjBm0uS051hKk0Xfjmju7yUVs7ScN9rjwTLC7ACAOj9R0W/yFgi0Pbyihz+cFgnLWV
	ApMtgaTYvYToBuM9hNLOPekeO+Gkv4ghr3VGwIyF0pSnp06mcaK/TW5k+d+9PbvPqWAUpt/Q8tX5i
	LzPGLXX55z/Iw9DXYBjyojtMNq0r2vNDoiV3vT56BQOoy+y3XTeSUtIgIPClbykb3K0TZISwQtCq4
	vUNQAUjoOSn1nPoKfT5XcF85oCQHFK6kdef4UjCTZNFtLPPFDFOnXvGNEq1kwKRxzJerqIZbH6P7O
	tVue3iPxJ7vkmrzgiDlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLpBq-00014j-9X; Tue, 07 Apr 2020 14:26:58 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLpBk-00014D-7E
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 14:26:53 +0000
Received: by mail-wr1-x443.google.com with SMTP id c15so4089126wro.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 07:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1IYm3UJMYvZGcA5HDx6pN/EcT0r+laztRqnVn0lIv8o=;
 b=odzYHM4PQyxjrTdP94HEuH+cVYijwmO4USncHr3KBM+149SLADXX0l5w+eH1QjXMDq
 2usIGRMpJkO4vtnJ4/xbDW7w9VGBfZSXHIMf+m9RIhJd8Eug4LLMT91gtx+pR3VpkVaY
 FCnmm67cuXEQi7XFfyZk/0CAUZcxbYOjKvDEAn5S3NZh7+tkn0nMwHL7FUDRyHDS8Mnl
 wDrCoVW4ZFFVT3Wv3qCwDj3uKoioUOKK8Jlc0eipMjyND96mVue0x/Xp4atmpNrGbS0i
 YHnr0sYMJiqWInH+XZkl7sIovRIss8th70kqT/l6N5rJIzsGPX9yny/xqHWwTzGe2fW6
 sbhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1IYm3UJMYvZGcA5HDx6pN/EcT0r+laztRqnVn0lIv8o=;
 b=mEI8Ywj7EG8JQwXTjwhVocJfclH9vv443kNMGDeVAnD555lzwryNufUcYKXRTZmWPt
 GrzkZiu4dV/fgI8aDgLgky9PzXVhfzqve3+oJBQI3Urrw5J/HasnVLcztIv9QNxdl0g7
 SM3jq4sQfEyV37qv9LjWey7mKz/JfB0ib//LoPtXbOS4APgvsHuwQ0RbF95tA7lS/R2T
 SPHawGdLGWfZ77DfTZ7P08ihgWGU+ZTvErehygUtbqy6jHJS4RhOyyu5c8Y/oLLiFEak
 OPmcXx01hsU3s5lA3olPdnEu/c92mT4SICr+6Y6E/S2OpAesA5SfTEi+3ivpLXHI15OX
 RS2w==
X-Gm-Message-State: AGi0PubqugZ0xMamstWF0zGdAW2DKn2uH2MbMct2kAc+EmHENDC/+wev
 7YqbLSRBYYyWfAOWoyRZKV4=
X-Google-Smtp-Source: APiQypIajbhXDWtqrq1B2DdOwT8dbEEV5/v0+zYrndyRedN8LxgiIIX/wjQGUqh2yW1LFwrGLMRFNQ==
X-Received: by 2002:a5d:5686:: with SMTP id f6mr3019640wrv.91.1586269610755;
 Tue, 07 Apr 2020 07:26:50 -0700 (PDT)
Received: from Saturn.fritz.box ([81.221.228.86])
 by smtp.gmail.com with ESMTPSA id f20sm2544119wmc.35.2020.04.07.07.26.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 07:26:49 -0700 (PDT)
Message-ID: <1586269609.25385.3.camel@gmail.com>
Subject: Re: [PATCH 0/4] defconfig: fix changed configs and refresh
From: Max Krummenacher <max.oss.09@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Geert Uytterhoeven
 <geert@linux-m68k.org>
Date: Tue, 07 Apr 2020 16:26:49 +0200
In-Reply-To: <20200407141624.GG4751@pendragon.ideasonboard.com>
References: <20200407103537.4138-1-max.krummenacher@toradex.com>
 <CAMuHMdWrekHiADkMmgO5nDxFNYjLud7FD=7ArMZNQire_+7TQg@mail.gmail.com>
 <20200407141624.GG4751@pendragon.ideasonboard.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_072652_303091_194ED7F1 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [max.oss.09[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [max.oss.09[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anson Huang <Anson.Huang@nxp.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Li Yang <leoyang.li@nxp.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vidya Sagar <vidyas@nvidia.com>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Will Deacon <will@kernel.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent, Geert,

Am Dienstag, den 07.04.2020, 17:16 +0300 schrieb Laurent Pinchart:
> Hi Geert,
> 
> On Tue, Apr 07, 2020 at 03:16:14PM +0200, Geert Uytterhoeven wrote:
> > On Tue, Apr 7, 2020 at 12:36 PM Max Krummenacher <max.oss.09@gmail.com> wrote:
> > > Three configs have been renamed and/or changed behaviour.
> > > Clean that by using the new config name.
> > > Then refresh the defconfig with make defconfig savedefconfig.
> > > 
> > > The refreshed defconfig does result in a not changed .config.
> > > 
> > > Applies on linux-next/master tag: next-20200407
> > > 
> > > Max Krummenacher (4):
> > >   arm64: defconfig: DRM_DUMB_VGA_DAC: follow changed config symbol name
> > >   arm64: defconfig: PCIE_TEGRA194: follow changed config symbol name
> > >   arm64: defconfig: ARCH_R8A7795: follow changed config symbol name
> > >   arm64: defconfig: refresh
> > 
> > Probably CONFIG_DRM_DISPLAY_CONNECTOR should also be enabled for HDMI,
> > VGA, and composite display connectors on various boards since commit
> > 0c275c30176b2e78 ("drm/bridge: Add bridge driver for display
> > connectors"), but it's not clear to me when exactly this became a
> > requirement, as before there was no code that looked for e.g.
> > vga-connector.
> > Laurent?
> 
> It's not required yet for R-Car DU, but I'm working on changing that :-)
> If we can enable CONFIG_DRM_DISPLAY_CONNECTOR in defconfig as part of
> this series, it would be useful for me.
> 
I will add CONFIG_DRM_DISPLAY_CONNECTOR in a V2 to  "arm64: defconfig: DRM_DUMB_VGA_DAC:
follow changed config symbol name" with a comment in the commit comment that this is
recommended to go  with the DRM_DUMB_VGA_DAC.

Regards
Max

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
