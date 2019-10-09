Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24580D5360
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 02:13:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T0RoJINPq7ibY1pWinL83uqidDRrU4/KFG2KQcuZxmA=; b=Q8oeGALj4g2ibg
	SpiEV/p7L3uz/g8l/+ag0/gGo+Fay0d4LqEktOdZssdD9+H26ulxiQrDSNdEXiqY2OFBelmZ+u+PC
	nX5j/EKIbjBbnWxC5bfpj45KKc1YrR7WIoAJW6ix1fe+gRUqlXm6kazPg1Wo5zwUiYo86g3cAZmdV
	y0aFn9InRJ0xddvYbYjMJR6chwaUz2bFf0iMtIhDySP8s1WSssXaNuBpOb6llDJgXx+zTkPfFoKiN
	9Whss/EZ/uCEO2wbKvTB5/TocNgEs36MK9t8iuMZ1TrpdBiMiR0NxWBUbmE9myP18N1plaKPdE4Cc
	OUqgXzo0rKM6yRHdzqDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJRW3-0007UP-E6; Sun, 13 Oct 2019 00:13:43 +0000
Received: from listssympa-test.colorado.edu ([128.138.129.156])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJRVr-0007U4-3T
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 00:13:33 +0000
Received: from listssympa-test.colorado.edu (localhost [127.0.0.1])
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/sympa) with ESMTPS id
 x9D0DN0b025363
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 12 Oct 2019 18:13:23 -0600
Received: (from root@localhost)
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/submit) id
 x9D0DNTZ025357; Sat, 12 Oct 2019 18:13:23 -0600
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; 
 s=pandora-2019; h=Sender:In-Reply-To:Content-Type:       
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:       
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:       
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:    
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t8pk91iuVFBfJ3Gpf//UypPqu/LoAK/DHg6zouxOibA=;
 b=JMBRXpTFV81Mmtkp3nQIFDAUk       
 NqoiHpuFkKN5pjra+p0IK2OYNeFMYeWQXI+qN1o+8u+L/PViYCKx67+OwCR7KotV0dy96dE7km+iN 
 ckJwHVkbfuQSNSzgvGlSURPq5/iBzCqlj1sJkv8UgLbKi1oDc+cZ7mhViUIK09z0Wl6GKhe6E4owu 
 OqkceGQnbgpjK7aGA9itGUgmsvirMTmOkH4IN6oPIWR2fGKogkx+f6GMzg3npmo3kNt7FDgwsHWY2 
 s/TgTqQ7VTVdQ0dWBZzjP7iXiWj75hfuc4NdNqS/Jk6r03ocRQp2PRKa6pTvdFQ3l1Rwj9isgZ3cN
 3TBrkLxdA==; 
Received: from BN7PR03MB3908.namprd03.prod.outlook.com (2603:10b6:a02:bc::23)
 by BYAPR03MB4376.namprd03.prod.outlook.com with HTTPS via
 BYAPR07CA0010.NAMPRD07.PROD.OUTLOOK.COM; Wed, 9 Oct 2019 20:28:16 +0000
