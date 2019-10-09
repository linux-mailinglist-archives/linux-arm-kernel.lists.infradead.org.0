Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A152CD53CE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 04:37:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6YysgGNWUIPGP99nvmV7U0jk6QBjhosA+dYe/GfMr74=; b=EP+qW3AjXLWyLP
	t0qJg1G1PXXZXnUMfGIVWVItQE5ymMHWvyrxKgB94bOoMaATUxCLRtLjl+spLLp9o6uauuZyWNGAC
	visCyOYJbZs+jdFnFRtSCT5/LOIjmZxHOHDwlUAzrDTNMxQfqz7Ea3mKqrZBtdXup00/fRR6L2nM1
	XPZME8RUnM+GLKm3fOOgLwpMGKoIsMnUJ9MSX89UtzDQnG9Pn04s9znigjBHAtmTcLWthRkGAe3qQ
	HGHkRb7DpkVad5WbJO7MfbzKNKpWNM+vjfE2i4c9cYsO8u23zDuycD6SGt/f1EfRUpZIfLC+cRpto
	NIqR1VFj8O+Fv/zOh3qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJTkn-0002F1-3J; Sun, 13 Oct 2019 02:37:05 +0000
Received: from listssympa-test.colorado.edu ([128.138.129.156])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJTkd-0002Eb-KM
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 02:36:57 +0000
Received: from listssympa-test.colorado.edu (localhost [127.0.0.1])
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/sympa) with ESMTPS id
 x9D2aeb0017502
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 12 Oct 2019 20:36:40 -0600
Received: (from root@localhost)
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/submit) id
 x9D2adGA017455; Sat, 12 Oct 2019 20:36:39 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com; s=dec2015msa;
 t=1570638527;        bh=zM7dxD3GmLuJA27n7tj6vmU9wclV7umhFu5rYXOd+6c=;       
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;       
 b=SQPud2h0OWu0HF3XYWYxty13tni/EzU9iRFSRy6Ulcx1nol+bNQtyk6jfN+yVAkj9        
 h+1IgrHE8gA9JeygREhqo4gg9/wYVIGeKZhCmqsSUE6VXOrLL+ACe9eQZsn4NawO2s        
 AlEmlOyZcmN613ziPcn6hFKqxpPkhCRc6qGmrQYUaN/7OF+NQB9oJIHQnk0EW9ucMD        
 Az87WvdwWY3kelGhzYJoMQobsQcGwf1gRZkrRUmeb6p+B7GF/l92EYD0vsO7aPfvCC        
 5WvOZTmb6JWM+lY+xsEmT7fmfk1tXwa/EMz5qmVGOJZMNHXRwJd28CPdhWITzNvYTB        
 jKj3Q/x9Dcqlw==
Received: from CY4PR03MB2421.namprd03.prod.outlook.com (2603:10b6:a03:1e0::18)
 by BYAPR03MB4376.namprd03.prod.outlook.com with HTTPS via
 BY5PR03CA0008.NAMPRD03.PROD.OUTLOOK.COM; Wed, 9 Oct 2019 18:08:59 +0000
