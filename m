Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A76EB19128F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 15:13:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zunBb2NZd7skpH4MmmfwwO6MpKdsn+WTqLVNpDS0DpM=; b=gBxH4Xg8j9jOzC
	XDSbS5jx+a0X9l4iNMILHXawbZUXegmOixentZvXflolkPkD1mbnMiGC+FvM/AmtK/2xD13MLSxTA
	cGAeapy3qSCe9NkH4sdchtiaVb23YC9ZNVyKxh76kDb2dPXWDB6p1msEelIivOpL7hnpKX42zCi2N
	ZPTE+sRm96YQV7S65ELlq72ScyPEPr070wl3U4y1bb02nHmtBUIavfGe0EawNaxjip7CX1JD8+31z
	5A/QO2lM0aXs/MUfW5B+SBkIzQGcw0A8kFCe3vPldKiNB1hrkp2EqGMqHUcfoOBAqcrUhb7gemWm8
	aDY5EAebgm88rOmXZGmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGkJH-0002Y3-Rp; Tue, 24 Mar 2020 14:13:39 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGkJ7-0002WL-2s; Tue, 24 Mar 2020 14:13:30 +0000
Received: by mail-ed1-x542.google.com with SMTP id cf14so11636587edb.13;
 Tue, 24 Mar 2020 07:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=izwnIJDLX3PpcKebrw2ejCdxD31bp4HV/owZTH+UT9g=;
 b=HG4va0y9ptHh02lYhjFJlq3MVsocAX+qz7OV0CNLJ+lcF9w/afL82Fu1gjQM04xwhO
 CjZTMxfDlrnGjpBdVNmCPkTxrt+IkSia7ehhd4DwTeovr1wTk9Pygcm18lFH5t5h+o4b
 wRypSA2BKiZACkE8PvNp2FIWfwfSHdfsqqkT5KQODnQhwIYJbeGW4HHn0qbIQFvmp4c2
 d+EsKD2Lml8P0zyZ8y6MKBLX7vbH7nVcyKYtDQ9IkxLHDJlBrlcrw3TG2Whc6GMGwAzO
 FVcU73Sa7Ct6bV5RFKeW+A6Qk62ThRLx9N0Sd2pcVBShMno1NMHUKqRSu5oxqQEFe9Wa
 Sitg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=izwnIJDLX3PpcKebrw2ejCdxD31bp4HV/owZTH+UT9g=;
 b=NgxgMHsaiUezQqtDvb4ZFPGrlCywqglaTM1zyAuqN5u3gMYTKU0UYkOXhy0UXU7LLo
 wFVrX845HCkU8rKH94/o/4haZAEHpvfKf35B6ROtw9JeGMmOXksPUBqRFbWG3qbjYzuG
 UBmL3nNNl5fbVMy+dBO/ZQUt7U3LlSEv9qbGBaVS1mgY/amBw42Pve4whIYxBkuWgAqO
 m2yueoPydJXKm4gnkx/tSU9VaLgXdsjl9e89WNeBTiKyTqg09eFpZRtoDXv85tymeelz
 hTyUwrZmjTrNqPOT4jOVKEIstfY3mB2Wy9jWbq5G31q+mYdcdBMgu/CNUgvXHItvau+z
 QxnA==
X-Gm-Message-State: ANhLgQ1TaUSK+lV29tgyWKZErrIuVE7eCvTD7S3L7mWwxV77TIv1VrP+
 +WEBtR8pWtRwrzvUiAC57/NYm37hO+dzbU27zRE=
X-Google-Smtp-Source: ADFU+vt7WPNeMNKBzxAaGY+0/pg49GFYOhCk2fM4aFzPzmKpP7OAgJPKW+5rkQPYjZ8OEAPMTAU0beLSAlgB28Pi17k=
X-Received: by 2002:aa7:de13:: with SMTP id h19mr27826422edv.52.1585059207305; 
 Tue, 24 Mar 2020 07:13:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200324102030.31000-1-narmstrong@baylibre.com>
 <20200324102030.31000-3-narmstrong@baylibre.com>
In-Reply-To: <20200324102030.31000-3-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 24 Mar 2020 15:13:16 +0100
Message-ID: <CAFBinCA9rQKWx47F2-dT4ZrCwSKW+LiwAH2VdzPKr-9ymRxkSw@mail.gmail.com>
Subject: Re: [PATCH 02/13] usb: dwc3: meson-g12a: specify phy names in soc data
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_071329_149771_1BDB797D 
X-CRM114-Status: UNSURE (   5.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: balbi@kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>, khilman@baylibre.com,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Tue, Mar 24, 2020 at 11:20 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
[...]
> +static const char *meson_a1_phy_names[] = {
> +       "usb2-phy0", "usb2-phy1"
> +};
my understanding is that the A1 SoC only has usb2-phy1.
+Cc Hanjie Lin to confirm this

apart from that:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