Received: from BY5PR03CA0017.namprd03.prod.outlook.com (2603:10b6:a03:1e0::27)
 by
 BN7PR03MB3908.namprd03.prod.outlook.com (2603:10b6:408:2c::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.24; Wed, 9 Oct
 2019 17:56:58 +0000
Received: from BN3NAM01FT022.eop-nam01.prod.protection.outlook.com
 (2a01:111:f400:7e41::208) by BY5PR03CA0017.outlook.office365.com
 (2603:10b6:a03:1e0::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Wed, 9 Oct 2019 17:56:57 +0000
Received: from ipmx2.colorado.edu (128.138.128.232) by
 BN3NAM01FT022.mail.protection.outlook.com (10.152.67.153) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384)
 id 15.20.2347.16 via Frontend Transport; Wed, 9 Oct 2019 17:56:56 +0000
Received: from ipmx3.colorado.edu ([128.138.67.74])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 11:07:36 -0600
Received: from vger.kernel.org ([209.132.180.67]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 10:36:45 -0600
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand id
 S1731810AbfJIQgo (ORCPT <rfc822; michael.gilroy@colorado.edu>);
 Wed, 9 Oct 2019 12:36:44 -0400
Received: from pandora.armlinux.org.uk ([78.32.30.218]:58680 "EHLO       
 pandora.armlinux.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org       
 with ESMTP id S1731168AbfJIQgn (ORCPT       
 <rfc822; linux-kernel@vger.kernel.org>); Wed, 9 Oct 2019 12:36:43 -0400
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:49542) 
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)        (Exim 4.90_1)       
 (envelope-from <linux@armlinux.org.uk>)        id 1iIEwy-0002bz-OJ; Wed, 09
 Oct 2019 17:36:32 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)       
 (envelope-from <linux@shell.armlinux.org.uk>)        id 1iIEwv-0007qf-3J;
 Wed, 09 Oct 2019 17:36:29 +0100
Authentication-Results: spf=none (sender IP is 128.138.128.232)
 smtp.mailfrom=vger.kernel.org; 
 o365.colorado.edu; dkim=fail (signature did not verify)
 header.d=armlinux.org.uk;o365.colorado.edu; dmarc=fail action=none
 header.from=armlinux.org.uk;
Received-SPF: None (protection.outlook.com: vger.kernel.org does not designate
 permitted sender hosts)
Authentication-Results-Original: mx.colorado.edu;
 dkim=hardfail (body hash did not verify
 [final]) header.i=@armlinux.org.uk
IronPort-SDR: VxCOpfl55w1B3yfOG8o92LjS+o7rUEEKvMJS+PVyWNWfWTqjXj5RkybPnFyIVklBHorjopesW2
 xNp4I28hDHmdw7g3zvDG8jqmEhoXcT6YA=
IronPort-SDR: d/HD3Pd9oyuEIX2krU2mD0mlR3dCYTUaXEJWKQtApyO0hEqxUObAwIQlo0d8lgBrqTSDYEJmpc
 QZaEjMN7isP7kBnqDe3NOVQcJhHEbmR1I=
