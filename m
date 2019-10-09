Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DA4D5357
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 02:03:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NZVzP98VKqESKgV8ystSG5wPhTd0X6U98gEO+mRBlT4=; b=sVI5a8utOQvEFh
	ZAQ8TrucJbHYsqCCHlziZkxfmgqxszw0VoQi0xC1TLDPjHifFnHiMDOEPYfzv+RbZgUnRGrjO4SiS
	lnT+tJ0LMQ0T8gD7X0RPk38GgSl8BS5XMZW7Ch6VOIqEnSpFO/KdjL+a8YKVa+BrqwpLGDtA9jWHw
	rO52tezCD59lmI9tKejG+B4GOCF4gnLliieXdISDUZMNNBkPZLbX6WMvpJs/UvCSS0/aMzvDCYrHl
	IpLRzVvHg3pnGupUrjdYpePiv0GI3g7GO39PDUsaBpjpAmx6w2+CeTRs2UULbDGV92TEGDOjRB3m9
	AW0FzJ4fxh9obJcULhmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJRLo-0003h4-Q6; Sun, 13 Oct 2019 00:03:08 +0000
Received: from listssympa-test.colorado.edu ([128.138.129.156])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJRLf-0003gi-Cc
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 00:03:02 +0000
Received: from listssympa-test.colorado.edu (localhost [127.0.0.1])
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/sympa) with ESMTPS id
 x9CMtCJd001574
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 12 Oct 2019 16:55:12 -0600
Received: (from root@localhost)
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/submit) id
 x9CMt9Rb001563; Sat, 12 Oct 2019 16:55:09 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025; 
 h=from:to:cc:subject:date:message-id:in-reply-to:references 
 :mime-version:content-transfer-encoding;       
 bh=BimiSAhIyu/wlnbGZzM5zv98VeK3KGxYKaa4VCWD3vc=;       
 b=XhKVN2b3nsHyExn5g3F5i4nQkLizp/ml0iJ6nyIDo8RaY41ylVOc0vRug0oE+UZAge        
 i7aiVMFgkmpOpjS+c3EgFzlyN1cpWIrthK7jSW3uToSXKlX6Jhrxju0R21SjsGZRuyKp        
 Ga2EQkW+onKg8Z5LYWuREGeksADsfpjrH1z7JxA9BcGLXN0APRwI6mj/NaV9cMwQ5/s7        
 vLz1sfqnQZKxpvaGz8S5aITVxusnXfh4S1dYizvCFDbrftaqF0O+58Ig46PBWrt4xcrC        
 9uobcnenyu1GareDW34LUr2PUsF4xO+ILnWyjuSck5fNf8YWAoNZs6EPQI4kSCK72LVQ        
 1Gmg==
Received: from BN8PR03MB4964.namprd03.prod.outlook.com (2603:10b6:a03:74::39)
 by BYAPR03MB4376.namprd03.prod.outlook.com with HTTPS via
 BYAPR05CA0062.NAMPRD05.PROD.OUTLOOK.COM; Wed, 9 Oct 2019 23:41:16 +0000
Received: from BYAPR03CA0030.namprd03.prod.outlook.com (2603:10b6:a02:a8::43)
 by
 BN8PR03MB4964.namprd03.prod.outlook.com (2603:10b6:408:7c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.24; Wed, 9 Oct
 2019 17:30:12 +0000
Received: from BY2NAM01FT018.eop-nam01.prod.protection.outlook.com
 (2a01:111:f400:7e42::207) by BYAPR03CA0030.outlook.office365.com
 (2603:10b6:a02:a8::43) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2327.25 via Frontend
 Transport; Wed, 9 Oct 2019 17:30:12 +0000
Received: from ipmx4.colorado.edu (128.138.67.75) by
 BY2NAM01FT018.mail.protection.outlook.com (10.152.69.210) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384)
 id 15.20.2347.16 via Frontend Transport; Wed, 9 Oct 2019 17:30:12 +0000
Received: from ipmx1.colorado.edu ([128.138.128.231]) by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 10:56:55 -0600
Received: from ipmx4.colorado.edu ([128.138.67.75])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 10:22:21 -0600
Received: from ipmx2.colorado.edu ([128.138.128.232]) by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 10:06:27 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:51:30 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:43:31 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:35:33 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:30:59 -0600
Received: from vger.kernel.org ([209.132.180.67]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:28:39 -0600
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand id
 S1731705AbfJIP1h (ORCPT <rfc822; michael.gilroy@colorado.edu>);
 Wed, 9 Oct 2019 11:27:37 -0400
Received: from mail-yw1-f65.google.com ([209.85.161.65]:34387 "EHLO       
 mail-yw1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org       
 with ESMTP id S1731328AbfJIP1g (ORCPT       
 <rfc822; linux-kernel@vger.kernel.org>); Wed, 9 Oct 2019 11:27:36 -0400
Received: by mail-yw1-f65.google.com with SMTP id d192so967329ywa.1;
 Wed, 09 Oct 2019 08:27:35 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])        by smtp.gmail.com with ESMTPSA id
 g40sm611863ywk.14.2019.10.09.08.27.32        (version=TLS1_3
 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);        Wed, 09 Oct 2019
 08:27:33 -0700 (PDT)
