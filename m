Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FFBD539A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 02:40:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QI84fWcO5ppTB/0U90YlrhUM7OUpvuB8r4MK6rAT++k=; b=VBJrQys/KjaPwZ
	VuCv9jVScAqobm4cLSsnwDJtLK1QbOJeLR0B0hzWhi2w3VQ2ipM2M97ichtkjI5U/TLcP8Z6UAFN3
	SYQMF+g2pcUBID5yaHpYxd18x7S7hUg3aLRTRMvjupZzFpMruCoWeuUnN6ux5wKJB0WeiZNZyASzk
	CPz6St3LKs1Hp6ULiGS07H/kt4b9KrYyDOy1eWrUJIUqEHdqgriTPMGLnx4cnjVxpbkB9oAqccKs/
	3dh3EeInJ8xbG8HSfCHpRB9pYOMsmnfy4IMnvbKoUyn1YR5ePpw4ysKJodxqE0Ue/PeVyY/YyOReT
	AVUnSa5yNSqBYh3Hhb7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJRvy-0000HM-14; Sun, 13 Oct 2019 00:40:30 +0000
Received: from listssympa-test.colorado.edu ([128.138.129.156])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJRvo-0000H1-To
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 00:40:22 +0000
Received: from listssympa-test.colorado.edu (localhost [127.0.0.1])
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/sympa) with ESMTPS id
 x9D0eAXN009429
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 12 Oct 2019 18:40:10 -0600
Received: (from root@localhost)
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/submit) id
 x9D0e9jF009410; Sat, 12 Oct 2019 18:40:09 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025; 
 h=from:to:cc:subject:date:message-id:in-reply-to:references 
 :mime-version:content-transfer-encoding;       
 bh=WN3x14SIuSn1oRkzpsuHsfcKOnsb1pBJ4mBFw0scg+8=;       
 b=SQsB9qAfSzMTIFTeeNJx6QuWC0AgR9xMh/0Di/53zSlsCNW3Q7n8I3ZXJpjFC/1Ey0        
 e+VBmKNZTXysH3p7Tvhp/Kkn+Jpz8DEEl4kGqA+duxEHGztwhRsMoOc/WsW4vpZMhVmp        
 ZexvMLbNfN6V4G5QMXEPfz21o2cC1Cl54Ry3OcQ6BWupe3oimMX9cR635wrjUUs4utOi        
 2j47YxYwjMBOO1Z9SX4gdaAWW22ecDdiIQTzBtP3l37ZhDxzCyPRZHujWsQ2Vzz6uXOk        
 fmCNsU1m0s2/yxW/r8Sxf/soY9nTQ9cs2iohQhz3LjA34HJt8xBql2q9Yq1A88kOBQNK        
 nFRA==
Received: from MN2PR03MB4653.namprd03.prod.outlook.com (2603:10b6:a03:117::34)
 by BYAPR03MB4376.namprd03.prod.outlook.com with HTTPS via
 BYAPR08CA0057.NAMPRD08.PROD.OUTLOOK.COM; Wed, 9 Oct 2019 18:46:52 +0000
