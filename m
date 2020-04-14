Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F74A1A7BC0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 15:06:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GhO7SqyH+B2HZolHQ7m8IwdxvUn1C47SfMpwZZ6CZtc=; b=uEGLE0LYUmDzO/uN/SwUblSxEB
	OYiBJgU6fj89vHhY6IKL/wpjpRSf4Qzd6NPf7PtdVpBRhzepAtmvuKP+BtUogSEfcKvLzChwncyBC
	IDQ3SAM7lPjn/8/Zg5Ti5x75MSKW6PPjfYCf5HHhAJnFrghCn/OPI3o3Kro8XXlovoamBIrzyv8YN
	BWZYRvqZ6mokMcCAwpR4uiJOkwmHbTpZsr/8qNtou6wRhZ5m0nFminamoO0UARb7NuRrg/BbvpaBA
	R5Bo4OaecG7D0eUKeff9q1HMnTB9i11vdNtQGaruHI0QqKK8XTs7MeSPyLfukaoIN6PvaZ/jzTZt4
	DLC5blxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLGP-0001AA-7Q; Tue, 14 Apr 2020 13:06:05 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLFo-0000dF-0I
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 13:05:30 +0000
Received: by mail-wr1-x442.google.com with SMTP id u13so13752207wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 06:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=hXwIQYgoQP2Wup93C1/59d2xx2g3UUkrum6b3g6XEYk=;
 b=UyQbo7MJKG1NihktiWx4FwRnJw5Y/jhDfqPKDzBCTAnc3WqjnfQ/r8MXmIK4H2tTcc
 p/suue+ZEK+pVaNOs6LS+XEDherVb2ELvDV3m+CCOdnmZ7LUmlSkF83KfwIE0byLOtbw
 iHvrkfYP+0z/V/MbtwnwT1czz90p5UT2RrjBNhc6GjdHa7Af859SsPQAzcnFmpM/zkCG
 ongBPvM7Zj3IMiwBjBcpWjBJewL221NaOWh7Y1Y4IFBXdjQAQ1SRqHVMiSf4LwkETeiv
 lsHf4UojuwH3EeQvz64OlDVcDd2O8e8O0UvizYkWaPpibK0sDuMefLzpyhTJC5+5qfRr
 p1rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=hXwIQYgoQP2Wup93C1/59d2xx2g3UUkrum6b3g6XEYk=;
 b=VqKaUQxxePiOLxaia5tAMA9O+ArV+uJIrhgysH/pvu41q7rJ+EHhhZPFxN3CSX8Y3W
 h6YD85XlLs1zAIe7tnEekgGB3hAoeVzxr2hSlFrypBsX6tO1u7zSL4Z3ZKvYScQzpqbM
 p+M9yA5fO3wBAGEgQlx0FbqDHDPYMh7nPvYoUxW0oWiPb3fd0ylIBNoMcdemqwsTo4s7
 +q1VxxXAW5rQdM1WPkHvet3TB/b05dqb1sgx7Zz3oRmdfq8otBMEdk5SHj28EquXdfND
 azz09hzbHYnlqAddtHxDMksXWB06f5tvU0VVSgZk03Nq2sfislU2PKCr80/0vkltnf/u
 SsyQ==
X-Gm-Message-State: AGi0PuZx1Yz1issFAft06vPpUotoFZ8BocRqZshqcUergzmdEEtaLziy
 9/RwoMN3kEqPK/TCmqJIJ89yvQ==
X-Google-Smtp-Source: APiQypLVat6kUor59eAwhpTgIo0JZwEUdzMv6AqD1oJjYDhA/1hYzmlEALMZYP/w2KFVxCghsnhsSw==
X-Received: by 2002:adf:a54a:: with SMTP id j10mr22627237wrb.233.1586869526464; 
 Tue, 14 Apr 2020 06:05:26 -0700 (PDT)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id k3sm9397220wru.90.2020.04.14.06.05.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 06:05:23 -0700 (PDT)
References: <20200330221104.3163788-1-martin.blumenstingl@googlemail.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, khilman@baylibre.com,
 narmstrong@baylibre.com
Subject: Re: [RFC v1 0/5] GPU DVFS for Meson GXBB/GXL/GXM/G12A/G12B/SM1
In-reply-to: <20200330221104.3163788-1-martin.blumenstingl@googlemail.com>
Date: Tue, 14 Apr 2020 15:05:22 +0200
Message-ID: <1jftd6tdyl.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_060528_078264_9EA32B5E 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Tue 31 Mar 2020 at 00:10, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

>
> [0] https://cgit.freedesktop.org/drm-misc/commit/?id=1996970773a323533e1cc1b6b97f00a95d675f32
>
>
> Martin Blumenstingl (5):
>   clk: meson: gxbb: Prepare the GPU clock tree to change at runtime
>   clk: meson: g12a: Prepare the GPU clock tree to change at runtime
>   arm64: dts: amlogic: meson-gx: add the Mali-450 OPP table and use DVFS
>   arm64: dts: amlogic: meson-gxm: add the Mali OPP table and use DVFS
>   arm64: dts: amlogic: meson-g12: add the Mali OPP table and use DVFS
>
>  .../boot/dts/amlogic/meson-g12-common.dtsi    | 49 ++++++++++-----
>  .../boot/dts/amlogic/meson-gx-mali450.dtsi    | 61 +++++++++++++++++++
>  arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi   | 51 ++++------------
>  .../boot/dts/amlogic/meson-gxl-mali.dtsi      | 46 +++-----------
>  arch/arm64/boot/dts/amlogic/meson-gxm.dtsi    | 45 +++++++++-----
>  drivers/clk/meson/g12a.c                      | 30 ++++++---
>  drivers/clk/meson/gxbb.c                      | 40 ++++++------
>  7 files changed, 189 insertions(+), 133 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-gx-mali450.dtsi

Clock part looks good to me and aligns with meson8.
Please resend the clock part without the RFC tag

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
