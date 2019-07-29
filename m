Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED3479D20
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 01:55:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TyvhMatxinzmk4eHPDmBTqyWNL9TvWu9qIUHLvRnL70=; b=Cz5tnfblAdnww3
	Mua1h5QelfJIOtWoMpUWbAlkYZC2/alpOCWKmjFtYwx9+1fSNnM0TdgY2Ai6dANSIyxGw+tF8bITV
	/nwA5Qz15fP4Y8NFbBRS+xaX5/143hHnnkjv9gSpJknPnem9zXzi0SLyqzznYcB7DUjPArbU5o2cL
	oV5b9EqLSrKA7SMDpowDPP5nTvQ9f72tc5LAYhqplLOXzCBR4lGOjucxeO872ervIg11AZVMD7PBI
	HbUXdnei2M18E8sJl/To+PZHopq1cJHlw6u5VrZTIWP4N6QhYclRZcE18I1mA8O2zYF07JtUHXlZH
	f7lzggjkuN2BvqaKOOew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsFUY-0003F1-M6; Mon, 29 Jul 2019 23:55:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsFUM-0003EI-U3
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 23:55:36 +0000
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 88BDB2073F
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 23:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564444534;
 bh=QJajQ9rPwQQEztIa7Aie8zZd9zfm/Sqk8yhLa8ZcYl0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=V9/tFzo/fOI4CMU7QpMUnouCMw9y4Z4Gis/0Xg3FuV6jfnNqSFAPs1DA1HvL79MXq
 9YMFINPaRZERAbmHosngz5Yz24y7NBdq62iQsjsRWmNd15UbNzTI6OPnC1Fs/6VSJj
 srnKhICD1uhc8IXv2y+8DdWhp8MPYCO76JwBxO/k=
Received: by mail-qt1-f179.google.com with SMTP id l9so61237954qtu.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 16:55:34 -0700 (PDT)
X-Gm-Message-State: APjAAAUrkctrEUQXEo9o1yjLL9yuw6gRWJiDVp8coFg1wgJ1190P68uZ
 Ltwjs4e7COUizHSQQFKDtHyxdPNoV+/iHlm48w==
X-Google-Smtp-Source: APXvYqznXMqQ6aE9gIcWbb/9lh1ClqELBH1Q0acqDOKZC0kqgtdGTVRMzfO1zsWwf0QVCqeFe8EP2ojj+nXv+b3KAlo=
X-Received: by 2002:a0c:b786:: with SMTP id l6mr81436699qve.148.1564444533780; 
 Mon, 29 Jul 2019 16:55:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190729172007.3275-1-krzk@kernel.org>
In-Reply-To: <20190729172007.3275-1-krzk@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 29 Jul 2019 17:55:22 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLo9ftDo-tmeOWGqjKR32PL9bsWkDL+zr6LSYts2ZY7SA@mail.gmail.com>
Message-ID: <CAL_JsqLo9ftDo-tmeOWGqjKR32PL9bsWkDL+zr6LSYts2ZY7SA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: vendor-prefixes: Add Admatec GmbH and
 Anvo-Systems
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_165534_982749_49A4190F 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 11:20 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> Add vendor prefix for Admatec GmbH (not to be confused with Admatec AG
> in Switzerland) and Anvo-Systems Dresden GmbH.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> ---
>
> Changes since v2:
> 1. Use admatecde vendor prefix.
> 2. Add Anvo-Systems Dresden GmbH.
>
> Changes since v1:
> New patch
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 4 ++++
>  1 file changed, 4 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
