Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA505CCFE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 11:52:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EyrbpNJS7MXxlc2ScrUTyia1CReIDn5G4ceUVa/aXAI=; b=t1lbNbz4dHOBPU
	H0RMA6Y5NzVgjMnHEe4NOxMk1EyQC3tfxRabOS6k/lOWeqjQBuYHgdec28z5t98f/dfZBIvVUX/fK
	pe2SfKjdtzCabYhASHEeWdvunna2cG1na7G7eZj1TTFn6vCr0uzNuHUDMflTDbQbJgZS08OGI7KZI
	vq2pNby1SrrlJceI6QEu7bs9M4rT2uF6y98Or1ronRUUNKG7dGeWekk4S2jQ4O/rEXDlyRuv3d6SH
	j47AUJMb8sEwI0KdHj9UbUGr8fqoQGBkCjGN5pCJkke2Vt3tNYF8XjYUGf0MHNMs/UojEf+PGWi3F
	lnt/MU+3kOrTAHQin5dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiFSQ-0005SH-7Q; Tue, 02 Jul 2019 09:52:14 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiFS8-0005PL-Hk
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 09:51:58 +0000
Received: by mail-wr1-x441.google.com with SMTP id v14so17023899wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 02:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=q5AKb2Aq5cM23CpGFfqHRfDVm9/c55zJeMrlP2X57BQ=;
 b=qBSK4mPHwueHeFFFdMnsPrDgtnMK2xQQNILFIFKDGb5AgaTdKhFX0gEYTMeiS1C9e0
 KrPknp/kJO8pWTVTXeT+vODB4Z3ijy42pYYLFy0JwLBpizW5Z1K8vAIY6af5qUwYEQBr
 Drf/kb7mGBV+f3zKuaIEgtseCKCaaMKiI9+w6Of6tFcq1OuwoXGemJgNokc+1CBdxmuH
 4+2PMSH3e24bwhavxxTXHYHMvBMNHY0ZjQI44RRK9H+WuZ7IARVgxcs7uV3lqeiPLOOJ
 SsC37UqfBaqtk2IvxtMf2sSBPqGQXWSrFOkbBphM1aPpAI3Cn9nEiqAj87531tMI4VST
 bGog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=q5AKb2Aq5cM23CpGFfqHRfDVm9/c55zJeMrlP2X57BQ=;
 b=b9bhGXI6EghSkosHKzcvv7agpKu/XJXqs2FrkU52eRoCF9Qq84qxQLwWJdf8KVcDkq
 yNeFpl79iU9P+l74+ZDcESbbnSX67lw5hQYjjvkfDi1aznRA4sBUq7U28NQ8VSbscCtX
 D3vY//6S+hBjlLwuoASR+t1oaI7Mzym1SKdNblK8Ar4QUl6P3m/WZydU6MAlDDWwrmE/
 EIJ2kWeTzHVCwFf4vsZQaiBIrU5u7Jx0AXf1VhcWfiJtv5mUevohnBByRwuR8RFUpPIc
 xpq8Ez8Pdvx3oEPj2XtLAp5G/G+ihphk5vfEURS8WrHt906os17G2cQbNOFuDN+ab47O
 OwDQ==
X-Gm-Message-State: APjAAAWRKq/aqBO/tVLRMz/BnKmv4ZbQMMOMJzbj2xvW/dJuAupGr440
 Y+gKgLsFF2F92bTJWjf7ASLt0A==
X-Google-Smtp-Source: APXvYqzI8kW9XU8FUJQ7IGAFwA6pRPzGymWZ5cX2bvdpELwcRzBOCEXK8fgrUKd0pUhUkjJf8qWPdQ==
X-Received: by 2002:adf:8028:: with SMTP id 37mr22701037wrk.106.1562061114977; 
 Tue, 02 Jul 2019 02:51:54 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 32sm27240587wra.35.2019.07.02.02.51.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 02:51:54 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, khilman@baylibre.com
Subject: Re: [RFC 01/11] soc: amlogic: meson-gx-socinfo: Add SM1 and S905X3 IDs
In-Reply-To: <20190701104705.18271-2-narmstrong@baylibre.com>
References: <20190701104705.18271-1-narmstrong@baylibre.com>
 <20190701104705.18271-2-narmstrong@baylibre.com>
Date: Tue, 02 Jul 2019 11:51:53 +0200
Message-ID: <1jwoh03gsm.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_025156_637786_4263DA4E 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 01 Jul 2019 at 12:46, Neil Armstrong <narmstrong@baylibre.com> wrote:

> Add the SoC IDs for the S905X3 Amlogic SM1 SoC.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Reviewed-by: Jerome Brunet <jbrunet@baylibre.com>

> ---
>  drivers/soc/amlogic/meson-gx-socinfo.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/soc/amlogic/meson-gx-socinfo.c b/drivers/soc/amlogic/meson-gx-socinfo.c
> index bca34954518e..eb81d391b620 100644
> --- a/drivers/soc/amlogic/meson-gx-socinfo.c
> +++ b/drivers/soc/amlogic/meson-gx-socinfo.c
> @@ -39,6 +39,7 @@ static const struct meson_gx_soc_id {
>  	{ "TXHD", 0x27 },
>  	{ "G12A", 0x28 },
>  	{ "G12B", 0x29 },
> +	{ "SM1", 0x2b },
>  };
>  
>  static const struct meson_gx_package_id {
> @@ -65,6 +66,7 @@ static const struct meson_gx_package_id {
>  	{ "S905D2", 0x28, 0x10, 0xf0 },
>  	{ "S905X2", 0x28, 0x40, 0xf0 },
>  	{ "S922X", 0x29, 0x40, 0xf0 },
> +	{ "S905X3", 0x2b, 0x50, 0xf0 },
>  };
>  
>  static inline unsigned int socinfo_to_major(u32 socinfo)
> -- 
> 2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
