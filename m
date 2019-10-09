Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE55AD535A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 02:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cZkOV/ZDGjUD8DsUcB1aKeFIcukQQeXVJ/ezTWOzVcg=; b=BdYFocqXzk1uU6
	Dhq0kk38GHm4hiwwMz8PWiowz8JZ8n10KIubVC2PokbnjCBiV3Wbcv+dFkKjkOViDlfHiN618PYSa
	sKqg7pv43ao6Ep8aHj4PZBYCSchYGKz7rOYh8FZG95jcPCGX98DDgQDLnJgyQDRkbu1wr6Kc8LMqL
	LJFSTw0RE7rmL+VYubi4OLwzOj8mtlbC1en4nr0gY1j0UG76X7AU283De6aQHrOoMKl7U0muYTYeA
	Iuow0ZMl0pDW50I7ksZt5+KueGCNGujfigmRlTasC0XEQCBfEaf+e2f7D7HvhHcTQIoc/rkBDFM5N
	U1Km8v/90uwfQVK76vGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJRSk-0005sL-Lt; Sun, 13 Oct 2019 00:10:18 +0000
Received: from listssympa-test.colorado.edu ([128.138.129.156])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJRSO-0005s0-Gk
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 00:09:57 +0000
Received: from listssympa-test.colorado.edu (localhost [127.0.0.1])
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/sympa) with ESMTPS id
 x9D09k9b018756
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 12 Oct 2019 18:09:46 -0600
Received: (from root@localhost)
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/submit) id
 x9D09jtq018748; Sat, 12 Oct 2019 18:09:45 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025; 
 h=from:to:cc:subject:date:message-id:in-reply-to:references 
 :mime-version:content-transfer-encoding;       
 bh=+D/uU8MO7mShW9teASkMb7bJZjWkGz/G9NDBF9ekIAA=;       
 b=M6XRUjfZq39AjkcgPSUAdckM2+dSQa7UVUtap+gSKdeq297uOsrTQOStLUzvs00Qrb        
 606E6Wl/7AIVW+481GiVFj9U70JbVhcT4rJQhU8u0cdjRd/ahDVXc08IZfHlfsRisU65        
 HUf/gtgrZDf8ucFfmS7yer7Q2ZO4chbV49OgeG+21rgNRnhnrhWYgbBCAc/TInIbmwv/        
 1kQeiD7tPqfWieHEf4TGMLOkmFlM8tdMHUxPbTMWXppeJrqD/PuAwT34w/ZYKtG9VlRn        
 zeCV/UDX85wFycgwSfM7h2+qKSN4ukBHcA7y8FcnEjOH1cWoWnqsTz0WE5j6yXxO/LoN        
 Tf5g==
Received: from CY1PR03MB2362.namprd03.prod.outlook.com (2603:10b6:a03:54::15)
 by BYAPR03MB4376.namprd03.prod.outlook.com with HTTPS via
 BYAPR02CA0038.NAMPRD02.PROD.OUTLOOK.COM; Wed, 9 Oct 2019 18:55:40 +0000
