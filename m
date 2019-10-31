Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E46EACD8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 10:49:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YR2LTjZ4XLDk0T1YLikrs1pLQEVFGPmjSS0F8ZnCx3A=; b=AOG9rTB8eaKtvG
	WAU2K+FsztEWNhGZn4UFZLZvxMHLUpxz45+g0aKVzr3WJZIns265J0fmf6EbCOtDiV+W4BSEYEzNN
	ptNUtVDx/BCWLInRoc+SmLgSuMP+RWr0xp5fkEYOmwlCfcATunmeW2271TTrWDeFpk5MgEUK9SDVU
	9p/bSq3DQfK3/9xKCgOR3FNQEQUBIWLcvZp4CtUdeucKCvEEyD88tZ9qEpczFtwbOsHFdOhJwjaQI
	j3TpS839RKwHWebKk0JRay+VTuKeL1G+cffFNmA5tWWcZ+fNIkbCSrgSBv36qo1ScakeznHG14PPm
	ZTNtLag8JEI7ulJRiZSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ74c-0003E7-9u; Thu, 31 Oct 2019 09:48:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ74T-0003DL-6H
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 09:48:50 +0000
Received: from localhost (lns-bzn-32-82-254-4-138.adsl.proxad.net
 [82.254.4.138])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A4EDD2086D;
 Thu, 31 Oct 2019 09:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572515328;
 bh=pQ2TZ8AZGjE832CFWtP12FmqR4rocBUFpuSdy3IhJps=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ecnwFU71ceqdrL0AkjJR5tVBlshMAAl40bFLHlhvuyeRilCtOSdIqM3aUH9rIYomt
 uqFUHzTJvOCzAUGfbJ5UJsB7+hWo0abFBvUSVWS2cfwZF0MxNWWQkothYzO2b6ulSn
 Ag1eINk53eyrnibM0eL5ntAKipomJK0pgdMDeTI8=
Date: Thu, 31 Oct 2019 10:48:37 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH v3 1/3] ARM64: dts: sun50i-h6-pine-h64: state that the DT
 supports the modelB
Message-ID: <20191031094837.wy4gj6xo4youao75@hendrix>
References: <1572438255-26107-1-git-send-email-clabbe@baylibre.com>
 <1572438255-26107-2-git-send-email-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572438255-26107-2-git-send-email-clabbe@baylibre.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_024849_428392_657AF6E3 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 12:24:13PM +0000, Corentin Labbe wrote:
> The current sun50i-h6-pine-h64 DT does not specify which model (A or B)
> it supports.
> When this file was created, only modelA was existing, but now both model
> exists and with the time, this DT drifted to support the model B since it is
> the most common one.
> Furtheremore, some part of the model A does not work with it like ethernet and
> HDMI connector (as confirmed by Jernej on IRC).
>
> So it is time to settle the issue, and the easiest way is to state that
> this DT is for model B.

No, this DT was introduced for model A, and we have to keep that. If
some model B changes crept in, that's unfortunate, but it should be
reverted, instead of changing the assumptions like this.

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
