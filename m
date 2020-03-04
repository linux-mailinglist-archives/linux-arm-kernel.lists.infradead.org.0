Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6620B179015
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 13:09:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jJGr+ubIBcLi6OoeXAMlgDLnonlu+GNlOw9uuo3bkOE=; b=SywgIZP3bR5qCo
	MsGOU4XSCdF1OkLzh63qFSm8cXrRo5RTnwTpbcQlmHKI6nZS8u0CcTFAKRqunCjCg/WeAHtkbbSDc
	KdJyzzcqrLfEcKGEBraI0FC/3WqJHLq5uNWWKy904O0UAOrJBjGKodUiYglA6T0sK73Rn8yVdVk/t
	u3DcNml3iGo4RqW+8lW75asQjXEavhmwJNNrrEr1kPyavWKwJxQc+8SwjQZrVnJh/kayYASb4xx4S
	32Qj/sZ37azC85s/MqpSL0Rud0Xh1X6WJHM41TBbysDjrPTtXrsCDC8c+BJnB4ALkIMaZ+wUikKyZ
	jzBmMQ8SjHG8MNjfOPJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Sq9-0006Zz-Nw; Wed, 04 Mar 2020 12:09:29 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Sq1-0006ZL-Lw
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 12:09:23 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 024C9D8V129529;
 Wed, 4 Mar 2020 06:09:13 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1583323753;
 bh=JhEJq56rPjtPZfyWnCQPE/SGrmng2ck/eXL4JnTgN3I=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=dPCu8AlZNR7LEeL7hJy25iCw052pNU8U+kOPBkWY1t5f+ORnmEn1/esc7WQc5ds8B
 2W8giGBQXA9qmLIQBdWQGm3jsZtpMmvg4ceFe3892gtQZ39wHL3XGTKnCJ5HaqOsU1
 R+KVVb8MUryDec2GtTYfYrRw/yfAQVWBip8AQuuE=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 024C9DpU052249
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 4 Mar 2020 06:09:13 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 4 Mar
 2020 06:09:13 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 4 Mar 2020 06:09:13 -0600
Received: from [10.24.69.159] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 024C9Aop088563;
 Wed, 4 Mar 2020 06:09:10 -0600
Subject: Re: [PATCH v2 0/7] phy: socionext: Add some improvements and legacy
 SoC support
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Masahiro Yamada
 <yamada.masahiro@socionext.com>
References: <1580367165-16760-1-git-send-email-hayashi.kunihiko@socionext.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <0ec7417e-8c83-176e-6aab-c53541db823c@ti.com>
Date: Wed, 4 Mar 2020 17:43:45 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1580367165-16760-1-git-send-email-hayashi.kunihiko@socionext.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_040921_804790_324B0A89 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jassi Brar <jaswinder.singh@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 30/01/20 12:22 pm, Kunihiko Hayashi wrote:
> This series adds some improvements to PHY interface drivers, and
> adds legacy SoC support that needs to manage gio clock and reset.

merged, thanks!

-Kishon

> 
> Changes since v1:
> - dt-bindings: Add Reviewed-by: line
> - Add SoC-dependent phy-mode function support for pcie-phy
> 
> Kunihiko Hayashi (7):
>   phy: socionext: Use devm_platform_ioremap_resource()
>   dt-bindings: phy: socionext: Add Pro5 support and remove Pro4 from
>     usb3-hsphy
>   phy: uniphier-usb3ss: Add Pro5 support
>   phy: uniphier-usb3hs: Add legacy SoC support for Pro5
>   phy: uniphier-usb3hs: Change Rx sync mode to avoid communication
>     failure
>   phy: uniphier-pcie: Add legacy SoC support for Pro5
>   phy: uniphier-pcie: Add SoC-dependent phy-mode function support
> 
>  .../devicetree/bindings/phy/uniphier-pcie-phy.txt  |  13 ++-
>  .../bindings/phy/uniphier-usb3-hsphy.txt           |   6 +-
>  .../bindings/phy/uniphier-usb3-ssphy.txt           |   5 +-
>  drivers/phy/socionext/phy-uniphier-pcie.c          | 102 +++++++++++++++++----
>  drivers/phy/socionext/phy-uniphier-usb3hs.c        |  92 ++++++++++++++-----
>  drivers/phy/socionext/phy-uniphier-usb3ss.c        |   8 +-
>  6 files changed, 172 insertions(+), 54 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
