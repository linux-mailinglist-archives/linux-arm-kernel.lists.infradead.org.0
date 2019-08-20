Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DF696A30
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 22:23:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lSoRjbNJioz/kwsF1CkkHIUEOviNZy27iN1Gh0UzGvs=; b=b3nybkM7+Dlv+c
	5/BapBqmAhTcWuO1qMU3CIaQJN7nx/W27Y9m4m32M3mEfVmuEf7HzCbgdA0C3V2wHviHt+5Epi3Z9
	a3YGggH5tmXIShX+c3i+UoxsPpAb77CWOtb8ba9Q3ZLb3AjzPnh7jo0G3MKj+AeO+KGZyhWJD9MB3
	E6ye/GgJq4X4oGFCe3Uf785I4msYH8XIJRElQM+Piw0CYxPSYmohC4ciAPL0UwuCIFRDchGg3nUY5
	xLIFTeSif/puCSv8w7s9DWllTmuvhQDMz2iFocWGUcS7qtoQHWADxSUdUSRZj/mULDFSrQMaWTvhn
	8+fWg79DFqxkuMAHSXWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Afb-0001xt-Dh; Tue, 20 Aug 2019 20:23:55 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0AfR-0001wH-Nq; Tue, 20 Aug 2019 20:23:46 +0000
Received: by mail-ot1-x343.google.com with SMTP id r20so6284499ota.5;
 Tue, 20 Aug 2019 13:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GbUoCPU7dhXf7N3yPBPfTHh406LSiW+lJWVrE8Nq7yk=;
 b=OGAbSMzOjAbjHAbArYLwGOOBuIe1MwU/DH+/1Vbsw4e+kllSEenQzS2cZArmeVohAE
 CU43oYPAQ6BjsZPPrI5mxNcdRN6bJT2HT00jCo72QgokrkYVLHZXX0drcM0HnFroIqPm
 dVo7kCSPcC9nuz6R37G4BkMXvX+yZQ5ipvGeDGq/ZWgMzS0AO+kB/5L+w9pwkSGoXYVU
 iP5f/26eR4VdKNiy+RYYC4TRb1WEGQctHFo1XNgq+lmdGHpVk6GacSHraqOmXDoJfNt/
 8tFFTOVt+ZjLWTUuvpU78i1Pq3LUVFn6MgX6sLYfkl3UrA93+GahMO5w81QOQ7VjwPJc
 X+eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GbUoCPU7dhXf7N3yPBPfTHh406LSiW+lJWVrE8Nq7yk=;
 b=Dg/O4IwDS7KX66oIzPR7nDfyLapta6QUHQjjmAIbVUXFUICwLQVoHacjRAUpayXdvf
 GOUt35UJ0acvLb+zHIz6Lq4yBQPkdhW5y6Vjj9tptxjGacvp0cz7bFbmNKDYsdrCHDmN
 omtralBayE6omDnOeyRJtEOYAEaKWf9mli0hs9+7quOnchIXsb8/3xekoys1FXmhpI/9
 KMvRa6RhMIYD/TV/cK04kRZWwzCYc8RbcOmqxxAOyc08M7xc9jP33f+RMFuTIXg9+CVz
 BPU9G3c2ZcoDPBGL7SKfxwNBjxTns1y+VUFGG+eLG/qlXFeUKIX6G7A/kdJ06fZgdnaI
 KlEw==
X-Gm-Message-State: APjAAAUgRTwuKAAX0cGSFGpm3DZN5Xq06wzQksyCAlSp32B4SF7/cSC5
 Yj+7xmurBqUQ39AbZPDkVa9dR+oI8iXci1dz/Cw=
X-Google-Smtp-Source: APXvYqwlEZEWByUwf102QXdWmV49xzyNpn8RmWiw+ptTx1FS1uGyVOZLkcZ3upU00U++IgKBTHK9rcUxJIz24/UHbNM=
X-Received: by 2002:a9d:6c0e:: with SMTP id f14mr22570884otq.6.1566332625047; 
 Tue, 20 Aug 2019 13:23:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190814142918.11636-1-narmstrong@baylibre.com>
 <20190814142918.11636-14-narmstrong@baylibre.com>
In-Reply-To: <20190814142918.11636-14-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 20 Aug 2019 22:23:34 +0200
Message-ID: <CAFBinCBPebpiKtMv3KuKRHsp3puZqAUeR0+V6d3k6gAX2ZNO5Q@mail.gmail.com>
Subject: Re: [PATCH 13/14] arm64: dts: meson-gxbb-p201: fix snps,
 reset-delays-us format
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_132345_803145_82385B22 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: khilman@baylibre.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 4:33 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> This fixes the following DT schemas check errors:
> meson-gxbb-p201.dt.yaml: ethernet@c9410000: snps,reset-delays-us: [[0, 10000, 1000000]] is too short
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
