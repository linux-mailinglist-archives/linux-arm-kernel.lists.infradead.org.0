Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B5A10349F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 07:54:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JQsuC6wBoyl6SKjRVjoDO910dXFuRJjY8svasDxfmTg=; b=pwRrKHrE7ejrYW
	4KIycmY5TAL6rF6O8ASMEOrb5QYoz1eXcYP0pnMMLW9Khretxitd5FqEhGovIdKBRZCR1CN8WxYjQ
	TC/bBdFq1FdJvSPwX3PBIdibcVEDpmTmoDeqc22mx4WdDG0PlfoOfpVQcJWYQkK08mcdl9IMS3Zv6
	GDB5V0JsSnaI9YLz66y2nKMv+JWde97sBUmF8dBmwT50ttFPN+GofNgU/pwFSOPR4jcmTIwElCqQb
	5N8xdp1P5mtLUBO1cjgBJkvYz9yhOkCOM5NX94vK3HZ6/RhOtK7uW7ZBYaf8nuwPEq8K9K8sJOrnp
	mvTkk9/HjtpTzXcMCOxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXJse-00021c-Cv; Wed, 20 Nov 2019 06:54:24 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iXJsU-00020d-Uh; Wed, 20 Nov 2019 06:54:16 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xAK6rwUM004452,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (mapi.realtek.com[172.21.6.95])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xAK6rwUM004452
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 20 Nov 2019 14:53:58 +0800
Received: from RTEXMB02.realtek.com.tw (172.21.6.95) by
 RTITCASV02.realtek.com.tw (172.21.6.19) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Wed, 20 Nov 2019 14:53:58 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB02.realtek.com.tw (172.21.6.95) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Wed, 20 Nov 2019 14:53:57 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::a4bf:5be3:6e60:69f9]) by
 RTEXMB03.realtek.com.tw ([fe80::a4bf:5be3:6e60:69f9%8]) with mapi id
 15.01.1779.005; Wed, 20 Nov 2019 14:53:57 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>
Subject: RE: [PATCH v3 6/8] ARM: dts: rtd1195: Add reset nodes
Thread-Topic: [PATCH v3 6/8] ARM: dts: rtd1195: Add reset nodes
Thread-Index: AQHVnRfWQHpokuCZUUmFW9fO0MELfKeQpIVQgAEDlACAAZ/isA==
Date: Wed, 20 Nov 2019 06:53:57 +0000
Message-ID: <4363fb2d71724974bd7969c93bd9d7a2@realtek.com>
References: <20191117072109.20402-1-afaerber@suse.de>
 <20191117072109.20402-7-afaerber@suse.de>
 <20b3d0956bed4338a540216df07f16e5@realtek.com>
 <ed7c483d-b518-c74f-f66d-a812d0858f4c@suse.de>
In-Reply-To: <ed7c483d-b518-c74f-f66d-a812d0858f4c@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.187]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_225415_120348_39ED25A9 
X-CRM114-Status: GOOD (  11.63  )
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
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Andreas,

> >
> > We don't use the DesignWare IP for the reset controller.
> 
> Thanks for reviewing.
> 
> We already merged the equivalent nodes for RTD129x into arm-soc.git.
> No Realtek review was received back when it was posted [1], sadly.
> 
> How does your reset controller differ from DesignWare, and how would you
> prefer to handle it?
> 
> a) Do you want to send patches for a new Realtek-specific dt-binding [2] and
> extend reset-simple driver to cover it as a copy&paste of the DesignWare
> of_device_id?
> 
> b) Do you believe you need to submit a completely new reset driver?
> 

The RTD1195, RTD1295 and RTD1395 reset controller is compatible with the reset-simple driver.
I want to use plan a) for them.

Besides, I'll submit a completely new reset driver for the RTD1619 
because the reset controller not compatible with the reset-simple driver.

Regards,
James


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
