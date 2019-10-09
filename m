Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF89FD536E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 02:28:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rOArccfMnUNlqeBlUyQ+yhKb/3qswZtTKUDmXhjFRKQ=; b=PoZ6R1xaUF4cxY
	6YbeTYM+Amt2L05phTiUlgiv7dsmLYxojkbnior1AYFFMqcPGQE9i+vWzpjteU8nAgaZNCtJ1mkW+
	B4/i7SAGI7QtR/D7ud/a933DigkcAORraAAEO1iv7Oshm4twIM1+GMXnwae9JA/4ZnlV6vlo5Cqgn
	moHadjQba3sn8gVOQGECaKfXwwcG+wF7klxCcu7iMnaMGu68cy+TwKKbpij2BEkW8YIU7XzMUHXhx
	ZB8uTCpXpxvB5+cYOXqnPGyXpRIcfTyk8z/wldXZVzy4tdU6bwxOW5IEc8MicGxu7j0uG7aFkLNfd
	9sIFtxUAKAyiWSm6hmgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJRjs-0003yd-2h; Sun, 13 Oct 2019 00:28:00 +0000
Received: from listssympa-test.colorado.edu ([128.138.129.156])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJRjg-0003yA-0D
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 00:27:49 +0000
Received: from listssympa-test.colorado.edu (localhost [127.0.0.1])
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/sympa) with ESMTPS id
 x9D0RbJW018060
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 12 Oct 2019 18:27:37 -0600
Received: (from root@localhost)
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/submit) id
 x9D0Rbxw018050; Sat, 12 Oct 2019 18:27:37 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025; 
 h=from:to:cc:subject:date:message-id:in-reply-to:references 
 :mime-version:content-transfer-encoding;       
 bh=K+mqc0t3Nlu8bab/TVJ1eaLU6XWlAP9g+g7Mhy2/IA0=;       
 b=iIvY3wEazOP1A69spGqnitu+4ewtBT1OXbC2hJXAO/o+CtQbIUzGQ7zQ8Nl6z5DYgv        
 UeTqfwVkO3U8NIsrjZc8xOAAeIBZU36J7N8+Y9gGUyePuk6t5yQ+rlJOsp67kSg0SP3W        
 ovlehY3bsuY+aAHHM5P48rTo/wDO731ewSPqgW5XWk8v26Kd3l247qVhe/Tvz0S71TWQ        
 ZQ8JCw5vguyAK8WaR7XI1ZS0y3B7F/Wz82jbioSrxF/56592iOHAi8OETgX/tg3hFKVP        
 Bi8RAcbnW3iZsbAo8j023zJthIagqs5hRVMl0TU1L1GYf8vMibzJEN/OWBGmnssn5t+S        
 sXwQ==
Received: from BL0PR03MB4275.namprd03.prod.outlook.com (2603:10b6:a03:1d0::26)
 by BYAPR03MB4376.namprd03.prod.outlook.com with HTTPS via
 BY5PR04CA0016.NAMPRD04.PROD.OUTLOOK.COM; Wed, 9 Oct 2019 18:48:25 +0000
