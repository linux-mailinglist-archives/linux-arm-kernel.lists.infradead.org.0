Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25EE3E9E21
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 15:58:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gfrl/J8yWDKcvHHkKNQskXuC2Dh4QIzqZ94X/6AW3jY=; b=p9/6hL8I+q1PQW
	hA6BsPxOvOVp1KvLExNSFIl62qMJS+c0gUVz3yzwuhwfDZj8Wkp676kEzrHJ5BaFDizMH41PQT6TI
	iNnF7jg4zbsPYQMS/ryU2mCbVAEvOmK1u8tVGQ3JcHVqO5bhMHoIbBptFzCUJ10yUB9rZ3x+YyFiY
	GfIxSCgBXKvD78q2lFgbkBTY7pPBeMiw6id7/CnvdG+/6SDJD/0ZR1p92jym9/+6ayipEuZWQhYlF
	Nyhsn3Bd/Y/bMSx1YgagkGvdSuWMkGr71Zci/573qlJPEqIca5d7joMEVueLgv+mtJbfqjaxSKjAl
	/EgRixUlMQDjSR4WabpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPpQR-0008MK-W0; Wed, 30 Oct 2019 14:58:20 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPpQE-0008La-UN
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 14:58:08 +0000
Received: by mail-ua1-x941.google.com with SMTP id q4so777119uap.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 07:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hNZcxEruvf8VcEgV12QG1AuNsmpJsv+vCmtArpIWJMY=;
 b=g0iggF+JgdTMYAr4mMgTLxZq7FZRkSb9aix7YOJppOGXwFuU39AeIlzKfye3jEC+Nf
 E5WhW0ayBApGA3e6LQAmfNOehFs4XaZLnjzC7ylbmSjiSkkzxa18yngDgVAy+YPdf8YF
 xzh4k4+vYJeNRay2Ay7FbZtxHpdDy9kXgIqZ559GP/rkZsw7YZC2nCN1T+d6UFyqsohT
 mV0Yy+ut1dtfibK++DcGkXDlgi70hfa8+iO/DVyt7lOw3AwJKDbcj0I3v6f5sNIdnQZ0
 DMRds/mSHEGNJOcd+6X5gfZlsom9I6uJ2Ww9uxmaFKR2KXDWn8SKCIRg7ZG/yv2Ldf++
 lVbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hNZcxEruvf8VcEgV12QG1AuNsmpJsv+vCmtArpIWJMY=;
 b=Nmb3S2NdpWbpdhwoYG2lDGUOG2g/5dv6nMQnxFwh/89C9YA8nHVvuG7imqZXWFQUgC
 LuMWEYCqp4TUYap3JhcDYu7QiJVbN+FnGYNJXMFudAngIf4lGUIZPBi0Q43rpjdUwzOm
 23ibYG9EDJivhvQkchQc3K7pInhLlAldQhXwtmHbCDN24fRteUYoFrvo8AypwSsT09YM
 AwEoCJkxHop+q0aFILU+lEgULEyICB91asPhlsHYBZqHcLK0mVpqHEwvpmxy04BNSEjX
 YkDyFJwWRqLMdwKuWIOXt7BqbiKvt399fKI9qyXkh5NiokfGzUlGR/la58sOS11FZrAP
 saWQ==
X-Gm-Message-State: APjAAAVCpwOTPA67p3mHomcBkWjOSZxifpeDaNp4kHj5nensJn0GguDw
 6h1X7FCJWX5cG1iy3gmtNHwWz10uir3vTR+A01g9qw==
X-Google-Smtp-Source: APXvYqxwRGxtAP844tj/7wkb9yqnOyn/FSj46ZD8hZRQHKMQoF9toDZna5qDMU5k6nneyPMsHKvQq6HgHENy9Dudpy8=
X-Received: by 2002:ab0:7095:: with SMTP id m21mr23352ual.15.1572447485669;
 Wed, 30 Oct 2019 07:58:05 -0700 (PDT)
MIME-Version: 1.0
References: <1572345042-101207-1-git-send-email-manish.narani@xilinx.com>
 <1572345042-101207-4-git-send-email-manish.narani@xilinx.com>
In-Reply-To: <1572345042-101207-4-git-send-email-manish.narani@xilinx.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 30 Oct 2019 15:57:29 +0100
Message-ID: <CAPDyKFqRmFPaiM=AoiWvy5xhYj=fHTt+S1wu8o0W67Nc5ZZ1kA@mail.gmail.com>
Subject: Re: [PATCH v4 4/8] dt-bindings: mmc: arasan: Add optional properties
 for Arasan SDHCI
To: Manish Narani <manish.narani@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_075806_980779_BF452228 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 rajan.vaja@xilinx.com, nava.manne@xilinx.com,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Michal Simek <michal.simek@xilinx.com>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, jolly.shah@xilinx.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 29 Oct 2019 at 11:30, Manish Narani <manish.narani@xilinx.com> wrote:
>
> Add optional properties for Arasan SDHCI which are used to set clk delays
> for different speed modes in the controller.
>
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> ---
>  .../devicetree/bindings/mmc/arasan,sdhci.txt     | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> index b51e40b2e0c5..c0f505b6cab5 100644
> --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> @@ -46,6 +46,22 @@ Optional Properties:
>      properly. Test mode can be used to force the controller to function.
>    - xlnx,int-clock-stable-broken: when present, the controller always reports
>      that the internal clock is stable even when it is not.
> +  - arasan-clk-phase-legacy: Input/Output Clock Delay pair in degrees for Legacy Mode.
> +  - arasan-clk-phase-mmc-hs: Input/Output Clock Delay pair degrees for MMC HS.
> +  - arasan-clk-phase-sd-hs: Input/Output Clock Delay pair in degrees for SD HS.
> +  - arasan-clk-phase-uhs-sdr12: Input/Output Clock Delay pair in degrees for SDR12.
> +  - arasan-clk-phase-uhs-sdr25: Input/Output Clock Delay pair in degrees for SDR25.
> +  - arasan-clk-phase-uhs-sdr50: Input/Output Clock Delay pair in degrees for SDR50.
> +  - arasan-clk-phase-uhs-sdr104: Input/Output Clock Delay pair in degrees for SDR104.
> +  - arasan-clk-phase-uhs-ddr50: Input/Output Clock Delay pair in degrees for SD DDR50.
> +  - arasan-clk-phase-mmc-ddr52: Input/Output Clock Delay pair in degrees for MMC DDR52.
> +  - arasan-clk-phase-mmc-hs200: Input/Output Clock Delay pair in degrees for MMC HS200.
> +  - arasan-clk-phase-mmc-hs400: Input/Output Clock Delay pair in degrees for MMC HS400.

I don't mind if you convert these to common mmc bindings.

I think other controllers/platforms may find them useful, at least at
some point, if not already.

> +
> +  Above mentioned are the clock (phase) delays which are to be configured in the
> +  controller while switching to particular speed mode. The range of values are
> +  0 to 359 degrees. If not specified, driver will configure the default value
> +  defined for particular mode in it.
>
>  Example:
>         sdhci@e0100000 {
> --
> 2.17.1
>

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
