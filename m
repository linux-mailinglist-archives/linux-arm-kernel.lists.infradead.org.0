Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BEF488AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 18:16:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IXmtvJSMZgYjrlQWoHZawMTRlnjoEGdLX9uG9mdVEGM=; b=njXvzNsOZkEGa3
	vqtORv4vN3yZRf0WxtGgVz/sEUN+EqXOScaouRrcDb9pntF6IMUgFfTZex3KEfcM657PgEPjdzkMc
	DLiUsxxzoMdQ3B5TADIeTaFzPubNX8Dl89MnLqLiCi9/OjXaH9vNOcKKETmTYJ6+ElER8dTtf48sI
	ECsMfQ+a/onj/MZF/dPgMEV98HIR+tMY4/3o5Ja3Ckm2ltiVDbAPhR39QDEaw1mo+9L6BaElQM/S0
	MCU2rotPdhNGPTf0durPPyI7QCjFRhs44PRKWR5Ycm0IuI5pixv/8/w05Z6iVZG/0WojNWuG+BRjG
	Zsmc+owdz/XEVzcXIUjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcuJK-0005yc-25; Mon, 17 Jun 2019 16:16:46 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcuJ4-0005xY-M1
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 16:16:32 +0000
Received: by mail-pf1-x444.google.com with SMTP id d126so5956930pfd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 09:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zvibPhwENQ3qc2un3M/Q6u9vfA61QDqGf+AvuS+Jre0=;
 b=ZoqSWmU/lQLp0AxiYiOl4DnE8lGbhiLm4TaGaplykVD8NJT3wL2fFNQtVZ1rhnDefR
 BaZR79IvfuOD5CsEX5Gw7fbGTcYyajcJl9kBZ4M7KE9N1zgzsiE4tOPQV7Ij2cCHZ82h
 EeOCnc0aOXf5zaqOyTsOM7HB6gCUwOMLTttbg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zvibPhwENQ3qc2un3M/Q6u9vfA61QDqGf+AvuS+Jre0=;
 b=kWRsGSuoypHHgN1f6b7LRgVOAEuWheTs7vK59zaEJKQ3Odb3Z83LW/cUpHYN/pruDj
 FTmCVhcZQFykDBxgS+S/1EUDxNJN4MKMSbUGc3lDO6Al0gGRD9dwi8LGgy93KO6SJAWg
 TypP/FacuGcWdqKskyPX2n5nqMvZXG6ymC4E/53EOlLxF9HlTejiMenuetM3elJfawoo
 V7yASaRLTSw/+jCidBhhTVWqP3s4cVRq2RnxIbo7ccNxusqNRSRwYUMG8CisE3U4pss2
 TjhYIOtFAANarukVIhdHTRJWHGQjQagmoJd97ew4+1w2HD4Kh9Lsh1CZvuTGxYgBGoWV
 hqGg==
X-Gm-Message-State: APjAAAUbm3d/Az2LfhqMZKHvSRZWNTc0y1R26fsrsi12HcpOPnBgMkII
 vujyzxl6gMu6HP1r1RDAZZ/OYw==
X-Google-Smtp-Source: APXvYqw3rc3Tet3QBs9yulULj2UwlZKr/1RY50orF99rzSnjjv2kEBXdw1GPW8ggnZq5hpDRRJ/YNg==
X-Received: by 2002:a17:90a:b908:: with SMTP id
 p8mr26903360pjr.94.1560788189915; 
 Mon, 17 Jun 2019 09:16:29 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id d12sm12846713pfd.96.2019.06.17.09.16.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 09:16:29 -0700 (PDT)
Date: Mon, 17 Jun 2019 09:16:25 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH] Revert "ARM: dts: rockchip: set PWM delay backlight
 settings for Minnie"
Message-ID: <20190617161625.GR137143@google.com>
References: <20190614224533.169881-1-mka@chromium.org>
 <20190616154143.GA28583@atrey.karlin.mff.cuni.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190616154143.GA28583@atrey.karlin.mff.cuni.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_091630_747217_74BC6B17 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On Sun, Jun 16, 2019 at 05:41:43PM +0200, Pavel Machek wrote:
> Hi!
> 
> > This reverts commit 288ceb85b505c19abe1895df068dda5ed20cf482.
> > 
> > According to the commit message the AUO B101EAN01 panel on minnie
> > requires a PWM delay of 200 ms, however this is not what the
> > datasheet says. The datasheet mentions a *max* delay of 200 ms
> > for T2 ("delay from LCDVDD to black video generation") and T3
> > ("delay from LCDVDD to HPD high"), which aren't related to the
> > PWM. The backlight power sequence does not specify min/max
> > constraints for T15 (time from PWM on to BL enable) or T16
> > (time from BL disable to PWM off).
> > 
> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > ---
> > Enric, if you think I misinterpreted the datasheet please holler!
> 
> Was this tested?

I performed limited manually testing.

minnie ships with the Chrome OS 3.14 downstream, which doesn't include
this delay, to my knowledge there are no open display related bugs for
minnie. One could argue that a the configuration without the delay was
widely field tested

> Does patch being reverted actually break anything?

To my knowledge it doesn't really break anything, however there is a
short user perceptible delay between switching on the LCD and
switching on the backlight. It's not the end of the world, but if it's
not actually needed better avoid it.

> If so, cc stable?

I guess this is an edge case, were you could go either way. I'm fine
with respinning and cc-ing stable.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
