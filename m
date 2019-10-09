Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F05C1D5358
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 02:04:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FeSoqGZb6qaeM2ntlg4F62xwzo2zZyvIDoqgK9oMmtU=; b=l5Q80PQoaMiC0D
	z1d+rP3OBl2E8BIEOgjib4A5lJ32Tt5it/iEchDzbWwAjOrXTURAf9sIXVlJSq+cnm20gFsyk9qbW
	qnfrtxaAUeJU/5NiPrl4vcKWH6KT9wiae0cHiCJF+dvn7haShyWG95r7+KFM5oLVLgGe8vlfpQOk6
	Wv80gdj2aft5MtvCFdVaqM5xYs51DEwKZoF4WLTyw6/tEnHMKQBqHrtyranEiNhzJ38D6hPx1oEpx
	FHwE4DkBuRuXNe2A0bSiI2rSNpE3FR+Yr4ANPHJlXoENBeGy0VtqnN7ZPFWXgv36etHtUWfIt+NXR
	k1/PtrqL5xOSbL6cD6Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJRN6-000436-PP; Sun, 13 Oct 2019 00:04:28 +0000
Received: from listssympa-test.colorado.edu ([128.138.129.156])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJRMy-00042e-3v
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 00:04:21 +0000
Received: from listssympa-test.colorado.edu (localhost [127.0.0.1])
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/sympa) with ESMTPS id
 x9D03heI006237
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 12 Oct 2019 18:03:44 -0600
Received: (from root@localhost)
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/submit) id
 x9D03hla006216; Sat, 12 Oct 2019 18:03:43 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025; 
 h=from:to:cc:subject:date:message-id:in-reply-to:references 
 :mime-version:content-transfer-encoding;       
 bh=mBleGApOd9DY5AB30uyK9JEv+41JBB1+F0GtLYOX3MQ=;       
 b=GAaw4kQJZ1t/twSnzYGj1Ye+b2rWZfgSQigTMAkCGXs7faRp9kbxzc+viRchH0iOUw        
 jLQduPFHhg85mw9CZKGs3ZHhhcP9FaLFjY7wCSatMrfXGPdGXT9se2sj+/BL99Q2YvBc        
 eyDG9o7N4Ton97yqY0ikl+XbQCOVNJW1GjnMWMNz+ysIw1dfIuCgoRxG5vWC6TmUuqjA        
 on7aOT8hdds8tMqafPa8Np3qYdKvVkxrARA6ZLjvfnUqUMdn7xzUcrMz8yEoVs6EQA2x        
 SbfDGVkowS8BcodygfJLou5vUSTzh7Ua2TWnGZSWh9VyAFMnVaTfPX2A90XPh5J0yFAF        
 /rpQ==
Received: from BL0PR03MB4017.namprd03.prod.outlook.com (2603:10b6:a02:ee::24)
 by BYAPR03MB4376.namprd03.prod.outlook.com with HTTPS via
 BYAPR02CA0011.NAMPRD02.PROD.OUTLOOK.COM; Wed, 9 Oct 2019 20:29:11 +0000
