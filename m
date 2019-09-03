Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0C5A730C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 21:03:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KdZ5caEGs/oT/nmHGo4vkUNeHaq1gVmqVShfPw5gPyY=; b=p01ZFutf7mhCsn
	A8mvgDjV8DM8sLLasybAVs5cTlRnWD/7NFdvx5NS2TacxtAS1iYILXW1g8E6z/UrGLfXFLJmyVAIK
	2SzG0eqJzMqKcjhoB2XlyFjOUC/ADkKmpYOnh5UjyeBh5hVIj9LNYYL2N6TLq0fxFbj+GFUIUNTT5
	ZUg/0PehrseDVVbWNaH3FLwGHg5WFBM/p3/NEM4wqR1XDIdKJ9qdrxKaBF/nl9uQ9cQUP//eISYMu
	ssbLa57FMZMxLK33raPobZZ7i1d8TjdPnTwgGqQSDETAG15QxYTqqec9sk3W2R2E9WJVD8k2vAD2c
	UPJcBgFb+2zcPrfUut1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5E5Q-00010c-8z; Tue, 03 Sep 2019 19:03:28 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5E5D-00010E-QA; Tue, 03 Sep 2019 19:03:17 +0000
Received: by mail-oi1-x243.google.com with SMTP id w6so1138295oie.11;
 Tue, 03 Sep 2019 12:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y+QuqQ5++lkMqKXAYS/qi7zuU0EGpIbrM4hWDE1pS1I=;
 b=HzRKecXRQc4ExW+83ZEnLKUXuhrCgR06x+QKiDNatgm0jYlBQc+fPxZhAdJJ2fbjDi
 Z1rKhL4a3zU7OAJEaiAlBLfDYxb1jd+sEqab69iiJ9hJJm27ERx8N+o5cZn6qnoej8MS
 AMvP9/ELOTmp3KfjXISKJF0L1R9C+GKMxP2G3Q6XPv35Jchy303oNe/fmRIum69ZaEPm
 CBO9fKUKGDkpU/xju9GsKxst5O489aKBQK/V63U+vT2N3fRd8mO0kOhUylXQttBJw7wk
 +jRbcG921YoSp4VgLI4JCx9iyLomJZ0NfXJHOIx1wkJ87vs6l63nXZG/sXXQsHMGMXnf
 bZzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y+QuqQ5++lkMqKXAYS/qi7zuU0EGpIbrM4hWDE1pS1I=;
 b=hVRvIyNOTEFWZtF8YOmggCyWzeoZaZcTIKrqC/KWkqzXfz4k9jXBrB0g/ibPdUDY+y
 OjfjAYN+qtYQgR8N1BqNlv0I3JMC7mC1iSgJIjmXhvnRYJHl4Te1vyc+RexVpNgRbIt0
 INxXbg6ENsrdY5uccKhmnpUs6giExcMVhSTbpUlF/6XavaQdffli8Sv0TjJxAe3lcdfs
 5SdvErHtb9F3FlDvX7WDtKaEm4T2lqdMp4NByX5otboKxGsxG1rq5P6/hQs6c/Jj5Fgy
 YzFc8QtsPxFy/avlQtzBnYAXnrJcEP+X9nRAbGlbIJ7FyjfpWqmvVOqsZlKTHu30sFT5
 sCSA==
X-Gm-Message-State: APjAAAX5M842pd46yIZCW2Sk4+N5fJZbvGxCF591RzwNGryXf7WelCtp
 OG/LcXdrskv8CtLvOJXy4ZlHQRwOEzFn+Y+CCoc=
X-Google-Smtp-Source: APXvYqwwUFNlfZebjM0zqVSX8dnNMtHXyb2ra3QenhJNz0G1ArgBXYzzOe9IIQBqxw3GDmpjOcvMWXXUIO6FHm0Clv4=
X-Received: by 2002:aca:574c:: with SMTP id l73mr615459oib.47.1567537394795;
 Tue, 03 Sep 2019 12:03:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190902085821.1263-1-linux.amoon@gmail.com>
 <20190902085821.1263-2-linux.amoon@gmail.com>
In-Reply-To: <20190902085821.1263-2-linux.amoon@gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 3 Sep 2019 21:03:03 +0200
Message-ID: <CAFBinCDSbWedtH6mtdyw2Oy3ZxHU160-NUMa3nBXn4B9BJ--pg@mail.gmail.com>
Subject: Re: [PATCHv2-next 1/3] arm64: dts: meson: odroid-c2: Add missing
 regulator linked to P5V0 regulator
To: Anand Moon <linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_120315_850240_1F8375CE 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anand,

On Mon, Sep 2, 2019 at 10:58 AM Anand Moon <linux.amoon@gmail.com> wrote:
>
> As per schematics VDDIO_AO18, VDDIO_AO3V3/VDD3V3 DDR3_1V5/DDR_VDDC:
> fixed regulator output which is supplied by P5V0.
>
> Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Cc: Jerome Brunet <jbrunet@baylibre.com>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
one comment below, but overall this looks good:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

[...]
> +       vddc_ddr: regulator-vddc-ddr {
> +               compatible = "regulator-fixed";
> +               regulator-name = "DDR3_1V5";
I prefer if the node name matches the regulator name, so in this case
I would write above:
  ddr3_1v5: regulator-ddr-1v5 {


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
