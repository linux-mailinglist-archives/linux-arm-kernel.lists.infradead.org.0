Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F58175F88
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 17:24:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d6xIT7nsJ/Stmi412RQFkBoz6z0+23281j9uUmN2Wgs=; b=VQtOtdLM5W7H/S
	8Eh+CQF46sZ5QN0AM68BL0J4FXarC13+RJDVERlSr9hsyt4fEpmZGo+7MRknMDjF7ZIi2aIs5P9Gs
	OVZLDEqjql1knPL0LPBYQSyzayeyXFMDb4ZtC2eWrEtY6+rKVmmB8TGrh9YynmxG7XFuU0otAwqDb
	Kj2feY1im2B5iIRnlrMUAP+L6as0qiD97c+LiUaiFbjiEpN2Yr8/V7pcZZ0vr/44ffNnIXAI8uinf
	WVdyBK7Oivby3y5a2ByAzGO1GTLjLd2D/y12OnvNc6OmDZXXsuXx3XNukNs/0Lw0tAoVvqpD3GTLl
	Mc7xfCpGsNnZuvwsapyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8nrT-0001lK-6H; Mon, 02 Mar 2020 16:24:07 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8nrJ-0001jf-FO
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 16:23:59 +0000
Received: by mail-wm1-x344.google.com with SMTP id p9so11944134wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 08:23:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=UaXmfdRD+RogZavDsWZ2Xu1muVDHx7qL1cRXMVQIaG8=;
 b=jCAh83IS11VcYAMyCg2IKY9ysFWiPlOllIQwqJIKu7LC0UgfNy/0YUshkg8sAsIixe
 T2tyJDMQmlUIRqvBWjVkkApLb0zj4ihySmriBj4rcrCdnF4G5NYI5sqxEfjhu4wLCcJm
 U9LPB8Xufr4d9P5gGp4lFXy1T3BYpjfEQgVc1NiTXuUdr4890HIcNTAtpHq6AL8le/WO
 gH90ODQ/OXDQtPnMnRvclPrHaaH8rQixBMs1KTJNTyQxfYN1XLIJ/pG3BM8JEANL9lvs
 VvHDtqg6YN561nKG1P3doe523Sf+y3jXbfL9CwPS544mxt3KnDPztlKlV8IOjHyPIqz3
 AfJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=UaXmfdRD+RogZavDsWZ2Xu1muVDHx7qL1cRXMVQIaG8=;
 b=cCThLTVMOtvicIc+52TpO9X2AbMaR3KVTMiV/PILN4jsocyhG9hNAyzmSIIDcfBikg
 qZhFsCMFaWgbDLSMMj3GSUkMKr7uFCz4S6MCcvZCsGFImRzIMS7cV8RRVMAXoCxHjXAf
 YufCf/pUaw6nK3MNPtqEX1RFy/OtfOx0DkzPhmoZPrKT87OQoDN7M9/0TFMiCcb7t7hD
 P+G1h6DuGSpr5mfogp5SgkhTmylPlPcgFo5TM+pKAlCKn70R3zOZrmQOr2awAukdHIFH
 XBqdJVGvOxRHbMOGfjOmALX4K9bRu9BIkVKIJPVWZW0FxNwg4q8BRselmNgOHhe1p42p
 nJoQ==
X-Gm-Message-State: ANhLgQ2NkCbLLNGOrPpdGYyUs32Vh1QGQ6pVv8JuzzkqzmSH7uRzzrvp
 bZt2EpO53dinhgSm8qPik8q3JA==
X-Google-Smtp-Source: ADFU+vv8D6CdaqmTDhr7fwgQwP+TsU7dihlNiEMXFNlusa/13yIpEeBBvpYiQrJfUxeUtmQvHgtsHA==
X-Received: by 2002:a1c:f615:: with SMTP id w21mr200544wmc.152.1583166236090; 
 Mon, 02 Mar 2020 08:23:56 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id d7sm18821187wmc.6.2020.03.02.08.23.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Mar 2020 08:23:55 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, mchehab@kernel.org,
 hans.verkuil@cisco.com
Subject: Re: [PATCH v5 0/5] media: meson: vdec: Add VP9 decoding support
In-Reply-To: <20200219140958.23542-1-narmstrong@baylibre.com>
References: <20200219140958.23542-1-narmstrong@baylibre.com>
Date: Mon, 02 Mar 2020 17:23:54 +0100
Message-ID: <7h1rqasp2d.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_082357_511216_6ADCB9BB 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> Hello,
>
> This patchset aims to bring VP9 decoding support to Amlogic GXL, G12A & SM1
> platforms for the amlogic stateful video decoder driver.
>
> With this, it passes v4l2-compliance with streaming on Amlogic G12A and
> Amlogic SM1 SoCs successfully using the stream at [1] with a fixed
> pyv4l2compliance script for VP9 at [2].
>
> The original script kept the IVF headers in the stream, confusing the
> decoder. The fixed script only extracts the payload from the IVF container.
>
> The decoder has been tested using the Google CTS TestVectorsIttiam VP9 yuv420
> samples and the VP9 Decoder Performance streams at [5], decoding all streams from
> Profile 0 and 2 up to Level 4.1, with 10bit downsampling to 8bit.

Tested on meson-sm1-sei610,

Tested-by: Kevin Hilman <khilman@baylibre.com>

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