Authentication-Results: spf=none (sender IP is 128.138.67.75)
 smtp.mailfrom=vger.kernel.org; 
 o365.colorado.edu; dkim=pass (signature was verified)
 header.d=gmail.com;o365.colorado.edu; dmarc=pass action=none
 header.from=gmail.com;
Received-SPF: None (protection.outlook.com: vger.kernel.org does not designate
 permitted sender hosts)
Authentication-Results-Original: mx.colorado.edu;
 dkim=pass (signature verified)
 header.i=@gmail.com
IronPort-SDR: /EqBmRGDFse0fG7Ny70o05qLCcGYm/cuSE9ZRZ7wfCL//nP9xf+b6WUmoVzogpQ4f1lFNSkpxr
 JDAxbXdPqG/zC0hvDjuAnqIm2gbLgLNyU=
IronPort-SDR: ADe5d/GP0lBDRKaoNOGP0NBOWfYMl+WV4qHRXioPShv830RCBlyYe1AH8aWVUWdiMIbl0ChGou
 c4QKtX1nAUJufyWWERqf2s3catehpx/+o=
IronPort-SDR: QvYFbAOUuW6VuY9j2B+SsF1Dhtz5JVR9YP2HzNZhdmquz7mnO9Cm2aXMZNA3q2QuaY9bpLIQ0q
 y7BFg8Ezo6PJouHBUMJEIXekZBjhn0U70=
IronPort-SDR: dpyelu88Lr0YypbFEaNJjrXcxQNjumKxxLFp5kj3fa3QTDoYKOXJ1M5MPoCs7bUqv2ZVVsMDwQ
 gZBOfuGQ+D39Jz7Dx39NrkVWhNjjKWKA0=
IronPort-SDR: CmYruEsgznzU8Pn63Y1SRSlx0XKS6DX22y+VYZgp14etpK29qWStSgaT69d+JxgjWXu5qUx5XY
 VdWTUu7owHBcxpuSUNtPdHWGWxiL8ljEc=
IronPort-SDR: cPY1m1yESM/FAJvw97JBywn+D/PMvIlQ7eeSDiq9AdRmeAJv/CodH8daQuPvo5p8t3//pmpRtw
 7qGpnTkyBoTcHwlBfoBuWM7Hbl1cTvB9I=
IronPort-SDR: 6xIb3sN45xrpD0+IsZNuCxC7GowMel/e6sAhvGTjYNwwpgoYWGos9htzR902tfrgtLwRqq5I33
 ZLWCu6+Ry0lKuvTfnUfl11NVPeB3RRUp4=
IronPort-SDR: 98ZSLZhpSKh83jCwGWjBegr8pbM8hbaMgiwj3ECAeBf6RUbocYodb9J0O6q9E5qazynxaB8PWK
 WVVqnv2wnHmnMeJrhULuAEilqeCP4MiyM=
