Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CA51A97B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 10:58:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pSbXR7sB++YpIuETjhi9fpA/bMRPwVRZYE7QEgQngDQ=; b=R6ZTg9azTnWz01
	C1leGuy61VnlaL2sbXuz7D8eiDhksHbQzBbFDXoBkX8gvVp99Jy4PgIZO1fgdCDNm8RUr3ptycXp3
	v3O16R9LJe0kGwN0k85q1yHbim0uRZoaS0SL4wjhpwQrfy7ZJTsACCqbsV3y+V256G4suhZ226AMI
	iOxoKOnf68QlzMkm7Ow8JXRbTHvNU9lFsdU7mmgB/IhiMKyvRsreo1oTlaSS3vTDXUJFnhnb5zb5X
	0Q4mk9wwx3mgTp4cRAe6cTh0BbJKLzBEOrm4+b7HnrVlUUa6F2G0NFkKqO8Q9/0KYXRZ5ONNRst9B
	GKnDZMNYejoSZqi7NhKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOdsW-00035n-9E; Wed, 15 Apr 2020 08:58:40 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jOdsH-00034G-20; Wed, 15 Apr 2020 08:58:27 +0000
Authenticated-By: 
X-SpamFilter-By: ArmorX SpamTrap 5.69 with qID 03F8wAq55024222,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexmb06.realtek.com.tw[172.21.6.99])
 by rtits2.realtek.com.tw (8.15.2/2.66/5.86) with ESMTPS id 03F8wAq55024222
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Wed, 15 Apr 2020 16:58:10 +0800
Received: from RTEXMB05.realtek.com.tw (172.21.6.98) by
 RTEXMB06.realtek.com.tw (172.21.6.99) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Wed, 15 Apr 2020 16:58:09 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB05.realtek.com.tw (172.21.6.98) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Wed, 15 Apr 2020 16:58:09 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d]) by
 RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d%8]) with mapi id
 15.01.1779.005; Wed, 15 Apr 2020 16:58:09 +0800
From: =?utf-8?B?SmFtZXMgVGFpIFvmiLTlv5fls7Bd?= <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>
Subject: RE: [PATCH v3 1/2] dt-bindings: arm: realtek: Document RTD1319 and
 Realtek PymParticle EVB
Thread-Topic: [PATCH v3 1/2] dt-bindings: arm: realtek: Document RTD1319 and
 Realtek PymParticle EVB
Thread-Index: AQHV22q6vab9CDECFUe3xrmWUlkzCah2FMYAgAQvoVA=
Date: Wed, 15 Apr 2020 08:58:09 +0000
Message-ID: <a9685d4560a6445d81c4919b2a323f68@realtek.com>
References: <20200204145207.28622-1-james.tai@realtek.com>
 <20200204145207.28622-2-james.tai@realtek.com>
 <bf55ccbe-cbdf-7ba7-d701-aa84c20204e3@suse.de>
In-Reply-To: <bf55ccbe-cbdf-7ba7-d701-aa84c20204e3@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.154]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_015825_231199_9CE1C4D9 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
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

Thanks for your review!

>
> > diff --git a/Documentation/devicetree/bindings/arm/realtek.yaml
> > b/Documentation/devicetree/bindings/arm/realtek.yaml
> > index 845f9c76d6f7..3b48ae71fdd8 100644
> > --- a/Documentation/devicetree/bindings/arm/realtek.yaml
> > +++ b/Documentation/devicetree/bindings/arm/realtek.yaml
> > @@ -42,6 +42,12 @@ properties:
> >                 - synology,ds418 # Synology DiskStation DS418
> >             - const: realtek,rtd1296
> >
> > +      # RTD1319 SoC based boards
> > +      - items:
> > +          - enum:
> > +              - realtek,pymparticle # Realtek PymParticle EVB
> 
> The board seems labelled "PYM_PARTICLES".
> 
> While Wikipedia has nothing on that, I found this explanation:
> https://marvel.fandom.com/wiki/Pym_Particles
> 
> So, are you sure it's PymParticle and not "Pym Particle" with space or "Pym
> Particles" with space and plural S? The S would affect also the .dts filename.
>
I should change the string to "Pym Particles".

> For the compatible string the question is pymparticle or pym-particle.
> 
The compatible string is "pym-particles".

> By comparison, LION-SKIN was named lion-skin in the compatible and spelled
> Lion Skin in textual form. If you believe that should be fixed, now would be the
> time to revisit those patches that didn't make v5.7.
> 
I'll check those relevant patches.

Thank you.

Regards,
James


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
