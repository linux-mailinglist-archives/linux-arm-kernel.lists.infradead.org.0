Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9235796AB9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 22:35:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oOHtNgQ2HhPS12KhhixX9X8P5AaA1pRVlIrfwTXnDe8=; b=mkSuMQnIJRxsgr
	Q0p8n0+ZV1jJv607HuRj+CUKQG4WcuO4G495ZSbXrpOlzBx0L/26vdQmlsqjB47si1jdaGevdf807
	qQ4w60PMZ2Sn5Soz1Sa7cgNwj8qYjZv1KJECDQwwaBqFiYfa/tuXMZgK+Jnx11oOyPqgJVGhuV3pA
	JQP6jiCB66mQqYjeIeNxV34sPIRKwhCzbM5ZbrKMVqkQlKgGsT179k3LgX5CfMZK3ofWsZ2uChZTj
	6yPL/Om6kfAGKj9Qmt0ib9xIRRR/SGs1ATpLo4+Od2zz5v0CagILhtI3LP/I23iqnnm1rOipBkN47
	0Y/SkDDeNrq/nbhc6N0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Aqt-0004AZ-5u; Tue, 20 Aug 2019 20:35:35 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Aqi-00048u-Ua; Tue, 20 Aug 2019 20:35:26 +0000
Received: by mail-oi1-x241.google.com with SMTP id p124so5184050oig.5;
 Tue, 20 Aug 2019 13:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=shZI82Zl0a1vHkFKOP8kqC8vGCDr5oXp88gXw96LLYA=;
 b=NFpxjJ+Fr7xKPu3L0zKJ8v8AUa/bW/d1wEprP+UsRX34exWwlqD7IpKtKOqqKpQD9+
 CfCw2hunvnMRDynay6NI5pDYSfExI7YCTLtUdE1Kn9DcBZHZDAcRYq/5jySavs1ez1eC
 v38+8pNMorc+ONtthB95+DHcpErr/pfWwNbC8OV42t1NeCRxEIH2O73XEmTzXvGknZYf
 r1GcrhNJi4G1wfFgRPaL0GzTQDm8j9c6fFXIerxDaqhuMzlcJB51WTHVFXQIMX2/f98B
 25E3zfJwxlMkAE7WtjR/w2bVwPNcbDvC6rzZm04oEqhg6LF9METLL4MhipTAUBt9HM5d
 oxJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=shZI82Zl0a1vHkFKOP8kqC8vGCDr5oXp88gXw96LLYA=;
 b=iARRWsudtxKKzZQeuOyunZo/o/vNaRCD33wfFjLnyj6AC3i600Z8t2I+j6hfFuJW0f
 blufzoXpo/q00Bme22ZgTYYqSv9CpE/p8TnrDEVHHA/Zjhzktdj/n+4qCoDm7yO3sdLD
 N4w7wkxPxHqwlehu1ajiBRtKsQ7y4LK7t73Frv8oRLbynkmAcmU92GVGhWvnO9G+7L3F
 XPjvM7XxniqU4hAISrlAK+FTZ/cYV5v39RcqLbXaSF5qJsMj7s3Xh9r7c7c3GPpv8qoH
 T6z/HrJVYM2YpbvSC99OcezIPSJ3M6boWnd1QpWObmH6OBJypDh4T57WJWhbJ2QXlmJD
 aU7w==
X-Gm-Message-State: APjAAAVbrNywg5e55Z/PDnqjJO9OYaWkfYUFsz+MMqNWkTe+Rg5HYeK+
 ofn113T728yIsiXncom285tPw5Z6EhK38mOYTP0=
X-Google-Smtp-Source: APXvYqwF+wqaQaOhsdA099YOhLAMF4+0X9jZXZ57p3A1tskhIG+Cq5/F0EEgHWGCTE9OmycZu1wV62qbVj5Bs+q55M0=
X-Received: by 2002:a05:6808:8e2:: with SMTP id
 d2mr1400869oic.47.1566333323830; 
 Tue, 20 Aug 2019 13:35:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190814142918.11636-1-narmstrong@baylibre.com>
 <20190814142918.11636-15-narmstrong@baylibre.com>
In-Reply-To: <20190814142918.11636-15-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 20 Aug 2019 22:35:12 +0200
Message-ID: <CAFBinCApsk7VhfUBB9Gs5_k1p3-q5RQgfFO_6yjij=kALh9AJg@mail.gmail.com>
Subject: Re: [PATCH 14/14] arm64: dts: meson: fix boards regulators states
 format
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_133525_013873_0AA67662 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
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

On Wed, Aug 14, 2019 at 4:34 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> This fixes the following DT schemas check errors:
> meson-gxbb-odroidc2.dt.yaml: gpio-regulator-tf_io: states:0: Additional items are not allowed (1800000, 1 were unexpected)
> meson-gxbb-odroidc2.dt.yaml: gpio-regulator-tf_io: states:0: [3300000, 0, 1800000, 1] is too long
> meson-gxbb-nexbox-a95x.dt.yaml: gpio-regulator: states:0: Additional items are not allowed (3300000, 1 were unexpected)
> meson-gxbb-nexbox-a95x.dt.yaml: gpio-regulator: states:0: [1800000, 0, 3300000, 1] is too long
> meson-gxbb-p200.dt.yaml: gpio-regulator: states:0: Additional items are not allowed (3300000, 1 were unexpected)
> meson-gxbb-p200.dt.yaml: gpio-regulator: states:0: [1800000, 0, 3300000, 1] is too long
> meson-gxl-s905x-hwacom-amazetv.dt.yaml: gpio-regulator: states:0: Additional items are not allowed (3300000, 1 were unexpected)
> meson-gxl-s905x-hwacom-amazetv.dt.yaml: gpio-regulator: states:0: [1800000, 0, 3300000, 1] is too long
> meson-gxbb-p201.dt.yaml: gpio-regulator: states:0: Additional items are not allowed (3300000, 1 were unexpected)
> meson-gxbb-p201.dt.yaml: gpio-regulator: states:0: [1800000, 0, 3300000, 1] is too long
> meson-g12b-odroid-n2.dt.yaml: gpio-regulator-tf_io: states:0: Additional items are not allowed (1800000, 1 were unexpected)
> meson-g12b-odroid-n2.dt.yaml: gpio-regulator-tf_io: states:0: [3300000, 0, 1800000, 1] is too long
> meson-gxl-s905x-nexbox-a95x.dt.yaml: gpio-regulator: states:0: Additional items are not allowed (3300000, 1 were unexpected)
> meson-gxl-s905x-nexbox-a95x.dt.yaml: gpio-regulator: states:0: [1800000, 0, 3300000, 1] is too long
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

note to self: NanoPi K2 and the Le Potato board .dts are already doing
it "right"

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
