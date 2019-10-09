Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7A4D53A4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 03:00:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WMS6LnPEsr8ohv8T0GrUKC1qaCKisN69hJL6RvwpgBE=; b=mwImigFSJ6Pi5b
	kmhPg1ZgjwDKYryY1BPuGCY710H9eigW8vm20HhkiscqwuQ+EpAEu5ES0r86C9vBbJyAxscKHyKe8
	g5kJzXYydK3gc36shGdWDpRluWmyMU1MeVrmsj3Amo2C48yJCSBE1d0cViwxQd4+gQ+mHV38FNpWW
	cmmHzQN+gqmBjfYFnqDA0ovlnxa4qeCq/KqldOY53DESSBAim91svB8aZw2Lf3AAGIyu3ngUcbUGh
	bwqzpaTVRU0sfsV1yKPwVPnK4C95UkurW2zzivjUXjzrtlCHG373rDkdesK8ZxVQC4XtMqna1xO+H
	0p+1x5ZDdTqAtZFCRD8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJSF9-0006uz-Vh; Sun, 13 Oct 2019 01:00:19 +0000
Received: from listssympa-test.colorado.edu ([128.138.129.156])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJSF1-0006ua-4k
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 01:00:12 +0000
Received: from listssympa-test.colorado.edu (localhost [127.0.0.1])
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/sympa) with ESMTPS id
 x9D0xuBh014783
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 12 Oct 2019 18:59:56 -0600
Received: (from root@localhost)
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/submit) id
 x9D0xuwo014782; Sat, 12 Oct 2019 18:59:56 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google; 
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to 
 :cc;        bh=OcoDswvcpgORUe+MjF3j+myWKBr/y/JxVMKqWxIZdns=;       
 b=PlMwn9qd6erojZKwrGuwRQoT3mBFtPJPdxKkIoi+g/d953cHVVQVDyFhTmkAOHq9HS        
 VH6Kz+ynJOta/5jpwjQNaOKkCz8EqFOd8eFpwMkcdLBa/lGr9vFX4ZH9Odb0ZasRfZfg        
 hL4ixrbd5H9Gn9ce4slb2XkurFpkRA99mVhAJRq0EpElm5jcHAq+hLY5NEFSOcYi8T5c        
 XDGKEmdJaOWe6vEv1mdkMetvYaOe5w19Ke0Q6x3RRBcLXohUpsQ+H+tsU7xqCcKjV69C        
 oJPkEMkoDqtuEHAJMbrD0RUQcVb80wtCimLZE2tavU+7cfhJGR2bsMlGyBuIYnXcbGRM        
 T4sw==
Received: from DM6PR03MB4988.namprd03.prod.outlook.com (2603:10b6:a03:d4::47)
 by BYAPR03MB4376.namprd03.prod.outlook.com with HTTPS via
 BYAPR06CA0034.NAMPRD06.PROD.OUTLOOK.COM; Wed, 9 Oct 2019 18:41:12 +0000
