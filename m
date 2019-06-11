Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 184D53CBAF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 14:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uTiD1xuzmGS+0FgGVLuQMCMdms0twjlN/Vn+FcqxA3k=; b=Ucy1ryDD6sa9Ib
	boZOVlPWWaU0FcCTww/0Y4gob8WtFxkFRD7k7HwWUFvfIXp0mSAZNgCSa3Zi2Wp2Gdx1l4w74cVDI
	gJeW/OAqAFpMcccpXMdi5l/OLFt1wWqGam5CarNh7zKhvonG2WHvO0LF1qvWku1owcjh1HwhnXEsx
	4Se3FX8U8Fu9+tSTRroZlZOf9aF364H8kY0elmlHiSlfPjzM67e4Fw8JRWFwNBTbOcb0p6Nn+1o+E
	4AZ3/pVTNATmmhYls/Uc+flxncxo+ZYa4Nbr+7o2/Dh9tOmCymk7wyYQQP8A7PleWM6I8bYuuOU1R
	0wLyiXv8X95J0v158A1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hafx4-0007tO-7q; Tue, 11 Jun 2019 12:32:34 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hafwq-0007rv-3J
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 12:32:21 +0000
Received: by mail-wr1-x441.google.com with SMTP id p11so12826040wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 05:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version:content-transfer-encoding;
 bh=3yIHUZDu0AY3HhtkDpgrI22GPR5WLTd7gWKM7Uzr4Ug=;
 b=gvKPd7tmPRGXoFs/ajGVvNj8YTgXy77rGXtDUalDkJl6wSn1MScUeWXLZH7CG1aN+h
 mSK3RJUofxxJdHUP+Wrn78BZJXxzqhux8eHUTsb7+zx1X0JPktpjbgDXo3UZFThpd6zg
 HKFf7XaNnojUVlMNVu/MGdKipmFUqdSMqoqL5pa+4VQEzN9zUU16X96+p7yqNWZLj90N
 XZLPIRI+Rd2lVhHjWpqVYGgvz6QrBzu+i7XL4/W7cDVaneDtMFrRUogmLHxVtkmEx1du
 FyLweWfV9i52fU3iFDIl/0kdHMVqo2xPkrbyP2ipt9FqjJB3c758Pxn8trzkppTiQFDW
 tw3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=3yIHUZDu0AY3HhtkDpgrI22GPR5WLTd7gWKM7Uzr4Ug=;
 b=YjJLetxVQ8fjZ3yKZHHY1BLDuJnfrNJlZ03RYWNZUOxhbPxeVnJAWKI743MvJHDgsb
 VP4SwtqEm+wHN/GnIW6dIE/keA+3vrRZ0dqwQffxZ8neq+GwPJq8CIrkYv0rsoWC4VDt
 /md4Ra9aJFAuSvqVl+M406B5GqRZOwq6m0zJtVMEou+QPguVwVVN3nA2uUXmSm83oU62
 1d+lrfk3l4uDHtYAjrFsgcBhoUUWKubCg4KuuKwkASVXx4zdnxA0X0wTjt3PAeCjpFZr
 HQLV1q3IaLQZ9tiqJoXVQPU9zwjuaorNZ+pn0+yS5o0UfZEkPapcnOAZq0kip86YgFVk
 W57w==
X-Gm-Message-State: APjAAAUhiDoKyyn/HerfRIXJ5WjMmYvjeOcsz0Etmr5d8qJJDGa+oqDj
 TQyZGEU46EpdthyqDe8rh3sppQ==
X-Google-Smtp-Source: APXvYqzappoDNTggYkuaxQS1YeYjg3ShO+Vgo5CxgEMCr3D2ELz9OdCft3PQSOxBqySsiqmbTruqSQ==
X-Received: by 2002:a5d:69ce:: with SMTP id s14mr1882971wrw.135.1560256338775; 
 Tue, 11 Jun 2019 05:32:18 -0700 (PDT)
Received: from boomer.baylibre.com
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 32sm32865503wra.35.2019.06.11.05.32.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 05:32:18 -0700 (PDT)
Message-ID: <c216003f9622d022d55ed9eb13458a10189797f2.camel@baylibre.com>
Subject: Re: [PATCH v3 0/2] Add support of Temperature sensor Clock for G12 SoC
From: Jerome Brunet <jbrunet@baylibre.com>
To: Guillaume La Roque <glaroque@baylibre.com>, narmstrong@baylibre.com, 
 khilman@baylibre.com, linux-amlogic@lists.infradead.org, 
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Date: Tue, 11 Jun 2019 14:32:17 +0200
In-Reply-To: <20190412100221.26740-1-glaroque@baylibre.com>
References: <20190412100221.26740-1-glaroque@baylibre.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_053220_152151_14968D5B 
X-CRM114-Status: GOOD (  12.14  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-04-12 at 12:02 +0200, Guillaume La Roque wrote:
> This patch series add support of Clock for temperature sensor
> on Amlogic G12a SoC.
> 
> Guillaume
> 
> cahnges sinve v2:
> - rebase on good branch
> 
> changes since v1:
> - fix .width value
> 
> Guillaume La Roque (2):
>   dt-bindings: clk: g12a-clkc: add Temperature Sensor clock ID
>   clk: meson-g12a: Add Temperature Sensor clock
> 
>  drivers/clk/meson/g12a.c              | 31 +++++++++++++++++++++++++++
>  drivers/clk/meson/g12a.h              |  3 ++-
>  include/dt-bindings/clock/g12a-clkc.h |  1 +
>  3 files changed, 34 insertions(+), 1 deletion(-)
> 

Fixed the commit messages as suggested by Martin and applied
Thx


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
