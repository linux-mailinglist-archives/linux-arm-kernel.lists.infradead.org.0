Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F154027BB2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 13:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jsz1nPWd2eNI4+f01Ncf3QpgvktPLT1N1YOeX/tylIg=; b=I61jG789Ymv3vD
	uErAfzMh8BVldnmXXYjmdJtUzJDaREvYUUN5ZhmtBIV7sc6EADX0dYLB0l4BsxXhXl8t+rueyz/0V
	6ClgmMSTWNzKyZ0PHxPA4lYbnCp7mLhfMqpX2gOgkoAGpXGrF/Yye1ah8osqXLhPn4ao3gd26IeK7
	dDphfuOCjrR2EoPsnGpGAZN1CoR+lxMupgWKymwVULh1CamfmF7HJDavGjmScRs8pCHIna4CVhq/u
	ZsrT00qtnN//KbreFA9J8Iq0tsh1hTB+3KBMAn6hxjwG1ocalKmRMQ6LsSqFwgd8WK8r2IKuhExGG
	x6XNZcWl2SRclbDTI/9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTlqc-0005H2-IO; Thu, 23 May 2019 11:25:22 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTlqV-0005Ge-M6
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 11:25:16 +0000
Received: from mailhost.synopsys.com (dc8-mailhost2.synopsys.com
 [10.13.135.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 38AA6C0058;
 Thu, 23 May 2019 11:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1558610700; bh=hkQq+NagVQeRn04WiFE2kt9SOsCwDZFEIjFfIVppq1c=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=BR39Y+nTIgvh+2XyRdJmKJrpSYDSa56MeY5fv4PJtO72l0XqpHkqdNbSn2TWiu9/Y
 lR6Y5eb7BMmyxH353cw5lppec09JyN/fjeqWx3bR0t+Ee1Pr36U+gzU9T8rKwGK8Wx
 3Bvy2G1w2XW08/0EfUZYLSw/spMLddLLb2TY4zEEKRQfS/pX+sj62mdHcjVKN68me2
 qE0kFtK8yvwWITl5gTN4pPUuRsibfD5WD7cBFhbNKTJETzXeIKaJugMltCvCuncWFl
 3/8gk84WFQ0yQ1aJNGURikMyuLMl/XwCLZ+VXkD99bqESql6uSn1RryDpAv6M56PUI
 mYCcDsHcxjxlg==
Received: from us01wehtc1.internal.synopsys.com
 (us01wehtc1-vip.internal.synopsys.com [10.12.239.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 08FFFA0067;
 Thu, 23 May 2019 11:25:12 +0000 (UTC)
Received: from DE02WEHTCB.internal.synopsys.com (10.225.19.94) by
 us01wehtc1.internal.synopsys.com (10.12.239.231) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 23 May 2019 04:25:12 -0700
Received: from DE02WEMBXB.internal.synopsys.com ([fe80::95ce:118a:8321:a099])
 by DE02WEHTCB.internal.synopsys.com ([::1]) with mapi id
 14.03.0415.000; Thu, 23 May 2019 13:25:10 +0200
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Jose Abreu <Jose.Abreu@synopsys.com>
Subject: RE: [PATCH 6/8] dt-bindings: net: stmmac: Convert the binding to a
 schemas
Thread-Topic: [PATCH 6/8] dt-bindings: net: stmmac: Convert the binding to a
 schemas
Thread-Index: AQHVEU4TH/U8rGF20keiHF2VDmX4vKZ4fKug///ujYCAACXOwA==
Date: Thu, 23 May 2019 11:25:09 +0000
Message-ID: <78EB27739596EE489E55E81C33FEC33A0B92BA5B@DE02WEMBXB.internal.synopsys.com>
References: <74d98cc3c744d53710c841381efd41cf5f15e656.1558605170.git-series.maxime.ripard@bootlin.com>
 <ba1a5d8ad34a8c9ab99f504c04fbe65bde42081b.1558605170.git-series.maxime.ripard@bootlin.com>
 <78EB27739596EE489E55E81C33FEC33A0B92B864@DE02WEMBXB.internal.synopsys.com>
 <20190523110715.ckyzpec3quxr26cp@flea>
In-Reply-To: <20190523110715.ckyzpec3quxr26cp@flea>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.107.19.176]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_042515_731729_DD9FAA0D 
X-CRM114-Status: UNSURE (   9.12  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 =?iso-8859-1?Q?Antoine_T=E9nart?= <antoine.tenart@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Thu, May 23, 2019 at 12:07:15

> You can then run make dtbs_check, and those YAML files will be used to
> validate that any devicetree using those properties are doing it
> properly. That implies having the right node names, properties, types,
> ranges of values when relevant, and so on.

Thanks but how can one that's developing know which bindings it shall use 
? Is this not parsed/prettified and displayed in some kind of webpage ?

Just that now that the TXT is gone its kind of "strange" to look at YAML 
instead of plain text and develop/use the bindings.

Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
