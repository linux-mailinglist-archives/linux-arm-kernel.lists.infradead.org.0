Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBAF8FE04D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 15:42:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9RvQ7fXCpH6wQ3IsAxWgcp/lrdmPCEKaFlq5Uaax3ek=; b=OIwR00hbZWLeQS
	1BrKiVzUkwkTFOwdQ+P5R8wcTdcNOJ/SWaELBrEdqtp/As0qeToPBCxvyVT+nsYRKaJRTQAQ89IUr
	5ljeX723W3a28NtheRBs7byOG+kkC6pEgbeD0KfMYoql3Z12IQaCwFSjbdETrb5dCPMOTdbuFbJh4
	JgN00cVHj4+gejOhYRDCTGEC7dWyZ7PMhImckvOu7sW7Og8pTtae4vxGhC5meWsfKicuwkxxRb7D6
	72dxhC1v0POYvVHhdpggW54wP5gzrpjgc7aPPkeWO9X++ts4QSlkbkep3uiW2GzPgVUKFwp38Aj0z
	t7fc8PgaxLbmhxmfVEow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVcoJ-0006tE-Lo; Fri, 15 Nov 2019 14:42:55 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iVcoA-0006sa-61; Fri, 15 Nov 2019 14:42:48 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xAFEgTZu009752,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS11.realtek.com.tw[172.21.6.12])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xAFEgTZu009752
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 15 Nov 2019 22:42:29 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTITCAS11.realtek.com.tw (172.21.6.12) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Fri, 15 Nov 2019 22:42:29 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB03.realtek.com.tw (172.21.6.96) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Fri, 15 Nov 2019 22:42:28 +0800
Received: from RTEXMB03.realtek.com.tw ([::1]) by RTEXMB03.realtek.com.tw
 ([fe80::3d7d:f7db:e1fb:307b%12]) with mapi id 15.01.1779.005; Fri, 15 Nov
 2019 22:42:28 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>
Subject: RE: [PATCH v3 1/2] dt-bindings: arm: realtek: Document RTD1619 and
 Realtek Mjolnir EVB
Thread-Topic: [PATCH v3 1/2] dt-bindings: arm: realtek: Document RTD1619 and
 Realtek Mjolnir EVB
Thread-Index: AdWZPZ4hLyuFH8slSvOL26B5ueH3TQA5ONmAAGeERyA=
Date: Fri, 15 Nov 2019 14:42:28 +0000
Message-ID: <597b7241d80c4e1fb0fe7dad33281ba5@realtek.com>
References: <d655415326064b079b9d1d791024c725@realtek.com>
 <420ad4a0-a583-c3b9-5ce6-ff4d12e71511@suse.de>
In-Reply-To: <420ad4a0-a583-c3b9-5ce6-ff4d12e71511@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [114.37.161.94]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_064246_490711_50B5020C 
X-CRM114-Status: UNSURE (   7.99  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, 'DTML' <devicetree@vger.kernel.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andreas,

> > Define compatible strings for Realtek RTD1619 SoC and Realtek Mjolnir EVB.
> >
> > Signed-off-by: James Tai <james.tai@realtek.com>
> > ---
> 
> This is missing the requested change log here: What changed since v2?
> 
> If nothing changed, then you should've inserted my Reviewed-by from v2
> before your Signed-off-by.
> 

There is nothing changed. I'll correct the mistakes in next version.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