IronPort-PHdr: =?us-ascii?q?9a23=3AfQ7JUxzl6Yb1KnTXCy+O/D0hRQkC/pjqNwoI44?=
 =?us-ascii?q?YmjLQfIvTx4cG7bwTWsO92hRrSXYyBtqwXw/ODv6b7HnAQ/cXJuyUYfZhFRx?=
 =?us-ascii?q?IJzt8bmwUwDcLWbC+zZLaiJ2RyVMgXXUVg+3C9LFgTH9zxIUDR8TWpuCYbHB?=
 =?us-ascii?q?n4LwMwfLysS92aj5GM2ua+9oeBQgMNvjelZaI3EBLkhgLXqsQQnc5eO748mH?=
 =?us-ascii?q?6r6jMAM6wejStNBHe+2ijx/Nyx+5gxySletugs8cVNSvffcr8jRLNVSRUKYV?=
 =?us-ascii?q?so7s/mvgWRZgDd2nxOfH8Rl0hkChTIviv3RpPg9xf95I8fkGHSdYW+BfgfXj?=
 =?us-ascii?q?K+4qF3DSPygSEcOTMjtUzRgct8jaRU8jmmoQByxZKRQa3HH/14Yq7bYZY2SH?=
 =?us-ascii?q?FKRMdJSy1GBNGGYpACCfZEEe9EotuYxRNG5VP2TUHkPu70xzlUw1Hs2qho6e?=
 =?us-ascii?q?k6HAfamTctGd4Dqibuoc74MrtXbefn9qTTwDPfKthdiw3w84XOblUErOqXVL?=
 =?us-ascii?q?19NOv9m20uDB+Ar1nCzO6td3vdnqxF+0ya9PYlde+rkzwDqhpt5wWp3domkY?=
 =?us-ascii?q?LTh4gYmHTF7jk8+5s/PtaiSUR2M/qlC4cVjyaBK9lSQ9g+BkZ3visgmJkHoo?=
 =?us-ascii?q?L+VTIByJU5yk26CbTPO8DAqlqrHOyRdCsonHE0IbOiuTiY/2r75fXyEY6JwU?=
 =?us-ascii?q?5ytzcCtt7llTch9xON+M+aWtx89G70in6FgiL2wNt0OXwaq/qCDps9waZrkK?=
 =?us-ascii?q?Myn2jqIyyT+g2+xOfePg1s3PGv6sT/f5vlhbnBL41ug0LmaoUNwOuOJ+kWFz?=
 =?us-ascii?q?kDYFGr2Kel8uTkvh3kA5ENtsM3o4L6oM6FZuMEjZTmIAhJ7N4v+kfhAxr509?=
 =?us-ascii?q?FbnF9iThoNMFrPx8ChMFLsP9DGDv2xnm2Xtgx5yO7pOobcOK3Ucz/CuqXKZL?=
 =?us-ascii?q?J/slV+yxRj8N977bFVU7YtK7H4aBD0tOLZMz4aa12mm9njVvpe1o5AdD6IHb?=
 =?us-ascii?q?L8Uuua+RfArqpnBPCPb4I6gTD3JOAnxKHnolZomEMyQKasxoUWclWEG9NlAx?=
 =?us-ascii?q?m4RyTruvY+Kz0EkSk5Q+/6y1PcfhtBaC20R6c7vTIdFN2IIYjcXaCSsebkvm?=
 =?us-ascii?q?/zVtUeLigOERewHkvxTtq6Z8kAUXqeHeVTgD48CrmRSrAjikyuuhLxl5xrCP?=
 =?us-ascii?q?PvvQ8b64i7j99+3dTLzykI1jUqF/iD30+0FGUtpHwKFj4t05IkqmoYqB/Lme?=
 =?us-ascii?q?Awy7QQTuB5/fBtQgsTYMuPh/w/Csr1XBrGZMvMUlu9X9G6VDE4VN4/yt4KMA?=
 =?us-ascii?q?5tXtS4iRbb2DC2RrIPjbuRUZYz/rOU33HqJ45xynqO0q49x0crWMpBJCWViK?=
 =?us-ascii?q?95/gzmVNSTwWyEi6anc7gd1yfR9WCFiFCDp1xcTBUhCPfATTYUYU/Rt9314Q?=
 =?us-ascii?q?XPQ6L9QbgkMw4UyceYJqVDa9mhzV9BSOarON3FYyq9mmv4AxGUjq2Bdovkai?=
 =?us-ascii?q?0u0iTbAUwx0kgT8H+KOBJ4B3KJqnjbCD1oCEKpZFnjt/R9pQ=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3ALJcmShXMmLUbhRczRgbtI3OOL37V8LGtY1w5yb?=
 =?us-ascii?q?sCzp9Qe6C+9ojjO0qOtKs/kgqQDs3Svuhfgq/Ns6m6BDJTqY/UvHYZN4BcS0?=
 =?us-ascii?q?xNgpAMkggpEMOJTlf2KPf6YiBpeaYKHBcttznzeUQAEdz7Y1zUv2306iQdXA?=
 =?us-ascii?q?j8ZkJuc/z8HILVlc3yjbjrqs6bY1BziTyxbKkgDRPzlwjJsthTvYwwAaE31h?=
 =?us-ascii?q?bPvj50avxblwYKbRrb1160ro+V3btOthpdoekg8MgSa6j0cr41S7dVF2YDPn?=
 =?us-ascii?q?su7cLm8DjvHzCS7HkRWXlEuREaPw+Xwgv9W8Xduzf35NBwwC2LePHxH9VWEX?=
 =?us-ascii?q?zqp+8jAFfDjyEbOjgltV3Ng8prgq9B5T+nrBtzwojbMqqSMuZzeL+YXP9Ibm?=
 =?us-ascii?q?1HQstXS2ltD5i3dYoXE+sGO7RiopLwoUdLgRKiCFvJZqungncAzje+56Ah3u?=
 =?us-ascii?q?I9VC/c2wlyJd8VvXLI6e74MqsfS7KPwbLFyymGU/QE4zrm5Y7UNzsq88uBRr?=
 =?us-ascii?q?92bY/0xFI0HgzIy3S8+6jkJC/Q9+hf1grTp6IoHarnw0omsB00gjWr3pUIi5?=
 =?us-ascii?q?LVw78T0U3O7i5jwYw4d/m5U1I+WsOuC5BKtiuXZa93Wd9ne2ZzpHQey6Ya/L?=
 =?us-ascii?q?mkeiUQmrAm3AKaQuaMc4mW70GGNq7ZaX8wzDotMLi/0gri6Uvxk+zhaOee3n?=
 =?us-ascii?q?QRgTJL1Z7xp2g1zgGUzs+uabxR3kj/yzGSxyfS4MgRcgg+wIj+AaQR2oIeqM?=
 =?us-ascii?q?pKlEHfHTetnnzXooO/S0ZBmKDgo6yvKv2ugIabNq9sly/9EYJzgs6lCKcgai?=
 =?us-ascii?q?ktBU+q3+mS8YzuwnTJYfZTqKQx0fnE87SdHfoal4WaE1EKkaE8wCzgLDC67o?=
 =?us-ascii?q?wUjChZIH8aexfEjq6MWRmGaLiwRb/3iFeOjxdVxPrII4TaJK7fIWbslIzcR4?=
 =?us-ascii?q?5ktgld4hgY1NRdvol2Ca9RHf3XUGzw7dv0BVwyAVOxw9jmNfRejtIMAV2LXI?=
 =?us-ascii?q?C6MK6MnAOP+f9KQaHELMdd8H61DOEm7PPBtHkzlkcfXvag8rJGaWyXI/tjOF?=
 =?us-ascii?q?uYe1/Qh/ACMTsrmFQ5dM3VsgeMfh1UaHWiHKxiyRQpB9mgFYLEHYOLnOOv8C?=
 =?us-ascii?q?ikBb1pVzojaBjEWT+gP83MQLAwZx6LG5BfrgIIbOCtdKUTxxOW6w7KyoVlcb?=
 =?us-ascii?q?fU9DAT6bTv8sFOoM/Qywtqrjt/Nf2FiVm3bGgqhl8WSxEPh6Qmm1N/m1aY3p?=
 =?us-ascii?q?ojiNo9d5Qbr7sBGk9ybqL21e9eG9zbD1eSNsfMSUyhRM2hGy10VN8q3tsSNl?=
 =?us-ascii?q?5wAdCvlArExXniE/oUjbuNHJsu7ufRxWL2PZNmynnA3bU8lVRuTspDfWuhmu?=
 =?us-ascii?q?Zh+hLSCZ+BoEuYka+uQOwv4AP2yFLQwA=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0FEAACyGp5dbUpDioBlGgEBAQEBAQE?=
 =?us-ascii?q?BAQMBAQEBEQEBAQICAQEBAU2BLoFLUAVsgQUqkn+CD488i2IRAQEBAQEBAQE?=
 =?us-ascii?q?BCBgLCgIBAQEBgQKGDiM4EwIBAQEJAQEBAwEBAQIBBQIBAQICEAsNCQYrhTQ?=
 =?us-ascii?q?Mg0ZqAQEBAQEBAQEBAQEBAQEBAQEBAQEWAg1UJj0BAQEBAwEBASQTBgEBLAs?=
 =?us-ascii?q?BBQkBAQoVAwklAwwFEwEUIRMFgx6CdwEDC69egXQzgn4BhUaBdAmBNIwOGD6?=
 =?us-ascii?q?BQYERgxI+gmEBBIdKBIE3iFiCbAqKVpVogiyHCIhqhRsMG4I6cpYUj2yGY40?=
 =?us-ascii?q?ZhCOBaYF7MyIsBDuBHoFOCUcQFIFPDBcBAYhigmaCWkIxgQiQEwEB?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0FNAABiEp5dh0O0hNFlGgEBAQEBAQE?=
 =?us-ascii?q?BAQMBAQEBEQEBAQICAQEBAYF7gUuBQFQxKodtixGCDxSPKItiEQEBAQEBAQE?=
 =?us-ascii?q?BAQgYCwkBAgEBAQGBAoYOIzgTAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwk?=
 =?us-ascii?q?IKYU0DINGagEBAQEBAQEBAQEBAQEBAQEBAQEBFgINVCY9AQEBAQMBAQEkEwY?=
 =?us-ascii?q?BASwLAQUJAQEKFQMJJQMMBRMBFCETBYMdAYIKAQMLr1+BdDOCfQEBBXaES4F?=
 =?us-ascii?q?0CYE0jA4YPoFBgRGDEj6CYQEEh0SBO4hYgmwKilaVaIIshwiIaoUbDBuCOnK?=
 =?us-ascii?q?WFI9shmONGYQjgWmBezMiLAQ7gR6BTglHEBSBTwwXAQGIYoJmglpBMoEGAQG?=
 =?us-ascii?q?TXQEB?=
