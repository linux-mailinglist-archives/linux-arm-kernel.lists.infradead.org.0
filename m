Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A13B27A11
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 12:11:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ohN1PMJVSQhKtEqbcCjA0gEho0OUP5tRkZ3tZLZRBgY=; b=chKm4YGdkI4Z4A
	NR+VwDP9j3DjquHl5tSAF4a1pZCCiygvxd2Wdd+EfTU2XtYwTcctudz40HFdmfpEZo0ln99ZZv6Nh
	qu1lZla9EBpG5rAjh4jQQHKqz2eqeT+/3gowV/3SOKPYS6Aaj/RHLrgrSMQ6AX9X+LgHSRcFxic1C
	ZzZ2IPahHW1piDcAeHwDrwNEEYQY6nGykOSp9BmlJti8vkQtd/tT0BHL8u84Blgwn6mZzqUV7IeoF
	lcZnTsyD6l2e0Fqrf4b466hFWzfUlJUj3ff3krEa7QnEP18dCUt1m19kghHwOWljpHZJtRJ5OW2Up
	LwvwIsTkeodHCsQN156g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTkhW-0005pc-QZ; Thu, 23 May 2019 10:11:54 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTkhQ-0005pI-Dn
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 10:11:49 +0000
Received: from mailhost.synopsys.com (dc2-mailhost1.synopsys.com
 [10.12.135.161])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 3A084C019A;
 Thu, 23 May 2019 10:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1558606292; bh=ZEbZqunZ+rIwViZDW6o7vFr9VUdu0pDj0hPGxzIu6ek=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=cBUJrPawSJA6R+HhDp/hN/3hxkJdWLBnHIrnV6/L4PpYSXb+SRaYhDxUzgq6nHulc
 k/WbOxllU3Dxi482kElOyiEjTjrBVnIcMZG56vzkxqxRiB6o18bW6y3x+0K+eYRm4W
 PJqZGaeLrTLn9a3Dhb/1EpC3jT5dTmXy/l3upXuxJrezlwHEM2dUvLIsWSeYlm6AzK
 ye+r51OCFeMIALLzS58nZWsUHFoJeZSZJ8U9LXv84RpWfIhqoSTspL4OKXgRLoFj+v
 JRbInyMmArtFabkdmNFACrIHy7TeK5muPFxZBILN27ZNYQ330Pxel6nTNA/GOUmtpU
 Oy9oIkMw7uyHg==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id C811FA009E;
 Thu, 23 May 2019 10:11:42 +0000 (UTC)
Received: from DE02WEHTCB.internal.synopsys.com (10.225.19.94) by
 us01wehtc1.internal.synopsys.com (10.12.239.231) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 23 May 2019 03:11:42 -0700
Received: from DE02WEMBXB.internal.synopsys.com ([fe80::95ce:118a:8321:a099])
 by DE02WEHTCB.internal.synopsys.com ([::1]) with mapi id
 14.03.0415.000; Thu, 23 May 2019 12:11:40 +0200
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Mark Rutland
 <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>, Frank Rowand
 <frowand.list@gmail.com>, "David S . Miller" <davem@davemloft.net>, "Chen-Yu
 Tsai" <wens@csie.org>
Subject: RE: [PATCH 6/8] dt-bindings: net: stmmac: Convert the binding to a
 schemas
Thread-Topic: [PATCH 6/8] dt-bindings: net: stmmac: Convert the binding to a
 schemas
Thread-Index: AQHVEU4TH/U8rGF20keiHF2VDmX4vKZ4fKug
Date: Thu, 23 May 2019 10:11:39 +0000
Message-ID: <78EB27739596EE489E55E81C33FEC33A0B92B864@DE02WEMBXB.internal.synopsys.com>
References: <74d98cc3c744d53710c841381efd41cf5f15e656.1558605170.git-series.maxime.ripard@bootlin.com>
 <ba1a5d8ad34a8c9ab99f504c04fbe65bde42081b.1558605170.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <ba1a5d8ad34a8c9ab99f504c04fbe65bde42081b.1558605170.git-series.maxime.ripard@bootlin.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.107.19.176]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_031148_473938_180497B2 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 =?iso-8859-1?Q?Antoine_T=E9nart?= <antoine.tenart@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Thu, May 23, 2019 at 10:56:49

> Switch the STMMAC / Synopsys DesignWare MAC controller binding to a YAML
> schema to enable the DT validation.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

How exactly can I see the final results of this ? Do you have any link ? 
(I'm no expert in YAML at all).

Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