Received: from BN6PR03CA0004.namprd03.prod.outlook.com (2603:10b6:404:23::14)
 by
 BL0PR03MB4017.namprd03.prod.outlook.com (2603:10b6:208:2f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.25; Wed, 9 Oct
 2019 18:02:49 +0000
Received: from SN1NAM01FT057.eop-nam01.prod.protection.outlook.com
 (2a01:111:f400:7e40::204) by BN6PR03CA0004.outlook.office365.com
 (2603:10b6:404:23::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.17 via Frontend
 Transport; Wed, 9 Oct 2019 18:02:49 +0000
Received: from ipmx8.colorado.edu (128.138.67.85) by
 SN1NAM01FT057.mail.protection.outlook.com (10.152.65.202) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384)
 id 15.20.2327.20 via Frontend Transport; Wed, 9 Oct 2019 18:02:47 +0000
Received: from ipmx1.colorado.edu ([128.138.128.231]) by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 11:13:56 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 10:35:54 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 10:10:14 -0600
Received: from ipmx8.colorado.edu ([128.138.67.85])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 09:53:15 -0600
Received: from ipmx1.colorado.edu ([128.138.128.231]) by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 09:46:34 -0600
Received: from ipmx8.colorado.edu ([128.138.67.85])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 09:38:54 -0600
Received: from ipmx7.colorado.edu ([128.138.128.233]) by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 09:33:14 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:30:06 -0600
Received: from vger.kernel.org ([209.132.180.67]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:28:14 -0600
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand id
 S1731784AbfJIP1z (ORCPT <rfc822; michael.gilroy@colorado.edu>);
 Wed, 9 Oct 2019 11:27:55 -0400
Received: from mail-yb1-f193.google.com ([209.85.219.193]:39878 "EHLO       
 mail-yb1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org       
 with ESMTP id S1731773AbfJIP1v (ORCPT       
 <rfc822; linux-kernel@vger.kernel.org>); Wed, 9 Oct 2019 11:27:51 -0400
Received: by mail-yb1-f193.google.com with SMTP id v37so863661ybi.6;
 Wed, 09 Oct 2019 08:27:50 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])        by smtp.gmail.com with ESMTPSA id
 g40sm611863ywk.14.2019.10.09.08.27.48        (version=TLS1_3
 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);        Wed, 09 Oct 2019
 08:27:49 -0700 (PDT)
Authentication-Results: spf=none (sender IP is 128.138.67.85)
 smtp.mailfrom=vger.kernel.org; 
 o365.colorado.edu; dkim=pass (signature was verified)
 header.d=gmail.com;o365.colorado.edu; dmarc=pass action=none
 header.from=gmail.com;
Received-SPF: None (protection.outlook.com: vger.kernel.org does not designate
 permitted sender hosts)
Authentication-Results-Original: mx.colorado.edu;
 dkim=pass (signature verified)
 header.i=@gmail.com
IronPort-SDR: fSqN2xLHqFJXfDCC/gK3EnfpEjqFgPiHdcQ3z2Qwh2lH5VHKuSLhirEybyYcU2snhx4ELfNIDP
 hIp9DosB/ctpeEr13EfG+V7yf1m7h0Edw=
IronPort-SDR: LC372SaZczpirxYx8N4DOARKmRIGuHOXKLt8ntZQz8eUC97weDYBYrChlErXcDKwzFafKiN7kn
 zkBGKDBsgJuZuX3nCqKk1putOTMSwrrP4=
IronPort-SDR: 6yZXPd+7xP/WccFtDmvXMPj3X40UT09DUUEVwDMdRdB1Uzr/aqp8Ef9DwqtL0iakjtArGHLrYx
 tMIOEKvpym1FIl/ac9ddG2+4GpxRSQtq0=
IronPort-SDR: uPeJrRW3zQUeP6IR4kINX4btWTghnpAguu7oiJvd7l2gxwptoNkALUqqtfbL32EoFT0BFrk46n
 HILLSjEG+Fb8dzVBjD//yxliI/Pi6494A=
IronPort-SDR: 3jmoGLY1Ptv/J2yx+TATlmmMA4Y8cWjee66cdZO5hLWVCKsvIwiRNImqb4Td/xPUtzrlv/YoUn
 SIA6sa9/9mPrFwFVZj4GtT9ySGOCMZfOk=
IronPort-SDR: VodifD9Oo8ojXhXg9zFu3ypTEUu/kMhnaND2XYx8hhZcvu88g83E1EucTVBsVHLMosbPddwjNg
 3oa4hgm9Rylxv2C5nQFDXqrlkRlWYO6N8=
IronPort-SDR: 9pwcJB9Bb//hdaKzScqFWi5E7S2zoCAzNt4T0yqQC55jfAGjEWS1wIBvpThS+BvhF7UmtyjMZ+
 ooMRGTyMIEMnJMZYmXzQkA1dts6kOpi2A=
IronPort-SDR: 0Pus0+PlWjA5FCMuoRdUT8R+d3RbUoMMOvg2SwBlEwvQajXeicNgM8qZhUBuvS2kZBt1oQ1DEd
 +A4VjRE1F8EgXDhXgI97eehFPFkeyLA9o=
IronPort-SDR: ALHFyNkYtudR91h3knTtWsOc4LNMU1hnOo4K5dhzOkCDfeVOAxdC3upd7qchDerJD2ndnwbw45
 lJu/W5ZTLvEaPw0tcNRoZNNjrMT/goOH8=
IronPort-PHdr: =?us-ascii?q?9a23=3AIqdTzBc8yJQxLOxomUFGBRJ4lGMj4uimEi00z9?=
 =?us-ascii?q?8KlbtKb62//pPkYhyCt+s41QyBVNDB8PsBkOrf6f2+CiQLtIyMtHkSfZALTR?=
 =?us-ascii?q?IBgNUbk19FYobNQQWzZLaiY3k1Gc1DUBlu+HToeVMAQp6nOQSK+CDhiFxaUl?=
 =?us-ascii?q?23fUI9buSgFJTVipar0LK58M/Ifg9KiTGhM797MBjkqAjKrcAZjM5jJvQwzF?=
 =?us-ascii?q?7Tr2NMaqFKwjFyKFyehRv67cqrmfwru2wY87ppv4YSVKT/cuEmQKZDDTMgYW?=
 =?us-ascii?q?sy4tHmswWGURGG4GASX39TnxxDBATE6h6pO/W5+mOy/qI1kCOaaMjcSb0bcC?=
 =?us-ascii?q?yF4/ZHeULBonxfKi8aoUP6lI8s1YBxikviiURQ36rlR7HOEcMrLca/NZtSDS?=
 =?us-ascii?q?IJFo5bAgNoC5zgbLItPbMdevpHlI/vlnQM9CqzRgP2HtzdxDBzv3754YgT0M?=
 =?us-ascii?q?8OIRqZ0gUaB4MNumTGp5brNZ0ZUcDtzY710lChJ7sekX+1oMCAcDQYrey0c5?=
 =?us-ascii?q?JwfpqMzFZ+PDHmoU7Lm6zlPzith8oEl0aZ3rV/ftmml0s9pTFemjSA9vt9kY?=
 =?us-ascii?q?STnYBWjXrgpHRAmrcrD9bdKgYzKZbsWNMY/yyLG6QnRZwEH11vvndl26Q34Z?=
 =?us-ascii?q?+4eGs6wq0M4CD5ScPeXIqOxy3GcvTSMCxZmytpdpOirBm1y1iPl/PDfZeI1W?=
 =?us-ascii?q?tXtyhs97uE/jhFn1SbooCATKR02Xvx2TqDzFDPz/hNL3g9xYzDcIcQzp0uqJ?=
 =?us-ascii?q?kDq235N3HEvEfogqmrb3gB9u73+/baaa/DtM+NGohKkV/TC410iqndSaxwek?=
 =?us-ascii?q?BGFyDTwu6y+JLd/krme+Vghfo6g6bXkrTdOJkFm5WFEQ8K74951ym5IAWd79?=
 =?us-ascii?q?RJo2guAndDRhu7gbDZYXifeMDADaqd20WCuRkOpbiOdvWpSt2FZj/ZiI60KO?=
 =?us-ascii?q?U1+wtd0g011ddF+9dOB6ocJO6mQkbqr4+CVE0QLhC0zuD7Cd50yoIZXye1D7?=
 =?us-ascii?q?SENL/J7wDa4/JpKO6IY5UctDG7JvQ4tLbijn48zEcUZrLhnYAWZ3axAul8Lg?=
 =?us-ascii?q?2HbGDtjNYMHSZCvgc3QOHwzlzXeTFWbne2Gak74zw=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AB9K44B+Gxl/6Uf9uRHKK80MuRw1ilqv9OhMc9p?=
 =?us-ascii?q?sgjeweL/a9qs2xdEWK/+5kyUTJVN+GtaEMgL/MvqTpSWEMpoyMtHkSfZAfMn?=
 =?us-ascii?q?1NwY1e10RoSMLQBkjyLfqsZCs/T4xZAQU9pi/iaRIIS6OcLxWa6jX6pXYSTx?=
 =?us-ascii?q?vlMg8nOuOnEYWAlNm91e2558/fahlF1j+weqh7IxjzrAmDt89Tm4Z6Lrd01h?=
 =?us-ascii?q?ybuHZGdv5bw2hlPjfx1160ro/4tNYroSFRvv9k6cNaSqT9efYzSrpEATI6dn?=
 =?us-ascii?q?wv7cvwuxTZCAaJ7XwQU2MZwX8qS0CNpFmyFt/7sn7/nO5w9wCCGsGnYYFpcB?=
 =?us-ascii?q?75t7p6a07KpTlEa2cb2kuOyeIoo75/kTWR/DlGlt2xAsndfLI2NuuVd4Y1bG?=
 =?us-ascii?q?NeAsVodR4YHsSgcLAJHdsuP79posr3/UExnxWxPjCtC9/K4zxjqU/tgqMz6f?=
 =?us-ascii?q?xwEgvWzgdjAdM0u3T09NTSCbh3M6j9hOGAhX2LJ/Fy4Dvg0Kboch9x/PSTDJ?=
 =?us-ascii?q?lCUuXKknsPFwPOtgS+oKjLPQLKyc82unS+9eRQetqjpF4b+hp8+COthYAGrt?=
 =?us-ascii?q?iYv9gk1HrPkEcxiM59bZXwAAZ2cPKLQZwPkX2mMI0nHdI7cjlpuyJ5+rc/kr?=
 =?us-ascii?q?mFWgo1kbslwTvgTtqVMJmTww26WOiwPBx3g0h1V++huD3szU2d1/T+f6zWmB?=
 =?us-ascii?q?4C5mIN2pGEsXZS3jvvusiLRuAt4mK40Di33lD18rpdEEwXi5TYO4QI+JdupL?=
 =?us-ascii?q?4Rr0rFIzbLvUnw07+ES04+3/r4+sngXK64i6a1bZ8R6Em2euxm0oT3Sd8yPC?=
 =?us-ascii?q?QhYWuc5t/s/rbk8Vz2TpduieBrjJTijILaevkS/JKGBSBn6bkjuiiuJhmD1u?=
 =?us-ascii?q?oRoXc/HAhsKUq3t4i0GQnfDtnWaJX3yxzk2H8jj7iBJKXYV8CeZmiGka3me6?=
 =?us-ascii?q?568VIZ0gco0NRDsopdEapSeqihc1LttNHeEh4yOhC1xOCiMthmy4cCQjzQUK?=
 =?us-ascii?q?qJdqjVtViS7+4oZeSAedxdtDX8Lq097uX1xT8imFAbdLW0x5Zfdn2iH/pnLk?=
 =?us-ascii?q?nYKXrhi9sMCyEL6yIxSeXrjBuJVjte?=
IronPort-PHdr: =?us-ascii?q?9a23=3ATPmRWhCBFXy45RmyphQAUyQJP3V1l5bVG0s49J?=
 =?us-ascii?q?MjlrtSc6OlocS/blKKvKYlhQrTRoye8PJN0beI4OjrDHYN5Z+RvXxFapFIXg?=
 =?us-ascii?q?8IhZZz/URoSIbNQQWzIKvlaiU7GIJJU1o2t2ruaxAMRp+mPQCBxx/6pXZaUl?=
 =?us-ascii?q?23fQogKP7yH9zOiJa83LKp5pfRbg5U1ja0fb4gKRittgzeu4wXjdljLOMrxw?=
 =?us-ascii?q?PNsz5UfLZMyG1lP1+VlBvng6X4tNYru2wY87pz8s9FXODkcr4jTLteXj8hNX?=
 =?us-ascii?q?w44tGuqQPKSxCB62FZX2MdlRZJBQeWiXOyFt+5+mOy/uB9jSywOcDZZKgTVW?=
 =?us-ascii?q?WO3vpCYkSwlTYkZhwU7iKL0+5apvsYjkqOuzhO5L6PRbjAZ58cNuuVNZtSDS?=
 =?us-ascii?q?JLC+l4XjMdAbqeXdITSPYeBuBKnqb//moD7hHkHzaeCuzU8z5Hulrf3oYV4/?=
 =?us-ascii?q?9+Hwj8xF0jFcIcuzfKre/+NIdKUMeI08yqhX2LJ7sekX+16qzxfg0Zj9GMUu?=
 =?us-ascii?q?ItdNWA4nsMOBievHWQqYfdbh2c8soPgjeExNFpSce1hV4Ikw1ekgT+3cp2kY?=
 =?us-ascii?q?uKwagxmwH9rxRn6o1QR5XwAAYzKZbsWJZBmw7LMNRQHv8lRTA3qT8LkrwFvd?=
 =?us-ascii?q?2LdhEh76oB5SGGRP6BVretxACgRf2wPm50ilN4U724vQadrFaf4bPAU/SpyV?=
 =?us-ascii?q?Rjy0gN2pGE/jhFn1TU7JeObcct/kutwmaT8hna5NlNcWYszrPqJ70//L0gjL?=
 =?us-ascii?q?MpmBrxOi3olkPLlZKzekN76vqV4P7CcOX3i5iiLNFZsyikIsFM0oT3Saxwek?=
 =?us-ascii?q?BGZGKV1cuC17r8xh3TS7JGn/I4sI3erc3EGP8ntK7mPgYP7rklxCSEMDf37s?=
 =?us-ascii?q?Uxs1wBElt5diq31aG4Y2H2IK3aVeaRqnrJ8n8jj7iOdvWpStLXNkGWxeSpbf?=
 =?us-ascii?q?N88Ula0A0p0ZVF6olJDq1UOPvoQRyr7o7xEwM5Pgqowu3uFNR60MYkVHmSBr?=
 =?us-ascii?q?OCbvyAtE/O7eUrJPOFaIhTtTrgeLAp5P/r2GcwgkRVPbKo0p0edG2iE7x4Ll?=
 =?us-ascii?q?+Yb3vhjpZJEWoDsgckCu2/oFKHWD9XIX21Wq8=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AyAVHFhxLEtKTQYLXCy+O/D0hRQkC/pjqNwoI44?=
 =?us-ascii?q?YmjLQQIvnx4cG7bwTWsO92hRrSXYyBtqwXw+GDqa3kUHwN7dGbvXQLYJFABH?=
 =?us-ascii?q?pnwY1e10RoSIaJXEL+Jf/uKSc9GZcKTwo/pyjlaBAPRZWbBRWa6jX6pXZaGk?=
 =?us-ascii?q?DxLw1wdPjySIXZ3d+q3eK/8IGBbwxUiWi4bKhpJRq76ATd5MgQxJFvMqIgjw?=
 =?us-ascii?q?fO8GFFdelMyGVjKEn2/V60ro/4tNYru3ZVuvcsstBNS777eKJqRrteEDkgLy?=
 =?us-ascii?q?Up/sTtrhfOV06C4HAbXmQQnUktYUCNpFmyFt+5uCuvs8B51QazJer6HJwFBB?=
 =?us-ascii?q?2ItP92WTy5qgoZdGJg0kv9049e1I1HhCOGl0da+tuHBePdfLI2NuuVNdlPak?=
 =?us-ascii?q?NIQZpSbg5zW5/7c5Q0CfgwEuQBnoS+rQEUkimwCjKVBezT7xZLrVDGxvI02t?=
 =?us-ascii?q?45QALMzB4rXMwPin/UjI30E5oNNIL9hOGAhX2LJ7tU/Q7x9bDmUhAu8ayJQu?=
 =?us-ascii?q?NbQ+n+0hIdNwPFhW3Bh4XBETGkifsmiGGHyvBuZc2Xh0EXl1Bqr2K0xIRroK?=
 =?us-ascii?q?2Y17tP+07u/kAbiM59bZXwAAYzbM+IP8pX6AfGC4xwE5wzWlAwuSU+iY0MgL?=
 =?us-ascii?q?WcQg4o980IxRj6VNmhYcuZ+TP8DeqfACpTi3VfaJ3imSmZr3Sl9/DlVODRsh?=
 =?us-ascii?q?4C5mIN2pGE/ncLiBX01piHRvdmrluEwD+B7wmDzPkfOHE4trTlKI4764QZyK?=
 =?us-ascii?q?g3s1rNGBLvpWD6ivCGZHgv4M26u/XKZYv9+LKlHtVk72O2euxm0oT3SawDOA?=
 =?us-ascii?q?YicFaY/vuHhJfo+kHoT7toqvorz7fki6zIJZsmr/SFPAl64L0c60eBHh6I9d?=
 =?us-ascii?q?ImlEUJFGIfUUPfv7DpZnOWMd7RI5Ldyxzk2H8jj7iOeaf5O8CYfTDT1bb7er?=
 =?us-ascii?q?Bl7FRAjRA+1s1b+8dMA6oac6ipCGbsqNzVCAM4OAWowuHhTe9wzZ4aRXnRXf?=
 =?us-ascii?q?2cIOXZtluP/OsjJK+BaJJG8Dr+Kv1w//f1ljd5gl4Se6C1wIEaIG61BPVoIk?=
 =?us-ascii?q?iVIDLsj94NHH1Mv18WQ+njiVnEWjlWag=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AobvFARzqEXkGnffXCy+O/D0hRQkC/pjqNwoI44?=
 =?us-ascii?q?YmjLQQIvnx4cG7bwTWsO92hRrSXYyBtqwXw+GDqa3kUHwN7dGbvXQLYJFABH?=
 =?us-ascii?q?pnwY1e10RoSIaJXEL+Jf/uKSc9GZcKTwo/pyjlaBAPRZWbBRWa6jX6pXZaGk?=
 =?us-ascii?q?DxLw1wdPjySIXZ3d+q3eK/8IGBbwxUiWi4bKhpJRq76ATd5MgQxJFvMqIgjw?=
 =?us-ascii?q?fO8GFFdelMyGVjKEn2/V60ro/4tNYru3ZVuvcsstBNS777eKJqRrteEDkgLy?=
 =?us-ascii?q?Up/sTtrhfOV06C4HAbXmQQnUktYUCNpFmyFt+5uCuvs8B51QazJer6HJwFBB?=
 =?us-ascii?q?2ItP92WTy5qgoZdGJg0kv9049e1I1HhCOGl0da+tuHBePdfLI2NuuVNdlPak?=
 =?us-ascii?q?NIQZpSbg5zW5/7c5Q0CfgwEuQBnoS+rQEUkimwCjKVBezT7xZLrVDGxvI02t?=
 =?us-ascii?q?45QALMzB4rXMwPin/UjI30E5oNNIL9hOGAhX2LJ7tU/Q7x9bDmUhAu8ayJQu?=
 =?us-ascii?q?NbQ+n+0hIdNwPFhW3Bh4XBETGkifsmiGGHyvBuZc2Xh0EXl1Bqr2K0xIRroK?=
 =?us-ascii?q?2Y17tP+07u/kAbiM59bZXwAAYzbM+IP8pX6AfGC4xwE5wzWlAwuSU+iY0MgL?=
 =?us-ascii?q?WcQg4o980IxRj6VNmhYcuZ+TP8DeqfACpTi3VfaJ3imSmZr3Sl9/DlVODRsh?=
 =?us-ascii?q?4C5mIN2pGE/ncLiBX01piHRvdmrluEwD+B7wmDzPkfOHE4trTlKI4764QZyK?=
 =?us-ascii?q?g3s1rNGBLvpWD6ivCGZHgv4M26u/XKZYv9+LKlHtVk72O2euxm0oT3SawDOA?=
 =?us-ascii?q?YicFaY/vuHhJfo+kHoT7toqvorz7fki6zIJZsmr/SFPAl64L0c60eBHh6I9d?=
 =?us-ascii?q?ImlEUJFGIfUUPfv7DpZnOWMd7RI5Ldyxzk2H8jj7iOeaf5O8CYfTDT1bb7er?=
 =?us-ascii?q?Bl7FRAjRA+1s1b+8dMA6oac6ipCGbsqNzVCAM4OAWowuHhTe9wzZ4aRXnRXf?=
 =?us-ascii?q?2cIOXZtluP/OsjJK+BaJJG8Dr+Kv1w//f1ljd5gl4Se6C1wIEaIG61BPVoIk?=
 =?us-ascii?q?iVIDLsj94NHH1Mv18WQ+njiVnEWjlWag=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AYUpPpxCV6q4VwsMPjW3sUyQJP3V1l5bVG0s49J?=
 =?us-ascii?q?MjlrtSc6OlocS/blKKvKYlhQrTRoye8PJN0beI4OjrDHYN5Z+RvXxFapFIXg?=
 =?us-ascii?q?8IhZZz/URoSIbNQQWzIKvlaiU7GIJJU1o2t2ruaxAMRp+mPQCBxx/6pXZaUl?=
 =?us-ascii?q?23fQogKP7yH9zOiJa83LKp5pfRbg5U1ja0fb4gKRittgzeu4wXjdljLOMrxw?=
 =?us-ascii?q?PNsz5UfLZMyG1lP1+VlBvng6X4tNYru2wY87pz8s9FXODkcr4jTLteXj8hNX?=
 =?us-ascii?q?w44tGuqQPKSxCB62FZX2MdlRZJBQeWiXOyFt+5+mOy/uB9jSywOcDZZKgTVW?=
 =?us-ascii?q?WO3vpCYkSwlTYkZhwU7iKL0+5apvsYjkqOuzhO5L6PRbjAZ58cNuuVNZtSDS?=
 =?us-ascii?q?JLC+l4XjMdAbqeXdITSPYeBuBKnqb//moD7hHkHzaeCuzU8z5Hulrf3oYV4/?=
 =?us-ascii?q?9+Hwj8xF0jFcIcuzfKre/+NIdKUMeI08yqhX2LJ7sekX+16qzxfg0Zj9GMUu?=
 =?us-ascii?q?ItdNWA4nsMOBievHWQqYfdbh2c8soPgjeExNFpSce1hV4Ikw1ekgT+3cp2kY?=
 =?us-ascii?q?uKwagxmwH9rxRn6o1QR5XwAAYzKZbsWJZBmw7LMNRQHv8lRTA3qT8LkrwFvd?=
 =?us-ascii?q?2LdhEh76oB5SGGRP6BVretxACgRf2wPm50ilN4U724vQadrFaf4bPAU/SpyV?=
 =?us-ascii?q?Rjy0gN2pGE/jhFn1TU7JeObcct/kutwmaT8hna5NlNcWYszrPqJ70//L0gjL?=
 =?us-ascii?q?MpmBrxOi3olkPLlZKzekN76vqV4P7CcOX3i5iiLNFZsyikIsFM0oT3Saxwek?=
 =?us-ascii?q?BGZGKV1cuC17r8xh3TS7JGn/I4sI3erc3EGP8ntK7mPgYP7rklxCSEMDf37s?=
 =?us-ascii?q?Uxs1wBElt5diq31aG4Y2H2IK3aVeaRqnrJ8n8jj7iOdvWpStLXNkGWxeSpbf?=
 =?us-ascii?q?N88Ula0A0p0ZVF6olJDq1UOPvoQRyr7o7xEwM5Pgqowu3uFNR60MYkVHmSBr?=
 =?us-ascii?q?OCbvyAtE/O7eUrJPOFaIhTtTrgeLAp5P/r2GcwgkRVPbKo0p0edG2iE7x4Ll?=
 =?us-ascii?q?+Yb3vhjpZJEWoDsgckCu2/oFKHWD9XIX21Wq8=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0F7AACyGp5dbeeAioBPFhwBAQEBAQc?=
 =?us-ascii?q?BAREBBAQBAYFpBQEBCwGCGgWBQi8qjSWFWoFqiiCKCIUoFIErLxYBAQEBAQE?=
 =?us-ascii?q?BAQEGAQEYFQIBAQEBhD6CUiM2Bw4CAQIJAQEBAwEBAQIBBQIBAQICEA0LCQY?=
 =?us-ascii?q?rhTQMg0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQKBASkBARkCAQMBAg8VCwE?=
 =?us-ascii?q?NARsdAQMCCQEBBRAgGwMeAhEBBQEcBxIFHYVGAQMuo32BAzyMJRYFAReCfgW?=
 =?us-ascii?q?BBIM5ChknDWaBPAIHEoEiAYc0gzyBHYIXgUSDHYIagWcIUIVXBI0Fn31BB4I?=
 =?us-ascii?q?lhiaKa4QIG417i0UtjgCKMI8GAgoHBg8jgTYLggBNI4EBgjtQEBSBTwwXg1C?=
 =?us-ascii?q?Kb1gBgQQDO49YAQE?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0GKAAAyAZ5dh1VDioBPFhwBAQEBAQc?=
 =?us-ascii?q?BAREBBAQBAYFpBQEBCwGCGoFGLyqNJYVagWqKIIoIhSgUgVoWAQEBAQEBAQE?=
 =?us-ascii?q?BBgEBGBUCAQEBhD+CUiM2Bw4CAQIJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQg?=
 =?us-ascii?q?phTQMhiECAQMBAg8VCwENARsdAQMCCQEBBRAgGwMeAhEBBQEcBxIFHYMAgWo?=
 =?us-ascii?q?BAx2jXYEDPIwlFgUBF4J+BYEEgzoKGScNZoE8AgcSgSIBhzSDPIEdgheBRIM?=
 =?us-ascii?q?dghqBZwhQhVEEjQWffUEHgiWGJoprhAgbjXuLRS2OAIowjwYCCgcGDyOBNgu?=
 =?us-ascii?q?CAE0jgQGCO1AQFIFPDBeDUIpvWAGBBAM7kyIBAQ?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0GKAADU/p1dh+eAioBPFhwBAQEBAQc?=
 =?us-ascii?q?BAREBBAQBAYFpBQEBCwGCGoFGLyqNJYVZgWqKIIoIhSgUgSsvFgEBAQEBAQE?=
 =?us-ascii?q?BAQYBARgVAgEBAQGEPoJSIzYHDgIBAgkBAQEDAQEBAgEFAgEBAgIQAQEBCgs?=
 =?us-ascii?q?JCCmFNAyDRjswAQEBAQEBAQEBAQEBAQEBAQEBAQEVAi1UKQEBGQIBAwECDxU?=
 =?us-ascii?q?LAQ0BGx0BAwIJAQEFECAbAx4CEQEFARwHEgUdgwCBagEDHaNkgQM8jCUWBQE?=
 =?us-ascii?q?Xgn4FgQSDOgoZJw1mgTwCBxKBIgGHNIM8gR2CF4FEgx2CGoFnCFCFUQSNBZ9?=
 =?us-ascii?q?9QQeCJYYmimuECBuNe4tFLY4AijCPBgIKBwYPI4E2C4IATSOBAYI7UBAUgU8?=
 =?us-ascii?q?MF4NQim9YAYEEAzuTIgEB?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0GKAAAM+p1dh1VDioBPFhwBAQEBAQc?=
 =?us-ascii?q?BAREBBAQBAYFpBQEBCwGCGoFGLyqNJYVagWqKIIoIhSgUgSsvFgEBAQEBAQE?=
 =?us-ascii?q?BAQYBARgVAgEBAQGEPoJSIzYHDgIBAgkBAQEDAQEBAgEFAgEBAgIQAQEBCgs?=
 =?us-ascii?q?JCCmFNAyDRjswAQEBAQEBAQEBAQEBAQEBAQEBAQEVAi1UKQEBGQIBAwECDxU?=
 =?us-ascii?q?LAQ0BGx0BAwIJAQEFECAbAx4CEQEFARwHEgUdgwCBagEDHaNegQM8jCUWBQE?=
 =?us-ascii?q?Xgn4FgQSDPAoZJw1mgTwCBxKBIgGHNIM8gR2CF4FEgx2CGoFnCFCFUQSNBZ9?=
 =?us-ascii?q?9QQeCJYYmimuECBuNe4tFLY4AijCPBgIKBwYPI4E2C4IATSOBAYI7UBAUgU8?=
 =?us-ascii?q?MF4NQim9YAYEEAzuTIgEB?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0GKAADU/p1dh+mAioBPFhwBAQEBAQc?=
 =?us-ascii?q?BAREBBAQBAYFpBQEBCwGCGoFGLyqNJYVZgWqKIIoIhSgUgSsvFgEBAQEBAQE?=
 =?us-ascii?q?BAQYBARgVAgEBAQGEPoJSIzYHDgIBAgkBAQEDAQEBAgEFAgEBAgIQAQEBCgs?=
 =?us-ascii?q?JCCmFNAyDRjswAQEBAQEBAQEBAQEBAQEBAQEBAQEVAi1UKQEBGQIBAwECDxU?=
 =?us-ascii?q?LAQ0BGx0BAwIJAQEFECAbAx4CEQEFARwHEgUdgwCBagEDHaNkgQM8jCUWBQE?=
 =?us-ascii?q?Xgn4FgQSDOgoZJw1mgTwCBxKBIgGHNIM8gR2CF4FEgx2CGoFnCFCFUQSNBZ9?=
 =?us-ascii?q?9QQeCJYYmimuECBuNe4tFLY4AijCPBgIKBwYPI4E2C4IATSOBAYI7UBAUgU8?=
 =?us-ascii?q?MF4NQim9YAYEEAzuTIgEB?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0FNAADP+51dh0O0hNFPFhwBAQEBAQc?=
 =?us-ascii?q?BAREBBAQBAYFpBQEBCwGCGoFEMSqNJYVZgWo5iWeKCIUoFIErLxYBAQEBAQE?=
 =?us-ascii?q?BAQEGAQEYFAECAQEBAYQ+glIjNgcOAgECCQEBAQMBAQECAQUCAQECAhABAQE?=
 =?us-ascii?q?KCwkIKYU0DINGOzABAQEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQI?=
 =?us-ascii?q?PFQsBDQEbHQEDAgkBAQUQIBsDHgIRAQUBHAcSBR2DAIFqAQMdo12BAzyMJRY?=
 =?us-ascii?q?FAReCfgWBBIM9ChknDWaBPAIHEoEiAYc0gzyBHYIXgUSDHYIagWcIUIVRBI0?=
 =?us-ascii?q?Fn31BB4IlhiaKa4QIG417i0UtjgCKMI8GAgoHBg8jgTYLggBNI4EBgjtQEBS?=
 =?us-ascii?q?BTwwXg1CKbyYyAYEEAQEBO5MiAQE?=
X-IPAS-Result: =?us-ascii?q?A0F7AACyGp5dbeeAioBPFhwBAQEBAQcBAREBBAQBAYFpB?=
 =?us-ascii?q?QEBCwGCGgWBQi8qjSWFWoFqiiCKCIUoFIErLxYBAQEBAQEBAQEGAQEYFQIBA?=
 =?us-ascii?q?QEBhD6CUiM2Bw4CAQIJAQEBAwEBAQIBBQIBAQICEA0LCQYrhTQMg0Y7MAEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBFQKBASkBARkCAQMBAg8VCwENARsdAQMCCQEBB?=
 =?us-ascii?q?RAgGwMeAhEBBQEcBxIFHYVGAQMuo32BAzyMJRYFAReCfgWBBIM5ChknDWaBP?=
 =?us-ascii?q?AIHEoEiAYc0gzyBHYIXgUSDHYIagWcIUIVXBI0Fn31BB4IlhiaKa4QIG417i?=
 =?us-ascii?q?0UtjgCKMI8GAgoHBg8jgTYLggBNI4EBgjtQEBSBTwwXg1CKb1gBgQQDO49YA?=
 =?us-ascii?q?QE?=
X-IPAS-Result: =?us-ascii?q?A0GKAAAyAZ5dh1VDioBPFhwBAQEBAQcBAREBBAQBAYFpB?=
 =?us-ascii?q?QEBCwGCGoFGLyqNJYVagWqKIIoIhSgUgVoWAQEBAQEBAQEBBgEBGBUCAQEBh?=
 =?us-ascii?q?D+CUiM2Bw4CAQIJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQgphTQMhiECAQMBA?=
 =?us-ascii?q?g8VCwENARsdAQMCCQEBBRAgGwMeAhEBBQEcBxIFHYMAgWoBAx2jXYEDPIwlF?=
 =?us-ascii?q?gUBF4J+BYEEgzoKGScNZoE8AgcSgSIBhzSDPIEdgheBRIMdghqBZwhQhVEEj?=
 =?us-ascii?q?QWffUEHgiWGJoprhAgbjXuLRS2OAIowjwYCCgcGDyOBNguCAE0jgQGCO1AQF?=
 =?us-ascii?q?IFPDBeDUIpvWAGBBAM7kyIBAQ?=
X-IPAS-Result: =?us-ascii?q?A0GKAADU/p1dh+eAioBPFhwBAQEBAQcBAREBBAQBAYFpB?=
 =?us-ascii?q?QEBCwGCGoFGLyqNJYVZgWqKIIoIhSgUgSsvFgEBAQEBAQEBAQYBARgVAgEBA?=
 =?us-ascii?q?QGEPoJSIzYHDgIBAgkBAQEDAQEBAgEFAgEBAgIQAQEBCgsJCCmFNAyDRjswA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEVAi1UKQEBGQIBAwECDxULAQ0BGx0BAwIJA?=
 =?us-ascii?q?QEFECAbAx4CEQEFARwHEgUdgwCBagEDHaNkgQM8jCUWBQEXgn4FgQSDOgoZJ?=
 =?us-ascii?q?w1mgTwCBxKBIgGHNIM8gR2CF4FEgx2CGoFnCFCFUQSNBZ99QQeCJYYmimuEC?=
 =?us-ascii?q?BuNe4tFLY4AijCPBgIKBwYPI4E2C4IATSOBAYI7UBAUgU8MF4NQim9YAYEEA?=
 =?us-ascii?q?zuTIgEB?=
X-IPAS-Result: =?us-ascii?q?A0GKAAAM+p1dh1VDioBPFhwBAQEBAQcBAREBBAQBAYFpB?=
 =?us-ascii?q?QEBCwGCGoFGLyqNJYVagWqKIIoIhSgUgSsvFgEBAQEBAQEBAQYBARgVAgEBA?=
 =?us-ascii?q?QGEPoJSIzYHDgIBAgkBAQEDAQEBAgEFAgEBAgIQAQEBCgsJCCmFNAyDRjswA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEVAi1UKQEBGQIBAwECDxULAQ0BGx0BAwIJA?=
 =?us-ascii?q?QEFECAbAx4CEQEFARwHEgUdgwCBagEDHaNegQM8jCUWBQEXgn4FgQSDPAoZJ?=
 =?us-ascii?q?w1mgTwCBxKBIgGHNIM8gR2CF4FEgx2CGoFnCFCFUQSNBZ99QQeCJYYmimuEC?=
 =?us-ascii?q?BuNe4tFLY4AijCPBgIKBwYPI4E2C4IATSOBAYI7UBAUgU8MF4NQim9YAYEEA?=
 =?us-ascii?q?zuTIgEB?=
X-IPAS-Result: =?us-ascii?q?A0GKAADU/p1dh+mAioBPFhwBAQEBAQcBAREBBAQBAYFpB?=
 =?us-ascii?q?QEBCwGCGoFGLyqNJYVZgWqKIIoIhSgUgSsvFgEBAQEBAQEBAQYBARgVAgEBA?=
 =?us-ascii?q?QGEPoJSIzYHDgIBAgkBAQEDAQEBAgEFAgEBAgIQAQEBCgsJCCmFNAyDRjswA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEVAi1UKQEBGQIBAwECDxULAQ0BGx0BAwIJA?=
 =?us-ascii?q?QEFECAbAx4CEQEFARwHEgUdgwCBagEDHaNkgQM8jCUWBQEXgn4FgQSDOgoZJ?=
 =?us-ascii?q?w1mgTwCBxKBIgGHNIM8gR2CF4FEgx2CGoFnCFCFUQSNBZ99QQeCJYYmimuEC?=
 =?us-ascii?q?BuNe4tFLY4AijCPBgIKBwYPI4E2C4IATSOBAYI7UBAUgU8MF4NQim9YAYEEA?=
 =?us-ascii?q?zuTIgEB?=
X-IPAS-Result: =?us-ascii?q?A0FNAADP+51dh0O0hNFPFhwBAQEBAQcBAREBBAQBAYFpB?=
 =?us-ascii?q?QEBCwGCGoFEMSqNJYVZgWo5iWeKCIUoFIErLxYBAQEBAQEBAQEGAQEYFAECA?=
 =?us-ascii?q?QEBAYQ+glIjNgcOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwkIKYU0DINGO?=
 =?us-ascii?q?zABAQEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQsBDQEbHQEDA?=
 =?us-ascii?q?gkBAQUQIBsDHgIRAQUBHAcSBR2DAIFqAQMdo12BAzyMJRYFAReCfgWBBIM9C?=
 =?us-ascii?q?hknDWaBPAIHEoEiAYc0gzyBHYIXgUSDHYIagWcIUIVRBI0Fn31BB4IlhiaKa?=
 =?us-ascii?q?4QIG417i0UtjgCKMI8GAgoHBg8jgTYLggBNI4EBgjtQEBSBTwwXg1CKbyYyA?=
 =?us-ascii?q?YEEAQEBO5MiAQE?=
X-IronPort-AV: E=Sophos; i="5.67,277,1566885600"; d="scan'208"; a="371498454"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="414207890"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="371228238"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="414112712"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="371190797"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="286727136"
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
 bh=mBleGApOd9DY5AB30uyK9JEv+41JBB1+F0GtLYOX3MQ=;       
 b=lRSqjhgespL/rfvhdM+XW1i3hXXhn0tqub/DkAQh/C3bH0dv/JpOOllfxr+HhVeCOL        
 +xC9GhZCUrzh5vb53/+mKc94P9mTBqP27ul8IYr31kSKnR/xtNbSdC1vuJ9TQtv3k/R+        
 +zbkh+xvvX/lqhXIzg6WL72/h0n1E7w3iDnqp9WQpcTRitM5t9/o+AhpFtHZqUjh7pZ5        
 F2WLlXkk1KaXZt1QEk3zyikZQsj5Uz19xxZuX3rdr76siOP/FZpimGiWHkIEXWx6ankL        
 +BoB/wiCF1lDmeOVM2Jw50Esztbo96sVm7lrdxw6rFMPaT4H8bEE0Yrq2CqGewoBWJBJ        
 r3ig==
X-Gm-Message-State: APjAAAXMhTs7ckvmSl4vN/RHIPRxLYYEP8gNCJCHlHqMfh32L3SHPdCT 
 vHgg0CzK9Eh0pbnJVtq6Cw8=
X-Google-Smtp-Source: APXvYqwYZQffEOxLcR2DnXodNBQuIf2G4FM0ZYog/FMeKsA3x5ZeM6hVk9B5ifb9KwyjltXl8dzmPA==
X-Received: by 2002:a25:ba84:: with SMTP id s4mr2426092ybg.343.1570634870310;
 Wed, 09 Oct 2019 08:27:50 -0700 (PDT)
From: "William Breathitt Gray" <vilhelm.gray@gmail.com>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>
Subject: [PATCH v17 10/14] gpio: 74x164: Utilize the for_each_set_clump8 macro
Date: Wed,  9 Oct 2019 11:27:08 -0400
Message-Id: ca28331339e17b7c7e3d802ce68d87ca955be7c5.1570633189.git.vilhelm.gray@gmail.com
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570633189.git.vilhelm.gray@gmail.com>
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
X-MS-Exchange-Organization-ExpirationStartTime: 09 Oct 2019 18:02:49.1284 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: 75c85dc6-ac36-48a0-69be-08d74ce2e567
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-Forefront-Antispam-Report: CIP:128.138.67.85; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:SKN; SFS:; DIR:INB; SFP:; SCL:-1; SRVR:BL0PR03MB4017; H:ipmx8.colorado.edu;
 FPR:; SPF:None; LANG:en; ; SKIP:1; 
X-MS-Exchange-Organization-AuthSource: SN1NAM01FT057.eop-nam01.prod.protection.outlook.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-OriginatorOrg: colorado.edu
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 75c85dc6-ac36-48a0-69be-08d74ce2e567
X-MS-TrafficTypeDiagnostic: BL0PR03MB4017:|BL0PR03MB4017:
X-MS-Exchange-Organization-SCL: -1
X-MS-Oob-TLC-OOBClassifiers: OLM:1388;
X-Microsoft-Antispam: BCL:0;
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2019 18:02:47.8803 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 75c85dc6-ac36-48a0-69be-08d74ce2e567
X-MS-Exchange-CrossTenant-Id: 3ded8b1b-070d-4629-82e4-c0b019f46057
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3ded8b1b-070d-4629-82e4-c0b019f46057; Ip=[128.138.67.85];
 Helo=[ipmx8.colorado.edu]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR03MB4017
X-MS-Exchange-Transport-EndToEndLatency: 02:26:24.9934875
X-MS-Exchange-Processed-By-BccFoldering: 15.20.2347.014
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; ex:0; auth:0; dest:I;
 ENG:(750127)(520002050)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?HIHhcSHu3Dhqneu4NKfMecd3C6VxzpS4hfScxb1hBVKuU6RoaEJfpbkoGLhW?=
 =?us-ascii?Q?xzPg6xordCfomBINsCABzBJLxs3d7rG5YAV8+VAY7S9PcVdEIUL8hYcIDHf4?=
 =?us-ascii?Q?XsHQUoe/50yClZ331TAGM2C9pmk0hXZaRaSF0oCLL8ZsAosg/mUBjfL4UWc2?=
 =?us-ascii?Q?CoqpJJb6qoFGVwxWF166PHIuZ5lxxlA3Sa0lxmIG43EGj8m/zAjH9TfA5/kD?=
 =?us-ascii?Q?Km/0pzhKjeJSLmcXkUlUHU0tgG67HdJ/qTTHuxMPE9mNoZVlT/3VZhWFKcyS?=
 =?us-ascii?Q?IytV1TetUQ/CaIKc4x+K9qJYnGji28XF7KM5QYvA+Je/nGEgpzpBc6ELjzPl?=
 =?us-ascii?Q?1scmE9gTtXjIuczn954fKHZB2JQSnSsO8XPJjvaLSRZjq6SFb2gvvv1pFZet?=
 =?us-ascii?Q?315aYXseU9SdnUj7QGy5bJvD3QqOZtbdsvefDGGXsu9yjqA6LuJRrOyBFpbw?=
 =?us-ascii?Q?s52qEEHKgwHVC0hTP6iTvR1qP0UdQryso+zIIeIRa8/1EEcFZ1jvfoDvIfOI?=
 =?us-ascii?Q?/LjW1brZ7AhiBxTtM2TxgRBursdLgA/RveiLvq4cbacvEEnSS+rqoi9vCp9Y?=
 =?us-ascii?Q?RqUor5M8VD1UusdNJ9ewHqi2BiLHIiqAmNoRGOA4U39kegUIJYAL8DaSAffB?=
 =?us-ascii?Q?Rp3+1Gji4CtYRT/ppq8eCdI/OspwoFbuvDV/d5SCBi8w1kYseOPuf7XkTWhy?=
 =?us-ascii?Q?SI09PrYqThYNoAUijBjqUv1aPg+BaG2tdx/J+J7fRhvvfX3M5yws86zw2XVA?=
 =?us-ascii?Q?3568faIMqBCAvtKUxYHQNZWFekoBp4itjX8i8iyPzEEeA9kOm0f2Hww3eekm?=
 =?us-ascii?Q?bBEb8h17SInQRgJh7EDZ4eZVaqqC0Q5d8Kz8g/ed8LW0cwAVBAKh73eNwV9B?=
 =?us-ascii?Q?T1pIv95cnfOdZolY59t3vNZvEEj5e9nAFX24LHINDTSLg6NKSmhAdF0SJphS?=
 =?us-ascii?Q?yUNySHKa3+btZ6q3Hqp/lc9dxm/2z3szsf5L3Nm4FJkFtVU9GYdpku4qySVO?=
 =?us-ascii?Q?uKz4fL6W5mvuEGBUYQUKJVxv/i5yIebXQUeM1B4iBtJN/aAhceOTH0bulNc8?=
 =?us-ascii?Q?5liEUGE1jsDQLEs8ORQewYGFDNYJfJb/j02RfsAPQgEvzrTcATk=3D?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_170420_217427_1749079C 
X-CRM114-Status: UNSURE (   5.26  )
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
 Geert Uytterhoeven <geert+renesas@glider.be>,
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

Replace verbose implementation in set_multiple callback with
for_each_set_clump8 macro to simplify code and improve clarity.

Suggested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Phil Reid <preid@electromag.com.au>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/gpio/gpio-74x164.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpio/gpio-74x164.c b/drivers/gpio/gpio-74x164.c
index e81307f9754e..05637d585152 100644
--- a/drivers/gpio/gpio-74x164.c
+++ b/drivers/gpio/gpio-74x164.c
@@ -6,6 +6,7 @@
  *  Copyright (C) 2010 Miguel Gaio <miguel.gaio@efixo.com>
  */
 
+#include <linux/bitops.h>
 #include <linux/gpio/consumer.h>
 #include <linux/gpio/driver.h>
 #include <linux/module.h>
@@ -72,20 +73,18 @@ static void gen_74x164_set_multiple(struct gpio_chip *gc, unsigned long *mask,
 				    unsigned long *bits)
 {
 	struct gen_74x164_chip *chip = gpiochip_get_data(gc);
-	unsigned int i, idx, shift;
-	u8 bank, bankmask;
+	unsigned long offset;
+	unsigned long bankmask;
+	size_t bank;
+	unsigned long bitmask;
 
 	mutex_lock(&chip->lock);
-	for (i = 0, bank = chip->registers - 1; i < chip->registers;
-	     i++, bank--) {
-		idx = i / sizeof(*mask);
-		shift = i % sizeof(*mask) * BITS_PER_BYTE;
-		bankmask = mask[idx] >> shift;
-		if (!bankmask)
-			continue;
+	for_each_set_clump8(offset, bankmask, mask, chip->registers * 8) {
+		bank = chip->registers - 1 - offset / 8;
+		bitmask = bitmap_get_value8(bits, offset) & bankmask;
 
 		chip->buffer[bank] &= ~bankmask;
-		chip->buffer[bank] |= bankmask & (bits[idx] >> shift);
+		chip->buffer[bank] |= bitmask;
 	}
 	__gen_74x164_write_config(chip);
 	mutex_unlock(&chip->lock);
-- 
2.23.0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