IronPort-PHdr: =?us-ascii?q?9a23=3A9Bj1wh0VfLWwFVIRsmDT+DJfSgsGnvDZIAcR95?=
 =?us-ascii?q?M7irVILPT+rYq3ZR+X7KB3l1aMRoXSsa8a2KLd5rrtXWUQ7JrGqn0GeYxBW0?=
 =?us-ascii?q?xg641e10RoSIbNBRj0Kffra2oxG8ERHEQwpSnibxENQputAj+a6jX6pXZaUh?=
 =?us-ascii?q?WqOxByI7bpHdzZhJasyuqw9pbPMQlBmDfvZL5pNxy5oEDQupsXh854J74121?=
 =?us-ascii?q?7VpSlSdupb325uLl+I+nS0ro/4tNYru2wCvvMk+oteXL/hfqM+H7dfCigrNX?=
 =?us-ascii?q?xw+NfiswLNQBHK630XVWkXlBUbZmqNpFmyFt+5+iH648B83SihFM3XXK1zRj?=
 =?us-ascii?q?Ck5YhZWjq1mjlWZwA00zr0pdxBr6tS/CyKmDAk3YWBM+T3fLI2NuuVNZsQEF?=
 =?us-ascii?q?pBffh3DSYaBJicfqYfCbcOZsgFrtX7nlgqrAmmQgyoXOLNlDlZp1PxjZcz4r?=
 =?us-ascii?q?h4AAX4+wd4AegTvyzTgZbIBo4dXIXXhOGAhX2LJ7se2Gj06bbtXB8ipOmrRb?=
 =?us-ascii?q?BLMsGK5EYBBQfUqAybsbPEJS+V9bsPiFfA8tZnbtKMj155iQFrsjqynv1207?=
 =?us-ascii?q?LLna0n8E3V1j0cos59bZXwAAYzKfGtSrZptB7ZMI1VTZMQHkVZhzsA55ILuo?=
 =?us-ascii?q?WSUDME0JY950fNNN6XWtmi6T3HZMDJCA9Cm1M7fbD4oR+MoEOF1dShEdLrtT?=
 =?us-ascii?q?QC5mIN2pGE/jgT8w6K8caeTMJP3Ve5xz+gxVDot+hlHX4kiLHdG5AhnoVpmq?=
 =?us-ascii?q?sSo1roMAP8gkvqhba4LmJnp7iJ5Li5Wp/ZvIPAJ4RuoWSceuxm0oT3SaxwYx?=
 =?us-ascii?q?UJVWOd9OKtyeTM9Ff0bIoR0tkLiPPhjYv0edQ85Y+dBTBE0JsY4BXiARGogO?=
 =?us-ascii?q?UntH4hHkkbVSq+rtTqAHrtf6rcM87a4Rzk2H8jj7iOduTOB5qYeyuLgPLgZ7?=
 =?us-ascii?q?F780lG1E8pwMtC444BErgaO6GpAB3YqcDYAxklMge93+fgDpBH25gDXX6UXP?=
 =?us-ascii?q?DLNbOUuliM4fgmL+7KaYMI637xKPkgsubnlmRx2UQccq+gwYYNZTimE+5nLU?=
 =?us-ascii?q?SUbTukgtoIHWoQ+AtrZOPvgVyGFzVUYns=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3A5JRk9hx8QikIyELXCy+O/D0hRQkC/pjqNwoI44?=
 =?us-ascii?q?YmjLQQIvnx4cG7bwTWsO92hRrSXYyBtqwXw+GDqa3kUHwN7dGbvXQLYJFABH?=
 =?us-ascii?q?pnwY1e10RoSIaJXEL+Jf/uKSc9GZcKTwo/pyjlaBAPRZWbBRWa6jX6pXZaGk?=
 =?us-ascii?q?DxLw1wdPjySIXZ3d+q3eK/8IGBbwxUiWi4bKhpJRq76ATd5MgQxJFvMqIgjw?=
 =?us-ascii?q?fO8GFFdelMyGVjKEn2/V60ro/4tNYru3ZVuvcsstBNS777eKJqRrteEDkgLy?=
 =?us-ascii?q?Up/sTtrhfOV06C4HAbXmQQnUktYUCNpFmyFt+5uCuvnOt42RKzPeznUPcrXT?=
 =?us-ascii?q?KowJV5bUL6lnZXCTMaq0L4mv1ThasHnjmei0dhyNuHBePdfLI2NuuVNdlPdW?=
 =?us-ascii?q?piYOALXXdHGaOtQpsJUuVaE7tZ84/EpH8PvwP5AA30BcGxzC5pqnim56QLj7?=
 =?us-ascii?q?0wFT/h11Q+Jc8B6HP57+jHHagfNIL9hOGAhX2LJ7tXhj781q3mfRMkudaUX4?=
 =?us-ascii?q?kzepH8xmc9ExLj116Ilq3/IzO2ieY2jDOG0+1bZcGruzAFqxthoCX3/J11sY?=
 =?us-ascii?q?vSqbAv10Hn7UAbiM59bZXwAAYzTtf+PaJTiGKdMah5EvF/Z1BXpRwX5bAFor?=
 =?us-ascii?q?eXZyYSyo4HngyASeyuIqKDzTbTcr64GQ1npSxgevWZjijj+m2/87C7TZbRsh?=
 =?us-ascii?q?4C5mIN2pGE/m4pxUXI5NGBc8le7l+/0BmdhzuO48B4H1ApjqzrJZ59+ec8p5?=
 =?us-ascii?q?sBr2/tMiXslln/lYHOUQZ5qsmnt7rfSIr8usOMPJVf72O2euxm0oT3SaxpLw?=
 =?us-ascii?q?8EVG6W//WhjZLq50DVf+4WqsAsyJHkq76GNeNYh4q/PB5Xz70o6EuxKTn24e?=
 =?us-ascii?q?sxml81NwxoQCum04vSEHKRetTGNJLdyxzk2H8jj7iOZ5LkDcCYfTDT1bb7er?=
 =?us-ascii?q?Bl7FRAjRA+1s1b+8dMA6oac6ipCGbsqNzVCAM4OAWowuHhTe9wzZ4aRXnRXf?=
 =?us-ascii?q?2cIOXZtluP/OsjJK+BaJJG8Dr+Kv1w//f1ljd5gl4Se6C1wIEaIG61BPVoIk?=
 =?us-ascii?q?iVIDLsj94NHH1Mv18WQ+njiVnEWjlWag=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AeU7MxxVARTF+U29XckY5pcOxy7XV8LGtY1w5yb?=
 =?us-ascii?q?sCzp9Qe6C+9ojjO0qBtag/kgqQDs3Svuhfgq/Ns6m6BDJTqZ3Uqn0GeYxBW1?=
 =?us-ascii?q?gfhMEfjwEsU6vnQQWzZLaiJ2Q2SctHXV5huXq8NBsdA5OkPwSM+yXosG13eF?=
 =?us-ascii?q?23fUI9bqy9GtvclcOyhfy1qZbYMR5Vjjiwaq8gIByqoFfUu9INiIRvb6c9mB?=
 =?us-ascii?q?rP52FFY+BHgH9vd0iekRvm68G78YUGkWwY87ppv4YIGff/fqE1CKJVFi8nNG?=
 =?us-ascii?q?Zn78rtqRTFUU6T/HIaSWsbiF9FBQPC4BD8UcSU0GOy/qI1kGHSN82jZ7ExWA?=
 =?us-ascii?q?+L74Z6VVj3jCENGAwr1TzFlJ0gsq94+zGOty1cyoeIXqqqGKFgdfaOGLFSDS?=
 =?us-ascii?q?IJFo4ZHyYUMoOfUa1VBbEHJsZJgpn7+lRVg0a/WQ+VB8fu2CcPg3uu3I9k1f?=
 =?us-ascii?q?UAPQaW5gURQ4sftErzp43rDrodCeeYj5T65DrOCpEekX+1oMCAOlgg/viNY5?=
 =?us-ascii?q?defsnU0W43FTiGhQ69pqL3OyKzj+8VjEmB8+pDCuCUtDU6lwZKkhur9pkOip?=
 =?us-ascii?q?PZhJ9N8Aqdzidi77QPOMybUCsZKZbsWNMY/2nSGIIsb/ohfCJvvgU1mo9bna?=
 =?us-ascii?q?+EYRIn55kk3DfzcPKfcZKouwC8dva4cB1zq1ZVXuqWvyyt0BalyKraX/fl23?=
 =?us-ascii?q?NVl3cCiYap1DhFn1SbooDPAuVZ7B661y+J7jLw+vlaKG8mxZGGIr8d/K4tjZ?=
 =?us-ascii?q?wjv0SfJXb6qUTkkoS4Wk8+9PSh8sq/Rfa79r6Ta9FMoD7kLvg+kdaUZIZwek?=
 =?us-ascii?q?BGFyDTsaztybrp9kv0RqRX19I/iKT1j8uGAfkB/JaEGCEJwqFgyjK5MCakze?=
 =?us-ascii?q?8TniQJClwVSS2uiK7bIA/jGMnZUfSEqHfzyhNV/pWkdvWpSt2FZjCLyZjkcu?=
 =?us-ascii?q?MouAZMjQspytZH4IhIT6sMO+/3RhrpvcfDXUVjYSWp3+bqDsl83YoCWGWJR5?=
 =?us-ascii?q?WUK77WrUTWubAqM6+HY4sSoj/xLL4o6+O9xXM6mFpIZaCyxtNXc3G3GP16Pl?=
 =?us-ascii?q?+UKWThmNYPEGoG/0I+QeXmhUfEUGt7aHO7XqZ67TY+BQ=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AJUkiBxyvHn3pw83XCy+O/D0hRQkC/pjqNwoI44?=
 =?us-ascii?q?YmjLQQIvnx4cG7bwTWsO92hRrSXYyBtqwXw+GDqa3kUHwN7dGbvXQLYJFABH?=
 =?us-ascii?q?pnwY1e10RoSIaJXEL+Jf/uKSc9GZcKTwo/pyjlaBAPRZWbBRWa6jX6pXZaGk?=
 =?us-ascii?q?DxLw1wdPjySIXZ3d+q3eK/8IGBbwxUiWi4bKhpJRq76ATd5MgQxJFvMqIgjw?=
 =?us-ascii?q?fO8GFFdelMyGVjKEn2/V60ro/4tNYru3ZVuvcsstBNS777eKJqRrteEDkgLy?=
 =?us-ascii?q?Up/sTtrhfOV06C4HAbXmQQnUktYUCNpFmyFt+5uCuvnOt42RKzPeznUPcrXT?=
 =?us-ascii?q?KowJV5bUL6lnZXCTMaq0L4mv1ThasHnjmei0dhyNuHBePdfLI2NuuVNdlPdW?=
 =?us-ascii?q?piYOALXXdHGaOtQpsJUuVaE7tZ84/EpH8PvwP5AA30BcGxzC5pqnim56QLj7?=
 =?us-ascii?q?0wFT/h11Q+Jc8B6HP57+jHHagfNIL9hOGAhX2LJ7tXhj781q3mfRMkudaUX4?=
 =?us-ascii?q?kzepH8xmc9ExLj116Ilq3/IzO2ieY2jDOG0+1bZcGruzAFqxthoCX3/J11sY?=
 =?us-ascii?q?vSqbAv10Hn7UAbiM59bZXwAAYzTtf+PaJTiGKdMah5EvF/Z1BXpRwX5bAFor?=
 =?us-ascii?q?eXZyYSyo4HngyASeyuIqKDzTbTcr64GQ1npSxgevWZjijj+m2/87C7TZbRsh?=
 =?us-ascii?q?4C5mIN2pGE/m4pxUXI5NGBc8le7l+/0BmdhzuO48B4H1ApjqzrJZ59+ec8p5?=
 =?us-ascii?q?sBr2/tMiXslln/lYHOUQZ5qsmnt7rfSIr8usOMPJVf72O2euxm0oT3SaxpLw?=
 =?us-ascii?q?8EVG6W//WhjZLq50DVf+4WqsAsyJHkq76GNeNYh4q/PB5Xz70o6EuxKTn24e?=
 =?us-ascii?q?sxml81NwxoQCum04vSEHKRetTGNJLdyxzk2H8jj7iOZ5LkDcCYfTDT1bb7er?=
 =?us-ascii?q?Bl7FRAjRA+1s1b+8dMA6oac6ipCGbsqNzVCAM4OAWowuHhTe9wzZ4aRXnRXf?=
 =?us-ascii?q?2cIOXZtluP/OsjJK+BaJJG8Dr+Kv1w//f1ljd5gl4Se6C1wIEaIG61BPVoIk?=
 =?us-ascii?q?iVIDLsj94NHH1Mv18WQ+njiVnEWjlWag=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0F6AACKFJ5dbeeAioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWkFAQELAYIaBYFCLyqNJYVagWqKIIoIhSiBPzQRAQEBAQEBAQE?=
 =?us-ascii?q?BBgEBGBUCAQEBAYQ+glIjNgcOAgECCQEBAQMBAQECAQUCAQECAhANCwkGK4U?=
 =?us-ascii?q?0DINGOzABAQEBAQEBAQEBAQEBAQEBAQEBARUCgQEpAQEZAgEDAQIPIAENARs?=
 =?us-ascii?q?dAQMCCQEBBRA7Ax4CEQEFARwHEgUdhUYBAy6jeYEDPIw7BQEXgn4FgQSDOwo?=
 =?us-ascii?q?ZJw1mgTwCBxKBIgGHNIM8gR2CF4FEgx2BDoEMgj+FVwSsZR1BB4IlhiaKa4Q?=
 =?us-ascii?q?IG417i0UtjgCKMI8GAgoHBg8jgTYCgglNI4EBgjtQEBSBTwwXg1CKb1iBBQM?=
 =?us-ascii?q?7j1gBAQ?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0GKAAA8D55dh0tDioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWkFAQELAYIagUYvKo0lhVqBaoogigiFKIE/NBEBAQEBAQEBAQE?=
 =?us-ascii?q?GAQEYFQIBAQEBhD6CUiM2Bw4CAQIJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQg?=
 =?us-ascii?q?phTQMg0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQItVCkBARkCAQMBAg8gAQ0?=
 =?us-ascii?q?BGx0BAwIJAQEFEDsDHgIRAQUBHAcSBR2DAIFqAQMdpAaBAzyMOwUBF4J+BYE?=
 =?us-ascii?q?EgzgKGScNZoE8AgcSgSIBhzSDPIEdgheBRIMdgQ6BDII/hVEErGUdQQeCJYY?=
 =?us-ascii?q?mimuECBuNe4tFLY4AijCPBgIKBwYPI4E2AoIJTSOBAYI7UBAUgU8MF4NQim9?=
 =?us-ascii?q?YgQUDO5MiAQE?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0GKAABKBp5dh+iAioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWkFAQELAYIagUYvKo0lhVqBaoogigiFKIE/NBEBAQEBAQEBAQE?=
 =?us-ascii?q?GAQEYFQIBAQEBhD6CUiM2Bw4CAQIJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQg?=
 =?us-ascii?q?phTQMg0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQItVCkBARkCAQMBAg8gAQ0?=
 =?us-ascii?q?BGx0BAwIJAQEFEDsDHgIRAQUBHAcSBR2DAIFqAQMdo3OBAzyMOwUBF4J+BYE?=
 =?us-ascii?q?EgzoKGScNZoE8AgcSgSIBhzSDPIEdgheBRIMdgQ6BDII/hVEErGUdQQeCJYY?=
 =?us-ascii?q?mimuECBuNe4tFLY4AijCPBgIKBwYPI4E2AoIJTSOBAYI7UBAUgU8MF4NQim9?=
 =?us-ascii?q?YgQUDO5MiAQE?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0FMAAC/951dh0O0hNFlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWkFAQELAYIagUQxKo0lhVqBajmJZ4oIhSiBPzQRAQEBAQEBAQE?=
 =?us-ascii?q?BBgEBGBQBAgEBAQGEPoJSIzYHDgIBAgkBAQEDAQEBAgEFAgEBAgIQAQEBCgs?=
 =?us-ascii?q?JCCmFNAyDRjswAQEBAQEBAQEBAQEBAQEBAQEBAQEVAi1UKQEBGQIBAwECDyA?=
 =?us-ascii?q?BDQEbHQEDAgkBAQUQOwMeAhEBBQEcBxIFHYMAgWoBAx2jUYEDPIw7BQEXgn4?=
 =?us-ascii?q?FgQSDPAoZJw1mgTwCBxKBIgGHNIM8gR2CF4FEgx2BDoEMgj+FUQSsZR1BB4I?=
 =?us-ascii?q?lhiaKa4QIG417i0UtjgCKMI8GAgoHBg8jgTYCgglNI4EBgjtQEBSBTwwXg1C?=
 =?us-ascii?q?KbyYygQUBAQE7kyIBAQ?=