Received: from CY1PR03CA0005.namprd03.prod.outlook.com (2603:10b6:600::15) by
 MN2PR03MB4653.namprd03.prod.outlook.com (2603:10b6:208:ab::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16; Wed, 9 Oct
 2019 17:58:12 +0000
Received: from BY2NAM01FT023.eop-nam01.prod.protection.outlook.com
 (2a01:111:f400:7e42::207) by CY1PR03CA0005.outlook.office365.com
 (2603:10b6:600::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16 via Frontend
 Transport; Wed, 9 Oct 2019 17:58:11 +0000
Received: from ipmx3.colorado.edu (128.138.67.74) by
 BY2NAM01FT023.mail.protection.outlook.com (10.152.69.191) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.2347.16 via Frontend Transport; Wed, 9 Oct 2019 17:58:11 +0000
Received: from ipmx1.colorado.edu ([128.138.128.231]) by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 11:11:37 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 10:33:58 -0600
Received: from ipmx8.colorado.edu ([128.138.67.85])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 10:09:20 -0600
Received: from mx.colorado.edu ([128.138.67.77])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 09:54:52 -0600
Received: from mx.colorado.edu ([128.138.67.77])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 09:47:59 -0600
Received: from ipmx2.colorado.edu ([128.138.128.232]) by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 09:42:33 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:34:42 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:30:39 -0600
Received: from vger.kernel.org ([209.132.180.67]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:28:26 -0600
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand id
 S1731834AbfJIP2Y (ORCPT <rfc822; michael.gilroy@colorado.edu>);
 Wed, 9 Oct 2019 11:28:24 -0400
Received: from mail-yb1-f195.google.com ([209.85.219.195]:43606 "EHLO       
 mail-yb1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org       
 with ESMTP id S1731747AbfJIP1r (ORCPT       
 <rfc822; linux-kernel@vger.kernel.org>); Wed, 9 Oct 2019 11:27:47 -0400
Received: by mail-yb1-f195.google.com with SMTP id y204so855564yby.10; Wed, 09
 Oct 2019 08:27:44 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])        by smtp.gmail.com with ESMTPSA id
 g40sm611863ywk.14.2019.10.09.08.27.42        (version=TLS1_3
 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);        Wed, 09 Oct 2019
 08:27:43 -0700 (PDT)
Authentication-Results: spf=none (sender IP is 128.138.67.74)
 smtp.mailfrom=vger.kernel.org; 
 o365.colorado.edu; dkim=pass (signature was verified)
 header.d=gmail.com;o365.colorado.edu; dmarc=pass action=none
 header.from=gmail.com;
Received-SPF: None (protection.outlook.com: vger.kernel.org does not designate
 permitted sender hosts)
Authentication-Results-Original: mx.colorado.edu;
 dkim=pass (signature verified)
 header.i=@gmail.com
IronPort-SDR: dLxyCOvWDUiA032U7BkpVPYa9tZlLXlTtYbFQCRTV1B447Vwc4G3DhCQNdduky1iYI9WJ37B6Z
 V7SxZZ/z9CD4PuDLn3lyg2hHZTS209OD0=
IronPort-SDR: 2okgrVLpdmwePMclC8wqmkMsR5d0vwNDjonnlARKZt7I6Pih1NSjqa53dpQOjQOnCh3aVW+WXQ
 J7fZpxRncWpjV4hmhr5AF6pFkKAcvj7/o=
IronPort-SDR: XSCfvBmRhZ2ybtame8h1rquAhSV5hE5sT2tE91r27xC4AWz0X3NQiG6NI9rUioqGkfjdfc/YZE
 oEWXpuKevIJBYq24/sig0LSlLzvmWs6R4=
IronPort-SDR: Bp2P5mR/gC15zwk/IEuHVenAaQn5pkEEb0ExFXsQPCE8XYlV6154Fa0eF1FyH/l51WD6D/zRGw
 n6Mqamibm0t3jn7SPR1VyTsUkbhQ5Ry+4=
IronPort-SDR: sltm+iwCM5Pik/4sOpsZm/3YA+LdOfUYW4JqkaQQu3U/AHCEcCdep+/6dnrAACFkFe55ASRjdb
 y+ZdeIdC8USLaIDIg5IP1mfecu0Jecdco=
IronPort-SDR: TS15kVlmYKAuEWT2/1ZNuJqF8GxmWGKTVFW0wO1/YuH8oTCfkYgVaZEFmMR95TUg/thcWcfs6z
 xrs5CSYpTIKnv0hxu6d+0B+l37F0YMqHc=
IronPort-SDR: m+25N1Cgvdm0Ze2P1LgFDQiBb6K2zCXK5a92CUkUKJR79NTmbgA0nyEJjt8ZybWugZwJVfygny
 cPyZVudlQhW7qo5NAufLN3YdtGdHKNwjk=
IronPort-SDR: LA2AmZmIuEU2IsS4pa6g547VmqRCf8gjZP/XrVZxOnrGw1Z/x0RHAYoO4C4Zn9Nc9r6CXvKA78
 VL8NHT7YCbtqj9VXO4t5M+l/nI1Agorgg=
IronPort-SDR: n6t8VKoB+lLwALfrgI3ztZn8vpIVmIJSqec+9WBQn8TpHffA66Rrjv7AJcY800NfxAKV78PAHm
 yUSMY0sMdQrsSRkbzefZaBY+J1h8cXMdQ=
IronPort-PHdr: =?us-ascii?q?9a23=3AdlQypBMS/yugCtzE/uYl6mtUO3oLmJTReyML45?=
 =?us-ascii?q?46gq5PdaL9r8mwIhmGtr1k2UXSVMDA6/se1rSF+6u1Q2EE6IaMvDcYfZhFRx?=
 =?us-ascii?q?IJ2qB010RoSIbNQQX3efHvZi0+Ws9FUQwt5CThaRELQZ6kOg63wDX6pXZaUl?=
 =?us-ascii?q?23NV97POPwSJLV3c+8hfuv8Z/eaBkaiDOhbOF3IQ6tpArc88ga04pkb7w80h?=
 =?us-ascii?q?/Y52dPKf5by25yKFSYkg2ZhI/4tNYru2wY86Ak9stNFLv3Zb85SroKBzMgL2?=
 =?us-ascii?q?0z+Ij3rxDFVgWC/D4RVG4RnhtODFugjlmyFt+5+mOyvOoo5w/BLZSqdpEpYj?=
 =?us-ascii?q?L76J1oWgfzlQccOTUa12fMgJVopoAHpTiPuERkyIGXMNTGUZg2NuuVNZtSDW?=
 =?us-ascii?q?AUZf9KfX1YK42Hfa4zLsQ9MOt+jZmjnkYxhkOXCjP9FMbvjWdkhzirhr8B1/?=
 =?us-ascii?q?8KNz6d5VMmT/NVgkT2tNfbH+BLfPHtqcuAhX2LJ7sekX/wq7bidzMHk828TK?=
 =?us-ascii?q?lQKtKO9VcvD0TmjVPTi5T3bx+4++BRsEeCxqlsSPKCq0E1tx5xmCOKweAnzb?=
 =?us-ascii?q?bSud4L0mLh9Rt82ONXbZXwAAYzKZbsIpZAqQS+Pa14ZJ0cH041gQMK54UIq8?=
 =?us-ascii?q?Tie3IB480Mw0ODUe3cVIOxvDjcSf6cejB5gVdVKbmF2U3v7lKi99DnCtSo91?=
 =?us-ascii?q?cvzGIN2pGE/jhFn0bRtpe2Wspi/GKL/hHW5VHo2r1LLUkdqpWBcZMq7rIxt6?=
 =?us-ascii?q?Mvo27fJnTywxrEjIOGZG41wtKay/nlXa7f/KGOJdFpuib9V8Zm0oT3Saxwek?=
 =?us-ascii?q?AAWkO94tnl0eX4pwroUIoNlK0Ngqeeq5frdMInn/+yGFVU1YYa6wTkKzWPi4?=
 =?us-ascii?q?g4v2VXPHhcfEie3rnwYniecPPfJ86ZoDHO2H8jj7iOdvWpBLv3By2Ww//xOL?=
 =?us-ascii?q?dn7EhEzxAviMpS/I9QFuQZKenoCRWr5vXFEh80NRC1yO/7CdJ7k7kTQn+LHr?=
 =?us-ascii?q?THb/HXoRmD4eYoOeCAY8kYtCuuY/Qm5vu7lXYighddZqim25ILdWq1VuprOU?=
 =?us-ascii?q?SXYHfgw58BHG4GsxB4TbnCh1iLUDoVbHG3Ug=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AT5nhyxE6iOINkKPmLmlTwZ1GYnF66ZnXHytQx4?=
 =?us-ascii?q?Quj69HbqWk+cqyYR7BsKw+xFacR57SrulEgrCL7fOoUjka7JKIoH0ON4ZBUx?=
 =?us-ascii?q?YVhMlF+m5oSIbNQQWzZPK/YCkzHcAEX1hgrDmgZBINQZinPweP8RjQpXZaUl?=
 =?us-ascii?q?23fUJ1c+rvHYuAk8Pl3Ovg4IDZYQhDmGixaK9/fhC7th7YucRTgIcwK6B00B?=
 =?us-ascii?q?bRpmoNZ+ME325mKEiemR3x/aLStNYru2wY87pppctBVKi/YakiVr1fCmYtNG?=
 =?us-ascii?q?Yp6cv38AXZRA2U6HYGF2gQmR1EAg7Kv3SYFt+5+mOy/qJ32HylG5bmFOwPeC?=
 =?us-ascii?q?mZ6f5schz6kDwaFyU3+0LwjNd61bpxgk6kjTJgm5Xfb8LFYakbHOuVNZtSDS?=
 =?us-ascii?q?IJVJNqbjdrU5qVYbAdKtYgE9pVoq/ftwU3sCSVXSCjPrL/7z8P3lP3mvBhwd?=
 =?us-ascii?q?8lCirg41cZQNRekS/mnPftNok5FrmY3fGtr32LJ7sekX+1oIWLTDokgte+YY?=
 =?us-ascii?q?JhauqK0RYTCQPdyXaTr8/HJyHF+skgtzSYwPNJFu6ym0MHhBNtvTiV3eIrrY?=
 =?us-ascii?q?KOuZkqlk7cxwB5/oMtQL/wAAYzKZbsWNNiujGEEq98ZM0EHV80l3sD740rgZ?=
 =?us-ascii?q?CpJnENkp8MnjXbNqC9YtOv6Su9ftmMOTojg3NgXYLujCzsqhW/0O/Ba9LozU?=
 =?us-ascii?q?ptr08n2pGE/jhFn1SbsMrbFcptz1ij/Byo8Fnhu9p0fU84nIPkFMR7z7Ucmp?=
 =?us-ascii?q?syiHjRNDPOw0Gt052WWlU20fmQ0dbHf7fZvabGCZ1m1BzOFadL+IT3Saxwek?=
 =?us-ascii?q?BGF2ae0sKn6eTmpVajB6RasboswpLJvtfBIvVKoJKAUgROiIck6y+/HWyC0v?=
 =?us-ascii?q?1DwVklMAJVUguD1ZG4CkiXCaCoDtCVunKP9VUjj7iOdvWpSt3LAELqxeKyNa?=
 =?us-ascii?q?Y46lRbzhI018wa/Z9PF7Udder6QVSi7oaKJwIlMwGy3+fsAcl80YVbY2+UH6?=
 =?us-ascii?q?uFK/2N41qYoOkoJ+6WbYMS/jvxNqtt6/3viCohkEQGNemy3JQRYWylBPkuPU?=
 =?us-ascii?q?iDYHTtj9tAWWcHtwYzVqrr3XWNVDdSYzC5WKcx?=
IronPort-PHdr: =?us-ascii?q?9a23=3Ay3RPmRO3r2ozi+MjRqwl6mtUO3oLmJTReyML45?=
 =?us-ascii?q?46gq5PdaL9r8mwIhmGtr1k2UXSVMDA6/se1rSF+6u1Q2EE6IaMvDcYfZhFRx?=
 =?us-ascii?q?IJ2qB010RoSIbNQQX3efHvZi0+Ws9FUQwt5CThaRELQZ6kOg63wDX6pXZaUl?=
 =?us-ascii?q?23NV97POPwSJLV3c+8hfuv8Z/eaBkaiDOhbOF3IQ6tpArc88ga04pkb7w80h?=
 =?us-ascii?q?/Y52dPKf5by25yKFSYkg2ZhI/4tNYru2wY86Ak9stNFLv3Zb85SroKBzMgL2?=
 =?us-ascii?q?0z+Ij3rxDFVgWC/D4RVG4RnhtODFugjlmyFt+5+mOyvOoo5w/BLZSqdpEpYj?=
 =?us-ascii?q?L76J1oWgfzlQccOTUa12fMgJVopoAHpTiPuERkyIGXMNTGUZg2NuuVNZtSDW?=
 =?us-ascii?q?AUZf9KfX1YK42Hfa4zLsQ9MOt+jZmjnkYxhkOXCjP9FMbvjWdkhzirhr8B1/?=
 =?us-ascii?q?8KNz6d5VMmT/NVgkT2tNfbH+BLfPHtqcuAhX2LJ7sekX/wq7bidzMHk828TK?=
 =?us-ascii?q?lQKtKO9VcvD0TmjVPTi5T3bx+4++BRsEeCxqlsSPKCq0E1tx5xmCOKweAnzb?=
 =?us-ascii?q?bSud4L0mLh9Rt82ONXbZXwAAYzKZbsIpZAqQS+Pa14ZJ0cH041gQMK54UIq8?=
 =?us-ascii?q?Tie3IB480Mw0ODUe3cVIOxvDjcSf6cejB5gVdVKbmF2U3v7lKi99DnCtSo91?=
 =?us-ascii?q?cvzGIN2pGE/jhFn0bRtpe2Wspi/GKL/hHW5VHo2r1LLUkdqpWBcZMq7rIxt6?=
 =?us-ascii?q?Mvo27fJnTywxrEjIOGZG41wtKay/nlXa7f/KGOJdFpuib9V8Zm0oT3Saxwek?=
 =?us-ascii?q?AAWkO94tnl0eX4pwroUIoNlK0Ngqeeq5frdMInn/+yGFVU1YYa6wTkKzWPi4?=
 =?us-ascii?q?g4v2VXPHhcfEie3rnwYniecPPfJ86ZoDHO2H8jj7iOdvWpBLv3By2Ww//xOL?=
 =?us-ascii?q?dn7EhEzxAviMpS/I9QFuQZKenoCRWr5vXFEh80NRC1yO/7CdJ7k7kTQn+LHr?=
 =?us-ascii?q?THb/HXoRmD4eYoOeCAY8kYtCuuY/Qm5vu7lXYighddZqim25ILdWq1VuprOU?=
 =?us-ascii?q?SXYHfgw58BHG4GsxB4TbnCh1iLUDoVbHG3Ug=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AnOUlIxDetHbYR6WHRgPzUyQJP3V1l5bVG0s49J?=
 =?us-ascii?q?MjlrtSc6OlocS/blKKvKYlhQrTRoye8PJN0beI4OjrDHYN5Z+RvXxFapFIXg?=
 =?us-ascii?q?8IhZZz/URoSIbNQQWzIKvlaiU7GIJJU1o2t2ruaxAMRp+mPQCBxx/6pXZaUl?=
 =?us-ascii?q?23fQogKP7yH9zOiJa83LKp5pfRbg5U1ja0fb4gKRittgzeu4wXjdljLOMrxw?=
 =?us-ascii?q?PNsz5UfLZMyG1lP1+VlBvng6X4tNYru2wY87pz8s9FXODkcr4jTLteXj8hNX?=
 =?us-ascii?q?w44tGuqQPKSxCB62FZX2MdlRZJBQeWiXOyFt+5+mOy/uB9jRa8Zt2vEYsVRA?=
 =?us-ascii?q?+ktqBRSw3wkzonLDAy00bRkcYplIh5/BeLiQMn2IXbI9HAZ58cNuuVNZtSDS?=
 =?us-ascii?q?JLC/1oTAYQG6qyVJkqM8svAetViavt+WITkjDmLAaWVfPKyngQqn6xgPYo6O?=
 =?us-ascii?q?A6Oif5hzV/GYIv60bkjs33GoxVCM2klMyqhX2LJ7sekX+15cv2WBUCh8Owba?=
 =?us-ascii?q?NrUZHJlnUxFxuCrVaW6q79LWO5+8kJ72u09sMjWf+/pk4IuR1uogK048ALgc?=
 =?us-ascii?q?72nb1J1Ej20CVHxZ5QR5XwAAYzKZbsWKldpz+/E4FQTOV8fT1H5R8f+pA+t4?=
 =?us-ascii?q?zhJS9Qw79+7BqCN8aWKK+D20zJa/uJLGx/hXdASOO0vUjprFe6yNDBTZWpzH?=
 =?us-ascii?q?FLy0gN2pGE/jhFn1SJ6JTYe+tM4UWE8xGojjKC0dEYLkw9vJXkccQsyZI8l7?=
 =?us-ascii?q?sqjVbpAhetnB6pvq+6ZlcP69CS2cT6YIr9n8WiJZ0qlzHZMcFM0oT3Saxwek?=
 =?us-ascii?q?BGUW2w3/+Bjbi75he+UaV1yedmqbnX94vdFJUdmpfoCBQP04Ej0hatVBOk+Y?=
 =?us-ascii?q?9EvVsbfEJvYRbdltnYIgjncKD7Kt2GpXfJ8n8jj7iOdvWpSpPjFFGWxeSpbf?=
 =?us-ascii?q?N88Ula0A0p0ZVF6olJDq1UOPvoQRyr7o7xEwM5Pgqowu3uFNR60MYkVHmSBr?=
 =?us-ascii?q?OCbvyAtE/O7eUrJPOFaIhTtTrgeLAp5P/r2GcwgkRVPbKo0p0edG2iE7x4Ll?=
 =?us-ascii?q?+Yb3vhjpZJEWoDsgckCu2/oFKHWD9XIX21Wq8=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3A4q3q4B/6T6Gt3v9uRHKK80MuRw1ilqv9OhMc9p?=
 =?us-ascii?q?sgjeweL/a9qs2xdEWK/+5kyUTJVN+GtaEMgL/MvqTpSWEMpoyMtHkSfZAfMn?=
 =?us-ascii?q?1NwY1e10RoSMLQBkjyLfqsZCs/T4xZAQU9pi/iaRIIS6OcLxWa6jX6pXYSTx?=
 =?us-ascii?q?vlMg8nOuOnEYWAlNm91e2558/fahlF1j+weqh7IxjzrAmDt89Tm4Z6Lrd01h?=
 =?us-ascii?q?ybuHZGdv5bw2hlPjfx1160ro/4tNYroSFRvv9k6cNaSqT9efYzSrpEATI6dn?=
 =?us-ascii?q?wv7cvwuxTZCAaJ7XwQU2MZwX8qS0CNpFmyFt/7sn7FkLFtgXWhHNDNS+kzYz?=
 =?us-ascii?q?ew97x2aATmgwQgMSUzqXn9qJB1poxE+AmqqF8vlt2xAsndfLI2NuuVd4YhfH?=
 =?us-ascii?q?FrD994WRdTJ7+dQbcCAswjLbhhsrbW/3IBl0quIAnrXM/ujWITlETyxoYc7L?=
 =?us-ascii?q?8YTgeW/VcSL/AWslr/64zYJf93M6j9hOGAhX2LJ/4V5x34y676TiAwutHXRe?=
 =?us-ascii?q?1Mb8rJjmosEUDnlkfAhaHIO2+W+f0k8GSG/8dAevCzlG4dsCR2hTPo+dwT1p?=
 =?us-ascii?q?fRtKcV9FXckEcxiM59bZXwAAZJbM66Nb9akS+8abUqbZ4bZlFFgCgokOQB45?=
 =?us-ascii?q?WQJQMOlcgd1kX4YMXZWbeV+h+4U+eUBAcpj0g7I++gnRSPzFP81/HbV6zWmB?=
 =?us-ascii?q?4C5mIN2pGE7HJRiC3D29eFb9Fa2R6TiA2/iw/f48h7HhpumKH3J58A+4IivI?=
 =?us-ascii?q?Yr6kCYQR32tFXkp76uTHcE5+qX8N29XKf0+IKsEIwR6Em2euxm0oT3Seo9GS?=
 =?us-ascii?q?4VYjGeof/mk6zzwgrjEI5agLotlZiItqzjdM8A/K++AzZVwN0H6T/kUxeEzI?=
 =?us-ascii?q?QIt2ADdksUSQvepti5OHbkGdbbaJX3yxzk2H8jj7jAEIfIV8CeZmiGka3me6?=
 =?us-ascii?q?568VIZ0gco0NRDsopdEapSeqihc1LttNHeEh4yOhC1xOCiMthmy4cCQjzQUK?=
 =?us-ascii?q?qJdqjVtViS7+4oZeSAedxdtDX8Lq097uX1xT8imFAbdLW0x5Zfdn2iH/pnLk?=
 =?us-ascii?q?nYKXrhi9sMCyEL6yIxSeXrjBuJVjte?=
IronPort-PHdr: =?us-ascii?q?9a23=3AgHp+BRQiFcJhg1b0ztsiQ+/nLdpsv+ypbCI2y7?=
 =?us-ascii?q?9ipqxHdrmq45XlOhKPuKdz2QaaFYyO8elNzvHWuvq9Bz9I6sObvXQLYJFAEA?=
 =?us-ascii?q?UIjcwGkgBzZazNQQWzZLaiJyBvE8FLVVsj9Ha+YgBOTZymPgOL+ifvvltwUl?=
 =?us-ascii?q?23fUI9bqz1T4DIiMHly+fg8JaBeBhChje2feF+JQm7/wDcrdIfjoYnK6pjyx?=
 =?us-ascii?q?2MuHZQf/UT2WQ6P1+dkgzx4My95/sBu2wY87ppv4YIA6D7eql9U7FCFzUhNT?=
 =?us-ascii?q?I+48v3uB/fCBeV730HXGgM1xdOCA/J7Rf1DfKT+mOy/qI1kGGQPZjJa+skAG?=
 =?us-ascii?q?iZzrpQTkbvsiQVLyUk0HrZge9XirlR+QqLhUB66aDLOJqeO7kuK/C4H5tSDS?=
 =?us-ascii?q?IJFo4ZXXl6O5iWPpImAdETGNp5gbXwqn0svUWHGDaHXMrg8G5Yo3+xhYE7lL?=
 =?us-ascii?q?l6AzrCxycGIIk373KEjY7HBIUKU86ei/Dl3G2mDbsekX+1oMCAOh1in9uJfp?=
 =?us-ascii?q?RCTfrA0ml0D1z5kFWI7q/mOXC3zvZdn0W267ZjevuGyGI6uyxRjSqz2ccWka?=
 =?us-ascii?q?zOoYlS9Uv7qTth8qM1G9igLSwzKZbsWNMY/2moOptoZ+coZW9O5hhm5eA/nK?=
 =?us-ascii?q?6WRCYYks0gnRX0MteDLtSy80nEX9/PCwhlnH8+f7O6oibj+nL+kbDjTMuJ7U?=
 =?us-ascii?q?0WszZik7yu/jhFn1SbooDPEPkhoXax6CmN8ir0zbh2cHsEyaXXIrce/eRqm5?=
 =?us-ascii?q?E/vUXiJxPkslnO16vNKXck1vi6wPXfWIfGu52jLLYutBPsbLkevc/aY6xwek?=
 =?us-ascii?q?BGFyDTseq5/5v4wBT8GK4Qyewmre7D4KvKK4MAoZ/oBTNsg404sRe4Dw6mwo?=
 =?us-ascii?q?88n1BccHJnZEKXpZHtYUifEemhJKfvgHOGqRFIopKOdvWpSt2FZjDFvo3IKO?=
 =?us-ascii?q?Muo14ZyRA0y8hY/Y4RELwaPfbvD1f4r8eLVEVrGhGow+vhFNR2358fXmTKOK?=
 =?us-ascii?q?KCLafOqgHXtOc/ZeKLYIgPsTr6bfUp+q2mgXw4nAoFdLKyldsMaX++F+h7OU?=
 =?us-ascii?q?jRf3f2g9kAHGtL9gozReDnkhuDBBZcYn+zW+Q34TQ2?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0E2AABLGZ5dbeeAioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWcHAQELAYIaBYFCLyqMRWCFWoFqiiCKCIUogT80EQEBAQEBAQE?=
 =?us-ascii?q?BAQYBARgVAgEBAQGEPoJSIzQJDgIBAgkBAQEDAQEBAgEFAgEBAgIQDQsJBiu?=
 =?us-ascii?q?FNAyDRjswAQEBAQEBAQEBAQEBAQEBAQEBAQEVAoEBKQEBGQIBAwECDxULAQ0?=
 =?us-ascii?q?BGx0BAwIJAQEFEDsDHgIRAQUBHAcSBR2FRgEDLqN3gQM8jCUWBQEXgn4FgQS?=
 =?us-ascii?q?DOQoZJw1mgTwCBxKBIgGHNIM8gR2CF4FEgx2CGoI/hVcEjQWffUEHgiWGJop?=
 =?us-ascii?q?rhAgbgjqLQTmLDC2OAIowjwYCCgcGDyOBL4ISTSOBAYI7UBAUgU8MF4NQim9?=
 =?us-ascii?q?YgQUDO49YAQE?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0E9AAA/CJ5dh1VDioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWcHAQELAYIagUYvKoxFYIVZgWqKIIoIhSiBPzQRAQEBAQEBAQE?=
 =?us-ascii?q?BBgEBGBUCAQEBAYQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwk?=
 =?us-ascii?q?IKYU0DINGOzABAQEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQs?=
 =?us-ascii?q?BDQEbHQEDAgkBAQUQOwMeAhEBBQEcBxIFHYMAgWoBAx2jbYEDPIwlFgUBF4J?=
 =?us-ascii?q?+BYEEgzoKGScNZoE8AgcSgSIBhzSDPIEdgheBRIMdghqCP4VRBI0Fn31BB4I?=
 =?us-ascii?q?lhiaKa4QIG4I6i0E5iwwtjgCKMI8GAgoHBg8jgS+CEk0jgQGCO1AQFIFPDBe?=
 =?us-ascii?q?DUIpvWIEFAzuTIgEB?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0E8AADjBZ5dfU1DioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWcHAQELAYIagUYvKoxFYIVZgWqKIIoIhSiBPzQRAQEBAQEBAQE?=
 =?us-ascii?q?BBgEBGBUCAQEBAYQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQsUCIV?=
 =?us-ascii?q?dDINGOzABAQEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQsBDQE?=
 =?us-ascii?q?bHQEDAgkBAQUQOwMeAhEBBQEcBxIFHYRqAQMdo3GBAzyMJRYFAReCfgWBBIM?=
 =?us-ascii?q?6ChknDWaBPAIHEg6BFAGHNIM8gR2CF4FEgx2CGoI/hVEEjQWffUEHgiWGJop?=
 =?us-ascii?q?rhAgbgjqLQTmLDC2OAIowjwYCCgcGDyOBL4ISTSOBAYI7UBAUgU8MF4NQim9?=
 =?us-ascii?q?YgQUDO5MiAQE?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0E8AADU/p1dfU1DioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWcHAQELAYIagUYvKoxFYIVZgWqKIIoIhSiBPzQRAQEBAQEBAQE?=
 =?us-ascii?q?BBgEBGBUCAQEBAYQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQsUCIV?=
 =?us-ascii?q?dDINGOzABAQEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQsBDQE?=
 =?us-ascii?q?bHQEDAgkBAQUQOwMeAhEBBQEcBxIFHYRqAQMdo2SBAzyMJRYFAReCfgWBBIM?=
 =?us-ascii?q?6ChknDWaBPAIHEg6BFAGHNIM8gR2CF4FEgx2CGoI/hVEEjQWffUEHgiWGJop?=
 =?us-ascii?q?rhAgbgjqLQTmLDC2OAIowjwYCCgcGDyOBL4ISTSOBAYI7UBAUgU8MF4NQim9?=
 =?us-ascii?q?YgQUDO5MiAQE?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0E9AADU/p1dh+iAioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWcHAQELAYIagUYvKoxFYIVZgWqKIIoIhSiBPzQRAQEBAQEBAQE?=
 =?us-ascii?q?BBgEBGBUCAQEBAYQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwk?=
 =?us-ascii?q?IKYU0DINGOzABAQEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQs?=
 =?us-ascii?q?BDQEbHQEDAgkBAQUQOwMeAhEBBQEcBxIFHYMAgWoBAx2jZIEDPIwlFgUBF4J?=
 =?us-ascii?q?+BYEEgzoKGScNZoE8AgcSgSIBhzSDPIEdgheBRIMdghqCP4VRBI0Fn31BB4I?=
 =?us-ascii?q?lhiaKa4QIG4I6i0E5iwwtjgCKMI8GAgoHBg8jgS+CEk0jgQGCO1AQFIFPDBe?=
 =?us-ascii?q?DUIpvWIEFAzuTIgEB?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0EiAAC/951dh0O0hNFlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWcHAQELAYIagUQxKoxFYIVagWo5iWeKCIUogT80EQEBAQEBAQE?=
 =?us-ascii?q?BAQYBARgUAQIBAQEBhD6CUiM0CQ4CAQIJAQEBAwEBAQIBBQIBAQICEAEBAQo?=
 =?us-ascii?q?LCQgphTQMg0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQItVCkBARkCAQMBAg8?=
 =?us-ascii?q?VCwENARsdAQMCCQEBBRA7Ax4CEQEFARwHEgUdgwCBagEDHaNRgQM8jCUWBQE?=
 =?us-ascii?q?Xgn4FgQSDPAoZJw1mgTwCBxKBIgGHNIM8gR2CF4FEgx2CGoI/hVEEjQWffUE?=
 =?us-ascii?q?HgiWGJoprhAgbgjqLQTmLDC2OAIowjwYCCgcGDyOBL4ISTSOBAYI7UBAUgU8?=
 =?us-ascii?q?MF4NQim8mMoEFAQEBO5MiAQE?=
X-IPAS-Result: =?us-ascii?q?A0E2AABLGZ5dbeeAioBlHAEBAQEBBwEBEQEEBAEBgWcHA?=
 =?us-ascii?q?QELAYIaBYFCLyqMRWCFWoFqiiCKCIUogT80EQEBAQEBAQEBAQYBARgVAgEBA?=
 =?us-ascii?q?QGEPoJSIzQJDgIBAgkBAQEDAQEBAgEFAgEBAgIQDQsJBiuFNAyDRjswAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEVAoEBKQEBGQIBAwECDxULAQ0BGx0BAwIJAQEFE?=
 =?us-ascii?q?DsDHgIRAQUBHAcSBR2FRgEDLqN3gQM8jCUWBQEXgn4FgQSDOQoZJw1mgTwCB?=
 =?us-ascii?q?xKBIgGHNIM8gR2CF4FEgx2CGoI/hVcEjQWffUEHgiWGJoprhAgbgjqLQTmLD?=
 =?us-ascii?q?C2OAIowjwYCCgcGDyOBL4ISTSOBAYI7UBAUgU8MF4NQim9YgQUDO49YAQE?=
X-IPAS-Result: =?us-ascii?q?A0E9AAA/CJ5dh1VDioBlHAEBAQEBBwEBEQEEBAEBgWcHA?=
 =?us-ascii?q?QELAYIagUYvKoxFYIVZgWqKIIoIhSiBPzQRAQEBAQEBAQEBBgEBGBUCAQEBA?=
 =?us-ascii?q?YQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwkIKYU0DINGOzABA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQsBDQEbHQEDAgkBA?=
 =?us-ascii?q?QUQOwMeAhEBBQEcBxIFHYMAgWoBAx2jbYEDPIwlFgUBF4J+BYEEgzoKGScNZ?=
 =?us-ascii?q?oE8AgcSgSIBhzSDPIEdgheBRIMdghqCP4VRBI0Fn31BB4IlhiaKa4QIG4I6i?=
 =?us-ascii?q?0E5iwwtjgCKMI8GAgoHBg8jgS+CEk0jgQGCO1AQFIFPDBeDUIpvWIEFAzuTI?=
 =?us-ascii?q?gEB?=
X-IPAS-Result: =?us-ascii?q?A0E8AADjBZ5dfU1DioBlHAEBAQEBBwEBEQEEBAEBgWcHA?=
 =?us-ascii?q?QELAYIagUYvKoxFYIVZgWqKIIoIhSiBPzQRAQEBAQEBAQEBBgEBGBUCAQEBA?=
 =?us-ascii?q?YQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQsUCIVdDINGOzABAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQsBDQEbHQEDAgkBAQUQO?=
 =?us-ascii?q?wMeAhEBBQEcBxIFHYRqAQMdo3GBAzyMJRYFAReCfgWBBIM6ChknDWaBPAIHE?=
 =?us-ascii?q?g6BFAGHNIM8gR2CF4FEgx2CGoI/hVEEjQWffUEHgiWGJoprhAgbgjqLQTmLD?=
 =?us-ascii?q?C2OAIowjwYCCgcGDyOBL4ISTSOBAYI7UBAUgU8MF4NQim9YgQUDO5MiAQE?=
X-IPAS-Result: =?us-ascii?q?A0E8AADU/p1dfU1DioBlHAEBAQEBBwEBEQEEBAEBgWcHA?=
 =?us-ascii?q?QELAYIagUYvKoxFYIVZgWqKIIoIhSiBPzQRAQEBAQEBAQEBBgEBGBUCAQEBA?=
 =?us-ascii?q?YQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQsUCIVdDINGOzABAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQsBDQEbHQEDAgkBAQUQO?=
 =?us-ascii?q?wMeAhEBBQEcBxIFHYRqAQMdo2SBAzyMJRYFAReCfgWBBIM6ChknDWaBPAIHE?=
 =?us-ascii?q?g6BFAGHNIM8gR2CF4FEgx2CGoI/hVEEjQWffUEHgiWGJoprhAgbgjqLQTmLD?=
 =?us-ascii?q?C2OAIowjwYCCgcGDyOBL4ISTSOBAYI7UBAUgU8MF4NQim9YgQUDO5MiAQE?=
X-IPAS-Result: =?us-ascii?q?A0E9AADU/p1dh+iAioBlHAEBAQEBBwEBEQEEBAEBgWcHA?=
 =?us-ascii?q?QELAYIagUYvKoxFYIVZgWqKIIoIhSiBPzQRAQEBAQEBAQEBBgEBGBUCAQEBA?=
 =?us-ascii?q?YQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwkIKYU0DINGOzABA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQsBDQEbHQEDAgkBA?=
 =?us-ascii?q?QUQOwMeAhEBBQEcBxIFHYMAgWoBAx2jZIEDPIwlFgUBF4J+BYEEgzoKGScNZ?=
 =?us-ascii?q?oE8AgcSgSIBhzSDPIEdgheBRIMdghqCP4VRBI0Fn31BB4IlhiaKa4QIG4I6i?=
 =?us-ascii?q?0E5iwwtjgCKMI8GAgoHBg8jgS+CEk0jgQGCO1AQFIFPDBeDUIpvWIEFAzuTI?=
 =?us-ascii?q?gEB?=
X-IPAS-Result: =?us-ascii?q?A0EiAAC/951dh0O0hNFlHAEBAQEBBwEBEQEEBAEBgWcHA?=
 =?us-ascii?q?QELAYIagUQxKoxFYIVagWo5iWeKCIUogT80EQEBAQEBAQEBAQYBARgUAQIBA?=
 =?us-ascii?q?QEBhD6CUiM0CQ4CAQIJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQgphTQMg0Y7M?=
 =?us-ascii?q?AEBAQEBAQEBAQEBAQEBAQEBAQEBFQItVCkBARkCAQMBAg8VCwENARsdAQMCC?=
 =?us-ascii?q?QEBBRA7Ax4CEQEFARwHEgUdgwCBagEDHaNRgQM8jCUWBQEXgn4FgQSDPAoZJ?=
 =?us-ascii?q?w1mgTwCBxKBIgGHNIM8gR2CF4FEgx2CGoI/hVEEjQWffUEHgiWGJoprhAgbg?=
 =?us-ascii?q?jqLQTmLDC2OAIowjwYCCgcGDyOBL4ISTSOBAYI7UBAUgU8MF4NQim8mMoEFA?=
 =?us-ascii?q?QEBO5MiAQE?=
X-IronPort-AV: E=Sophos; i="5.67,277,1566885600"; d="scan'208"; a="369367838"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="414289876"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="371272301"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="371231775"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="371212219"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="413814309"
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
X-Original-Recipients: migi9492@g.colorado.edu
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=1e100.net;
 s=20161025; 
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to        
 :references:mime-version:content-transfer-encoding;       
 bh=WN3x14SIuSn1oRkzpsuHsfcKOnsb1pBJ4mBFw0scg+8=;       
 b=DzVrGaD+WcXLpmo935C7KC3Z2RnCc+nCCx5WsUUe7571Yc1x8qlwSUdldsnfBs7zEb        
 W+888gqzZaxcZiqaPKoU9331FjxUyrHEj5vn/gnHN2bWDT6Jrt6Tx9x/PEGFV77heWI6        
 sV8VbYPq8oTM488s+ywV8LJpQGpwZo+wxpiojE5r4Mb3gvHwrrLQtT1e8DaBIbeHthLX        
 VSLnNEcUSdCySeHnS8Ar9QAMK7WWWYX/dPlbdAdu4AWjlxgGFamVh7MIRckZbHTnbAe3        
 +AWZd8UjmljEaaB4KiTcoKU7uQ8nKQojURtgS9aROXfX3tw7BQTaBp7gj4Y1mmhBkLSg        
 PX9g==
X-Gm-Message-State: APjAAAXVJpOMy+RRea2RsRy7ZSeyITT6GwSOmm9/4DwbLPqf3Brp87vr 
 yHRaevFrVsBdYKHmEZ80AJGiWgrK
X-Google-Smtp-Source: APXvYqwIAu5QbYEEisBKI94F1WZwyBnGqhMbK0pEDYPxXJB2GRGzgbP7XYhsVXACQfO53dakUGfisA==
X-Received: by 2002:a5b:4cd:: with SMTP id u13mr2444876ybp.44.1570634864433;
 Wed, 09 Oct 2019 08:27:44 -0700 (PDT)
From: "William Breathitt Gray" <vilhelm.gray@gmail.com>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>
Subject: [PATCH v17 07/14] gpio: pci-idio-16: Utilize for_each_set_clump8 macro
Date: Wed,  9 Oct 2019 11:27:05 -0400
Message-Id: b30f131b4634caf5a70f12e01496f71631a17305.1570633189.git.vilhelm.gray@gmail.com
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570633189.git.vilhelm.gray@gmail.com>
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
X-MS-Exchange-Organization-ExpirationStartTime: 09 Oct 2019 17:58:11.6244 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: 1d0ed956-2487-482d-83e6-08d74ce23fff
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-Forefront-Antispam-Report: CIP:128.138.67.74; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:SKN; SFS:; DIR:INB; SFP:; SCL:-1; SRVR:MN2PR03MB4653; H:ipmx3.colorado.edu;
 FPR:; SPF:None; LANG:en; ; SKIP:1; 
X-MS-Exchange-Organization-AuthSource: BY2NAM01FT023.eop-nam01.prod.protection.outlook.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-OriginatorOrg: colorado.edu
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1d0ed956-2487-482d-83e6-08d74ce23fff
X-MS-TrafficTypeDiagnostic: MN2PR03MB4653:|MN2PR03MB4653:
X-MS-Exchange-Organization-SCL: -1
X-MS-Oob-TLC-OOBClassifiers: OLM:3173;
X-Microsoft-Antispam: BCL:0;
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2019 17:58:11.3556 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d0ed956-2487-482d-83e6-08d74ce23fff
X-MS-Exchange-CrossTenant-Id: 3ded8b1b-070d-4629-82e4-c0b019f46057
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3ded8b1b-070d-4629-82e4-c0b019f46057; Ip=[128.138.67.74];
 Helo=[ipmx3.colorado.edu]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR03MB4653
X-MS-Exchange-Transport-EndToEndLatency: 00:48:41.3209896
X-MS-Exchange-Processed-By-BccFoldering: 15.20.2347.014
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; ex:0; auth:0; dest:I;
 ENG:(750127)(520002050)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?OeKBjfdgFC5ka3ynt7X8a57Kmlk5er9oPyphAFtrYqtlPQYPGD+VFVI8mE3h?=
 =?us-ascii?Q?RB82E8QIPrf5xjbmFesQup0bDKBhj3iwaQ4994wjbve8bgabZwMQHDYtemxx?=
 =?us-ascii?Q?z3nmw7xCaicprtdON/ahmunDn93sNR8ZU5Hkpgu6YjTiDwgdeqk4t4BYsQvT?=
 =?us-ascii?Q?zZkYA6z7kSVxwpJ+bd2xg6GaCKtxAGGv5CzaNsPshPTsmiy6IrGtXgFj6oXp?=
 =?us-ascii?Q?ZAWHkVt0LL4kNe54dkNPju+pU7EoSmBozajRPrna/rMTZ3a+A8tEcOjdBKkN?=
 =?us-ascii?Q?MKAJP4pFFezQUjwW/EK+bNeNPdTlQKdvBnEyQIPC7jlj3uR7gu7krjG2Xrjk?=
 =?us-ascii?Q?ybVWHonPI066Zew4hyrckEGNemzoFwaRWOi3eFt4yi7fi7A3/4LeCGyxY48e?=
 =?us-ascii?Q?IaXWkqB4iucBtZn18aJ2l6gLDcklzEcwaDetCIxFw8KpBIIlwSWgHHraO6Cv?=
 =?us-ascii?Q?ahCdG181Xku4CaoDuVmwBh0u7XijeASOtxbklCEi4dq0Taf+hf5ayjw8Zrke?=
 =?us-ascii?Q?d8UbWVWUz8lZtP/eJzJbBIQLskuY31adG9zYbSRAjE1PFayH59PjJEmQOC87?=
 =?us-ascii?Q?khm8lZMDSGQXMdskj4U7g0B9J+zvn/0Xlpv9Vb/DEDIoI4CbhLJpv1PISbKl?=
 =?us-ascii?Q?9tbycesKTnu5vTOh2sGDlzqXSdrOwDPLzrQgF2Pt9xjfE42sqzSLBQswM//g?=
 =?us-ascii?Q?qlZQw/7MSyFfEB7ajnYiQ5ZWV0fBhCnVfKsAo/Pj9mHKV6OBPJhR0MGpNUjF?=
 =?us-ascii?Q?ihtNUI3J/kYz6tk6F6IElK9lIJQM++KGeF3H6ZjJfGXsA7yv7qB49hvcZO87?=
 =?us-ascii?Q?mAC1r0Y5V8l+5TmO4bGw+jQWEz3EiiRXZBhXpy2W6aGtRNeE65U9ZKPBbPM1?=
 =?us-ascii?Q?pDAJKeC53w8Ew3Zwy/ZjLeP6bcP55JbygGDGnXnDaO1fjH/BPI5Hu6E5FC1r?=
 =?us-ascii?Q?Hn8GcPZavfjoaIS8Nq1JRpwnkQVDKFKLdyNnvbkkvPYFtLOFyVexA+eAyltn?=
 =?us-ascii?Q?Y/eNtK5ArsUrLaPBqkVeB1Ai+i1X+Dl+/dbvoJ/tyZNV7sVQyzQPb1IJ23ii?=
 =?us-ascii?Q?6sXEXI4U2VcstdTwWDA/5/FEvFr9/bOyestngXl+R8QKqBugBr6oKn3PP7/Q?=
 =?us-ascii?Q?nhhfsf2z/Mj8mQ6dF1mQYH6DTX75WLbArEFhORkScYeye1dxytfxZiUdb07v?=
 =?us-ascii?Q?EJbL+loIHQ0apIXG?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_174021_022816_944C1F80 
X-CRM114-Status: UNSURE (   5.42  )
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

Replace verbose implementation in get_multiple/set_multiple callbacks
with for_each_set_clump8 macro to simplify code and improve clarity.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/gpio/gpio-pci-idio-16.c | 75 ++++++++++++---------------------
 1 file changed, 27 insertions(+), 48 deletions(-)

diff --git a/drivers/gpio/gpio-pci-idio-16.c b/drivers/gpio/gpio-pci-idio-16.c
index 5aa136a6a3e0..6c117e57078c 100644
--- a/drivers/gpio/gpio-pci-idio-16.c
+++ b/drivers/gpio/gpio-pci-idio-16.c
@@ -100,45 +100,23 @@ static int idio_16_gpio_get_multiple(struct gpio_chip *chip,
 	unsigned long *mask, unsigned long *bits)
 {
 	struct idio_16_gpio *const idio16gpio = gpiochip_get_data(chip);
-	size_t i;
-	const unsigned int gpio_reg_size = 8;
-	unsigned int bits_offset;
-	size_t word_index;
-	unsigned int word_offset;
-	unsigned long word_mask;
-	const unsigned long port_mask = GENMASK(gpio_reg_size - 1, 0);
-	unsigned long port_state;
+	unsigned long offset;
+	unsigned long gpio_mask;
 	void __iomem *ports[] = {
 		&idio16gpio->reg->out0_7, &idio16gpio->reg->out8_15,
 		&idio16gpio->reg->in0_7, &idio16gpio->reg->in8_15,
 	};
+	void __iomem *port_addr;
+	unsigned long port_state;
 
 	/* clear bits array to a clean slate */
 	bitmap_zero(bits, chip->ngpio);
 
-	/* get bits are evaluated a gpio port register at a time */
-	for (i = 0; i < ARRAY_SIZE(ports); i++) {
-		/* gpio offset in bits array */
-		bits_offset = i * gpio_reg_size;
-
-		/* word index for bits array */
-		word_index = BIT_WORD(bits_offset);
-
-		/* gpio offset within current word of bits array */
-		word_offset = bits_offset % BITS_PER_LONG;
-
-		/* mask of get bits for current gpio within current word */
-		word_mask = mask[word_index] & (port_mask << word_offset);
-		if (!word_mask) {
-			/* no get bits in this port so skip to next one */
-			continue;
-		}
+	for_each_set_clump8(offset, gpio_mask, mask, ARRAY_SIZE(ports) * 8) {
+		port_addr = ports[offset / 8];
+		port_state = ioread8(port_addr) & gpio_mask;
 
-		/* read bits from current gpio port */
-		port_state = ioread8(ports[i]);
-
-		/* store acquired bits at respective bits array offset */
-		bits[word_index] |= (port_state << word_offset) & word_mask;
+		bitmap_set_value8(bits, port_state, offset);
 	}
 
 	return 0;
@@ -178,30 +156,31 @@ static void idio_16_gpio_set_multiple(struct gpio_chip *chip,
 	unsigned long *mask, unsigned long *bits)
 {
 	struct idio_16_gpio *const idio16gpio = gpiochip_get_data(chip);
+	unsigned long offset;
+	unsigned long gpio_mask;
+	void __iomem *ports[] = {
+		&idio16gpio->reg->out0_7, &idio16gpio->reg->out8_15,
+	};
+	size_t index;
+	void __iomem *port_addr;
+	unsigned long bitmask;
 	unsigned long flags;
-	unsigned int out_state;
+	unsigned long out_state;
 
-	raw_spin_lock_irqsave(&idio16gpio->lock, flags);
+	for_each_set_clump8(offset, gpio_mask, mask, ARRAY_SIZE(ports) * 8) {
+		index = offset / 8;
+		port_addr = ports[index];
 
-	/* process output lines 0-7 */
-	if (*mask & 0xFF) {
-		out_state = ioread8(&idio16gpio->reg->out0_7) & ~*mask;
-		out_state |= *mask & *bits;
-		iowrite8(out_state, &idio16gpio->reg->out0_7);
-	}
+		bitmask = bitmap_get_value8(bits, offset) & gpio_mask;
+
+		raw_spin_lock_irqsave(&idio16gpio->lock, flags);
 
-	/* shift to next output line word */
-	*mask >>= 8;
+		out_state = ioread8(port_addr) & ~gpio_mask;
+		out_state |= bitmask;
+		iowrite8(out_state, port_addr);
 
-	/* process output lines 8-15 */
-	if (*mask & 0xFF) {
-		*bits >>= 8;
-		out_state = ioread8(&idio16gpio->reg->out8_15) & ~*mask;
-		out_state |= *mask & *bits;
-		iowrite8(out_state, &idio16gpio->reg->out8_15);
+		raw_spin_unlock_irqrestore(&idio16gpio->lock, flags);
 	}
-
-	raw_spin_unlock_irqrestore(&idio16gpio->lock, flags);
 }
 
 static void idio_16_irq_ack(struct irq_data *data)
-- 
2.23.0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
