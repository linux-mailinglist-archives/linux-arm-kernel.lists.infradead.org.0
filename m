Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A68BCD53BB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 03:45:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U8MJpT+P51CB2ZRCYG9URsHqe3Q4jVTLqQMWVSoMBLQ=; b=SsMDUQAevdw8Dr
	NmwHGJr6pLiLf1LZs0w7r9bnusbtAt5m41caN/4UwnwwH857VWVJIbVptNttlpLlpOlmeC575FNVz
	3Du5Vx6dXHV+OCloVKtMaNv3kOyvP2jZc5QeU/TrTXJdngDukRKadaODdZCmbZ/3XpW/buSRXrWzW
	YG/pL+9+h6a4GGOGbpOEUj88GQe5K+kl7bcuCQUVIKf8GxtvjUO1XuItv0jdCUIuY4bI3mZCkmpys
	X44InLyitAVFh4tPGyMn62xFBjLOO5b8mtZjE2TBUG8PrlPJekCG/VJkhEDQefIvXHYu1W9m58mif
	tnZFD2rJU5kIFoOjYw4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJSwg-000343-40; Sun, 13 Oct 2019 01:45:18 +0000
Received: from listssympa-test.colorado.edu ([128.138.129.156])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJSwL-00033d-MM
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 01:44:59 +0000
Received: from listssympa-test.colorado.edu (localhost [127.0.0.1])
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/sympa) with ESMTPS id
 x9D1ik8B001499
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 12 Oct 2019 19:44:46 -0600
Received: (from root@localhost)
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/submit) id
 x9D1ikup001491; Sat, 12 Oct 2019 19:44:46 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025; 
 h=from:to:cc:subject:date:message-id:in-reply-to:references 
 :mime-version:content-transfer-encoding;       
 bh=W+SY6yjQG6ah82xj2QYbshpM9aG1FiA4CAoNvKBotSg=;       
 b=YytU7O4Mr0gz7kyPQD4eZtBeA5dJSUNfBOhztctdYxmLpl7HVtMLdxEx20d9wYV02I        
 T7NN/5qhMHUYYJfhzJKA3JVtpElQDrumt6yQPI2mja+XbTCSpl2V8kCJ7DXU20Q7S6NJ        
 hIzCoosqtECV+MMvbIyPyjs7dsKOgCuOlwL+wCOInPovvX5/0/A1aQGBI6vGS0FA2Vy2        
 UcA1uSnuRf7hgNzuaRIpr9Kh9NEIF34qHnRASpyn8OrRGC4EXuEwGBpYr4jB8Vjm9MfE        
 Fg9IIDFjgDMapqezD9Nz+n/lDgAKFhZxNfbRoRZY7miIbYS/CP7zTCTN3gOlk3d53I99        
 liDg==
Received: from MWHPR03MB2879.namprd03.prod.outlook.com (2603:10b6:a03:60::32)
 by BYAPR03MB4376.namprd03.prod.outlook.com with HTTPS via
 BYAPR07CA0055.NAMPRD07.PROD.OUTLOOK.COM; Wed, 9 Oct 2019 18:28:00 +0000