X-IPAS-Result: =?us-ascii?q?A0F6AACKFJ5dbeeAioBlHAEBAQEBBwEBEQEEBAEBgWkFA?=
 =?us-ascii?q?QELAYIaBYFCLyqNJYVagWqKIIoIhSiBPzQRAQEBAQEBAQEBBgEBGBUCAQEBA?=
 =?us-ascii?q?YQ+glIjNgcOAgECCQEBAQMBAQECAQUCAQECAhANCwkGK4U0DINGOzABAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBARUCgQEpAQEZAgEDAQIPIAENARsdAQMCCQEBBRA7A?=
 =?us-ascii?q?x4CEQEFARwHEgUdhUYBAy6jeYEDPIw7BQEXgn4FgQSDOwoZJw1mgTwCBxKBI?=
 =?us-ascii?q?gGHNIM8gR2CF4FEgx2BDoEMgj+FVwSsZR1BB4IlhiaKa4QIG417i0UtjgCKM?=
 =?us-ascii?q?I8GAgoHBg8jgTYCgglNI4EBgjtQEBSBTwwXg1CKb1iBBQM7j1gBAQ?=
X-IPAS-Result: =?us-ascii?q?A0GKAAA8D55dh0tDioBlHAEBAQEBBwEBEQEEBAEBgWkFA?=
 =?us-ascii?q?QELAYIagUYvKo0lhVqBaoogigiFKIE/NBEBAQEBAQEBAQEGAQEYFQIBAQEBh?=
 =?us-ascii?q?D6CUiM2Bw4CAQIJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQgphTQMg0Y7MAEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBFQItVCkBARkCAQMBAg8gAQ0BGx0BAwIJAQEFE?=
 =?us-ascii?q?DsDHgIRAQUBHAcSBR2DAIFqAQMdpAaBAzyMOwUBF4J+BYEEgzgKGScNZoE8A?=
 =?us-ascii?q?gcSgSIBhzSDPIEdgheBRIMdgQ6BDII/hVEErGUdQQeCJYYmimuECBuNe4tFL?=
 =?us-ascii?q?Y4AijCPBgIKBwYPI4E2AoIJTSOBAYI7UBAUgU8MF4NQim9YgQUDO5MiAQE?=