Received: from CY4PR03CA0084.namprd03.prod.outlook.com (2603:10b6:910:4d::25)
 by
 BL0PR03MB4275.namprd03.prod.outlook.com (2603:10b6:208:6a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.17; Wed, 9 Oct
 2019 17:28:27 +0000
Received: from BY2NAM01FT055.eop-nam01.prod.protection.outlook.com
 (2a01:111:f400:7e42::208) by CY4PR03CA0084.outlook.office365.com
 (2603:10b6:910:4d::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Wed, 9 Oct 2019 17:28:27 +0000
Received: from ipmx7.colorado.edu (128.138.128.233) by
 BY2NAM01FT055.mail.protection.outlook.com (10.152.68.122) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384)
 id 15.20.2347.16 via Frontend Transport; Wed, 9 Oct 2019 17:28:26 +0000
Received: from ipmx4.colorado.edu ([128.138.67.75])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 10:47:18 -0600
Received: from mx-spsc.colorado.edu (HELO mx.colorado.edu) ([128.138.67.77]) by
 mx.colorado.edu with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019
 10:22:47 -0600
Received: from mx-spsc.colorado.edu (HELO mx.colorado.edu) ([128.138.67.77]) by
 mx.colorado.edu with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019
 10:06:53 -0600
Received: from ipmx2.colorado.edu ([128.138.128.232]) by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 09:56:09 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:47:12 -0600
Received: from ipmx3.colorado.edu ([128.138.67.74])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 09:39:24 -0600
Received: from ipmx2.colorado.edu ([128.138.128.232]) by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 09:34:36 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:30:36 -0600
Received: from vger.kernel.org ([209.132.180.67]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:28:23 -0600
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand id
 S1731703AbfJIP2V (ORCPT <rfc822; michael.gilroy@colorado.edu>);
 Wed, 9 Oct 2019 11:28:21 -0400
Received: from mail-yw1-f65.google.com ([209.85.161.65]:40157 "EHLO       
 mail-yw1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org       
 with ESMTP id S1731756AbfJIP1r (ORCPT       
 <rfc822; linux-kernel@vger.kernel.org>); Wed, 9 Oct 2019 11:27:47 -0400
Received: by mail-yw1-f65.google.com with SMTP id e205so957607ywc.7;
 Wed, 09 Oct 2019 08:27:47 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])        by smtp.gmail.com with ESMTPSA id
 g40sm611863ywk.14.2019.10.09.08.27.44        (version=TLS1_3
 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);        Wed, 09 Oct 2019
 08:27:45 -0700 (PDT)
Authentication-Results: spf=none (sender IP is 128.138.128.233)
 smtp.mailfrom=vger.kernel.org; 
 o365.colorado.edu; dkim=pass (signature was verified)
 header.d=gmail.com;o365.colorado.edu; dmarc=pass action=none
 header.from=gmail.com;
Received-SPF: None (protection.outlook.com: vger.kernel.org does not designate
 permitted sender hosts)
Authentication-Results-Original: mx.colorado.edu;
 dkim=pass (signature verified)
 header.i=@gmail.com
IronPort-SDR: 68T+Pqdm1IYFRvtMDENHpckGbPKgPpPQDGm1a/eN4EPV4VyD1c1MRQ7zEvwWKDDvq/1Cn4T/3u
 kVEDVTDqY1ZKsgB+Tkf32YsFcC8OF0RQk=
IronPort-SDR: S27BcdjUyBGA0Py0rb4S8FRStSdTwsMLwJtq2J6Yv1k/aG23kNc1oUvyhhHVLGT80Obe9iVX3C
 Pds+9t22bOlMqQXt/w0GOT48+zaYMs90w=
IronPort-SDR: e6QrNxgd3I+7cKTCa16aDZdXkO/litryWvbhUlcT5tkGDd2fzAvpFl8YHVQdzBY0wto7XGWVCv
 UjHbTQ2D2eoASy3yyM3Tmu5XSJLVH8QMQ=
IronPort-SDR: re0FwJyJrp160UuZXu5wxIU+tkuMm373RrVLFVVsb5Hv0W1Pz5LkV1U03UEzpb8Fmjo1nOVT55
 OkKkAyZOuQleEjjyXx0zOOOpJlDqt88P4=
IronPort-SDR: HPFGdVwv9jGFlgq+wLm1rSojYfxQI4I/xikRbpt1aRJfnzkHl5EpxwmKxPls9cBDYYucObODWd
 b+v9YxQvOcU+p9YkyO0drRd/75PdjQhWo=
IronPort-SDR: XkdwoPIUaG8K564Rx1objcxOPER9BhihCgwzVOrZMC/XzPCkvbG8ZqBQJTEWrxw5O8i500zVnN
 /W2vluVvY+fSDkEDhnb5y/83dO0ssNmQI=
IronPort-SDR: uUO92/kkUiAbpEmObheMp3woKRRl5vN0ktUMwUODEHC2bDpzDMNqlKkHYneTVcYtsZ8MmNLOPV
 sMjarLIVhJMKKD6k80yIX8FvGIxGpHGC4=
IronPort-SDR: PQuP6wICVNujYFeldRhwBF4WS/P5aykc2abRgpk+XHLVlxubiVmgWvLpX8acyViekU/89lOuPB
 MeIFAEnKYdcZOPul/B8kgo5MwyWiQIObI=
IronPort-SDR: o8pBHYHME+CV6pU8YF6o3WpCsgaoVlDcb28LiRds3ZOgyPQ+27WFvhtAW75A4q4MjF4fYcnvvM
 fQq8C1sRL/FHyiMpCuFvDM2MVbypIdIck=
IronPort-PHdr: =?us-ascii?q?9a23=3AMrTvNB1bXLJ7K6EcsmDT+DJfSgsGnvDZIAcR95?=
 =?us-ascii?q?M7irVILPT+rYq3ZR+X7KB3l1aMRoXSsa8a2KLd5rrtXWUQ7JrGqn0GeYxBW0?=
 =?us-ascii?q?xg641e10RoSIbNBRj0Kffra2oxG8ERHEQwpSnibxENQputAj+a6jX6pXZaUh?=
 =?us-ascii?q?WqOxByI7bpHdzZhJasyuqw9pbPMQlBmDfvZL5pNxy5oEDQupsXh854J74121?=
 =?us-ascii?q?7VpSlSdupb325uLl+I+nS0ro/4tNYru2wCvvMk+oteXL/hfqM+H7dfCigrNX?=
 =?us-ascii?q?xw+NfiswLNQBHK630XVWkXlBUbZmqNpFmyFt+5+iH648k+3TCRZdGta7QpCT?=
 =?us-ascii?q?6r5eBXdj2xhS4jCmAJz2X+sp1/z60EhRKw/Vte6taBM+T3fLI2NuuVNZsQEG?=
 =?us-ascii?q?tgQPcKSAFIEKSENqJRXvEZEv9erpXg5AcDsgeUOVCLNOnEkD9qtlbRmqp5+P?=
 =?us-ascii?q?gYGyD7ziMZQMA34FLQ8seoGJYdT4XXhOGAhX2LJ7se5DrB8YbXTBMG+szce5?=
 =?us-ascii?q?Nra8jjwhk/MCrsg3S6m7G+YRHK8LROgjmUwNdxWNqyiDA79hBI4SKr5OA3kt?=
 =?us-ascii?q?eWhbkakmv8rhocos59bZXwAAYzKdm6FJZQhnqQLJZHAcoLY0FN5R5mmqc6vt?=
 =?us-ascii?q?mkUA9Vk80q2CXncvO4Lri34UL9DriyLWx83i46YYy/ilGO71r48bKlavaNtT?=
 =?us-ascii?q?QC5mIN2pGE/jg/7kzxwdfaVPRg726CiQmG7V/jy7h2GhglzoCEBdke0O5qlJ?=
 =?us-ascii?q?AStn/ZDgGxxRur3fWXUWUN+7iPxtjoUvL6qcScGaxKsmSceuxm0oT3SaxwGA?=
 =?us-ascii?q?leZUGQ8+KDj7zR5kfQR+VI1qdtgIvFsLHTKt0A+66DPSpRiroesjLmIAaogM?=
 =?us-ascii?q?o9nHMVDn9jPzW4pafsPUrVJq3kTsza4Rzk2H8jj7iOdqbRHayYeyuLgPLgZ7?=
 =?us-ascii?q?F780lG1E8pwMtC444BErgaO6GpAB3YqcDYAxklMge93+fgDpBH25gDXX6UXP?=
 =?us-ascii?q?DLNbOUuliM4fgmL+7KaYMI637xKPkgsubnlmRx2UQccq+gwYYNZTimE+5nLU?=
 =?us-ascii?q?SUbTukgtoIHWoQ+AtrZOPvgVyGFzVUYns=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AMI6MNhaitLTu3v46xnFwazX/LSx+5ufYHS8wr7?=
 =?us-ascii?q?c5grZTe7ii+JK8bBGN+6A03xfACJ/A4rdfi+OM7v6zEWdV+5uFuWAPfNtWWh?=
 =?us-ascii?q?sMmcgazGlCSIbNQQWzZLbmOiM/FcVGElRi+iLzKh0PQJ+gPgWI/y7Xj3ZaUl?=
 =?us-ascii?q?23fUI9JrH7AInX3diwheu5qYbOaQdFjybvbbpuIUezoB7Kv8YbxIpueKc3jw?=
 =?us-ascii?q?HEun9ZPvhRl3llK1+JkhD369zVntYru2wY87ppv5xFUKD3Oro1V6dZCzJ0OG?=
 =?us-ascii?q?cz+MDtqVzfVwKJ/XURSCAblBFPDwnD40KfPN+5+mOy/qI10inPHo7zVLtsRW?=
 =?us-ascii?q?+E67o7Qhbizxs5FWc0+UXq1PxPiItj8R3iqENaw5+OJ6C8bK8tG8GVNZtSDS?=
 =?us-ascii?q?IJFswEVg1fM9ijQoIdKNJYFLgJtJHSvl0PsQb9WQSzGMnTkxh4jFSs3Y8K+s?=
 =?us-ascii?q?NmFkLtwDUqPu8cn02LvuylEqNMQ72Z/abWqFeLJ7sekX+1oMD1fyw4r+6yXp?=
 =?us-ascii?q?UrTJr36FI1FTHO3kW3gKXoHhmn679TkTe9v6lRBO2Atn8qkxxy/CTy1/5vkI?=
 =?us-ascii?q?3roZkNlA/Hzioh+75uGrjaAAYzKZbsWNMYsD+eOotHGck5XlArsQ8a6phbgc?=
 =?us-ascii?q?LrZhQNj4sL4EGEMvGYSLCR7S2+ZNmScSki2lFpI7bl20mrz0itjdHiRJGPjw?=
 =?us-ascii?q?92kRMg8JGE/jhFn1Sbovq+GtlW4Rq/1iue/iOD1eh+fnAVzJjgc4966OEe0a?=
 =?us-ascii?q?UB4R7BFC7xo1/moujLKBh1oOmPy83mMpLLmpCscJN70QHQEZoW/673Saxwek?=
 =?us-ascii?q?BGFyCx+LSG/bbp+3KiQYdRhNQxwquB6svIB9gbh6e2GhQI0rwdzhLnMwr/9I?=
 =?us-ascii?q?03rHdXMndEcgCloq6uHG7kD/X+Fuy53kjvq1IJj7iOdvWpSt2FNUjcqeK0Lv?=
 =?us-ascii?q?5trk9GzwwryspDoohZEawFPKfrU1Tq54aCXDYkLwy5xfrmA9xh14QYHFiCGb?=
 =?us-ascii?q?KdLLiM7g2N9qQkJO2LfoYZv3DwJ+V2r/LtjHpsgVYGZuHpxpoYbnmkA+5ra1?=
 =?us-ascii?q?uUe3vig9oNUC8KswMyQfasiQiqXjtaZnL0VKU56w=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3ANgiNcxP6yPGAlgev5S4l6mtUO3oLmJTReyML45?=
 =?us-ascii?q?46gq5PdaL9r8mwIhmGtr1k2UXSVMDA6/se1rSF+6u1Q2EE6IaMvDcYfZhFRx?=
 =?us-ascii?q?IJ2qB010RoSIbNQQX3efHvZi0+Ws9FUQwt5CThaRELQZ6kOg63wDX6pXZaUl?=
 =?us-ascii?q?23NV97POPwSJLV3c+8hfuv8Z/eaBkaiDOhbOF3IQ6tpArc88ga04pkb7w80h?=
 =?us-ascii?q?/Y52dPKf5by25yKFSYkg2ZhI/4tNYru2wY86Ak9stNFLv3Zb85SroKBzMgL2?=
 =?us-ascii?q?0z+Ij3rxDFVgWC/D4RVG4RnhtODFugjlmyFt+5+mOyvOoo+2qfJMauUesSXS?=
 =?us-ascii?q?ny5a5hDyPWqn4KPhoErlHojuVI3a0Yr02Epw0lhK/9ONTGUZg2NuuVNZtSDW?=
 =?us-ascii?q?AUX+dPZndeL4quSLNWJrRQJv53to/8u0ZN8RahGSOQXcTfwBQShl3G9Ip91K?=
 =?us-ascii?q?cKDTjM/TEyMOtRok2EitGrJvo+YO+rqcuAhX2LJ7sekX/A5bTRfA8fotbXYO?=
 =?us-ascii?q?JWUNHLy3skRxPip3ydiKbXAmjL9Lsr4yuqvuVPaPOis3Mk9R0sswHs3MMOrZ?=
 =?us-ascii?q?LR2N0W8V+czh0i/+NXbZXwAAYzKZbsF4VUuiGrbIFtX/JhSkhImANn8uFWo6?=
 =?us-ascii?q?K8Ozcm78t8nhPAUMSefLfV0i3gBPjLfxR033Y/JO2muRa/tnS+2LXHCZCI72?=
 =?us-ascii?q?8vzGIN2pGE/jhFny7quuqsVaZj8Vqw8BXf6AnptdFleHIPzbuAAcEPhYEixs?=
 =?us-ascii?q?ARu0XEJTXmtgKr0vLHLEQD2sGpu8PKXrrW4YOTbI9aqT/GV8Zm0oT3Saxwek?=
 =?us-ascii?q?AkXjih0O+20oK4/H/iSpxN3v9uyPLLkozaBM0Uv7XkAzVr94J71yvmK26J4d?=
 =?us-ascii?q?pIg1wGJkBnVTTAqLfDFFTIO+v+UOv8uDHO2H8jj7iOdvWpGaXSFy2Ww//xOL?=
 =?us-ascii?q?dn7EhEzxAviMpS/I9QFuQZKenoCRWr5vXFEh80NRC1yO/7CdJ7k7kTQn+LHr?=
 =?us-ascii?q?THb/HXoRmD4eYoOeCAY8kYtCuuY/Qm5vu7lXYighddZqim25ILdWq1VuprOU?=
 =?us-ascii?q?SXYHfgw58BHG4GsxB4TbnCh1iLUDoVbHG3Ug=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3A31xCrhMMCnKj1tVSLyUl6mtUO3oLmJTReyML45?=
 =?us-ascii?q?46gq5PdaL9r8mwIhmGtr1k2UXSVMDA6/se1rSF+6u1Q2EE6IaMvDcYfZhFRx?=
 =?us-ascii?q?IJ2qB010RoSIbNQQX3efHvZi0+Ws9FUQwt5CThaRELQZ6kOg63wDX6pXZaUl?=
 =?us-ascii?q?23NV97POPwSJLV3c+8hfuv8Z/eaBkaiDOhbOF3IQ6tpArc88ga04pkb7w80h?=
 =?us-ascii?q?/Y52dPKf5by25yKFSYkg2ZhI/4tNYru2wY86Ak9stNFLv3Zb85SroKBzMgL2?=
 =?us-ascii?q?0z+Ij3rxDFVgWC/D4RVG4RnhtODFugjlmyFt+5+mOyvOoo+2qfJMauUesSXS?=
 =?us-ascii?q?ny5a5hDyPWqn4KPhoErlHojuVI3a0Yr02Epw0lhK/9ONTGUZg2NuuVNZtSDW?=
 =?us-ascii?q?AUX+dPZndeL4quSLNWJrRQJv53to/8u0ZN8RahGSOQXcTfwBQShl3G9Ip91K?=
 =?us-ascii?q?cKDTjM/TEyMOtRok2EitGrJvo+YO+rqcuAhX2LJ7sekX/A5bTRfA8fotbXYO?=
 =?us-ascii?q?JWUNHLy3skRxPip3ydiKbXAmjL9Lsr4yuqvuVPaPOis3Mk9R0sswHs3MMOrZ?=
 =?us-ascii?q?LR2N0W8V+czh0i/+NXbZXwAAYzKZbsF4VUuiGrbIFtX/JhSkhImANn8uFWo6?=
 =?us-ascii?q?K8Ozcm78t8nhPAUMSefLfV0i3gBPjLfxR033Y/JO2muRa/tnS+2LXHCZCI72?=
 =?us-ascii?q?8vzGIN2pGE/jhFny7quuqsVaZj8Vqw8BXf6AnptdFleHIPzbuAAcEPhYEixs?=
 =?us-ascii?q?ARu0XEJTXmtgKr0vLHLEQD2sGpu8PKXrrW4YOTbI9aqT/GV8Zm0oT3Saxwek?=
 =?us-ascii?q?AkXjih0O+20oK4/H/iSpxN3v9uyPLLkozaBM0Uv7XkAzVr94J71yvmK26J4d?=
 =?us-ascii?q?pIg1wGJkBnVTTAqLfDFFTIO+v+UOv8uDHO2H8jj7iOdvWpGaXSFy2Ww//xOL?=
 =?us-ascii?q?dn7EhEzxAviMpS/I9QFuQZKenoCRWr5vXFEh80NRC1yO/7CdJ7k7kTQn+LHr?=
 =?us-ascii?q?THb/HXoRmD4eYoOeCAY8kYtCuuY/Qm5vu7lXYighddZqim25ILdWq1VuprOU?=
 =?us-ascii?q?SXYHfgw58BHG4GsxB4TbnCh1iLUDoVbHG3Ug=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AIvI/DRYLVy3nctZ1EG5xJvT/LSx+5ufYHS8wr7?=
 =?us-ascii?q?c5grZTe7ii+JK8bBGN+6A03xfACJ/A4rdfi+OM7v6zEWdV+5uFuWAPfNtWWh?=
 =?us-ascii?q?sMmcgazGlCSIbNQQWzZLbmOiM/FcVGElRi+iLzKh0PQJ+gPgWI/y7Xj3ZaUl?=
 =?us-ascii?q?23fUI9JrH7AInX3diwheu5qYbOaQdFjybvbbpuIUezoB7Kv8YbxIpueKc3jw?=
 =?us-ascii?q?HEun9ZPvhRl3llK1+JkhD369zVntYru2wY87ppv5xFUKD3Oro1V6dZCzJ0OG?=
 =?us-ascii?q?cz+MDtqVzfVwKJ/XURSCAblBFPDwnD40KfPN+5+mOy/qI10inPHo7zVLtsRW?=
 =?us-ascii?q?+E67o7Qhbizxs5FWc0+UXq1PxPiItj8R3iqENaw5+OJ6C8bK8tG8GVNZtSDS?=
 =?us-ascii?q?IJFswEVg1fM9ijQoIdKNJYFLgJtJHSvl0PsQb9WQSzGMnTkxh4jFSs3Y8K+s?=
 =?us-ascii?q?NmFkLtwDUqPu8cn02LvuylEqNMQ72Z/abWqFeLJ7sekX+1oMD1fyw4r+6yXp?=
 =?us-ascii?q?UrTJr36FI1FTHO3kW3gKXoHhmn679TkTe9v6lRBO2Atn8qkxxy/CTy1/5vkI?=
 =?us-ascii?q?3roZkNlA/Hzioh+75uGrjaAAYzKZbsWNMYsD+eOotHGck5XlArsQ8a6phbgc?=
 =?us-ascii?q?LrZhQNj4sL4EGEMvGYSLCR7S2+ZNmScSki2lFpI7bl20mrz0itjdHiRJGPjw?=
 =?us-ascii?q?92kRMg8JGE/jhFn1Sbovq+GtlW4Rq/1iue/iOD1eh+fnAVzJjgc4966OEe0a?=
 =?us-ascii?q?UB4R7BFC7xo1/moujLKBh1oOmPy83mMpLLmpCscJN70QHQEZoW/673Saxwek?=
 =?us-ascii?q?BGFyCx+LSG/bbp+3KiQYdRhNQxwquB6svIB9gbh6e2GhQI0rwdzhLnMwr/9I?=
 =?us-ascii?q?03rHdXMndEcgCloq6uHG7kD/X+Fuy53kjvq1IJj7iOdvWpSt2FNUjcqeK0Lv?=
 =?us-ascii?q?5trk9GzwwryspDoohZEawFPKfrU1Tq54aCXDYkLwy5xfrmA9xh14QYHFiCGb?=
 =?us-ascii?q?KdLLiM7g2N9qQkJO2LfoYZv3DwJ+V2r/LtjHpsgVYGZuHpxpoYbnmkA+5ra1?=
 =?us-ascii?q?uUe3vig9oNUC8KswMyQfasiQiqXjtaZnL0VKU56w=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3Ak0hqtBxmuYU7W2TXCy+O/D0hRQkC/pjqNwoI44?=
 =?us-ascii?q?YmjLQQIvnx4cG7bwTWsO92hRrSXYyBtqwXw+GDqa3kUHwN7dGbvXQLYJFABH?=
 =?us-ascii?q?pnwY1e10RoSIaJXEL+Jf/uKSc9GZcKTwo/pyjlaBAPRZWbBRWa6jX6pXZaGk?=
 =?us-ascii?q?DxLw1wdPjySIXZ3d+q3eK/8IGBbwxUiWi4bKhpJRq76ATd5MgQxJFvMqIgjw?=
 =?us-ascii?q?fO8GFFdelMyGVjKEn2/V60ro/4tNYru3ZVuvcsstBNS777eKJqRrteEDkgLy?=
 =?us-ascii?q?Up/sTtrhfOV06C4HAbXmQQnUktYUCNpFmyFt+5uCuvlal4wSLCIZbQSa1kUz?=
 =?us-ascii?q?2oqJtVakblgQM6aQ4G9Ejv28Mzg/1+oAP74D1Wm9uHBePdfLI2NuuVNdlPRE?=
 =?us-ascii?q?tfb51OeiVTJbvlRtVeFPIuJOBZs5S++1YRsTGCXC6cDsi1yh14r1ix2u4Rz9?=
 =?us-ascii?q?0rMDzU8zV/DetelnCKvojZBagMNIL9hOGAhX2LJ7tr1Avk5pf2cTd6nKGqfK?=
 =?us-ascii?q?lqc/jamVkIPirIr3+ilNe7HWyzhqc84me00vttbf+s1XJ6ujgyuDyN4dw01N?=
 =?us-ascii?q?bKvY1N8WifykAbiM59bZXwAAYzZsCgHZth7CuBKro1S+oCY0Q1gHpq0IEB/o?=
 =?us-ascii?q?GXW3dRkZk4/CbGZMPaQ7eLsgy5CsWdejMi2C18RrKywCqs4xCblbTAafDRsh?=
 =?us-ascii?q?4C5mIN2pGE/kI0hz749ZWZReZs12Tx5j+1iDDys9N/eVFvv/X1bKEzkuQynJ?=
 =?us-ascii?q?sUil7TMGirxhin1q6xVmwlqs+F1+vXJanp/Z+yFLFM72O2euxm0oT3SawSM1?=
 =?us-ascii?q?g0dmOR/9vn1Y/492T+ELcS1KYksLXZkZnVPN9GppSHJgsN7rt6z0+QPjn2zv?=
 =?us-ascii?q?EZl2slAXQCXy2toI3vIErIfey7NpLdyxzk2H8jj7iOJY3+O8CYfTDT1bb7er?=
 =?us-ascii?q?Bl7FRAjRA+1s1b+8dMA6oac6ipCGbsqNzVCAM4OAWowuHhTe9wzZ4aRXnRXf?=
 =?us-ascii?q?2cIOXZtluP/OsjJK+BaJJG8Dr+Kv1w//f1ljd5gl4Se6C1wIEaIG61BPVoIk?=
 =?us-ascii?q?iVIDLsj94NHH1Mv18WQ+njiVnEWjlWag=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AFxlBxR+dqtkC7f9uRHKK80MuRw1ilqv9OhMc9p?=
 =?us-ascii?q?sgjeweL/a9qs2xdEWK/+5kyUTJVN+GtaEMgL/MvqTpSWEMpoyMtHkSfZAfMn?=
 =?us-ascii?q?1NwY1e10RoSMLQBkjyLfqsZCs/T4xZAQU9pi/iaRIIS6OcLxWa6jX6pXYSTx?=
 =?us-ascii?q?vlMg8nOuOnEYWAlNm91e2558/fahlF1j+weqh7IxjzrAmDt89Tm4Z6Lrd01h?=
 =?us-ascii?q?ybuHZGdv5bw2hlPjfx1160ro/4tNYroSFRvv9k6cNaSqT9efYzSrpEATI6dn?=
 =?us-ascii?q?wv7cvwuxTZCAaJ7XwQU2MZwX8qS0CNpFmyFt/7sn7Z9e9k03GGZuvyUOA+UD?=
 =?us-ascii?q?7l05lJERLhrBpZBwE92VmGhY9/04dbsUjmhjUnlt2xAsndfLI2NuuVd4YbZH?=
 =?us-ascii?q?RwBdl8Xj5mOtqVMdoUF8UYO+dEssqhqkQShyfnIjmmL7nv6A9hoTjxnoYm6u?=
 =?us-ascii?q?4ALBPp5VMyJoIotCrG8fnEO7l3M6j9hOGAhX2LJ85b5S7z97bLVUsc8detRq?=
 =?us-ascii?q?hyQ8GB2W4GPg7kpGet8tLHYBXFldVcvEem/udYSOHxlzM2kkJrphqI3d9y1Y?=
 =?us-ascii?q?ryidou8gv7kEcxiM59bZXwAAZ8f9qpEKoLvTqHBsh/a+MCZjxQ5HYg9rpBpr?=
 =?us-ascii?q?KcI3NTxYsc/wfQVKG3TIvY/Ei9d+rKJW0k22tbeL/4uwigqXP/k9HDb6zWmB?=
 =?us-ascii?q?4C5mIN2pGEhEld9TfMt9aIV+pU3Ree0AzQ5yGK2NocMBseyoScFIxxmLw6l5?=
 =?us-ascii?q?0oq1TtWXKoxRSsjYi2X0R03cWU5NSgfrq9prG/CbcR6Em2euxm0oT3Sc45Yj?=
 =?us-ascii?q?InVGKdxr+95qbp1EqpQu0Q1e8Ujqn4uZ/DPpkbnJCcB1dp798HsjmOAWe49d?=
 =?us-ascii?q?USj1sqChViRzioio7yIFeTPLPDaJX3yxzk2H8jj7jdDqLYV8CeZmiGka3me6?=
 =?us-ascii?q?568VIZ0gco0NRDsopdEapSeqihc1LttNHeEh4yOhC1xOCiMthmy4cCQjzQUK?=
 =?us-ascii?q?qJdqjVtViS7+4oZeSAedxdtDX8Lq097uX1xT8imFAbdLW0x5Zfdn2iH/pnLk?=
 =?us-ascii?q?nYKXrhi9sMCyEL6yIxSeXrjBuJVjte?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0E7AADkF55dh0tDioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWcHAQELAYIagUcdEiqMRWCFWoFqiiCKCIUogT80EQEBAQEBAQE?=
 =?us-ascii?q?BAQYBARgVAgEBAQGEPoJSIzQJDgIBAgkBAQEDAQEBAgEFAgEBAgIQAQEBCgs?=
 =?us-ascii?q?JCCmFNAyDRjswAQEBAQEBAQEBAQEBAQEBAQEBAQEVAoEBKQEBGQIBAwECDxU?=
 =?us-ascii?q?LAQ0BGx0BAwIJAQEFEDsDHgIRAQUBHAcSBR2DAIJGAQMuo3WBAzyMJRYFARe?=
 =?us-ascii?q?CfgWBBIM4ChknDWaBPAIHEoEiAYc0gzyBHYIXgUSDHYIagj+FVwSNAQSffUE?=
 =?us-ascii?q?HgiWGJoprhAgbgjqLQTmLDC2OAIowjwYCCgcGDyOBL4ISTSOBAYI7UBAUgU8?=
 =?us-ascii?q?MF4NQim9YgQUDO49YAQE?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0FuAQBnDZ5dfU1DioBlgkGCG4FjEo1?=
 =?us-ascii?q?Pm2yFKIE/RQEBAQEBAQEBAQYBAS0CAQEBAYQ+gnU0CQ4DAgkBAQEDAQICAQU?=
 =?us-ascii?q?CAQECAhABAQkWCIVpg0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQKBASkbBgE?=
 =?us-ascii?q?CDyABDQEbHQEDAgkBAQUQOwMeAhEBBQEcBxIFHYRqAQMdpAaBAzyMOwUBF4J?=
 =?us-ascii?q?+BYEEgzsKGScNZoE8AgcSDohJgzyDNIFEgx2EWYVRjQWgAUEHgiWGJo5zG4I?=
 =?us-ascii?q?6i0E5iwwtjgCZNgIKBwYPI4EvghJNI4EBgwsQFJAxgV0DO5MiAQE?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0FuAQBKBp5dfU1DioBlgkGCG4FjEo1?=
 =?us-ascii?q?Pm2yFKIE/RQEBAQEBAQEBAQYBAS0CAQEBAYQ+gnU0CQ4DAgkBAQEDAQICAQU?=
 =?us-ascii?q?CAQECAhABAQsUCIVpg0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQKBASkbBgE?=
 =?us-ascii?q?CDyABDQEbHQEDAgkBAQUQOwMeAhEBBQEcBxIFHYRqAQMdo3OBAzyMOwUBF4J?=
 =?us-ascii?q?+BYEEgzoKGScNZoE8AgcSDohJgzyDNIFEgx2EWYVRjQWgAUEHgiWGJo5zG4I?=
 =?us-ascii?q?6i0E5iwwtjgCZNgIKBwYPI4EvghJNI4EBgwsQFJAxgV0DO5MiAQE?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0E9AABX/51dh+iAioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWcHAQELAYIagUYvKoxFYIVZgWqKIIoIhSiBPzQRAQEBAQEBAQE?=
 =?us-ascii?q?BBgEBGBUCAQEBAYQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwk?=
 =?us-ascii?q?IKYU0DINGOzABAQEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQs?=
 =?us-ascii?q?BDQEbHQEDAgkBAQUQOwMeAhEBBQEcBxIFHYMAgWoBAx2jZ4EDPIwlFgUBF4J?=
 =?us-ascii?q?+BYEEgzkKGScNZoE8AgcSgSIBhzSDPIEdgheBRIMdghqCP4VRBI0BBJ99QQe?=
 =?us-ascii?q?CJYYmimuECBuCOotBOYsMLY4AijCPBgIKBwYPI4EvghJNI4EBgjtQEBSBTww?=
 =?us-ascii?q?Xg1CKb1iBBQM7kyIBAQ?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0E9AACh/p1dh0pDioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWcHAQELAYIagUYvKoxFYIVZgWqKIIoIhSiBPzQRAQEBAQEBAQE?=
 =?us-ascii?q?BBgEBGBUCAQEBAYQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwk?=
 =?us-ascii?q?IKYU0DINGOzABAQEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQs?=
 =?us-ascii?q?BDQEbHQEDAgkBAQUQOwMeAhEBBQEcBxIFHYMAgWoBAx2jY4EDPIwlFgUBF4J?=
 =?us-ascii?q?+BYEEgzoKGScNZoE8AgcSgSIBhzSDPIEdgheBRIMdghqCP4VRBI0BBJ99QQe?=
 =?us-ascii?q?CJYYmimuECBuCOotBOYsMLY4AijCPBgIKBwYPI4EvghJNI4EBgjtQEBSBTww?=
 =?us-ascii?q?Xg1CKb1iBBQM7kyIBAQ?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0E9AAAs/Z1dh+iAioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWcHAQELAYIagUYvKoxFYIVZgWqKIIoIhSiBPzQRAQEBAQEBAQE?=
 =?us-ascii?q?BBgEBGBUCAQEBAYQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwk?=
 =?us-ascii?q?IKYU0DINGOzABAQEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQs?=
 =?us-ascii?q?BDQEbHQEDAgkBAQUQOwMeAhEBBQEcBxIFHYMAgWoBAx2jYoEDPIwlFgUBF4J?=
 =?us-ascii?q?+BYEEgzsKGScNZoE8AgcSgSIBhzSDPIEdgheBRIMdghqCP4VRBI0BBJ99QQe?=
 =?us-ascii?q?CJYYmimuECBuCOotBOYsMLY4AijCPBgIKBwYPI4EvghJNI4EBgjtQEBSBTww?=
 =?us-ascii?q?Xg1CKb1iBBQM7kyIBAQ?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0EiAAC/951dh0O0hNFlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWcHAQELAYIagUQxKoxFYIVagWo5iWeKCIUogT80EQEBAQEBAQE?=
 =?us-ascii?q?BAQYBARgUAQIBAQEBhD6CUiM0CQ4CAQIJAQEBAwEBAQIBBQIBAQICEAEBAQo?=
 =?us-ascii?q?LCQgphTQMg0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQItVCkBARkCAQMBAg8?=
 =?us-ascii?q?VCwENARsdAQMCCQEBBRA7Ax4CEQEFARwHEgUdgwCBagEDHaNRgQM8jCUWBQE?=
 =?us-ascii?q?Xgn4FgQSDPAoZJw1mgTwCBxKBIgGHNIM8gR2CF4FEgx2CGoI/hVEEjQEEn31?=
 =?us-ascii?q?BB4IlhiaKa4QIG4I6i0E5iwwtjgCKMI8GAgoHBg8jgS+CEk0jgQGCO1AQFIF?=
 =?us-ascii?q?PDBeDUIpvJjKBBQEBATuTIgEB?=
X-IPAS-Result: =?us-ascii?q?A0E7AADkF55dh0tDioBlHAEBAQEBBwEBEQEEBAEBgWcHA?=
 =?us-ascii?q?QELAYIagUcdEiqMRWCFWoFqiiCKCIUogT80EQEBAQEBAQEBAQYBARgVAgEBA?=
 =?us-ascii?q?QGEPoJSIzQJDgIBAgkBAQEDAQEBAgEFAgEBAgIQAQEBCgsJCCmFNAyDRjswA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEVAoEBKQEBGQIBAwECDxULAQ0BGx0BAwIJA?=
 =?us-ascii?q?QEFEDsDHgIRAQUBHAcSBR2DAIJGAQMuo3WBAzyMJRYFAReCfgWBBIM4ChknD?=
 =?us-ascii?q?WaBPAIHEoEiAYc0gzyBHYIXgUSDHYIagj+FVwSNAQSffUEHgiWGJoprhAgbg?=
 =?us-ascii?q?jqLQTmLDC2OAIowjwYCCgcGDyOBL4ISTSOBAYI7UBAUgU8MF4NQim9YgQUDO?=
 =?us-ascii?q?49YAQE?=
X-IPAS-Result: =?us-ascii?q?A0FuAQBnDZ5dfU1DioBlgkGCG4FjEo1Pm2yFKIE/RQEBA?=
 =?us-ascii?q?QEBAQEBAQYBAS0CAQEBAYQ+gnU0CQ4DAgkBAQEDAQICAQUCAQECAhABAQkWC?=
 =?us-ascii?q?IVpg0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQKBASkbBgECDyABDQEbHQEDA?=
 =?us-ascii?q?gkBAQUQOwMeAhEBBQEcBxIFHYRqAQMdpAaBAzyMOwUBF4J+BYEEgzsKGScNZ?=
 =?us-ascii?q?oE8AgcSDohJgzyDNIFEgx2EWYVRjQWgAUEHgiWGJo5zG4I6i0E5iwwtjgCZN?=
 =?us-ascii?q?gIKBwYPI4EvghJNI4EBgwsQFJAxgV0DO5MiAQE?=
X-IPAS-Result: =?us-ascii?q?A0FuAQBKBp5dfU1DioBlgkGCG4FjEo1Pm2yFKIE/RQEBA?=
 =?us-ascii?q?QEBAQEBAQYBAS0CAQEBAYQ+gnU0CQ4DAgkBAQEDAQICAQUCAQECAhABAQsUC?=
 =?us-ascii?q?IVpg0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQKBASkbBgECDyABDQEbHQEDA?=
 =?us-ascii?q?gkBAQUQOwMeAhEBBQEcBxIFHYRqAQMdo3OBAzyMOwUBF4J+BYEEgzoKGScNZ?=
 =?us-ascii?q?oE8AgcSDohJgzyDNIFEgx2EWYVRjQWgAUEHgiWGJo5zG4I6i0E5iwwtjgCZN?=
 =?us-ascii?q?gIKBwYPI4EvghJNI4EBgwsQFJAxgV0DO5MiAQE?=
X-IPAS-Result: =?us-ascii?q?A0E9AABX/51dh+iAioBlHAEBAQEBBwEBEQEEBAEBgWcHA?=
 =?us-ascii?q?QELAYIagUYvKoxFYIVZgWqKIIoIhSiBPzQRAQEBAQEBAQEBBgEBGBUCAQEBA?=
 =?us-ascii?q?YQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwkIKYU0DINGOzABA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQsBDQEbHQEDAgkBA?=
 =?us-ascii?q?QUQOwMeAhEBBQEcBxIFHYMAgWoBAx2jZ4EDPIwlFgUBF4J+BYEEgzkKGScNZ?=
 =?us-ascii?q?oE8AgcSgSIBhzSDPIEdgheBRIMdghqCP4VRBI0BBJ99QQeCJYYmimuECBuCO?=
 =?us-ascii?q?otBOYsMLY4AijCPBgIKBwYPI4EvghJNI4EBgjtQEBSBTwwXg1CKb1iBBQM7k?=
 =?us-ascii?q?yIBAQ?=
X-IPAS-Result: =?us-ascii?q?A0E9AACh/p1dh0pDioBlHAEBAQEBBwEBEQEEBAEBgWcHA?=
 =?us-ascii?q?QELAYIagUYvKoxFYIVZgWqKIIoIhSiBPzQRAQEBAQEBAQEBBgEBGBUCAQEBA?=
 =?us-ascii?q?YQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwkIKYU0DINGOzABA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQsBDQEbHQEDAgkBA?=
 =?us-ascii?q?QUQOwMeAhEBBQEcBxIFHYMAgWoBAx2jY4EDPIwlFgUBF4J+BYEEgzoKGScNZ?=
 =?us-ascii?q?oE8AgcSgSIBhzSDPIEdgheBRIMdghqCP4VRBI0BBJ99QQeCJYYmimuECBuCO?=
 =?us-ascii?q?otBOYsMLY4AijCPBgIKBwYPI4EvghJNI4EBgjtQEBSBTwwXg1CKb1iBBQM7k?=
 =?us-ascii?q?yIBAQ?=
X-IPAS-Result: =?us-ascii?q?A0E9AAAs/Z1dh+iAioBlHAEBAQEBBwEBEQEEBAEBgWcHA?=
 =?us-ascii?q?QELAYIagUYvKoxFYIVZgWqKIIoIhSiBPzQRAQEBAQEBAQEBBgEBGBUCAQEBA?=
 =?us-ascii?q?YQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwkIKYU0DINGOzABA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQsBDQEbHQEDAgkBA?=
 =?us-ascii?q?QUQOwMeAhEBBQEcBxIFHYMAgWoBAx2jYoEDPIwlFgUBF4J+BYEEgzsKGScNZ?=
 =?us-ascii?q?oE8AgcSgSIBhzSDPIEdgheBRIMdghqCP4VRBI0BBJ99QQeCJYYmimuECBuCO?=
 =?us-ascii?q?otBOYsMLY4AijCPBgIKBwYPI4EvghJNI4EBgjtQEBSBTwwXg1CKb1iBBQM7k?=
 =?us-ascii?q?yIBAQ?=
X-IPAS-Result: =?us-ascii?q?A0EiAAC/951dh0O0hNFlHAEBAQEBBwEBEQEEBAEBgWcHA?=
 =?us-ascii?q?QELAYIagUQxKoxFYIVagWo5iWeKCIUogT80EQEBAQEBAQEBAQYBARgUAQIBA?=
 =?us-ascii?q?QEBhD6CUiM0CQ4CAQIJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQgphTQMg0Y7M?=
 =?us-ascii?q?AEBAQEBAQEBAQEBAQEBAQEBAQEBFQItVCkBARkCAQMBAg8VCwENARsdAQMCC?=
 =?us-ascii?q?QEBBRA7Ax4CEQEFARwHEgUdgwCBagEDHaNRgQM8jCUWBQEXgn4FgQSDPAoZJ?=
 =?us-ascii?q?w1mgTwCBxKBIgGHNIM8gR2CF4FEgx2CGoI/hVEEjQEEn31BB4IlhiaKa4QIG?=
 =?us-ascii?q?4I6i0E5iwwtjgCKMI8GAgoHBg8jgS+CEk0jgQGCO1AQFIFPDBeDUIpvJjKBB?=
 =?us-ascii?q?QEBATuTIgEB?=
X-IronPort-AV: E=Sophos; i="5.67,277,1566885600"; d="scan'208"; a="287121772"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="369166763"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="369107645"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="369066100"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="413879194"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="369063259"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="413814065"
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
 bh=K+mqc0t3Nlu8bab/TVJ1eaLU6XWlAP9g+g7Mhy2/IA0=;       
 b=S52/DQUrN3Tn2HRa5gqMihOqgbe1Liu8OtXWHcNMxLZctjQPqrICZhLpuduYhfqM0L        
 z+SbBEi+KJ/ijpkXuI8p5oEu/QfFUW/cIn90a1MDKu18xBOUvOICdYr3P7NY/xSCSSvM        
 fqxoLlswFRcTKIZxRqPbzbs9fT5zo25Qxz5hIlVlNw0njUPb6sZHd+MUBqEtokUdkLFG        
 l3ebcy0gzjNTu9UC94TxH9c7PnzXGZfwL2aeLFHyJ/iusQsiZOB8y9xBp+9fTl2orokP        
 ynQQK3odPQlNAZv/Nb9AmKs1jd+WMNj6I/guwgpHHy8jnkOCB9BQri2mDxyA/SLWh2jl        
 /N+g==
X-Gm-Message-State: APjAAAXoco7l0mOBbeEs5yZl+q9sbczny1/NRMjm9lVuDfoKqWxPYo/Q 
 9Z+AduRnHw23pkldWngzCjY=
X-Google-Smtp-Source: APXvYqyTdihKmP0wweAmZbBJJLG3kMltnVd9xh+NlSJKrkcQxZaqhyv/+WAalRZ92gtbIUt8RCCnXA==
X-Received: by 2002:a0d:d606:: with SMTP id y6mr3136517ywd.30.1570634866649;
 Wed, 09 Oct 2019 08:27:46 -0700 (PDT)
From: "William Breathitt Gray" <vilhelm.gray@gmail.com>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>
Subject: [PATCH v17 08/14] gpio: pcie-idio-24: Utilize for_each_set_clump8
 macro
Date: Wed,  9 Oct 2019 11:27:06 -0400
Message-Id: d5d22fa9809dcf8330f4381dbe7e7ca37990e79f.1570633189.git.vilhelm.gray@gmail.com
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570633189.git.vilhelm.gray@gmail.com>
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
X-MS-Exchange-Organization-ExpirationStartTime: 09 Oct 2019 17:28:27.1668 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: 373b1ed0-c758-4b44-e39a-08d74cde1860
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-Forefront-Antispam-Report: CIP:128.138.128.233; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:SKN; SFS:; DIR:INB; SFP:; SCL:-1; SRVR:BL0PR03MB4275; H:ipmx7.colorado.edu;
 FPR:; SPF:None; LANG:en; ; SKIP:1; 
X-MS-Exchange-Organization-AuthSource: BY2NAM01FT055.eop-nam01.prod.protection.outlook.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-OriginatorOrg: colorado.edu
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 373b1ed0-c758-4b44-e39a-08d74cde1860
X-MS-TrafficTypeDiagnostic: BL0PR03MB4275:|BL0PR03MB4275:
X-MS-Exchange-Organization-SCL: -1
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-Microsoft-Antispam: BCL:0;
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2019 17:28:26.8976 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 373b1ed0-c758-4b44-e39a-08d74cde1860
X-MS-Exchange-CrossTenant-Id: 3ded8b1b-070d-4629-82e4-c0b019f46057
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3ded8b1b-070d-4629-82e4-c0b019f46057; Ip=[128.138.128.233];
 Helo=[ipmx7.colorado.edu]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR03MB4275
X-MS-Exchange-Transport-EndToEndLatency: 01:19:59.9797796
X-MS-Exchange-Processed-By-BccFoldering: 15.20.2347.014
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; ex:0; auth:0; dest:I;
 ENG:(750127)(520002050)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?wxATeCy88AdFlV564NoFoaIEjP7EkqvVWOzmAX8Aj9VHyIZDe5U9lWgbqVsf?=
 =?us-ascii?Q?I/CoSaNBbw7MIdcx3yWwPcIGhSKnIFNWbDlKLK806HwX4UNafTl4QGPZ0SG0?=
 =?us-ascii?Q?PtbKsOowBrleJVJmkcuLeUg80dnTvoVIoFj4NxR2ucbKTDE+TfCPHT7lB/iy?=
 =?us-ascii?Q?ttQVogf0rKcyH0l3CEgwjtQmp/Gy8qRHMvse9fon2NjuxMkvsVmEcTswZL+P?=
 =?us-ascii?Q?fh5sn1qxHHORIoOMCpGEAswyMAwtdW6wg7sdCRdUx/2AV5OgYDubfC2iX4RN?=
 =?us-ascii?Q?fY+EKn24SA6xE4lxK4upBpTBNplgou1YE0QFf7Rs2D+gZzg6K3qksQ9ndAcg?=
 =?us-ascii?Q?Gc4EQaqgkKRRfJQRAgZefHMMxa96vzfXJ4AVqkN+kwYDZB/fcmWqxOxtK+g3?=
 =?us-ascii?Q?GuJsotV1gVnaL+qfMJQsV9tciXZ4viX7aWPlaizvJPiqW8GUx1ucfWKL8DAt?=
 =?us-ascii?Q?tolOijGqV2aa7nj6mAG6UdNKgXYcZxCauyctPYhIxM6EtTJoNFM7NAonXSTa?=
 =?us-ascii?Q?xKij+t9oDYmfyNDRhjkovp/3CHksJC+WiIZjFPgDqxq3VxJKQyurwooyEDK5?=
 =?us-ascii?Q?ua3DbSiQmpKxun43tp19LWmqhAX4rpTm8V5gFoYetDG9YmV2ontiNdUpr8Ba?=
 =?us-ascii?Q?IVM99/XxjO0C1ZF/C31RxW3Og3nyre/E/xo3nH0q/a5Tmnpb3pMyaCrbNjj6?=
 =?us-ascii?Q?Q4nfPCXPaYij61y4kV5fUPkn+5ssrb0zvJd8504RtoZj+LUGNGGaPsCi5Ptx?=
 =?us-ascii?Q?NAcngE+F06Dsg/NSS3TYe9U/Ig1KYxUBmjErf2/vIU5W/UXWpfkzyt3yEp05?=
 =?us-ascii?Q?YiUhabumheCcU7b/TN64BFUl5+SlQoCQUs07iDEt9sJqeElAT9/zLy93Bp+n?=
 =?us-ascii?Q?NMSkNIphnOEeNKAV+UronMx5uUJwQSLlzMx7hf+uaW3cW1leo0/CDwhSljRE?=
 =?us-ascii?Q?zQq70yYtV9WvxUdxJgph8h99JouWDxdt2aFR6wSp+4jU0lKOuMYaVbTwHp0a?=
 =?us-ascii?Q?Rq85PgPYG6zcOnEPGw3JRKj00zO6Rh57YK/ndvIoWLczmlpstF77j1ZS0tUq?=
 =?us-ascii?Q?ifglr15tPOo0UHAgL91qGDO0amAX2+b9g38Xs3k1Yv6vkIgK+Jg=3D?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_172748_108080_C361C3DC 
X-CRM114-Status: UNSURE (   5.20  )
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
 drivers/gpio/gpio-pcie-idio-24.c | 109 ++++++++++++-------------------
 1 file changed, 40 insertions(+), 69 deletions(-)

diff --git a/drivers/gpio/gpio-pcie-idio-24.c b/drivers/gpio/gpio-pcie-idio-24.c
index 52f1647a46fd..924ec916b358 100644
--- a/drivers/gpio/gpio-pcie-idio-24.c
+++ b/drivers/gpio/gpio-pcie-idio-24.c
@@ -198,52 +198,34 @@ static int idio_24_gpio_get_multiple(struct gpio_chip *chip,
 	unsigned long *mask, unsigned long *bits)
 {
 	struct idio_24_gpio *const idio24gpio = gpiochip_get_data(chip);
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
 		&idio24gpio->reg->out0_7, &idio24gpio->reg->out8_15,
 		&idio24gpio->reg->out16_23, &idio24gpio->reg->in0_7,
 		&idio24gpio->reg->in8_15, &idio24gpio->reg->in16_23,
 	};
+	size_t index;
+	unsigned long port_state;
 	const unsigned long out_mode_mask = BIT(1);
 
 	/* clear bits array to a clean slate */
 	bitmap_zero(bits, chip->ngpio);
 
-	/* get bits are evaluated a gpio port register at a time */
-	for (i = 0; i < ARRAY_SIZE(ports) + 1; i++) {
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
+		index = offset / 8;
 
 		/* read bits from current gpio port (port 6 is TTL GPIO) */
-		if (i < 6)
-			port_state = ioread8(ports[i]);
+		if (index < 6)
+			port_state = ioread8(ports[index]);
 		else if (ioread8(&idio24gpio->reg->ctl) & out_mode_mask)
 			port_state = ioread8(&idio24gpio->reg->ttl_out0_7);
 		else
 			port_state = ioread8(&idio24gpio->reg->ttl_in0_7);
 
-		/* store acquired bits at respective bits array offset */
-		bits[word_index] |= (port_state << word_offset) & word_mask;
+		port_state &= gpio_mask;
+
+		bitmap_set_value8(bits, port_state, offset);
 	}
 
 	return 0;
@@ -294,59 +276,48 @@ static void idio_24_gpio_set_multiple(struct gpio_chip *chip,
 	unsigned long *mask, unsigned long *bits)
 {
 	struct idio_24_gpio *const idio24gpio = gpiochip_get_data(chip);
-	size_t i;
-	unsigned long bits_offset;
+	unsigned long offset;
 	unsigned long gpio_mask;
-	const unsigned int gpio_reg_size = 8;
-	const unsigned long port_mask = GENMASK(gpio_reg_size, 0);
-	unsigned long flags;
-	unsigned int out_state;
 	void __iomem *ports[] = {
 		&idio24gpio->reg->out0_7, &idio24gpio->reg->out8_15,
 		&idio24gpio->reg->out16_23
 	};
+	size_t index;
+	unsigned long bitmask;
+	unsigned long flags;
+	unsigned long out_state;
 	const unsigned long out_mode_mask = BIT(1);
-	const unsigned int ttl_offset = 48;
-	const size_t ttl_i = BIT_WORD(ttl_offset);
-	const unsigned int word_offset = ttl_offset % BITS_PER_LONG;
-	const unsigned long ttl_mask = (mask[ttl_i] >> word_offset) & port_mask;
-	const unsigned long ttl_bits = (bits[ttl_i] >> word_offset) & ttl_mask;
-
-	/* set bits are processed a gpio port register at a time */
-	for (i = 0; i < ARRAY_SIZE(ports); i++) {
-		/* gpio offset in bits array */
-		bits_offset = i * gpio_reg_size;
-
-		/* check if any set bits for current port */
-		gpio_mask = (*mask >> bits_offset) & port_mask;
-		if (!gpio_mask) {
-			/* no set bits for this port so move on to next port */
-			continue;
-		}
 
-		raw_spin_lock_irqsave(&idio24gpio->lock, flags);
+	for_each_set_clump8(offset, gpio_mask, mask, ARRAY_SIZE(ports) * 8) {
+		index = offset / 8;
 
-		/* process output lines */
-		out_state = ioread8(ports[i]) & ~gpio_mask;
-		out_state |= (*bits >> bits_offset) & gpio_mask;
-		iowrite8(out_state, ports[i]);
+		bitmask = bitmap_get_value8(bits, offset) & gpio_mask;
 
-		raw_spin_unlock_irqrestore(&idio24gpio->lock, flags);
-	}
+		raw_spin_lock_irqsave(&idio24gpio->lock, flags);
 
-	/* check if setting TTL lines and if they are in output mode */
-	if (!ttl_mask || !(ioread8(&idio24gpio->reg->ctl) & out_mode_mask))
-		return;
+		/* read bits from current gpio port (port 6 is TTL GPIO) */
+		if (index < 6) {
+			out_state = ioread8(ports[index]);
+		} else if (ioread8(&idio24gpio->reg->ctl) & out_mode_mask) {
+			out_state = ioread8(&idio24gpio->reg->ttl_out0_7);
+		} else {
+			/* skip TTL GPIO if set for input */
+			raw_spin_unlock_irqrestore(&idio24gpio->lock, flags);
+			continue;
+		}
 
-	/* handle TTL output */
-	raw_spin_lock_irqsave(&idio24gpio->lock, flags);
+		/* set requested bit states */
+		out_state &= ~gpio_mask;
+		out_state |= bitmask;
 
-	/* process output lines */
-	out_state = ioread8(&idio24gpio->reg->ttl_out0_7) & ~ttl_mask;
-	out_state |= ttl_bits;
-	iowrite8(out_state, &idio24gpio->reg->ttl_out0_7);
+		/* write bits for current gpio port (port 6 is TTL GPIO) */
+		if (index < 6)
+			iowrite8(out_state, ports[index]);
+		else
+			iowrite8(out_state, &idio24gpio->reg->ttl_out0_7);
 
-	raw_spin_unlock_irqrestore(&idio24gpio->lock, flags);
+		raw_spin_unlock_irqrestore(&idio24gpio->lock, flags);
+	}
 }
 
 static void idio_24_irq_ack(struct irq_data *data)
-- 
2.23.0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
