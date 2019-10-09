Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D65D540E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 05:57:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IEIPP3TPKxRYsTOnCCZWMvwMcvGVPUNR/hFliwo6nZo=; b=nf2lEKWk5k23LPFe1crvYc/o8
	2/lw7aLfFN0uzEHDwHwTSFrTwIvD0gzmuMbMrn+WXzucpX6iu2QwYm3ZN2iIyJWj/5OFZcqiacGT0
	A5RC9jLjbT8oDD9jbPTVYC6aqPK8WvRmoA7jAHXOWw8mi95VG/orC15tblEL0uFl1CVGKDYkEZrqI
	oTYpudUsNrq0CQfAGXVfZ3+xNS5uUKQ5zLOvsyi28QTWQjChFWFUT/vbri9zZxp6AN8F0+qFSoTCy
	1Li7EuEyiE4oRzI0zIxRovFnVE3vDWzR9I8rPfYvUveCgWVLFc47xmka0fSUY5bmq8BmdctYLCPap
	5dOeyEOAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJV0g-0001Uc-Rc; Sun, 13 Oct 2019 03:57:34 +0000
Received: from listssympa-test.colorado.edu ([128.138.129.156])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJV0V-0001Tw-0n
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 03:57:24 +0000
Received: from listssympa-test.colorado.edu (localhost [127.0.0.1])
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/sympa) with ESMTPS id
 x9D3v4lS001843
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 12 Oct 2019 21:57:04 -0600
Received: (from root@localhost)
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/submit) id
 x9D3v2hv001737; Sat, 12 Oct 2019 21:57:02 -0600
Received: from BN7PR03MB3521.namprd03.prod.outlook.com (2603:10b6:a03:117::25)
 by BYAPR03MB4376.namprd03.prod.outlook.com with HTTPS via
 BYAPR08CA0048.NAMPRD08.PROD.OUTLOOK.COM; Wed, 9 Oct 2019 19:20:38 +0000