Received: from BN6PR03CA0061.namprd03.prod.outlook.com (2603:10b6:404:4c::23)
 by
 CY4PR03MB2421.namprd03.prod.outlook.com (2603:10b6:903:3f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.23; Wed, 9 Oct
 2019 17:41:25 +0000
Received: from BY2NAM01FT040.eop-nam01.prod.protection.outlook.com
 (2a01:111:f400:7e42::200) by BN6PR03CA0061.outlook.office365.com
 (2603:10b6:404:4c::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Wed, 9 Oct 2019 17:41:25 +0000
Received: from ipmx8.colorado.edu (128.138.67.85) by
 BY2NAM01FT040.mail.protection.outlook.com (10.152.68.174) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384)
 id 15.20.2347.16 via Frontend Transport; Wed, 9 Oct 2019 17:41:23 +0000
Received: from mx-spsc.colorado.edu (HELO mx.colorado.edu) ([128.138.67.77]) by
 mx.colorado.edu with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019
 10:59:11 -0600
Received: from vger.kernel.org ([209.132.180.67]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 10:28:55 -0600
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand id
 S1731829AbfJIQ2x (ORCPT <rfc822; michael.gilroy@colorado.edu>);
 Wed, 9 Oct 2019 12:28:53 -0400
Received: from conssluserg-02.nifty.com ([210.131.2.81]:53370 "EHLO       
 conssluserg-02.nifty.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org       
 with ESMTP id S1729644AbfJIQ2x (ORCPT       
 <rfc822; linux-kernel@vger.kernel.org>); Wed, 9 Oct 2019 12:28:53 -0400
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com
 [209.85.217.51])
 (authenticated)        by conssluserg-02.nifty.com with ESMTP id
 x99GSjFp013815;        Thu, 10 Oct 2019 01:28:46 +0900
Received: by mail-vs1-f51.google.com with SMTP id m22so1910937vsl.9;
 Wed, 09 Oct 2019 09:28:46 -0700 (PDT)
Authentication-Results: spf=none (sender IP is 128.138.67.85)
 smtp.mailfrom=vger.kernel.org; 
 o365.colorado.edu; dkim=pass (signature was verified)
 header.d=nifty.com;o365.colorado.edu; dmarc=none action=none
 header.from=socionext.com;
Received-SPF: None (protection.outlook.com: vger.kernel.org does not designate
 permitted sender hosts)
Authentication-Results-Original: mx.colorado.edu;
 dkim=pass (signature verified)
 header.i=@nifty.com
IronPort-SDR: gpqfVkw/tMyGu4rdMarNwVm7aaVJWgm25N9fxRSpe3ftMRMJAT1r1TWejz8brXgBkzH7t1ZBDj
 EeGFuhUlvnebHEvwS9jsv224+dJB9JZLw=
IronPort-SDR: aHdoI2hMdcfGFjGCDIylCs0D0gqyroFWeKYgkiU1vXlbACeSi+0tSB5w5R8hB7ZM5k9WkSHuk0
 xrTl+oMudRQ0vyTX2EAQqLHTAvcM6twhg=
IronPort-PHdr: =?us-ascii?q?9a23=3A3ZZN3xasDGhNJJZQtMx/G4n/LSx+5ufYHS8wr7?=
 =?us-ascii?q?c5grZTe7ii+JK8YBGN+6A03xfACJ/A4rdfi+OM7v6zEWdV+5uFuWAPfNtWWh?=
 =?us-ascii?q?sMmcgazEQsVciEB1HqavXtan9ffowKHBcttznzKh1ZFc2kPwSPp2a7vnYOT0?=
 =?us-ascii?q?yialIrfbSoQNGB6qb/n6j6s9WbKw9I0SiYPr9iAE6ZqCHMlOBM3o09NqRv1B?=
 =?us-ascii?q?7082RDf9oJ2GZoC0/OhSfMwcvzopU2oEEy87ppv4YIGe36Kp41Q7FCATItPn?=
 =?us-ascii?q?tnxcuujxTbSRrK2nxOfH8Rl0hkChTIvirnVJX8uTeoiu0v8yLIE9fxSONRO3?=
 =?us-ascii?q?zqp+8jAFeggnI8DgYk/DvX0utPkfp7jkmRliNO05LFOdqJMvs5U7HgLNIga1?=
 =?us-ascii?q?F7T5hsUydRW4W7a8gFKdMdLOUGrYfb5EowhBi8VGzOTKungncAzje+3e5j8u?=
 =?us-ascii?q?s7MSyW0yVxPd8fv075rMzyaKgdAKeq/Zfp4jjgXfN93C7m07XlLC4Rhuuoef?=
 =?us-ascii?q?FZWseAxHAdDAWZqFyPjtb+WlHdnqxF+yDTp6JJUc+qj0k2mQp0hGb2ndUtso?=
 =?us-ascii?q?LP2II76UnU7R16wK0PLoOhZ0thWO+ZGb0X6Aa0dK1PaJIlYUBIgSA5kpA56I?=
 =?us-ascii?q?OwWQRvqtxvj1aXI7TPO6Gask3cSuqOHgYjh39hV7KttjS11HGnwPbFXear3g?=
 =?us-ascii?q?9FlBhGiOPxs30HiQSQwJeoZLx5rx2M6BrXyRv0teh8L14fvs+5Y9ZpivZ43t?=
 =?us-ascii?q?Jb7HvdOR3KnU+orpCzNUEVufizxuHbPbvjqJzFK79rg0bTF7Zzg8mBLsMaAC?=
 =?us-ascii?q?0of1ih5sawju3IxUH5f5R2nNsoo5Xz1fKSbYxT7ubxS0dX8YR40lGvXhutyd?=
 =?us-ascii?q?AHyCxUZEIAeQiAiZDuIU2LOv3jEPOj1kyliyw4naqUF6D9ApjLMnnImavger?=
 =?us-ascii?q?A40UNH1Q4v1o4AtZdETLoGJPXpU0P28tHUE0xxPw+1xrP/Ac5mnsMFWG2JC7?=
 =?us-ascii?q?OEKq6ar1KS5+wuLuXNLI8YsTrwMb4kstbojHEliBkWeqyk?=
IronPort-PHdr: =?us-ascii?q?9a23=3AzwfB/x3wQl4XmEYMsmDT+DJfSgsGnvDZIAcR95?=
 =?us-ascii?q?M7irVILPj+rYq3ZR+X7KB3l1aMRoXSsa8a2KLd5rrtXWUQ7JrGqn0GeYxBW0?=
 =?us-ascii?q?xNhZAQngI8EYiODkioSZyiJ2RyVIwKHEQw83ywaxAMRcPlbg6avijrsGFKRE?=
 =?us-ascii?q?6vaFAqdYGXUsaax4z/n6i4+8jBRlpElBbmTrZWMTef91rX6dUU35VnF/cuwR?=
 =?us-ascii?q?/3/WZNe8pLmHlZFXWf3Ej3s5TVntYru2wY87pp95t6XKv3Zak+RrFDXhUgdl?=
 =?us-ascii?q?o4/Mn68CXEHyWV4X5OfmwKn0hzHgLH4RrmDKv24ADx5MRn3yzJWK++Bfh8EX?=
 =?us-ascii?q?zqp60+cybQlStdN2Yez3yPquIrvJNkkQK9tkUk34jVJ6yHCat/RI3mR8JEeG?=
 =?us-ascii?q?5KTp9XUCgCCKWFc5oMUegPG6VJkaD+pQprz1P2TUHkTKungj8L3175x40Xg+?=
 =?us-ascii?q?sIQCPLzQMaMtIXtyjbo4SyK5YscM+475vI5jDadMhr9GnD2K/SVjRiiNqBDL?=
 =?us-ascii?q?9JQ9HXlW8mCCSflTDy4cStd3vdnqxFmmy26u5HRNCkjkh58lpjowCkwJkspK?=
 =?us-ascii?q?rQlpotyVDvzy4n2akwP+SJdUddJoGDPth2jgvLMKlXYvokQDlFh3cnwZgq3P?=
 =?us-ascii?q?zzNGBCgNxvj1b2eazYTJaE/S3SD+WcJRh4lkNHf5eGgBypyEOP1eOlWfOG00?=
 =?us-ascii?q?xwky9ImIfU9VpS+DKU7pndZ8pRplm6/mmG7w7NwcohQwh83eKTY9ZpiuMPiL?=
 =?us-ascii?q?0hjUHJQA3JvQbyveyGbWghxrem7urkO6nWuZbbGqpm1xj7DIsJuP6aJ8QICB?=
 =?us-ascii?q?csUzLL0tyw1ILCwV/fXoR2pJhU2uGR+NiSbYxTpI27WDYSwtcP4A+7EGLzg5?=
 =?us-ascii?q?wI2HgdK1RdfwibypLkIEzKPKXgBOyk0A72wh522/DLOKHgCZzRL3/F1Y3sZq?=
 =?us-ascii?q?t591UCl1g23ZZU4JZTELgNJ7T+VlKi/NDbDxpsKwWv2K6nE9Ry0IoCRHiCSr?=
 =?us-ascii?q?GUKqLcsFKEp6ovLuCAaZVTuWPVLfkr+++ohng8lA=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0FsBgCyGp5dYU1DioBlhFwpgTsShE2?=
 =?us-ascii?q?JApFTihmGZ0UBAQEBAQEBAQEILQIBAQEBhzM4EwMCCQEBAQMBAgIBBQIBAQI?=
 =?us-ascii?q?CAxgWBoVrg0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQKBHicBAgMBAg8RHQE?=
 =?us-ascii?q?BNwEFCQEBCgsNAgImAgIDHgESAQUBHAYTBR2FRwMtAaN9gQM8iyaBMoJ+AYU?=
 =?us-ascii?q?LDYIiCSBsixmDNINuNT6HUoJejziHNpV7HUEHgiWCL4lxiHkbdJhMLadPDyO?=
 =?us-ascii?q?BRoF7MxojgQEGgwUQFJAkNIE5kBMBAQ?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0FjBADoDJ5dh0O0hNFlHgELHIQWgUQ?=
 =?us-ascii?q?xKoQjjlyCDxSJVooZhmc0EQEBAQEBAQEBASAUAQIBAQEBhxAjOBMCAQIJAQE?=
 =?us-ascii?q?BAwEBAQIBBQIBAQICEAEBAQoLCQgphTQMg0Y7MAEBAQEBAQEBAQEBAQEBAQE?=
 =?us-ascii?q?BAQEBFQJJVScBAQEDAQIPER0BATcBBQkBAQoLDQICJgICAx4BEgEFARwGEwU?=
 =?us-ascii?q?dgwCBawMcAaQEgQM8ijF1gTKCfQEBBYUIDYIiCYEMKIgbglaBHYIXg241PoI?=
 =?us-ascii?q?ahTiCWI84hzaVex1BB4Ilgi+JcYRxhAgbdJhMLZgwjx8ygUaBezMaI4EBBoI?=
 =?us-ascii?q?1UBAUgU8MF4NQimIzMoEGAQGTXQEB?=
X-IPAS-Result: =?us-ascii?q?A0FsBgCyGp5dYU1DioBlhFwpgTsShE2JApFTihmGZ0UBA?=
 =?us-ascii?q?QEBAQEBAQEILQIBAQEBhzM4EwMCCQEBAQMBAgIBBQIBAQICAxgWBoVrg0Y7M?=
 =?us-ascii?q?AEBAQEBAQEBAQEBAQEBAQEBAQEBFQKBHicBAgMBAg8RHQEBNwEFCQEBCgsNA?=
 =?us-ascii?q?gImAgIDHgESAQUBHAYTBR2FRwMtAaN9gQM8iyaBMoJ+AYULDYIiCSBsixmDN?=
 =?us-ascii?q?INuNT6HUoJejziHNpV7HUEHgiWCL4lxiHkbdJhMLadPDyOBRoF7MxojgQEGg?=
 =?us-ascii?q?wUQFJAkNIE5kBMBAQ?=
X-IPAS-Result: =?us-ascii?q?A0FjBADoDJ5dh0O0hNFlHgELHIQWgUQxKoQjjlyCDxSJV?=
 =?us-ascii?q?ooZhmc0EQEBAQEBAQEBASAUAQIBAQEBhxAjOBMCAQIJAQEBAwEBAQIBBQIBA?=
 =?us-ascii?q?QICEAEBAQoLCQgphTQMg0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQJJVScBA?=
 =?us-ascii?q?QEDAQIPER0BATcBBQkBAQoLDQICJgICAx4BEgEFARwGEwUdgwCBawMcAaQEg?=
 =?us-ascii?q?QM8ijF1gTKCfQEBBYUIDYIiCYEMKIgbglaBHYIXg241PoIahTiCWI84hzaVe?=
 =?us-ascii?q?x1BB4Ilgi+JcYRxhAgbdJhMLZgwjx8ygUaBezMaI4EBBoI1UBAUgU8MF4NQi?=
 =?us-ascii?q?mIzMoEGAQGTXQEB?=
X-IronPort-AV: E=Sophos; i="5.67,277,1566885600"; d="scan'208"; a="371466525"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="371393294"
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-Original-Recipients: migi9492@g.colorado.edu
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x99GSjFp013815
X-Nifty-SrcIP: [209.85.217.51]
X-Gm-Message-State: APjAAAV9TeKYg9gLswCJwGEiVSqpbtKjisMiA2+QcRscDA7Wd1+OiVTF 
 cLef8Vw7m7fhqQgzglAeGVjFnzeKVDTafYuOWIE=
X-Google-Smtp-Source: APXvYqzH0lno0Jfiz/rFQhtYHfui45CzQbPKiMY0yhhlnjAVEgFdHdM9+zJ7EOc9vXnfVbLZJAT9ZLaAw0J1HbDFjmA=
X-Received: by 2002:a67:2e81:: with SMTP id u123mr1224042vsu.155.1570638525039; Wed, 09
 Oct 2019 09:28:45 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
 <893c3b4f03266c9496137cc98ac2b1bd27f92c73.1570633189.git.vilhelm.gray@gmail.com>
In-Reply-To: <893c3b4f03266c9496137cc98ac2b1bd27f92c73.1570633189.git.vilhelm.gray@gmail.com>
From: "Masahiro Yamada" <yamada.masahiro@socionext.com>
Date: Thu, 10 Oct 2019 01:28:08 +0900
X-Gmail-Original-Message-ID: <CAK7LNATgW7bXUmqV=3QAaJ0Qu73Kox-TgDCQJb=s0=mwewSCUg@mail.gmail.com>
Message-ID: <CAK7LNATgW7bXUmqV=3QAaJ0Qu73Kox-TgDCQJb=s0=mwewSCUg@mail.gmail.com>
Subject: Re: [PATCH v17 01/14] bitops: Introduce the for_each_set_clump8 macro
To: "William Breathitt Gray" <vilhelm.gray@gmail.com>
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
X-MS-Exchange-Organization-ExpirationStartTime: 09 Oct 2019 17:41:24.9889 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: 735c71fc-2d39-4c88-1fc8-08d74cdfe7ff
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-Forefront-Antispam-Report: CIP:128.138.67.85; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:SKN; SFS:; DIR:INB; SFP:; SCL:-1; SRVR:CY4PR03MB2421; H:ipmx8.colorado.edu;
 FPR:; SPF:None; LANG:en; ; SKIP:1; 
X-MS-Exchange-Organization-AuthSource: BY2NAM01FT040.eop-nam01.prod.protection.outlook.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-OriginatorOrg: colorado.edu
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 735c71fc-2d39-4c88-1fc8-08d74cdfe7ff
X-MS-TrafficTypeDiagnostic: CY4PR03MB2421:|CY4PR03MB2421:
X-MS-Exchange-Organization-SCL: -1
X-MS-Oob-TLC-OOBClassifiers: OLM:462;
X-Microsoft-Antispam: BCL:0;
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2019 17:41:23.3486 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 735c71fc-2d39-4c88-1fc8-08d74cdfe7ff
X-MS-Exchange-CrossTenant-Id: 3ded8b1b-070d-4629-82e4-c0b019f46057
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3ded8b1b-070d-4629-82e4-c0b019f46057; Ip=[128.138.67.85];
 Helo=[ipmx8.colorado.edu]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR03MB2421
X-MS-Exchange-Transport-EndToEndLatency: 00:27:37.7165280
X-MS-Exchange-Processed-By-BccFoldering: 15.20.2347.014
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; ex:0; auth:0; dest:I;
 ENG:(750127)(520002050)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?XfehoKoQeoAvf+w2Gf44zxu5Ao084RSHfWPhLC2USsMJr509+MEhqcwMi/XM?=
 =?us-ascii?Q?R12G3/NhnikI50bd+odDfPJcxjLjxBVt/NSG+hbCoF/eGTOyTxHQeu6shWg7?=
 =?us-ascii?Q?ak+123SEPbCI8w9HNCi+gydgamQxAL1Rlsb5vTcPEIL/hT1t3irFjlcGObNG?=
 =?us-ascii?Q?pqF0AT+8kpOlqH+N5ZEo7WQhlBQvurz2Y4bGc/TQuyqk+s/U0HgeFCLvXAby?=
 =?us-ascii?Q?cf0pMxFU3WdHBaRiMXfylXbXtgUOhTfu58l0CVzHf4edVr9lPsRs1WJDi4aS?=
 =?us-ascii?Q?ZjOitpChY+toxDVY//ekdpJIQUszxPF7z94mrHmAhUZRN6fV7FtwOEFh+Is7?=
 =?us-ascii?Q?I1vGJrKxvKSCqGTKJCWKPzJa6SNetAgdkc2tnXuN2ZSekZ2+H8va9iikVhmD?=
 =?us-ascii?Q?9JDNM/LXTPs5+JouV5uCCYWAMqwdfX8t/2zvOg6fvZ9JiUe3pxlVRXCiwYUf?=
 =?us-ascii?Q?7bAyigmRcpqmM0H8h7lPg01fM1lgHS5Tu+uIFHMcXfKzCWGWe21YeQW2iINz?=
 =?us-ascii?Q?KjYCyyi28u5Ys4lX+wujITAzFTt1YO8GEYyn+cANZEDI3jsUQaoCnHr5HRyE?=
 =?us-ascii?Q?6AaSRim/s+yo7YZKKbOEPVRhXoRvW4mmtChpIS9tfkgHDlhd9IFIVTTUlJra?=
 =?us-ascii?Q?vYhK/TsW8EjU46Cv51GGB7ES8YmdY5isZ/ic5tK0BXwpASx3ySV7gdlbq7I/?=
 =?us-ascii?Q?JY1l2KchUuUeTpc1zwf+F8eAK//eM5VALAeltIOH7sS8L90hj1yyWP8aQ0FF?=
 =?us-ascii?Q?qqgBJXsX+a9AheopRBhAH3uej9zKnBi38zcj1nu7XSop4ZDCqBG6yuVqY8wO?=
 =?us-ascii?Q?JwfFxPTwB5SbrcTgi0JncGPxSkDgdiJnUGHe17oBHq/KVROM+rHdNUL/MA/s?=
 =?us-ascii?Q?G98ZL7w1DlZLBkw0NeuUZfdy5LnlsO8sR4wW7riD3kYbgg2+Ud7Dgn60YvL5?=
 =?us-ascii?Q?U7ZIJGGpQzwYDVvgTGiCsUiA/PMwJOQIVrTdk1dbUn08jWeb2p7rAM9ZsoNj?=
 =?us-ascii?Q?Cy4krL1/hdCWF3Yor3x8oDYXHHhiEP+f1U2TyGLsFkLGcWX5k/X5hPtdLNT4?=
 =?us-ascii?Q?QT2S3mMIZMWrhlq9yiJI2bm+xlX6eZseSJFslyxuY2NHgfqUn/52t2eoIVCs?=
 =?us-ascii?Q?5Q8sOKvuwv1xGuorZur+PUkCGwYkSiAu6w=3D=3D?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_193655_724226_7ACFCBF5 
X-CRM114-Status: GOOD (  10.37  )
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 "preid@electromag.com.au" <preid@electromag.com.au>,
 Arnd Bergmann <arnd@arndb.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux PM mailing list <linux-pm@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, Linux Kernel
 Mailing List <linux-kernel@vger.kernel.org>,
 "morten.tiljeset@prevas.dk" <morten.tiljeset@prevas.dk>,
 "sean.nyekjaer@prevas.dk" <sean.nyekjaer@prevas.dk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Lukas Wunner <lukas@wunner.de>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 12:27 AM William Breathitt Gray
<vilhelm.gray@gmail.com> wrote:
>
> This macro iterates for each 8-bit group of bits (clump) with set bits,
> within a bitmap memory region. For each iteration, "start" is set to the
> bit offset of the found clump, while the respective clump value is
> stored to the location pointed by "clump". Additionally, the
> bitmap_get_value8 and bitmap_set_value8 functions are introduced to
> respectively get and set an 8-bit value in a bitmap memory region.
>
> Suggested-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> Suggested-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> Suggested-by: Lukas Wunner <lukas@wunner.de>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Andy Shevchenko <andy.shevchenko@gmail.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
> ---
>  include/asm-generic/bitops/find.h | 17 +++++++++++++++
>  include/linux/bitmap.h            | 35 +++++++++++++++++++++++++++++++
>  include/linux/bitops.h            |  5 +++++
>  lib/find_bit.c                    | 14 +++++++++++++
>  4 files changed, 71 insertions(+)
>
> diff --git a/include/asm-generic/bitops/find.h b/include/asm-generic/bitops/find.h
> index 8a1ee10014de..9fdf21302fdf 100644
> --- a/include/asm-generic/bitops/find.h
> +++ b/include/asm-generic/bitops/find.h
> @@ -80,4 +80,21 @@ extern unsigned long find_first_zero_bit(const unsigned long *addr,
>
>  #endif /* CONFIG_GENERIC_FIND_FIRST_BIT */
>
> +/**
> + * find_next_clump8 - find next 8-bit clump with set bits in a memory region
> + * @clump: location to store copy of found clump
> + * @addr: address to base the search on
> + * @size: bitmap size in number of bits
> + * @offset: bit offset at which to start searching
> + *
> + * Returns the bit offset for the next set clump; the found clump value is
> + * copied to the location pointed by @clump. If no bits are set, returns @size.
> + */
> +extern unsigned long find_next_clump8(unsigned long *clump,
> +                                     const unsigned long *addr,
> +                                     unsigned long size, unsigned long offset);
> +
> +#define find_first_clump8(clump, bits, size) \
> +       find_next_clump8((clump), (bits), (size), 0)
> +
>  #endif /*_ASM_GENERIC_BITOPS_FIND_H_ */
> diff --git a/include/linux/bitmap.h b/include/linux/bitmap.h
> index 90528f12bdfa..761fab5b60a7 100644
> --- a/include/linux/bitmap.h
> +++ b/include/linux/bitmap.h
> @@ -66,6 +66,8 @@
>   *  bitmap_allocate_region(bitmap, pos, order)  Allocate specified bit region
>   *  bitmap_from_arr32(dst, buf, nbits)          Copy nbits from u32[] buf to dst
>   *  bitmap_to_arr32(buf, src, nbits)            Copy nbits from buf to u32[] dst
> + *  bitmap_get_value8(map, start)               Get 8bit value from map at start
> + *  bitmap_set_value8(map, value, start)        Set 8bit value to map at start
>   *
>   * Note, bitmap_zero() and bitmap_fill() operate over the region of
>   * unsigned longs, that is, bits behind bitmap till the unsigned long
> @@ -488,6 +490,39 @@ static inline void bitmap_from_u64(unsigned long *dst, u64 mask)
>                 dst[1] = mask >> 32;
>  }
>
> +/**
> + * bitmap_get_value8 - get an 8-bit value within a memory region
> + * @map: address to the bitmap memory region
> + * @start: bit offset of the 8-bit value; must be a multiple of 8
> + *
> + * Returns the 8-bit value located at the @start bit offset within the @src
> + * memory region.
> + */
> +static inline unsigned long bitmap_get_value8(const unsigned long *map,
> +                                             unsigned long start)

Why is the return type "unsigned long" where you know
it return the 8-bit value ?

u8?



> +{
> +       const size_t index = BIT_WORD(start);
> +       const unsigned long offset = start % BITS_PER_LONG;
> +
> +       return (map[index] >> offset) & 0xFF;
> +}
> +
> +/**
> + * bitmap_set_value8 - set an 8-bit value within a memory region
> + * @map: address to the bitmap memory region
> + * @value: the 8-bit value; values wider than 8 bits may clobber bitmap
> + * @start: bit offset of the 8-bit value; must be a multiple of 8
> + */
> +static inline void bitmap_set_value8(unsigned long *map, unsigned long value,


Same here,   "u8 value"



> +                                    unsigned long start)
> +{
> +       const size_t index = BIT_WORD(start);
> +       const unsigned long offset = start % BITS_PER_LONG;
> +
> +       map[index] &= ~(0xFF << offset);
> +       map[index] |= value << offset;
> +}
> +
>  #endif /* __ASSEMBLY__ */
>
>  #endif /* __LINUX_BITMAP_H */
> diff --git a/include/linux/bitops.h b/include/linux/bitops.h
> index cf074bce3eb3..fb94a10f7853 100644
> --- a/include/linux/bitops.h
> +++ b/include/linux/bitops.h
> @@ -40,6 +40,11 @@ extern unsigned long __sw_hweight64(__u64 w);
>              (bit) < (size);                                    \
>              (bit) = find_next_zero_bit((addr), (size), (bit) + 1))
>
> +#define for_each_set_clump8(start, clump, bits, size) \
> +       for ((start) = find_first_clump8(&(clump), (bits), (size)); \
> +            (start) < (size); \
> +            (start) = find_next_clump8(&(clump), (bits), (size), (start) + 8))
> +
>  static inline int get_bitmask_order(unsigned int count)
>  {
>         int order;
> diff --git a/lib/find_bit.c b/lib/find_bit.c
> index 5c51eb45178a..e35a76b291e6 100644
> --- a/lib/find_bit.c
> +++ b/lib/find_bit.c
> @@ -214,3 +214,17 @@ EXPORT_SYMBOL(find_next_bit_le);
>  #endif
>
>  #endif /* __BIG_ENDIAN */
> +
> +unsigned long find_next_clump8(unsigned long *clump, const unsigned long *addr,


Ditto.   "u8 *clump"




> +                              unsigned long size, unsigned long offset)
> +{
> +       offset = find_next_bit(addr, size, offset);
> +       if (offset == size)
> +               return size;
> +
> +       offset = round_down(offset, 8);
> +       *clump = bitmap_get_value8(addr, offset);
> +
> +       return offset;
> +}
> +EXPORT_SYMBOL(find_next_clump8);
> --
> 2.23.0
>


--
Best Regards

Masahiro Yamada


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
