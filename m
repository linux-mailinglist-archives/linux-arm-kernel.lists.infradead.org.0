Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA9AB74AD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 10:02:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BoOSXnPMl2I8DdRlBhCV8AeHkX7SbrxiK0H/RGK9pGc=; b=sH71XskOJavzun
	ENdhytPXjZd1EyGrlkWeS67Y9mCi0MKy0+nMPALwAmrch5tHCoEK9SI6iiZDZj/F/9FJ5IsK9bjxk
	dcIHtHxVY9QehlXW+2LbmV8DQgaAhow6g3RaGcBIyg6Dlc3B/HdJ/z6y6YTZ+kzTav4PjjW/mlwxl
	xgM+9nOz5UFDm+nXJBXHgje4vNrbdulrCofxcvDhr1q90ncyxhDmk7G51nvOH6RAaL7OavAvC2i/7
	uWSx0ur1Y32INs1jGB0z8nznpfZjFvSGsJOjNi1WeuAYqVeXUkwIiSLXwjN9A4wh79NFYgt7sGQsc
	coDwaSf1Ypxf2/j/nP/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iArOq-00062w-RG; Thu, 19 Sep 2019 08:02:48 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iArOW-00062R-5G
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 08:02:29 +0000
Received: by mail-wr1-f67.google.com with SMTP id b9so2058804wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 01:02:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SfW624VpOh0aCeKTvJvcsqXpDKgHZe+aad1WQIwP3kA=;
 b=StaSK2GKseuLKVpsvdU4E12PDN6k/FZMDQK9QG+cZ+pL+yvXfYZJ2BLpXB8+5zZn3J
 PdzLfVQ7zLP6mu1ib+maRbMWfjIZSd6LMwK6uwfCA455+bYD8oBpvxvx+CGwovmWxe/3
 W+VasyFlrp2yeyVarqWSid5oKFT0Inuhn3SongwNUocb7UszAkouRR0Tr3lJHu3g2TTE
 JhgNTMDEFmrzD9A+U1Zp7x+BnpNc8RNjsnljUAIDCfeHZsmZN4cqy4MNCluFndDAh2n/
 DrRcl0/DKoYQ5FPKOooDId5p7fdIrkwe1cWcq5f5bsrfNJIx3C9gQNBa8uNIvSeyMU5j
 mRig==
X-Gm-Message-State: APjAAAXwiCaldQQwVjZ4456njA+2KXjrKTPKR7FDY2zMrZJ4xInNgcyI
 OImYYKzYMtQjoI7gIArZfs5mcZ3A
X-Google-Smtp-Source: APXvYqzpf0vjeib7NNrcjA+Yo77SrkzTdVAWHJEkVgM1iNVu//ag/XfAaiA0hMbWW06lh2Ab4sMSUw==
X-Received: by 2002:adf:84c6:: with SMTP id 64mr5862285wrg.287.1568880146542; 
 Thu, 19 Sep 2019 01:02:26 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id y186sm8506032wmd.26.2019.09.19.01.02.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 01:02:25 -0700 (PDT)
Date: Thu, 19 Sep 2019 10:02:23 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v1 6/9] ASoC: dt-bindings: Document
 "samsung,arndale-wm1811" compatible
Message-ID: <20190919080223.GE13195@pi3>
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104703eucas1p1a06ecce433753ba42b422317ec7db48c@eucas1p1.samsung.com>
 <20190918104634.15216-7-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918104634.15216-7-s.nawrocki@samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_010228_198936_5ACF1544 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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

On Wed, Sep 18, 2019 at 12:46:31PM +0200, Sylwester Nawrocki wrote:
> Add compatible string for boards with WM1811 CODEC to the list.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
>  Documentation/devicetree/bindings/sound/arndale.txt | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
