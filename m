Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3050CD5362
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 02:16:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/tg93NcwsLfdknNXrNcvbsxN/Xu10ujj2NoCNKLmuI=; b=h5dGbk77/SsXSa
	AR0aL9PyO+BAfZITfLmcD1e8AWxJ5Rha4zK75GtU+5r3dxodIyKeJQxuMjqmQ1Tmsyc8o0pn+lvj+
	8RSTI9im266LZoRFjB1WO6gD4I3zfd04Fh6/aNTB/CogQk3X2hPo4kKxb7Pr2X0EaEDa12QcjzTOk
	rBXx3Y4lTVpLoMI9iLgc/02lBPDKa3kPh0MRirztddZFlFqY2ZFhiUbrYHHSF3uJlqgm7VZtSvdAi
	rlTrpHWE7TML4nQZ0/OuAgCcUI5RJazFEWBlMgCod8Zc0oqewiGYeK4wmggpU6JVsL9l+t3eTHf1U
	/kbnkbq8L2RAmiz3iIiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJRYN-0000jH-Sf; Sun, 13 Oct 2019 00:16:07 +0000
Received: from listssympa-test.colorado.edu ([128.138.129.156])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJRYB-0000ij-Qq
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 00:15:57 +0000
Received: from listssympa-test.colorado.edu (localhost [127.0.0.1])
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/sympa) with ESMTPS id
 x9D0Fn8n029670
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 12 Oct 2019 18:15:49 -0600
Received: (from root@localhost)
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/submit) id
 x9D0FnHA029664; Sat, 12 Oct 2019 18:15:49 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;       
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;       
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to       
 :cc:content-transfer-encoding;       
 bh=Xpa5x5FtEx57kIrxbIEmX+YdyK/X1i/zUyZcWd2Z1Po=;       
 b=udHthLOLaFCuZr0AbyIkG5rTFL5xRUgC84odB2PUtgTFgyqOFvGidHi/ETcIqSGKd4        
 /DYr7kF4p/u7LGePJbWwY2Iu/qTyoO7Ow5Iw00c3ZC3s44Zn1J6ItQ82p25nac4CxXjG        
 k5G410ZoY40DFUXUqs3GgQY6lhbaYSxX9h6rRhwh5KUmi1ZIfuw1Ne12SkQ8nfIbdDPc        
 hvj8gsAQuKZsiPr/iHOvHzwIjAx/PSutIdLn0z0NwCOuuWeRupaqejxdyL8af7nsyI3R        
 oBzpCbGXSHhqD0PKUsPj8tE0tPSty3MKR9/byzG3ABLnP8uJt1FfN/73G8IC8yI4K7SN        
 f9ew==
Received: from DM6PR03MB3883.namprd03.prod.outlook.com (2603:10b6:a03:54::37)
 by BYAPR03MB4376.namprd03.prod.outlook.com with HTTPS via
 BYAPR02CA0060.NAMPRD02.PROD.OUTLOOK.COM; Wed, 9 Oct 2019 23:39:13 +0000
Received: from BL0PR03CA0030.namprd03.prod.outlook.com (2603:10b6:208:2d::43)
 by
 DM6PR03MB3883.namprd03.prod.outlook.com (2603:10b6:5:4f::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.2347.16; Wed, 9 Oct 2019 17:55:11 +0000
Received: from SN1NAM01FT044.eop-nam01.prod.protection.outlook.com
 (2a01:111:f400:7e40::205) by BL0PR03CA0030.outlook.office365.com
 (2603:10b6:208:2d::43) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.17 via Frontend
 Transport; Wed, 9 Oct 2019 17:55:11 +0000
Received: from ipmx7.colorado.edu (128.138.128.233) by
 SN1NAM01FT044.mail.protection.outlook.com (10.152.65.225) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384)
 id 15.20.2347.16 via Frontend Transport; Wed, 9 Oct 2019 17:55:10 +0000
