Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D59AFD5458
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 06:36:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3qkMq3JqOOjg1nWRxDQANJEtExfE8mNRTdfq8WGjB+g=; b=bRDT5X/K3QdAId
	Wr+v7ICg1xIgtIsyxFyDGx1PPzslRbgQrdZX5aha0prjJEfPTt+UdMabqHvhycMVmgICVnaeFD66V
	h39K49dShg/wkbl7+xv7s1hImSi9QtGuhFOYRDnpEiTq0dsGKgzsZhjVHfRIx4BVsdPDsYaQHxAnA
	uSRu4O4G+tks/JjeR6sbE7ce/1m3AvpxFWm417p2QaVf+0ZrlplgUBZDW3D0rKn5aA4DwstdPAC35
	88K3NF6kN2tAVdnWIa/NF3V0e4S1XWYB0Lx7CYb1nt20yq1T5iWdk3YLfEVqnl+Hu6bYoljZIHY7p
	20TfGni6qu1qRZVrM9kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJVbg-0005HU-Rt; Sun, 13 Oct 2019 04:35:48 +0000
Received: from listssympa-test.colorado.edu ([128.138.129.156])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJVbY-0005HB-Az
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 04:35:42 +0000
Received: from listssympa-test.colorado.edu (localhost [127.0.0.1])
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/sympa) with ESMTPS id
 x9D4ZN8N015916
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 12 Oct 2019 22:35:24 -0600
Received: (from root@localhost)
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/submit) id
 x9D4ZMMm015876; Sat, 12 Oct 2019 22:35:22 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025; 
 h=from:to:cc:subject:date:message-id:in-reply-to:references 
 :mime-version:content-transfer-encoding;       
 bh=qFx5e6sekWj4cSXabcHlK2m6teGcz5rYDUsYdjC+rrw=;       
 b=bTW6/4MVkGnys+h/1M9PGSH3rq2UOTzR9XpLFnA+nppipffdZktdKJF4bovmw7p1rJ        
 zd6SSZKjL1MbUVeRkGOUx4WykBUUfIaDK8E06cLtt4fTpsI8uGDgmXlO1utF7iTXatLi        
 Sq8oQC6fb/mo26oyi0+S6vlsPiuWRj70L6jCxjMrI0RjNez4O7z7Q/kqVZoqNUg7a03m        
 dcPDXI+fTxHcxbsWDOhv6IGdo2r7xtkdpPG0l7FbcMOrdGdU3bbtdCKyHjXh3a1qkg77        
 wi8vmRM15GZAUIg/BmrgUm4/3J5hSfthYm/saBWqjQGTsryy7LMtEv5NPNxCU0lgZMzU        
 +V3Q==
Received: from BN8PR03MB4691.namprd03.prod.outlook.com (2603:10b6:a03:60::30)
 by BYAPR03MB4376.namprd03.prod.outlook.com with HTTPS via
 BYAPR07CA0053.NAMPRD07.PROD.OUTLOOK.COM; Wed, 9 Oct 2019 23:57:31 +0000
