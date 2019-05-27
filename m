Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC252B9ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 20:12:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tmmrt2nTxSM7wbvBS23fgzrykshO08zTprPEZjlztNQ=; b=qsNFdEpJBw9W4Z
	CUswfaSv8slaKR49TJBkQ+bMved0nrWMrHrjIJmYkDHepTnTdCztBVs3INHLhutkMmgvxRxwrz8oa
	TPzfjnujPLxeA2bNwY9offs1IWmtR9UIWSJxHsGLiEhHtG7rdb+++e6HAFNSvW/f1MISq52SDfC6Y
	tyW72Xlfzcn1OvaKlduonJuT+ITIIoMe5eLSkVLYfvTmOBa/u4ZKPgfcEXwysr2iCiZkYOh1W+Oi/
	nJ4YQbQ6VWDQ8Tt3tBqkt9ID5SfpdiE/lIoglLvTrrSSuu9/5kvPguRG+TFCz7IlxRj631cHLuoT8
	zZW7tqPukF3Fo/myB6SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVK7B-0008Lx-N9; Mon, 27 May 2019 18:12:53 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVK73-0008Kf-30; Mon, 27 May 2019 18:12:46 +0000
Received: by mail-oi1-x242.google.com with SMTP id v2so12442215oie.6;
 Mon, 27 May 2019 11:12:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fdEdzKwrwwR+hZrRuekbTm4BMx8O7NzP4YL8a4f6Xyw=;
 b=TCX5m6h3kSNswGNfH9xVf7MNEte1kWLAUZV2H9MaftkLrqoChQpWF9viqrvYi6oyn6
 tMkNsoSpUVfYD/CCZosnrlppsI84qiMpucB5XKAzOQplFzM2KPYLEDMwfKyXFaG5RbO1
 LjeZRTQ8cjEpmhm1Sy8uCqpD+io3/Cm0qwA84eSxw6osWF7EkPE/L2BoZPLI2SGA7aO3
 NDcaBI3XhU0VFHOXVHwWcRXnr6l1uoOT6AIbk/0g1XMUq30s8F24O3na6AC+dtrGROBE
 vqmZzoO6VI9MfrcgmrmHYS6/pPyFeezktzDMd7Bt7FZa2WF/szO/NCiryKq/lKy0KOeV
 ErkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fdEdzKwrwwR+hZrRuekbTm4BMx8O7NzP4YL8a4f6Xyw=;
 b=nUgkmH/h/NNWy7WnV6zZDA8lH/8BY/zJdDXQsqh+GGXilpQ5/EXvUxgrmlKFsLqrBU
 aTF8z+el9mNnHxW1a9zHP/oXQPMCErZNUrGtKmhw/Lq0vFxe3eKZYyi388mklav027Te
 e+0oiM2eABNoVBDPKeWgcpxkpJ/l67Z/Acnkj+xV+NJC6v6WQYPbRWYaafK9RsI4RxzC
 NY910x6hJDLJYsDSVIBqwoU2tjEP/m/h295Z1UP1FyaWkivKRkG8rnearrYB5U8pMunb
 7wPZxULfXhvocN5ZcxiKTIWYjJWsNprzSSOu5uqkqEm5lPJ66wJvv51dVwKkFL6sW2Zs
 KR9w==
X-Gm-Message-State: APjAAAWD2gu43BUyHajR0VTsxK5LskPOitfUluszOWsOVcqm70MvRyym
 7rzJgJSpBTJ0R6LYqsjy1IuPOjSAdGyTagRLICU=
X-Google-Smtp-Source: APXvYqwmz7MYBR3RPfckjQ+bn80jPUguVMJFtd+LUXLXHyBI+ktAg+X8jo5YLRokDHP1QncBkXrVu3K0ewCBCk+mFp0=
X-Received: by 2002:aca:4341:: with SMTP id q62mr175063oia.140.1558980764213; 
 Mon, 27 May 2019 11:12:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190527140206.30392-1-narmstrong@baylibre.com>
 <20190527140206.30392-4-narmstrong@baylibre.com>
In-Reply-To: <20190527140206.30392-4-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 20:12:33 +0200
Message-ID: <CAFBinCC+QrMhEErnt28ACe7x_VM65_envvOw7kFWAir53B=_nQ@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] arm64: dts: meson: Add minimal support for
 Odroid-N2
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_111245_152162_819E4A5E 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 4:03 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> This patch adds basic support for :
> - Amlogic G12B, which is very similar to G12A
> - The HardKernel Odroid-N2 based on the S922X SoC
>
> The Amlogic G12B SoC is very similar with the G12A SoC, sharing
> most of the features and architecture, but with these differences :
> - The first CPU cluster only has 2xCortex-A53 instead of 4
> - G12B has a second cluster of 4xCortex-A73
> - Both cluster can achieve 2GHz instead of 1,8GHz for G12A
> - CPU Clock architecture is difference, thus needing a different
>   compatible to handle this slight difference
> - Supports a MIPI CSI input
> - Embeds a Mali-G52 instead of a Mali-G31, but integration is the same
>
> Actual support is done in the same way as for the GXM support, including
> the G12A dtsi and redefining the CPU clusters.
> Unlike GXM, the first cluster is different, thus needing to remove
> the last 2 cpu nodes of the first cluster.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