Received: from BN6PR03CA0077.namprd03.prod.outlook.com (2603:10b6:405:6f::15)
 by
 MWHPR03MB2879.namprd03.prod.outlook.com (2603:10b6:300:120::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.17; Wed, 9 Oct
 2019 17:27:32 +0000
Received: from SN1NAM01FT004.eop-nam01.prod.protection.outlook.com
 (2a01:111:f400:7e40::209) by BN6PR03CA0077.outlook.office365.com
 (2603:10b6:405:6f::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16 via Frontend
 Transport; Wed, 9 Oct 2019 17:27:32 +0000
Received: from ipmx2.colorado.edu (128.138.128.232) by
 SN1NAM01FT004.mail.protection.outlook.com (10.152.64.188) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.2347.16 via Frontend Transport; Wed, 9 Oct 2019 17:27:31 +0000
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 10:47:13 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 10:16:24 -0600
Received: from ipmx4.colorado.edu ([128.138.67.75])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 09:57:26 -0600
Received: from ipmx7.colorado.edu ([128.138.128.233]) by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 09:50:37 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:42:05 -0600
Received: from ipmx4.colorado.edu ([128.138.67.75])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 09:34:51 -0600
Received: from mx-spsc.colorado.edu (HELO mx.colorado.edu) ([128.138.67.77]) by
 mx.colorado.edu with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019
 09:31:34 -0600
Received: from mx-spsc.colorado.edu (HELO mx.colorado.edu) ([128.138.67.77]) by
 mx.colorado.edu with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019
 09:29:17 -0600
Received: from vger.kernel.org ([209.132.180.67]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:28:09 -0600
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand id
 S1731804AbfJIP16 (ORCPT <rfc822; michael.gilroy@colorado.edu>);
 Wed, 9 Oct 2019 11:27:58 -0400
Received: from mail-yw1-f68.google.com ([209.85.161.68]:36961 "EHLO       
 mail-yw1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org       
 with ESMTP id S1731785AbfJIP1z (ORCPT       
 <rfc822; linux-kernel@vger.kernel.org>); Wed, 9 Oct 2019 11:27:55 -0400
Received: by mail-yw1-f68.google.com with SMTP id m7so961733ywe.4; Wed, 09 Oct
 2019 08:27:54 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])        by smtp.gmail.com with ESMTPSA id
 g40sm611863ywk.14.2019.10.09.08.27.52        (version=TLS1_3
 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);        Wed, 09 Oct 2019
 08:27:53 -0700 (PDT)
Authentication-Results: spf=none (sender IP is 128.138.128.232)
 smtp.mailfrom=vger.kernel.org; 
 o365.colorado.edu; dkim=pass (signature was verified)
 header.d=gmail.com;o365.colorado.edu; dmarc=pass action=none
 header.from=gmail.com;
Received-SPF: None (protection.outlook.com: vger.kernel.org does not designate
 permitted sender hosts)
IronPort-SDR: w1HYvGFkt6vTYHXN31sO7n1WhiM/07MDzlxhcnddTuWFZ4E3muHdwVdWSaiTVXFfu6aNXJi8+1
 XpObjoo3J/7XpfyNGFkr1hwb+Npr0tfeM=
IronPort-SDR: cuMNrWAeDRE3MzUWLFsFNH2m/S+SudN1QVhhNxYH7la+4zcngr441Vnbm7MzHAZKpVkmCcyl/q
 9EnzyH6LTRrvvHXI9XeiA92pJdxecUjk8=
IronPort-SDR: wJKkY56jXoEA6bfdns21bhYxBaHh5AxkJXugNQmy7y/l4i+ySLKIrb3HTZK/7/og4rIT00UCBw
 TtA/xybDpyqD4QqiSCjCU7dP2CDP59Ipo=
IronPort-SDR: Wu0vo4722G3rHA519VLv3+OBYY++0YvIK8azplcXygjJIm9xMDg0+T3oTXmVblavnK6XdDi7U3
 A3F3Djadb0jgVpY+v+aeHEVCiYLvYJXzY=
IronPort-SDR: 7c+HnobKpFI1uJhM04truqdBN9/7lhDjHXNcBUZcvwYN7snkGJqk6P0yUqkNi+p0GnzNvJt1Bg
 vqxrukXvbJLiIDn/o2ADznyyXP54+/C0E=
IronPort-SDR: nIV1AKwcDjbE7YzNKxLBySlqf5yYlyqKefZqPu/j8hU1Y+AmmOhCLJZUffJSS7087n3K+5Ib5T
 EWR38xP9LZiBmFTiEU4gKoCd72xG1908A=
IronPort-SDR: QhgLaaB+MKa6VlPk2ArOcVikrBQAse0mBPp6L+tDzMYJ+PdJwGw+tlgb1a5lELKIQ3NXzoDmOy
 mMzoPuWm0ChjQgZl8NqoSfBT8qMcr3sqs=
IronPort-SDR: Gk4cSCoErzz7N9leN/pxDu+bTVP9b0NpFO/qmozZXuj7lhP5IewrPY+hl7PzqBQyrkd5XFj5fa
 IQQ+FqkY2w1l6kPgHuoXvlkN4JGZ+QBMI=
IronPort-SDR: 6n3ehVTZ8EgvjCgWimgiz6za8fK//H0GoCGJ1ir2WWVxYUOqnEZ4LbEdvOjGwcozrL14qGJqEV
 5vz8hHMUH2qVZLg0ooGVcanVtG4vpRBzQ=
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
IronPort-PHdr: =?us-ascii?q?9a23=3AP3suWhBmIGKNECxDnrCPUyQJP3V1l5bVG0s49J?=
 =?us-ascii?q?MjlrtSc6OlocS/blKKvKYlhQrTRoye8PJN0beI4OjrDHYN5Z+RvXxFapFIXg?=
 =?us-ascii?q?8IhZZz/URoSIbNQQWzIKvlaiU7GIJJU1o2t2ruaxAMRp+mPQCBxx/6pXZaUl?=
 =?us-ascii?q?23fQogKP7yH9zOiJa83LKp5pfRbg5U1ja0fb4gKRittgzeu4wXjdljLOMrxw?=
 =?us-ascii?q?PNsz5UfLZMyG1lP1+VlBvng6X4tNYru2wY87pz8s9FXODkcr4jTLteXj8hNX?=
 =?us-ascii?q?w44tGuqQPKSxCB62FZX2MdlRZJBQeWiXOyFt+5+mOy/uB9jRbZBvyoXLINdm?=
 =?us-ascii?q?qr7/cxWB2ysRYNLD4h1TDepZVejYsHizumgQJc6YnIW47AZ58cNuuVNZtSDS?=
 =?us-ascii?q?JLC/dASxEeJd+ZddMAHbUCLN5hg9XwlUckoDLjCSuXOcXh4BhIlGP9waELw+?=
 =?us-ascii?q?EFCQWZ/DI8OvYCoFnE9o35Zbgjb7jv7cyqhX2LJ7sekX+11NfuVFd8uPGpfY?=
 =?us-ascii?q?9BQOjfyVsNNCqerGuMsaHhBh+Py+ER7Xmi18s6UOCmyF4tlypKujz1+Jcvoa?=
 =?us-ascii?q?uWqrIokAj9qh4n5qRQR5XwAAYzKZbsWJtxpQqdMJBvXu4JfSJNnTgw66w+qJ?=
 =?us-ascii?q?ygIyQR67Mo7AP4b+OjMJejxTPlbOGPPwclwyoiUeu2vjmY0Ba+5dakeODu7k?=
 =?us-ascii?q?cQy0gN2pGE/jhFn1Tu4eHeV8B7432vhjaA8RLO49tlOVpltqqKDbMA7OVsj7?=
 =?us-ascii?q?oVi234Bj7wyGLstoC9KmgU58W3xM7/U6+6pLXMCY1x2yTwH8FM0oT3Saxwek?=
 =?us-ascii?q?BGcWfK2MWQ+r/s0WjwWKxHnNFntLuattfeCcsyhYC5MR9z3IwZ7CyNPmij0f?=
 =?us-ascii?q?USrEJAB2oaai6ss66yNHbKI6v0UKye0gXJ8n8jj7iOdvWpSpHMAneWxeSpbf?=
 =?us-ascii?q?N88Ula0A0p0ZVF6olJDq1UOPvoQRyr7o7xEwM5Pgqowu3uFNR60MYkVHmSBr?=
 =?us-ascii?q?OCbvyAtE/O7eUrJPOFaIhTtTrgeLAp5P/r2GcwgkRVPbKo0p0edG2iE7x4Ll?=
 =?us-ascii?q?+Yb3vhjpZJEWoDsgckCu2/oFKHWD9XIX21Wq8=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AekNfXROs3eVdlW6a9OYl6mtUO3oLmJTReyML45?=
 =?us-ascii?q?46gq5PdaL9r8mwIhmGtr1k2UXSVMDA6/se1rSF+6u1Q2EE6IaMvDcYfZhFRx?=
 =?us-ascii?q?IJ2qB010RoSIbNQQX3efHvZi0+Ws9FUQwt5CThaRELQZ6kOg63wDX6pXZaUl?=
 =?us-ascii?q?23NV97POPwSJLV3c+8hfuv8Z/eaBkaiDOhbOF3IQ6tpArc88ga04pkb7w80h?=
 =?us-ascii?q?/Y52dPKf5by25yKFSYkg2ZhI/4tNYru2wY86Ak9stNFLv3Zb85SroKBzMgL2?=
 =?us-ascii?q?0z+Ij3rxDFVgWC/D4RVG4RnhtODFugjlmyFt+5+mOyvOoo52qhDJPnT4kbBz?=
 =?us-ascii?q?2iv/17SkXRuS0cNyYcoWj40+Jxpf5wiRWHuT9VxJLvb9TGUZg2NuuVNZtSDW?=
 =?us-ascii?q?AUb9dNanNmXqamN4QdUOkQBd9084TPu3EDhEayJzKRIu3F7T9amnTq0Zwq1s?=
 =?us-ascii?q?A5FV7m4hAFO94enWSO9NmkK5YsCbqUqcuAhX2LJ7sekX/Bt67uNU04odSsYI?=
 =?us-ascii?q?NBU8TR22sMPljnsEmIhIjcEymI0/hTolGjzrBlV+vsu2QbgDpppmKRlsQHqN?=
 =?us-ascii?q?bltr9Pkmmbzntf4uNXbZXwAAYzKZbsELpCnCadLJJqb+gcAERNpiwb24UXu4?=
 =?us-ascii?q?XkcDMp75sM2jnbdNjEbKOvwxTbU/iPEWo/3DVMIbuGqDyTr1aP8bXSf5OKwQ?=
 =?us-ascii?q?wvzGIN2pGE/jhFnyHYw5Gacf1gxEn+2TmpxR3a0MBcOxEXlfv9Br8PmeIptp?=
 =?us-ascii?q?wpmH/bDymmv1/Mo4TKW3U51/eHwfzWeOnkjM+iNYolrw/TV8Zm0oT3Saxwek?=
 =?us-ascii?q?AgUDm62MiS1rLP2EThWbhYoqwQgOrf95T2Ku04iK6LEylb2Lwk0SSOUDKn8d?=
 =?us-ascii?q?4ppj4sFA1XRDm7qdPmHFXNe/ylVtbu0jHO2H8jj7iOdvWpBpThIS2Ww//xOL?=
 =?us-ascii?q?dn7EhEzxAviMpS/I9QFuQZKenoCRWr5vXFEh80NRC1yO/7CdJ7k7kTQn+LHr?=
 =?us-ascii?q?THb/HXoRmD4eYoOeCAY8kYtCuuY/Qm5vu7lXYighddZqim25ILdWq1VuprOU?=
 =?us-ascii?q?SXYHfgw58BHG4GsxB4TbnCh1iLUDoVbHG3Ug=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AqyQWExWpcATMBUm+kiOqniaIJsHV8LGtY1w5yb?=
 =?us-ascii?q?sCzp9Qe6C+9ojjO0qBtag/kgqQDs3Svuhfgq/Ns6m6BDJTqZ3Uqn0GeYxBW1?=
 =?us-ascii?q?gfhMEfjwEsU6vnQQWzZLaiJ2Q2SctHXV5huXq8NBsdA5OkPwSM+yXosG13eF?=
 =?us-ascii?q?23fUI9bqy9GtvclcOyhfy1qZbYMR5Vjjiwaq8gIByqoFfUu9INiIRvb6c9mB?=
 =?us-ascii?q?rP52FFY+BHgH9vd0iekRvm68G78YUGkWwY87ppv4YIGff/fqE1CKJVFi8nNG?=
 =?us-ascii?q?Zn78rtqRTFUU6T/HIaSWsbiF9FBQPC4BD8UcSU0GOy/qI1kGHSN82jcvMPaG?=
 =?us-ascii?q?qz7Z5EFhbo2H0XNWQAwWvMitRV3at0+TygjkBU6onyfqK/M+ZFcfaOGLFSDS?=
 =?us-ascii?q?IJFo4ZHyYUM5KgUtQoU88bZelK8Irsn2Ii8RaMGSOhLb7j6AR1oHHc+q0oz+?=
 =?us-ascii?q?89HTDW2Sg4G40ujmjxiNnlGbdICezk05j2lW/iCpEekX+1oMCAOlgd/teqGu?=
 =?us-ascii?q?9pce/x9HgeNQ3FnHezgNfHAS+N++A0n3KG6vY+RNuXqjQiqQgykjKT7fw0jt?=
 =?us-ascii?q?P31oE+6A/oxRgjmL9qHoOeaisZKZbsWNMY/2nSN6pkacQlWHh0lQ0EiZgjp5?=
 =?us-ascii?q?SabRAbyo94ywX8TPOsbq+M/TagS822ADFAg2x7SO/431GbqEGZ5cfdCNeb6w?=
 =?us-ascii?q?5kh3B7g4Op1DhFn1SbooDPAsZ21x684jCS7Q6M6u5iM109r4vDMc8Cwu8Wu7?=
 =?us-ascii?q?s96hjaPinMsX7unanGUV8e1cP0xtT6T6rJjIetLdN2oFHAMKF/v8KSZIZwek?=
 =?us-ascii?q?BGFyDTsayS2+zC3GHXQrpmq/Qui6TLnMH8N4cd4aqVDCZ2/IYR+zCxBQ2h6u?=
 =?us-ascii?q?YpwnwGDVh0Q1Wst9f7B3ryBqv3KvO82FjxyxY6lpWkdvWpSt2FZjCLlLbNcu?=
 =?us-ascii?q?MouAZMjQspytZH4IhIT6sMO+/3RhrpvcfDXUVjYSWp3+bqDsl83YoCWGWJR5?=
 =?us-ascii?q?WUK77WrUTWubAqM6+HY4sSoj/xLL4o6+O9xXM6mFpIZaCyxtNXc3G3GP16Pl?=
 =?us-ascii?q?+UKWThmNYPEGoG/0I+QeXmhUfEUGt7aHO7XqZ67TY+BQ=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3A65wM7BbsrAdNhLf+lfHqp3//LSx+5ufYHS8wr7?=
 =?us-ascii?q?c5grZTe7ii+JK8bBGN+6A03xfACJ/A4rdfi+OM7v6zEWdV+5uFuWAPfNtWWh?=
 =?us-ascii?q?sMmcgazGlCSIbNQQWzZLbmOiM/FcVGElRi+iLzKh0PQJ+gPgWI/y7Xj3ZaUl?=
 =?us-ascii?q?23fUI9JrH7AInX3diwheu5qYbOaQdFjybvbbpuIUezoB7Kv8YbxIpueKc3jw?=
 =?us-ascii?q?HEun9ZPvhRl3llK1+JkhD369zVntYru2wY87ppv5xFUKD3Oro1V6dZCzJ0OG?=
 =?us-ascii?q?cz+MDtqVzfVwKJ/XURSCAblBFPDwnD40KfPN+5+mOy/qI10inPAo7NfO4lWw?=
 =?us-ascii?q?2Nsa5rGEX4in0+BjQi8Hny28Vf1YxaiU6KjhtZ3a3+Z52uO68tG8GVNZtSDS?=
 =?us-ascii?q?IJFswEZj1dP9ybM64VV+UTYuVJl7DR+1Y8sTGzLFSgJtjS7DFioX/kwaYm39?=
 =?us-ascii?q?UxFCXe2FMAIc4rlHjEgcWvbKtDTtGLlPPpqFeLJ7sekX+1oMD0LTYH5qyVXZ?=
 =?us-ascii?q?dQTPvg60cvBSHmpw6yl5D9Ejes+v4QtnTF/tNYdLiqiWdkmwtNiQO3wp0S2o?=
 =?us-ascii?q?ripN05+m2erRwm+9gTB7jaAAYzKZbsWNMYtwCIHIxxWdo+bkpW+wMf1LcnqK?=
 =?us-ascii?q?aqfjNVxI8E4BH0dtuDbKzL/TnEdeCpJilmtC8iIPWW3h+L3mKBlPPTbZGa+Q?=
 =?us-ascii?q?x0v3Ag8JGE/jhFn1SbovWMY6JgxUG84zjQ1w/1+PxNG2Esj/v4K88H758ezc?=
 =?us-ascii?q?YKkUL5NxTuiUOmq7WsWW5419i1xvvISK3XvMOeHd9KiASvF6oD/673Saxwek?=
 =?us-ascii?q?BGFyC19rWd9ZHN/0LVZbxSl/Akvvj/otPcYsA3qYeaLQ9nwqAt4Sy4NQWXj9?=
 =?us-ascii?q?EZvHM2FxVuQE2Vs6PVHQrBB/T7Vvvi2HX9wVIJj7iOdvWpSt2FKnnvn+K0Lv?=
 =?us-ascii?q?5trk9GzwwryspDoohZEawFPKfrU1Tq54aCXDYkLwy5xfrmA9xh14QYHFiCGb?=
 =?us-ascii?q?KdLLiM7g2N9qQkJO2LfoYZv3DwJ+V2r/LtjHpsgVYGZuHpxpoYbnmkA+5ra1?=
 =?us-ascii?q?uUe3vig9oNUC8KswMyQfasiQiqXjtaZnL0VKU56w=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AaazxqRMW5OmHAebVsfwl6mtUO3oLmJTReyML45?=
 =?us-ascii?q?46gq5PdaL9r8mwIhmGtr1k2UXSVMDA6/se1rSF+6u1Q2EE6IaMvDcYfZhFRx?=
 =?us-ascii?q?IJ2qB010RoSIbNQQX3efHvZi0+Ws9FUQwt5CThaRELQZ6kOg63wDX6pXZaUl?=
 =?us-ascii?q?23NV97POPwSJLV3c+8hfuv8Z/eaBkaiDOhbOF3IQ6tpArc88ga04pkb7w80h?=
 =?us-ascii?q?/Y52dPKf5by25yKFSYkg2ZhI/4tNYru2wY86Ak9stNFLv3Zb85SroKBzMgL2?=
 =?us-ascii?q?0z+Ij3rxDFVgWC/D4RVG4RnhtODFugjlmyFt+5+mOyvOoo52qhDJPnT4kbBz?=
 =?us-ascii?q?2iv/17SkXRuS0cNyYcoWj40+Jxpf5wiRWHuT9VxJLvb9TGUZg2NuuVNZtSDW?=
 =?us-ascii?q?AUb9dNanNmXqamN4QdUOkQBd9084TPu3EDhEayJzKRIu3F7T9amnTq0Zwq1s?=
 =?us-ascii?q?A5FV7m4hAFO94enWSO9NmkK5YsCbqUqcuAhX2LJ7sekX/Bt67uNU04odSsYI?=
 =?us-ascii?q?NBU8TR22sMPljnsEmIhIjcEymI0/hTolGjzrBlV+vsu2QbgDpppmKRlsQHqN?=
 =?us-ascii?q?bltr9Pkmmbzntf4uNXbZXwAAYzKZbsELpCnCadLJJqb+gcAERNpiwb24UXu4?=
 =?us-ascii?q?XkcDMp75sM2jnbdNjEbKOvwxTbU/iPEWo/3DVMIbuGqDyTr1aP8bXSf5OKwQ?=
 =?us-ascii?q?wvzGIN2pGE/jhFnyHYw5Gacf1gxEn+2TmpxR3a0MBcOxEXlfv9Br8PmeIptp?=
 =?us-ascii?q?wpmH/bDymmv1/Mo4TKW3U51/eHwfzWeOnkjM+iNYolrw/TV8Zm0oT3Saxwek?=
 =?us-ascii?q?AgUDm62MiS1rLP2EThWbhYoqwQgOrf95T2Ku04iK6LEylb2Lwk0SSOUDKn8d?=
 =?us-ascii?q?4ppj4sFA1XRDm7qdPmHFXNe/ylVtbu0jHO2H8jj7iOdvWpBpThIS2Ww//xOL?=
 =?us-ascii?q?dn7EhEzxAviMpS/I9QFuQZKenoCRWr5vXFEh80NRC1yO/7CdJ7k7kTQn+LHr?=
 =?us-ascii?q?THb/HXoRmD4eYoOeCAY8kYtCuuY/Qm5vu7lXYighddZqim25ILdWq1VuprOU?=
 =?us-ascii?q?SXYHfgw58BHG4GsxB4TbnCh1iLUDoVbHG3Ug=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AlYmyTRYYj7p+OxPIbV27KY//LSx+5ufYHS8wr7?=
 =?us-ascii?q?c5grZTe7ii+JK8bBGN+6A03xfACJ/A4rdfi+OM7v6zEWdV+5uFuWAPfNtWWh?=
 =?us-ascii?q?sMmcgazGlCSIbNQQWzZLbmOiM/FcVGElRi+iLzKh0PQJ+gPgWI/y7Xj3ZaUl?=
 =?us-ascii?q?23fUI9JrH7AInX3diwheu5qYbOaQdFjybvbbpuIUezoB7Kv8YbxIpueKc3jw?=
 =?us-ascii?q?HEun9ZPvhRl3llK1+JkhD369zVntYru2wY87ppv5xFUKD3Oro1V6dZCzJ0OG?=
 =?us-ascii?q?cz+MDtqVzfVwKJ/XURSCAblBFPDwnD40KfPN+5+mOy/qI10inPAo7NfO4lWw?=
 =?us-ascii?q?2Nsa5rGEX4in0+BjQi8Hny28Vf1YxaiU6KjhtZ3a3+Z52uO68tG8GVNZtSDS?=
 =?us-ascii?q?IJFswEZj1dP9ybM64VV+UTYuVJl7DR+1Y8sTGzLFSgJtjS7DFioX/kwaYm39?=
 =?us-ascii?q?UxFCXe2FMAIc4rlHjEgcWvbKtDTtGLlPPpqFeLJ7sekX+1oMD0LTYH5qyVXZ?=
 =?us-ascii?q?dQTPvg60cvBSHmpw6yl5D9Ejes+v4QtnTF/tNYdLiqiWdkmwtNiQO3wp0S2o?=
 =?us-ascii?q?ripN05+m2erRwm+9gTB7jaAAYzKZbsWNMYtwCIHIxxWdo+bkpW+wMf1LcnqK?=
 =?us-ascii?q?aqfjNVxI8E4BH0dtuDbKzL/TnEdeCpJilmtC8iIPWW3h+L3mKBlPPTbZGa+Q?=
 =?us-ascii?q?x0v3Ag8JGE/jhFn1SbovWMY6JgxUG84zjQ1w/1+PxNG2Esj/v4K88H758ezc?=
 =?us-ascii?q?YKkUL5NxTuiUOmq7WsWW5419i1xvvISK3XvMOeHd9KiASvF6oD/673Saxwek?=
 =?us-ascii?q?BGFyC19rWd9ZHN/0LVZbxSl/Akvvj/otPcYsA3qYeaLQ9nwqAt4Sy4NQWXj9?=
 =?us-ascii?q?EZvHM2FxVuQE2Vs6PVHQrBB/T7Vvvi2HX9wVIJj7iOdvWpSt2FKnnvn+K0Lv?=
 =?us-ascii?q?5trk9GzwwryspDoohZEawFPKfrU1Tq54aCXDYkLwy5xfrmA9xh14QYHFiCGb?=
 =?us-ascii?q?KdLLiM7g2N9qQkJO2LfoYZv3DwJ+V2r/LtjHpsgVYGZuHpxpoYbnmkA+5ra1?=
 =?us-ascii?q?uUe3vig9oNUC8KswMyQfasiQiqXjtaZnL0VKU56w=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0E9AACmBZ5dh0tDioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWcHAQELAYIagUYdEiqMRWCFWoFqiiCFZYQjhSiBPzEUAQEBAQE?=
 =?us-ascii?q?BAQEBBgEBGBUCAQEBAYQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQE?=
 =?us-ascii?q?KCwkIKYU0DINGOzABAQEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQI?=
 =?us-ascii?q?PFQsBDQEbHQEDAgkBAQUQOwMeAhEBBQEcBxIFHYMAgWoBAx2jdYEDPIwlFgU?=
 =?us-ascii?q?BF4J+BYEEgzoKGScNZoE8AgcSgSIBhzSDPIEdgheBRIMdghqCP4VRBK0CQQe?=
 =?us-ascii?q?CJYYmimuECBuNe4tFLY4AijCPBgIKBwYPI4EvghJNI4EBgjtQEBSBT4Nzim9?=
 =?us-ascii?q?YgQUDO5MiAQE?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0E9AABX/51dh+mAioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWcHAQELAYIagUYdEiqMRWCFWYFqiiCFZYQjhSiBPzEUAQEBAQE?=
 =?us-ascii?q?BAQEBBgEBGBUCAQEBAYQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQE?=
 =?us-ascii?q?KCwkIKYU0DINGOzABAQEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQI?=
 =?us-ascii?q?PFQsBDQEbHQEDAgkBAQUQOwMeAhEBBQEcBxIFHYMAgWoBAx2jZ4EDPIwlFgU?=
 =?us-ascii?q?BF4J+BYEEgzkKGScNZoE8AgcSgSIBhzSDPIEdgheBRIMdghqCP4VRBK0CQQe?=
 =?us-ascii?q?CJYYmimuECBuNe4tFLY4AijCPBgIKBwYPI4EvghJNI4EBgjtQEBSBT4Nzim9?=
 =?us-ascii?q?YgQUDO5MiAQE?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0E9AADP+51dh0tDioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWcHAQELAYIagUYdEiqMRWCFWYFqiiCFZYQjhSiBPzEUAQEBAQE?=
 =?us-ascii?q?BAQEBBgEBGBUCAQEBAYQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQE?=
 =?us-ascii?q?KCwkIKYU0DINGOzABAQEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQI?=
 =?us-ascii?q?PFQsBDQEbHQEDAgkBAQUQOwMeAhEBBQEcBxIFHYMAgWoBAx2jXYEDPIwlFgU?=
 =?us-ascii?q?BF4J+BYEEgz0KGScNZoE8AgcSgSIBhzSDPIEdgheBRIMdghqCP4VRBK0CQQe?=
 =?us-ascii?q?CJYYmimuECBuNe4tFLY4AijCPBgIKBwYPI4EvghJNI4EBgjtQEBSBT4Nzim9?=
 =?us-ascii?q?YgQUDO5MiAQE?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0FuAQB4+J1dfU1DioBlgkGCG4FjEo1?=
 =?us-ascii?q?Pm2uFKIE/RQEBAQEBAQEBAQYBAS0CAQEBAYQ+gnU0CQ4DAgkBAQEDAQICAQU?=
 =?us-ascii?q?CAQECAhABAQsUCIVpg0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQKBASkbBgE?=
 =?us-ascii?q?CDyABDQEbHQEDAgkBAQUQOwMeAhEBBQEcBxIFHYRqAQMdo1GBAzyMOwUBF4J?=
 =?us-ascii?q?+BYEEgzwKGScNZoE8AgcSDohJgzyDNIFEgx2EWYVRrQZBB4IlhiaOcxuNe4t?=
 =?us-ascii?q?FLY4AmTYCCgcGDyOBL4ISTSOBAYMLEBSQMYFdAzuTIgEB?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0FuAQB4+J1dfU1DioBlgkGCG4FjEo1?=
 =?us-ascii?q?Pm2uFKIE/RQEBAQEBAQEBAQYBAS0CAQEBAYQ+gnU0CQ4DAgkBAQEDAQICAQU?=
 =?us-ascii?q?CAQECAhABAQsUCIVpg0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQKBASkbBgE?=
 =?us-ascii?q?CDyABDQEbHQEDAgkBAQUQOwMeAhEBBQEcBxIFHYRqAQMdo1GBAzyMOwUBF4J?=
 =?us-ascii?q?+BYEEgzwKGScNZoE8AgcSDohJgzyDNIFEgx2EWYVRrQZBB4IlhiaOcxuNe4t?=
 =?us-ascii?q?FLY4AmTYCCgcGDyOBL4ISTSOBAYMLEBSQMSeBNgM7kyIBAQ?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0EiAAB4+J1dh0O0hNFlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWcHAQELAYIagUQxKoxFYIVZgWo5iWeFZYQjhSiBPzEUAQEBAQE?=
 =?us-ascii?q?BAQEBBgEBGBQBAgEBAQGEPoJSIzQJDgIBAgkBAQEDAQEBAgEFAgEBAgIQAQE?=
 =?us-ascii?q?BCgsJCCmFNAyDRjswAQEBAQEBAQEBAQEBAQEBAQEBAQEVAi1UKQEBGQIBAwE?=
 =?us-ascii?q?CDxULAQ0BGx0BAwIJAQEFEDsDHgIRAQUBHAcSBR2DAIFqAQMdo1GBAzyMJRY?=
 =?us-ascii?q?FAReCfgWBBIM8ChknDWaBPAIHEoEiAYc0gzyBHYIXgUSDHYIagj+FUQStAkE?=
 =?us-ascii?q?HgiWGJoprhAgbjXuLRS2OAIowjwYCCgcGDyOBL4ISTSOBAYI7UBAUgU+Dc4p?=
 =?us-ascii?q?vJjKBBQEBATuTIgEB?=
X-IPAS-Result: =?us-ascii?q?A0E9AACmBZ5dh0tDioBlHAEBAQEBBwEBEQEEBAEBgWcHA?=
 =?us-ascii?q?QELAYIagUYdEiqMRWCFWoFqiiCFZYQjhSiBPzEUAQEBAQEBAQEBBgEBGBUCA?=
 =?us-ascii?q?QEBAYQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwkIKYU0DINGO?=
 =?us-ascii?q?zABAQEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQsBDQEbHQEDA?=
 =?us-ascii?q?gkBAQUQOwMeAhEBBQEcBxIFHYMAgWoBAx2jdYEDPIwlFgUBF4J+BYEEgzoKG?=
 =?us-ascii?q?ScNZoE8AgcSgSIBhzSDPIEdgheBRIMdghqCP4VRBK0CQQeCJYYmimuECBuNe?=
 =?us-ascii?q?4tFLY4AijCPBgIKBwYPI4EvghJNI4EBgjtQEBSBT4Nzim9YgQUDO5MiAQE?=
X-IPAS-Result: =?us-ascii?q?A0E9AABX/51dh+mAioBlHAEBAQEBBwEBEQEEBAEBgWcHA?=
 =?us-ascii?q?QELAYIagUYdEiqMRWCFWYFqiiCFZYQjhSiBPzEUAQEBAQEBAQEBBgEBGBUCA?=
 =?us-ascii?q?QEBAYQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwkIKYU0DINGO?=
 =?us-ascii?q?zABAQEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQsBDQEbHQEDA?=
 =?us-ascii?q?gkBAQUQOwMeAhEBBQEcBxIFHYMAgWoBAx2jZ4EDPIwlFgUBF4J+BYEEgzkKG?=
 =?us-ascii?q?ScNZoE8AgcSgSIBhzSDPIEdgheBRIMdghqCP4VRBK0CQQeCJYYmimuECBuNe?=
 =?us-ascii?q?4tFLY4AijCPBgIKBwYPI4EvghJNI4EBgjtQEBSBT4Nzim9YgQUDO5MiAQE?=
X-IPAS-Result: =?us-ascii?q?A0E9AADP+51dh0tDioBlHAEBAQEBBwEBEQEEBAEBgWcHA?=
 =?us-ascii?q?QELAYIagUYdEiqMRWCFWYFqiiCFZYQjhSiBPzEUAQEBAQEBAQEBBgEBGBUCA?=
 =?us-ascii?q?QEBAYQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwkIKYU0DINGO?=
 =?us-ascii?q?zABAQEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQsBDQEbHQEDA?=
 =?us-ascii?q?gkBAQUQOwMeAhEBBQEcBxIFHYMAgWoBAx2jXYEDPIwlFgUBF4J+BYEEgz0KG?=
 =?us-ascii?q?ScNZoE8AgcSgSIBhzSDPIEdgheBRIMdghqCP4VRBK0CQQeCJYYmimuECBuNe?=
 =?us-ascii?q?4tFLY4AijCPBgIKBwYPI4EvghJNI4EBgjtQEBSBT4Nzim9YgQUDO5MiAQE?=
X-IPAS-Result: =?us-ascii?q?A0FuAQB4+J1dfU1DioBlgkGCG4FjEo1Pm2uFKIE/RQEBA?=
 =?us-ascii?q?QEBAQEBAQYBAS0CAQEBAYQ+gnU0CQ4DAgkBAQEDAQICAQUCAQECAhABAQsUC?=
 =?us-ascii?q?IVpg0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQKBASkbBgECDyABDQEbHQEDA?=
 =?us-ascii?q?gkBAQUQOwMeAhEBBQEcBxIFHYRqAQMdo1GBAzyMOwUBF4J+BYEEgzwKGScNZ?=
 =?us-ascii?q?oE8AgcSDohJgzyDNIFEgx2EWYVRrQZBB4IlhiaOcxuNe4tFLY4AmTYCCgcGD?=
 =?us-ascii?q?yOBL4ISTSOBAYMLEBSQMYFdAzuTIgEB?=
X-IPAS-Result: =?us-ascii?q?A0FuAQB4+J1dfU1DioBlgkGCG4FjEo1Pm2uFKIE/RQEBA?=
 =?us-ascii?q?QEBAQEBAQYBAS0CAQEBAYQ+gnU0CQ4DAgkBAQEDAQICAQUCAQECAhABAQsUC?=
 =?us-ascii?q?IVpg0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQKBASkbBgECDyABDQEbHQEDA?=
 =?us-ascii?q?gkBAQUQOwMeAhEBBQEcBxIFHYRqAQMdo1GBAzyMOwUBF4J+BYEEgzwKGScNZ?=
 =?us-ascii?q?oE8AgcSDohJgzyDNIFEgx2EWYVRrQZBB4IlhiaOcxuNe4tFLY4AmTYCCgcGD?=
 =?us-ascii?q?yOBL4ISTSOBAYMLEBSQMSeBNgM7kyIBAQ?=
X-IPAS-Result: =?us-ascii?q?A0EiAAB4+J1dh0O0hNFlHAEBAQEBBwEBEQEEBAEBgWcHA?=
 =?us-ascii?q?QELAYIagUQxKoxFYIVZgWo5iWeFZYQjhSiBPzEUAQEBAQEBAQEBBgEBGBQBA?=
 =?us-ascii?q?gEBAQGEPoJSIzQJDgIBAgkBAQEDAQEBAgEFAgEBAgIQAQEBCgsJCCmFNAyDR?=
 =?us-ascii?q?jswAQEBAQEBAQEBAQEBAQEBAQEBAQEVAi1UKQEBGQIBAwECDxULAQ0BGx0BA?=
 =?us-ascii?q?wIJAQEFEDsDHgIRAQUBHAcSBR2DAIFqAQMdo1GBAzyMJRYFAReCfgWBBIM8C?=
 =?us-ascii?q?hknDWaBPAIHEoEiAYc0gzyBHYIXgUSDHYIagj+FUQStAkEHgiWGJoprhAgbj?=
 =?us-ascii?q?XuLRS2OAIowjwYCCgcGDyOBL4ISTSOBAYI7UBAUgU+Dc4pvJjKBBQEBATuTI?=
 =?us-ascii?q?gEB?=
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="413991890"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="369041376"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="286779794"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="368974758"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="368957809"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="368954378"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=1e100.net;
 s=20161025; 
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to        
 :references:mime-version:content-transfer-encoding;       
 bh=W+SY6yjQG6ah82xj2QYbshpM9aG1FiA4CAoNvKBotSg=;       
 b=lPgXpUaJ7U+GKlEwajwdAQ2wdwbeXNx6tpMMQvpn4A9s165mRP8cniWSaV/LJ+m2DR        
 xTHXWtf1EZ3s+8Bb9ztXMw3fgGnEMTMZuRe9R4Fy+NItNWPwNuPllPOCwU4+mUtV3e7v        
 Qq3hig4i0bjD6jPQCUyHmd5CRq1ZGv9h5jJrImFgJ6o7Yc5Fxex0IY+HHp2mFee3wK31        
 XT6aYJjuciY1s34onPjCFU/Jf0BbkUNhOhSMthOiFSIZghku2aZg0anRt/zlOFPpGY+Q        
 tmMCGdGBuyCrHxuAvGQugiXGOJ7TbGXIyfGJfjfv/CE22ON6z9TX5NEPA0dazTQUhtPh        
 oM+w==
X-Gm-Message-State: APjAAAWipXBJ+LRM2y6gFQ54BROKHAWWUoQokhKcHAnR9K00nDFU5Fpt 
 zL9X+h43s5yUB4WdQwy8jq4=
X-Google-Smtp-Source: APXvYqz+pLjuNWlBOfyulbj8EF+i7KB1FzRSxzXYbcY2yuK76RkXlB0ER4nJL58X2PbinSF8InFkgA==
X-Received: by 2002:a0d:d7c2:: with SMTP id z185mr3088421ywd.156.1570634873928; 
 Wed, 09 Oct 2019 08:27:53 -0700 (PDT)
From: "William Breathitt Gray" <vilhelm.gray@gmail.com>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>
Subject: [PATCH v17 12/14] gpio: pisosr: Utilize the for_each_set_clump8 macro
Date: Wed,  9 Oct 2019 11:27:10 -0400
Message-Id: 7a6080c8fb003ae0fb6a40da103faeabcadb0204.1570633189.git.vilhelm.gray@gmail.com
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570633189.git.vilhelm.gray@gmail.com>
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
X-MS-Exchange-Organization-ExpirationStartTime: 09 Oct 2019 17:27:31.8511 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: 110ae54d-0dc9-492d-62f8-08d74cddf768
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-Forefront-Antispam-Report: CIP:128.138.128.232; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:SKN; SFS:; DIR:INB; SFP:; SCL:-1; SRVR:MWHPR03MB2879; H:ipmx2.colorado.edu;
 FPR:; SPF:None; LANG:en; ; SKIP:1; 
X-MS-Exchange-Organization-AuthSource: SN1NAM01FT004.eop-nam01.prod.protection.outlook.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-OriginatorOrg: colorado.edu
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 110ae54d-0dc9-492d-62f8-08d74cddf768
X-MS-TrafficTypeDiagnostic: MWHPR03MB2879:|MWHPR03MB2879:
X-MS-Exchange-Organization-SCL: -1
X-MS-Oob-TLC-OOBClassifiers: OLM:381;
X-Microsoft-Antispam: BCL:0;
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2019 17:27:31.6890 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 110ae54d-0dc9-492d-62f8-08d74cddf768
X-MS-Exchange-CrossTenant-Id: 3ded8b1b-070d-4629-82e4-c0b019f46057
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3ded8b1b-070d-4629-82e4-c0b019f46057; Ip=[128.138.128.232];
 Helo=[ipmx2.colorado.edu]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR03MB2879
X-MS-Exchange-Transport-EndToEndLatency: 01:00:30.5781652
X-MS-Exchange-Processed-By-BccFoldering: 15.20.2347.014
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; ex:0; auth:0; dest:I;
 ENG:(750127)(520002050)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?T8l+8BCsD0M/7C8+BENdkfyPftEBYb5HjGsFK66TXlhAZjVleOcNgr/Jznfg?=
 =?us-ascii?Q?cDIq5uIDHzTtwyMOlwJe7bbY8tsk2Z7AmgGpOsHO+MAyODLCU8xDkKNhZqg0?=
 =?us-ascii?Q?FIiE9PXkX85U/Zb8cTY4aAkn7EoHi2Bq/NkErv5l+/YcI5GXHMhs/8cd2S49?=
 =?us-ascii?Q?TLWrUEt234hK5MG2Y30KQgR8CjJNULfdLUn+q8yxCjYElXtCDBQCA2QH1Jlo?=
 =?us-ascii?Q?b3ORjhX9yjmPBnWWMO6bmbXAu4NFJt2QoAt0hyjHknEBrNBk5oAt0c5BkvLG?=
 =?us-ascii?Q?GEOrr4IuPBjtdO3i2+ZMZjkfS+OTYbAVxtwaKQFTn0TBJutWqlWtSYsdEZcD?=
 =?us-ascii?Q?Haacx46dz5XXxI01TM6nFjBsTOyEH7rzAdTC+/04meJ0t7Xhja3uwJP5cZw9?=
 =?us-ascii?Q?JOGDOwBJ5ONRvPlTVtA2IjnQwWHWXAyIjz0HJl5842jy1dhWyeHdqjB0EVhO?=
 =?us-ascii?Q?Mcx0u6C/gX4rkZkrThXwiaLpCG+Rqhx/qfyhmy9i9fGKd4K4dcorEIcqHtHH?=
 =?us-ascii?Q?z3xMa8J1mY7NMOyI/VTr3MHM9OHkB6k1RuBvR0XJ02Lsr0Ew73p0BXIOEEGl?=
 =?us-ascii?Q?WztdqVjuFR0jf+1oreeT2mV1d+A2SGe3jVqwf/AtJmd0lnMWnp/aEnlT37kK?=
 =?us-ascii?Q?23KkHjA/gqPoJtCxhRNIOvK5zdlR8I+krIZYVQ+hSZRU/hH9yVZVfSEmVhMr?=
 =?us-ascii?Q?ecZN6s30GBbRmxxaLD899uZrvY0XubmHwKBRmAwRJMGqVbVIgFzd+StSVh/r?=
 =?us-ascii?Q?3ztqPOyGGJK4Qv1G3YhONeYtqUkM12b3Qrj0A4q12HXFRYTfHvEH1S44Hs8X?=
 =?us-ascii?Q?sDCzKxQTLFUO51C+1jZcMeXse2Uf8QbBzdrd5zaWqT443b1YMGlvhTJkkHN7?=
 =?us-ascii?Q?fnQSJi9ATr3/890lazuy1h/vKsQDJxwl+s8O2krUQg5tFfKORSpvsT7XH0rI?=
 =?us-ascii?Q?nUCegeBKOz/3Q1tfd1zMXAx73qllrwKG0fwInP+bhzJdkFCDd5TsVeeIdwlc?=
 =?us-ascii?Q?REKwydGt9J+p0eKJY2xmQYqxiaeYx/AQWnyc3iL9w8xCGt7mgRi+mo/jWAli?=
 =?us-ascii?Q?fmxwYzesZSVTCpCUUyBzVWEGNteMMuB3j9mGKo+LPb+9FBv/ZNA=3D?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_184457_838311_9469CA25 
X-CRM114-Status: UNSURE (   5.22  )
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

Replace verbose implementation in get_multiple callback with
for_each_set_clump8 macro to simplify code and improve clarity.

Cc: Morten Hein Tiljeset <morten.tiljeset@prevas.dk>
Cc: Sean Nyekjaer <sean.nyekjaer@prevas.dk>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/gpio/gpio-pisosr.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpio/gpio-pisosr.c b/drivers/gpio/gpio-pisosr.c
index f809a5a8e9eb..9ab2c044ef52 100644
--- a/drivers/gpio/gpio-pisosr.c
+++ b/drivers/gpio/gpio-pisosr.c
@@ -96,16 +96,16 @@ static int pisosr_gpio_get_multiple(struct gpio_chip *chip,
 				    unsigned long *mask, unsigned long *bits)
 {
 	struct pisosr_gpio *gpio = gpiochip_get_data(chip);
-	unsigned int nbytes = DIV_ROUND_UP(chip->ngpio, 8);
-	unsigned int i, j;
+	unsigned long offset;
+	unsigned long gpio_mask;
+	unsigned long buffer_state;
 
 	pisosr_gpio_refresh(gpio);
 
 	bitmap_zero(bits, chip->ngpio);
-	for (i = 0; i < nbytes; i++) {
-		j = i / sizeof(unsigned long);
-		bits[j] |= ((unsigned long) gpio->buffer[i])
-			   << (8 * (i % sizeof(unsigned long)));
+	for_each_set_clump8(offset, gpio_mask, mask, chip->ngpio) {
+		buffer_state = gpio->buffer[offset / 8] & gpio_mask;
+		bitmap_set_value8(bits, buffer_state, offset);
 	}
 
 	return 0;
-- 
2.23.0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
