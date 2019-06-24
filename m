Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39ABB51F15
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 01:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ncb+IBFHDor5JdfUvpARhZ1acw1Ft/AZ7RZZMmt1j/s=; b=EiC70Pw3alYxoH
	KTiUTk2zkkrZGv4Svs+HthxKVXSL6Kd6EEvhCUAqb58gCwdj5g9eIbJakfZEuQccStwczRbra0Nl3
	NSLY/yDd6mTAMXHNc8KryFKaavqXizNGijYpi6WKAb9kQbwu2y22lgFh8W77hJNt22I7+H/6ujUIN
	lDg4OfPodk+AvYaOFio34HcPZWv3RbJmtUb0ayMcQrrnKSG5ILOfYDahGMUe/fefiWnOopV8eJi4s
	+WRrXufhjjMNbqGo5zEqNQDvZ5QWERx1hBr3spDZahP85PjNrs2jRoy50lDHNyUrGNLWK+sqOkqDk
	ZtJ4wMonZWc2x91Rg31A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfYKS-00073b-Ha; Mon, 24 Jun 2019 23:24:52 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfYKE-00072u-Ip
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 23:24:40 +0000
Received: by mail-pg1-x544.google.com with SMTP id 196so7905368pgc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 16:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=97J2mQ8W9rxbq9xESMLvP971OTTkTA5uAArzuGfjVX8=;
 b=q/WqUD0hfVCG+bMiazVQEDX1BfPkf+2pUEhLqUL0KLAh7VEB54OkzB4glqfypnW1Vi
 JYJHp7jpzLg8iCwrFF4v9i/wNJm0f4KFcLQn2sJ+65DRtI/W2kniOHzCpcUcm9igWdgB
 4VwveWtICtwDSWbVZWAsrL2oDMD/CSjIOF6h5EimvwMtoi0Gy7GQSmI747P+E0aqeKVs
 jebJ/M3g/YzXrFslWpv5ExSiZtx6pQpkHlzCZyha0zeDRNp9IWXOCNhfVRrpF4PvsDD/
 j1flPIXcRJ4r0HQZc1LMMFO7T8dMliZD6E3xJUjuLbqCvastIIG3Wl03BdjT3a1sUiSz
 KNrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=97J2mQ8W9rxbq9xESMLvP971OTTkTA5uAArzuGfjVX8=;
 b=V8sL5+xX6bEHSnDm8ZG2DvPqn9DKvCrMJxv6QeuxKf56tEaU9NQtcBFijBeHGlvdJ4
 zaDv8rPVFJVoKkIyd1bERcNFPuKhu92XoCk3R2zmy6lqQpTkq5slT0ejw3uq4g2g0FSB
 XT6wLImGBe4DMH7+luJFb5PMYa1SE6axlnFnLmliKULLyPeHxb11cZh3zJn58ciYc5Yh
 CQ+0AmWGilJTa0tWgn8hk/TLbqN1kGopQs5CMNWA4PcGhqYu66Y9k0cZWZY2dt3ca3As
 okd/s+HynP7PpJTlmMn8UrRP7bwPX6NZHIhtvaGgTB+pm94A4zm1VPmlU5Ldp9ExJwY5
 dNWw==
X-Gm-Message-State: APjAAAUYktaO55VA1PkQByRr6LS+Jc6eIg38ux63fTWSzp8Bg4XaIUXi
 e1LgYj1CvnJsQYIOnIBdIWlKOA==
X-Google-Smtp-Source: APXvYqyJ4qa0FiXJgxfwOsACg9uzcWq9QV35TxSpj/Rhhn6aABo5DnNey+XA0cB/QHxSOT2N21tfLw==
X-Received: by 2002:a63:f746:: with SMTP id f6mr11806300pgk.56.1561418677315; 
 Mon, 24 Jun 2019 16:24:37 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:559b:6f10:667f:4354])
 by smtp.googlemail.com with ESMTPSA id q1sm15808527pfn.178.2019.06.24.16.24.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Jun 2019 16:24:36 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Julien Masson <jmasson@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 0/9] drm: meson: global clean-up (use proper macros,
 update comments ...)
In-Reply-To: <86zhm782g5.fsf@baylibre.com>
References: <86zhm782g5.fsf@baylibre.com>
Date: Mon, 24 Jun 2019 16:24:35 -0700
Message-ID: <7ho92mwor0.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_162438_627752_CB92E8DB 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Cc: Julien Masson <jmasson@baylibre.com>, linux-amlogic@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Julien Masson <jmasson@baylibre.com> writes:

> This patch series aims to clean-up differents parts of the drm meson
> code source.
>
> Couple macros have been defined and used to set several registers
> instead of using magic constants.
>
> I also took the opportunity to:
> - add/remove/update comments
> - remove useless code
> - minor fix/improvment

Nice set of cleanups, thanks!  I especially like the extra in-code
comments.

Could you also add to the cover-letter how this was tested, and on what
platforms so we know it's not going to introduce any regressions.

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