X-IPAS-Result: =?us-ascii?q?A0FEAACyGp5dbUpDioBlGgEBAQEBAQEBAQMBAQEBEQEBA?=
 =?us-ascii?q?QICAQEBAU2BLoFLUAVsgQUqkn+CD488i2IRAQEBAQEBAQEBCBgLCgIBAQEBg?=
 =?us-ascii?q?QKGDiM4EwIBAQEJAQEBAwEBAQIBBQIBAQICEAsNCQYrhTQMg0ZqAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEWAg1UJj0BAQEBAwEBASQTBgEBLAsBBQkBAQoVAwklA?=
 =?us-ascii?q?wwFEwEUIRMFgx6CdwEDC69egXQzgn4BhUaBdAmBNIwOGD6BQYERgxI+gmEBB?=
 =?us-ascii?q?IdKBIE3iFiCbAqKVpVogiyHCIhqhRsMG4I6cpYUj2yGY40ZhCOBaYF7MyIsB?=
 =?us-ascii?q?DuBHoFOCUcQFIFPDBcBAYhigmaCWkIxgQiQEwEB?=
X-IPAS-Result: =?us-ascii?q?A0FNAABiEp5dh0O0hNFlGgEBAQEBAQEBAQMBAQEBEQEBA?=
 =?us-ascii?q?QICAQEBAYF7gUuBQFQxKodtixGCDxSPKItiEQEBAQEBAQEBAQgYCwkBAgEBA?=
 =?us-ascii?q?QGBAoYOIzgTAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwkIKYU0DINGagEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBFgINVCY9AQEBAQMBAQEkEwYBASwLAQUJAQEKF?=
 =?us-ascii?q?QMJJQMMBRMBFCETBYMdAYIKAQMLr1+BdDOCfQEBBXaES4F0CYE0jA4YPoFBg?=
 =?us-ascii?q?RGDEj6CYQEEh0SBO4hYgmwKilaVaIIshwiIaoUbDBuCOnKWFI9shmONGYQjg?=
 =?us-ascii?q?WmBezMiLAQ7gR6BTglHEBSBTwwXAQGIYoJmglpBMoEGAQGTXQEB?=
