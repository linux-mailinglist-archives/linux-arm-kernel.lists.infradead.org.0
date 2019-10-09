Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89629D53CD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 04:35:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HZDXUizVy2Pp0ZGYW7QctIfm73l/o4M3hOqpyqWJmWs=; b=ZcuziUDaMm3eFQ
	v/t03R/xZNGasn1aADnC9hNYMOkf/YJ5TKWHGLpYwwo/N/sFGYuZFNJz0ylJqTfx2xKV9zHpacmkY
	pmsE4VsRqd/0thi4B38ghzOdndLC0ejeVpUG1J2aG1WTbKr5+WMwJ5cqlAeGA+TT9PqaIckoNM8Qd
	WGmrnrhwN4PsLx7nSU0grN3qGe5i2Jodf2hwz3As1UvPLfUb417bca679Vcp+LPfT7Oh36al1NLkZ
	Qcpg8qtjBsGUphqzcad5VRtjvyOv0AgaAZhMpX5iVrzTBsz/K6nKthTngQXlxhzKcyQzHAEGF+kHL
	3XgyM0AvlnbIxok5vaag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJTil-0000js-2k; Sun, 13 Oct 2019 02:34:59 +0000
Received: from listssympa-test.colorado.edu ([128.138.129.156])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJTic-0000jI-Bo
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 02:34:52 +0000
Received: from listssympa-test.colorado.edu (localhost [127.0.0.1])
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/sympa) with ESMTPS id
 x9D2Ya13012932
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 12 Oct 2019 20:34:36 -0600
Received: (from root@localhost)
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/submit) id
 x9D2YZL0012893; Sat, 12 Oct 2019 20:34:35 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com; s=dec2015msa;
 t=1570638824;        bh=y7V7634zQnspw5C5IJL3KPw/IDKbvhhOq4Dz/8oh3dQ=;       
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;       
 b=MsS3ZQ20/OfPGrsMG5IyzSZauuNMqtsxIcdmU7pNnKcntklAvx/7zJDpvaPX3+PQC        
 YDxZTkiLEqLn9oPGmJdCvJECLI8dFyVq2vS0dsGe+NYDKgNjM05Hrg8DIctf99V1F5        
 oER2VyTZ4WwhcVy3va2uzGTpz1WEeicEkMdkQRSRR1CYdpYzaIJdRxHLBQqjRgfitH        
 MDxgGdTLCElhyNuFu4PnLPyuPqRLr8VU+Ren4+1DmOGOhdSRcE8J1A6VaOTdBJlUBz        
 ioBL50QAv0d422bx2Ik9XUFY2jy+nGel9ea8TRaSpK7S9NP5z2/0q9aiEK3cwarHwU        
 QYnmyxZVjuxDw==
Received: from BN8PR03MB4801.namprd03.prod.outlook.com (2603:10b6:a03:e0::32)
 by BYAPR03MB4376.namprd03.prod.outlook.com with HTTPS via
 BYAPR05CA0091.NAMPRD05.PROD.OUTLOOK.COM; Wed, 9 Oct 2019 23:12:10 +0000
