Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E2D82DEA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 10:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ufLHJaeUumoaFfI8SPggv2Wu6+uaZK4KcI44AjmFaE=; b=d8if1xqMiYz6mh
	xCeXZVelfTzSch8bhx+19KOhdD+zYorhjBH4j48st8Jf4MRvnYmbR1Nvemmr2up0aq+q87LzaRydG
	cPlNbHPFhqsKlCyy9NhG53WCU0jy2bh6wf+hz4drNT0x+NBp1jFyAVibU1vjp7WKfuScsg+7Py6Ci
	x3KZzOIA4gDIrqEmP9nmRgGRlCBM8JufTtDAz05Vs2lyaRN8PlqxSBd7UgAx7eKqdyg2Sai4M4qxm
	Xf7X+LY4Ea7YRwxEhEGkIaU5M+76a5S14/y8mB+ebLuFZULhP23AOYwqqLeTGBg981so3NNTvURxY
	23fEH5UBQKShVu+4loig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huuzf-0006ij-Jj; Tue, 06 Aug 2019 08:38:55 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huuzS-0006i9-TU
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 08:38:44 +0000
Received: by mail-wm1-x342.google.com with SMTP id v15so77309793wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 01:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=qSnv/+vT/SIYwYJQCT7nUDhLGYyBse0g569xwPymLuI=;
 b=k7i/S0Uly+lYudrLsi5NMZAiSdRC1hWmKyOsqGQviJPbYlaGo7X+7lvdEsQr4w6K18
 hqgrCW0P4CeRROJFb0KFnU3qONfUt/8Qksx76/dk933FkCBCUcUelsT/NGFwGpXciyvh
 dkkuIx2/3DK+T53BTbgxN1AXD3nKAlbBF2IGNCVu2K/Z/7dNVKpHX9rWytsDH1uIrMIV
 KNsraa3hrNqV7VoS7QuDjNWF2AC5tyCQlXQ2ESyY2LibCPZw0H7V6YV0WN2qO339IjJr
 QR8S+lfICoUcroG1XEt2uXKVULW0Q3TMBOFEd/Z6fxbp5BOzFU9YvP4RaL1ZT+1AhwOf
 lhsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=qSnv/+vT/SIYwYJQCT7nUDhLGYyBse0g569xwPymLuI=;
 b=QdxVQcxPxOFZkrq4GyQlP/sjcgTZk+lrqikCu0tyZvfVSOBHG8XBFRoUAFLdeMnTqz
 p4/IgH+OhlNETR9fHxZUrahjC/skzCdWbTKEKfBvBcQrmaMUYYv2roU74c/4vJLCS6JH
 JusGQZyS6JTIYP7AM3nRh8d+fZwryh8N5/0eVpa0R0u1S67jig/TnyKY95LJH9bKpg+X
 Y4cyU8Np/zd/QbVZZRJikRAkViG1dqhjYjfZ/dGrtNUnL0Epcaj6ZjmWwke0rnJPXBLO
 x5R77B8TbZqSl+gmn1xqSapuhHM6TXxkspSiicF2eWUPtTZPr5jRbCH666nAOzgMePqp
 ftpQ==
X-Gm-Message-State: APjAAAVblJS857F+63JHJ3smoxZr1viT7OY++GJnuO5tigpp7MX9NPin
 d9peOUKhTC+M8RWgdJHYkV58bQ==
X-Google-Smtp-Source: APXvYqyNFcCjMT1EIr9SnBdj/3eb0N8J9r+MuFXedPFys0HGgjwjrbMnJn/62KpXxR8OMt0blyPHyg==
X-Received: by 2002:a1c:968c:: with SMTP id y134mr3179146wmd.122.1565080721469; 
 Tue, 06 Aug 2019 01:38:41 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id k9sm61670274wmi.33.2019.08.06.01.38.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 01:38:40 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, sboyd@kernel.org
Subject: Re: [PATCH v2 0/4] clk: meson: g12a: add support for DVFS
In-Reply-To: <20190731084019.8451-1-narmstrong@baylibre.com>
References: <20190731084019.8451-1-narmstrong@baylibre.com>
Date: Tue, 06 Aug 2019 10:38:40 +0200
Message-ID: <1jzhkmvgbz.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_013842_951428_ED21E7AF 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 31 Jul 2019 at 10:40, Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Neil Armstrong (4):
>   clk: core: introduce clk_hw_set_parent()
>   clk: meson: add g12a cpu dynamic divider driver
>   clk: meson: g12a: add notifiers to handle cpu clock change
>   clk: meson: g12a: expose CPUB clock ID for G12B
>
>  drivers/clk/clk.c                     |   6 +
>  drivers/clk/meson/Kconfig             |   5 +
>  drivers/clk/meson/Makefile            |   1 +
>  drivers/clk/meson/clk-cpu-dyndiv.c    |  73 ++++
>  drivers/clk/meson/clk-cpu-dyndiv.h    |  20 +
>  drivers/clk/meson/g12a.c              | 535 +++++++++++++++++++++++---
>  drivers/clk/meson/g12a.h              |   1 -
>  include/dt-bindings/clock/g12a-clkc.h |   1 +
>  include/linux/clk-provider.h          |   1 +
>  9 files changed, 588 insertions(+), 55 deletions(-)
>  create mode 100644 drivers/clk/meson/clk-cpu-dyndiv.c
>  create mode 100644 drivers/clk/meson/clk-cpu-dyndiv.h

Patchset looks good to me.
Waiting for Stephen's ack on patch #1 to apply it.

>
> -- 
> 2.22.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
