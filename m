Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA2782758
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 00:10:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v1V5wxaoKdo00OCeViv/W3rkW17ZllQc8Eyd22pc3cE=; b=a7mAAVFIeBJtTZ
	t+H+xdwh0ojI1c4Gbe7Jt/4VLdFGKQ3fxyw3tbkmoTuxmt0I9n2Q0rTW5N6xSJ+08x+8BJf77BKnf
	RuuyRql95Gv3B9jbduIhRdnLRltPfD4uY+/tySsDd1EvyYWicYxUml7JKLmbv5RwtIi27n8NnQYk6
	tb7NRKqJTHthyFm7w/cj/tdSpgqrqktu6xQLTrTLqlSSVqucfkvuYUH5aZRkl6s4hI//0gmNDCK3/
	FCIs1AzsBAXWJO+7WoIZJ1CbCxOUFxO3GvgQGSex3/DIvwUaAuCB9oyzveYXGV+7Ur3fX8tmjuojn
	i9QZAwzM+0KYnsWaGVEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hulBA-0003bT-0m; Mon, 05 Aug 2019 22:10:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hulAy-0003aT-6V; Mon, 05 Aug 2019 22:09:57 +0000
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A32D52147A;
 Mon,  5 Aug 2019 22:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565042995;
 bh=NAJ16jvh/qchypdVowjtbzNr9+9foVnE+vd1uUZQC7g=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UdlsxMT9wxnPg84czTc53XMAznVmd7n8JRcYPxB0Fu7FGgY6Vf9s/Dqc+UR+3IfO7
 LPXWB3QDqCrtcNwuUxU7BaE/2hGz/E0e0XBJLo7Q5km8dkVP/ybkS82B3bEJoI21rs
 XBRKjIh4YtimZeQp5Or12nvID6o1ifjlu7V5KIpU=
Received: by mail-qt1-f169.google.com with SMTP id a15so82549465qtn.7;
 Mon, 05 Aug 2019 15:09:55 -0700 (PDT)
X-Gm-Message-State: APjAAAX95EYgxJRef0y4cf/4D72pgBFvaJfoNK5+wlQKBdD0h085Lohv
 ftMUCX/pyuTD4C9qkqryWtt3Aujb+P1K7bOzIw==
X-Google-Smtp-Source: APXvYqzN7Oaow/mdIokjxZIROhfoq29oWOHhIQUUHynApmz52dA7L6a16lTZR93u1Os4RUyoD7Omw1XiDFtlZBNZ4Fw=
X-Received: by 2002:a0c:acef:: with SMTP id n44mr215262qvc.39.1565042994893;
 Mon, 05 Aug 2019 15:09:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190805122558.5130-1-narmstrong@baylibre.com>
In-Reply-To: <20190805122558.5130-1-narmstrong@baylibre.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 5 Aug 2019 16:09:43 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+efvvb1UK-Nas0G5XefLWwN7ebnqoevi+W=jj4r3E2dg@mail.gmail.com>
Message-ID: <CAL_Jsq+efvvb1UK-Nas0G5XefLWwN7ebnqoevi+W=jj4r3E2dg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: net: meson-dwmac: convert to yaml
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_150956_265263_BDFE0C8F 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-amlogic@lists.infradead.org,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 5, 2019 at 6:26 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for the Synopsys DWMAC Glue for Amlogic SoCs over to a YAML schemas.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
> Rob,
>
> I keep getting :
> .../devicetree/bindings/net/amlogic,meson-dwmac.example.dt.yaml: ethernet@c9410000: reg: [[3376480256, 65536], [3364046144, 8]] is too long

Because snps,dwmac.yaml has:

  reg:
    maxItems: 1

The schemas are applied separately and all have to be valid. You'll
need to change snps,dwmac.yaml to:

reg:
  minItems: 1
  maxItems: 2


The schema error messages leave something to be desired. I wish the
error messages said which schema is throwing the error.

> for the example DT
>
> and for the board DT :
> ../amlogic/meson-gxl-s905x-libretech-cc.dt.yaml: ethernet@c9410000: reg: [[0, 3376480256, 0, 65536, 0, 3364046144, 0, 4]] is too short
> ../amlogic/meson-gxl-s905x-nexbox-a95x.dt.yaml: soc: ethernet@c9410000:reg:0: [0, 3376480256, 0, 65536, 0, 3364046144, 0, 4] is too long
>
> and I don't know how to get rid of it.

The first issue is the same as the above. The 2nd issue is the use of
<> in dts files becomes stricter with the schema. Each entry in an
array needs to be bracketed:

reg = <0x0 0xc9410000 0x0 0x10000>,
          <0x0 0xc8834540 0x0 0x4>;

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