X-IPAS-Result: =?us-ascii?q?A0GKAABKBp5dh+iAioBlHAEBAQEBBwEBEQEEBAEBgWkFA?=
 =?us-ascii?q?QELAYIagUYvKo0lhVqBaoogigiFKIE/NBEBAQEBAQEBAQEGAQEYFQIBAQEBh?=
 =?us-ascii?q?D6CUiM2Bw4CAQIJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQgphTQMg0Y7MAEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBFQItVCkBARkCAQMBAg8gAQ0BGx0BAwIJAQEFE?=
 =?us-ascii?q?DsDHgIRAQUBHAcSBR2DAIFqAQMdo3OBAzyMOwUBF4J+BYEEgzoKGScNZoE8A?=
 =?us-ascii?q?gcSgSIBhzSDPIEdgheBRIMdgQ6BDII/hVEErGUdQQeCJYYmimuECBuNe4tFL?=
 =?us-ascii?q?Y4AijCPBgIKBwYPI4E2AoIJTSOBAYI7UBAUgU8MF4NQim9YgQUDO5MiAQE?=
X-IPAS-Result: =?us-ascii?q?A0FMAAC/951dh0O0hNFlHAEBAQEBBwEBEQEEBAEBgWkFA?=
 =?us-ascii?q?QELAYIagUQxKo0lhVqBajmJZ4oIhSiBPzQRAQEBAQEBAQEBBgEBGBQBAgEBA?=
 =?us-ascii?q?QGEPoJSIzYHDgIBAgkBAQEDAQEBAgEFAgEBAgIQAQEBCgsJCCmFNAyDRjswA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEVAi1UKQEBGQIBAwECDyABDQEbHQEDAgkBA?=
 =?us-ascii?q?QUQOwMeAhEBBQEcBxIFHYMAgWoBAx2jUYEDPIw7BQEXgn4FgQSDPAoZJw1mg?=
 =?us-ascii?q?TwCBxKBIgGHNIM8gR2CF4FEgx2BDoEMgj+FUQSsZR1BB4IlhiaKa4QIG417i?=
 =?us-ascii?q?0UtjgCKMI8GAgoHBg8jgTYCgglNI4EBgjtQEBSBTwwXg1CKbyYygQUBAQE7k?=
 =?us-ascii?q?yIBAQ?=
