Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C22D11558C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 17:37:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1xAE6llt4SXRKmC+5ULO8vF0/b3jMBOdVMtL/B/Q1N0=; b=tGfl1w0tiRcPag
	ykwlgaks1/nkBa+Nvllkpue/MvXRWM/lbuXQSFB9C5hxe1GJW13NJ5wgSyTySOcdp6HZvWgB9hgq4
	Oh9u05jGA6CJnmVofjrBxJSttjaMdwgDcVAFcbM48APqXOaCFIUTgPLrZKehPUhk1QEPpYsR0i6iu
	GHAZk2J6MyO1b6zSuZFA0hTADcOChrdRCX45d9/SiH3yqPoRqgjywVkU57Rf6njSjHiU5B8AUEj4E
	m7LCEXkL6bmq/BFFtaDcUKtVn++vEy2W1NDUyuk9/8HovkWsPNMPK2TH4nHqX5adb6dfeL0B7OZT9
	z8mpTMhZJGsLdfeJeugw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idGb9-0001Vz-Mn; Fri, 06 Dec 2019 16:36:55 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idGae-0001AB-1b
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 16:36:25 +0000
Received: by mail-lj1-x244.google.com with SMTP id r19so8331457ljg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 08:36:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HnJtFpZ6jjWosnNm58PnBnTv4VRgmN3wB8xLAynPWog=;
 b=KluAb/4Mo3kTzHDHB3oCfFJIyJBu6He1LR/O65SLLuUB9MPFPJAiBR0pO+r3CrCW7v
 6YVIYTkVHKctyppN/7wPW8ZYOXmyb0z9UMQB4A4X7m/Y3F0kKJcubdldYDgNxET/Fu1F
 fMDZRWhaTvY+91BOkXyCjg/uuJHFidRBW2L8tZAbaedFND0dVGbqEtB5X5ukXrjy37W1
 3w1JI0dTRUW/nWqofMzbhGACVJyHZg0hTW3/d8o8zpgO7pCicaFf3+CUPBERbyXYseSJ
 erfkuCG93rFUr7pqDa4HllSD8UUDZ13s+T51wrs5CKV5TBKfFzIgi0UllRgHfQqErnRj
 NeDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HnJtFpZ6jjWosnNm58PnBnTv4VRgmN3wB8xLAynPWog=;
 b=TdBF8VPkrlWuzc460CTOkHfSgasgupxsJv3rpgnLpeCohb6BtX3lus9WE5IB8+/yO8
 8bsaIN5PjrVpCgq2Uipafz1fFJVDEzKwZ+QG0j9HU48PT5cin2l6dbyOFZGkVRCdJVGJ
 wUuaga63d2/ul/qEaQZOxVb6wE+GVR9RpMuXNBcW9yrC4rAwlKFDkVrHHmTLGFWBCX5f
 2VoHB3vnPsJKOj4YSI1LaOuhqhcE8FrQPAWjb7DMOSBMYdqq0cm8A/TuuI/KyKqCk6kZ
 B0AxYf5RIU6fb7tCMfliFQ/Jq7WAzKl6cM04iTf4vrca6WcBECyBv8skqxYV1ygB3tx7
 qE4Q==
X-Gm-Message-State: APjAAAV/c9b5DjDwI0tkbdnEsBpI8p8EngLFlp7/oRMMEJBR+Xy3ipdJ
 hPu7XfhvOdzH9zZLY6epd+eOVw==
X-Google-Smtp-Source: APXvYqwKWoNwsDw4lLlo6f+cwU2nrcz+ksaYea+IvWUnWl3JsguNTfwQAjFoWHJlaoF6xdIzrn9wxA==
X-Received: by 2002:a2e:1f12:: with SMTP id f18mr8959769ljf.11.1575650181787; 
 Fri, 06 Dec 2019 08:36:21 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id w19sm6748148lfl.55.2019.12.06.08.36.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 06 Dec 2019 08:36:20 -0800 (PST)
Date: Fri, 6 Dec 2019 08:32:37 -0800
From: Olof Johansson <olof@lixom.net>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [GIT PULL] Qualcomm ARM64 Defconfig updates for 5.5
Message-ID: <20191206163237.t4ohf7fviz4ywkck@localhost>
References: <1573068840-13098-1-git-send-email-agross@kernel.org>
 <20191106220406.4aoq5suvwww6c3ov@localhost>
 <20191206050222.GC289401@yoga>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191206050222.GC289401@yoga>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_083624_114389_C30E2EF2 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: arm@kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 05, 2019 at 09:02:22PM -0800, Bjorn Andersson wrote:
> On Wed 06 Nov 14:04 PST 2019, Olof Johansson wrote:
> 
> > On Wed, Nov 06, 2019 at 01:33:56PM -0600, Andy Gross wrote:
> > > The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
> > > 
> > >   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> > > 
> > > are available in the git repository at:
> > > 
> > >   git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-arm64-defconfig-for-5.5
> > > 
> > > for you to fetch changes up to a36612b7469cf76953cf237a2b9a62f6c97730bb:
> > > 
> > >   arm64: defconfig: Enable Qualcomm watchdog driver (2019-10-20 23:04:59 -0700)
> > > 
> > > ----------------------------------------------------------------
> > > Qualcomm ARM64 Based defconfig Updates for v5.5
> > > 
> > > * Enable Qualcomm cpufreq, watchdog, prng, socinfo, SPI, and QSPI controllers
> > > * Enable SN65DSI86 display bridge
> > > * Enable QCA Bluetooth over Uart
> > > * Enable various Qualcomm remoteproc dependencies
> > > 
> > > ----------------------------------------------------------------
> > > Bjorn Andersson (6):
> > >       arm64: defconfig: Enable Qualcomm remoteproc dependencies
> > >       arm64: defconfig: Enable Qualcomm SPI and QSPI controller
> > >       arm64: defconfig: Enable Qualcomm socinfo driver
> > >       arm64: defconfig: Enable Qualcomm CPUfreq HW driver
> > 
> > 
> > Hi, this turns on the driver as =y, when the option is tristate. Other
> > cpufreq drivers are also modules. Is this driver truly needed to be
> > a built-in for a generic defconfig?
> > 
> 
> I see Linus merged the arm defconfig PR today, but afaict the patches
> from this branch is missing. Please advice on how you would like us to
> proceed.

I think I was waiting on the promised validation of using =m for the cpufreq
drivers and an updated pull request.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
