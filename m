Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF38BAFC5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 10:39:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GcbvwT7u7VMLU9K2GrV8aOO6hec/yonni0laG/fhuuA=; b=Bq0afyCEqX70Y7
	pxQQVIi5kACQv5eXocQe15nxJYk7hZIBQVkDTTCZKXmrCT3Qrin43sFL0GHrU+kp6WQ4RLkwePQds
	PISSCsw8bwHGRbd1lpm4miPQOnvq4E/WFP/BHL4/ThEu2LbDw0coWh58EElSRSepjbjipXmYJTWGp
	akJPWkxqc+BlS7lQB0bKcevxzaO2N6+3MebbCvgoebWt7vJIF9OpIPjmTwnaMn7N3nLuKoE6OkW6d
	8HeMX2tnpxtYvOL1aB5MAtQ3jKTvWVSoQlaW2P31n6NOaV+0ZL6eV2G9apUhqjpxoK67knnGrnFpL
	fXJfi1EFNo4AwY56HyIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJsJ-0001DP-7E; Mon, 23 Sep 2019 08:39:15 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJs3-0001BV-MA
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 08:39:00 +0000
Received: by mail-wr1-x441.google.com with SMTP id l11so12890313wrx.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 01:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=nwiGQiE38HtZcmw6CWeBg4qfY5GYbo0p333nLt6wTfk=;
 b=IghFe3Y9bi1OIf+T0BVbUqifsHRXMu4xWRUWvzexMuhJ4MorveaatsE5c2GnCI+84a
 Bqx0FzIXkolcI77UhylFeOKxmtwpKe9AUMcjHExUAVS+hF6+GX11MENc6c6CKLisbkhU
 b9Ts9JV5TR8s7v3h7HczUFMlV75yIvoSso+xPxb2dWoJGiNJCOVjR0+SvNXGapK7ocsa
 HGGW4pVQf7UAT44HCNRvqfwXb1IWJyD1YzR9fLdLsLMHoEzNFWJy5uxlqyzsmbeJ7NPI
 foBJjIBuJRCnK//2IKw8qaIOokqj5JUovfoGEVLI+AkqSB2yHohlwvIpAIpd4546nJUR
 Q80Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=nwiGQiE38HtZcmw6CWeBg4qfY5GYbo0p333nLt6wTfk=;
 b=hTRCx35F1S+7mkMVttMrmUik8bToaEVj7FUV0UnUD95x8tbJNG1VO6M9RRAfZAJPcz
 3AhFNS3jgqW7cp1JcIYw6OYoM/EZYtg+TPBSDVkndCMHhWsC/2xzNBAbCbwi+24btzDD
 /WTVHTqIP5cv9eTEzrqR9Q8tMypBQvl4HuxCpZwaWRGyQCrASq95wOiYro55A7vT3CVp
 /c3usRAdMbxuqirne27gUIq48S2RjmgDqQs+Ge6ztYbbBQTLFyDe/ExN5Gb8tCZzrGlq
 aMzL17yt0JVtN6Nm3ahUnC9wNgs1bzgCeTSQouw4uaobPSHvLGUSgx7/Rb1VQAWUjZGX
 NidQ==
X-Gm-Message-State: APjAAAWkUDn0CTAJD8tegw9IDQOo+TgytQvaDmn0n+nvCXQMakFtHfVg
 InoLBpNq0HWeY9h0poVZx+ib/A==
X-Google-Smtp-Source: APXvYqw3ZqNhDs1DwDmXDjeQ+UCFX7R57TXtgHP+2m5w6ijcpVvYw+PpPwVSLBebaiNyvUoQipm8bA==
X-Received: by 2002:a05:6000:45:: with SMTP id
 k5mr20259104wrx.259.1569227937789; 
 Mon, 23 Sep 2019 01:38:57 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id n7sm10988940wrt.59.2019.09.23.01.38.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 01:38:57 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 narmstrong@baylibre.com, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 1/1] clk: meson: gxbb: let sar_adc_clk_div set the parent
 clock rate
In-Reply-To: <20190921150411.767290-1-martin.blumenstingl@googlemail.com>
References: <20190921150411.767290-1-martin.blumenstingl@googlemail.com>
Date: Mon, 23 Sep 2019 10:38:56 +0200
Message-ID: <1j4l13tnj3.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_013859_721103_F2BF17CA 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat 21 Sep 2019 at 17:04, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> The meson-saradc driver manually sets the input clock for
> sar_adc_clk_sel. Update the GXBB clock driver (which is used on GXBB,
> GXL and GXM) so the rate settings on sar_adc_clk_div are propagated up
> to sar_adc_clk_sel which will let the common clock framework select the
> best matching parent clock if we want that.
>
> This makes sar_adc_clk_div consistent with the axg-aoclk and g12a-aoclk
> drivers, which both also specify CLK_SET_RATE_PARENT.
>
> Fixes: 33d0fcdfe0e870 ("clk: gxbb: add the SAR ADC clocks and expose them")
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Looks good. I'll apply it once rc1 is tagged
Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