Received: from BN3PR03CA0108.namprd03.prod.outlook.com (2603:10b6:400:4::26) by
 DM6PR03MB4988.namprd03.prod.outlook.com (2603:10b6:5:1e2::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.2347.16; Wed, 9 Oct 2019 17:40:13 +0000
Received: from BN3NAM01FT030.eop-nam01.prod.protection.outlook.com
 (2a01:111:f400:7e41::206) by BN3PR03CA0108.outlook.office365.com
 (2603:10b6:400:4::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Wed, 9 Oct 2019 17:40:13 +0000
Received: from ipmx3.colorado.edu (128.138.67.74) by
 BN3NAM01FT030.mail.protection.outlook.com (10.152.66.117) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384)
 id 15.20.2347.16 via Frontend Transport; Wed, 9 Oct 2019 17:40:13 +0000
Received: from ipmx7.colorado.edu ([128.138.128.233]) by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 11:00:45 -0600
Received: from ipmx8.colorado.edu ([128.138.67.85])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 10:24:51 -0600
Received: from vger.kernel.org ([209.132.180.67]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 10:05:47 -0600
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand id
 S1731664AbfJIQFq (ORCPT <rfc822; michael.gilroy@colorado.edu>);
 Wed, 9 Oct 2019 12:05:46 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:55587 "EHLO       
 mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org       
 with ESMTP id S1731263AbfJIQFo (ORCPT       
 <rfc822; linux-kernel@vger.kernel.org>); Wed, 9 Oct 2019 12:05:44 -0400
Received: by mail-wm1-f67.google.com with SMTP id a6so3236872wma.5 for
 <linux-kernel@vger.kernel.org>; Wed, 09 Oct 2019 09:05:41 -0700 (PDT)
Authentication-Results: spf=none (sender IP is 128.138.67.74)
 smtp.mailfrom=vger.kernel.org; 
 o365.colorado.edu; dkim=pass (signature was verified)
 header.d=linaro.org;o365.colorado.edu; dmarc=pass action=none
 header.from=linaro.org;
Received-SPF: None (protection.outlook.com: vger.kernel.org does not designate
 permitted sender hosts)
Authentication-Results-Original: mx.colorado.edu;
 dkim=pass (signature verified)
 header.i=@linaro.org
IronPort-SDR: ISpSC+tHsLAzNYWa/REZHQn3rcQbec06tR4cJr2pJ4WwL0KiM2j90UGszozwvxcWv7J4iGoWx0
 rJbBfmIodmfnie0AcjOBJCirwArbTBp34=
IronPort-SDR: H7j0xlmQkOBJ5FY8y0KGuc4WfMFcRCdRsMUxWE+8eJ/ZyhPFxrNIjryphF530eYM9UnkHiOxVa
 LYHITmTlGfej90tWzQaQgRfU2CSPDfgLk=
IronPort-SDR: 77kYylL5HmqL/gUhDPfHJWtF/tlajwgcudaRVJgpfPjxmzlSY8KMFwzY9Ksu1NsEpD/TeL+YfO
 qNDkqRfzEOAaRbJIQKYJl4ly5bLDtFX6s=
IronPort-PHdr: =?us-ascii?q?9a23=3ArH+QURSt5tu7dZxrazeds+ZAJtpsv+ypbCI2y7?=
 =?us-ascii?q?9ipqxHdrmq45XlOhKCtadz2QaaFYyO8elNzvHWuvq9Bz9I6sObvXQLYJFAEA?=
 =?us-ascii?q?UIjcwGkgBzZazNQQWzZLaiJyBvGMVEXUViuXahPhsdA5PxYFrdpnDhiFxaUl?=
 =?us-ascii?q?23fUI9buSgH4/XgoGp2vqp+prVMR9FijenbLV5IQ7krAOUrMQOhZonNqFjxA?=
 =?us-ascii?q?HOpylEcvhbl2ZlPkmakBu558vi54Np8Slbp6A98KsiGe2yN+xwBfQQXj8tYA?=
 =?us-ascii?q?VXrIWj/VGLBUOF5i47WWI6iQVWCBDKyyvHU9TUsAWhtKl4yRa5F9exXPcWSQ?=
 =?us-ascii?q?qHzL5UWD7ahCEcYm1ckimfwoQ4xOoTqkeZozlgxd/NbN+YLv18TIDCZ/wHWl?=
 =?us-ascii?q?B4WfoKUgZvHrueV4cfLOkgOucboM7x9gZVpjuAOzCSKPLBygNNhVbR/bRr89?=
 =?us-ascii?q?9Ec0mOlERoV5pG+Er08vbnd7YUc8epxe6Vzy3cbcpw0BDe66PaIj04j9aADb?=
 =?us-ascii?q?9eadX0ykIjMynMyVG/s937EQPJ5MRclGSRt9hpTtihuWAozmM56nDnjo9kws?=
 =?us-ascii?q?HJot4U2krO+XhZkakzdNa1FFV/a4SUE4ZKmTmZDaInE8YcQ0hKgj9i56UrvZ?=
 =?us-ascii?q?vmfiMq4Y1kxzruNtqqXbOv6SPiBNrMKlIazDotMPr3z176wWSP6cD5Wuu992?=
 =?us-ascii?q?lH8DRojIDJunMo2gDN28GgR6ZipxaC1G62iRCI0NtuKmQEkqrmM4UYgZ5zio?=
 =?us-ascii?q?Eu7lTaNSTVmnuo3YTzFA1ssqDgo6yvKrLEnpyxEoxzphjiL4kOs+6aC/4Uaj?=
 =?us-ascii?q?IzZmOl87Tky6HI/EjdcpgQkvQor+qGu57aB+sh/KSiJgt6w6w+yie5Pzys/+?=
 =?us-ascii?q?49+BtPZBoNMFrPx8DVZ0rRdaWrRef6gk6rli9s3eyDJLD6H5HRe2DKi6yyJ+?=
 =?us-ascii?q?wvwlNAyAc10dFU7o5VDbdEGv/oR0vtr4KIXBopdQezx+H9Adl6kI4SRDHHDq?=
 =?us-ascii?q?yYNfbKuESTrqI0IuaKbZMIoju1NfU/5vDvgHN40V8QdKWkx90WPVi8H/JvOU?=
 =?us-ascii?q?LfZmDjjw=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3Af0zaORMd1JtfDc8PgQQl6mtUO3oLmJTReyML45?=
 =?us-ascii?q?46gq5PdaL9osSwIhmGtr1k2UXSVMDA6/se1rSF+6u1Q2EE6IaMvDcYfZhFRx?=
 =?us-ascii?q?IJ2qB010RoSIbNQQX3efrraSUgG4JFTlA2t2ruPk9SF8LzNDiw6jX6pXZaUl?=
 =?us-ascii?q?3/YA90I+mwBIPIlMWw0bKo9pPeeQhOjzemM7J0aQ+7tQHA89UR04V4LaNjxh?=
 =?us-ascii?q?LVrylNdv9NzGxlYFOfzQ3h7MW994Ix7yM12bppv4YIGe2yN/YzRu89bnxuey?=
 =?us-ascii?q?h9rIWjvxmWagCIymADTG4OnT1yPgWGyRPUBZWytzrFlcBnnzjdH93IaJMtZi?=
 =?us-ascii?q?SD3attU0q77UVPf3ZxuCmfwsYltKZ+vxTwvhAhzpTTYrO2K+BRY7znRNQmHm?=
 =?us-ascii?q?9rcNppdRRNEqC/TowOTOVGMbcF9ILdmWU3kzevKwmQAeDG7R9R11/NuM9ym6?=
 =?us-ascii?q?xpWUmOlEQeP4wtojfFqvfSKK5VDOKt06vx6zzkTPB9y2fQ8abvfkAsj+mTeL?=
 =?us-ascii?q?F7fe77wA4rOBmUkHug9b7FbhSZ3Lw/unOh4dhuWofNwyZv40k56nDnxuNwi5?=
 =?us-ascii?q?nTjI5I6gHr83RyzdouIdfieE1me/C8E6F55nCfCYtfYPk7G0xwlSI/l78Nmb?=
 =?us-ascii?q?eiPygu+ckB6jDkTPe2cti0vxmGNq7ZaX8wzDotMIKTqDWf9ESCw8rDW5eq/U?=
 =?us-ascii?q?gTqyZGt9TQqEEE8BGO9ZHWafYlxxmxggy1/Qv32uZEHFgvrOn7aII6/+Egj7?=
 =?us-ascii?q?EYkkb9QH7d/Se+xOfePg1ssqCvydzkT5DlobOFK5JZqijcF640tpSFPN0zDA?=
 =?us-ascii?q?JeB3eH0uW58I/Op1HwXogJ0fY4kov2isrQPuEfib+THi5k1LYo4TmFKlLEmJ?=
 =?us-ascii?q?xQ1TFPZBoNRE6ckN28aBneZfHiCvGnhE6w1S1m3O3CIuj5C47WfSKZwp78Yb?=
 =?us-ascii?q?Zw7VJdwwMvzNdZoqhZEawFPOmtCh30pJrTCRs+KQW4xKDqBMguno8dWGfaGq?=
 =?us-ascii?q?aCK+uSql6H4OszPvOBLJEYojfzKvUpprbugHY1lEVbfPyB2ZoRYWq/WPN8LE?=
 =?us-ascii?q?g=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AvHQpQxTo81YpXj3XgGse2cy+8dpsv+ypbCI2y7?=
 =?us-ascii?q?9ipqxHdrmq45XlOhKCtadz2QaaFYyO8elNzvHWuvq9Bz9I6sObvXQLYJFAEA?=
 =?us-ascii?q?UIjcwGkgBzZazNQQWzZLaiJyBvGMVEXUViuXahPhsdA5PxYFrdpnDhiFxaUl?=
 =?us-ascii?q?23fUI9buSgH4/XgoGp2vqp+prVMR9FijenbLV5IQ7krAOUrMQOhZonNqFjxA?=
 =?us-ascii?q?HOpylEcvhbl2ZlPkmakBu558vi54Np8Slbp6A98KsiGe2yN+xwBfQQXj8tYA?=
 =?us-ascii?q?VXrIWj/VGLBUOF5i47WWI6iQVWCBDKyyvHU9TUsAWhtKl4yRa5F9exXPcWSQ?=
 =?us-ascii?q?qHzL5UWD7ahCEcYm1ckimfwoQ4xOoTqkeZozlgxd/NbN+YLv18TIDCZ/wHWl?=
 =?us-ascii?q?B4WfoKUgZvHrueV4cfLOkgOucboM7x9gZVpjuAOzCSKPLBygNNhVbR/bRr89?=
 =?us-ascii?q?9Ec0mOlERoV5pG+Er08vbnd7YUc8epxe6Vzy3cbcpw0BDe66PaIj04j9aADb?=
 =?us-ascii?q?9eadX0ykIjMynMyVG/s937EQPJ5MRclGSRt9hpTtihuWAozmM56nDnjo9kws?=
 =?us-ascii?q?HJot4U2krO+XhZkakzdNa1FFV/a4SUE4ZKmTmZDaInE8YcQ0hKgj9i56UrvZ?=
 =?us-ascii?q?vmfiMq4Y1kxzruNtqqXbOv6SPiBNrMKlIazDotMPr3z176wWSP6cD5Wuu992?=
 =?us-ascii?q?lH8DRojIDJunMo2gDN28GgR6ZipxaC1G62iRCI0NtuKmQEkqrmM4UYgZ5zio?=
 =?us-ascii?q?Eu7lTaNSTVmnuo3YTzFA1ssqDgo6yvKrLEnpyxEoxzphjiL4kOs+6aC/4Uaj?=
 =?us-ascii?q?IzZmOl87Tky6HI/EjdcpgQkvQor+qGu57aB+sh/KSiJgt6w6w+yie5Pzys/+?=
 =?us-ascii?q?49+BtPZBoNMFrPx8DVZ0rRdaWrRef6gk6rli9s3eyDJLD6H5HRe2DKi6yyJ+?=
 =?us-ascii?q?wvwlNAyAc10dFU7o5VDbdEGv/oR0vtr4KIXBopdQezx+H9Adl6kI4SRDHHDq?=
 =?us-ascii?q?yYNfbKuESTrqI0IuaKbZMIoju1NfU/5vDvgHN40V8QdKWkx90WPVi8H/JvOU?=
 =?us-ascii?q?LfZmDjjw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0EtAwBLGZ5dbemAioBlHgELHIFwC4I?=
 =?us-ascii?q?bBYFxKoQjjlyCD5krgW4WAQEBAQEBAQEBCBgVAgEBAYcRIzYHDgIBAgkBAQE?=
 =?us-ascii?q?DAQEBAgEFAgEBAgIQDQsJBiuFNAyEMCwNVGQBAQEDAQIPER0BATcBBQkBAQo?=
 =?us-ascii?q?LAwoCAiYCAgMfEgEFARwGCgkFHYMAgnijd4EDPIoxdYEygn0BAQWFdoE/CRJ?=
 =?us-ascii?q?6KIwOgVg/g241PodSgl6MaoJOhhKBJZZYB4IlZgSRdYI6G5lALadPDyOBNgK?=
 =?us-ascii?q?CCTMaMHQGgjVQEBSBT4kHhV8jMYEIkBMBAQ?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0GiAwDqEJ5dh1VDioBlHgELHIFwC4I?=
 =?us-ascii?q?bgUQxKoQjjluCD5krgW4WAQEBAQEBAQEBCBgVAgEBAYcRIzYHDgIBAgkBAQE?=
 =?us-ascii?q?DAQEBAgEFAgEBAgIQAQEBCgsJCCmFNAyEMCwNVGQBAQEDAQIPER0BATcBBQk?=
 =?us-ascii?q?BAQoLAwoCAiYCAgMfEgEFARwGCgkFHYMAggujfIEDPIoxdYEygn0BAQWFdYE?=
 =?us-ascii?q?/CRJ6KIwOgVg/g241PodSgliMaoJOhhKBJZZYB4IlZgSRdYI6G5lALadPDyO?=
 =?us-ascii?q?BNgKCCTMaMHQGgjVQEBSBT4kHhV8iMoEIk10BAQ?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0FNCADjBZ5dh0O0hNFlHgELHIFwC4I?=
 =?us-ascii?q?bgUMyKoQjjluCDxSZF4FuFgEBAQEBAQEBASAUAQIBAQGHESM2Bw4CAQIJAQE?=
 =?us-ascii?q?BAwEBAQIBBQIBAQICEAEBAQoLCQgphTQMhDAsDVRkAQEBAwECDxEdAQE3AQU?=
 =?us-ascii?q?JAQEKCwMKAgImAgIDHxIBBQEcBgoJBR2DAIILo3GBAzyKMXWBMoJ9AQEFhXe?=
 =?us-ascii?q?BPwkSeiiMDoFYP4NuNT6HUoJYjGqCToYSgSWWWAeCJWYEkXWCOhuZQC2nTzK?=
 =?us-ascii?q?BNgKCCTMaMHQGgjVQEBSBT4kHhV8hM4EGAQGTXQEB?=
X-IPAS-Result: =?us-ascii?q?A0EtAwBLGZ5dbemAioBlHgELHIFwC4IbBYFxKoQjjlyCD?=
 =?us-ascii?q?5krgW4WAQEBAQEBAQEBCBgVAgEBAYcRIzYHDgIBAgkBAQEDAQEBAgEFAgEBA?=
 =?us-ascii?q?gIQDQsJBiuFNAyEMCwNVGQBAQEDAQIPER0BATcBBQkBAQoLAwoCAiYCAgMfE?=
 =?us-ascii?q?gEFARwGCgkFHYMAgnijd4EDPIoxdYEygn0BAQWFdoE/CRJ6KIwOgVg/g241P?=
 =?us-ascii?q?odSgl6MaoJOhhKBJZZYB4IlZgSRdYI6G5lALadPDyOBNgKCCTMaMHQGgjVQE?=
 =?us-ascii?q?BSBT4kHhV8jMYEIkBMBAQ?=
X-IPAS-Result: =?us-ascii?q?A0GiAwDqEJ5dh1VDioBlHgELHIFwC4IbgUQxKoQjjluCD?=
 =?us-ascii?q?5krgW4WAQEBAQEBAQEBCBgVAgEBAYcRIzYHDgIBAgkBAQEDAQEBAgEFAgEBA?=
 =?us-ascii?q?gIQAQEBCgsJCCmFNAyEMCwNVGQBAQEDAQIPER0BATcBBQkBAQoLAwoCAiYCA?=
 =?us-ascii?q?gMfEgEFARwGCgkFHYMAggujfIEDPIoxdYEygn0BAQWFdYE/CRJ6KIwOgVg/g?=
 =?us-ascii?q?241PodSgliMaoJOhhKBJZZYB4IlZgSRdYI6G5lALadPDyOBNgKCCTMaMHQGg?=
 =?us-ascii?q?jVQEBSBT4kHhV8iMoEIk10BAQ?=
X-IPAS-Result: =?us-ascii?q?A0FNCADjBZ5dh0O0hNFlHgELHIFwC4IbgUMyKoQjjluCD?=
 =?us-ascii?q?xSZF4FuFgEBAQEBAQEBASAUAQIBAQGHESM2Bw4CAQIJAQEBAwEBAQIBBQIBA?=
 =?us-ascii?q?QICEAEBAQoLCQgphTQMhDAsDVRkAQEBAwECDxEdAQE3AQUJAQEKCwMKAgImA?=
 =?us-ascii?q?gIDHxIBBQEcBgoJBR2DAIILo3GBAzyKMXWBMoJ9AQEFhXeBPwkSeiiMDoFYP?=
 =?us-ascii?q?4NuNT6HUoJYjGqCToYSgSWWWAeCJWYEkXWCOhuZQC2nTzKBNgKCCTMaMHQGg?=
 =?us-ascii?q?jVQEBSBT4kHhV8hM4EGAQGTXQEB?=
X-IronPort-AV: E=Sophos; i="5.67,277,1566885600"; d="scan'208"; a="369339779"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="287042507"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="371314275"
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-Original-Recipients: gasiewsk@o365.colorado.edu
X-Original-Recipients: migi9492@g.colorado.edu
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=1e100.net;
 s=20161025; 
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date        
 :message-id:subject:to:cc;       
 bh=OcoDswvcpgORUe+MjF3j+myWKBr/y/JxVMKqWxIZdns=;       
 b=PuC5oJfDXRyszVDqfukAvdH9r/FW8D2XEtol9dA/IrIuEnnSVisoN2sVeTZoPcduB9        
 mHSyC6E/JjSt9W7nSEtfOII3nMDsUm5wiMwo/jHZO/1i86zphoTr9u1JbzhbcovFi9+k        
 aXDrO/X9VenxCK9Izpzv2IMcOqYWzBRxz7v1SEYGS39QJzBHqcfdjbIm/RqAus+1LxMa        
 cg/jLqhLA7iXO9tckqnxZqyARJ61gPK9bRIqaQ6WOM4vslAuCZ0UG8oZrYsgaF8Sc+VC        
 QOIfIKqkO/lKWRTHuYOYMDgJLnI4V8q8C3JR8Xp1JvJla5ALdPuEAvVCXGGKoovxAzUl        
 4eXw==
X-Gm-Message-State: APjAAAVMj9BI5NW9FS2WBSsEqiQLXpN9zIbezQlXF4URKAolbx7YNXJ3 
 iKHQAimz/m3QtsEvvv7m8Tq9VznacwVjh2yB17aZ5w==
X-Google-Smtp-Source: APXvYqwf2k+wes8U4KHH/Mq/y7m8PrdEQhLEFToIcu4WDfCk10VCZnURO4OVa/kXncgoav9k+nk3ezXxb9qFfCb0MU8=
X-Received: by 2002:a1c:a8c9:: with SMTP id r192mr3238811wme.152.1570637140793; Wed, 09
 Oct 2019 09:05:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190918080716.64242-1-jianyong.wu@arm.com>
 <20190918080716.64242-5-jianyong.wu@arm.com>
 <83ed7fac-277f-a31e-af37-8ec134f39d26@redhat.com>
 <HE1PR0801MB1676F57B317AE85E3B934B32F48E0@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <629538ea-13fb-e666-8df6-8ad23f114755@redhat.com>
 <HE1PR0801MB167639E2F025998058A77F86F4890@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <ef6ab8bd-41ad-88f8-9cfd-dc749ca65310@redhat.com>
 <a1b554b8-4417-5305-3419-fe71a8c50842@kernel.org>
 <56a5b885-62c8-c4ef-e2f8-e945c0eb700e@redhat.com>
 <HE1PR0801MB1676115C248E6DF09F9DD5A6F4950@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <1cc145ca-1af2-d46f-d530-0ae434005f0b@redhat.com>
 <HE1PR0801MB1676B1AD68544561403C3196F4950@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <6b8b59b2-a07e-7e33-588c-1da7658e3f1e@redhat.com>
In-Reply-To: <6b8b59b2-a07e-7e33-588c-1da7658e3f1e@redhat.com>
From: "John Stultz" <john.stultz@linaro.org>
Date: Wed, 9 Oct 2019 09:05:29 -0700
Message-ID: <CALAqxLVa-BSY0i007GfzKEVU1uak4=eY=TJ3wj6JL_Y-EfY3ng@mail.gmail.com>
Subject: Re: [RFC PATCH v3 4/6] psci: Add hvc call service for ptp_kvm.
To: "Paolo Bonzini" <pbonzini@redhat.com>
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
X-MS-Exchange-Organization-ExpirationStartTime: 09 Oct 2019 17:40:13.4925 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: 6f6db475-5fb2-444a-a617-08d74cdfbd61
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-Forefront-Antispam-Report: CIP:128.138.67.74; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:SKN; SFS:; DIR:INB; SFP:; SCL:-1; SRVR:DM6PR03MB4988; H:ipmx3.colorado.edu;
 FPR:; SPF:None; LANG:en; ; SKIP:1; 
X-MS-Exchange-Organization-AuthSource: BN3NAM01FT030.eop-nam01.prod.protection.outlook.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-OriginatorOrg: colorado.edu
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6f6db475-5fb2-444a-a617-08d74cdfbd61
X-MS-TrafficTypeDiagnostic: DM6PR03MB4988:|DM6PR03MB4988:
X-MS-Exchange-Organization-SCL: -1
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-Microsoft-Antispam: BCL:0;
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2019 17:40:13.2874 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f6db475-5fb2-444a-a617-08d74cdfbd61
X-MS-Exchange-CrossTenant-Id: 3ded8b1b-070d-4629-82e4-c0b019f46057
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3ded8b1b-070d-4629-82e4-c0b019f46057; Ip=[128.138.67.74];
 Helo=[ipmx3.colorado.edu]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB4988
X-MS-Exchange-Transport-EndToEndLatency: 01:00:59.7100706
X-MS-Exchange-Processed-By-BccFoldering: 15.20.2347.014
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; ex:0; auth:0; dest:I;
 ENG:(750127)(520002050)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?2ALFAKG9ZbT57A5JvYUFnV5svkzb/aUbVMG/sRu4oaRWWmG5C4lFbnN2T614?=
 =?us-ascii?Q?aiREnaH4a0CBAkFfTRBpDEdTghiKKrET56KpyopZe9Ac0imsxCBy19kcus9/?=
 =?us-ascii?Q?1tTq82MPa7Tx7ZvCeX4qJqK6S9Z0ED+oMe7T2hZ9Wrd1IeGrDB2xO5c+P7fm?=
 =?us-ascii?Q?lrqBi5khjAyNFrAmJiM5OyGXK4S+dW+sPMhksSqk/woOnED0S0hlILmXye3j?=
 =?us-ascii?Q?EApTMKLWm+/aZBRRzWn6ASd866gbEiwpuifrQt42NvLYi5RJGPCAbln30u6s?=
 =?us-ascii?Q?bCfuv787nob4rYZ8TxBNITZemBdnV/2hkdXNk7KTSsmQoFw1Jw5uWVLm3+u4?=
 =?us-ascii?Q?14VCZ+Cee/t48FdYFdhlk3ub9omFmZ8FyEA9iYcf3RbcY7Nrur0ie6fUP3wM?=
 =?us-ascii?Q?128ziN2oF876+bbvn6AsmUIV3oSx9txgIf9AH+QtpSfbuqdNuSsysie0HTOE?=
 =?us-ascii?Q?a30btD7svHHH2uW1EJ8PB5n9iSc5yfjHHlLmlT6kJFHPQLfX7Rbn3FPzg+as?=
 =?us-ascii?Q?4grF9raM566cwo+hnsasRARz+tqpA7XN2+9uaFWjdSUKyOM6bKx6NYwisrW4?=
 =?us-ascii?Q?K/6tbT3JAPG6MX5ZTd4wn1xvLarNH3nwwcJzRbcGzggodQh4qdboOaxbRDeW?=
 =?us-ascii?Q?6AzVGJnZ/EI829PjrC2rwk86j6alCwVAKk7jYKBBwz+bBnzc0vo1T2zz+WsS?=
 =?us-ascii?Q?uMM2De9t8VX0hg+ibO3r8572ySbH0i+oGpjmNyjbbli+fBIz0yDuivDC9/tZ?=
 =?us-ascii?Q?tk7t9E5puWUSA3faIyzbsbyEytyfmCNkZNELfkj9oO7UmPGYd0ILIlHLcxjI?=
 =?us-ascii?Q?AF5t35d52GYVv41Fi+/FEyNFgs9nazEigGMfdbKpsqY/9xtxHTZl9TSjGgg7?=
 =?us-ascii?Q?dVlpHlEAmLKbbfz+uPg50kYX9kOu8ml5UTxBspg1Vb1TTJtaRzbwwWctXq7Z?=
 =?us-ascii?Q?AESjjkfeqapk/vxQfVOomOc2P1Hm/r+C3QlkEqsMd7zZE8rlCF1Xi8THlbJ7?=
 =?us-ascii?Q?bAgTC70owZR7eEpsFW57QGwDvQa3+6fEwK6c7myl3OZkVKCb5c+k/c9w5Mdc?=
 =?us-ascii?Q?MNWuQKQCFJQMoSrgX4aH8MrbnEhBn2Bxc2POq/Ubv6m5HjmMus/iYhE+ZE1I?=
 =?us-ascii?Q?qq9NQVoGBZ/bpLZG7+fWkUiLvCFRICWHXg=3D=3D?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_180011_241173_F204EDD2 
X-CRM114-Status: UNSURE (   7.61  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "Justin He \(Arm Technology China\)" <Justin.He@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "Jianyong Wu \(Arm Technology China\)" <Jianyong.Wu@arm.com>, Will
 Deacon <Will.Deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Steve Capper <Steve.Capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 9, 2019 at 2:13 AM Paolo Bonzini <pbonzini@redhat.com> wrote:
> On 09/10/19 10:18, Jianyong Wu (Arm Technology China) wrote:
> >
> > We must ensure both of the host and guest using the same clocksource.
> > get_device_system_crosststamp will check the clocksource of guest and we also need check
> > the clocksource in host, and struct type can't be transferred from host to guest using arm hypercall.
> > now we lack of a mechanism to check the current clocksource. I think this will be useful if we add one.
>
> Got it---yes, I think adding a struct clocksource to struct
> system_time_snapshot would make sense.  Then the hypercall can just use
> ktime_get_snapshot and fail if the clocksource is not the ARM arch counter.
>
> John (Stultz), does that sound good to you?  The context is that
> Jianyong would like to add a hypercall that returns a (cycles,
> nanoseconds) pair to the guest.  On x86 we're relying on the vclock_mode
> field that is already there for the vDSO, but being able to just use
> ktime_get_snapshot would be much nicer.

I've not really looked at the code closely in awhile, so I'm not sure
my suggestions will be too useful.

My only instinct is maybe to not include the clocksource pointer in
the system_time_snapshot, as I worry that structure will then be
abused by the interface users.  If you're just wanting to make sure
the clocksource is what you're expecting, would instead putting only
the clocksource name in the structure suffice?

thanks
-john


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