Received: from DM6PR03CA0052.namprd03.prod.outlook.com (2603:10b6:5:100::29) by
 BN7PR03MB3521.namprd03.prod.outlook.com (2603:10b6:406:be::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.24; Wed, 9 Oct
 2019 18:01:49 +0000
Received: from BY2NAM01FT041.eop-nam01.prod.protection.outlook.com
 (2a01:111:f400:7e42::209) by DM6PR03CA0052.outlook.office365.com
 (2603:10b6:5:100::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Wed, 9 Oct 2019 18:01:49 +0000
Received: from ipmx1.colorado.edu (128.138.128.231) by
 BY2NAM01FT041.mail.protection.outlook.com (10.152.68.167) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384)
 id 15.20.2347.16 via Frontend Transport; Wed, 9 Oct 2019 18:01:48 +0000
Received: from ipmx4.colorado.edu ([128.138.67.75])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 11:09:07 -0600
Received: from ipmx1.colorado.edu ([128.138.128.231]) by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 10:40:51 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 10:12:41 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:55:02 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:46:12 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:38:26 -0600
Received: from ipmx8.colorado.edu ([128.138.67.85])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 09:32:58 -0600
Received: from ipmx2.colorado.edu ([128.138.128.232]) by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 09:30:09 -0600
Received: from ipmx4.colorado.edu ([128.138.67.75])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 09:28:10 -0600
Received: from mx-spsc.colorado.edu (HELO mx.colorado.edu) ([128.138.67.77]) by
 mx.colorado.edu with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019
 09:27:05 -0600
Received: from mx-spsc.colorado.edu (HELO mx.colorado.edu) ([128.138.67.77]) by
 mx.colorado.edu with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019
 09:26:05 -0600
Received: from vger.kernel.org ([209.132.180.67]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:25:16 -0600
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand id
 S1731287AbfJIPZO (ORCPT <rfc822; michael.gilroy@colorado.edu>);
 Wed, 9 Oct 2019 11:25:14 -0400
Received: from mx2.suse.de ([195.135.220.15]:60140 "EHLO mx1.suse.de"       
 rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP        id
 S1729471AbfJIPZO (ORCPT <rfc822;linux-kernel@vger.kernel.org>);        Wed,
 9 Oct 2019 11:25:14 -0400
Received: from relay2.suse.de (unknown [195.135.220.254]) by mx1.suse.de
 (Postfix) with ESMTP id 52561AD07; Wed,  9 Oct 2019 15:25:12 +0000
 (UTC)
Authentication-Results: spf=none (sender IP is 128.138.128.231)
 smtp.mailfrom=vger.kernel.org; 
 o365.colorado.edu; dkim=none (message not signed)
 header.d=none;o365.colorado.edu; dmarc=none action=none header.from=suse.de;
Received-SPF: None (protection.outlook.com: vger.kernel.org does not designate
 permitted sender hosts)
Authentication-Results-Original: mx.colorado.edu;
 dkim=none (message not signed) header.i=none
IronPort-SDR: WtFaGG4gd2x+HDdlC6tNTTC3NDfPOPnH5wKKOoyh9rxFQc+8q5dT1W6PwLVon5LNFoi9Qng/7X
 q8I+QeB41HZnTm++vxpo3ScVfyfwIDA08=
IronPort-SDR: wCdw1XzQ/GuXTr3dGFBywLmrX+m6JHz4l+n6aZihYOHA3XsbfWkvvIk+rTy1oD/JwRziFLfYNS
 BMkW2zEh/Eep1C1EGfVI477t4hG57gecY=
IronPort-SDR: TXyD+dhaJEQaTMqErafKK12HUElDckpKLHslxFfH+dWaVqssD5DhPpwIlByqnltpJLPcr9Vmxn
 Nqkqtzsoq0FQ/PQAOi7Dizmbp7tTEUvnI=
IronPort-SDR: /DkDv6bX5Pj4z6OAn4QGhLkrlNmiRd7ViJj41L2HrrddKETMrvjpp6tarKxRs7UNi1n05jtf2I
 VtPQQW5/GeP/xBShboED5PH1Y/MbjPqJE=
IronPort-SDR: JHc/Xkc3X1aYWx1HAe6gw3daPrFBXlY/SNGugPcjxzj1K+iLnvdeURpRGy0kISSNFGHZBoZdwi
 0XtSaG+2eAexMYCRS3L/+/aCQD7LkdjBY=
IronPort-SDR: NWJpEFzEHqu5hVJukqoZk/V8HINsGFb3ac6aMrnkdYSV7Ju95cbP6s/ty6gTHi0r4B1CuFhOhz
 ySUNDxd8o1K1ivmdQJrCmnJcxsRgx52rk=
IronPort-SDR: Iks17MxohnrapHcfYgQLVR9wLYSaFDH/oxIwfKp/RlY+E5e4PQkIpoG+RNFbH+PR0icA246FKa
 EbO2GHqU0YapF2qkXtjixp4C8NcJu0zAw=
IronPort-SDR: CrbbYOmY6hnKHWTCqFTmlTejG2pnEMeoaPKcXPV8/sfeYqbkbBaqayiilOWwty4dRXqDmUMmcQ
 61RxcRcrtSVkK0CDBmPaod2SfBG+LK4xc=
IronPort-SDR: yIiK/lXkKFGaNUDHCgcp68Dl1lMyDFO3fTZrMg4VX/F0iqu2TTfKe+sM/kl75C6easRXyoEfpV
 2F9n/PdUijdMHJUoEqm4BsvJ7gEX3bwNs=
IronPort-SDR: o6G0ajExqgeJ0r7UAW1Nnfsi44pLrxkA82vYM9XwtAIAIu0YhKjBQUgJqXIM8urQvFoDmgOlaf
 7sKRkY1ZkXeBJX3XJXg0daeLe41QqbLd0=
IronPort-SDR: 02sWSF3J3iM5L83DJWbNElLIxxkLbi+RoXQv3rC4j+/giZlUImOsJdI9UJ5zblmApj5iu1D68q
 JdyDtVpXnXubXXMYp3fJx42+1txBoYdNE=
IronPort-SDR: 2i/g8bo46+X5nzHd5li0uEuEBzVeToTvm4f6JfJ5uLHgWtCsVhkFObovUIoqWvnEdwmE+mWBsk
 UIeh29OGqpHG7xBacxXs2VP8pk/Z7x2PU=
IronPort-PHdr: =?us-ascii?q?9a23=3AUigCixWiw7tiXoNbgR1o+rbrRNfV8LGuZFw894?=
 =?us-ascii?q?YnhrRSc6+q45XlOgnl6O5wiEPSA9yJ7uICgO3StLrpVWtG7Jqc4zgOc51JAh?=
 =?us-ascii?q?kCj8he3wktG9WMBkCzKvn2Jzc7E8JPWB4t/3yyPUVPXserYVrUr3A=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3A9ROhTBeov0gWp2IeeWiyhkcTlGMj4e+mFxMJ6p?=
 =?us-ascii?q?chl7NFe7ii+JKnBkHE+PFxlwGQD4DLrflDj+3MuqznH2EM/MXJvHMDdclKUB?=
 =?us-ascii?q?kIwYUTkhc7CcGIQUv8MLbxbiM8EcgDHF9o9n22Kw5UTcD5YVDf?=
IronPort-PHdr: =?us-ascii?q?9a23=3AQlIsLBJ7Tcd9XeN+u9mcpTVXNAE6p7X5OBIU4Z?=
 =?us-ascii?q?M7irVIN56u5InmIFeBvKdonBnCWoHc8ftIjKzbv72zEWAD4JPUtncEfdQMUh?=
 =?us-ascii?q?IekswZkkQmB9LNEkz0KvPmLmQ6Ec1OWUUj/iS9Nk5YFQ=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3A6v4nHhNNgM6kd+5qnHcl6mtXPHoOpqn0MwgJ65?=
 =?us-ascii?q?Eul7NJdOGZ8o//OFDEu6w/iU+PVoLf7OhNh+2Qvqz9CiQM4peE5XYFdpEEFx?=
 =?us-ascii?q?oIkt4fkAFoBsmZQVb6I/jnY21yHMlLWFJ/uXDuN09TFcs=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AOtzffxfbMNErk4n6jh4K46ColGMj4e+mFxMJ6p?=
 =?us-ascii?q?chl7NFe7ii+JKnBkHE+PFxlwGQD4DLrflDj+3MuqznH2EM/MXJvHMDdclKUB?=
 =?us-ascii?q?kIwYUTkhc7CcGIQUv8MLbxbiM8EcgDHF9o9n22Kw5UTcD5YVDf?=
IronPort-PHdr: =?us-ascii?q?9a23=3AQ7KKFxIuiSe/1yS5PtmcpTVXNAE6p7X5OBIU4Z?=
 =?us-ascii?q?M7irVIN56u5InmIFeBvKdonBnCWoHc8ftIjKzbv72zEWAD4JPUtncEfdQMUh?=
 =?us-ascii?q?IekswZkkQmB9LNEkz0KvPmLmQ6Ec1OWUUj/iS9Nk5YFQ=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AnvejeB1k7mWbmha2smDT+zVfTzU7u7jyIg8e44?=
 =?us-ascii?q?YmjLQLSKm44pD+JxKGt/B9ylTOWYLB4v5DzefarvOoVW8B5MOHt3YPONxJWg?=
 =?us-ascii?q?QegMob1wonHIaeCEL9IfKrJyw3FchPThlkqne8N0VY?=
IronPort-PHdr: =?us-ascii?q?9a23=3AkQiCCRF3GvC1932/ZTU8e51GYnJ96ZzpIg4Y7I?=
 =?us-ascii?q?YmgLtSc6Oluq7vJ1Hb+e4z1Q3MTcPQ7PZDkePatObtVXFTqZqCsXVXdptKWl?=
 =?us-ascii?q?dFjMgNhAUvDYaDDlGzN//laSE2XYxCWVZp8mv9MB1TH8Dzag=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0HsAwBfHZ5dbUtDioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgXuCGwWBQh0SKoQjiQKFW4IPlAOHGQELBwEBAQEBAQEBAQMFGBU?=
 =?us-ascii?q?CAQEBhxEjOBMCAwkBAQEDAQEBAgEFAgEBAgIQDQsJBiuFQIYgAQEBAQIBAQI?=
 =?us-ascii?q?gPRkFAQkBAQoVAxwOAgIDVAYTBYMeglcgBK91dYEyhU6DLYE4EIE0gVOKOxi?=
 =?us-ascii?q?Bf4QjPodSgl4EjQGCM4ZziCmOc4FFZ5UZG44Iizgtp16BaYF7MxokgztQEBS?=
 =?us-ascii?q?QF3KBCJATAQE?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0EtAQBnDZ5dbeeAioBlGwEBAQEBAQE?=
 =?us-ascii?q?FAQEBEQEBAwMBAQGBe4IbA4FDHRIqhCOJAoVagg+UA4cZAQsHAQEBAQEBAQE?=
 =?us-ascii?q?BAwUYFQIBAQGHESM4EwIDCQEBAQMBAQECAQUCAQECAhANCwkGK4VAhiABAQE?=
 =?us-ascii?q?BAgEBAiA9GQUBCQEBChUDHA4CAgNUBhMFgx6Bew8Er3J1gTKFToMugTgQgTS?=
 =?us-ascii?q?BU4o7GIF/hCM+h1KCWASNAYIzhnOIKY5zgUVnlRkbjgiLOC2nXoFpgXszGiS?=
 =?us-ascii?q?DO1AQFJAXcoEIk10BAQ?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0F4AQAM+p1dh1VDioBlGwEBAQEBAQE?=
 =?us-ascii?q?FAQEBEQEBAwMBAQGBe4IbgUYdEiqEI4kChVqCD5QDhxkBCwcBAQEBAQEBAQE?=
 =?us-ascii?q?DBRgVAgEBAYcRIzgTAgMJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQgphUCGIAE?=
 =?us-ascii?q?BAQECAQECID0ZBQEJAQEKFQMcDgICA1QGEwWDHQGBew8Er0p1gTKFToMvgTg?=
 =?us-ascii?q?QgTSBU4o7GIF/hCM+h1KCWASNAYIzhnOIKY5zgUVnlRkbjgiLOC2nXoFpgXs?=
 =?us-ascii?q?zGiSDO1AQFJAXcoEIk10BAQ?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0F4AQDU951dh+iAioBlGwEBAQEBAQE?=
 =?us-ascii?q?FAQEBEQEBAwMBAQGBe4IbgUYdEiqEI4kChVqCD5QDhxkBCwcBAQEBAQEBAQE?=
 =?us-ascii?q?DBRgVAgEBAYcRIzgTAgMJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQgphUCGIAE?=
 =?us-ascii?q?BAQECAQECID0ZBQEJAQEKFQMcDgICA1QGEwWDHQGBew8Erz11gTKFToMvgTg?=
 =?us-ascii?q?QgTSBU4o7GIF/hCM+h1KCWASNAYIzhnOIKY5zgUVnlRkbjgiLOC2nXoFpgXs?=
 =?us-ascii?q?zGiSDO1AQFJAXcoEIk10BAQ?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0F4AQC/951dh0tDioBlGwEBAQEBAQE?=
 =?us-ascii?q?FAQEBEQEBAwMBAQGBe4IbgUYdEiqEI4kChVqCD5QDhxkBCwcBAQEBAQEBAQE?=
 =?us-ascii?q?DBRgVAgEBAYcRIzgTAgMJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQgphUCGIAE?=
 =?us-ascii?q?BAQECAQECID0ZBQEJAQEKFQMcDgICA1QGEwWDHQGBew8Erz11gTKFToMvgTg?=
 =?us-ascii?q?QgTSBU4o7GIF/hCM+h1KCWASNAYIzhnOIKY5zgUVnlRkbjgiLOC2nXoFpgXs?=
 =?us-ascii?q?zGiSDO1AQFJAXcoEIk10BAQ?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0E8AgB4+J1dfU1DioBlhFyBYxKETYk?=
 =?us-ascii?q?Cm2uHLAEBAQEBAQEBAQMFLQIBAQGHNDgTBQkBAQEDAQICAQUCAQECAhABAQs?=
 =?us-ascii?q?UCIVphiABAQUBAiBWBQEJAQEKFQMcDgICA1QGEwWDHoIKBLAygTKFToMvgTg?=
 =?us-ascii?q?QII06gX+EIz6HUoJYjQWCM54PgUVnlRkbjgiLOC2nXoFpgXszGiSECxAUkBe?=
 =?us-ascii?q?BepNdAQE?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0E8AgB4+J1dfU1DioBlhFyBYxKETYk?=
 =?us-ascii?q?Cm2uHLAEBAQEBAQEBAQMFLQIBAQGHNDgTBQkBAQEDAQICAQUCAQECAhABAQs?=
 =?us-ascii?q?UCIVphiABAQUBAiBWBQEJAQEKFQMcDgICA1QGEwWDHoIKBLAygTKFToMvgTg?=
 =?us-ascii?q?QII06gX+EIz6HUoJYjQWCM54PgUVnlRkbjgiLOC2nXoFpgXszGiSECxAUkBd?=
 =?us-ascii?q?BgTmTXQEB?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0F5AgB4+J1dh0O0hNFlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgXuCG4FEMSqEI45bgg8Uk2+HGQELBwEBAQEBAQEBAQMdFAECAQE?=
 =?us-ascii?q?BhxEjOBMCAwkBAQEDAQEBAgEFAgEBAgIQAQEBCgsJCCmFQIYgAQEBAQIBAQI?=
 =?us-ascii?q?gPRkFAQkBAQoVAxwOAgIDVAYTBYMdAYF7DwSvPXWBMoVOgy+BOBCBNIFTijs?=
 =?us-ascii?q?YgX+EIz6HUoJYBI0BgjOGc4gpjnOBRWeVGRuOCIs4LalHgXszGiSDO1AQFJA?=
 =?us-ascii?q?XQDKBBgEBk10BAQ?=
X-IPAS-Result: =?us-ascii?q?A0HsAwBfHZ5dbUtDioBlHAEBAQEBBwEBEQEEBAEBgXuCG?=
 =?us-ascii?q?wWBQh0SKoQjiQKFW4IPlAOHGQELBwEBAQEBAQEBAQMFGBUCAQEBhxEjOBMCA?=
 =?us-ascii?q?wkBAQEDAQEBAgEFAgEBAgIQDQsJBiuFQIYgAQEBAQIBAQIgPRkFAQkBAQoVA?=
 =?us-ascii?q?xwOAgIDVAYTBYMeglcgBK91dYEyhU6DLYE4EIE0gVOKOxiBf4QjPodSgl4Ej?=
 =?us-ascii?q?QGCM4ZziCmOc4FFZ5UZG44Iizgtp16BaYF7MxokgztQEBSQF3KBCJATAQE?=
X-IPAS-Result: =?us-ascii?q?A0EtAQBnDZ5dbeeAioBlGwEBAQEBAQEFAQEBEQEBAwMBA?=
 =?us-ascii?q?QGBe4IbA4FDHRIqhCOJAoVagg+UA4cZAQsHAQEBAQEBAQEBAwUYFQIBAQGHE?=
 =?us-ascii?q?SM4EwIDCQEBAQMBAQECAQUCAQECAhANCwkGK4VAhiABAQEBAgEBAiA9GQUBC?=
 =?us-ascii?q?QEBChUDHA4CAgNUBhMFgx6Bew8Er3J1gTKFToMugTgQgTSBU4o7GIF/hCM+h?=
 =?us-ascii?q?1KCWASNAYIzhnOIKY5zgUVnlRkbjgiLOC2nXoFpgXszGiSDO1AQFJAXcoEIk?=
 =?us-ascii?q?10BAQ?=
X-IPAS-Result: =?us-ascii?q?A0F4AQAM+p1dh1VDioBlGwEBAQEBAQEFAQEBEQEBAwMBA?=
 =?us-ascii?q?QGBe4IbgUYdEiqEI4kChVqCD5QDhxkBCwcBAQEBAQEBAQEDBRgVAgEBAYcRI?=
 =?us-ascii?q?zgTAgMJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQgphUCGIAEBAQECAQECID0ZB?=
 =?us-ascii?q?QEJAQEKFQMcDgICA1QGEwWDHQGBew8Er0p1gTKFToMvgTgQgTSBU4o7GIF/h?=
 =?us-ascii?q?CM+h1KCWASNAYIzhnOIKY5zgUVnlRkbjgiLOC2nXoFpgXszGiSDO1AQFJAXc?=
 =?us-ascii?q?oEIk10BAQ?=
X-IPAS-Result: =?us-ascii?q?A0F4AQDU951dh+iAioBlGwEBAQEBAQEFAQEBEQEBAwMBA?=
 =?us-ascii?q?QGBe4IbgUYdEiqEI4kChVqCD5QDhxkBCwcBAQEBAQEBAQEDBRgVAgEBAYcRI?=
 =?us-ascii?q?zgTAgMJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQgphUCGIAEBAQECAQECID0ZB?=
 =?us-ascii?q?QEJAQEKFQMcDgICA1QGEwWDHQGBew8Erz11gTKFToMvgTgQgTSBU4o7GIF/h?=
 =?us-ascii?q?CM+h1KCWASNAYIzhnOIKY5zgUVnlRkbjgiLOC2nXoFpgXszGiSDO1AQFJAXc?=
 =?us-ascii?q?oEIk10BAQ?=
X-IPAS-Result: =?us-ascii?q?A0F4AQC/951dh0tDioBlGwEBAQEBAQEFAQEBEQEBAwMBA?=
 =?us-ascii?q?QGBe4IbgUYdEiqEI4kChVqCD5QDhxkBCwcBAQEBAQEBAQEDBRgVAgEBAYcRI?=
 =?us-ascii?q?zgTAgMJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQgphUCGIAEBAQECAQECID0ZB?=
 =?us-ascii?q?QEJAQEKFQMcDgICA1QGEwWDHQGBew8Erz11gTKFToMvgTgQgTSBU4o7GIF/h?=
 =?us-ascii?q?CM+h1KCWASNAYIzhnOIKY5zgUVnlRkbjgiLOC2nXoFpgXszGiSDO1AQFJAXc?=
 =?us-ascii?q?oEIk10BAQ?=
X-IPAS-Result: =?us-ascii?q?A0E8AgB4+J1dfU1DioBlhFyBYxKETYkCm2uHLAEBAQEBA?=
 =?us-ascii?q?QEBAQMFLQIBAQGHNDgTBQkBAQEDAQICAQUCAQECAhABAQsUCIVphiABAQUBA?=
 =?us-ascii?q?iBWBQEJAQEKFQMcDgICA1QGEwWDHoIKBLAygTKFToMvgTgQII06gX+EIz6HU?=
 =?us-ascii?q?oJYjQWCM54PgUVnlRkbjgiLOC2nXoFpgXszGiSECxAUkBeBepNdAQE?=
X-IPAS-Result: =?us-ascii?q?A0E8AgB4+J1dfU1DioBlhFyBYxKETYkCm2uHLAEBAQEBA?=
 =?us-ascii?q?QEBAQMFLQIBAQGHNDgTBQkBAQEDAQICAQUCAQECAhABAQsUCIVphiABAQUBA?=
 =?us-ascii?q?iBWBQEJAQEKFQMcDgICA1QGEwWDHoIKBLAygTKFToMvgTgQII06gX+EIz6HU?=
 =?us-ascii?q?oJYjQWCM54PgUVnlRkbjgiLOC2nXoFpgXszGiSECxAUkBdBgTmTXQEB?=
X-IPAS-Result: =?us-ascii?q?A0F5AgB4+J1dh0O0hNFlHAEBAQEBBwEBEQEEBAEBgXuCG?=
 =?us-ascii?q?4FEMSqEI45bgg8Uk2+HGQELBwEBAQEBAQEBAQMdFAECAQEBhxEjOBMCAwkBA?=
 =?us-ascii?q?QEDAQEBAgEFAgEBAgIQAQEBCgsJCCmFQIYgAQEBAQIBAQIgPRkFAQkBAQoVA?=
 =?us-ascii?q?xwOAgIDVAYTBYMdAYF7DwSvPXWBMoVOgy+BOBCBNIFTijsYgX+EIz6HUoJYB?=
 =?us-ascii?q?I0BgjOGc4gpjnOBRWeVGRuOCIs4LalHgXszGiSDO1AQFJAXQDKBBgEBk10BA?=
 =?us-ascii?q?Q?=
X-IronPort-AV: E=Sophos; i="5.67,277,1566885600"; d="asc'?scan'208";
 a="414514387"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="asc'?scan'208";
 a="369215821"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="asc'?scan'208";
 a="414082941"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="asc'?scan'208";
 a="371172716"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="asc'?scan'208";
 a="413812235"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="asc'?scan'208";
 a="368952041"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="asc'?scan'208";
 a="368949686"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="asc'?scan'208";
 a="368947360"
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
X-Original-Recipients: gasiewsk@o365.colorado.edu
X-Original-Recipients: gasiewsk@o365.colorado.edu
X-Original-Recipients: migi9492@g.colorado.edu
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <930cb2d2d47e2785711bab59d80e8ad188bd882d.camel@suse.de>
Subject: Re: [PATCH v2] of: Make of_dma_get_range() work on bus nodes
From: "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
To: "Rob Herring" <robh@kernel.org>
Date: Wed, 09 Oct 2019 17:24:33 +0200
In-Reply-To: <CAL_Jsq+RjC0b1ZXzgmMdn5Gd1=3zkN62Jdq_QKeZ8-X4pCiDPw@mail.gmail.com>
References: <20191008195239.12852-1-robh@kernel.org>        
 <4f6b26f8779a4fd98712b966bff3491dc31e26c2.camel@suse.de>        
 <CAL_Jsq+RjC0b1ZXzgmMdn5Gd1=3zkN62Jdq_QKeZ8-X4pCiDPw@mail.gmail.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
X-MS-Exchange-Organization-ExpirationStartTime: 09 Oct 2019 18:01:48.7962 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: 19dbe7a9-347d-40a5-4cbe-08d74ce2c171
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-Forefront-Antispam-Report: CIP:128.138.128.231; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:SKN; SFS:; DIR:INB; SFP:; SCL:-1; SRVR:BN7PR03MB3521; H:ipmx1.colorado.edu;
 FPR:; SPF:None; LANG:en; ; SKIP:1; 
X-MS-Exchange-Organization-AuthSource: BY2NAM01FT041.eop-nam01.prod.protection.outlook.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-OriginatorOrg: colorado.edu
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 19dbe7a9-347d-40a5-4cbe-08d74ce2c171
X-MS-TrafficTypeDiagnostic: BN7PR03MB3521:|BN7PR03MB3521:
X-MS-Exchange-Organization-SCL: -1
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Microsoft-Antispam: BCL:0;
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2019 18:01:48.5650 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 19dbe7a9-347d-40a5-4cbe-08d74ce2c171
X-MS-Exchange-CrossTenant-Id: 3ded8b1b-070d-4629-82e4-c0b019f46057
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3ded8b1b-070d-4629-82e4-c0b019f46057; Ip=[128.138.128.231];
 Helo=[ipmx1.colorado.edu]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR03MB3521
X-MS-Exchange-Transport-EndToEndLatency: 01:18:52.7015040
X-MS-Exchange-Processed-By-BccFoldering: 15.20.2347.014
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; ex:0; auth:0; dest:I;
 ENG:(750127)(520002050)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?HNqNZ+QKY3XoyXj9GrLbxYWSgg5tOqm9tmTd4qIfQOsLRZZ6S9fqXrR9+AUs?=
 =?us-ascii?Q?CLdZ1WlLdXvZI/1y4rE6wWOeB0u64wbb+edQ/GekpycWchx5LSgXH0BiY22E?=
 =?us-ascii?Q?YSlRE/dePghNtvG7fI/cKsCsSUMq7FiWEWFsYH2UShhQJJjNVXltchYi8mA+?=
 =?us-ascii?Q?B1btZ81QcaefnZQjASV1WRBiCsDRSu6G/L4Es8LW4FmFVkeqIj6fLNrLWSng?=
 =?us-ascii?Q?myyjuwY6got9g2fTghE8JRrShfuKW/tGyQyEEJaJg1d8ONGnpRSTQfIxRhCW?=
 =?us-ascii?Q?izc3FjFYE/n4j9KY9z64aSkfqMAA21l1FxcI6M2dEONUEZVszzgJmYkupa9+?=
 =?us-ascii?Q?PIguat4pjQaXmeFuAe46+6yCTzmVQ0Z3hBEa4kX4Y6GFsVNx2ARTk5bGqP6F?=
 =?us-ascii?Q?C7MLGfNQeoEZxxsEIhNkHbkUnoC9haG7BgaMSavMhczmGdmYdwD7sHAVob49?=
 =?us-ascii?Q?uXAHDSVmJXF0WYAODbY6clCfal4NeWpipoN8XRnYuxKHjdLbL+Y+cyi9OTXG?=
 =?us-ascii?Q?c7WBH44+Hajz2jPHQgbS23JAEW8vjC+FrwUTZsYDigIXQ8jBvPerFWGN3keL?=
 =?us-ascii?Q?x8PpCKNECRDB56foiyiznUgKHjOrOl1oostkWqU+bUeQfD4kcn+t05H4GUvW?=
 =?us-ascii?Q?gYXX+G/3JL0rhJBNnAMQ6h92csYU9uYsm6Ko/XWr2i6dyz5/HU1EmESQQoww?=
 =?us-ascii?Q?8yE5xbn1Lotp9687wuKXvU4fYKbQTxVRk5umRr0KVxynFQaihJ0xk8bA3HzK?=
 =?us-ascii?Q?zTBMlyGsJ0WeVCz+9D67RlicBkSaLuhFBcJxqXiXo/e0yJUO/af4cKTk0Gng?=
 =?us-ascii?Q?ipzxSK+fUQW6UkpdbWDnWpKfzmlov/wI91n3PqPZO3QIS23SWSLu+dxiduj5?=
 =?us-ascii?Q?t/jzrnNHLoAAs/jKbOrTTOs9YDIhGItPfMuphVUh8I05SJl/rcgIGT/8ngrB?=
 =?us-ascii?Q?PsNyT3G/M1EJVMfQmRWgcSHPI/VKXRnqGScibGGaTg0X28miOBQYMYWaDYEH?=
 =?us-ascii?Q?7Q/rDsW+t3XuRKFYz7ZxPPYpLAJ5FAfAyGQLhfx8ANzdkFeUdYYX/EnrphVD?=
 =?us-ascii?Q?qwqJ8LDT4p7sEwmVTskertpOlj3Hsi/++q2ny78fUWrU6VVzXto=3D?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_205723_155678_5925EFCC 
X-CRM114-Status: UNSURE (   4.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Frank Rowand <frowand.list@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Christoph
 Hellwig <hch@infradead.org>, Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Stefan Wahren <wahrenst@gmx.net>, Simon Horman <horms+renesas@verge.net.au>,
 Robin Murphy <robin.murphy@arm.com>, "moderated list:ARM/FREESCALE IMX / MXC
 ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7210086308947114050=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a multi-part message in MIME format.

--===============7210086308947114050==
Content-Type: multipart/signed; micalg="pgp-sha256"; protocol="application/pgp-signature";
 boundary="=-gkzPvU3MSN8O+PY+3B0Z"
Content-Transfer-Encoding: base64

This is a multi-part message in MIME format.

--=-gkzPvU3MSN8O+PY+3B0Z
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-10-08 at 20:03 -0500, Rob Herring wrote:
> On Tue, Oct 8, 2019 at 3:52 PM Nicolas Saenz Julienne
> <nsaenzjulienne@suse=2Ede> wrote:
> > Hi Rob/Robin,
> >=20
> > On Tue, 2019-10-08 at 14:52 -0500, Rob Herring wrote:
> > > From: Robin Murphy <robin=2Emurphy@arm=2Ecom>
> > >=20
> > > Since the "dma-ranges" property is only valid for a node representing=
 a
> > > bus, of_dma_get_range() currently assumes the node passed in is a lea=
f
> > > representing a device, and starts the walk from its parent=2E In case=
s
> > > like PCI host controllers on typical FDT systems, however, where the =
PCI
> > > endpoints are probed dynamically the initial leaf node represents the=

> > > 'bus' itself, and this logic means we fail to consider any "dma-range=
s"
> > > describing the host bridge itself=2E Rework the logic such that
> > > of_dma_get_range() also works correctly starting from a bus node
> > > containing "dma-ranges"=2E
> > >=20
> > > While this does mean "dma-ranges" could incorrectly be in a device le=
af
> > > node, there isn't really any way in this function to ensure that a le=
af
> > > node is or isn't a bus node=2E
> >=20
> > Sorry, I'm not totally sure if this is what you're pointing out with th=
e
> > last
> > sentence=2E But, what about the case of a bus configuring a device whic=
h also
> > happens to be a memory mapped bus (say a PCI platform device)=2E It'll =
get
> > it's
> > dma config based on its own dma-ranges which is not what we want=2E
>=20
> What I was trying to say is we just can't tell if we should be looking
> in the current node or the parent=2E 'dma-ranges' in a leaf node can be
> correct or incorrect=2E
>=20
> Your example is a bit different=2E I'm not sure that case is valid or
> can ever work if it is=2E It's certainly valid that a PCI bridge's
> parent has dma-ranges and now we'll actually handle any translation=2E
> The bridge itself is not a DMA-capable device, but just passing thru
> DMA=2E

Yes, you're right, I hadn't thought of it from that perspective=2E Thanks!

> Do we ever need to know the parent's dma-ranges in that case? Or
> to put it another way, is looking at anything other than leaf
> dma-ranges useful?

There is no need at all indeed=2E

With that,

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse=2Ede>

and

Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse=2Ede>

On a Raspberry Pi 4 with pcie-brcmstb=2Ec which is still work in progress b=
ut
depends on this=2E

Regards,
Nicolas


--=-gkzPvU3MSN8O+PY+3B0Z--



--===============7210086308947114050==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7210086308947114050==--