X-IronPort-AV: E=Sophos; i="5.67,277,1566885600"; d="scan'208"; a="414262120"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="369286610"
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-Original-Recipients: migi9492@g.colorado.edu
Date: Wed, 9 Oct 2019 17:36:29 +0100
From: "Russell King - ARM Linux admin" <linux@armlinux.org.uk>
To: "Hui Song" <hui.song_1@nxp.com>
Subject: Re: [PATCH v6] gpio/mpc8xxx: change irq handler from chained to normal
Message-ID: <20191009163628.GH25745@shell.armlinux.org.uk>
References: <20191009083021.33529-1-hui.song_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009083021.33529-1-hui.song_1@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
X-MS-Exchange-Organization-ExpirationStartTime: 09 Oct 2019 17:56:56.9995 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: e56bc02f-1876-4f4d-a9aa-08d74ce21384
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-Forefront-Antispam-Report: CIP:128.138.128.232; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:SKN; SFS:; DIR:INB; SFP:; SCL:-1; SRVR:BN7PR03MB3908; H:ipmx2.colorado.edu;
 FPR:; SPF:None; LANG:en; ; SKIP:1; 
X-MS-Exchange-Organization-AuthSource: BN3NAM01FT022.eop-nam01.prod.protection.outlook.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-OriginatorOrg: colorado.edu
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e56bc02f-1876-4f4d-a9aa-08d74ce21384
X-MS-TrafficTypeDiagnostic: BN7PR03MB3908:|BN7PR03MB3908:
X-MS-Exchange-PUrlCount: 2
X-MS-Exchange-Organization-SCL: -1
X-MS-Oob-TLC-OOBClassifiers: OLM:1303;
X-Microsoft-Antispam: BCL:0;
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2019 17:56:56.8094 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e56bc02f-1876-4f4d-a9aa-08d74ce21384
X-MS-Exchange-CrossTenant-Id: 3ded8b1b-070d-4629-82e4-c0b019f46057
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3ded8b1b-070d-4629-82e4-c0b019f46057; Ip=[128.138.128.232];
 Helo=[ipmx2.colorado.edu]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR03MB3908
