Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D32BDBB10A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 11:09:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gsqo7iPKmyHohPue1uJ8fNhx+sSM2WtkH3Mh5tx5P9E=; b=SwqEHoO8scRiMB
	bUwt+yA3xrcsBZKA8oRAc4Zo/9SAFUwl0223KCiEQ2lKh1jxp2SG19lIWZ2TjH+FVa30MNafXyjtJ
	GlQzcer0nybK4H9T3sJGHzkI4iWJngXwsErVzDz8xLWZNhdzocNEhz422H7wDg/idQoNEZt4Iq/aZ
	q+YAQ+kBJqhKtAHLPze37wh9jDHruGbzyXZ9ZSK1bzf4svC8uURWrFDY0in1bfWUqxPQKLmIBHN5i
	uU1RnCc/yFQpvdd+hEUmhaabBKWrXV2gXBKGjUIwpMmzyrjxZHM6j4cDTjda3fDflG/rHJxEZ7Gmf
	oiIqeOYF9Z7eC6QbG0kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCKLn-0006Iy-Br; Mon, 23 Sep 2019 09:09:43 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCKLa-0006IK-Dk
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 09:09:31 +0000
Received: by mail-wm1-f65.google.com with SMTP id x2so8944173wmj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 02:09:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qr/xD5b8NXreFir/G/KvgwREY1aVYsklecZUpoCc1pQ=;
 b=X39H5YTxo0iv0tcm708+PcOuCkzLeCUWfYIi7NTE90thLTNVWHzrz061YT8BHSCQCx
 hcbh1SpntVSIzhS59rsWi9cAS2pa7elm0FaMi3mvGKS+r3zwf5CCiU2NinUY6hKzzH/0
 TiBwlPn/ukMEnFMi3Mlkb1R3BhuMcjNvMckDG5LPisYs74o7nIlQi7jNXoFUDgkItvzD
 aTVxz8FHxOvdcZTEgoAM6E+bvHh3OeM5l6r916I9bMmfA6lFVXIso5igEPnabEs8kY3q
 OoGJpsntCfgvXPuTvQrP2TRJ+f1SyO6PEbENW6CnbrR4+z1r+1WXrdBgcWV1SZxgCSH2
 lD/A==
X-Gm-Message-State: APjAAAWn5aSbsYAQn3VS6M4Pp2HPrWKYjAbHCEWBif6vMPz26+946OiP
 9F3TePwEpAZWwK2SBWlWu/0=
X-Google-Smtp-Source: APXvYqyEPIb00KUDWsPEDYltoMAk90fKLhEAwVNUnhK5Li2Iq6c0tFivgGtKwVopYcJBdAcKIOx9ew==
X-Received: by 2002:a05:600c:2311:: with SMTP id
 17mr12600603wmo.39.1569229768689; 
 Mon, 23 Sep 2019 02:09:28 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id o22sm19458607wra.96.2019.09.23.02.09.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 02:09:26 -0700 (PDT)
Date: Mon, 23 Sep 2019 11:09:24 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v2 04/10] ASoC: wm8994: Add support for MCLKn clock gating
Message-ID: <20190923090924.GB4577@pi3>
References: <20190920130218.32690-1-s.nawrocki@samsung.com>
 <CGME20190920130317eucas1p188d724710077d704f768798c6555c741@eucas1p1.samsung.com>
 <20190920130218.32690-5-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920130218.32690-5-s.nawrocki@samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_020930_458282_F0E8EB16 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, robh+dt@kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 03:02:13PM +0200, Sylwester Nawrocki wrote:
> As an intermediate step before covering the clocking subsystem
> of the CODEC entirely by the clk API add handling of external CODEC's
> master clocks in DAPM events when the AIFn clocks are sourced directly
> from MCLKn; when FLLn are used we enable/disable respective MCLKn
> before/after FLLn is enabled/disabled.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
> Changes since v1:
>  - addressed review comments from Charles
> ---
>  sound/soc/codecs/wm8994.c | 108 ++++++++++++++++++++++++++++++++++++--
>  1 file changed, 104 insertions(+), 4 deletions(-)

Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