X-IronPort-AV: E=Sophos; i="5.67,277,1566885600"; d="scan'208"; a="369257329"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="414364220"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="369106359"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="413815837"
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
X-Original-Recipients: migi9492@g.colorado.edu
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=1e100.net;
 s=20161025; 
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to        
 :references:mime-version:content-transfer-encoding;       
 bh=BimiSAhIyu/wlnbGZzM5zv98VeK3KGxYKaa4VCWD3vc=;       
 b=IcsVKC1gDfXwBrSk+wcQnLC5qdrAl2jPn2KkAZB1txZOGGxYGjjscvgrAilA+U9Tto        
 Ne08m6OqxkfwnmUDVZbRum/FgyJW5LnDUxeNZLDzqUVMB/wBx9xveVRNZo6nZfTSJshE        
 57KLSg/jMzv2ydeTbOGoNVrTO2e5ymX9OpSVK3azmBHS3nROub1EpFkb15JrFEWlOSPm        
 V3IgxkOmXUblAMfGqvOrIaL7elqxBKDU6ZlEFtoCipR6D7JZgapJh2TG5pHYAl1Cgy+A        
 oOsQtFWqpGnZxwP9Sb0VmvXpMTPtAZHv5VMIe9IS0n52EQ+hvKeYM4PGyQVQQ4gXxBhH        
 UVdg==
X-Gm-Message-State: APjAAAUhNuRTnM4AptJ+9hsjeEl2tr604oZLmAOozHDLyZZpqU2VEdAP 
 UqsK6mDRKvpFtxIz0G9N9GQ=