X-MS-Exchange-Transport-EndToEndLatency: 02:31:20.2343358
X-MS-Exchange-Processed-By-BccFoldering: 15.20.2347.014
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; ex:0; auth:0; dest:I;
 ENG:(750127)(520002050)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?dDy9KAvhNPrS4He+H7aIFM7ntp0oaBawQV9Fg+7BAlqvCxAkTDIb51pp8jU1?=
 =?us-ascii?Q?ZIi7cdEcX5dL0ir27uVIIDXxOxn+oU+Facu6COsnGzxczy379kwFgcGwTPH4?=
 =?us-ascii?Q?DMqMjKlxB054pQY1QddsSWRf1jVM138UTqPqdLpxNnAfQIrXV2xxdiuvj4EZ?=
 =?us-ascii?Q?dIP8GWBUXgdQnO+SUcaXXxiX0q82fejtag/4T46xMIR8+bbU3UVtQ2t4XNKQ?=
 =?us-ascii?Q?DLLcPIW/fH/+Yx93ikLY8qv1VwMMFuetpX3RIbIRtVbecIEnpfExHs7VtJi/?=
 =?us-ascii?Q?JvEBouUDIQrKR7uyZMOGQE2dIfJgygHhp0u1gL7EjC+kiCP5qNp8pIx1450r?=
 =?us-ascii?Q?v0EGrEAxiC2tRrXPZWfMCOOqb7P09L3B2Fbl2un+/SIdNtCwV9faU80RJ6wa?=
 =?us-ascii?Q?r7hPygeQMZXK1RrgWmE253rB5yOm5FA30AgCtV3VZcVHQb4s6c/hMMqNpOpL?=
 =?us-ascii?Q?Ywtxhc6Uw9T1/S6FY9JjjdchQz6K6JNa3vK5kcRfB+3/QhGC98RbFzhGpivr?=
 =?us-ascii?Q?R84FLUC7sFnHojc4o/tn9tJK8li/8qYN0ePGyv6DL4aKN6pGCtJt9D9uiduB?=
 =?us-ascii?Q?EzY+TFTijRW3CV41yr8OshyX6qalurxAq/udO7LROrmjGEdjqu23Ajr2fUdM?=
 =?us-ascii?Q?PswZ+1gigo8wX2X+vk5Ihu34eizTXPgcwFi1gNIdy/iXDvjEjSf1iG1inEvZ?=
 =?us-ascii?Q?eovgkYm+a4T0UHme6TTUjHcCH39/19o232QWzhiw87EgB2A+WXvRfOWDjM82?=
 =?us-ascii?Q?JM/6o+MOKO2sBZalfcOnKjQFSttYqBDRKlPUJAWvkWlAdJs1sMP1wPYI+gbB?=
 =?us-ascii?Q?NbDiY3f9HOTfToJ5zGW5NuC8n+qkEhorETdOifU4N53qKlgnOPoE7ESo2LkO?=
 =?us-ascii?Q?hgaRbrbWyyrRBmASNHWbYDq9/klRLahOUrwzYs/5rTi53O1JHdglGSjh3Qco?=
 =?us-ascii?Q?EZ8o1TisWw8yBMDezSE/DWpeVBvPf0gQB+g4xCrVC32lpcbxKVOGi/0AVkKd?=
 =?us-ascii?Q?XZGjgJy8A6qVUoNvUmhu9Xxc9eDMuhW1fiy4tDJ8vpuuu/KS4pxK0/MoFsVa?=
 =?us-ascii?Q?ou9eSB0OL41LZGNzSNw2uT22Bomh630xAypPcJ6KkAKX24bM8v3QcYLknXuv?=
 =?us-ascii?Q?2y50Y4YKcqy1fTji/yakGUC1IHsN+0KSbw=3D=3D?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_171331_239200_F60F519E 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, Linus
 Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 04:30:21PM +0800, Hui Song wrote:
