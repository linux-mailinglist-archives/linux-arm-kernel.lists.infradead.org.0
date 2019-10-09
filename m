Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D58AD539E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 02:48:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sOutbZxt/wsRlpVPjjkDvJbt3w/JTHeLRM/0V2q/G9Y=; b=A08qfin05TaVp+
	k7tt1OA46r/2HXhTv/OfqXZnNGBVZrSj1fs4Yxm9KlaAfHEafWsi++ZahXKXldonn1VcBL2OyXAVg
	ULwAbrntZ5MufZ801s6gTpAkzPSTVZw/TwftsMtw+A6mGTko04VBCAcL+VbhLsQuRICnSoUSv/aHQ
	5OojzGAmp8Hhef8WYR3X3OBAKjG241i/ajsf6hg32NZmnYnFBk2JyfJulH14F1fTMzuILMq1IJIEw
	SU00ghiMCeORTInq/w1DQ2EpphUHFzSKRQtH+dMuYfj6avw243RMsU2xsWTVOxZpPbIKs2cn9Po5z
	K4tEwlM1NfBscUP6vE2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJS42-0002LB-MK; Sun, 13 Oct 2019 00:48:50 +0000
Received: from listssympa-test.colorado.edu ([128.138.129.156])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJS3W-0002Az-9Q
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 00:48:19 +0000
Received: from listssympa-test.colorado.edu (localhost [127.0.0.1])
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/sympa) with ESMTPS id
 x9D0lkNQ023777
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 12 Oct 2019 18:47:46 -0600
Received: (from root@localhost)
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/submit) id
 x9D0lj5W023759; Sat, 12 Oct 2019 18:47:45 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025; 
 h=from:to:cc:subject:date:message-id:mime-version        
 :content-transfer-encoding;       
 bh=QSdPkLvnnsMdiZ+6XfR6tWFXWqzKs2oliNxvPIoDunQ=;       
 b=eNviB35I7i63+r1g+2iDyKbCH56ABSueAeX/QFiRyX1Veje41eJbUiLkr6ugAfNFo1        
 uLANxIbk7WiyFJT9Ri8QIrsHeBQW39EwsLKzC3iylHW7tnmwEPUdXw41MmOBJ/GJ0Jmo        
 hOXq/hWVVsyK7K+/kIx33X0jkkphbou9C6O4lCHo+b3Uo8stCJehY2a94z9Wx0YDxn2Z        
 k4HgdR3pTepYvq1w6pd0mK1QPuaMiVAfevFknU+Jc+FZvxHFadGcUbiF09XXGiBXyaDQ        
 qTvrQVDF4gZs92snLr5h9QKmKn3npTOBwoRnGZmS5TOOVA9adwYm3PuK9ixc6q1WjlVQ        
 uGeA==
Received: from DM6PR03MB3931.namprd03.prod.outlook.com (2603:10b6:a02:ee::24)
 by BYAPR03MB4376.namprd03.prod.outlook.com with HTTPS via
 BYAPR02CA0011.NAMPRD02.PROD.OUTLOOK.COM; Wed, 9 Oct 2019 18:46:45 +0000