Received: from DM6PR03CA0041.namprd03.prod.outlook.com (2603:10b6:5:100::18) by
 BN8PR03MB4691.namprd03.prod.outlook.com (2603:10b6:408:9e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16; Wed, 9 Oct
 2019 17:59:52 +0000
Received: from BY2NAM01FT015.eop-nam01.prod.protection.outlook.com
 (2a01:111:f400:7e42::202) by DM6PR03CA0041.outlook.office365.com
 (2603:10b6:5:100::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Wed, 9 Oct 2019 17:59:52 +0000
Received: from ipmx1.colorado.edu (128.138.128.231) by
 BY2NAM01FT015.mail.protection.outlook.com (10.152.69.203) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384)
 id 15.20.2347.16 via Frontend Transport; Wed, 9 Oct 2019 17:59:52 +0000
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 11:08:02 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 10:31:24 -0600
Received: from ipmx3.colorado.edu ([128.138.67.74])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 10:07:49 -0600
Received: from ipmx7.colorado.edu ([128.138.128.233]) by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 09:54:24 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:44:37 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:36:58 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:31:49 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:29:24 -0600
Received: from vger.kernel.org ([209.132.180.67]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:27:38 -0600
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand id
 S1731717AbfJIP1h (ORCPT <rfc822; michael.gilroy@colorado.edu>);
 Wed, 9 Oct 2019 11:27:37 -0400
Received: from mail-yw1-f65.google.com ([209.85.161.65]:41553 "EHLO       
 mail-yw1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org       
 with ESMTP id S1731173AbfJIP1e (ORCPT       
 <rfc822; linux-kernel@vger.kernel.org>); Wed, 9 Oct 2019 11:27:34 -0400
Received: by mail-yw1-f65.google.com with SMTP id 129so955895ywb.8; Wed, 09 Oct
 2019 08:27:33 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])        by smtp.gmail.com with ESMTPSA id
 g40sm611863ywk.14.2019.10.09.08.27.30        (version=TLS1_3
 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);        Wed, 09 Oct 2019
 08:27:32 -0700 (PDT)
Authentication-Results: spf=none (sender IP is 128.138.128.231)
 smtp.mailfrom=vger.kernel.org; 
 o365.colorado.edu; dkim=pass (signature was verified)
 header.d=gmail.com;o365.colorado.edu; dmarc=pass action=none
 header.from=gmail.com;
Received-SPF: None (protection.outlook.com: vger.kernel.org does not designate
 permitted sender hosts)
IronPort-SDR: 86zB1y4Ap1syBiYoEUy5uwJ6a0rGFVRAKGIzBPsYSjlzLKVY61eceMwDCTRlRm8cWKqs5jd1ep
 u4NSo2TBkc4aGLZbwv08IHcutaknjAzis=
IronPort-SDR: ozOSSsFbxeOJXV+QAvIGbHDbZWs/88mP69JKspZS/MqhPH2q372sbu/PovrKdCTBUT9MMS2gim
 867obmFUJs0LOIZwH3s2RlFgNe7jT/YwQ=
IronPort-SDR: 52915DuZqbSO9sIFcU2Wr1nkeqTtwOEmy5ZsUWBfDWziU7TUnpf/Nr7QCP22P2klmKvWT83e4s
 pGV7U8xtA6OGxemeyk7DXcWcbBZ5lwALo=
IronPort-SDR: LPA6d2NC3tszablleoP6gYrhuDIqp/6cLBaN9dceYuJrrG/RMKlHs/qGy9mrWYEGcZNmiUmQFO
 jv9Mu0++vuz7YFdfbaKkH0FL+Ebeh4SgE=
IronPort-SDR: k/8cgjplPHscVT0GxVaobyV3i0RR191vIdS0L2wjw54ecRBnalTG7Yj1tqjkwQg01DAr20YNXO
 Kbi+do/IyZtwLCl/5seaVdD1CAeTcQe7g=
IronPort-SDR: DqAfFx3LP4IOYvkR/35BQciVE/hgat46VWJp7SO9uWoAEZOZdezphOQ5jE8/YwLHecDvbfJlOX
 LntiocWsAc3yh+8vgtYN99V+7MZoPGQD4=
IronPort-SDR: J+HY47OxNq8nXImM4JFfrBAWt03JQRWzaSfw7j9qByfq9r8Uq7eP3WSoi4xz4mz5OXolRiSTDe
 SPu78CpKGS0eGuZpJRP8uiREwgvUfLnkM=
IronPort-SDR: lSAhjIYJE/DFHdGL1cL5TJIBTGv0MOIhlFBym9W41T15S2GrZb2fXdufIy9DSOFlfT7mnpTXMP
 rTLL8qx5D+pI6XLsKiTCVckNDTQCFGpg0=
IronPort-SDR: MoVXJKWbi6b5Fy7NKH9ljp/z50Ohc8VeLojofR6DIkuUDTxfjCkT14b78ToPtC7vmGiMZ6rmKo
 cWU5MJn0VATAJlOWIv3YXojpqj4C/OX24=
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
Authentication-Results-Original: mx.colorado.edu;
 dkim=pass (signature verified)
 header.i=@gmail.com
IronPort-PHdr: =?us-ascii?q?9a23=3AeQ2s7BfdImu5lnKxp8u07XHalGMj4uimEi00z9?=
 =?us-ascii?q?8KlbtKb62//pPkYhyCt+s41QyBVNDB8PsBkOrf6f2+CiQLtIyMtHkSfZALTR?=
 =?us-ascii?q?IBgNUbk19FYobNQQWzZLaiY3k1Gc1DUBlu+HToeVMAQp6nOQSK+CDhiFxaUl?=
 =?us-ascii?q?23fUI9buSgFJTVipar0LK58M/Ifg9KiTGhM797MBjkqAjKrcAZjM5jJvQwzF?=
 =?us-ascii?q?7Tr2NMaqFKwjFyKFyehRv67cqrmfwru2wY87ppv4YSVKT/cuEmQKZDDTMgYW?=
 =?us-ascii?q?sy4tHmswWGURGG4GASX39TnxxDBATE6h6pO/W5+mOy/qI1kCOaaNTYXe05By?=
 =?us-ascii?q?+v7JhpFBTTuC4NPB490zvS1NB9o6lJ/QiQiyFk8oLWS8KPLuUrLca/NZtSDS?=
 =?us-ascii?q?IJFo5bAiZ9Pd37M64xDMUHLP0br86kggo2giCeXhO1Xt7I9i1y10/u+YM8+q?=
 =?us-ascii?q?cnCRnHxAIuE+ANrHj3jvupPqAMVP/q1PDS71ChJ7sekX+1oMCAYBx/msq+fr?=
 =?us-ascii?q?BUKO/b9HciLQDqqWiA9bP0PBmo6+osukS4v8c4C+mLl3J7pT1puRn/2+gAhY?=
 =?us-ascii?q?z5gqVM10zqqiRF8I8pAdzdKgYzKZbsWNMY/xqDZ4xPaZ0sSSZtv3xkzawH4d?=
 =?us-ascii?q?2AIjYO06wm2iHlaaPfV9aKyQLhcfyweQ16on93JJXglUmLtku59N/7T++J3w?=
 =?us-ascii?q?lD9nFA97uE/jhFn1SbooCLQcNRzmbi1wqf9wvD4Pp7DWc0i/T6BJImmKRvho?=
 =?us-ascii?q?YQvVz7MXfyx2v8h4qxbEkL9tXz4e77bp7Ft7+eB48vg1jnMatxxandSaxwek?=
 =?us-ascii?q?BGFyDT5uXsyrjZ2BSkb4djs9w51YPcqp/nIJhc/YzkAzRbzoYS7lGkBh2Zyd?=
 =?us-ascii?q?YhskUcNkNUJzaik6X3Znf2BuDTMK+7jGaJggoOpbiOdvWpSt2FZjv9y460KO?=
 =?us-ascii?q?U1+wtd0g011ddF+9dOB6ocJO6mQkbqr4+CVE0QLhC0zuD7Cd50yoIZXye1D7?=
 =?us-ascii?q?SENL/J7wDa4/JpKO6IY5UctDG7JvQ4tLbijn48zEcUZrLhnYAWZ3axAul8Lg?=
 =?us-ascii?q?2HbGDtjNYMHSZCvgc3QOHwzlzXeTFWbne2Gak74zw=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3ADz5CVRc3kO6hWAqWSa1SaH8slGMj4uimEi00z9?=
 =?us-ascii?q?8KlbtKb62//pPkYhyCt+s41QyBVNDB8PsBkOrf6f2+CiQLtIyMtHkSfZALTR?=
 =?us-ascii?q?IBgNUbk19FYobNQQWzZLaiY3k1Gc1DUBlu+HToeVMAQp6nOQSK+CDhiFxaUl?=
 =?us-ascii?q?23fUI9buSgFJTVipar0LK58M/Ifg9KiTGhM797MBjkqAjKrcAZjM5jJvQwzF?=
 =?us-ascii?q?7Tr2NMaqFKwjFyKFyehRv67cqrmfwru2wY87ppv4YSVKT/cuEmQKZDDTMgYW?=
 =?us-ascii?q?sy4tHmswWGURGG4GASX39TnxxDBATE6h6pO/W5+mOy/qI1kCOaaNTYXe05By?=
 =?us-ascii?q?+v7JhpFBTTuC4NPB490zvS1NB9o6lJ/QiQiyFk8oLWS8KPLuUrLca/NZtSDS?=
 =?us-ascii?q?IJFo5bAiZ9Pd37M64xDMUHLP0br86kggo2giCeXhO1Xt7I9i1y10/u+YM8+q?=
 =?us-ascii?q?cnCRnHxAIuE+ANrHj3jvupPqAMVP/q1PDS71ChJ7sekX+1oMCAYBx/msq+fr?=
 =?us-ascii?q?BUKO/b9HciLQDqqWiA9bP0PBmo6+osukS4v8c4C+mLl3J7pT1puRn/2+gAhY?=
 =?us-ascii?q?z5gqVM10zqqiRF8I8pAdzdKgYzKZbsWNMY/xqDZ4xPaZ0sSSZtv3xkzawH4d?=
 =?us-ascii?q?2AIjYO06wm2iHlaaPfV9aKyQLhcfyweQ16on93JJXglUmLtku59N/7T++J3w?=
 =?us-ascii?q?lD9nFA97uE/jhFn1SbooCLQcNRzmbi1wqf9wvD4Pp7DWc0i/T6BJImmKRvho?=
 =?us-ascii?q?YQvVz7MXfyx2v8h4qxbEkL9tXz4e77bp7Ft7+eB48vg1jnMatxxandSaxwek?=
 =?us-ascii?q?BGFyDT5uXsyrjZ2BSkb4djs9w51YPcqp/nIJhc/YzkAzRbzoYS7lGkBh2Zyd?=
 =?us-ascii?q?YhskUcNkNUJzaik6X3Znf2BuDTMK+7jGaJggoOpbiOdvWpSt2FZjv9y460KO?=
 =?us-ascii?q?U1+wtd0g011ddF+9dOB6ocJO6mQkbqr4+CVE0QLhC0zuD7Cd50yoIZXye1D7?=
 =?us-ascii?q?SENL/J7wDa4/JpKO6IY5UctDG7JvQ4tLbijn48zEcUZrLhnYAWZ3axAul8Lg?=
 =?us-ascii?q?2HbGDtjNYMHSZCvgc3QOHwzlzXeTFWbne2Gak74zw=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AQwHtdhc5ADraKk+a0tHJ0l1WlGMj4uimEi00z9?=
 =?us-ascii?q?8KlbtKb62//pPkYhyCt+s41QyBVNDB8PsBkOrf6f2+CiQLtIyMtHkSfZALTR?=
 =?us-ascii?q?IBgNUbk19FYobNQQWzZLaiY3k1Gc1DUBlu+HToeVMAQp6nOQSK+CDhiFxaUl?=
 =?us-ascii?q?23fUI9buSgFJTVipar0LK58M/Ifg9KiTGhM797MBjkqAjKrcAZjM5jJvQwzF?=
 =?us-ascii?q?7Tr2NMaqFKwjFyKFyehRv67cqrmfwru2wY87ppv4YSVKT/cuEmQKZDDTMgYW?=
 =?us-ascii?q?sy4tHmswWGURGG4GASX39TnxxDBATE6h6pO/W5+mOy/qI1kCOaaNTYXe05By?=
 =?us-ascii?q?+v7JhpFBTTuC4NPB490zvS1NB9o6lJ/QiQiyFk8oLWS8KPLuUrLca/NZtSDS?=
 =?us-ascii?q?IJFo5bAiZ9Pd37M64xDMUHLP0br86kggo2giCeXhO1Xt7I9i1y10/u+YM8+q?=
 =?us-ascii?q?cnCRnHxAIuE+ANrHj3jvupPqAMVP/q1PDS71ChJ7sekX+1oMCAYBx/msq+fr?=
 =?us-ascii?q?BUKO/b9HciLQDqqWiA9bP0PBmo6+osukS4v8c4C+mLl3J7pT1puRn/2+gAhY?=
 =?us-ascii?q?z5gqVM10zqqiRF8I8pAdzdKgYzKZbsWNMY/xqDZ4xPaZ0sSSZtv3xkzawH4d?=
 =?us-ascii?q?2AIjYO06wm2iHlaaPfV9aKyQLhcfyweQ16on93JJXglUmLtku59N/7T++J3w?=
 =?us-ascii?q?lD9nFA97uE/jhFn1SbooCLQcNRzmbi1wqf9wvD4Pp7DWc0i/T6BJImmKRvho?=
 =?us-ascii?q?YQvVz7MXfyx2v8h4qxbEkL9tXz4e77bp7Ft7+eB48vg1jnMatxxandSaxwek?=
 =?us-ascii?q?BGFyDT5uXsyrjZ2BSkb4djs9w51YPcqp/nIJhc/YzkAzRbzoYS7lGkBh2Zyd?=
 =?us-ascii?q?YhskUcNkNUJzaik6X3Znf2BuDTMK+7jGaJggoOpbiOdvWpSt2FZjv9y460KO?=
 =?us-ascii?q?U1+wtd0g011ddF+9dOB6ocJO6mQkbqr4+CVE0QLhC0zuD7Cd50yoIZXye1D7?=
 =?us-ascii?q?SENL/J7wDa4/JpKO6IY5UctDG7JvQ4tLbijn48zEcUZrLhnYAWZ3axAul8Lg?=
 =?us-ascii?q?2HbGDtjNYMHSZCvgc3QOHwzlzXeTFWbne2Gak74zw=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0EdAQA/CJ5dh0pDioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWoEAQELAYIagUYvKo0lhVmBaoogigiGZzQRAQEBAQEBAQEBBgE?=
 =?us-ascii?q?BGBUCAQEBAYQ+glIjNwYOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwkIKYU?=
 =?us-ascii?q?0DINGOzABAQEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPIAENARs?=
 =?us-ascii?q?dAQMCCQEBBRA7Ax4CEQEFARwHEgUdgwCBagEDHaNtgQM8jDsFAReCfgWBBIM?=
 =?us-ascii?q?6ChknDWaBPAIHEoEiAYc0ZoJWgR2CF4FEgipzghqCP4VRBKxlHUEHgiWGJoV?=
 =?us-ascii?q?6hHGECBuNe4tFLY4AijCPBgIKBwYPI4FFgXxNI4EBgjtQEBSBTwwXg1CKb1i?=
 =?us-ascii?q?BBQM7kyIBAQ?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0EdAQBPBJ5dh+mAioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWoEAQELAYIagUYvKo0lhVmBaoogigiGZzQRAQEBAQEBAQEBBgE?=
 =?us-ascii?q?BGBUCAQEBAYQ+glIjNwYOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwkIKYU?=
 =?us-ascii?q?0DINGOzABAQEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPIAENARs?=
 =?us-ascii?q?dAQMCCQEBBRA7Ax4CEQEFARwHEgUdgwCBagEDHaNvgQM8jDsFAReCfgWBBIM?=
 =?us-ascii?q?6ChknDWaBPAIHEoEiAYc0ZoJWgR2CF4FEgipzghqCP4VRBKxlHUEHgiWGJoV?=
 =?us-ascii?q?6hHGECBuNe4tFLY4AijCPBgIKBwYPI4FFgXxNI4EBgjtQEBSBTwwXg1CKb1i?=
 =?us-ascii?q?BBQM7kyIBAQ?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0GeAADP+51dh0O0hNFlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWoEAQELAYIagUQxKo0lhVmBajmJZ4oIhmc0EQEBAQEBAQEBAQY?=
 =?us-ascii?q?BARgUAQIBAQEBhD6CUiM3Bg4CAQIJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQg?=
 =?us-ascii?q?phTQMg0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQItVCkBARkCAQMBAg8gAQ0?=
 =?us-ascii?q?BGx0BAwIJAQEFEDsDHgIRAQUBHAcSBR2DAIFqAQMdo12BAzyMOwUBF4J+BYE?=
 =?us-ascii?q?Egz0KGScNZoE8AgcSgSIBhzRmglaBHYIXgUSCKnOCGoI/hVEErGUdQQeCJYY?=
 =?us-ascii?q?mhXqEcYQIG417i0UtjgCKMI8GAgoHBg8jgUWBfE0jgQGCO1AQFIFPDBeDUIp?=
 =?us-ascii?q?vJjKBBQEBATuTIgEB?=
X-IPAS-Result: =?us-ascii?q?A0EdAQA/CJ5dh0pDioBlHAEBAQEBBwEBEQEEBAEBgWoEA?=
 =?us-ascii?q?QELAYIagUYvKo0lhVmBaoogigiGZzQRAQEBAQEBAQEBBgEBGBUCAQEBAYQ+g?=
 =?us-ascii?q?lIjNwYOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwkIKYU0DINGOzABAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPIAENARsdAQMCCQEBBRA7A?=
 =?us-ascii?q?x4CEQEFARwHEgUdgwCBagEDHaNtgQM8jDsFAReCfgWBBIM6ChknDWaBPAIHE?=
 =?us-ascii?q?oEiAYc0ZoJWgR2CF4FEgipzghqCP4VRBKxlHUEHgiWGJoV6hHGECBuNe4tFL?=
 =?us-ascii?q?Y4AijCPBgIKBwYPI4FFgXxNI4EBgjtQEBSBTwwXg1CKb1iBBQM7kyIBAQ?=
X-IPAS-Result: =?us-ascii?q?A0EdAQBPBJ5dh+mAioBlHAEBAQEBBwEBEQEEBAEBgWoEA?=
 =?us-ascii?q?QELAYIagUYvKo0lhVmBaoogigiGZzQRAQEBAQEBAQEBBgEBGBUCAQEBAYQ+g?=
 =?us-ascii?q?lIjNwYOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwkIKYU0DINGOzABAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPIAENARsdAQMCCQEBBRA7A?=
 =?us-ascii?q?x4CEQEFARwHEgUdgwCBagEDHaNvgQM8jDsFAReCfgWBBIM6ChknDWaBPAIHE?=
 =?us-ascii?q?oEiAYc0ZoJWgR2CF4FEgipzghqCP4VRBKxlHUEHgiWGJoV6hHGECBuNe4tFL?=
 =?us-ascii?q?Y4AijCPBgIKBwYPI4FFgXxNI4EBgjtQEBSBTwwXg1CKb1iBBQM7kyIBAQ?=
X-IPAS-Result: =?us-ascii?q?A0GeAADP+51dh0O0hNFlHAEBAQEBBwEBEQEEBAEBgWoEA?=
 =?us-ascii?q?QELAYIagUQxKo0lhVmBajmJZ4oIhmc0EQEBAQEBAQEBAQYBARgUAQIBAQEBh?=
 =?us-ascii?q?D6CUiM3Bg4CAQIJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQgphTQMg0Y7MAEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBFQItVCkBARkCAQMBAg8gAQ0BGx0BAwIJAQEFE?=
 =?us-ascii?q?DsDHgIRAQUBHAcSBR2DAIFqAQMdo12BAzyMOwUBF4J+BYEEgz0KGScNZoE8A?=
 =?us-ascii?q?gcSgSIBhzRmglaBHYIXgUSCKnOCGoI/hVEErGUdQQeCJYYmhXqEcYQIG417i?=
 =?us-ascii?q?0UtjgCKMI8GAgoHBg8jgUWBfE0jgQGCO1AQFIFPDBeDUIpvJjKBBQEBATuTI?=
 =?us-ascii?q?gEB?=
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="414280622"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="369142008"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="286723907"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=1e100.net;
 s=20161025; 
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to        
 :references:mime-version:content-transfer-encoding;       
 bh=qFx5e6sekWj4cSXabcHlK2m6teGcz5rYDUsYdjC+rrw=;       
 b=ii1oR7Nlix0X1FvIqX/u4GTQz/I1ANh3l8KfpPbXRB4tHF1KU2CwmXNDfhzKEQ/MMO        
 BqUQ0D16adOx28ZDi9XxxivokSy9NQgsiADxnfqScFBnA3MrXnnvop++ksSyrzWSY0HF        
 c0hxcPHaXs2sz3Mfl1/MKA9h0mNN/Q51bQ4e+0jEzn6+QDCPySqtEJhNFsC89pYHbCH5        
 22RiUp3jmjpFfnYDV1kuakowazmB5UBFYNCSoDFPWArp3BfG5qupwzNLTcvVkCopRFcF        
 3t7pph5Q0OumBTZIZGBktyvtUt79hGUcUM8nXR5Kdu5EJ8jrfV+qyFnbMWzrKl82aHUA        
 h7TA==
X-Gm-Message-State: APjAAAWEMjjIxJY1RcnXukUMpjSItcfUwsHesZ9Qrae5nnMhtxOnL+KT 
 yDr2MfQtroQMEo1jd+cEju8=
X-Google-Smtp-Source: APXvYqz+w0i8qp/jDRjY8dr3+pmELBjImXfFAjRX8cRctYt3a8txTqVcd9y4tQiO26/UJW2sh64yyA==
X-Received: by 2002:a0d:ffc4:: with SMTP id p187mr3071146ywf.453.1570634852896; 
 Wed, 09 Oct 2019 08:27:32 -0700 (PDT)
From: "William Breathitt Gray" <vilhelm.gray@gmail.com>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>
Subject: [PATCH v17 01/14] bitops: Introduce the for_each_set_clump8 macro
Date: Wed,  9 Oct 2019 11:26:59 -0400
Message-Id: 893c3b4f03266c9496137cc98ac2b1bd27f92c73.1570633189.git.vilhelm.gray@gmail.com
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570633189.git.vilhelm.gray@gmail.com>
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
X-MS-Exchange-Organization-ExpirationStartTime: 09 Oct 2019 17:59:52.2512 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: ebf155f4-ba73-4aca-f29a-08d74ce27bf9
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-Forefront-Antispam-Report: CIP:128.138.128.231; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:SKN; SFS:; DIR:INB; SFP:; SCL:-1; SRVR:BN8PR03MB4691; H:ipmx1.colorado.edu;
 FPR:; SPF:None; LANG:en; ; SKIP:1; 
X-MS-Exchange-Organization-AuthSource: BY2NAM01FT015.eop-nam01.prod.protection.outlook.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-OriginatorOrg: colorado.edu
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ebf155f4-ba73-4aca-f29a-08d74ce27bf9
X-MS-TrafficTypeDiagnostic: BN8PR03MB4691:|BN8PR03MB4691:
X-MS-Exchange-Organization-SCL: -1
X-MS-Oob-TLC-OOBClassifiers: OLM:1303;
X-Microsoft-Antispam: BCL:0;
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2019 17:59:52.0005 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ebf155f4-ba73-4aca-f29a-08d74ce27bf9
X-MS-Exchange-CrossTenant-Id: 3ded8b1b-070d-4629-82e4-c0b019f46057
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3ded8b1b-070d-4629-82e4-c0b019f46057; Ip=[128.138.128.231];
 Helo=[ipmx1.colorado.edu]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR03MB4691
X-MS-Exchange-Transport-EndToEndLatency: 05:57:40.1424834
X-MS-Exchange-Processed-By-BccFoldering: 15.20.2347.014
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; ex:0; auth:0; dest:I;
 ENG:(750127)(520002050)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?cbE058Ag6kWs4MbQa7cSm/5y4E0ulBpYI8fX9FacqJfQZF+AwtRsM/+okwir?=
 =?us-ascii?Q?V2mZ7bWm8TZ6Z4jy+nCFgLGXMB9O3p72FMHlTUDnohJBGX+V3jL11XpX9i+b?=
 =?us-ascii?Q?jX5ByLyALogYKrn3fFPycwHdanwHrw5ojfPnR11KPaZ5V02bSwBEQZWRA/eG?=
 =?us-ascii?Q?eFzA3ZAoI0gCFkPQdqoTDxRnU3iaaiozJWUU0/2n0b7jY9DAw98/MIAMecUO?=
 =?us-ascii?Q?c0vIjxfVM7zJjqEzUtQwQKXn8soo3WiQB+EFvgRjljFvrNM1VlUltZ1vz9+R?=
 =?us-ascii?Q?YSF3sFWpjAjuWc4t9k4MZ5pVoFVApexrQPQE+nleq6jBNKa/9WYTYiLC+lSz?=
 =?us-ascii?Q?g/z2R6iV7GPBmrqJdJTt1WMSXN9tuM3urlwCWJ3SFay7sNmjFgTOoVQorMkb?=
 =?us-ascii?Q?TWMjiQB7nAlNyawkQ5A1sxZ5syCjFbT+3mZ6hN8qvgHlu/ytB09oQJiY4vMX?=
 =?us-ascii?Q?RAQFkwX0eNHz+NvrQPNg4iqS3NjAlli3+PPVRoIyw+vSKj0q7GCAxFnBX60D?=
 =?us-ascii?Q?zEQ5zwL4K9S5mqRWvfOubfJ/pej223H2V4n3J/guIRjU/Aj8xWeEeYOFjpDX?=
 =?us-ascii?Q?UBKvSYi6YN0GMGgPUkICnhGKr1WOfb0EdrbK07a8RTecfZxexVKoa8bEIp6V?=
 =?us-ascii?Q?ZTcnd7h2LBJbyVw+LEknUhSNmizxOcvheqYuNDxLyL8fiAwfsM02lVNJj0y5?=
 =?us-ascii?Q?Ns8tbUVMWphPodkLrSC4cvilv7DZFlQTEQoIviqAfzx6FB44twdqGZgHMRjQ?=
 =?us-ascii?Q?Hx3k0duKcv7cw7GoDnibuBCEnRPnuQ8dVlaE20UTrV5L6aZdUFiKnrmLKxe4?=
 =?us-ascii?Q?BFu5+UkDXnQhLG+SBDSq2HZCcAgLKUmQO4+lZruLpx9a7h2qINfFZt7xppI1?=
 =?us-ascii?Q?yjO4wEmG5WdSq68FRLJixlJAERMfn1f52Zk/iVgXk/1IpMSwlNoPEYtBjVoW?=
 =?us-ascii?Q?jUJZf6sr5B+sQXgfap8DBg+9EF0q7u6gVq80QKzM9BALROLuc61QOiFm2/Ey?=
 =?us-ascii?Q?NZJuWf5XDz5Iqll8DWbT+be/E2rttBDiN184M/M/TpmJW8N97LxeDRmsa5qN?=
 =?us-ascii?Q?p1DFq/NMxqLcf7yUqzJ5oeP8exVXYGikIv1Fv7AQez8eUdMSPfE=3D?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_213540_448647_B42917CA 
X-CRM114-Status: UNSURE (   5.95  )
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
 Arnd Bergmann <arnd@arndb.de>,
 "yamada.masahiro@socionext.com" <yamada.masahiro@socionext.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux@rasmusvillemoes.dk" <linux@rasmusvillemoes.dk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "morten.tiljeset@prevas.dk" <morten.tiljeset@prevas.dk>,
 "sean.nyekjaer@prevas.dk" <sean.nyekjaer@prevas.dk>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 "lukas@wunner.de" <lukas@wunner.de>,
 "geert@linux-m68k.org" <geert@linux-m68k.org>, William Breathitt
 Gray <vilhelm.gray@gmail.com>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This macro iterates for each 8-bit group of bits (clump) with set bits,
within a bitmap memory region. For each iteration, "start" is set to the
bit offset of the found clump, while the respective clump value is
stored to the location pointed by "clump". Additionally, the
bitmap_get_value8 and bitmap_set_value8 functions are introduced to
respectively get and set an 8-bit value in a bitmap memory region.

Suggested-by: Andy Shevchenko <andy.shevchenko@gmail.com>
Suggested-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Suggested-by: Lukas Wunner <lukas@wunner.de>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 include/asm-generic/bitops/find.h | 17 +++++++++++++++
 include/linux/bitmap.h            | 35 +++++++++++++++++++++++++++++++
 include/linux/bitops.h            |  5 +++++
 lib/find_bit.c                    | 14 +++++++++++++
 4 files changed, 71 insertions(+)

diff --git a/include/asm-generic/bitops/find.h b/include/asm-generic/bitops/find.h
index 8a1ee10014de..9fdf21302fdf 100644
--- a/include/asm-generic/bitops/find.h
+++ b/include/asm-generic/bitops/find.h
@@ -80,4 +80,21 @@ extern unsigned long find_first_zero_bit(const unsigned long *addr,
 
 #endif /* CONFIG_GENERIC_FIND_FIRST_BIT */
 
+/**
+ * find_next_clump8 - find next 8-bit clump with set bits in a memory region
+ * @clump: location to store copy of found clump
+ * @addr: address to base the search on
+ * @size: bitmap size in number of bits
+ * @offset: bit offset at which to start searching
+ *
+ * Returns the bit offset for the next set clump; the found clump value is
+ * copied to the location pointed by @clump. If no bits are set, returns @size.
+ */
+extern unsigned long find_next_clump8(unsigned long *clump,
+				      const unsigned long *addr,
+				      unsigned long size, unsigned long offset);
+
+#define find_first_clump8(clump, bits, size) \
+	find_next_clump8((clump), (bits), (size), 0)
+
 #endif /*_ASM_GENERIC_BITOPS_FIND_H_ */
diff --git a/include/linux/bitmap.h b/include/linux/bitmap.h
index 90528f12bdfa..761fab5b60a7 100644
--- a/include/linux/bitmap.h
+++ b/include/linux/bitmap.h
@@ -66,6 +66,8 @@
  *  bitmap_allocate_region(bitmap, pos, order)  Allocate specified bit region
  *  bitmap_from_arr32(dst, buf, nbits)          Copy nbits from u32[] buf to dst
  *  bitmap_to_arr32(buf, src, nbits)            Copy nbits from buf to u32[] dst
+ *  bitmap_get_value8(map, start)               Get 8bit value from map at start
+ *  bitmap_set_value8(map, value, start)        Set 8bit value to map at start
  *
  * Note, bitmap_zero() and bitmap_fill() operate over the region of
  * unsigned longs, that is, bits behind bitmap till the unsigned long
@@ -488,6 +490,39 @@ static inline void bitmap_from_u64(unsigned long *dst, u64 mask)
 		dst[1] = mask >> 32;
 }
 
+/**
+ * bitmap_get_value8 - get an 8-bit value within a memory region
+ * @map: address to the bitmap memory region
+ * @start: bit offset of the 8-bit value; must be a multiple of 8
+ *
+ * Returns the 8-bit value located at the @start bit offset within the @src
+ * memory region.
+ */
+static inline unsigned long bitmap_get_value8(const unsigned long *map,
+					      unsigned long start)
+{
+	const size_t index = BIT_WORD(start);
+	const unsigned long offset = start % BITS_PER_LONG;
+
+	return (map[index] >> offset) & 0xFF;
+}
+
+/**
+ * bitmap_set_value8 - set an 8-bit value within a memory region
+ * @map: address to the bitmap memory region
+ * @value: the 8-bit value; values wider than 8 bits may clobber bitmap
+ * @start: bit offset of the 8-bit value; must be a multiple of 8
+ */
+static inline void bitmap_set_value8(unsigned long *map, unsigned long value,
+				     unsigned long start)
+{
+	const size_t index = BIT_WORD(start);
+	const unsigned long offset = start % BITS_PER_LONG;
+
+	map[index] &= ~(0xFF << offset);
+	map[index] |= value << offset;
+}
+
 #endif /* __ASSEMBLY__ */
 
 #endif /* __LINUX_BITMAP_H */
diff --git a/include/linux/bitops.h b/include/linux/bitops.h
index cf074bce3eb3..fb94a10f7853 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -40,6 +40,11 @@ extern unsigned long __sw_hweight64(__u64 w);
 	     (bit) < (size);					\
 	     (bit) = find_next_zero_bit((addr), (size), (bit) + 1))
 
+#define for_each_set_clump8(start, clump, bits, size) \
+	for ((start) = find_first_clump8(&(clump), (bits), (size)); \
+	     (start) < (size); \
+	     (start) = find_next_clump8(&(clump), (bits), (size), (start) + 8))
+
 static inline int get_bitmask_order(unsigned int count)
 {
 	int order;
diff --git a/lib/find_bit.c b/lib/find_bit.c
index 5c51eb45178a..e35a76b291e6 100644
--- a/lib/find_bit.c
+++ b/lib/find_bit.c
@@ -214,3 +214,17 @@ EXPORT_SYMBOL(find_next_bit_le);
 #endif
 
 #endif /* __BIG_ENDIAN */
+
+unsigned long find_next_clump8(unsigned long *clump, const unsigned long *addr,
+			       unsigned long size, unsigned long offset)
+{
+	offset = find_next_bit(addr, size, offset);
+	if (offset == size)
+		return size;
+
+	offset = round_down(offset, 8);
+	*clump = bitmap_get_value8(addr, offset);
+
+	return offset;
+}
+EXPORT_SYMBOL(find_next_clump8);
-- 
2.23.0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
