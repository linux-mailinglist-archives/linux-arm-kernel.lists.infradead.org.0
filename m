Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 705ED100128
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 10:22:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+r6VEFPS5nr1EXstVJdeFkdliP0JhFkdR6fvWAjCJQY=; b=IUXlUIkvbHZ25I
	reKMrA1xPaLxdZ6wywEjvp7a8rN/z+LLbTtBx43qnydMJKCd9v1LCvWiG6d6x4DRDNJQNfVAHCdhn
	qj8nYPPhejtG4pdOJvnLMmImcEY0y2p66bDnSxbL2Slq0IJgJSyH2WMLK83FM/iOq1kRNC0H2rhUK
	gk57gheIYm/TMLAbSF7IwTF76/KDbQCxdffqaZbzxeSKgHCb2yTjKGV5JOt/vEoU0KU5McyENgM6n
	FE1H1BwPleg5qfsh8vZJskPYOlyihdfPgJjeUOAb6Y2VLZxPl3/dl/tNxSj1Xgz/Xb54ByxPPEigP
	JcrMm0G9J0afadOPrRHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWdF3-0007CC-Jw; Mon, 18 Nov 2019 09:22:41 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iWdEt-0007B6-Hm; Mon, 18 Nov 2019 09:22:33 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xAI9MK2f001187,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xAI9MK2f001187
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 18 Nov 2019 17:22:20 +0800
Received: from RTEXDAG01.realtek.com.tw (172.21.6.100) by
 RTITCASV01.realtek.com.tw (172.21.6.18) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Mon, 18 Nov 2019 17:22:20 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXDAG01.realtek.com.tw (172.21.6.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Mon, 18 Nov 2019 17:22:19 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::5cc4:90a5:6821:926]) by
 RTEXMB03.realtek.com.tw ([fe80::5cc4:90a5:6821:926%8]) with mapi id
 15.01.1779.005; Mon, 18 Nov 2019 17:22:19 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Subject: RE: [PATCH v3 6/8] ARM: dts: rtd1195: Add reset nodes
Thread-Topic: [PATCH v3 6/8] ARM: dts: rtd1195: Add reset nodes
Thread-Index: AQHVnRfWQHpokuCZUUmFW9fO0MELfKeQpIVQ
Date: Mon, 18 Nov 2019 09:22:19 +0000
Message-ID: <20b3d0956bed4338a540216df07f16e5@realtek.com>
References: <20191117072109.20402-1-afaerber@suse.de>
 <20191117072109.20402-7-afaerber@suse.de>
In-Reply-To: <20191117072109.20402-7-afaerber@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.187]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_012231_722604_092CDED6 
X-CRM114-Status: UNSURE (   7.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andreas,

> +			reset1: reset-controller@0 {
> +				compatible = "snps,dw-low-reset";
> +				reg = <0x0 0x4>;
> +				#reset-cells = <1>;
> +			};
> +
> +			reset2: reset-controller@4 {
> +				compatible = "snps,dw-low-reset";
> +				reg = <0x4 0x4>;
> +				#reset-cells = <1>;
> +			};
> +
> +			reset3: reset-controller@8 {
> +				compatible = "snps,dw-low-reset";
> +				reg = <0x8 0x4>;
> +				#reset-cells = <1>;
> +			};
> +
> +			iso_reset: reset-controller@7088 {
> +				compatible = "snps,dw-low-reset";
> +				reg = <0x7088 0x4>;
> +				#reset-cells = <1>;
> +			};
> +

We don't use the DesignWare IP for the reset controller.


Regards,
James


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