Received: from CY4PR03CA0098.namprd03.prod.outlook.com (2603:10b6:910:4d::39)
 by
 DM6PR03MB3931.namprd03.prod.outlook.com (2603:10b6:5:46::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.2347.16; Wed, 9 Oct 2019 17:48:00 +0000
Received: from BY2NAM01FT004.eop-nam01.prod.protection.outlook.com
 (2a01:111:f400:7e42::206) by CY4PR03CA0098.outlook.office365.com
 (2603:10b6:910:4d::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Wed, 9 Oct 2019 17:48:00 +0000
Received: from ipmx2.colorado.edu (128.138.128.232) by
 BY2NAM01FT004.mail.protection.outlook.com (10.152.69.66) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2347.16 via Frontend Transport; Wed, 9 Oct 2019 17:47:59 +0000
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 11:02:44 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 10:26:22 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 10:03:36 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:50:40 -0600
Received: from ipmx3.colorado.edu ([128.138.67.74])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 09:43:00 -0600
Received: from mx-spsc.colorado.edu (HELO mx.colorado.edu) ([128.138.67.77]) by
 mx.colorado.edu with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019
 09:38:37 -0600
Received: from mx-spsc.colorado.edu (HELO mx.colorado.edu) ([128.138.67.77]) by
 mx.colorado.edu with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019
 09:33:42 -0600
Received: from mx-spsc.colorado.edu (HELO mx.colorado.edu) ([128.138.67.77]) by
 mx.colorado.edu with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019
 09:30:37 -0600
Received: from ipmx2.colorado.edu ([128.138.128.232]) by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 09:29:18 -0600
Received: from vger.kernel.org ([209.132.180.67]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:27:34 -0600
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand id
 S1731349AbfJIP1d (ORCPT <rfc822; michael.gilroy@colorado.edu>);
 Wed, 9 Oct 2019 11:27:33 -0400
Received: from mail-yb1-f196.google.com ([209.85.219.196]:43599 "EHLO       
 mail-yb1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org       
 with ESMTP id S1731173AbfJIP1c (ORCPT       
 <rfc822; linux-kernel@vger.kernel.org>); Wed, 9 Oct 2019 11:27:32 -0400
Received: by mail-yb1-f196.google.com with SMTP id y204so855295yby.10; Wed, 09
 Oct 2019 08:27:31 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])        by smtp.gmail.com with ESMTPSA id
 g40sm611863ywk.14.2019.10.09.08.27.28        (version=TLS1_3
 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);        Wed, 09 Oct 2019
 08:27:29 -0700 (PDT)
Authentication-Results: spf=none (sender IP is 128.138.128.232)
 smtp.mailfrom=vger.kernel.org; 
 o365.colorado.edu; dkim=pass (signature was verified)
 header.d=gmail.com;o365.colorado.edu; dmarc=pass action=none
 header.from=gmail.com;
Received-SPF: None (protection.outlook.com: vger.kernel.org does not designate
 permitted sender hosts)
IronPort-SDR: acx6iDzlAaSTvSVIcNPfXuKCryDkZkIxuBd0mjor0P1lzEENqOF4aFuqpRVG7/zVSjxjmZ2ce+
 zTPIFZ+dtpSgohtLReRBhe9bT93U6Vb7E=
IronPort-SDR: esHLk16USEU+A4jAkCN4/DH21oVokTOwP1JmlrD8jyQXb4JXg8awLkTHc0Esr3HFdPlTWi2Zvk
 mZ4Py6gCypMjw80slqT4UsLMaDuzYdNRs=
IronPort-SDR: jmm4LYHYK8qX4szMkyaC7+pi/4bcRTJb1CxgqvyNf+FzWG61b3Cdxzj8i3suTn2qx5L8gB0zBh
 yB3Mw+ngxb1uQF/T7ENi2/PoK16YLXt0A=
IronPort-SDR: 4WxSf0mr7kJ6Vkfdw4r7aVPBiReCRb35w+3FPs3b7fDWfPkwX4BhzMqamND9v1tBAs+qJ5+JDT
 Ur3YXu6dqCgnM58AOHM59TKaVs2oEnQIo=
IronPort-SDR: xsgJDbsmhh8dkpp/Zl2h1KMtX4Xlj3tPgrbmhz/gOdA5xyJWffmjq98NuyCauj2lXLDDObB3uz
 DyTItWWg3wNBZw1eghz7oFLcukBAj5I/M=
IronPort-SDR: ZqSgbvxq55oBHhuujQqfMnGtjFMbAHpgqb0aEy6AIn73bC7agrtN2+mnvu8KWeDhCtVt/Xktr2
 F4f0IOzZbbcvhtXLr7H7+6FfM+4qbCCgI=
IronPort-SDR: nzmH8vvRtRgoRVrY3LkAlOfUUPS/+3NFRzsxMDk/+aexaEN0EJFuO59U1xYqTZrdfj9Zt9yw6Z
 3UKnCId4C9l4RYP3g9Pa5TCji0uqkXx8c=
IronPort-SDR: U/S3dApl14faTRWBc6jPfknT5jAChVA0iloiKD4OEBGmILg/S9DJURdZCRgErqnmQNorT5bBWp
 SAjFf7VeoCes4/PD2mKfSnuxI+v9OBxe4=
IronPort-SDR: CTgz926LLgrv9pD1Ktwi2KiAQztOPEjw/4TyBr5RVVEQwOqtt+e/FOI2vHs0nxBhU5as+9irim
 ciL+EpPhNodYMOefDGMu1MKbcI3A21Jew=
IronPort-SDR: fX+BYTMiJtWYy3zxedFvLEl+uZ3hVlGrDlGmp3rqJ6hoKohCkJb0JPsomMROnWiLCy3JeVDFMe
 u3/lGFK6Qqcu17/O+NmCgzUPFtMYSCWG4=
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-Original-Recipients: gasiewsk@o365.colorado.edu
X-Original-Recipients: gasiewsk@o365.colorado.edu
X-Original-Recipients: gasiewsk@o365.colorado.edu
X-Original-Recipients: gasiewsk@o365.colorado.edu
X-Original-Recipients: gasiewsk@o365.colorado.edu
X-Original-Recipients: gasiewsk@o365.colorado.edu
X-Original-Recipients: gasiewsk@o365.colorado.edu
X-Original-Recipients: gasiewsk@o365.colorado.edu
X-Original-Recipients: migi9492@g.colorado.edu
Authentication-Results-Original: mx.colorado.edu;
 dkim=pass (signature verified)
 header.i=@gmail.com
IronPort-PHdr: =?us-ascii?q?9a23=3AoRyechXAXfh2xlrY+4D7TwXQYJzV8LGtY1w5yb?=
 =?us-ascii?q?sCzp9Qe6C+9ojjO0qBu68/kgqQDs3Svuhfgq/Ns6m6BDJTqZ3Uqn0GeYxBW1?=
 =?us-ascii?q?gfhMEfjwEsU6vnQQWzZLaiJ2Q2SctHXV5huXq8NBsdA5OkPwSM+yXosG13eF?=
 =?us-ascii?q?23fUI9bqy9GtvclcOyhfy1qZbYMR5Vjjiwaq8gIByqoFfUu9INiIRvb6c9mB?=
 =?us-ascii?q?7Ip3YNZelM3mJvIzfx1160ro/4tNYroS9Xve4s8dIFTb/zeb82QKYdATItNG?=
 =?us-ascii?q?w04sK40HuLBUPHrjNUGm8WxyNzDzDGyA/8WIzUvirI9bRN1hPEIfLYfY8tSx?=
 =?us-ascii?q?e5taBvSTn4lh8mMBIk9liC2akSxOoT6Frp71R1loPyfoC/b6dfIaKDJpAAHG?=
 =?us-ascii?q?UCBMd9Rg9LKaPhMaIlNPcMFOto6LDTpmEfnUKACAuhWLri6DV1h1v1x/Mn3M?=
 =?us-ascii?q?0vNy/BhWlCV5pG+Dyc5J29KYM7d/CUxqqX8jTSQdFqiA38uLHpaAsBrNu1Yu?=
 =?us-ascii?q?khXNXK7Wo9PFjEn1GwltP5OTaK+9wwv1iEs7NFUMWFqSkIiVlTpz/KpI9kws?=
 =?us-ascii?q?GBzspdglDjxTw+wLkLG8apaxFYIpmnMYsL7BHCNYh1WsMoRHw5k3gdlrktmZ?=
 =?us-ascii?q?n4dnM3z8Q82zX9Zvy2KYHZvgCya/bJEBtogihXHdD3z176uQDogqX/Cum73G?=
 =?us-ascii?q?wRthZIiujSrykSiQTfss2kE8JF406E2Aim2Q3NxOJCHAMWnun1GYAx4pA5mr?=
 =?us-ascii?q?UYjE7CMHenqHXZjYWmZ0wIw43Ko6yvKv2u7tfULrNqkDjAHopylf6kUL4jNC?=
 =?us-ascii?q?wUAmjKwMe597u4+1XFZ59ViccwvZvci83mAuMlj/+wDxBk190b9jXuDietjs?=
 =?us-ascii?q?1BonsDEmsgGlrPx8ChcxmGaO3XAN7q1gfkgHJq3ffAJrr7HtDXI2PelKu0Zb?=
 =?us-ascii?q?9m8B0Gklga0Mxf6pRIC7oIPPP0XArLucfFCgMibVPmxvahA9J50ZkXVWXJD6?=
 =?us-ascii?q?OEY+vesl6Ns/omOPLEJJQUtzD0N+U/6rbwgGU4l14Qcejh3ZYeZH2iWPUzC0?=
 =?us-ascii?q?qcaHvoxNwGFGo=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3ACwKXpxVA9tejzFxAdgNUUO4E5NfV8LGtY1w5yb?=
 =?us-ascii?q?sCzp9Qe6C+9ojjO0qBu68/kgqQDs3Svuhfgq/Ns6m6BDJTqZ3Uqn0GeYxBW1?=
 =?us-ascii?q?gfhMEfjwEsU6vnQQWzZLaiJ2Q2SctHXV5huXq8NBsdA5OkPwSM+yXosG13eF?=
 =?us-ascii?q?23fUI9bqy9GtvclcOyhfy1qZbYMR5Vjjiwaq8gIByqoFfUu9INiIRvb6c9mB?=
 =?us-ascii?q?7Ip3YNZelM3mJvIzfx1160ro/4tNYroS9Xve4s8dIFTb/zeb82QKYdATItNG?=
 =?us-ascii?q?w04sK40HuLBUPHrjNUGm8WxyNzDzDGyA/8WIzUvirI9bRN1hPEIfLYfY8tSx?=
 =?us-ascii?q?e5taBvSTn4lh8mMBIk9liC2akSxOoT6Frp71R1loPyfoC/b6dfIaKDJpAAHG?=
 =?us-ascii?q?UCBMd9Rg9LKaPhMaIlNPcMFOto6LDTpmEfnUKACAuhWLri6DV1h1v1x/Mn3M?=
 =?us-ascii?q?0vNy/BhWlCV5pG+Dyc5J29KYM7d/CUxqqX8jTSQdFqiA38uLHpaAsBrNu1Yu?=
 =?us-ascii?q?khXNXK7Wo9PFjEn1GwltP5OTaK+9wwv1iEs7NFUMWFqSkIiVlTpz/KpI9kws?=
 =?us-ascii?q?GBzspdglDjxTw+wLkLG8apaxFYIpmnMYsL7BHCNYh1WsMoRHw5k3gdlrktmZ?=
 =?us-ascii?q?n4dnM3z8Q82zX9Zvy2KYHZvgCya/bJEBtogihXHdD3z176uQDogqX/Cum73G?=
 =?us-ascii?q?wRthZIiujSrykSiQTfss2kE8JF406E2Aim2Q3NxOJCHAMWnun1GYAx4pA5mr?=
 =?us-ascii?q?UYjE7CMHenqHXZjYWmZ0wIw43Ko6yvKv2u7tfULrNqkDjAHopylf6kUL4jNC?=
 =?us-ascii?q?wUAmjKwMe597u4+1XFZ59ViccwvZvci83mAuMlj/+wDxBk190b9jXuDietjs?=
 =?us-ascii?q?1BonsDEmsgGlrPx8ChcxmGaO3XAN7q1gfkgHJq3ffAJrr7HtDXI2PelKu0Zb?=
 =?us-ascii?q?9m8B0Gklga0Mxf6pRIC7oIPPP0XArLucfFCgMibVPmxvahA9J50ZkXVWXJD6?=
 =?us-ascii?q?OEY+vesl6Ns/omOPLEJJQUtzD0N+U/6rbwgGU4l14Qcejh3ZYeZH2iWPUzC0?=
 =?us-ascii?q?qcaHvoxNwGFGo=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AFU/RXB0BKSgA/oLismDT+DJfSgsGnvDZIAcR95?=
 =?us-ascii?q?M7irVILPr5rYq3ZR+X7KB3l1aMRoXSsa8a2KLd5rrtXWUQ7JrGqn0GeYxBW0?=
 =?us-ascii?q?xg641e10RoSIbNBRj0Kffra2oxG8ERHEQwpSnibxENQputAj+a6jX6pXZaUh?=
 =?us-ascii?q?WqOxByI7bpHdzZhJasyuqw9pbPMQlBmDfvZL5pNxy5oEDQupsTgI5vb7g80A?=
 =?us-ascii?q?DIpX0tGawejSsgbRrb10T34cGs8Zh/tjhKsvQ6+cNaFKj8dKM0TLpXX1FEey?=
 =?us-ascii?q?h9rIWj/VHJTV623XckUUEIlBxTJgTE3lKkbpnL7DfFmNpCwTu5JpfxSbESSS?=
 =?us-ascii?q?qazqBHVRnR3XRiVXZxuCmfwoQ4hvdWhgygjUci4tHVPtrWLqNxPfncUcI5T0?=
 =?us-ascii?q?FhA5h4fRdcD6qxX8w2Ies7LNYBkYT/qgdXoDm0OAiIB/mx1zBhiFnY2vRfsa?=
 =?us-ascii?q?xpWUmOlERoV88qmVLEjd/2a5gTQM6X8PjyzGX6TulN+TrX0beTIz0+utWvT5?=
 =?us-ascii?q?krcNvV6XZwCwXAkXiolIDVIG/M8+EqmUrcwMg4d+eo7gxv40k56nDnjo8srb?=
 =?us-ascii?q?nQwYIq9G7f5AYm48VyJvyoExVLOdynE4NQvSaHZqAoZZ8maEFv+yxh97pWoo?=
 =?us-ascii?q?KQXiUK+c4ulkLNOsOXK7mk8hS5ZoPzaX8wzDotMPr3hEqS/kSakfXAW9GFzk?=
 =?us-ascii?q?8TsXRdnoHJlSk07wHaz8m5Y/Vw4Gmi3wvM9QuQxNNaMWAanKb0IKMrw5Box6?=
 =?us-ascii?q?ojnkXpLj7/tHyT7ufePg1ssqDgo/3bfK/fmLOya4BGkVCkKaIKgJG/UN0bNy?=
 =?us-ascii?q?sIBG6DxcOWy7rZ+2LLRY4XstoRrICIuZzFFMFAnrOaUg5F2dg6sim9Cwmftb?=
 =?us-ascii?q?ZQ1TFPZBoNMFqaoIXAbgSdaOC9DO24hUyriisu3f3dI7n9V43ENWOQyu2zVK?=
 =?us-ascii?q?th60Na1As4xMxe4JQRMLwaPfbvQRGu5tnISBQ+NwuuyurgTthxy9BWVWGOB/?=
 =?us-ascii?q?qBObjJ+R+T5+0pKvWRfoJdpjvnKvYk6vKvxX80kFMQZ++oiLMYbXm5GrJtJE?=
 =?us-ascii?q?CU?=
IronPort-PHdr: =?us-ascii?q?9a23=3AoY6XnxdAiBGz1xTaRobXAJ+alGMj4uimEi00z9?=
 =?us-ascii?q?8KlbtKb62//pPkYhKFt+s41QyBVNDB8PsBkOrf6f2+CiQLtIyMtHkSfZALTR?=
 =?us-ascii?q?IBgNUbk19FYobNQQWzZLaiY3k1Gc1DUBlu+HToeVMAQp6nOQSK+CDhiFxaUl?=
 =?us-ascii?q?23fUI9buSgFJTVipar0LK58M/Ifg9KiTGhM797MBjkqAjKrcAZjM5jJvQ0yx?=
 =?us-ascii?q?7E52VFYf9XwmUNRxrb1160ro/4tMxo9CJMtvQ9stJaWKPhcakiCLFeBzMqMm?=
 =?us-ascii?q?Y6t6iJ/VGLBUPHrjMWUjAvqRZwACzb6hfhe5vwgGikhuRHhjWlE/3JVKIXQm?=
 =?us-ascii?q?6l66ZNWAHQqSArKjgApTKy6IQ4xOoT6FrprUly5ZDVStrIFaV/IPieZ4oVBj?=
 =?us-ascii?q?BActdyXQdhX92VRbASAsMMDaFhgYjHtmtXkxa8CFX1CcHl9z5shWWowKIT3c?=
 =?us-ascii?q?IPFlijvkRoV5pG+Dyc5MjRHYECcOq2k5bJ3BvhU6Js2GfEyZLTUh0LmM7XDJ?=
 =?us-ascii?q?9vau7y22J0FhLBrmrPtYrgIB6t6+g9rDTCyu9Hf8DopEx/iQR2x1rnjo9kws?=
 =?us-ascii?q?GBzsoV7WDdsiVG/rguNP7naw08Yv+0S8Bg7yOZNJN2SMQ/Eko2n3o+4Z0B+p?=
 =?us-ascii?q?TgQS9a04gM5RPfWqaOItSasy3zDNe9MTEithcHMPr3z176uQDoybHcWcWOi0?=
 =?us-ascii?q?52ozJ0jMCVqS4V20TWyZG+cuZ020af8DiCyS7Q7NwHA0t3u5jFO74Py7Ifna?=
 =?us-ascii?q?cZsGqbTx/Gt0TcvL6fWnxBmKDgo6yvKv2u7oagKZVNtC3QbqscgZ3lGuIcKF?=
 =?us-ascii?q?UODlG4/Me6j7v7wWrTX7JwiNIEl5KEjLf9G+1Kr6KmMgoO6psAuhevBGm/ie?=
 =?us-ascii?q?samUc+STANMFrPx8ChcxnTD/3RWKLsy0TpkS1swejBJKGkGJjWM3zfxa/oZq?=
 =?us-ascii?q?0usRQO4Rcvzd1Z+5NfA60AJ/S2YELqqdjEFUFmYQmkhe3gDNJn348ZH2+DH/?=
 =?us-ascii?q?zRPKDTtAqQ7/k0a6mXZYATsSrgMfVt+fP0jHE4lFNcNamk1Jcacja5S9xpJk?=
 =?us-ascii?q?yYZTznhdIM?=
IronPort-PHdr: =?us-ascii?q?9a23=3AH2h5ThTG/cj2rMZ95PVGiWlQ8Npsv+ypbCI2y7?=
 =?us-ascii?q?9ipqxHdrmq45XlOhKBv6dz2QaaFYyO8elNzvHWuvq9Bz9I6sObvXQLYJFAEA?=
 =?us-ascii?q?UIjcwGkgBzZazNQQWzZLaiJyBvE8FLVVsj9Ha+YgBOTZymPgOL+ifvvltwUl?=
 =?us-ascii?q?23fUI9bqz1T4DIiMHly+fg8JaBeBhChje2feF+JQm7/wDcrdIfjoYnK6pjzx?=
 =?us-ascii?q?rMrz5Wdv5NxGRuQDDb1160ro/4tNYx+CNWp/8n64tcS6z8ZKo1V/lVCj8hP2?=
 =?us-ascii?q?Ez656O11GLBUPHrjNUWGVDqyFEOwvh8hf8RbL9sxm56Npz4neGAuPGcqkmei?=
 =?us-ascii?q?/46KNqbg/2sAYAGyM/yTSE7644xOoT6Frp7xYqzqjKYavOadshf/2GPslDSi?=
 =?us-ascii?q?kbX+pAdCZqIt7iRqE0EucoMNYflqf8nUo+9CWzBwTwXe7NwAJJonzsg7A1+u?=
 =?us-ascii?q?oHPwafuW5oV5pG+Dyc5J3oEI40QcG/z/b3zCTtTc8H4zat0anSaTAsi8izBu?=
 =?us-ascii?q?NdbtH16lsETALUinWv9pDjOiy47tkBg3fHts9lcsiNzEEF8yN0pV3Njo9kws?=
 =?us-ascii?q?GBzspdynf07GJ5/7gLPsybF204Jt2FAMALh3mYNIhuQsklXjBD5gFmzpYmvt?=
 =?us-ascii?q?2xJxUNmI877DzSa83detnU8EPcRL6gDSd+3kAAGvr3z176uQDogu6gdsa46g?=
 =?us-ascii?q?1Skiddo8fV729TzxCL7+vec8Ng92Kg5x+B2h796ed5YmI/1oTpNY4B7Lc8uZ?=
 =?us-ascii?q?Euu0XtRn7GqGr3pp+Hf2kdn4rgo6yvKv2u7teFC5Fusz/SHPghqNfuW/8+Fh?=
 =?us-ascii?q?JTXzmi2uGf0ubl5XHeaqpNtPsZoKzi7az9Avoy96e1HD5Qib4+yEe+Hzz4yY?=
 =?us-ascii?q?0nn305FTcnMFrPx8ChcxmGPd/1JKLq0By81TZxwPbeOaf9R4/ANWXHjOL5dK?=
 =?us-ascii?q?1muBQGmiMu0dBS4Y5VAbgdIfX1H3X8r8HcEgRnbF6x06DsD9F6zIoSXiSCDr?=
 =?us-ascii?q?LKeK/RsFrd/us0OKHMf44avj/hNuIor+Djl343mFIRPOGp0JIbZWr+H6FOLE?=
 =?us-ascii?q?CQYH6qidAEHA=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AXArmPxezSL3GgKfVkh42hKE+lGMj4uimEi00z9?=
 =?us-ascii?q?8KlbtKb62//pPkYhKFt+s41QyBVNDB8PsBkOrf6f2+CiQLtIyMtHkSfZALTR?=
 =?us-ascii?q?IBgNUbk19FYobNQQWzZLaiY3k1Gc1DUBlu+HToeVMAQp6nOQSK+CDhiFxaUl?=
 =?us-ascii?q?23fUI9buSgFJTVipar0LK58M/Ifg9KiTGhM797MBjkqAjKrcAZjM5jJvQ0yx?=
 =?us-ascii?q?7E52VFYf9XwmUNRxrb1160ro/4tMxo9CJMtvQ9stJaWKPhcakiCLFeBzMqMm?=
 =?us-ascii?q?Y6t6iJ/VGLBUPHrjMWUjAvqRZwACzb6hfhe5vwgGikhuRHhjWlE/3JVKIXQm?=
 =?us-ascii?q?6l66ZNWAHQqSArKjgApTKy6IQ4xOoT6FrprUly5ZDVStrIFaV/IPieZ4oVBj?=
 =?us-ascii?q?BActdyXQdhX92VRbASAsMMDaFhgYjHtmtXkxa8CFX1CcHl9z5shWWowKIT3c?=
 =?us-ascii?q?IPFlijvkRoV5pG+Dyc5MjRHYECcOq2k5bJ3BvhU6Js2GfEyZLTUh0LmM7XDJ?=
 =?us-ascii?q?9vau7y22J0FhLBrmrPtYrgIB6t6+g9rDTCyu9Hf8DopEx/iQR2x1rnjo9kws?=
 =?us-ascii?q?GBzsoV7WDdsiVG/rguNP7naw08Yv+0S8Bg7yOZNJN2SMQ/Eko2n3o+4Z0B+p?=
 =?us-ascii?q?TgQS9a04gM5RPfWqaOItSasy3zDNe9MTEithcHMPr3z176uQDoybHcWcWOi0?=
 =?us-ascii?q?52ozJ0jMCVqS4V20TWyZG+cuZ020af8DiCyS7Q7NwHA0t3u5jFO74Py7Ifna?=
 =?us-ascii?q?cZsGqbTx/Gt0TcvL6fWnxBmKDgo6yvKv2u7oagKZVNtC3QbqscgZ3lGuIcKF?=
 =?us-ascii?q?UODlG4/Me6j7v7wWrTX7JwiNIEl5KEjLf9G+1Kr6KmMgoO6psAuhevBGm/ie?=
 =?us-ascii?q?samUc+STANMFrPx8ChcxnTD/3RWKLsy0TpkS1swejBJKGkGJjWM3zfxa/oZq?=
 =?us-ascii?q?0usRQO4Rcvzd1Z+5NfA60AJ/S2YELqqdjEFUFmYQmkhe3gDNJn348ZH2+DH/?=
 =?us-ascii?q?zRPKDTtAqQ7/k0a6mXZYATsSrgMfVt+fP0jHE4lFNcNamk1Jcacja5S9xpJk?=
 =?us-ascii?q?yYZTznhdIM?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0GWBgCh/p1dh0pDioBlHQEBAQkBEQU?=
 =?us-ascii?q?FAYF7ghuBRh0SKo0lhVmDDYh9dIkUhmdFAQEBAQEBAQEBBgEBLQIBAQEBhD6?=
 =?us-ascii?q?CUiM4EwIBAgkBAQEDAQEBAgEFAgEBAgIQAQEBCgsJCCmFNAyDRjswAQEBAQE?=
 =?us-ascii?q?BAQEBAQEBAQEBAQEBAQEVAi1UKQEBGwUCDyABDQEbHQEDAgkCBRA7AyARAQU?=
 =?us-ascii?q?BIxcWB4MAgWoBAx2jY4EDPIw7BQEXgn4FgQSDOgoZJw1mgTwCBxKBIoc1gzy?=
 =?us-ascii?q?BHYIXgRGCXYVMhVEEjQEEn1BuB4IlhiaOcxuNe4tFLY4AmTYCCgcGDyOBRoF?=
 =?us-ascii?q?7TSOBAYI7UBAUgU+Dc4pvWIEFAzuTIgEB?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0FAAgAs/Z1dfU1DioBlhFyBYxKNT5J?=
 =?us-ascii?q?XiRSGZ0UBAQEBAQEBAQEGAQEtAgEBAQGEPoJ1OBMDAgkBAQEDAQICAQUCAQE?=
 =?us-ascii?q?CAhABAQsUCIVpg0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQKBASkiAg8gAQ0?=
 =?us-ascii?q?BGx0BAwIJAgUQOwMgEQEFASMXFgeEagEDHaNigQM8jDsFAReCfgWBBIM7Chk?=
 =?us-ascii?q?nDWaBPAIHEg6ISYM8gzSDboVMhVGNBZ9UbgeCJYYmjnMbjXuLRS2OAJk2Ago?=
 =?us-ascii?q?HBg8jgUaBe00jgQGDCxAUkDGBXQM7kyIBAQ?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0FAAgAs/Z1dfU1DioBlhFyBYxKNT5J?=
 =?us-ascii?q?XiRSGZ0UBAQEBAQEBAQEGAQEtAgEBAQGEPoJ1OBMDAgkBAQEDAQICAQUCAQE?=
 =?us-ascii?q?CAhABAQsUCIVpg0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQKBASkiAg8gAQ0?=
 =?us-ascii?q?BGx0BAwIJAgUQOwMgEQEFASMXFgeEagEDHaNigQM8jDsFAReCfgWBBIM7Chk?=
 =?us-ascii?q?nDWaBPAIHEg6ISYM8gzSDboVMhVGNBZ9UbgeCJYYmjnMbjXuLRS2OAJk2Ago?=
 =?us-ascii?q?HBg8jgUaBe00jgQGDCxAUkDGBXQM7kyIBAQ?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0FAAgAs/Z1dfU1DioBlhFyBYxKNT5J?=
 =?us-ascii?q?XiRSGZ0UBAQEBAQEBAQEGAQEtAgEBAQGEPoJ1OBMDAgkBAQEDAQICAQUCAQE?=
 =?us-ascii?q?CAhABAQsUCIVpg0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQKBASkiAg8gAQ0?=
 =?us-ascii?q?BGx0BAwIJAgUQOwMgEQEFASMXFgeEagEDHaNigQM8jDsFAReCfgWBBIM7Chk?=
 =?us-ascii?q?nDWaBPAIHEg6ISYM8gzSDboVMhVGNBZ9UbgeCJYYmjnMbjXuLRS2OAJk2Ago?=
 =?us-ascii?q?HBg8jgUaBe00jgQGDCxAUkDGBXQM7kyIBAQ?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0GnAwAj9p1dh+iAioBlHQEBAQkBEQU?=
 =?us-ascii?q?FAYF7ghuBdSqNJYVagw2IfXSJFIZnRQEBAQEBAQEBAQYBAS0CAQEBAYQ+glI?=
 =?us-ascii?q?jOBMCAQIJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQgphTQMg0Y7MAEBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEBAQEBAQEBFQItVCkBARsFAg8gAQ0BGx0BAwIJAgUQOwMgEQEFASM?=
 =?us-ascii?q?XFgeDAIFqAQMdo1qBAzyMOwUBF4J+BYEEgzoKGScNZoE8AgcSgSKHNYM8gR2?=
 =?us-ascii?q?CF4ERgl2FTIVRBI0BBJ9QbgeCJYYmjnMbjXuLRS2OAJk2AgoHBg8jgUaBe00?=
 =?us-ascii?q?jgQGCO1AQFIFPg3OKbycxgQUDO5MiAQE?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0FxBAC/951dh0O0hNFlHgELHIQWgUQ?=
 =?us-ascii?q?xKo0lhVqCI2qIfXSJFIZnRQEBAQEBAQEBAQYBASwBAgEBAQGEPoJSIzgTAgE?=
 =?us-ascii?q?CCQEBAQMBAQECAQUCAQECAhABAQEKCwkIKYU0DINGOzABAQEBAQEBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEBARUCLVQpARwFAg8gAQ0BGx0BAwIJAgUQOwMgEQEFASMXFgeDAIF?=
 =?us-ascii?q?qAQMdo1GBAzyMOwUBF4J+BYEEgzwKGScNZoE8AgcSgSKHNYM8gR2CF4ERgl2?=
 =?us-ascii?q?FTIVRBI0BBJ9QbgeCJYYmjnMbjXuLRS2OAJk2AgoHBg8jgUaBe00jgQGCO1A?=
 =?us-ascii?q?QFIFPg3OKbyYygQUBAQE7kyIBAQ?=
X-IPAS-Result: =?us-ascii?q?A0GWBgCh/p1dh0pDioBlHQEBAQkBEQUFAYF7ghuBRh0SK?=
 =?us-ascii?q?o0lhVmDDYh9dIkUhmdFAQEBAQEBAQEBBgEBLQIBAQEBhD6CUiM4EwIBAgkBA?=
 =?us-ascii?q?QEDAQEBAgEFAgEBAgIQAQEBCgsJCCmFNAyDRjswAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEVAi1UKQEBGwUCDyABDQEbHQEDAgkCBRA7AyARAQUBIxcWB4MAgWoBA?=
 =?us-ascii?q?x2jY4EDPIw7BQEXgn4FgQSDOgoZJw1mgTwCBxKBIoc1gzyBHYIXgRGCXYVMh?=
 =?us-ascii?q?VEEjQEEn1BuB4IlhiaOcxuNe4tFLY4AmTYCCgcGDyOBRoF7TSOBAYI7UBAUg?=
 =?us-ascii?q?U+Dc4pvWIEFAzuTIgEB?=
X-IPAS-Result: =?us-ascii?q?A0FAAgAs/Z1dfU1DioBlhFyBYxKNT5JXiRSGZ0UBAQEBA?=
 =?us-ascii?q?QEBAQEGAQEtAgEBAQGEPoJ1OBMDAgkBAQEDAQICAQUCAQECAhABAQsUCIVpg?=
 =?us-ascii?q?0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQKBASkiAg8gAQ0BGx0BAwIJAgUQO?=
 =?us-ascii?q?wMgEQEFASMXFgeEagEDHaNigQM8jDsFAReCfgWBBIM7ChknDWaBPAIHEg6IS?=
 =?us-ascii?q?YM8gzSDboVMhVGNBZ9UbgeCJYYmjnMbjXuLRS2OAJk2AgoHBg8jgUaBe00jg?=
 =?us-ascii?q?QGDCxAUkDGBXQM7kyIBAQ?=
X-IPAS-Result: =?us-ascii?q?A0FAAgAs/Z1dfU1DioBlhFyBYxKNT5JXiRSGZ0UBAQEBA?=
 =?us-ascii?q?QEBAQEGAQEtAgEBAQGEPoJ1OBMDAgkBAQEDAQICAQUCAQECAhABAQsUCIVpg?=
 =?us-ascii?q?0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQKBASkiAg8gAQ0BGx0BAwIJAgUQO?=
 =?us-ascii?q?wMgEQEFASMXFgeEagEDHaNigQM8jDsFAReCfgWBBIM7ChknDWaBPAIHEg6IS?=
 =?us-ascii?q?YM8gzSDboVMhVGNBZ9UbgeCJYYmjnMbjXuLRS2OAJk2AgoHBg8jgUaBe00jg?=
 =?us-ascii?q?QGDCxAUkDGBXQM7kyIBAQ?=
X-IPAS-Result: =?us-ascii?q?A0FAAgAs/Z1dfU1DioBlhFyBYxKNT5JXiRSGZ0UBAQEBA?=
 =?us-ascii?q?QEBAQEGAQEtAgEBAQGEPoJ1OBMDAgkBAQEDAQICAQUCAQECAhABAQsUCIVpg?=
 =?us-ascii?q?0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQKBASkiAg8gAQ0BGx0BAwIJAgUQO?=
 =?us-ascii?q?wMgEQEFASMXFgeEagEDHaNigQM8jDsFAReCfgWBBIM7ChknDWaBPAIHEg6IS?=
 =?us-ascii?q?YM8gzSDboVMhVGNBZ9UbgeCJYYmjnMbjXuLRS2OAJk2AgoHBg8jgUaBe00jg?=
 =?us-ascii?q?QGDCxAUkDGBXQM7kyIBAQ?=
X-IPAS-Result: =?us-ascii?q?A0GnAwAj9p1dh+iAioBlHQEBAQkBEQUFAYF7ghuBdSqNJ?=
 =?us-ascii?q?YVagw2IfXSJFIZnRQEBAQEBAQEBAQYBAS0CAQEBAYQ+glIjOBMCAQIJAQEBA?=
 =?us-ascii?q?wEBAQIBBQIBAQICEAEBAQoLCQgphTQMg0Y7MAEBAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBFQItVCkBARsFAg8gAQ0BGx0BAwIJAgUQOwMgEQEFASMXFgeDAIFqAQMdo?=
 =?us-ascii?q?1qBAzyMOwUBF4J+BYEEgzoKGScNZoE8AgcSgSKHNYM8gR2CF4ERgl2FTIVRB?=
 =?us-ascii?q?I0BBJ9QbgeCJYYmjnMbjXuLRS2OAJk2AgoHBg8jgUaBe00jgQGCO1AQFIFPg?=
 =?us-ascii?q?3OKbycxgQUDO5MiAQE?=
X-IPAS-Result: =?us-ascii?q?A0FxBAC/951dh0O0hNFlHgELHIQWgUQxKo0lhVqCI2qIf?=
 =?us-ascii?q?XSJFIZnRQEBAQEBAQEBAQYBASwBAgEBAQGEPoJSIzgTAgECCQEBAQMBAQECA?=
 =?us-ascii?q?QUCAQECAhABAQEKCwkIKYU0DINGOzABAQEBAQEBAQEBAQEBAQEBAQEBARUCL?=
 =?us-ascii?q?VQpARwFAg8gAQ0BGx0BAwIJAgUQOwMgEQEFASMXFgeDAIFqAQMdo1GBAzyMO?=
 =?us-ascii?q?wUBF4J+BYEEgzwKGScNZoE8AgcSgSKHNYM8gR2CF4ERgl2FTIVRBI0BBJ9Qb?=
 =?us-ascii?q?geCJYYmjnMbjXuLRS2OAJk2AgoHBg8jgUaBe00jgQGCO1AQFIFPg3OKbyYyg?=
 =?us-ascii?q?QUBAQE7kyIBAQ?=
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="413893579"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="369072510"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="369060958"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="369044130"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="369032866"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="413808698"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=1e100.net;
 s=20161025; 
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version        
 :content-transfer-encoding;       
 bh=QSdPkLvnnsMdiZ+6XfR6tWFXWqzKs2oliNxvPIoDunQ=;       
 b=N5/55FiYNln4Dt/ORQlv5zwpGaN/Qwu1WUcawBMsd/fRtXRWipG+0B78zxlQ3lj0fv        
 NA4N8UtAsakO9j/bIMdxDWoaIfJwYRCxQQSEKh0O/ZeK55hArXJqmH/UKPThbqDBeMdr        
 C+XNCKCx1lC0l1TMEvYHjTGV6Ta8lUlEpUOH/RTCHH3TK0tUGvPsmxH+ueURAS2+g+HE        
 Dfe+00cdfFIcJRZMOGd+0VWKASR+ErVIFv24c04nt9jtOlR2prNAi4btCipfCNy2+VhS        
 lJaGS17O33DooXP0k6xLEnAgxKRJsIDD69TSB/uywx6qJTQSDaEuVqtnogxj7oKc/SPk        
 P89Q==
X-Gm-Message-State: APjAAAXySnjTsgmGSUFx4A7+BcVb+qDR/nRZRFIx98isfM9kUWmBmFAl 
 Z0m8MmJj+CLjDn2NR+rqRd8=
X-Google-Smtp-Source: APXvYqzbYaOJ/4RGKB2EynkFqV+aKl+67zvtQakjDDx6Y9Kun1tIgsnf9lipFkBfOWSYYIcKG4itUA==
X-Received: by 2002:a25:830b:: with SMTP id s11mr2317054ybk.230.1570634850866; 
 Wed, 09 Oct 2019 08:27:30 -0700 (PDT)
From: "William Breathitt Gray" <vilhelm.gray@gmail.com>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>
Subject: [PATCH v17 00/14] Introduce the for_each_set_clump8 macro
Date: Wed,  9 Oct 2019 11:26:58 -0400
Message-Id: cover.1570633189.git.vilhelm.gray@gmail.com
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
X-MS-Exchange-Organization-ExpirationStartTime: 09 Oct 2019 17:48:00.2278 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: 8c5e15af-2699-4f53-cb7b-08d74ce0d393
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-Forefront-Antispam-Report: CIP:128.138.128.232; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:SKN; SFS:; DIR:INB; SFP:; SCL:-1; SRVR:DM6PR03MB3931; H:ipmx2.colorado.edu;
 FPR:; SPF:None; LANG:en; ; SKIP:1; 
X-MS-Exchange-Organization-AuthSource: BY2NAM01FT004.eop-nam01.prod.protection.outlook.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-OriginatorOrg: colorado.edu
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8c5e15af-2699-4f53-cb7b-08d74ce0d393
X-MS-TrafficTypeDiagnostic: DM6PR03MB3931:|DM6PR03MB3931:
X-MS-Exchange-Organization-SCL: -1
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Microsoft-Antispam: BCL:0;
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2019 17:47:59.9576 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c5e15af-2699-4f53-cb7b-08d74ce0d393
X-MS-Exchange-CrossTenant-Id: 3ded8b1b-070d-4629-82e4-c0b019f46057
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3ded8b1b-070d-4629-82e4-c0b019f46057; Ip=[128.138.128.232];
 Helo=[ipmx2.colorado.edu]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB3931
X-MS-Exchange-Transport-EndToEndLatency: 00:58:45.9782231
X-MS-Exchange-Processed-By-BccFoldering: 15.20.2347.014
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; ex:0; auth:0; dest:I;
 ENG:(750127)(520002050)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?xf3N7mbr12Q3ncEO4dWDgkM9hsl+mXi8uhn+o4otNo55hEsmVoz4iwehZAy9?=
 =?us-ascii?Q?Fk3JIdhd73vkAjPgFd0b/9LEZMu6kaIdbdJBLuOkFU8IyVDU4lG5sLn6mCnc?=
 =?us-ascii?Q?IH2107DV8kTdMawfHmSCHe2yLQiuBPSYPnVKJzzmDQtksOeX1HihcC51ZBFJ?=
 =?us-ascii?Q?i2wvPAiGkqO/SjYNRk7u7GCWKl5S1chEfO72cMiB8C7q82J7SS+/XrazHlEV?=
 =?us-ascii?Q?WkjKR/pVFJVebS8n3uiyuTm8XuEncaa1wm1IP3mZ8PDQqYuCl80V5VM1Enfd?=
 =?us-ascii?Q?El/J5STNnOPimzpnUoJd5gv8VOgoTs8MAToZkt/r+spd8IAQ8ZvRuhNQLMAp?=
 =?us-ascii?Q?bBut8bjp2BHeyg7wlmiuz945qjY1Ralo8BC6/kbIkJgmGS9XcQvWWl7nmu09?=
 =?us-ascii?Q?0E7/7i2sLV72nI3zOPG2DFMYvgbEgTiGa/XZHHGIE70kV42MXLUSINBbXI6e?=
 =?us-ascii?Q?WCmm2Zo/+ba0+gUoTYnmhDwDRJFIlna1jpK7OphrSN0QFyIgoqneLxGUPlGc?=
 =?us-ascii?Q?56nx9le1augTVXMV/yhkYA52OllFvwk8UHtX9AtITUfXq939RjeSEkgzeNeC?=
 =?us-ascii?Q?Kii1yGSG/uiDimFWEGZiRI2jKJ+huVnkBMafgAPbMu68JlmJFuaJfjQUMdOn?=
 =?us-ascii?Q?ag15BWMK6BaCheZrxzVd/nq6E6t17/IsWeVUezJBJGPY5cMKeIsxypCMTmIz?=
 =?us-ascii?Q?nlFi5T+GFYf35f+rxsYRHstRY5VuxmFF+jF7O1gp+c3xt46oXBcZAPSySsJi?=
 =?us-ascii?Q?fXkrTiOjBmXHbnNbWf268iSRb83CMPDWanohsgoO3J+TiGM5GO2UOnrveTia?=
 =?us-ascii?Q?jTR4Kzzp72QcNe6p4bLaJWOKHYjTTg26GfG/oVSPca6/t5ShuyJQAlgP8ECz?=
 =?us-ascii?Q?xFRN1jkG58Sa1+unk3gIhdQh20DdJIEWRVueTa/3Tkg3wSnr+4QaTm1ggjxW?=
 =?us-ascii?Q?W5U2ld/0T9vAy964H30EORBDSpP9G3+Uz7ROc+NoOY5tdlclhRuFgdKwCoZU?=
 =?us-ascii?Q?AhmGFjm6ZHNQJrZ3MMs7XkgyHmh+XMpFf+RhA+k85kaCRS/nlIHPfnyWFc7v?=
 =?us-ascii?Q?MBUWaW/zvPz+dDPsnLVA+oCW2+cda3MaHENBAmVmSeKWCdfRplg=3D?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_174818_409368_B0C46D47 
X-CRM114-Status: UNSURE (   5.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.2 INVALID_MSGID          Message-Id is not valid, according to RFC 2822
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
 manager
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "preid@electromag.com.au" <preid@electromag.com.au>,
 "yamada.masahiro@socionext.com" <yamada.masahiro@socionext.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux@rasmusvillemoes.dk" <linux@rasmusvillemoes.dk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "morten.tiljeset@prevas.dk" <morten.tiljeset@prevas.dk>,
 "sean.nyekjaer@prevas.dk" <sean.nyekjaer@prevas.dk>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "lukas@wunner.de" <lukas@wunner.de>,
 "geert@linux-m68k.org" <geert@linux-m68k.org>, William Breathitt
 Gray <vilhelm.gray@gmail.com>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes in v17:
  - Move bitmap_get_value8/bitmap_set_value8 to include/linux/bitmap.h
  - add style changes suggested by Andy Shevchenko to intel_soc_dts_iosf

While adding GPIO get_multiple/set_multiple callback support for various
drivers, I noticed a pattern of looping manifesting that would be useful
standardized as a macro.

This patchset introduces the for_each_set_clump8 macro and utilizes it
in several GPIO drivers. The for_each_set_clump macro8 facilitates a
for-loop syntax that iterates over a memory region entire groups of set
bits at a time.

For example, suppose you would like to iterate over a 32-bit integer 8
bits at a time, skipping over 8-bit groups with no set bit, where
XXXXXXXX represents the current 8-bit group:

    Example:        10111110 00000000 11111111 00110011
    First loop:     10111110 00000000 11111111 XXXXXXXX
    Second loop:    10111110 00000000 XXXXXXXX 00110011
    Third loop:     XXXXXXXX 00000000 11111111 00110011

Each iteration of the loop returns the next 8-bit group that has at
least one set bit.

The for_each_set_clump8 macro has four parameters:

    * start: set to the bit offset of the current clump
    * clump: set to the current clump value
    * bits: bitmap to search within
    * size: bitmap size in number of bits

In this version of the patchset, the for_each_set_clump macro has been
reimplemented and simplified based on the suggestions provided by Rasmus
Villemoes and Andy Shevchenko in the version 4 submission.

In particular, the function of the for_each_set_clump macro has been
restricted to handle only 8-bit clumps; the drivers that use the
for_each_set_clump macro only handle 8-bit ports so a generic
for_each_set_clump implementation is not necessary. Thus, a solution for
large clumps (i.e. those larger than the width of a bitmap word) can be
postponed until a driver appears that actually requires such a generic
for_each_set_clump implementation.

For what it's worth, a semi-generic for_each_set_clump (i.e. for clumps
smaller than the width of a bitmap word) can be implemented by simply
replacing the hardcoded '8' and '0xFF' instances with respective
variables. I have not yet had a need for such an implementation, and
since it falls short of a true generic for_each_set_clump function, I
have decided to forgo such an implementation for now.

In addition, the bitmap_get_value8 and bitmap_set_value8 functions are
introduced to get and set 8-bit values respectively. Their use is based
on the behavior suggested in the patchset version 4 review.

William Breathitt Gray (14):
  bitops: Introduce the for_each_set_clump8 macro
  lib/test_bitmap.c: Add for_each_set_clump8 test cases
  gpio: 104-dio-48e: Utilize for_each_set_clump8 macro
  gpio: 104-idi-48: Utilize for_each_set_clump8 macro
  gpio: gpio-mm: Utilize for_each_set_clump8 macro
  gpio: ws16c48: Utilize for_each_set_clump8 macro
  gpio: pci-idio-16: Utilize for_each_set_clump8 macro
  gpio: pcie-idio-24: Utilize for_each_set_clump8 macro
  gpio: uniphier: Utilize for_each_set_clump8 macro
  gpio: 74x164: Utilize the for_each_set_clump8 macro
  thermal: intel: intel_soc_dts_iosf: Utilize for_each_set_clump8 macro
  gpio: pisosr: Utilize the for_each_set_clump8 macro
  gpio: max3191x: Utilize the for_each_set_clump8 macro
  gpio: pca953x: Utilize the for_each_set_clump8 macro

 drivers/gpio/gpio-104-dio-48e.c            |  73 ++++----------
 drivers/gpio/gpio-104-idi-48.c             |  36 ++-----
 drivers/gpio/gpio-74x164.c                 |  19 ++--
 drivers/gpio/gpio-gpio-mm.c                |  73 ++++----------
 drivers/gpio/gpio-max3191x.c               |  19 ++--
 drivers/gpio/gpio-pca953x.c                |  17 ++--
 drivers/gpio/gpio-pci-idio-16.c            |  75 +++++---------
 drivers/gpio/gpio-pcie-idio-24.c           | 109 ++++++++-------------
 drivers/gpio/gpio-pisosr.c                 |  12 +--
 drivers/gpio/gpio-uniphier.c               |  16 ++-
 drivers/gpio/gpio-ws16c48.c                |  73 ++++----------
 drivers/thermal/intel/intel_soc_dts_iosf.c |  31 +++---
 drivers/thermal/intel/intel_soc_dts_iosf.h |   2 -
 include/asm-generic/bitops/find.h          |  17 ++++
 include/linux/bitmap.h                     |  35 +++++++
 include/linux/bitops.h                     |   5 +
 lib/find_bit.c                             |  14 +++
 lib/test_bitmap.c                          |  65 ++++++++++++
 18 files changed, 328 insertions(+), 363 deletions(-)


base-commit: 8c550e94b8835170593169a45b5ba30d3fc72a70
-- 
2.23.0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
