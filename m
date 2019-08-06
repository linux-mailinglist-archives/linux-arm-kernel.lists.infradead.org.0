Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD578399D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 21:25:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BIuxSIWPi/YiuyPKxKQBXKQVNwNVPGh0Dce8Z92DyxM=; b=ukOZwx15tBug+t
	tjJlBogwkCsXZaozWWtBWPt5gY+N3oXsvCfNAszK/ADGSCMvzm6Ue5EY0WLG40AUBBskWwsM6MxaE
	Mp4blFUSykJ+aiq0m1bpfaQiZuFzwKtHu5gTEtC9TKkjiTp8xpw37LxHOXNb05R2dBd3P8gmS9tss
	FgmLsbqinlm43WRhE2+pCilhyafyZuhUEANSGbcx9GsXuZKlT21LUMUElGSBJ6rbRsaV0Ym0bnSFG
	yi6cm1F8Bxxdkdecmu+8KjefCjXcmHK2Xjw8Nyp2I8WiQOIwc4ZaQjkr1YDVZc7Ns/Y+got7xpRbp
	tP80jPYlExnpOdRPyCOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv55K-0000vq-Vf; Tue, 06 Aug 2019 19:25:27 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv558-0000q1-Le; Tue, 06 Aug 2019 19:25:15 +0000
Received: by mail-oi1-x241.google.com with SMTP id t76so68315410oih.4;
 Tue, 06 Aug 2019 12:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r400Du+BdhcnVb2kJzBt3FbA/D2Jmeeyq4b8DmzoTuE=;
 b=mD/z0LTmYu+WiqSkvRq3LLNujYAd8HlJFwozWt4552r1/zczO8LbiytL3e/MDZPv93
 tKx2hPMqdZNJy4AZEtSf1xYNmFi9cTQ0pg/e1V2e9LTpcKZL2x+lIaiQsQXoXYAfsjNF
 MswbQTt1PmNXl/ZdWsUgdcCG54PR1yGVHLAo1DzYg231IGuaZYdXpqMocD6Lorye/0Ii
 wxqgPZY4+DO5OKhBhuujKEGKCh+I94hhv+5PYRhqxR8LTf/p+JDW57C97tpbCY5SuUg4
 sre2BahrbnzfpUPj+zKkiKXpU4R62NHuLps/qXZyzUkDpsHPwYeMjcPsJ2DniB/2h5Fy
 xAfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r400Du+BdhcnVb2kJzBt3FbA/D2Jmeeyq4b8DmzoTuE=;
 b=kasrkkIyQ8Nck44boe3vGU7GgfezF3mLeS0oP66uwGgKzKhZWrqfmMlmXR0YbTGx/r
 qAByYxmZ0qGgCqCo4lWIipOgcT/AtSKayDYPaj6euIVaWoyJ1HwedQVwDz8q7q8aStK0
 EW0MSWZqVOGfMasi7oGuh6F5Uyj2fW5mM0sad7z71pSCcJp9VRdLuU73FA25gqcsw+9y
 LzVxs78YXn5OAWhPx/Iu7CQUCdPGEj7k5U20MWGb/9vyDxNAku1bt46FdfWuGu6IoGz5
 xeFLbuugk1uWFU02z1foBVcxp9Zb66v4IbbCrSOasWMhjuY6QfsHRNGlMMV3E5AyW6Rb
 w28w==
X-Gm-Message-State: APjAAAU5VgNW4SCSwrDt2FBAQC3SZKYeMbHlsXRGn/tbcWCLhLqTbapM
 qr8hwBZvX+9sigXlC1MDOZQRLzn9WrdgksZzRWw=
X-Google-Smtp-Source: APXvYqycqxwAz4ajkkyCaUP9+StDKHGffRIZJGY2i531ZcuklTJ3ImWMc0UgBRuQREKN2HBys+2LheHpq2cOHQCsqK0=
X-Received: by 2002:aca:5c55:: with SMTP id q82mr2887362oib.15.1565119513938; 
 Tue, 06 Aug 2019 12:25:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190806130506.8753-1-glaroque@baylibre.com>
 <20190806130506.8753-6-glaroque@baylibre.com>
In-Reply-To: <20190806130506.8753-6-glaroque@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 6 Aug 2019 21:25:03 +0200
Message-ID: <CAFBinCCtuL_3TcYJS625ZdJQE_9Lt0n_nNVtxKoY-Nyoz2wSDQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/6] arm64: dts: amlogic: odroid-n2: add minimal
 thermal zone
To: Guillaume La Roque <glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_122514_724050_51DF197C 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org, khilman@baylibre.com,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 6, 2019 at 3:06 PM Guillaume La Roque <glaroque@baylibre.com> wrote:
>
> Add minimal thermal zone for two temperature sensor
> One is located close to the DDR and the other one is
> located close to the PLLs (between the CPU and GPU)
>
> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
I'm not familiar with the thermal subsystem but this looks sane so:
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
