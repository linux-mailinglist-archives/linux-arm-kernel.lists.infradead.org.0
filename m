Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FD08F331
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:23:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E7jw/QGzSZ1sPJytoiMD/3r9m9go7lao/WYY5qCBM58=; b=ZeDjP6Th699eFC
	ut3kqcAYc7bPlaURIv4+c4IkfwY2DZCmRNSQq/o+KibYw1Qr54wP9Q91y03JEot6HQYuNt+x4jm9n
	et3729JQpggLR3IsBNP9qzNmNIB8QdKM/su5yF9IUooy4zY4QdtEBwLSo5EdAnMtTE4uMG2M3KZ1P
	RjoElmxQlROctEsw04wDGXQ/K5/2h7y/xaaNs1bUOTEl4YIK5kob+Z7RZd3IlVyOPHk1n3OXxCgfC
	39KMZuL9jtGQf/TPe8U+OsUzOlufl6xrJ2zwYIRlALI2pmgimJqMVUzEMgS7jULeFdQMIKsL4vwNu
	mv6rJ1M+a7WPk7aRnlrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKOk-0006FN-Eu; Thu, 15 Aug 2019 18:22:54 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKOZ-0006F2-2w
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 18:22:44 +0000
Received: by mail-wr1-f65.google.com with SMTP id g17so3041931wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 11:22:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Mh8n/VNiTVWDFrItd4GHUV+f3zt1dfnH+uZF/6gzubw=;
 b=SPRkKXSeCsoGTR81EmUokyKRsfznA31aPGpNeGVDOl0BUQL94LJQCgYaVYpfSe9KKj
 OeO3Ca+NU+KUz27/t2DRXnCbBNZ4+j6dEcfmXnI/WaPpEN3lYZVa+Hl5L0Vjfi9hAOmX
 yyWptQYW/e+u6wRacD70qT/9eUBpTQ2otOj/KDBvnRCJh78PV4khpaBDzofnNZdmPh/q
 Q94JSlFv8Kdj2z2Id3ZixoSt/kxlXdmvrmb2oT6M9faeevRkP1+nRAg9+UMzAyZcpQE+
 2zG/EH5jHw+rgUWHJY/Gd2w9KcKOm66697JUmKyqu7JvU8M+Bjt3t3gszi8whVWNBNxm
 4JOQ==
X-Gm-Message-State: APjAAAW4hkukTvvx5XbzihmjkzjbWoKuDoaEWfhgdRkkjiIVwOnwJCGJ
 bfORrI27s9rR9b7IWXxEufw=
X-Google-Smtp-Source: APXvYqxAOF7d8gx7S+4KOLrESeMUupXxwlLNiqXx0Gy90/oE4qxtlhlu0qmZit2MPXZBrY1LY5pCKA==
X-Received: by 2002:adf:d4c6:: with SMTP id w6mr6996086wrk.98.1565893360200;
 Thu, 15 Aug 2019 11:22:40 -0700 (PDT)
Received: from kozik-lap ([194.230.155.124])
 by smtp.googlemail.com with ESMTPSA id 16sm4108056wmx.45.2019.08.15.11.22.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 15 Aug 2019 11:22:39 -0700 (PDT)
Date: Thu, 15 Aug 2019 20:22:37 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v3 2/9] soc: samsung: Convert exynos-chipid driver to use
 the regmap API
Message-ID: <20190815182237.GC14360@kozik-lap>
References: <20190813150827.31972-1-s.nawrocki@samsung.com>
 <CGME20190813150852eucas1p2be4c0ab5ec2c079e3daf1af24283b27c@eucas1p2.samsung.com>
 <20190813150827.31972-3-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813150827.31972-3-s.nawrocki@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_112243_127752_0CF61BF4 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, pankaj.dubey@samsung.com, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 vireshk@kernel.org, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 05:08:20PM +0200, Sylwester Nawrocki wrote:
> Convert the driver to use regmap API in order to allow other
> drivers, like ASV, to access the CHIPID registers.
> 
> This patch adds definition of selected CHIPID register offsets
> and register bit fields for Exynos5422 SoC.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
> Changes since v2:
>  - s/_EXYNOS_ASV_H/__LINU_SOC_EXYNOS_ASV_H,
>  - removed __func__ from error log,
>  - removed unneeded <linux/of_address.h> header inclusion.
> 
> Changes since v1 (RFC):
>  - new patch
> ---
>  drivers/soc/samsung/exynos-chipid.c       | 34 ++++++---------
>  include/linux/soc/samsung/exynos-chipid.h | 52 +++++++++++++++++++++++
>  2 files changed, 65 insertions(+), 21 deletions(-)

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
