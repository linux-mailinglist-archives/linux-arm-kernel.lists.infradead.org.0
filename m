Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B48BD9A327
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 00:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RChuPPA+Y9lvKE2ukCvA10A+U/tymkSoa+KNtDTzaSI=; b=PRHAt0UlpU18H9
	16Qr8bIry8l88sFeOI3n9gnBXWPp9COcAPUJz6R5+3HYmT+yEv9UnG+GEF4r+glGv+5UgjPX4eBKc
	O0ReHlpvskehAxWF8+TaXFMFfuvpTCZH0Za54nTmqoY3hGRBzgpAqPR9kLe8LnUXTvSgBXYzDwWYH
	zjQ6WHOMIBsFfTtWnSPwFnM+VbosDhT1VzXgXwIgvVaB9+S9OK/FfDKNH3Gxmxdl7/Kx0mmepAViU
	iyGqgHALDk/lh9YT0oH81C22z/69MM4FpPvScNLi155n7p5VTSDmc4YkxXUMI10xog58uFViEUvmG
	JW79DL/V8lOEC8kMh6zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0vml-0007YV-1e; Thu, 22 Aug 2019 22:42:27 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0vmY-0007X2-1d; Thu, 22 Aug 2019 22:42:16 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 9D9B7153409F5;
 Thu, 22 Aug 2019 15:42:12 -0700 (PDT)
Date: Thu, 22 Aug 2019 15:42:12 -0700 (PDT)
Message-Id: <20190822.154212.249670304042273740.davem@davemloft.net>
To: narmstrong@baylibre.com
Subject: Re: [PATCH net-next v4 0/2] dt-bindings: net: meson-dwmac: convert
 to yaml
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190820075742.14857-1-narmstrong@baylibre.com>
References: <20190820075742.14857-1-narmstrong@baylibre.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 22 Aug 2019 15:42:12 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_154214_098260_2821F7EB 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, martin.blumenstingl@googlemail.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Neil Armstrong <narmstrong@baylibre.com>
Date: Tue, 20 Aug 2019 09:57:40 +0200

> This patchsets converts the Amlogic Meson DWMAC glue bindings over to
> YAML schemas using the already converted dwmac bindings.
> 
> The first patch is needed because the Amlogic glue needs a supplementary
> reg cell to access the DWMAC glue registers.
> 
> Changes since v3:
> - Specified net-next target tree
> 
> Changes since v2:
> - Added review tags
> - Updated allwinner,sun7i-a20-gmac.yaml reg maxItems

Series applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