> From: Song Hui <hui.song_1@nxp.com>
> 
> More than one gpio controllers can share one interrupt, change the
> driver to request shared irq.
> 
> While this will work, it will mess up userspace accounting of the number
> of interrupts per second in tools such as vmstat.  The reason is that
> for every GPIO interrupt, /proc/interrupts records the count against GIC
> interrupt 68 or 69, as well as the GPIO itself.  So, for every GPIO
> interrupt, the total number of interrupts that the system has seen
> increments by two
> 
> Signed-off-by: Laurentiu Tudor <Laurentiu.Tudor@nxp.com>
> Signed-off-by: Alex Marginean <alexandru.marginean@nxp.com>
> Signed-off-by: Song Hui <hui.song_1@nxp.com>
> ---
>  Changes in v6:
> 	- change request_irq to devm_request_irq and add commit message.
>  Changes in v5:
> 	- add traverse every bit function.
>  Changes in v4:
> 	- convert 'pr_err' to 'dev_err'.
>  Changes in v3:
> 	- update the patch description.
>  Changes in v2:
> 	- delete the compatible of ls1088a.
> 
>  drivers/gpio/gpio-mpc8xxx.c | 31 ++++++++++++++++++++-----------
>  1 file changed, 20 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpio/gpio-mpc8xxx.c b/drivers/gpio/gpio-mpc8xxx.c
> index 16a47de..f0be284 100644
> --- a/drivers/gpio/gpio-mpc8xxx.c
> +++ b/drivers/gpio/gpio-mpc8xxx.c
> @@ -22,6 +22,7 @@
>  #include <linux/irq.h>
>  #include <linux/gpio/driver.h>
>  #include <linux/bitops.h>
> +#include <linux/interrupt.h>
>  
>  #define MPC8XXX_GPIO_PINS	32
>  
> @@ -127,20 +128,20 @@ static int mpc8xxx_gpio_to_irq(struct gpio_chip *gc, unsigned offset)
>  		return -ENXIO;
>  }
>  
> -static void mpc8xxx_gpio_irq_cascade(struct irq_desc *desc)
> +static irqreturn_t mpc8xxx_gpio_irq_cascade(int irq, void *data)
>  {
> -	struct mpc8xxx_gpio_chip *mpc8xxx_gc = irq_desc_get_handler_data(desc);
> -	struct irq_chip *chip = irq_desc_get_chip(desc);
> +	struct mpc8xxx_gpio_chip *mpc8xxx_gc = data;
>  	struct gpio_chip *gc = &mpc8xxx_gc->gc;
>  	unsigned int mask;

This needs to be "unsigned long mask;" for for_each_set_bit() not to
complain.

> +	int i;
>  
>  	mask = gc->read_reg(mpc8xxx_gc->regs + GPIO_IER)
>  		& gc->read_reg(mpc8xxx_gc->regs + GPIO_IMR);
> -	if (mask)
> +	for_each_set_bit(i, &mask, 32)
>  		generic_handle_irq(irq_linear_revmap(mpc8xxx_gc->irq,
> -						     32 - ffs(mask)));
> -	if (chip->irq_eoi)
> -		chip->irq_eoi(&desc->irq_data);
> +						     31 - i));
> +
> +	return IRQ_HANDLED;
>  }
>  
>  static void mpc8xxx_irq_unmask(struct irq_data *d)
> @@ -388,8 +389,8 @@ static int mpc8xxx_probe(struct platform_device *pdev)
>  
>  	ret = gpiochip_add_data(gc, mpc8xxx_gc);
>  	if (ret) {
> -		pr_err("%pOF: GPIO chip registration failed with status %d\n",
> -		       np, ret);
> +		dev_err(&pdev->dev, "%pOF: GPIO chip registration failed with status %d\n",
> +			np, ret);
>  		goto err;
>  	}
>  
> @@ -409,8 +410,16 @@ static int mpc8xxx_probe(struct platform_device *pdev)
>  	if (devtype->gpio_dir_in_init)
>  		devtype->gpio_dir_in_init(gc);
>  
> -	irq_set_chained_handler_and_data(mpc8xxx_gc->irqn,
> -					 mpc8xxx_gpio_irq_cascade, mpc8xxx_gc);
> +	ret = devm_request_irq(&pdev->dev, mpc8xxx_gc->irqn,
> +			       mpc8xxx_gpio_irq_cascade,
> +			       IRQF_NO_THREAD | IRQF_SHARED, "gpio-cascade",
> +			       mpc8xxx_gc);
> +	if (ret) {
> +		dev_err(&pdev->dev, "%s: failed to devm_request_irq(%d), ret = %d\n",
> +			np->full_name, mpc8xxx_gc->irqn, ret);
> +		goto err;
> +	}
> +
>  	return 0;
>  err:
>  	iounmap(mpc8xxx_gc->regs);
> -- 
> 2.9.5
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://secure-web.cisco.com/1u1yH5XF9ZOox0jqsrnwRJ5a1pJOcqm5qbE3C2dUsPGkfudVKvva1K0PgdWoYmy5dOufZTE4Kw3f2LTs-6pVT9W22cGj0QQkiNNRrkfe6uH8MOOrD-AduBS4XkwSCUNdo_6YdeDtaUtiXRPvLDnRYwSVPeR_F5CQCaACnsONIYJmNLaiH5Y_9PxzzipIMnS37-DqJROtHtZlI5ZAl5jdkYGMX5FsnN19g-dfYKcTdT-7gYdpEfPLhQMQ0VXSS44FOQUnRRYMzICuYoaLB5PeTOBexrCIKczGqbdpcJ39mGB6J0Nm5wRRx-iWO2ZS-fj91fEQHFQ1hNNaryerh9U3RVXl3hRq1EROcv-jlatz3Kx-JtCh3QJgoiI8GzZRHb0GUsfggvORJPYpKjBduTqY_F3qqu1S9I2FEpZPEaEnUr5fE2rzrTArumzUGVXnHljpv62ZBfc4EC9rRSzYLfpMG5w/https%3A%2F%2Fwww.armlinux.org.uk%2Fdeveloper%2Fpatches%2F
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