X-Google-Smtp-Source: APXvYqwFyDfey8Cksi+zaDC4bwYRec4uXM/PDJXCjftXpBCynaS44f28FBJDexcQJTmMprUYCuEbow==
X-Received: by 2002:a81:a303:: with SMTP id a3mr3065880ywh.133.1570634854880;
 Wed, 09 Oct 2019 08:27:34 -0700 (PDT)
From: "William Breathitt Gray" <vilhelm.gray@gmail.com>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>
Subject: [PATCH v17 02/14] lib/test_bitmap.c: Add for_each_set_clump8 test
 cases
Date: Wed,  9 Oct 2019 11:27:00 -0400
Message-Id: febc0fb8151e3e3fdd61c34da9193d1c4d7e6c12.1570633189.git.vilhelm.gray@gmail.com
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570633189.git.vilhelm.gray@gmail.com>
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
X-MS-Exchange-Organization-ExpirationStartTime: 09 Oct 2019 17:30:12.2445 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: ea76b1ce-f066-4f27-7c3b-08d74cde5702
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-Forefront-Antispam-Report: CIP:128.138.67.75; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:SKN; SFS:; DIR:INB; SFP:; SCL:-1; SRVR:BN8PR03MB4964; H:ipmx4.colorado.edu;
 FPR:; SPF:None; LANG:en; ; SKIP:1; 
X-MS-Exchange-Organization-AuthSource: BY2NAM01FT018.eop-nam01.prod.protection.outlook.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-OriginatorOrg: colorado.edu
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ea76b1ce-f066-4f27-7c3b-08d74cde5702
X-MS-TrafficTypeDiagnostic: BN8PR03MB4964:|BN8PR03MB4964:
X-MS-Exchange-Organization-SCL: -1
X-MS-Oob-TLC-OOBClassifiers: OLM:454;
X-Microsoft-Antispam: BCL:0;
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2019 17:30:12.0534 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ea76b1ce-f066-4f27-7c3b-08d74cde5702
X-MS-Exchange-CrossTenant-Id: 3ded8b1b-070d-4629-82e4-c0b019f46057
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3ded8b1b-070d-4629-82e4-c0b019f46057; Ip=[128.138.67.75];
 Helo=[ipmx4.colorado.edu]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR03MB4964
X-MS-Exchange-Transport-EndToEndLatency: 06:11:05.3966834
X-MS-Exchange-Processed-By-BccFoldering: 15.20.2347.014
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; ex:0; auth:0; dest:I;
 ENG:(750127)(520002050)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qHzXsnF3Y2RJVrjh9dqr0Fb80c8O7N7UA9Kgr8x08y/3BEWK350ZOkJ/hDCR?=
 =?us-ascii?Q?RQA9VZYuIkrU+6SppmnFWF1WF1nZkpJfaLFm4yEOcHzFDCNkxQCLrKZxQfrl?=
 =?us-ascii?Q?Fdo+DJg2AKXxU0Wi6EAGBXNDaCDlVwfjGl3FCnALUkxBPqs7MClHiNZvRVNE?=
 =?us-ascii?Q?Th+608RZY+Qe6Ok+MQgN1FGyYD5JkgWpVyLdPX4Cwm30pXpcUzrxr0emxCBY?=
 =?us-ascii?Q?pNmUdrbJEIUS6njFexBnRTgcDoEjLNkQfFNh6tUPqrzNpcvbcSPvs9RYZDs+?=
 =?us-ascii?Q?PFoddLrtsgYkgGhrhGYU25nbk7u0TLhmpxMZuUN+VG5BLUB39xvSjUTZJIGg?=
 =?us-ascii?Q?ev7fxmeKeqPX5HpXFCVyaw8giWLZvMVtp5y5YKj24fx/oiOQ8uyjAr0TNvWP?=
 =?us-ascii?Q?V65aQc1sN5jXuFvEJjwnRP5nCVZgq22omr+uS8P4avpxwJ+PUofIzSLObMWj?=
 =?us-ascii?Q?rGLtoVcUbIpzGKrdEcTVHelPZ06UuHME/YKnqgA04hsbbAdvTJknHmShmzFH?=
 =?us-ascii?Q?LU/i+rxabSxdXcuxVLdADG5iTFhPzU5bHgJTvaX+oTYA8yLlsdZsiA8dGLyP?=
 =?us-ascii?Q?kCvK5P5WRT1UfTg6F3aZueR46xyPiXA9/ZpINzq4E9gbmAL1qOupQDOmhO5E?=
 =?us-ascii?Q?tie/AL8aWEdJ3kWrRIaYHANLKU1urqmm5NAhTCRKlOmuBTmnNHT/115mBpZa?=
 =?us-ascii?Q?5PoRhmC8NyMX3UYUVt/UtdQk+Qamsv8iP7QXKSorUmLW4aPh2UJaZUznNWFX?=
 =?us-ascii?Q?IiQDfM+L6jjwffONFVaEv0sBXAkb7hPOwBOb6Zgl4IK67gFMyh9AwgD/Q7TN?=
 =?us-ascii?Q?+NiGd6LEA18VRC9YC4PuWGVENgDrbrA4rEEdktQvE61RSxy/O/Q3iDHBkqxO?=
 =?us-ascii?Q?+gsrLzdlcHbn2f0Zeqt4BGVo55lnjWZAyzxZo345Rlv1SgrKac8S9GYlrHYA?=
 =?us-ascii?Q?Khd9NdY+OJhB/bRlO6AVupUJZSNIf5tj5sVWAhumRsTFvryv+KHc1Vogqv+j?=
 =?us-ascii?Q?4X38WU8mppD420Q5WhQ/C6rb9hVjjclY4Hd892inXfy34SS36W4aRj059wcZ?=
 =?us-ascii?Q?uHCnpndlmfThF079tR3TW6Wbzh+gEFSdCTU1DOZcoBWovCVkCCM=3D?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_170259_852498_5A89A2FF 
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