Received: from MWHPR03CA0011.namprd03.prod.outlook.com (2603:10b6:300:117::21)
 by
 CY1PR03MB2362.namprd03.prod.outlook.com (2a01:111:e400:c616::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.17; Wed, 9 Oct
 2019 18:15:54 +0000
Received: from SN1NAM01FT040.eop-nam01.prod.protection.outlook.com
 (2a01:111:f400:7e40::209) by MWHPR03CA0011.outlook.office365.com
 (2603:10b6:300:117::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Wed, 9 Oct 2019 18:15:54 +0000
Received: from ipmx3.colorado.edu (128.138.67.74) by
 SN1NAM01FT040.mail.protection.outlook.com (10.152.65.222) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384)
 id 15.20.2347.16 via Frontend Transport; Wed, 9 Oct 2019 18:15:54 +0000
Received: from mx-spsc.colorado.edu (HELO mx.colorado.edu) ([128.138.67.77]) by
 mx.colorado.edu with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019
 11:24:36 -0600
Received: from ipmx7.colorado.edu ([128.138.128.233]) by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 10:49:31 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 10:18:29 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:57:43 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:46:58 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:39:01 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:32:51 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:29:57 -0600
Received: from vger.kernel.org ([209.132.180.67]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:28:02 -0600
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand id
 S1731826AbfJIP2B (ORCPT <rfc822; michael.gilroy@colorado.edu>);
 Wed, 9 Oct 2019 11:28:01 -0400
Received: from mail-yw1-f66.google.com ([209.85.161.66]:38417 "EHLO       
 mail-yw1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org       
 with ESMTP id S1731800AbfJIP16 (ORCPT       
 <rfc822; linux-kernel@vger.kernel.org>); Wed, 9 Oct 2019 11:27:58 -0400
Received: by mail-yw1-f66.google.com with SMTP id s6so959687ywe.5; Wed, 09 Oct
 2019 08:27:58 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])        by smtp.gmail.com with ESMTPSA id
 g40sm611863ywk.14.2019.10.09.08.27.55        (version=TLS1_3
 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);        Wed, 09 Oct 2019
 08:27:56 -0700 (PDT)
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
IronPort-SDR: bUchB8toSS5K8ljLi+twllpgogXACWhN6qkV1A4KX7KODq4yEWjG3sj4B3xxLQONL3UKPbsivT
 1pzDOZMKfTFFAJrzwBDJ1s3YmSbal+oGA=
IronPort-SDR: ZdyhlKxnDKGdRsSj5/A49eXLCvAgUpSsOcFkqh+uoiTobRTdJQuqcFiDbH3k2B2QnhAM2Pjihk
 +EZSkV/RkQ6IbVh7B2p0OkVY4zQIBtrgE=
IronPort-SDR: awum2qQaZww8NSi+qd4ZGeMamS7gcYDcfVM7gJo2diCB2em8410n0pyzhH7ucaqOvejiCcNNPt
 ERqo+y2NazGeIsyQEdsdg0GzbfpSOzyHA=
IronPort-SDR: KpT2QR0OACkBXngivOq2YGQir4lkPkscJVOoKPbdkMMY/rDQklbHIM85Fg/7YU1NzdaobmUTlS
 BWZEbxMcxTP8T4Eky6vAEoJ6qbaCMGlZE=
IronPort-SDR: CZrfTOYhGcUklj+siyM6wj8rvssau7cMQJXvsq3pQ+zh8DSgMIO89raVZa8EsC2BW5HXuWVayS
 gcONulmRKuaSVDRAr0fjNWjczLq3c+H9c=
IronPort-SDR: CsPc+dYdanS2Q2K4Vn/8o+Qcd3KymTYbb8/RCUSPN1OJqB9FLtfPGWobZ9MF7s+qb09CoyNtVR
 gCKS+Hh7m9wXQdWvciqH8xVQbXHLsByok=
IronPort-SDR: qMhJk9GnjJ6wyFn3MLxlN2CmvoxVPb0dDYe8/xFampwIimMW4kcjCjQkLgzQbTI1RP9WXANP46
 LJbRragezQOW+7BuuTEJUgybMGWw3R2Sw=
IronPort-SDR: AvblTxL4EgLrGJEfEVkAbrxMAG4tO9DeqBvGKxvPF4VwbRbf7TXM6TdsBXjhq1aZ0S68jrM6bs
 oVaLAf8V4v70J3X+2Lp1D6Qan2vU50dgc=
IronPort-SDR: 4DhIaaqX6jAPUpputKMkZZqhtfF9I+W3eXMHSeI91BY1knBVQqi9WcFr9QgYCr9oa1pK1yJarK
 haSRyYX8eRtLS1Kl1lLcwnaYySbTUV5lk=
IronPort-PHdr: =?us-ascii?q?9a23=3ACLOvJRcu3ov4KZ8J7uQsYMdOlGMj4uimEi00z9?=
 =?us-ascii?q?8KlbtKb62//pPkYhyCt+s41QyBVNDB8PsBkOrf6f2+CiQLtIyMtHkSfZALTR?=
 =?us-ascii?q?IBgNUbk19FYobNQQWzZLaiY3k1Gc1DUBlu+HToeVMAQp6nOQSK+CDhiFxaUl?=
 =?us-ascii?q?23fUI9buSgFJTVipar0LK58M/Ifg9KiTGhM797MBjkqAjKrcAZjM5jJvQwzF?=
 =?us-ascii?q?7Tr2NMaqFKwjFyKFyehRv67cqrmfwru2wY87ppv4YSVKT/cuEmQKZDDTMgYW?=
 =?us-ascii?q?sy4tHmswWGURGG4GASX39TnxxDBATE6h6pO/W5+mOy/qI1kCOaaI7aCq0JCR?=
 =?us-ascii?q?GFsKJQSCC5lCouDD0c+j7dqP5ys6F0slWO9jpT6aCFbYK0HdMrLca/NZtSDS?=
 =?us-ascii?q?IJFo5bAgkfMrmBbYU9FrFQFORbpIbFnGYnoRC9IFPvCNjWw2B1uELq1LV53N?=
 =?us-ascii?q?8CHQzfhl1/AvUVqkjti+7pEJoAT/vtlJDSx1ChJ7sekX+1oMCALEh/jK+zWf?=
 =?us-ascii?q?UvWOvv9gpzR1rqj2u+q93YYGu33NoNuFTH9chZVd//ljYspwNLrn+mxusSuo?=
 =?us-ascii?q?KR1qMnxHDA+z5DwZ0Ie4DdKgYzKZbsWNMY/wGnOcx5Xsw4cU1m6Dsx5LMDgs?=
 =?us-ascii?q?GqcTJV8c4V4ELUa/a5L9mv7R/MF7zIOzhevnRlfqi/uCe9+2KL4+a7auiy8V?=
 =?us-ascii?q?xPsTQC97uE/jhFn1SbooDeScJw/2v+xQ6W2T/S58FpLxwIuo//DJ0k7LoVxo?=
 =?us-ascii?q?YflGT+Dhf8pGDJvLeOe2c+48Tv0/nOfYm9+oDbBb5Xli6vDKAUnKndSaxwek?=
 =?us-ascii?q?BGFyDT6+mX6vre0X2pHapkn/Y5jZLXlc/af4cChZWfXxJW+KYowkmuXxmt1v?=
 =?us-ascii?q?kaulleJ21CRxSelLT7Y27jffKmHMevpBOIlxEOpbiOdvWpSt2FZkTNzbi0KO?=
 =?us-ascii?q?U1+wtd0g011ddF+9dOB6ocJO6mQkbqr4+CVE0QLhC0zuD7Cd50yoIZXye1D7?=
 =?us-ascii?q?SENL/J7wDa4/JpKO6IY5UctDG7JvQ4tLbijn48zEcUZrLhnYAWZ3axAul8Lg?=
 =?us-ascii?q?2HbGDtjNYMHSZCvgc3QOHwzlzXeTFWbne2Gak74zw=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AmQzBXxMT2LTnvasWNq8l6mtUO3oLmJTReyML45?=
 =?us-ascii?q?46gq5PdaL9r8mwIhmGtr1k2UXSVMDA6/se1rSF+6u1Q2EE6IaMvDcYfZhFRx?=
 =?us-ascii?q?IJ2qB010RoSIbNQQX3efHvZi0+Ws9FUQwt5CThaRELQZ6kOg63wDX6pXZaUl?=
 =?us-ascii?q?23NV97POPwSJLV3c+8hfuv8Z/eaBkaiDOhbOF3IQ6tpArc88ga04pkb7w80h?=
 =?us-ascii?q?/Y52dPKf5by25yKFSYkg2ZhI/4tNYru2wY86Ak9stNFLv3Zb85SroKBzMgL2?=
 =?us-ascii?q?0z+Ij3rxDFVgWC/D4RVG4RnhtODFugjlmyFt+5+mOyvOoomwXdIPCmaJdrXA?=
 =?us-ascii?q?+i0PZ3RTbTiwINaDQbwmPoieNiy40Khj6LiU1ywK/9SdTGUZg2NuuVNZtSDW?=
 =?us-ascii?q?AUe5hhbRFDDLGlNNomDekKMt5jkqDxrFgr91iyPjClW97R9yNBnjz55o423v?=
 =?us-ascii?q?17QF7b+xc6I+spi2jwkcfrL/9KaPq/qcuAhX2LJ7sekX+jsNblLC8l5q6lfI?=
 =?us-ascii?q?xPMpaBkGYuKS3H32jP8a7vATOe6rgXkVGb0rp9DemjiVQr7AhxjgafzZ98q7?=
 =?us-ascii?q?vHpoYb0WrF7hgnneNXbZXwAAYzKZbsMKZe8C6GOJFEbs1yXmpGtiMBlawLo8?=
 =?us-ascii?q?GCJhotlJ8nzSCDOtuIfqfLuEv5W8CrJzd+nnJaSb21rT2b+g+c6+vdXMyrzh?=
 =?us-ascii?q?EvzGIN2pGE/jhFn0XQ08WGZqRhxl6v5jeC9y3dtt1rBGQTlq/1L7tx3rIVtq?=
 =?us-ascii?q?cDiU7/OxDGgF37rrWPWgIc58G317+7ffLUl7yAGN5Kjjv4V8Zm0oT3Saxwek?=
 =?us-ascii?q?AcUkOlvtmQ5O2+4mPoS7pVtfMTzamD84n5HuJHu62TIwR8jZdzxR25IjWB8I?=
 =?us-ascii?q?0Ton44KkteRADfsKW0OQ/fEODfStO4pTHO2H8jj7iOdvWpPpuQIS2Ww//xOL?=
 =?us-ascii?q?dn7EhEzxAviMpS/I9QFuQZKenoCRWr5vXFEh80NRC1yO/7CdJ7k7kTQn+LHr?=
 =?us-ascii?q?THb/HXoRmD4eYoOeCAY8kYtCuuY/Qm5vu7lXYighddZqim25ILdWq1VuprOU?=
 =?us-ascii?q?SXYHfgw58BHG4GsxB4TbnCh1iLUDoVbHG3Ug=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3Aot7n8Rd8MALbmmnKv85XDHqxlGMj4uimEi00z9?=
 =?us-ascii?q?8KlbtKb62//pPkYhyCt+s41QyBVNDB8PsBkOrf6f2+CiQLtIyMtHkSfZALTR?=
 =?us-ascii?q?IBgNUbk19FYobNQQWzZLaiY3k1Gc1DUBlu+HToeVMAQp6nOQSK+CDhiFxaUl?=
 =?us-ascii?q?23fUI9buSgFJTVipar0LK58M/Ifg9KiTGhM797MBjkqAjKrcAZjM5jJvQwzF?=
 =?us-ascii?q?7Tr2NMaqFKwjFyKFyehRv67cqrmfwru2wY87ppv4YSVKT/cuEmQKZDDTMgYW?=
 =?us-ascii?q?sy4tHmswWGURGG4GASX39TnxxDBATE6h6pO/W5+mOy/qI1kCOaaI7aCq0JCR?=
 =?us-ascii?q?GFsKJQSCC5lCouDD0c+j7dqP5ys6F0slWO9jpT6aCFbYK0HdMrLca/NZtSDS?=
 =?us-ascii?q?IJFo5bAgkfMrmBbYU9FrFQFORbpIbFnGYnoRC9IFPvCNjWw2B1uELq1LV53N?=
 =?us-ascii?q?8CHQzfhl1/AvUVqkjti+7pEJoAT/vtlJDSx1ChJ7sekX+1oMCALEh/jK+zWf?=
 =?us-ascii?q?UvWOvv9gpzR1rqj2u+q93YYGu33NoNuFTH9chZVd//ljYspwNLrn+mxusSuo?=
 =?us-ascii?q?KR1qMnxHDA+z5DwZ0Ie4DdKgYzKZbsWNMY/wGnOcx5Xsw4cU1m6Dsx5LMDgs?=
 =?us-ascii?q?GqcTJV8c4V4ELUa/a5L9mv7R/MF7zIOzhevnRlfqi/uCe9+2KL4+a7auiy8V?=
 =?us-ascii?q?xPsTQC97uE/jhFn1SbooDeScJw/2v+xQ6W2T/S58FpLxwIuo//DJ0k7LoVxo?=
 =?us-ascii?q?YflGT+Dhf8pGDJvLeOe2c+48Tv0/nOfYm9+oDbBb5Xli6vDKAUnKndSaxwek?=
 =?us-ascii?q?BGFyDT6+mX6vre0X2pHapkn/Y5jZLXlc/af4cChZWfXxJW+KYowkmuXxmt1v?=
 =?us-ascii?q?kaulleJ21CRxSelLT7Y27jffKmHMevpBOIlxEOpbiOdvWpSt2FZkTNzbi0KO?=
 =?us-ascii?q?U1+wtd0g011ddF+9dOB6ocJO6mQkbqr4+CVE0QLhC0zuD7Cd50yoIZXye1D7?=
 =?us-ascii?q?SENL/J7wDa4/JpKO6IY5UctDG7JvQ4tLbijn48zEcUZrLhnYAWZ3axAul8Lg?=
 =?us-ascii?q?2HbGDtjNYMHSZCvgc3QOHwzlzXeTFWbne2Gak74zw=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0HkAQBtIJ5dfU1DioBPFoJBghuBZBK?=
 =?us-ascii?q?NT5tshSiBP0UBAQEBAQEBAQEGAQEtAgEBAQGEPoJ1NgcOAwIJAQEBAwECAgE?=
 =?us-ascii?q?FAgEBAgIQAQEJFgiFaYNGOzABAQEBAQEBAQEBAQEBAQEBAQEBARUCgQEpARo?=
 =?us-ascii?q?DAwECDxULAQ0BGx0BAwIJAQEFECAbAx4CEQEFARwHEgUdhUYBAy6kD4EDPIw?=
 =?us-ascii?q?lFgUBF4J+BYEEgzgKGScNZoE8AgcSDohJgzyDNIFEgx2EAViFV60GQQeCJYY?=
 =?us-ascii?q?mjnMbjXuLRS2OAJk2AgoHBg8jgTYOgX1NI4EBgwsQFJAxgV0DO49YAQE?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0FvAABiEp5dbemAioBPFhwBAQEBAQc?=
 =?us-ascii?q?BAREBBAQBAYFpBQEBCwGCGgOBQy8qjSWFWYFqiiCKCIUogT8vFgEBAQEBAQE?=
 =?us-ascii?q?BAQYBARgVAgEBAQGEPoJSIzYHDgIBAgkBAQEDAQEBAgEFAgEBAgIQDQsJBiu?=
 =?us-ascii?q?FNAyDRjswAQEBAQEBAQEBAQEBAQEBAQEBAQEVAi1UKQEBGQIBAwECDxULAQ0?=
 =?us-ascii?q?BGx0BAwIJAQEFECAbAx4CEQEFARwHEgUdhGoBAx2jfoEDPIwlFgUBF4J+BYE?=
 =?us-ascii?q?EgzkKGScNZoE8AgcSgSIBhzSDPIEdgheBRIMdghqBZ1iFUQSNBZ99QQeCJYY?=
 =?us-ascii?q?mimuECBuNe4tFLY4AijCPBgIKBwYPI4E2DoF9TSOBAYI7UBAUgU8MF4NQim9?=
 =?us-ascii?q?YgQUDO5MiAQE?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0FNAADP+51dh0O0hNFPFhwBAQEBAQc?=
 =?us-ascii?q?BAREBBAQBAYFpBQEBCwGCGoFEMSqNJYVZgWo5iWeKCIUogT8vFgEBAQEBAQE?=
 =?us-ascii?q?BAQYBARgUAQIBAQEBhD6CUiM2Bw4CAQIJAQEBAwEBAQIBBQIBAQICEAEBAQo?=
 =?us-ascii?q?LCQgphTQMg0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQItVCkBARkCAQMBAg8?=
 =?us-ascii?q?VCwENARsdAQMCCQEBBRAgGwMeAhEBBQEcBxIFHYMAgWoBAx2jXYEDPIwlFgU?=
 =?us-ascii?q?BF4J+BYEEgz0KGScNZoE8AgcSgSIBhzSDPIEdgheBRIMdghqBZ1iFUQSNBZ9?=
 =?us-ascii?q?9QQeCJYYmimuECBuNe4tFLY4AijCPBgIKBwYPI4E2DoF9TSOBAYI7UBAUgU8?=
 =?us-ascii?q?MF4NQim8mMoEFAQEBO5MiAQE?=
X-IPAS-Result: =?us-ascii?q?A0HkAQBtIJ5dfU1DioBPFoJBghuBZBKNT5tshSiBP0UBA?=
 =?us-ascii?q?QEBAQEBAQEGAQEtAgEBAQGEPoJ1NgcOAwIJAQEBAwECAgEFAgEBAgIQAQEJF?=
 =?us-ascii?q?giFaYNGOzABAQEBAQEBAQEBAQEBAQEBAQEBARUCgQEpARoDAwECDxULAQ0BG?=
 =?us-ascii?q?x0BAwIJAQEFECAbAx4CEQEFARwHEgUdhUYBAy6kD4EDPIwlFgUBF4J+BYEEg?=
 =?us-ascii?q?zgKGScNZoE8AgcSDohJgzyDNIFEgx2EAViFV60GQQeCJYYmjnMbjXuLRS2OA?=
 =?us-ascii?q?Jk2AgoHBg8jgTYOgX1NI4EBgwsQFJAxgV0DO49YAQE?=
X-IPAS-Result: =?us-ascii?q?A0FvAABiEp5dbemAioBPFhwBAQEBAQcBAREBBAQBAYFpB?=
 =?us-ascii?q?QEBCwGCGgOBQy8qjSWFWYFqiiCKCIUogT8vFgEBAQEBAQEBAQYBARgVAgEBA?=
 =?us-ascii?q?QGEPoJSIzYHDgIBAgkBAQEDAQEBAgEFAgEBAgIQDQsJBiuFNAyDRjswAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEVAi1UKQEBGQIBAwECDxULAQ0BGx0BAwIJAQEFE?=
 =?us-ascii?q?CAbAx4CEQEFARwHEgUdhGoBAx2jfoEDPIwlFgUBF4J+BYEEgzkKGScNZoE8A?=
 =?us-ascii?q?gcSgSIBhzSDPIEdgheBRIMdghqBZ1iFUQSNBZ99QQeCJYYmimuECBuNe4tFL?=
 =?us-ascii?q?Y4AijCPBgIKBwYPI4E2DoF9TSOBAYI7UBAUgU8MF4NQim9YgQUDO5MiAQE?=
X-IPAS-Result: =?us-ascii?q?A0FNAADP+51dh0O0hNFPFhwBAQEBAQcBAREBBAQBAYFpB?=
 =?us-ascii?q?QEBCwGCGoFEMSqNJYVZgWo5iWeKCIUogT8vFgEBAQEBAQEBAQYBARgUAQIBA?=
 =?us-ascii?q?QEBhD6CUiM2Bw4CAQIJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQgphTQMg0Y7M?=
 =?us-ascii?q?AEBAQEBAQEBAQEBAQEBAQEBAQEBFQItVCkBARkCAQMBAg8VCwENARsdAQMCC?=
 =?us-ascii?q?QEBBRAgGwMeAhEBBQEcBxIFHYMAgWoBAx2jXYEDPIwlFgUBF4J+BYEEgz0KG?=
 =?us-ascii?q?ScNZoE8AgcSgSIBhzSDPIEdgheBRIMdghqBZ1iFUQSNBZ99QQeCJYYmimuEC?=
 =?us-ascii?q?BuNe4tFLY4AijCPBgIKBwYPI4E2DoF9TSOBAYI7UBAUgU8MF4NQim8mMoEFA?=
 =?us-ascii?q?QEBO5MiAQE?=
X-IronPort-AV: E=Sophos; i="5.67,277,1566885600"; d="scan'208"; a="369389541"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="369320126"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="286726093"
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
 bh=+D/uU8MO7mShW9teASkMb7bJZjWkGz/G9NDBF9ekIAA=;       
 b=mnRUMoeAiKH+pNpo4CxoVSDIMGnFWRLt/yxZhbKxVw9rchURr/lsvSLvQsk0LP3e7V        
 HMWhPwNBEaLPtQbQpKYAOZxUJII64ztBxsxpexdt8C7hGkCUAgBRIqQ0TY9t6ejFPcDW        
 ShTpKE1gEy+Ex/RQlinJ0mpmTL8DEScijH392EsW1osRKXiqAD4FjLDU2GaKEBVBEA1c        
 23huAZ04BomRfVZyRA88WQYupsC2oOXrMfymCf4KW/VOM4ABSEtA0CW/mauFyWXdTXGU        
 OyX+5c9fuhF/Ueg2sFbNAMSNaxwD8Fnhj3s4ciWvsOkATFD2QDITVlmzlDjj8WEBp7Qn        
 JYrA==
X-Gm-Message-State: APjAAAXJNvZm7jfKjHyABZSoC4K9MJeTslTI40QFdsXhNBwL3udT9aTJ 
 Hj+h/AHwTFIPdwTaZ96meuM=
X-Google-Smtp-Source: APXvYqz0Hy2G/IPQYpNgQ2+jg5eXDNlvGay9DVAaikzPXiFu+PnfuZUhGx/byXO6uT9JyUj3SwB22A==
X-Received: by 2002:a81:1ec8:: with SMTP id e191mr2994034ywe.447.1570634877541; 
 Wed, 09 Oct 2019 08:27:57 -0700 (PDT)
From: "William Breathitt Gray" <vilhelm.gray@gmail.com>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>
Subject: [PATCH v17 14/14] gpio: pca953x: Utilize the for_each_set_clump8 macro
Date: Wed,  9 Oct 2019 11:27:12 -0400
Message-Id: ec3264f6b21c61d3a04e929cc0f84be485decdaa.1570633189.git.vilhelm.gray@gmail.com
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570633189.git.vilhelm.gray@gmail.com>
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
X-MS-Exchange-Organization-ExpirationStartTime: 09 Oct 2019 18:15:54.2976 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: ff4db429-e190-4e7c-92a2-08d74ce4b966
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-Forefront-Antispam-Report: CIP:128.138.67.74; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:SKN; SFS:; DIR:INB; SFP:; SCL:-1; SRVR:CY1PR03MB2362; H:ipmx3.colorado.edu;
 FPR:; SPF:None; LANG:en; ; SKIP:1; 
X-MS-Exchange-Organization-AuthSource: SN1NAM01FT040.eop-nam01.prod.protection.outlook.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-OriginatorOrg: colorado.edu
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ff4db429-e190-4e7c-92a2-08d74ce4b966
X-MS-TrafficTypeDiagnostic: CY1PR03MB2362:|CY1PR03MB2362:
X-MS-Exchange-Organization-SCL: -1
X-MS-Oob-TLC-OOBClassifiers: OLM:2000;
X-Microsoft-Antispam: BCL:0;
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2019 18:15:54.0674 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ff4db429-e190-4e7c-92a2-08d74ce4b966
X-MS-Exchange-CrossTenant-Id: 3ded8b1b-070d-4629-82e4-c0b019f46057
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3ded8b1b-070d-4629-82e4-c0b019f46057; Ip=[128.138.67.74];
 Helo=[ipmx3.colorado.edu]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR03MB2362
X-MS-Exchange-Transport-EndToEndLatency: 00:39:49.3435915
X-MS-Exchange-Processed-By-BccFoldering: 15.20.2347.014
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; ex:0; auth:0; dest:I;
 ENG:(750127)(520002050)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?UVgnFLwxTQRhX2P4PWuFb7Qj/tb5RsrCjUBoMiHDILjGzxD4r1xyi38WEE07?=
 =?us-ascii?Q?ajXJFM9XX3Bb+voToO+t+UrWfWSz10/OqlANFqq9EdAkQN9WwZmkusYcdN7z?=
 =?us-ascii?Q?ltDEDP2GLpum7LwjC066appjfPiQZMbmuw9gyL5PmOVjIzuzD8koRETdcr1B?=
 =?us-ascii?Q?c5E/LTXvhXIwszFVD8nKYueC5BsKJaZoDoxvwx400ucp8Co5qgiB/jEfmExO?=
 =?us-ascii?Q?IDbNGjYmiLMktd6YFgtAFrnwGN5ZQUoIa2mg1goImCJiNkiJ7qvz1yC0NLxI?=
 =?us-ascii?Q?lfcCwZV1bFDUloPH6Af0pOCzf+FWsL184JzI8D2rt85AgXEeqwjIZpUQkN9s?=
 =?us-ascii?Q?rdjDPqZOhcVKnsqLHUkKMjguspx3yHh0LNO3WcV/k3duwC/geqaZ9yaRfxNC?=
 =?us-ascii?Q?se+4AJvpn7BD+4i2T5YVA/MC5QiHG/W0K0sAszyHf0pYraNdyWzZUdbJzgVo?=
 =?us-ascii?Q?wdkKZmuolD82CtbaOn+lNAVb8QeLcROUkkQyCMPpu4jj5amRUVYAwZa3mUWX?=
 =?us-ascii?Q?z5ozVF+a0gJlKAs/+cud9ny8cVUWVvJ4LZmukl8CbtB0l5EdLaYs4NEJBFtB?=
 =?us-ascii?Q?MixXgeCSv5ONoCDeK5Ad5YWrKVEVjaTEWl4GkylBaXtvxhlBrvPW5NT1j69d?=
 =?us-ascii?Q?9OPDm/pphjbNxoVSD6Ob33/Y5tgn3X8Tm68mHXepsgQNXVDJEMfTZQQ5S9MG?=
 =?us-ascii?Q?Mv9fCChSHnYz9kFJNZWZ/MN+7P0okEYlpbLDvICS2uJBOx/snuRZUJQMidaS?=
 =?us-ascii?Q?6yMGxyTlxkMLZgdtjYcRTFqk/niGSgFdzMBML3p4XY3GpFU3K9FYgin9hdBR?=
 =?us-ascii?Q?6A4WOS6lP/WK+9LF4Pqs/ZOGjY4eSQoxh/cEPsPQOxrRBEkW/lBnRaTAg+hD?=
 =?us-ascii?Q?9X4x/W1C8fj98lsG45LN4Eczvoe6WYAAhp7t+ETGyALncyZzGTz8g1W7nyHj?=
 =?us-ascii?Q?CqtGyjP2nvSDMtnmbUDuAODAFU3bOZvMvIEfiNiGtcCE7FDBaLxNBo0SKpJC?=
 =?us-ascii?Q?dAGJqvsfQHRtQ7ITCd+MYLJhpYFK6ed7aY2XlEER3OdKzqN7/hnmXUCWkE+1?=
 =?us-ascii?Q?g/xt73ItCOul38xq/3lZbaUyGLegC1tlyKfMn8SZWSxqtWpOTFZy8k73rYKT?=
 =?us-ascii?Q?JMoVljUG0RC6W9gkzt8gNeC9pAWsnCPms3V4BzY6wpiIK/LMrfz/Mug=3D?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_170956_655919_0D8E98C0 
X-CRM114-Status: UNSURE (   6.17  )
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

Replace verbose implementation in set_multiple callback with
for_each_set_clump8 macro to simplify code and improve clarity.

Cc: Phil Reid <preid@electromag.com.au>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/gpio/gpio-pca953x.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/gpio/gpio-pca953x.c b/drivers/gpio/gpio-pca953x.c
index de5d1383f28d..10b669b8f27d 100644
--- a/drivers/gpio/gpio-pca953x.c
+++ b/drivers/gpio/gpio-pca953x.c
@@ -10,6 +10,7 @@
 
 #include <linux/acpi.h>
 #include <linux/bits.h>
+#include <linux/bitops.h>
 #include <linux/gpio/driver.h>
 #include <linux/gpio/consumer.h>
 #include <linux/i2c.h>
@@ -456,7 +457,8 @@ static void pca953x_gpio_set_multiple(struct gpio_chip *gc,
 				      unsigned long *mask, unsigned long *bits)
 {
 	struct pca953x_chip *chip = gpiochip_get_data(gc);
-	unsigned int bank_mask, bank_val;
+	unsigned long offset;
+	unsigned long bank_mask;
 	int bank;
 	u8 reg_val[MAX_BANK];
 	int ret;
@@ -466,15 +468,10 @@ static void pca953x_gpio_set_multiple(struct gpio_chip *gc,
 	if (ret)
 		goto exit;
 
-	for (bank = 0; bank < NBANK(chip); bank++) {
-		bank_mask = mask[bank / sizeof(*mask)] >>
-			   ((bank % sizeof(*mask)) * 8);
-		if (bank_mask) {
-			bank_val = bits[bank / sizeof(*bits)] >>
-				  ((bank % sizeof(*bits)) * 8);
-			bank_val &= bank_mask;
-			reg_val[bank] = (reg_val[bank] & ~bank_mask) | bank_val;
-		}
+	for_each_set_clump8(offset, bank_mask, mask, gc->ngpio) {
+		bank = offset / 8;
+		reg_val[bank] &= ~bank_mask;
+		reg_val[bank] |= bitmap_get_value8(bits, offset) & bank_mask;
 	}
 
 	pca953x_write_regs(chip, chip->regs->output, reg_val);
-- 
2.23.0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
