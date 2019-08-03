Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9B3807C3
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 20:34:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5AXVUqNrtdOlGPPfBNgGtATHsasmL2ANeW+9TLzEYDI=; b=SRqKFucduiBobu
	QbDwsQnTttGZPpqcJHWZFLrmqCCrPxaeFoe8tDrHhUadQeyRwIW5K7haplMvUXlFvAdpkQQ418t2T
	d7Bkz4uks7PpUvKPmAcVWHmw/MJo05R0fC8PueHYOqXJoravszKBNQg1Bjo076jwKrX3JBTb0XCD5
	jICYxmrQlaqoTeJi57M9RSHYenPMYXzpDjtOtERYY7Xq2Dvd23U97dY7CQFQnS+JYoNPdZ+ZovhUc
	11YCwwGXfSKVZuj8LsIkJDlq1O+WKsf4oH9EW7iyc6jvLy42sHPiwsvFLyJcyIYBQ/hRXLGwMgNS7
	D1XoeRzxFInL60Y7zt0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htyra-0005uk-3K; Sat, 03 Aug 2019 18:34:42 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htyrL-0005tG-NI; Sat, 03 Aug 2019 18:34:28 +0000
Received: by mail-oi1-x243.google.com with SMTP id 65so59254540oid.13;
 Sat, 03 Aug 2019 11:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Gc1Gbs3YXrODx+h0QJxYpVYYuRirRF1j3l1DtaMbHaI=;
 b=HZtm8vRzHTiPtrlD+ep7+nlheEmUFbP9b4EUg4J6LpOHX2a7uEsusLTxRDfqS61g9x
 cdR/IZ0132AozZPS9fR4FEDvlmLYgIgfMHzl5hV2dFPX1x8xyIAKYk+veblc2ObM+VJI
 VzGN4+atmXhC8j7aRRxG9+67yE0WhBUYO9X6be9glR0FNre0PNkfEoEIAhK93PpWfUEJ
 QfDBjpQRBdFZtRAg/+dmpHdWTzaOAoGL+5M8nQx9nNBC0BRSVk4DQD9+/HqvP4amA26E
 pb+kikQQDdUfAWZ2uYBWBQ1ecrcGrMMUFG4tWP60KqUQJaCo40/MZXMaMeqShpRd3k9c
 FNPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Gc1Gbs3YXrODx+h0QJxYpVYYuRirRF1j3l1DtaMbHaI=;
 b=A6fg6fx9jxFZmEA1A5+A2s7JE6TmFeqvdHNpTuIeIWdp/jr/RvIIekdcE9XmmADhs/
 7I4ochsSZcmvclyxH/N58HF0jXl4Akqxikezp7GPSVRXNHZpnC5EEur05tOCKKX1FqCO
 sDtg+lWRcydfL7FVpbJGSnxOnmNrMWefYbZ64MFiJo+sLbOBXzxJNFtltBsBdGCHiK3o
 6qY2sr/vB+wRh1N1wzW4zfM3WWjxeSNo36r2XuShwl+Gnt2RaIfDZKcdYgaGdwDNI3EX
 5n58yAvqnEB7SKse6miU3d+20CNPGrCZLsTkQCFsz1KHokxsjrzXAV1sK7BDI219DRPG
 DAmQ==
X-Gm-Message-State: APjAAAXf3i3niRfINr0UDCBErhoy4d2VOmZeWq4fWxUx5uLdo35Zwrmj
 UbbMpIFbsGwgrdjZ/LdFQRSCeSMIB6M9dabYpKdvr9mp
X-Google-Smtp-Source: APXvYqzn73LfCwFAFSrdAJBa/P+YA9JBZW8hIlZBhqmyNI71S2i6jS70rHCp7HPrXsZy/pyPLrc5B/rcaUGuVAHs0rQ=
X-Received: by 2002:a05:6808:3d6:: with SMTP id
 o22mr6470584oie.140.1564857266448; 
 Sat, 03 Aug 2019 11:34:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190731084019.8451-1-narmstrong@baylibre.com>
 <20190731084019.8451-3-narmstrong@baylibre.com>
In-Reply-To: <20190731084019.8451-3-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 3 Aug 2019 20:34:15 +0200
Message-ID: <CAFBinCCU9q16Vg8uop+PTRQ3x8_LnYtNEaKC61Si_cSk3qsK5w@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] clk: meson: add g12a cpu dynamic divider driver
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_113427_785557_1809BFFE 
X-CRM114-Status: UNSURE (   8.23  )
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 10:41 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Add a clock driver for the cpu dynamic divider, this divider needs
> to have a flag set before setting the divider value then removed
> while writing the new value to the register.
>
> This drivers implements this behavior and will be used essentially
> on the Amlogic G12A and G12B SoCs for cpu clock trees.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

personally I would add:
Suggested-by: Jerome Brunet <jbrunet@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
