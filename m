Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6931F96A91
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 22:30:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f8dYYhN/Pe97D8nDhcxKBIpuGfXMUjtY3jM252Dlsgw=; b=btZ3SnZmxBm1GV
	FvkbXL+S1v4hj1A12I3spM3Tm3jy0anYj6U4FPrKwAkrzVghthm3lCehOuoDVq0dR7o22se7MEwPl
	L+EtqOppj+hbTFpAIjtbFVu4Bfq1yspFkg0XHGIHoGM/i88LnUZPaL3oOA5r9lQYNVbr854CywBIN
	yq/OS7N2HQjaEhOZI3zWh1ZdJm4m5MPphj/6MG8FamxLIbKnd0RQDx6CoQelU+8U3vVC3bRoDMOQ4
	fRN53Dx994tAY9XLa4M0CxpiDw5ifWLSMKRbpkRSnI0h+NDMrx+0/o4DYvLZpDFjLl6khnCNrn/UG
	tkRw3cSv0ko5/G4rnPyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Alm-0006kp-S5; Tue, 20 Aug 2019 20:30:19 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0AlX-00060M-M1; Tue, 20 Aug 2019 20:30:04 +0000
Received: by mail-ot1-x343.google.com with SMTP id q20so6327207otl.0;
 Tue, 20 Aug 2019 13:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nrGQupHWTyriQoaaHMHBYejqwnStP0bo0yYGdWFV+8Y=;
 b=edBJe8t3FW/Ho/MATx/w0v1bez6U7GmZnIcPcVp9+mW+Tzq86GVrTaSENPffngf6jb
 9HDiD6txhBfdHAwt9VN0/XwirDey+5QP5tCWAo0j22c8TCaK8ttiyoDOVwlfjqt3M6wC
 LidmZUfjey5NtpxfZMBvlYjPH1tg+pxIMZLqXYJN3oqfPNi+Br5wpSgSlFJku/EJRDyF
 Wm+T2nacUB3igFUJUGJofvMR9uRHxPDFIdJrruUoNx8Ot71WCS0egiKRP/AwV1J9tDUJ
 QJejL3RBsONA5pWHr72npq2v7Al90GangRz5kCzdwW5hW7auR8JgA9j8G/2CtdYn3coQ
 2ncA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nrGQupHWTyriQoaaHMHBYejqwnStP0bo0yYGdWFV+8Y=;
 b=t8vvkNroknPaHfKOb3FwiZGorOUORa6oGNEtAbzNrsDbm7a5tYxuedVCCSfyzDoCBm
 KyE2LH5r7U4gZvxLFiFGokUwm2FYwpH+riWh8wwXqwfShJYwEIlBIBL5PvMAzLl8NYgZ
 hI0pjtKBwG6gm90CP/jmueqj2bWjo3M7qgPmEHb31+kuQiOZLdoHDLnnMmSnZsH+mG1k
 i0GEqDY+UlsLQ1B6WdayYO5OCs6hkqliHbVq2QRESlrjqlT1a63X59BPuzlCRt3dzIs8
 xnlhmTs1+d25G+WrfZpkrnjt18DbNHljXEMT2fOrvdxLuUzfsUOKpTKnG9b1JbVdU22+
 o1Zg==
X-Gm-Message-State: APjAAAXcF6V7HdH5VCr6tZ6CMO2JaCpI4flqtV+XzpmxytdkkFCDwH1+
 lmMFBzOVUR6Ryy1i42qX5RughCqkzrpG5DdlsdOr0088
X-Google-Smtp-Source: APXvYqy1Lo7z783U1wJS86qYzKMOflQXpO+kzDeScKysRwtKbWufBka5KHmUWv08D7nxtFGp2IQwNA1COCLc+oBL5gY=
X-Received: by 2002:a9d:604a:: with SMTP id v10mr23610019otj.274.1566333002946; 
 Tue, 20 Aug 2019 13:30:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190814142918.11636-1-narmstrong@baylibre.com>
 <20190814142918.11636-5-narmstrong@baylibre.com>
In-Reply-To: <20190814142918.11636-5-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 20 Aug 2019 22:29:51 +0200
Message-ID: <CAFBinCA73WmyzmwY8uooMFdRCP4iGGZjaHjTU4q_6oNnZrkWqQ@mail.gmail.com>
Subject: Re: [PATCH 04/14] arm64: dts: meson-gx: fix spifc compatible
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_133003_731318_35ABD6ED 
X-CRM114-Status: UNSURE (   7.41  )
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

On Wed, Aug 14, 2019 at 4:31 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> This fixes the following DT schemas check errors:
> meson-gxl-s805x-libretech-ac.dt.yaml: spi@8c80: compatible:0: 'amlogic,meson-gx-spifc' is not one of ['amlogic,meson6-spifc', 'amlogic,meson-gxbb-spifc']
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