Received: from ipmx3.colorado.edu ([128.138.67.74])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 11:05:53 -0600
Received: from vger.kernel.org ([209.132.180.67]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 10:34:10 -0600
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand id
 S1731711AbfJIQeJ (ORCPT <rfc822; michael.gilroy@colorado.edu>);
 Wed, 9 Oct 2019 12:34:09 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:36422 "EHLO       
 mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org       
 with ESMTP id S1731619AbfJIQeG (ORCPT       
 <rfc822; linux-kernel@vger.kernel.org>); Wed, 9 Oct 2019 12:34:06 -0400
Received: by mail-ot1-f68.google.com with SMTP id 67so2274990oto.3 for
 <linux-kernel@vger.kernel.org>; Wed, 09 Oct 2019 09:34:06 -0700 (PDT)
Authentication-Results: spf=none (sender IP is 128.138.128.233)
 smtp.mailfrom=vger.kernel.org; 
 o365.colorado.edu; dkim=pass (signature was verified)
 header.d=baylibre-com.20150623.gappssmtp.com;o365.colorado.edu; dmarc=none
 action=none header.from=baylibre.com;
Received-SPF: None (protection.outlook.com: vger.kernel.org does not designate
 permitted sender hosts)
Authentication-Results-Original: mx.colorado.edu;
 dkim=pass (signature verified)
 header.i=@baylibre-com.20150623.gappssmtp.com
IronPort-SDR: nhwvFGR7T5oE+Oz1ybfXkOgfth3hNBhwdjvQpVNN2/znZAJfNce8TY/iRoRy/gNDYn8blYKBao
 c5AxdEUTFo6ft+SCcJlKiDhYKhSHFSNo0=
IronPort-SDR: 6VR7wSYCqrX5wcU/bsr8ZPG1U4eeFvLED0gotqmqH513K26XStzWsp4hplczkwg2tbNIfpSyfv
 XioOB1ItNFFaRqSKNXxY77tktOTywPssc=
IronPort-PHdr: =?us-ascii?q?9a23=3APtti6xRVxtJwVxSA0kEYi/mXKNpsv+ypbCI2y7?=
 =?us-ascii?q?9ipqxHdrmq45XlOhOGvKdz2QaaFYyO8elNzvHWuvq9Bz9I6sObvXQLYJFAEA?=
 =?us-ascii?q?UIjcwGkgBzZazNQQWzZLaiJyBvFs1TUF5v5Xz+Ok9QXpymPgCK/CfpqzEbAg?=
 =?us-ascii?q?3kLg9pPqL+HYuBx9/ijbjrpsWNOV4b4Vj1Kfs6ZF3+5QWEs8gTjM58J7wqyx?=
 =?us-ascii?q?zP8GFFdelMyGVjKEnBnhC5/Mqo+I8m7yMCtegm8pxMWLn3LaE1VqdRAzljMm?=
 =?us-ascii?q?xn/9DhtxTIUVmT4R5+Gi1e2lIAS0CNvhrxDJz2tDf3sPY4xDOTO9b4QKpxVD?=
 =?us-ascii?q?Kp6KtqThC77UVPf3ZxuCmfwsZw2ZJDqU+x+jJj7p6JP4K0Lup0X47YTZArSX?=
 =?us-ascii?q?tiGfYIVmtTP5KOZLQDVdhYBeEN/Oyf7xNG5VP2TUGmUf7j6iNIoljS1IMRzt?=
 =?us-ascii?q?Y7SSjMzS0jMI8UjFrw8cXPCag5AbyywIOS9QjfYM941ibkz6bWXREtgfDLcI?=
 =?us-ascii?q?57UNPq5mojS2anxh3Y4cStd3vdkcg8qTeYwbZ4Ev/wr0EqkyN7nSeenOYxzZ?=
 =?us-ascii?q?D1l4UylXfbqARmmN4+fu+TE1UnPeyiSbkOlj2jZ9FuGJ4kSmo0kzYKyJJj29?=
 =?us-ascii?q?bzNGBCgNxvjx2CRKDeK7qP0067eMisEQphnylKd4uO2RKy+0GR8f3MB8nqym?=
 =?us-ascii?q?xKsSoYseTJtyk/9hLO9ZGhR6InxUSYiTCB9grfxtlPRCJ83eKTY9ZpivYwiJ?=
 =?us-ascii?q?hDvl/qJzLVql73tLXRd2UD5Mi69MXlS6WhnqSBK654rgemIPwIheeYHPkHPz?=
 =?us-ascii?q?ITR2GC9Oas2KzHrUT3H7NRn9xtqMy7+NiSbYxT7ubxBCVHyq0pxCaELze//I?=
 =?us-ascii?q?wgvkQcFFAVZD/fk7DSJ0CVBdPCXLC1kkaDyx5B4/b+bqDDHszjIF6Ez+zOLZ?=
 =?us-ascii?q?dWu199lCls9vY6hdocQvlJaLq7EkGgucONW0xxI0m12eHhENJnysYEVHmSBr?=
 =?us-ascii?q?PMKKrJqgzSvLAGPvWMaYkJuT30N/ki4bvUgGQknUMGLPL72ItRY3e8Ge5vL0?=
 =?us-ascii?q?LfbHbx0Z8NEmYP6xI3V/eiyEaDXjhae2uoUuoi6ys6BoOrAcaLRo2kjLGbmi?=
 =?us-ascii?q?buNpdfd2RHAEqBVHzvcsPeA65RMHzIeYlumyQcTqOkV5dn3haruQ=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AWl8tXxxj9AHC1H3XCy+O/D0hRQkC/pjqNwoI44?=
 =?us-ascii?q?YmjLQRK/3x4cG7bwTWsO92hRrSXYyBtqwXw+GDqa3kUHwN7dGbvXQLYJFABH?=
 =?us-ascii?q?pnwY1e10RoSIaJXEfyPfrrZTY3Wc9FURk/pyjmaRYPQ4DxbkXKuWa38SZUER?=
 =?us-ascii?q?L6ZkJuc76tQ9OK0Z7shIXQs9WbK00AzHK9NLZzKRjzswjLrcgRh9l4J6g80B?=
 =?us-ascii?q?bPqXZTKeVQgHllPVaC2gr7tMmq+5sx/y1MtqAk+tVbWKr3OqU0H6dFBjYrOH?=
 =?us-ascii?q?xn+MqO11GLBUPHrjNUGjcdmUhDBA7Z4RfmG4vruy3huOdnnSScNsr6TLY7Cl?=
 =?us-ascii?q?HAp+8jAFegwG8NN2sJ6GiKmpFekI9L/U2ihgZvya/5ZbHWBfZvXeTtJNJdV1?=
 =?us-ascii?q?dQbM1uW3ZzW7u7OthqbaJJda4Q58G1rQ4ToTuiBS2LIOrB4SJ6nCff17wb0M?=
 =?us-ascii?q?t8Cz3o+FEwJe8BmySIq9nfbp8vTe+J4qbZ1BLtcdxX1Rf8r6X0eTE4mt6vUe?=
 =?us-ascii?q?4VE4KZgQFnX0uNxhK8mJa6PB3JzqMQ7Ey04tJCX92wujQGtkZonimo4ZgLld?=
 =?us-ascii?q?TomdpNwQv23n5inNoHI4SaFm9nWI7+CMENsSiRa6BmcsENJgMg8G5ygvVO8d?=
 =?us-ascii?q?a4IQdWkcwVwC+DM9CpTri1+wm4e+moEGl8hHhsSYmvt0eyr1KayvL8C+qJ1V?=
 =?us-ascii?q?cTnAtLj8aVkH1UjSfQ05iBRNp38muZ0lPtn0iboqkMaQh8lbTZe5E664ctta?=
 =?us-ascii?q?gIsHzZWS7Wv1vWnrC3dGw0vdCT9vjGbpHg/o3EEZBfrRzjDakUh9S2GOk6Ig?=
 =?us-ascii?q?QfeziS97u6z6zCpnecIv0CxrV+2uGR+JfwN9wwrIGJOC9Vy6p70zWCFA+kgM?=
 =?us-ascii?q?g1xWU/F05UIzektdmuMUDcD6vRJ9O5uwSxsisy6f7geeK6LcXsBSjSsevCIo?=
 =?us-ascii?q?1bjiwUgEJ7hZgXr9paW7wedaegEl+0tcbfCAc+KRDx2ev8FdFhg5sXQnncWP?=
 =?us-ascii?q?XLGb7OsVKO+uMkKvWNY4lQgjvmNvw5/K+133op31Qaea6z1JcQLn20A6cuL0?=
 =?us-ascii?q?aYZC/0i8waWScRvwU4RfD3klDKTzNJZnizUq59rjE2AY6rF8HCE6inia2F3S?=
 =?us-ascii?q?2hE9hdYWUAUAjVTC+2Ld7CVP4UcDmJJ9N51DcDULU=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0E7AwDkF55dbUpDioBlHQEBAQkBEQU?=
 =?us-ascii?q?FAYF7ghsFgUAxKoQjjlyCD5pPA0wRAQEBAQEBAQEBCBgVAgEBAYEDgzyCUiM?=
 =?us-ascii?q?4EwIBAgkBAQEDAQEBAgEFAgEBAgIQCw0JBiuFNAyEMIEzPQEBAQECAQECDxE?=
 =?us-ascii?q?EGQEBNwEEAQkBAQoLCgUCJgICAx8SAQUBHAYTBR2FWCCjdYEDPIoxdX8zgn0?=
 =?us-ascii?q?BAQWFdYE/CRJ6KIwOGIFAP4ERgxI+hEQVgnmCXox/CoIviCeVaIIslRkbgjq?=
 =?us-ascii?q?HTo84j2yTfIQUDyOBRoF7cIEBBoI1UBAUgU8MF4NQilVAMgGBB5ATAQE?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0FKCABiEp5dh0O0hNFlHQEBAQkBEQU?=
 =?us-ascii?q?FAYF7ghuBQzIqhCOOW4IPFJo7A0wRAQEBAQEBAQEBIBQBAgEBAYEDgzyCUiM?=
 =?us-ascii?q?4EwIBAgkBAQEDAQEBAgEFAgEBAgIQAQEBCgsJCCmFNAyEMIEzPQEBAQECAQE?=
 =?us-ascii?q?CDxEEGQEBNwEEAQkBAQoLCgUCJgICAx8SAQUBHAYTBR2DAIF8D6N+gQM8ijF?=
 =?us-ascii?q?1fzOCfQEBBYV2gT8JEnoojA4YgUA/gRGDEj6ERBWCeYJYjH8Kgi+IJ5Vogiy?=
 =?us-ascii?q?VGRuCOodOjziPbJN8hBQygUaBe3CBAQaCNVAQFIFPDBeDUIpVPzMBgQUBAZN?=
 =?us-ascii?q?dAQE?=
X-IPAS-Result: =?us-ascii?q?A0E7AwDkF55dbUpDioBlHQEBAQkBEQUFAYF7ghsFgUAxK?=
 =?us-ascii?q?oQjjlyCD5pPA0wRAQEBAQEBAQEBCBgVAgEBAYEDgzyCUiM4EwIBAgkBAQEDA?=
 =?us-ascii?q?QEBAgEFAgEBAgIQCw0JBiuFNAyEMIEzPQEBAQECAQECDxEEGQEBNwEEAQkBA?=
 =?us-ascii?q?QoLCgUCJgICAx8SAQUBHAYTBR2FWCCjdYEDPIoxdX8zgn0BAQWFdYE/CRJ6K?=
 =?us-ascii?q?IwOGIFAP4ERgxI+hEQVgnmCXox/CoIviCeVaIIslRkbgjqHTo84j2yTfIQUD?=
 =?us-ascii?q?yOBRoF7cIEBBoI1UBAUgU8MF4NQilVAMgGBB5ATAQE?=
X-IPAS-Result: =?us-ascii?q?A0FKCABiEp5dh0O0hNFlHQEBAQkBEQUFAYF7ghuBQzIqh?=
 =?us-ascii?q?COOW4IPFJo7A0wRAQEBAQEBAQEBIBQBAgEBAYEDgzyCUiM4EwIBAgkBAQEDA?=
 =?us-ascii?q?QEBAgEFAgEBAgIQAQEBCgsJCCmFNAyEMIEzPQEBAQECAQECDxEEGQEBNwEEA?=
 =?us-ascii?q?QkBAQoLCgUCJgICAx8SAQUBHAYTBR2DAIF8D6N+gQM8ijF1fzOCfQEBBYV2g?=
 =?us-ascii?q?T8JEnoojA4YgUA/gRGDEj6ERBWCeYJYjH8Kgi+IJ5VogiyVGRuCOodOjziPb?=
 =?us-ascii?q?JN8hBQygUaBe3CBAQaCNVAQFIFPDBeDUIpVPzMBgQUBAZNdAQE?=
X-IronPort-AV: E=Sophos; i="5.67,277,1566885600"; d="scan'208"; a="287167915"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="369280048"
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
X-Original-Recipients: migi9492@g.colorado.edu
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=1e100.net;
 s=20161025; 
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date        
 :message-id:subject:to:cc:content-transfer-encoding;       
 bh=Xpa5x5FtEx57kIrxbIEmX+YdyK/X1i/zUyZcWd2Z1Po=;       
 b=Wkzb+6MgkTgt2eM0rgJ1Hh5BB8yInlsA4/ISnE9mVAGUensNXFxANqq3id0STVGhP6        
 E1LtR5uLDJQZXuu035gfIzVNAGJ1qaKuT3uQtZq2hduxMYyx5x+lxuHEKirEuSEm7mBT        
 wU4OvfkmZMcb1W9u0tDsyExk6YtRFPVq5ShuRiV/TnKVDmWJWWYe9M/e9v0viu/TQz91        
 rXsCvn17ft2ifXbCcUqh3NtKd/+piVbSGED/kc2plGfTMY7Vnu/bH6zCZltheLos36rH        
 JWLPJZ6olcSvJ0QqhNW1LZeGvtqJOAeMqMu9xUQW6IZ30nNmS7/qZ+lzQQdwkrP8GHet        
 0Cyg==
X-Gm-Message-State: APjAAAVGAi8z+/iVm9DV6ZFDjWCdRSRVabd96/e+ECTPr5yT7CpgXZOg 
 VE0/5S353C/3wYLEleFY94p3c8eZN7/rVScINCCTcQ==
X-Google-Smtp-Source: APXvYqxJohNE21WQBvPtj9t/5XJFgzN0/WlpuYOnA7Glsjddm3+nHq0LW7VLoKtNkRwKXJR896xW9Wj4qLAAYuvxuh4=
X-Received: by 2002:a9d:7dd6:: with SMTP id k22mr3693082otn.256.1570638845498;
 Wed, 09 Oct 2019 09:34:05 -0700 (PDT)
MIME-Version: 1.0
References: <20191009083021.33529-1-hui.song_1@nxp.com>
In-Reply-To: <20191009083021.33529-1-hui.song_1@nxp.com>
From: "Bartosz Golaszewski" <bgolaszewski@baylibre.com>
Date: Wed, 9 Oct 2019 18:33:54 +0200
Message-ID: <CAMpxmJVUkkiywMOQ6i_izu+8LQD0S_fpd_iuBz4yGceSrs5beg@mail.gmail.com>
Subject: Re: [PATCH v6] gpio/mpc8xxx: change irq handler from chained to normal
To: "Hui Song" <hui.song_1@nxp.com>
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
X-MS-Exchange-Organization-ExpirationStartTime: 09 Oct 2019 17:55:11.1078 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: e4cb08ce-e663-436d-dfe0-08d74ce1d466
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-Forefront-Antispam-Report: CIP:128.138.128.233; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:SKN; SFS:; DIR:INB; SFP:; SCL:-1; SRVR:DM6PR03MB3883; H:ipmx7.colorado.edu;
 FPR:; SPF:None; LANG:en; ; SKIP:1; 
X-MS-Exchange-Organization-AuthSource: SN1NAM01FT044.eop-nam01.prod.protection.outlook.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-OriginatorOrg: colorado.edu
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e4cb08ce-e663-436d-dfe0-08d74ce1d466
X-MS-TrafficTypeDiagnostic: DM6PR03MB3883:|DM6PR03MB3883:
X-MS-Exchange-Organization-SCL: -1
X-MS-Oob-TLC-OOBClassifiers: OLM:669;
X-Microsoft-Antispam: BCL:0;
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2019 17:55:10.9187 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e4cb08ce-e663-436d-dfe0-08d74ce1d466
X-MS-Exchange-CrossTenant-Id: 3ded8b1b-070d-4629-82e4-c0b019f46057
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3ded8b1b-070d-4629-82e4-c0b019f46057; Ip=[128.138.128.233];
 Helo=[ipmx7.colorado.edu]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB3883
X-MS-Exchange-Transport-EndToEndLatency: 05:44:02.7879878
X-MS-Exchange-Processed-By-BccFoldering: 15.20.2347.014
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; ex:0; auth:0; dest:I;
 ENG:(750127)(520002050)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6pI/NUQ4YYDf/pwqpbG/Gh0HXiMpX/MqjiDJmaMEBd5Yjg3G6ASXEKfCzLDU?=
 =?us-ascii?Q?WrJRCZPpxUY/NTeHMkCb2jCK0Ol/N9+EqMoPF7389f5Usz6BsMb2FXCA6FaK?=
 =?us-ascii?Q?goe6Nh8fSnQlW5ohx+I6kCqtO84FPP4e9yBhDfZhyFDINh/GOsI3KmEJ/8Wk?=
 =?us-ascii?Q?2XUrul+5800cP4qA3Us+QAmWE66GTmWu6PYPV33CWv3ulN+ldPt3ww2L1Ubg?=
 =?us-ascii?Q?EY7hONDM9NdFb8OcriaK+SjQ2Lee6SEm5CPeNVa5WCtvcxfdeb3NHbdKUXbg?=
 =?us-ascii?Q?QAwqUk8QcC/WSRrql4KJFrqrjrc9tf2o5g1YjyiFqzmjRgvd5bDXYPkndg1V?=
 =?us-ascii?Q?xkqc1ZCH1jvpayJtcGkFQa9J/02zIrZgVB7KmCmj0PYg7MFnLBcgpSHGgcJd?=
 =?us-ascii?Q?wUzkLNSj0njh7IB/rsgDA2Su5Y9Brt5gKANRWF1CP5CxzLHk2i2rc2pbDSKe?=
 =?us-ascii?Q?gogCo62VfKl7wkrClRszTtxQvDr/8Jhs4LEYo3YL5hxNVBxXnxoGsd8BYDf7?=
 =?us-ascii?Q?LWFuRVD7SdRtJ5AGNEDXqEyVnSQ8MZxfekIXNE1zuCjKd3fNYdA3ORAS0Qn5?=
 =?us-ascii?Q?WUhznnwsgcUGFEObocGNhWtsWgp7aWJXCmhoKMAATN652s8RxcwSaswg+2oI?=
 =?us-ascii?Q?/Id03H8OdDqj/+Pvx/LZm3NKK64T0eVfIDeY0fNr9VyBR5Cv1YH1nHgg9Gr+?=
 =?us-ascii?Q?TtL9d72iI3vdXiU08EI1pduGlP3t9dT5kJtZmDSNMQE/KkTOXjE7HgKNt6Ec?=
 =?us-ascii?Q?pGeIh5S+GTnTv90wlsgYjn7qj1B7DrJCut1TPTeUahBUpLCBLZB1Cs0Clzwn?=
 =?us-ascii?Q?qqfygjxMApDmV5qTyA7jVsLnyETt/9mKMeZnQSDaMos3N5XHWnk/lmgHkwPm?=
 =?us-ascii?Q?c1MhqoLK0pOSxApXSYrRaGUOI6godCrtKS/1TNXFLEaD74eMVWACC9WFBjs7?=
 =?us-ascii?Q?9peaaqDe4cOnO2vRZ2bf1Jb2b9cotJnLyG0RxPwrciIrrqTRYXKoEM6vo7K1?=
 =?us-ascii?Q?PYKiO/k1B47Ez+7VWuftmVQo1VDemnN1tXZk5L0XeavWH4qVp44ZSaUSiwED?=
 =?us-ascii?Q?swJA3WjrmSvFnDITlrXPfYXRyxZ+DXeLY2BM6T1WqdyW1Sq1fnnsq7BQWj00?=
 =?us-ascii?Q?DacpQ+8yFEg2328qdJODD8yi8Li0quMivXeqRmOIC0X1HzasOwEDRqkLiHqF?=
 =?us-ascii?Q?6pHhy+/AEHEXaOhH?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_171556_276785_F7E4B97F 
X-CRM114-Status: GOOD (  11.38  )
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
 linux-devicetree <devicetree@vger.kernel.org>, Linus
 Walleij <linus.walleij@linaro.org>, LKML <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, linux-gpio <linux-gpio@vger.kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

xZtyLiwgOSBwYcW6IDIwMTkgbyAxMDo0MSBIdWkgU29uZyA8aHVpLnNvbmdfMUBueHAuY29tPiBu
YXBpc2HFgihhKToKPgo+IEZyb206IFNvbmcgSHVpIDxodWkuc29uZ18xQG54cC5jb20+Cj4KPiBN
b3JlIHRoYW4gb25lIGdwaW8gY29udHJvbGxlcnMgY2FuIHNoYXJlIG9uZSBpbnRlcnJ1cHQsIGNo
YW5nZSB0aGUKPiBkcml2ZXIgdG8gcmVxdWVzdCBzaGFyZWQgaXJxLgo+Cj4gV2hpbGUgdGhpcyB3
aWxsIHdvcmssIGl0IHdpbGwgbWVzcyB1cCB1c2Vyc3BhY2UgYWNjb3VudGluZyBvZiB0aGUgbnVt
YmVyCj4gb2YgaW50ZXJydXB0cyBwZXIgc2Vjb25kIGluIHRvb2xzIHN1Y2ggYXMgdm1zdGF0LiAg
VGhlIHJlYXNvbiBpcyB0aGF0Cj4gZm9yIGV2ZXJ5IEdQSU8gaW50ZXJydXB0LCAvcHJvYy9pbnRl
cnJ1cHRzIHJlY29yZHMgdGhlIGNvdW50IGFnYWluc3QgR0lDCj4gaW50ZXJydXB0IDY4IG9yIDY5
LCBhcyB3ZWxsIGFzIHRoZSBHUElPIGl0c2VsZi4gIFNvLCBmb3IgZXZlcnkgR1BJTwo+IGludGVy
cnVwdCwgdGhlIHRvdGFsIG51bWJlciBvZiBpbnRlcnJ1cHRzIHRoYXQgdGhlIHN5c3RlbSBoYXMg
c2Vlbgo+IGluY3JlbWVudHMgYnkgdHdvCj4KPiBTaWduZWQtb2ZmLWJ5OiBMYXVyZW50aXUgVHVk
b3IgPExhdXJlbnRpdS5UdWRvckBueHAuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEFsZXggTWFyZ2lu
ZWFuIDxhbGV4YW5kcnUubWFyZ2luZWFuQG54cC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogU29uZyBI
dWkgPGh1aS5zb25nXzFAbnhwLmNvbT4KPiAtLS0KPiAgQ2hhbmdlcyBpbiB2NjoKPiAgICAgICAg
IC0gY2hhbmdlIHJlcXVlc3RfaXJxIHRvIGRldm1fcmVxdWVzdF9pcnEgYW5kIGFkZCBjb21taXQg
bWVzc2FnZS4KPiAgQ2hhbmdlcyBpbiB2NToKPiAgICAgICAgIC0gYWRkIHRyYXZlcnNlIGV2ZXJ5
IGJpdCBmdW5jdGlvbi4KPiAgQ2hhbmdlcyBpbiB2NDoKPiAgICAgICAgIC0gY29udmVydCAncHJf
ZXJyJyB0byAnZGV2X2VycicuCj4gIENoYW5nZXMgaW4gdjM6Cj4gICAgICAgICAtIHVwZGF0ZSB0
aGUgcGF0Y2ggZGVzY3JpcHRpb24uCj4gIENoYW5nZXMgaW4gdjI6Cj4gICAgICAgICAtIGRlbGV0
ZSB0aGUgY29tcGF0aWJsZSBvZiBsczEwODhhLgo+Cj4gIGRyaXZlcnMvZ3Bpby9ncGlvLW1wYzh4
eHguYyB8IDMxICsrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDIwIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3Bpby9ncGlvLW1wYzh4eHguYyBiL2RyaXZlcnMvZ3Bpby9ncGlvLW1wYzh4eHguYwo+
IGluZGV4IDE2YTQ3ZGUuLmYwYmUyODQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncGlvL2dwaW8t
bXBjOHh4eC5jCj4gKysrIGIvZHJpdmVycy9ncGlvL2dwaW8tbXBjOHh4eC5jCj4gQEAgLTIyLDYg
KzIyLDcgQEAKPiAgI2luY2x1ZGUgPGxpbnV4L2lycS5oPgo+ICAjaW5jbHVkZSA8bGludXgvZ3Bp
by9kcml2ZXIuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2JpdG9wcy5oPgo+ICsjaW5jbHVkZSA8bGlu
dXgvaW50ZXJydXB0Lmg+Cj4KPiAgI2RlZmluZSBNUEM4WFhYX0dQSU9fUElOUyAgICAgIDMyCj4K
PiBAQCAtMTI3LDIwICsxMjgsMjAgQEAgc3RhdGljIGludCBtcGM4eHh4X2dwaW9fdG9faXJxKHN0
cnVjdCBncGlvX2NoaXAgKmdjLCB1bnNpZ25lZCBvZmZzZXQpCj4gICAgICAgICAgICAgICAgIHJl
dHVybiAtRU5YSU87Cj4gIH0KPgo+IC1zdGF0aWMgdm9pZCBtcGM4eHh4X2dwaW9faXJxX2Nhc2Nh
ZGUoc3RydWN0IGlycV9kZXNjICpkZXNjKQo+ICtzdGF0aWMgaXJxcmV0dXJuX3QgbXBjOHh4eF9n
cGlvX2lycV9jYXNjYWRlKGludCBpcnEsIHZvaWQgKmRhdGEpCj4gIHsKPiAtICAgICAgIHN0cnVj
dCBtcGM4eHh4X2dwaW9fY2hpcCAqbXBjOHh4eF9nYyA9IGlycV9kZXNjX2dldF9oYW5kbGVyX2Rh
dGEoZGVzYyk7Cj4gLSAgICAgICBzdHJ1Y3QgaXJxX2NoaXAgKmNoaXAgPSBpcnFfZGVzY19nZXRf
Y2hpcChkZXNjKTsKPiArICAgICAgIHN0cnVjdCBtcGM4eHh4X2dwaW9fY2hpcCAqbXBjOHh4eF9n
YyA9IGRhdGE7Cj4gICAgICAgICBzdHJ1Y3QgZ3Bpb19jaGlwICpnYyA9ICZtcGM4eHh4X2djLT5n
YzsKPiAgICAgICAgIHVuc2lnbmVkIGludCBtYXNrOwo+ICsgICAgICAgaW50IGk7Cj4KPiAgICAg
ICAgIG1hc2sgPSBnYy0+cmVhZF9yZWcobXBjOHh4eF9nYy0+cmVncyArIEdQSU9fSUVSKQo+ICAg
ICAgICAgICAgICAgICAmIGdjLT5yZWFkX3JlZyhtcGM4eHh4X2djLT5yZWdzICsgR1BJT19JTVIp
Owo+IC0gICAgICAgaWYgKG1hc2spCj4gKyAgICAgICBmb3JfZWFjaF9zZXRfYml0KGksICZtYXNr
LCAzMikKPiAgICAgICAgICAgICAgICAgZ2VuZXJpY19oYW5kbGVfaXJxKGlycV9saW5lYXJfcmV2
bWFwKG1wYzh4eHhfZ2MtPmlycSwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIDMyIC0gZmZzKG1hc2spKSk7Cj4gLSAgICAgICBpZiAoY2hpcC0+
aXJxX2VvaSkKPiAtICAgICAgICAgICAgICAgY2hpcC0+aXJxX2VvaSgmZGVzYy0+aXJxX2RhdGEp
Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
MzEgLSBpKSk7Cj4gKwo+ICsgICAgICAgcmV0dXJuIElSUV9IQU5ETEVEOwo+ICB9Cj4KPiAgc3Rh
dGljIHZvaWQgbXBjOHh4eF9pcnFfdW5tYXNrKHN0cnVjdCBpcnFfZGF0YSAqZCkKPiBAQCAtMzg4
LDggKzM4OSw4IEBAIHN0YXRpYyBpbnQgbXBjOHh4eF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQo+Cj4gICAgICAgICByZXQgPSBncGlvY2hpcF9hZGRfZGF0YShnYywgbXBjOHh4
eF9nYyk7Cj4gICAgICAgICBpZiAocmV0KSB7Cj4gLSAgICAgICAgICAgICAgIHByX2VycigiJXBP
RjogR1BJTyBjaGlwIHJlZ2lzdHJhdGlvbiBmYWlsZWQgd2l0aCBzdGF0dXMgJWRcbiIsCj4gLSAg
ICAgICAgICAgICAgICAgICAgICBucCwgcmV0KTsKPiArICAgICAgICAgICAgICAgZGV2X2Vycigm
cGRldi0+ZGV2LCAiJXBPRjogR1BJTyBjaGlwIHJlZ2lzdHJhdGlvbiBmYWlsZWQgd2l0aCBzdGF0
dXMgJWRcbiIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgbnAsIHJldCk7CgpUaGlzIGlzIHVu
cmVsYXRlZCB0byB0aGUgcGF0Y2guIFBsZWFzZSBwdXQgaXQgaW4gYSBzZXBhcmF0ZSBwYXRjaC4K
CkJhcnQKCj4gICAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+ICAgICAgICAgfQo+Cj4gQEAgLTQw
OSw4ICs0MTAsMTYgQEAgc3RhdGljIGludCBtcGM4eHh4X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCj4gICAgICAgICBpZiAoZGV2dHlwZS0+Z3Bpb19kaXJfaW5faW5pdCkKPiAg
ICAgICAgICAgICAgICAgZGV2dHlwZS0+Z3Bpb19kaXJfaW5faW5pdChnYyk7Cj4KPiAtICAgICAg
IGlycV9zZXRfY2hhaW5lZF9oYW5kbGVyX2FuZF9kYXRhKG1wYzh4eHhfZ2MtPmlycW4sCj4gLSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtcGM4eHh4X2dwaW9faXJxX2Nh
c2NhZGUsIG1wYzh4eHhfZ2MpOwo+ICsgICAgICAgcmV0ID0gZGV2bV9yZXF1ZXN0X2lycSgmcGRl
di0+ZGV2LCBtcGM4eHh4X2djLT5pcnFuLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBtcGM4eHh4X2dwaW9faXJxX2Nhc2NhZGUsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIElSUUZfTk9fVEhSRUFEIHwgSVJRRl9TSEFSRUQsICJncGlvLWNhc2NhZGUiLAo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBtcGM4eHh4X2djKTsKPiArICAgICAgIGlmIChyZXQp
IHsKPiArICAgICAgICAgICAgICAgZGV2X2VycigmcGRldi0+ZGV2LCAiJXM6IGZhaWxlZCB0byBk
ZXZtX3JlcXVlc3RfaXJxKCVkKSwgcmV0ID0gJWRcbiIsCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgbnAtPmZ1bGxfbmFtZSwgbXBjOHh4eF9nYy0+aXJxbiwgcmV0KTsKPiArICAgICAgICAgICAg
ICAgZ290byBlcnI7Cj4gKyAgICAgICB9Cj4gKwo+ICAgICAgICAgcmV0dXJuIDA7Cj4gIGVycjoK
PiAgICAgICAgIGlvdW5tYXAobXBjOHh4eF9nYy0+cmVncyk7Cj4gLS0KPiAyLjkuNQo+CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
