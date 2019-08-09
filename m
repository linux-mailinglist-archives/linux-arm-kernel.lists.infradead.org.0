Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 136CA87D4C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Pj9ZJAs7ayTrEcjm3picugczehJ4Ew3Xxktw78DlEuc=; b=hafiB/sXOxepLLSGESKk+uMxk
	oFF457JjgoR/LtyB/4wEdAMlT89BnfXdlErA1nbvlMryzKhADxMnwgALzBZDwy0/wauxrc4lQLRO/
	v4bJTXxt9P/iEOBUGsgGQ23d4XF0rG6BzWBYzH+C5Zjxbgsw4/8izVFQgL2+UqwHk5S4JDXM1pzA7
	Iz6Fs5/AWKh7dTQoqbKg4ify0oCHWFNybN8qZYapZzeoEeebmD2OjfLfRo20v9HtYJx7mwzS/CChM
	mNWHAORwbpSJhNgADgRwCE1Btx+NMS4poppp7hIV1Ul+I1Yi/gGkPFbi9Bo0NmOMM4b/eIDXzniGI
	kb1xKxpbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw6Ie-0004eK-9A; Fri, 09 Aug 2019 14:55:24 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw6IP-0004C2-G4
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:55:11 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x79Et7dA076455;
 Fri, 9 Aug 2019 09:55:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565362507;
 bh=SbXCWSXrPbzkxcNI0xPkTqByRL7MD28rx0zf/9b0SJc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=D8uJMUZHzeSslOS2jPMI47dDnvKaJuU35Im7B+slRsio4LKczitE4mJDuvStKX3f4
 rTinh2DrAaeKSLzM53fPmdaf/ELc+YtltA62G3pNMV9gORzCP7mSniSzYOv2ejrxgc
 xTFLgyPJLAdqJu7Usu22aO5SNXciof3OxvzeKmeo=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x79Et7Ow062013
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 9 Aug 2019 09:55:07 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 9 Aug
 2019 09:55:06 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 9 Aug 2019 09:55:06 -0500
Received: from [172.24.191.45] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x79Et38f088998;
 Fri, 9 Aug 2019 09:55:04 -0500
Subject: Re: [PATCH 4/6] arm64: dts: ti: k3-j721e-common-proc-board: Disable
 unused gpio modules
To: Lokesh Vutla <lokeshvutla@ti.com>, Tero Kristo <t-kristo@ti.com>, Nishanth
 Menon <nm@ti.com>, <linus.walleij@linaro.org>
References: <20190809082947.30590-1-lokeshvutla@ti.com>
 <20190809082947.30590-5-lokeshvutla@ti.com>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <f6ac4c30-92e6-e952-237b-603537b67053@ti.com>
Date: Fri, 9 Aug 2019 20:25:40 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190809082947.30590-5-lokeshvutla@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_075509_822400_48681D25 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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
Cc: linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Device Tree Mailing List <devicetree@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/08/19 1:59 PM, Lokesh Vutla wrote:
> There are 10 gpio instances inside SoC with 3 groups as below:
> - Group1: main_gpio0, main_gpio2, main_gpio4, main_gpio6
> - Group2: main_gpio1, main_gpio3, main_gpio5, main_gpio7
> - Group3: wkup_gpio0, wkup_gpio1
> 
> Only one instance can be used in each group at a time. So use main_gpio0,
> main_gpio1 and wkup_gpio0 for the current linux context and mark other
> gpio nodes as disabled.

Reviewed-by: Keerthy <j-keerthy@ti.com>

> 
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> ---
>   .../dts/ti/k3-j721e-common-proc-board.dts     | 28 +++++++++++++++++++
>   1 file changed, 28 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
> index 63b47b839388..509579ca3db2 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
> @@ -52,3 +52,31 @@
>   	/* UART not brought out */
>   	status = "disabled";
>   };
> +
> +&main_gpio2 {
> +	status = "disabled";
> +};
> +
> +&main_gpio3 {
> +	status = "disabled";
> +};
> +
> +&main_gpio4 {
> +	status = "disabled";
> +};
> +
> +&main_gpio5 {
> +	status = "disabled";
> +};
> +
> +&main_gpio6 {
> +	status = "disabled";
> +};
> +
> +&main_gpio7 {
> +	status = "disabled";
> +};
> +
> +&wkup_gpio1 {
> +	status = "disabled";
> +};
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
