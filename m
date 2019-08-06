Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE97382DAD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 10:25:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=miuUjr8hQematxp3bJNcwzRGE9L3MLLP90bgdxDHtsA=; b=K536JYMBIdT5U6
	dHDyyaFZf2OGDlhweiE4evlneoN40FmBWLivt8C3oK5iCbhQyLugsPcOV/kgCEDW5HglTNkCd+9Qa
	GOpZgxgTkmFQwULd1bFCIq3w3XnwkaoDFH1o4UY763spCPQIOfyMH8NGrzMi4NCqAVLGLWwopcrCj
	1FRC/XG9LElfE0YCwMDYXVNwNLThRmHE0knjxpmO154UmNdZyUC8QfYRb9ysDVsjqjsg4RpZuxTLJ
	TzGugghA9w8AGLhkfW4fWiNuLqd6STMc4diVmsUgWuqX5xmg4TqV/lUSp5/qcHAtkOOyam1eMWMEt
	n++cR0WenpzppbMrtGHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huun0-00020W-Tg; Tue, 06 Aug 2019 08:25:51 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huumZ-0001lc-H2
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 08:25:25 +0000
Received: by mail-wm1-x343.google.com with SMTP id s15so54176153wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 01:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=dT2e75Ue1aWRtiwNDM0T+ofIOUOl1O1/yE9yhFmIPbw=;
 b=rWKS3KxOQXyGozcmFeuIT/HZgK+Isl8zvhcK+tQok47HDXZ5gQjJAsQ/Ena2gzB+mY
 RYNd2boWxJfdE2lHJc1ytXEKm2Y5Zg7J0DBBvYlTrQNIK3uWXs8ndch47RYKtHebS95b
 eqRuxTzTXBUDDato1/ErdymIUyCSuEukLcA6OFbpWwpSs06RbbXYOErSAHvOjeU2zmgz
 g1L7zbIVg2+ri7uxNOW6G7WoV4xXIHl0WJfTA/zsvmEl8aAj+l0wLS/5ZTClMOPPplNq
 uO7I+J95K9VPrCZEdzpPNZ8VFvFgcK5Pksi8KHXoO3m843T/V6Dww+CzNzuWr2LdJfe/
 ZA6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=dT2e75Ue1aWRtiwNDM0T+ofIOUOl1O1/yE9yhFmIPbw=;
 b=LxoLc/lby5gVXtJs9WiW4WVSTHXEbkgkCIxg/jawhVip0t9kC3x3tx2xxI5tzhddEn
 nPy9KSMUjMp0dKW5kA8lbidKoD18Q91F6PfZKXnmxM8DaPDaTP7QbhSA4SqBTvd9E+pk
 NGcoYV0zVqLBA2dknzJFjecA3zCyQp6LTtuoE2SbWvxvQXP/fNlAfhdbbhIlDPeWs2nb
 zr9x0l5Ovuf4C59sGoYemF5iDluooeQVlHAB09DLVhZlAngLUZK0PWk6g4BSx4g56XxL
 PTC+fdR9whM/h1bIHtD5TZgseBi8/fDuhUkvZpS+1NXIVDehi9kBHV7CW4I0OqKO7Ptr
 6hbQ==
X-Gm-Message-State: APjAAAUts/UZHGyKxtY7VI/wdeOZ9D71o4hWyIga6KZnQ+TRMd4R6O0/
 cH6MJkPMoB4V/GlrMryKnJULog==
X-Google-Smtp-Source: APXvYqyrWFu2i3U14X+W2YblMAUDlAsk7e1ee2lDtYocuarEsW/XUFLLyWaz2c4klNGKe+DAkUmmrw==
X-Received: by 2002:a1c:3cc4:: with SMTP id j187mr3157185wma.36.1565079921916; 
 Tue, 06 Aug 2019 01:25:21 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id g19sm106126504wmg.10.2019.08.06.01.25.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 01:25:21 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Carlo Caione <ccaione@baylibre.com>, srinivas.kandagatla@linaro.org,
 khilman@baylibre.com, narmstrong@baylibre.com, robh+dt@kernel.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/4] nvmem: meson-efuse: bindings: Add secure-monitor
 phandle
In-Reply-To: <20190731082339.20163-3-ccaione@baylibre.com>
References: <20190731082339.20163-1-ccaione@baylibre.com>
 <20190731082339.20163-3-ccaione@baylibre.com>
Date: Tue, 06 Aug 2019 10:25:20 +0200
Message-ID: <1j8ss6wvin.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_012523_834478_DC618FCD 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: Carlo Caione <ccaione@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 31 Jul 2019 at 09:23, Carlo Caione <ccaione@baylibre.com> wrote:

> Add a new property to link the nvmem driver to the secure-monitor. The
> nvmem driver needs to access the secure-monitor to be able to access the
> fuses.
>

Reviewed-by: Jerome Brunet <jbrunet@baylibre.com>

> Signed-off-by: Carlo Caione <ccaione@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
