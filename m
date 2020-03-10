Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C74E917F2C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 10:09:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=df7nhxdZnz7jqaOz1AjCshGMJRpoywfHRIVPZXBX6yE=; b=fKoiqYl3QHb9RD
	VKoiwfGLG/a5Unu9pu/5i6SjT5sIINOmREuCvKLMUdTxoVVFos7u7l7bxFnMkVhCeOutG6uLG74Zf
	SmTQMZMu7kX/ya/1DxltjZXU8DUpt22g1H0BT6qTWFWOWFS9UPdgjK5l2Yj2QQ0qeVaDYb9Hs6Hy2
	TWH7N5VnZdFXuTFoFEDy2B5AH5D9dusZM/nvJhJfPrVJw5rnU+Rvoke1FxY2QzNADWnubFNmEA0i6
	mLeejQQ07X3nfEzeKjnQmgt9vMhz8u/FumUx0UTnYsn3LL3OcoGxHHNoUzGNArUJs80seKeKAQNwh
	zOkZgryl5xNeYMRw2u5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBatR-0003yT-7m; Tue, 10 Mar 2020 09:09:41 +0000
Received: from securetransport.cubewerk.de ([2a01:4f8:c0c:92be::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBatK-0003xm-4P
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 09:09:35 +0000
Received: from DHPWEX01.DH-ELECTRONICS.ORG (unknown [188.192.127.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by securetransport.cubewerk.de (Postfix) with ESMTPSA id 9A3075DCC9;
 Tue, 10 Mar 2020 10:08:54 +0100 (CET)
Received: from DHPWEX01.DH-ELECTRONICS.ORG (10.64.2.30) by
 DHPWEX01.DH-ELECTRONICS.ORG (10.64.2.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.397.3; 
 Tue, 10 Mar 2020 10:08:51 +0100
Received: from DHPWEX01.DH-ELECTRONICS.ORG ([fe80::6ced:fa7f:9a9c:e579]) by
 DHPWEX01.DH-ELECTRONICS.ORG ([fe80::6ced:fa7f:9a9c:e579%6]) with mapi id
 15.02.0397.003; Tue, 10 Mar 2020 10:08:51 +0100
X-secureTransport-forwarded: yes
From: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Complaints-To: abuse@cubewerk.de
To: Marek Vasut <marex@denx.de>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] ARM: dts: imx6q-dhcom: Add DH 560-200 display unit support
Thread-Topic: [PATCH] ARM: dts: imx6q-dhcom: Add DH 560-200 display unit
 support
Thread-Index: AQHV9k6FnC/uy7gEcUC8ZkUGA6b+4qhBhSyg
Date: Tue, 10 Mar 2020 09:08:51 +0000
Message-ID: <6c8d69ff4f6e4c7f8a1642d97ddc7dec@dh-electronics.com>
References: <20200309200807.34335-1-marex@denx.de>
In-Reply-To: <20200309200807.34335-1-marex@denx.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.64.3.50]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_020934_330763_2CAC7A25 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>, NXP
 Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

From: linux-arm-kernel [mailto:linux-arm-kernel-bounces@lists.infradead.org] On Behalf Of Marek Vasut
Sent: Monday, March 9, 2020 9:08 PM

> +	display_bl: display-bl {
> +		compatible = "pwm-backlight";
> +		pwms = <&pwm1 0 50000 PWM_POLARITY_INVERTED>;
> +		brightness-levels = <0 16 22 30 40 55 75 102 138 188 255>;
> +		default-brightness-level = <8>;
> +		enable-gpios = <&gpio3 27 GPIO_ACTIVE_HIGH>;
> +		status = "okay";
> +	};
...
> +&pwm1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pwm1>;
> +	status = "okay";
> +};

To get PWM_POLARITY_INVERTED, shouldn't we add the following line to pwm1:
#pwm-cells = <3>;

Regards,
Christoph

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
