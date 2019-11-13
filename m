Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C63EEFA701
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 04:02:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4yCPFbAbquJWxBQr6xEDct/dZsmr8ZLVaN1eMknjCo=; b=m/teyxZKxCvVRg
	YyWvTcwXwyhYpZmXOmgW/wPyX5dmu7GNPF5Yw49GiOfEZLGSm/2sN3fgErg07vZaHayCkgdCpv9Ww
	5xFgefidQPJmoZm9w3FW/VVRlBzQkaZw2sZjcKm0a9ng9UHbFX7xdxtQjXH4ef6JGinQcSqR76ze3
	ldtZjAN6qhMNtFwZzN99vXYoMtRK51VVU6DS3NoGKnHOMbQjTiFjMEEzbl0LyWqychmcooJC3VNRl
	JUi8kRVX/TEZQeYcKtdZgEsFTm/RmoDGrJunFwbKxfFlSfvYvQxD3Ei/gQssrd2RuUEWuhkywbmxG
	81p2vAGdPooxn8M7k1DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUivF-0006M4-Eq; Wed, 13 Nov 2019 03:02:21 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iUiv7-0006Lg-1E; Wed, 13 Nov 2019 03:02:14 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xAD323qX017518,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV02.realtek.com.tw[172.21.6.19])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xAD323qX017518
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 13 Nov 2019 11:02:03 +0800
Received: from RTEXMB04.realtek.com.tw (172.21.6.97) by
 RTITCASV02.realtek.com.tw (172.21.6.19) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Wed, 13 Nov 2019 11:02:03 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB04.realtek.com.tw (172.21.6.97) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Wed, 13 Nov 2019 11:02:02 +0800
Received: from RTEXMB03.realtek.com.tw ([::1]) by RTEXMB03.realtek.com.tw
 ([fe80::3d7d:f7db:e1fb:307b%12]) with mapi id 15.01.1779.005; Wed, 13 Nov
 2019 11:02:02 +0800
From: James Tai <james.tai@realtek.com>
To: James Tai <james.tai@realtek.com>, =?iso-8859-1?Q?Andreas_F=E4rber?=
 <afaerber@suse.de>, "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Subject: RE: [PATCH 3/7] arm64: dts: realtek: rtd129x: Introduce r-bus
Thread-Topic: [PATCH 3/7] arm64: dts: realtek: rtd129x: Introduce r-bus
Thread-Index: AQHVmD0LJFqIXtM2kU2Y99tlfWut1aeIZHwwgAAHQPA=
Date: Wed, 13 Nov 2019 03:02:02 +0000
Message-ID: <a4d9c42767ac4f3a9eacab72be224f3c@realtek.com>
References: <20191111030434.29977-1-afaerber@suse.de>
 <20191111030434.29977-4-afaerber@suse.de>
 <f70d00d8b1f8446fb138b36c61d952f4@realtek.com>
In-Reply-To: <f70d00d8b1f8446fb138b36c61d952f4@realtek.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.187]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_190213_340351_970E4711 
X-CRM114-Status: UNSURE (   6.57  )
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

> Hi Andreas,
> 
> > +		rbus: r-bus@98000000 {
> > +			compatible = "simple-bus";
> > +			reg = <0x98000000 0x100000>;
> > +			#address-cells = <1>;
> > +			#size-cells = <1>;
> > +			ranges = <0x0 0x98000000 0x100000>;
> > +
> 
> The r-bus size of RTD1395 is 0x200000.
> 

Sorry for the typo. The r-bus size of RTD1295 is 0x200000.


Regards,
James



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