Received: from BN6PR03CA0061.namprd03.prod.outlook.com (2603:10b6:404:4c::23)
 by
 BN8PR03MB4801.namprd03.prod.outlook.com (2603:10b6:408:9e::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16; Wed, 9 Oct
 2019 17:48:40 +0000
Received: from BY2NAM01FT063.eop-nam01.prod.protection.outlook.com
 (2a01:111:f400:7e42::200) by BN6PR03CA0061.outlook.office365.com
 (2603:10b6:404:4c::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Wed, 9 Oct 2019 17:48:40 +0000
Received: from ipmx3.colorado.edu (128.138.67.74) by
 BY2NAM01FT063.mail.protection.outlook.com (10.152.69.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2347.16 via Frontend Transport; Wed, 9 Oct 2019 17:48:39 +0000
Received: from mx.colorado.edu ([128.138.67.77])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 11:04:49 -0600
Received: from vger.kernel.org ([209.132.180.67]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 10:34:07 -0600
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand id
 S1731679AbfJIQeG (ORCPT <rfc822; michael.gilroy@colorado.edu>);
 Wed, 9 Oct 2019 12:34:06 -0400
Received: from conssluserg-06.nifty.com ([210.131.2.91]:28439 "EHLO       
 conssluserg-06.nifty.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org       
 with ESMTP id S1731612AbfJIQeG (ORCPT       
 <rfc822; linux-kernel@vger.kernel.org>); Wed, 9 Oct 2019 12:34:06 -0400
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com
 [209.85.217.41])
 (authenticated)        by conssluserg-06.nifty.com with ESMTP id
 x99GXhxY009609;        Thu, 10 Oct 2019 01:33:43 +0900
Received: by mail-vs1-f41.google.com with SMTP id w195so1912625vsw.11; Wed, 09
 Oct 2019 09:33:43 -0700 (PDT)
Authentication-Results: spf=none (sender IP is 128.138.67.74)
 smtp.mailfrom=vger.kernel.org; 
 o365.colorado.edu; dkim=pass (signature was verified)
 header.d=nifty.com;o365.colorado.edu; dmarc=none action=none
 header.from=socionext.com;
Received-SPF: None (protection.outlook.com: vger.kernel.org does not designate
 permitted sender hosts)
Authentication-Results-Original: mx.colorado.edu;
 dkim=pass (signature verified)
 header.i=@nifty.com
IronPort-SDR: qgfWUJsDsuyFh4s8ouHe4SyE7r0CZPBcQydgxHvc6COnwbI3hUdO6Lhrlkzj+cijtQ9thGF8Ck
 Q5r+b+oHqd1UuIEMIGj2648a12TVi3KmM=
IronPort-SDR: morWqomEBILHoZ9zLcMbOt1DPaqMj1/Rd6pt2xKrPMXB1UPtCRxod71zDPrO+m+L6Zv5IGlZE1
 FKjydSBWrCQ4ZTzg0ijpsUD/UK1z7ydiQ=
IronPort-PHdr: =?us-ascii?q?9a23=3AbZGF/BCnFfZrltp2SE+YUyQJP3V1l5bVG0s49J?=
 =?us-ascii?q?MjlrtSc6Oloci/blKKvKYlhQrTRoye8PJN0beI4OjrDHYN5Z+RvXxFapFIXg?=
 =?us-ascii?q?8IhZZek1kmAcCZGAvwK/u5Ck5yVIwKHBctt2ruPUVeQp6nOljJqy768WtLR0?=
 =?us-ascii?q?qna1Eldr6pSeuwx4z/n6j6s9XZY1BZ2wTiP+guPiywth3O6+JLoKlGcYUJ1V?=
 =?us-ascii?q?zojlhCZeRW4no0CUDUzxH8vcuJqc0GkWwY87ppv4YIUfDAcqo1V7FeBzk9YU?=
 =?us-ascii?q?EzoffmrR3SCDeItFUGVWBEvhNUDlr+8Rv4U5zt4Bf95MF2igeAOsilKNJ8EX?=
 =?us-ascii?q?zqp+8jABW9rTw8bAwAqjmQrcJIo7hAhT38hg1t+LzdfZyzEeNiZbP8dt8feD?=
 =?us-ascii?q?VZeMByXCpdAYeVcZtIUPgjEf5GprHN/Bg2lDDbZ0HkTKungncAzk7azZ8G0O?=
 =?us-ascii?q?UFPBji2l0nJ/0Lknj/svfYH4MzAeyb3ZfRlyv4N/9N9jq+zrnkUR8Ho9TUAJ?=
 =?us-ascii?q?Jqfpr96EIzGVKUsAy+9OmHd3vdnqxF+yDT6MdaD9y+t1x7lB5xqQa+ndkl0J?=
 =?us-ascii?q?Tbqb4N2An72Ch4y6s2ANG7cXRAW+T9O6pcrxCIPqpUTvkyY0VCgT848LIIuI?=
 =?us-ascii?q?KbGUpCgNxvj1aXI7SiX5iHzR7fcM28JTdpom9LZe6HgTKK4FWY09fYTJmK7R?=
 =?us-ascii?q?VwoywZ0YDgs1ci8Bzf0fKMZ6tfp27/5z+o6wz5yOV5C1JR9+KTY9ZpivZ43p?=
 =?us-ascii?q?sUm2CeRhbfhh360PXMfFV+2+v529nJU+/kt9yaGIJw2wz3YpgUk/enIrsDYy?=
 =?us-ascii?q?42AnrBvrylhbTi0G6iS6pDlN0pr8y7+NiSbYxT7ubxOj5T15cz2Si9EieKz4?=
 =?us-ascii?q?FNzjEXaVNffxSfiJL1fkvDO+38EaKnik+3w20xldnbIr3sBInMJXHfkbDnOI?=
 =?us-ascii?q?xw8FNY1BFtkoJa99RfDbUGOvv/XQn8uMGLRhM6Mgnh2+/8E509zYIRX2uTH7?=
 =?us-ascii?q?WUeL3fq16G5+8jYqGMaYYZtSy7Kq0N4f/gkW5/klgYcA=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AwBLRhhIf1HwALlVOqdmcpTZQNAQEmpCxExAc7o?=
 =?us-ascii?q?cul7NJdPr/osb8aRWMrfw4lkTAGJ7b4qgZ1bmeuPX6VGgJ8ZuN92oPdJVcWh?=
 =?us-ascii?q?NWwclDmQ0uHN/DAkr+f5uIJ2RyVIwKHBd+qn22OhINQZv7fFSB6mHntGNNQk?=
 =?us-ascii?q?ukZVovereQeMaax4z/n6j68Z2Gclp222TmPaFLKg6uslj66+g0pdBBErl26z?=
 =?us-ascii?q?fqqGVIe8NPmU96YgKUn03w35Ljmfwru2wY87ppv84Va6j0cr41S7dVF2YHNS?=
 =?us-ascii?q?UP6dXvpFz/Slmh/HwZAEkfjhcaOBXP7hzxQsXNtXnRvbhTwi6fbqiUBfh8EX?=
 =?us-ascii?q?zqp+9hHTrzs3w1DmRht0bZsuNql4d0/TOwtSdNypPJRqSMKOFuX6jReO5FXU?=
 =?us-ascii?q?xHfc1XSy9FK52sKNQdLcYZI+9gn9K+n2IlyHn2TUHkTKungnd5qm/E4a4798?=
 =?us-ascii?q?k4NQeX2zQPGvACm2r2gf7RFfcef/GL1fPW9m3PdNxbmhHMxKvHVBIE+aysR7?=
 =?us-ascii?q?0gXeva1Ud+Rj2coAj1y8Std3vdnqxF+2+21bBeRN6d11E4qwpPs2Oxz50xmK?=
 =?us-ascii?q?b1npBM9X3J9C5Uw6M5JuSCc3RBOPWVHINhpSi7FYdMUuMGaVhxuhw1xLwamf?=
 =?us-ascii?q?vZNGBCgNxvj1aXTtCXfKeE3jbIeeKRMBFlqm85QLSbvwevyVGa7vesaPT36l?=
 =?us-ascii?q?tM8mkcvtzrmVcN2yfp4eXXaKJUoHmo/gqD/SLX18tWRCJ83eKTY9ZpivYxkb?=
 =?us-ascii?q?A37Bz6NzGulBms1qWGLGQnq9iVxdW9YKSloLCRM955g1HCCK0Vgu/gOrUeCl?=
 =?us-ascii?q?UcBS/D4LW11ZDApkbmSa9qkcBT8OGR+NiSbYxT7peIBQpEwrQd6QuvIyjzhY?=
 =?us-ascii?q?dQjTwGNlVDYBWdk83zNkrTJOytFf6kmAf2ymVC2uzGM7v9A57EMnnElvLbcK?=
 =?us-ascii?q?1g71JHllVhyMAZ7JVQDasILPW1V0Ps55TUDR48ZhS92P2vSM582YUXRX+VD+?=
 =?us-ascii?q?eHPbnTv16F6qNnI+SFaIIP/jeoA/4k6eL/y3Q+nFI=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0HSBgBLGZ5dYU1DioBPFhwBAQEBAQc?=
 =?us-ascii?q?BAREBBAQBAYF7ghsFJAKBSyqEI45cgg+JaooZhmcyEwEBAQEBAQEBAQgYFQI?=
 =?us-ascii?q?BAQEBhxAjOBMCAQIJAQEBAwEBAQIBBQIBAQICAxgWBoVfDINGOzABAQEBAQE?=
 =?us-ascii?q?BAQEBAQEBAQEBAQEBARUCSVUnAQEBAwECDxEEGQEBNwEFCQEBCgsNAgIPFwI?=
 =?us-ascii?q?CAx4BEgEFARwGEwUdgwCCRwMtAaN3gQM8ijF1fzOCfQEBBYUGDYIiCSBsKIp?=
 =?us-ascii?q?xgR2CF4QjPoIagWeDUYJejQmCL4c2h2aOMkEHgiWCL45ihAgbdIFGh06POC2?=
 =?us-ascii?q?YMI8fDyOBRoF7MxojgQEGgjVQEBSBTwwXg1CKYjQxgQiQEwEB?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0GmAwBiEp5dh0O0hNFPFh0BAQEJARE?=
 =?us-ascii?q?FBQGBe4IbgUQxKoQjjluCDxSJVooZhmcyEwEBAQEBAQEBASAUAQIBAQEBhxA?=
 =?us-ascii?q?jOBMCAQIJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQgphTQMg0Y7MAEBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEBAQEBAQEBFQJJVScBAQEDAQIPEQQZAQE3AQUJAQEKCw0CAg8XAgI?=
 =?us-ascii?q?DHgESAQUBHAYTBR2DAIFrAxwBo36BAzyKMXV/M4J9AQEFhQYNgiIJgQwoinG?=
 =?us-ascii?q?BHYIXhCM+ghqBZ4NRgliNCYIvhzaHZo4yQQeCJYIvjmKECBt0gUaHTo84LZg?=
 =?us-ascii?q?wjx8ygUaBezMaI4EBBoI1UBAUgU8MF4NQimIzMoEGAQGTXQEB?=
X-IPAS-Result: =?us-ascii?q?A0HSBgBLGZ5dYU1DioBPFhwBAQEBAQcBAREBBAQBAYF7g?=
 =?us-ascii?q?hsFJAKBSyqEI45cgg+JaooZhmcyEwEBAQEBAQEBAQgYFQIBAQEBhxAjOBMCA?=
 =?us-ascii?q?QIJAQEBAwEBAQIBBQIBAQICAxgWBoVfDINGOzABAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBARUCSVUnAQEBAwECDxEEGQEBNwEFCQEBCgsNAgIPFwICAx4BEgEFARwGE?=
 =?us-ascii?q?wUdgwCCRwMtAaN3gQM8ijF1fzOCfQEBBYUGDYIiCSBsKIpxgR2CF4QjPoIag?=
 =?us-ascii?q?WeDUYJejQmCL4c2h2aOMkEHgiWCL45ihAgbdIFGh06POC2YMI8fDyOBRoF7M?=
 =?us-ascii?q?xojgQEGgjVQEBSBTwwXg1CKYjQxgQiQEwEB?=
X-IPAS-Result: =?us-ascii?q?A0GmAwBiEp5dh0O0hNFPFh0BAQEJAREFBQGBe4IbgUQxK?=
 =?us-ascii?q?oQjjluCDxSJVooZhmcyEwEBAQEBAQEBASAUAQIBAQEBhxAjOBMCAQIJAQEBA?=
 =?us-ascii?q?wEBAQIBBQIBAQICEAEBAQoLCQgphTQMg0Y7MAEBAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBFQJJVScBAQEDAQIPEQQZAQE3AQUJAQEKCw0CAg8XAgIDHgESAQUBHAYTB?=
 =?us-ascii?q?R2DAIFrAxwBo36BAzyKMXV/M4J9AQEFhQYNgiIJgQwoinGBHYIXhCM+ghqBZ?=
 =?us-ascii?q?4NRgliNCYIvhzaHZo4yQQeCJYIvjmKECBt0gUaHTo84LZgwjx8ygUaBezMaI?=
 =?us-ascii?q?4EBBoI1UBAUgU8MF4NQimIzMoEGAQGTXQEB?=
X-IronPort-AV: E=Sophos; i="5.67,277,1566885600"; d="scan'208"; a="369357149"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="369279851"
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-Original-Recipients: migi9492@g.colorado.edu
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x99GXhxY009609
X-Nifty-SrcIP: [209.85.217.41]
X-Gm-Message-State: APjAAAVxi43/ISGtq51ADyXmhh9eD47DCk3WHkMiUgQ3lgcclp5iBdEZ 
 YB6VcYqAVG0DYICVE1ioCxNCCHHVdDHJTOGVzCc=
X-Google-Smtp-Source: APXvYqyVz/TISAP9X9dWqRgp4AQ7poq8KBQqo3Tv8o3GwtVkP0izbYG6Zxk1diURj0JSGqrOxub3fGjbdk2bFZQOcHU=
X-Received: by 2002:a05:6102:97:: with SMTP id
 t23mr2437001vsp.179.1570638822621; Wed, 09
 Oct 2019 09:33:42 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
 <271a7735b02b6a8b1f54c018e38ea932d1fd299e.1570633189.git.vilhelm.gray@gmail.com>
In-Reply-To: <271a7735b02b6a8b1f54c018e38ea932d1fd299e.1570633189.git.vilhelm.gray@gmail.com>
From: "Masahiro Yamada" <yamada.masahiro@socionext.com>
Date: Thu, 10 Oct 2019 01:33:06 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQStJsZ4cYTJyAPvjyngWkKs+5y=yzJb6vz3-cco+2-ug@mail.gmail.com>
Message-ID: <CAK7LNAQStJsZ4cYTJyAPvjyngWkKs+5y=yzJb6vz3-cco+2-ug@mail.gmail.com>
Subject: Re: [PATCH v17 09/14] gpio: uniphier: Utilize for_each_set_clump8
 macro
To: "William Breathitt Gray" <vilhelm.gray@gmail.com>
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
X-MS-Exchange-Organization-ExpirationStartTime: 09 Oct 2019 17:48:39.6437 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: 3b71c8c4-76f6-4335-2e89-08d74ce0eb12
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-Forefront-Antispam-Report: CIP:128.138.67.74; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:SKN; SFS:; DIR:INB; SFP:; SCL:-1; SRVR:BN8PR03MB4801; H:ipmx3.colorado.edu;
 FPR:; SPF:None; LANG:en; ; SKIP:1; 
X-MS-Exchange-Organization-AuthSource: BY2NAM01FT063.eop-nam01.prod.protection.outlook.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-OriginatorOrg: colorado.edu
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3b71c8c4-76f6-4335-2e89-08d74ce0eb12
X-MS-TrafficTypeDiagnostic: BN8PR03MB4801:|BN8PR03MB4801:
X-MS-Exchange-Organization-SCL: -1
X-MS-Oob-TLC-OOBClassifiers: OLM:3044;
X-Microsoft-Antispam: BCL:0;
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2019 17:48:39.3855 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b71c8c4-76f6-4335-2e89-08d74ce0eb12
X-MS-Exchange-CrossTenant-Id: 3ded8b1b-070d-4629-82e4-c0b019f46057
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3ded8b1b-070d-4629-82e4-c0b019f46057; Ip=[128.138.67.74];
 Helo=[ipmx3.colorado.edu]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR03MB4801
X-MS-Exchange-Transport-EndToEndLatency: 05:23:32.5135999
X-MS-Exchange-Processed-By-BccFoldering: 15.20.2347.014
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; ex:0; auth:0; dest:I;
 ENG:(750127)(520002050)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ePZetb8ZoMQhnfEdwb8mPWnh/e/kp1Lx8seZtSWuCe9PUk5SPNr6cPe1tCrF?=
 =?us-ascii?Q?/92bLD90tvuigzvKFc/XwXRI0xdNt4bWs8qsgNXFMa4fkg/WKX/6VPm/gx5k?=
 =?us-ascii?Q?lZcBfUIyVGagXOw1th9Pj13SYeoxB8UP7E9hW0MNeobA/yK9I8wZEVX6dQWW?=
 =?us-ascii?Q?OXNSIYjY+C7MBWiz7KYGyKDq3FaQeURDQwHpeCNgDnKa9jgeV3y+Xp4nSw6H?=
 =?us-ascii?Q?pHUGM3UBxdsOtJFSZUtPWIs6gtzKXgDxpIgePxusgEvCKj8F5zk2oT9c7EP9?=
 =?us-ascii?Q?boSGZN2TRdwh42zO6cThZAVZmrVw+cQifx4dVdtuUA2Zl6rR7Z3huLr36gaj?=
 =?us-ascii?Q?UfCaEIkhSUwx1plLTQ3vkpqc94QD1tL9siCSFLOW2Nurteql602fJQyl4t17?=
 =?us-ascii?Q?l/DVNamAxS1B+CL3T1AAdAfRWW5ccBhAO2T+ZjwhxkcTOKD6/cMTgifBtruj?=
 =?us-ascii?Q?Mumt84bZp97zC2UXT+7dOF3NxoMGArZ4/1XdhB7tjYa6iNH/6QzTol+dWKtp?=
 =?us-ascii?Q?U1jpjiEzmfVZudpuYZQ3yMSebVF/vHbPeFm5Fyi0B1y5JM/Xu8yxMyHn+ZW6?=
 =?us-ascii?Q?TMc+6vXuO1eSImoUGshqWkKCX84fvA72Qx/6C1DFeB83L3jTNdKVoLWQHsxi?=
 =?us-ascii?Q?kmc0pi+L9sQSW6eMmZZASWzc1EmvPbbqe3F+iWKzvdF95nQ1UjAeMc/JvsUV?=
 =?us-ascii?Q?6dfkd3vXG/r3RlDj8CeI3qbVneSugstoRQiTk32zMWsszcU2WMo7kVTfS2II?=
 =?us-ascii?Q?MC3Wgbok3DkygF8raJHxY/Vi6DfxK3PGKs1h1+YaKDBI3XVIPr6MAXzbSfKx?=
 =?us-ascii?Q?vrVsJk2GMM4S6K6VLDQJcWDWIEFC4ihrYmjBx4IO3JjDXZAh2es7j64Lq12t?=
 =?us-ascii?Q?gGfnAdcXlRojKF4io6dCViuJR1d+eK7R4SJ2q9MUSSjqFZ4r0zPzcC9NF3DF?=
 =?us-ascii?Q?wktLN9ShprwfvhTGGZs1oCU/+u0ft2L7kcr8p8QI3tvWhkCAjbQKFNf9Cefc?=
 =?us-ascii?Q?FH1FcQXil9muTcmJIvNhoAjotLTsBnJRUMBFIQYTUqa83oQY7va6kJ6ubkJm?=
 =?us-ascii?Q?2t0FtIu9vqZm5CTFLZaPgG2tWihMa3I12AvXS0vDWzigs8FAcmGJtY+3H8Mu?=
 =?us-ascii?Q?CdJuiVfgKCbQjEDGriIKydyS4OtmkOSnzg=3D=3D?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_193450_498667_A4B830A2 
X-CRM114-Status: GOOD (  11.90  )
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
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux PM mailing list <linux-pm@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, Linux Kernel
 Mailing List <linux-kernel@vger.kernel.org>,
 "morten.tiljeset@prevas.dk" <morten.tiljeset@prevas.dk>,
 "sean.nyekjaer@prevas.dk" <sean.nyekjaer@prevas.dk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Lukas Wunner <lukas@wunner.de>, Geert Uytterhoeven <geert@linux-m68k.org>,
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
> Replace verbose implementation in set_multiple callback with
> for_each_set_clump8 macro to simplify code and improve clarity. An
> improvement in this case is that banks that are not masked will now be
> skipped.
>
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
> ---
>  drivers/gpio/gpio-uniphier.c | 16 ++++++----------
>  1 file changed, 6 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpio/gpio-uniphier.c b/drivers/gpio/gpio-uniphier.c
> index 93cdcc41e9fb..3e4b15d0231e 100644
> --- a/drivers/gpio/gpio-uniphier.c
> +++ b/drivers/gpio/gpio-uniphier.c
> @@ -15,9 +15,6 @@
>  #include <linux/spinlock.h>
>  #include <dt-bindings/gpio/uniphier-gpio.h>
>
> -#define UNIPHIER_GPIO_BANK_MASK                \
> -                               GENMASK((UNIPHIER_GPIO_LINES_PER_BANK) - 1, 0)
> -
>  #define UNIPHIER_GPIO_IRQ_MAX_NUM      24
>
>  #define UNIPHIER_GPIO_PORT_DATA                0x0     /* data */
> @@ -147,15 +144,14 @@ static void uniphier_gpio_set(struct gpio_chip *chip,
>  static void uniphier_gpio_set_multiple(struct gpio_chip *chip,
>                                        unsigned long *mask, unsigned long *bits)
>  {
> -       unsigned int bank, shift, bank_mask, bank_bits;
> -       int i;
> +       unsigned long i;
> +       unsigned long bank_mask;
> +       unsigned long bank;
> +       unsigned long bank_bits;


Please do not split it into multiple lines
unless you need to do so.

Thanks.




> -       for (i = 0; i < chip->ngpio; i += UNIPHIER_GPIO_LINES_PER_BANK) {
> +       for_each_set_clump8(i, bank_mask, mask, chip->ngpio) {
>                 bank = i / UNIPHIER_GPIO_LINES_PER_BANK;
> -               shift = i % BITS_PER_LONG;
> -               bank_mask = (mask[BIT_WORD(i)] >> shift) &
> -                                               UNIPHIER_GPIO_BANK_MASK;
> -               bank_bits = bits[BIT_WORD(i)] >> shift;
> +               bank_bits = bitmap_get_value8(bits, i);
>
>                 uniphier_gpio_bank_write(chip, bank, UNIPHIER_GPIO_PORT_DATA,
>                                          bank_mask, bank_bits);
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