The introduction of the for_each_set_clump8 macro warrants test cases to
verify the implementation. This patch adds test case checks for whether
an out-of-bounds clump index is returned, a zero clump is returned, or
the returned clump value differs from the expected clump value.

Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Acked-by: Andrew Morton <akpm@linux-foundation.org>
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 lib/test_bitmap.c | 65 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/lib/test_bitmap.c b/lib/test_bitmap.c
index 51a98f7ee79e..dc167c13eb39 100644
--- a/lib/test_bitmap.c
+++ b/lib/test_bitmap.c
@@ -92,6 +92,36 @@ __check_eq_u32_array(const char *srcfile, unsigned int line,
 	return true;
 }
 
+static bool __init __check_eq_clump8(const char *srcfile, unsigned int line,
+				    const unsigned int offset,
+				    const unsigned int size,
+				    const unsigned char *const clump_exp,
+				    const unsigned long *const clump)
+{
+	unsigned long exp;
+
+	if (offset >= size) {
+		pr_warn("[%s:%u] bit offset for clump out-of-bounds: expected less than %u, got %u\n",
+			srcfile, line, size, offset);
+		return false;
+	}
+
+	exp = clump_exp[offset / 8];
+	if (!exp) {
+		pr_warn("[%s:%u] bit offset for zero clump: expected nonzero clump, got bit offset %u with clump value 0",
+			srcfile, line, offset);
+		return false;
+	}
+
+	if (*clump != exp) {
+		pr_warn("[%s:%u] expected clump value of 0x%lX, got clump value of 0x%lX",
+			srcfile, line, exp, *clump);
+		return false;
+	}
+
+	return true;
+}
+
 #define __expect_eq(suffix, ...)					\
 	({								\
 		int result = 0;						\
@@ -108,6 +138,7 @@ __check_eq_u32_array(const char *srcfile, unsigned int line,
 #define expect_eq_bitmap(...)		__expect_eq(bitmap, ##__VA_ARGS__)
 #define expect_eq_pbl(...)		__expect_eq(pbl, ##__VA_ARGS__)
 #define expect_eq_u32_array(...)	__expect_eq(u32_array, ##__VA_ARGS__)
+#define expect_eq_clump8(...)		__expect_eq(clump8, ##__VA_ARGS__)
 
 static void __init test_zero_clear(void)
 {
@@ -404,6 +435,39 @@ static void noinline __init test_mem_optimisations(void)
 	}
 }
 
+static const unsigned char clump_exp[] __initconst = {
+	0x01,	/* 1 bit set */
+	0x02,	/* non-edge 1 bit set */
+	0x00,	/* zero bits set */
+	0x38,	/* 3 bits set across 4-bit boundary */
+	0x38,	/* Repeated clump */
+	0x0F,	/* 4 bits set */
+	0xFF,	/* all bits set */
+	0x05,	/* non-adjacent 2 bits set */
+};
+
+static void __init test_for_each_set_clump8(void)
+{
+#define CLUMP_EXP_NUMBITS 64
+	DECLARE_BITMAP(bits, CLUMP_EXP_NUMBITS);
+	unsigned int start;
+	unsigned long clump;
+
+	/* set bitmap to test case */
+	bitmap_zero(bits, CLUMP_EXP_NUMBITS);
+	bitmap_set(bits, 0, 1);		/* 0x01 */
+	bitmap_set(bits, 9, 1);		/* 0x02 */
+	bitmap_set(bits, 27, 3);	/* 0x28 */
+	bitmap_set(bits, 35, 3);	/* 0x28 */
+	bitmap_set(bits, 40, 4);	/* 0x0F */
+	bitmap_set(bits, 48, 8);	/* 0xFF */
+	bitmap_set(bits, 56, 1);	/* 0x05 - part 1 */
+	bitmap_set(bits, 58, 1);	/* 0x05 - part 2 */
+
+	for_each_set_clump8(start, clump, bits, CLUMP_EXP_NUMBITS)
+		expect_eq_clump8(start, CLUMP_EXP_NUMBITS, clump_exp, &clump);
+}
+
 static void __init selftest(void)
 {
 	test_zero_clear();
@@ -413,6 +477,7 @@ static void __init selftest(void)
 	test_bitmap_parselist();
 	test_bitmap_parselist_user();
 	test_mem_optimisations();
+	test_for_each_set_clump8();
 }
 
 KSTM_MODULE_LOADERS(test_bitmap);
-- 
2.23.0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
