Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0B96BA67
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oSmLb56dKtgZZxl7eriCUW2867kCLU+RXel/oo/9XgU=; b=rn4pAyFyHxz9xI
	uAIA2g5kqXLRvNzxOz6wJ8I0/2EbtbjtyteOl6eV/SwGv3cv75WxntvJadbvGyqBRoF+N5vXInDPb
	iW2PRMFLaDzklXxncwKwm3cw376uQ3ab8RnocuM3zrPwZlaYnS1wYJx3hycrNsWidQ+75e4vh3Yvx
	31rx7BoMy/MldB5Le7s5JMg7k09RE14LJpDgDJz0vA4el73jlErUcL/5IxWiLlw6X1+teOtYVgerl
	yMjWYb0azC9cpSlJY2GMIkkC5kWxoM3sSGW84eA9EWKW5L9BAY0m9aG8/CYIUrbqf848ib+UoAh2R
	7j5cxUqTvMqGVwg6CzvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnhKO-0001cn-Bx; Wed, 17 Jul 2019 10:38:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnhKF-0001bw-CJ
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:38:20 +0000
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AA6CE2182B
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 10:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563359899;
 bh=EM4gS8mAGQDedVZGGONZaY9+yCWKAtPAjdPsCsgwOjA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=iRsjFQQrjNmtgbLMWeCNYdP0HGgaJWhgSbmm4IFi1xfBbXDlGPTq0g1IbbV//YZKu
 2b5cV+HpOsyjs4M/rtvOjKCAF7sKti/mkOhI72YCfT6DF9ts21rHt8wmUCeKSISB9X
 mruzAs2Z53mWa/5mlIqXimCpnP8SxfjDE1XfYHiY=
Received: by mail-lf1-f52.google.com with SMTP id b29so8822420lfq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 03:38:18 -0700 (PDT)
X-Gm-Message-State: APjAAAW8Kk6X7E43nArTyZvp8AYhsh7A8ixyPMhZjSffz2AvyGSNFze5
 8YzswHv3K6C/uP1tu0cfHtPbUAbUM7QUcMLSg3A=
X-Google-Smtp-Source: APXvYqyz/tFKkDEsgYJcEhlF6kY6XpGjK9nVGrDgAi01UppvCkUTP4w/fba1Vfs3b/0mz9atjli4OodMVqblc2ZpNYI=
X-Received: by 2002:ac2:4d1c:: with SMTP id r28mr16893853lfi.159.1563359896938; 
 Wed, 17 Jul 2019 03:38:16 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190715124455eucas1p13bfc0c1d113225db9607e4c0dbac353c@eucas1p1.samsung.com>
 <20190715124417.4787-1-l.luba@partner.samsung.com>
 <20190715124417.4787-27-l.luba@partner.samsung.com>
 <CAJKOXPc3qsM5Xe5JViDZXYfes+_veb-KX3fnZjpkUCrphBcu-Q@mail.gmail.com>
 <8ed83c77-57f7-78a4-e437-714cfc7b5c58@partner.samsung.com>
In-Reply-To: <8ed83c77-57f7-78a4-e437-714cfc7b5c58@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 17 Jul 2019 12:38:05 +0200
X-Gmail-Original-Message-ID: <CAJKOXPdMUV6JP0R4kj=cFKd7QUdrtMXtSm4S9pfF77zvKu4v1g@mail.gmail.com>
Message-ID: <CAJKOXPdMUV6JP0R4kj=cFKd7QUdrtMXtSm4S9pfF77zvKu4v1g@mail.gmail.com>
Subject: Re: [PATCH v1 26/50] ARM: dts: exynos: align NOC100 bus OPPs in
 Exynos5420
To: Lukasz Luba <l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_033819_437999_64E2B806 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Andrzej Hajda <a.hajda@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 17 Jul 2019 at 12:27, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>
>
> On 7/17/19 12:10 PM, Krzysztof Kozlowski wrote:
> > On Mon, 15 Jul 2019 at 14:44, Lukasz Luba <l.luba@partner.samsung.com> wrote:
> >>
> >> The NOC100 has a parent which clock rate is set tot 400MHz. The OPPs which
> >> are not possible to set are removed and new one is added.
> >
> > I think it is just NOC bus... or are there more of such and this is 100 MHz one?
> Yes, there is a bus NOC100 with a dedicated clock tree in the HW (with
> 3 muxes and one divider), which makes possible to take different PLL as
> a source then WCORE have, divide the rate from it and even switch for a
> while to alternative stable PLL (on the 2nd mux to SPLL (after a
> divider)) to wait for main PLL rate change stability delay. Max rate is
> limited to 100MHz for this NOC100 bus.

I think we misunderstood each other. I am saying, that the bus is
called "NOC" in the DTSI. Not NOC100. So unless there are more of
NOCs, stick to existing name NOC, even if it is not the most accurate.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
