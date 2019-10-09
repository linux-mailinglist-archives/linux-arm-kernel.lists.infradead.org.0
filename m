Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7932D5409
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 05:40:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tEwwiHYGl9KzVsNwe0kntOeeTlOiLpJPprETRbfDLFc=; b=lO6/IaC61aXOS+
	plQu5knFl7JFIXfEqfQNMsUM2b+N+sjEeLyzj3LbkyGIg3amZFdFZFdRHqlOUbqKBMEZT3f3CII8Q
	RNBwuA2oW+H9vTCsTTd2x6p+DiyNw7vIq5d6Phk3sUekmnikkBKbFa9+2VSPRHVIUMR6p+hpDQNcZ
	4wV2Q9gqMjrXWBnJJHSPt1SYbe8iTsP1xD4id580V7XBUj9bzq8t/OWT6fU/wjk/c8VMUz6mUFI5n
	ePIpHI/hzdUm5Zm5EWoqkEFUZAu8F4XSpN3pvHirAAgL0uc7jay2co6YNwhXCUGYHs+qBjG++lT66
	cAcF4NbydeRzjpRwo78g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJUkQ-0004xW-34; Sun, 13 Oct 2019 03:40:46 +0000
Received: from listssympa-test.colorado.edu ([128.138.129.156])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJUkH-0004xA-EB
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 03:40:38 +0000
Received: from listssympa-test.colorado.edu (localhost [127.0.0.1])
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/sympa) with ESMTPS id
 x9D3eOKM030612
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 12 Oct 2019 21:40:25 -0600
Received: (from root@localhost)
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/submit) id
 x9D3eNEu030553; Sat, 12 Oct 2019 21:40:23 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025; 
 h=from:to:cc:subject:date:message-id:in-reply-to:references 
 :mime-version:content-transfer-encoding;       
 bh=kIovLVirYpbsjXR9oN+2msyJPjO/yPvE5mW4qwwn3Bw=;       
 b=fNvV9MNtNRB2SmMcOwun6o/yv/8rboCkkmmp1LS9cIP+XOAGS/CLBRGWjYiMndh3MZ        
 IoIaqluJ7KFSoJe5OT6s+wPfB9CiE5OFVpx8nIHZqW5ochtR6Bws7sXUGToSTRoqXxv9        
 hggfw+nZMjBoXQDaIJ1xg5Pn3N2+t+Vx/hlt5xED7zWRGrEkJbti4gbDRvyESJoublv6        
 f6D1qXclG7hC0/zLrtY8JDa/MW8GOSBv+8s4H5G/AbN+Pz8T0vPIiXgAk7Vpr2z8/HQf        
 JY9nBx0BfnFIHpi0FzjbSJxUhHbZhH/SjiVBjEubz0mzV8AMXXIpsoyoRVge+4PMoHAr        
 L7Sg==
Received: from BN8PR03MB5092.namprd03.prod.outlook.com (2603:10b6:a03:e0::22)
 by BYAPR03MB4376.namprd03.prod.outlook.com with HTTPS via
 BYAPR05CA0081.NAMPRD05.PROD.OUTLOOK.COM; Wed, 9 Oct 2019 19:47:09 +0000
Received: from BN3PR03CA0067.namprd03.prod.outlook.com
 (2a01:111:e400:7a4d::27) by
 BN8PR03MB5092.namprd03.prod.outlook.com (2603:10b6:408:7d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.17; Wed, 9 Oct
 2019 18:00:46 +0000
Received: from SN1NAM01FT054.eop-nam01.prod.protection.outlook.com
 (2a01:111:f400:7e40::205) by BN3PR03CA0067.outlook.office365.com
 (2a01:111:e400:7a4d::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2327.24 via Frontend
 Transport; Wed, 9 Oct 2019 18:00:46 +0000
Received: from ipmx7.colorado.edu (128.138.128.233) by
 SN1NAM01FT054.mail.protection.outlook.com (10.152.65.228) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384)
 id 15.20.2347.16 via Frontend Transport; Wed, 9 Oct 2019 18:00:45 +0000
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 11:08:48 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 10:31:55 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 10:07:35 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:51:22 -0600
Received: from ipmx8.colorado.edu ([128.138.67.85])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 09:42:32 -0600
Received: from mx.colorado.edu ([128.138.67.77])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 09:36:44 -0600
Received: from ipmx7.colorado.edu ([128.138.128.233]) by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 09:31:59 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:29:29 -0600
Received: from vger.kernel.org ([209.132.180.67]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:27:45 -0600
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand id
 S1731745AbfJIP1n (ORCPT <rfc822; michael.gilroy@colorado.edu>);
 Wed, 9 Oct 2019 11:27:43 -0400
Received: from mail-yw1-f67.google.com ([209.85.161.67]:45184 "EHLO       
 mail-yw1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org       
 with ESMTP id S1731726AbfJIP1j (ORCPT       
 <rfc822; linux-kernel@vger.kernel.org>); Wed, 9 Oct 2019 11:27:39 -0400
Received: by mail-yw1-f67.google.com with SMTP id x65so944017ywf.12;
 Wed, 09 Oct 2019 08:27:39 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])        by smtp.gmail.com with ESMTPSA id
 g40sm611863ywk.14.2019.10.09.08.27.36        (version=TLS1_3
 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);        Wed, 09 Oct 2019
 08:27:38 -0700 (PDT)
Authentication-Results: spf=none (sender IP is 128.138.128.233)
 smtp.mailfrom=vger.kernel.org; 
 o365.colorado.edu; dkim=pass (signature was verified)
 header.d=gmail.com;o365.colorado.edu; dmarc=pass action=none
 header.from=gmail.com;
Received-SPF: None (protection.outlook.com: vger.kernel.org does not designate
 permitted sender hosts)
IronPort-SDR: r3KeDa5StFhxz0e1XLzUvZNebBOKM3GIg6z6vC8nNoC5n+iDIM7cVdHBnmPdfxjGgkaqhGV8rG
 IVJ3fwnZfqTqGJvDB5cwjmG//O290dYFU=
IronPort-SDR: nMo21CDrX92/gNGCPIZ1hNrw73vdGybaezzglGlAbPux157euYjzpQas1ySqlimbGz7j7nHr5L
 M1fp7ALOtO64Ez2TvwBHsxpYdsu4uxTR0=
IronPort-SDR: W028hoBZ4aiNxaUh2M7io2yUJ7jdBps1sOS83GvD+JM7xAXdz7Zf0Oo30FXpw2O5zxIl48m6e0
 KYVhUHzxjyKvHopAjpuXbhUvnxMz8d/VY=
IronPort-SDR: DZjYZ8fS93Mz5ZNCgeOzSJDTudEip8D+hcayLk+ZRgy9WuvvwuuU3PY4qRFkPDFcbAioViZDI4
 M8byec+11P/NFChefqIhVKS00zogqLPp4=
IronPort-SDR: /pmWInqWe6YpdX8T1HCDsCKh4RueS/hR5XaP9oWhiFM6t9vmLICYHAwYqrmtL42mkO353yifr3
 ZCCWjXfQjEpkfQeCQEJJWyV+CwSagId/U=
IronPort-SDR: PLnyqMGJdgoioh59Drr3R3sQ7Gogplwypu/7OWqiqtFs7GMtklW6TC7IgHoshJKZKtsmTGxEUn
 UayxXQLPlvrPf64fnfPTZVSnv8RHRBtqY=
IronPort-SDR: VP5txSVqVXGfBWhj/rxeiYAH0gKg8Cb5RxH1fda/ebdMr0KnNbMdTma0LytxgyQLyALoU/5vW+
 nIg/wgu4ndpnCuqb17TcioToRPf9T+WBs=
IronPort-SDR: Wa3lg/Fpb4BpnWdxBCf1p3jkcKUpqzoH19So8t9+SBkLbOq8EbsOndbsRnB3qBWbHOrNu5fNeC
 ZY/4LKU1QxnoAYbNopTFWu9S8b79/wFH0=
IronPort-SDR: y7VOGldS5ia5GByqEtKGwL69ZDDOOka9I+u/whJSnlbEsp/dZ5h176YJzU2QByfwgKfPos33Lw
 xGML5ral5pRLUxygkRQYTIbMicRsHkcis=
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
IronPort-PHdr: =?us-ascii?q?9a23=3ARvr6EBDcpxGtGMzvpoFbUyQJP3V1l5bVG0s49J?=
 =?us-ascii?q?MjlrtSc6OlocS/blKKvKYlhQrTRoye8PJN0beI4OjrDHYN5Z+RvXxFapFIXg?=
 =?us-ascii?q?8IhZZz/URoSIbNQQWzIKvlaiU7GIJJU1o2t2ruaxAMRp+mPQCBxx/6pXZaUl?=
 =?us-ascii?q?23fQogKP7yH9zOiJa83LKp5pfRbg5U1ja0fb4gKRittgzeu4wXjdljLOMrxw?=
 =?us-ascii?q?PNsz5UfLZMyG1lP1+VlBvng6X4tNYru2wY87pz8s9FXODkcr4jTLteXj8hNX?=
 =?us-ascii?q?w44tGuqQPKSxCB62FZX2MdlRZJBQeWiXOyFt+5+mOy/uB9jSq7OtPSc7EuaC?=
 =?us-ascii?q?yo9KVbck7vrmRdMiUo0lnVrYthtLx2/Ree+wVg3IiPSp7AZ58cNuuVNZtSDS?=
 =?us-ascii?q?JLC8h3SRIQJ6WgSbElVdEEGO1/sJT7+VxJvAX5VROmA8jsyTpNnibS5vwx8t?=
 =?us-ascii?q?xiISbv8zdnNPYkilvrruT0EaEeUbuQ/syqhX2LJ7sekX+1yY/pewklvNPTfp?=
 =?us-ascii?q?xLdujclG4TSRiGkW2eg93OPh7I8cozq3jL6ctAZ/uQ1mksqx1L/BKw3Zg3ur?=
 =?us-ascii?q?TmuoUu9mrD7BVp3tdQR5XwAAYzKZbsWJtfuC+FdI1EZ8EIRFFRlC8b6OQWts?=
 =?us-ascii?q?ODenMsktc7hCDPLPyDb9WYzz68RtmrDi1Vh1BvZLPjiByey1ax59beUdS+1E?=
 =?us-ascii?q?gUy0gN2pGE/jhFn1TdtOTeU8t2+mj+2R3XkBL38P11cWIYnO3+FM4O5YUaiN?=
 =?us-ascii?q?lDqhjjQwCxsU/Qz5eEJnl85NCJ6tToS7a5mIeGbZ0kzSHHPMFM0oT3Saxwek?=
 =?us-ascii?q?BGfVnK/86sjJft+2PYYK1L1tMkkKPikoDnJeQRlK6ZRDRX07gJ6TuiBSX+1c?=
 =?us-ascii?q?YmzVAiHGJkYAmAno/TBV7DY6zAKPCfqk7J8n8jj7iOdvWpSrGSFXeWxeSpbf?=
 =?us-ascii?q?N88Ula0A0p0ZVF6olJDq1UOPvoQRyr7o7xEwM5Pgqowu3uFNR60MYkVHmSBr?=
 =?us-ascii?q?OCbvyAtE/O7eUrJPOFaIhTtTrgeLAp5P/r2GcwgkRVPbKo0p0edG2iE7x4Ll?=
 =?us-ascii?q?+Yb3vhjpZJEWoDsgckCu2/oFKHWD9XIX21Wq8=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3A7ZqBfxXW+xcakRwach9sXgsNYvfV8LGtY1w5yb?=
 =?us-ascii?q?sCzp9Qe6C+9ojjO0qBtag/kgqQDs3Svuhfgq/Ns6m6BDJTqZ3Uqn0GeYxBW1?=
 =?us-ascii?q?gfhMEfjwEsU6vnQQWzZLaiJ2Q2SctHXV5huXq8NBsdA5OkPwSM+yXosG13eF?=
 =?us-ascii?q?23fUI9bqy9GtvclcOyhfy1qZbYMR5Vjjiwaq8gIByqoFfUu9INiIRvb6c9mB?=
 =?us-ascii?q?rP52FFY+BHgH9vd0iekRvm68G78YUGkWwY87ppv4YIGff/fqE1CKJVFi8nNG?=
 =?us-ascii?q?Zn78rtqRTFUU6T/HIaSWsbiF9FBQPC4BD8UcSU0GOy/qI1kGHSN82jTpEzRx?=
 =?us-ascii?q?Cc7r1aUBXzihc9ZjkfszvSkd1StKB85wOZuTEixrGIeZ6KMqFUYfaOGLFSDS?=
 =?us-ascii?q?IJFo4ZHyYUDKWiUdoqKfYnB8wClIzYrHwRsB3gAk69GqS/0DVPrXz12Kgiis?=
 =?us-ascii?q?AaQArn5E8QOPshizP/iP/PG5gQYOGQyqXIlhDxCpEekX+1oMCAOlgAptCFRL?=
 =?us-ascii?q?ZtU5Xy53IoNQ6YqWnOss/6Bz2/h88MnjW8wdR4RbKpqk4Vsj4spTOv2v1yoJ?=
 =?us-ascii?q?bS2Zkl93/48h5F+oEsFc2mGSsZKZbsWNMY/2nSN4R5TNxhRVNNugw9+oQqsL?=
 =?us-ascii?q?+ZJTgFlawhnDiFKODETZjP4hb/Cfa8DWhqu0hKYp+8pRyu8BSvwMHGSNiZ63?=
 =?us-ascii?q?RNsyBBjIep1DhFn1SbooDPAvUj0h646T2L+F/TwbkDM2QuiZuLCbIohZsPxr?=
 =?us-ascii?q?U0im7dXX/txGWro+i/fGNnwvr417z5WpTnlpC1NNBKkhukIPRpuvWxZIZwek?=
 =?us-ascii?q?BGFyDTsaye5ezl112hartMoNwWiqiBnoLYL/85tpO5IwVn0qZk0BS+MR2k/c?=
 =?us-ascii?q?kSjyECPmwVUTe3v6nxIFbfJ8rGAvr832yJlxdC3ZWkdvWpSt2FZjCLtOjacu?=
 =?us-ascii?q?MouAZMjQspytZH4IhIT6sMO+/3RhrpvcfDXUVjYSWp3+bqDsl83YoCWGWJR5?=
 =?us-ascii?q?WUK77WrUTWubAqM6+HY4sSoj/xLL4o6+O9xXM6mFpIZaCyxtNXc3G3GP16Pl?=
 =?us-ascii?q?+UKWThmNYPEGoG/0I+QeXmhUfEUGt7aHO7XqZ67TY+BQ=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3ApeGWVhKwB1grJrEvgdmcpTZQNAQEmpCxExAc7o?=
 =?us-ascii?q?cul7NJdPrzosb8aRWMrfw4lkTAGJ7b4qgZ1bmeuPX6VGgJ8ZuN92oPdJVcWh?=
 =?us-ascii?q?NW7Kde10RoSIbNQUGuI/vjbih8F8NHBxd+qivjaBYMQJyjNDiw6jX6pXZaUl?=
 =?us-ascii?q?3/YARvIeGnBomAhM/lzP24+ZDYf1dEjSawM7Z/Nw6/ogiUt8VEgI0nMKspzg?=
 =?us-ascii?q?qMvnwaYelYyHllI1mehHOero/4tNYru2wY6fcg8sMFT6jgZKU/S+5TCzI6Pm?=
 =?us-ascii?q?YpodHxvB/YQwaVo3YaWWIakxxHUG2npFmyFt+5+mPwtr9++S6EGfP3V4EsUy?=
 =?us-ascii?q?+g3506Tzmr0iIcJhwB8kaQm/Ruof9en064uAN5mKTLNdLwVrI2NuuVNZtSTz?=
 =?us-ascii?q?9PeNhvBglnHqWGRdE0Cs8KGvlFqdf64EoQ6kukDw6HB+DqzycRokSn1owCkN?=
 =?us-ascii?q?QGOC79mycENeghj3blrfDzOKdJdNLQruGAhX2LJ7sekRb6yYHRdg0D/tKiZr?=
 =?us-ascii?q?VSfJf29Rc0VBz9gH/Bgo3IYhS76Pwd4266z9h5ar+ogG47kV9bvSPw3fcRpb?=
 =?us-ascii?q?XOvb4vzUn05TsopeR9bZXwAAYzKZakH5ReqGKcBa50aMQSek1hmQRj2rJbgZ?=
 =?us-ascii?q?jgWnJJ1NcZ11nfb+DaY6WkvQDcbsmLDDRajm5kJL21qyys4GWb6OrhXM2qjj?=
 =?us-ascii?q?Mo5mIN2pGE/jhF2UL/s9G3Qf9SoUeKgXGd8xrP27FmDUlzsJWLBLka6KBzxo?=
 =?us-ascii?q?FPkRnsWQb8vgbOnv+qLlsc2+mY5M3kPYv+vMWOZ8hUsw+bUOxm0oT3Saxwei?=
 =?us-ascii?q?o/Dm6x6byW2rvN3G3hQe1knP88qYvJjZD6L/YbhumCAQ5r+IQO9hytVzK07o?=
 =?us-ascii?q?QxuEk3DUpefwOAtbbmNhKSGNX/Ld6l5jbk2H8jj7iOdvXFXa7Cey2Q2KekfK?=
 =?us-ascii?q?x67VZb0hZ2191E+pZIX6kIO+mgABWjncHEDhI/Lw2/yvrmD9M47I4FRGaTGf?=
 =?us-ascii?q?HGYqbC91SP4uU1KuWLIoIZpWW1J/sk4qv2hGQi0R8GfKav1IcKcn3wAPl8Ik?=
 =?us-ascii?q?uYbHatytcMGGsHpEw/GcTljVSDVXhYYHO/?=
IronPort-PHdr: =?us-ascii?q?9a23=3AcwPKXBEMrsKwEQrNd03DAZ1GYnF66ZnXHytQx4?=
 =?us-ascii?q?Quj69HbqWk+cqyYR7BsKw+xFacR57SrulEgrCL7fOoUjka7JKIoH0ON4ZBUx?=
 =?us-ascii?q?YVhMlF+m5oSIbNQQWzZPK/YCkzHcAEX1hgrDmgZBINQZinPweP8RjQpXZaUl?=
 =?us-ascii?q?23fUJ1c+rvHYuAk8Pl3Ovg4IDZYQhDmGixaK9/fhC7th7YucRTgIcwK6B00B?=
 =?us-ascii?q?bRpmoNZ+ME325mKEiemR3x/aLStNYru2wY87pppctBVKi/YakiVr1fCmYtNG?=
 =?us-ascii?q?Yp6cv38AXZRA2U6HYGF2gQmR1EAg7Kv3SYFt+5+mOy/qJ32HyZHMroaY41Qw?=
 =?us-ascii?q?W65bxpeCW5jwFEbTsi4UPviOs3nZpFjU+kmEBm3JHSO6uKYakbHOuVNZtSDS?=
 =?us-ascii?q?IJVJNfcTJ/U6aac601JbA6OMNTiJbgoQUJ6gqgQlm2DuTEyTxNg2ev+ZZr2M?=
 =?us-ascii?q?UZUjHh9SMbWPkqmk77k9fENYIUXeDu6Zutr32LJ7sekX+1oKnPUxk4peyuAp?=
 =?us-ascii?q?FeSs3zxBQIK13ezUqop6a0FDK4i8MjjXCLv+xBddC2tDMgoAFtmGaF2dxzkb?=
 =?us-ascii?q?n0qb4S8Wz+8jxJ0JhkQL/wAAYzKZbsWNNQuC6UKMhwcOYgaWZYgQoz659fqZ?=
 =?us-ascii?q?HmRC5R7s5k213he7uHd5TV8j/PC/SuGxhiqXFHcq6+2xm43XK+28DHdM6p2l?=
 =?us-ascii?q?JU8E8n2pGE/jhFn1Sb5JarE+JN9UOOhjakj0fBzvtYEBAWuaOcDqFx7ZkLvI?=
 =?us-ascii?q?RQ4V+fPnLZ32z8quyuZBUYovaQyuXXbZzl+aGELdVm2kbeC6pL+IT3Saxwek?=
 =?us-ascii?q?BGF0qqqOKWxOXJ80vXYZVSj6UYgKvTi7LKGMQ7rJy5I0hu0IcdwRSSEj20iN?=
 =?us-ascii?q?EKoykuCWJ1WQqciJnuAW/BLbOkNdK4o3229VUjj7iOdvWpSt3pcUPMxeKyNa?=
 =?us-ascii?q?Y46lRbzhI018wa/Z9PF7Udder6QVSi7oaKJwIlMwGy3+fsAcl80YVbY2+UH6?=
 =?us-ascii?q?uFK/2N41qYoOkoJ+6WbYMS/jvxNqtt6/3viCohkEQGNemy3JQRYWylBPkuPU?=
 =?us-ascii?q?iDYHTtj9tAWWcHtwYzVqrr3XWNVDdSYzC5WKcx?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0E9AADP+51dh1VDioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWcHAQELAYIagUYvKoxFYIVZgWqKIIoIhSiBPzITAQEBAQEBAQE?=
 =?us-ascii?q?BBgEBGBUCAQEBAYQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwk?=
 =?us-ascii?q?IKYU0DINGOzABAQEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQs?=
 =?us-ascii?q?BDQEbHQEDAgkBAQUQOwMeAhEBBQEcBxIFHYMAgWoBAx2jXYEDPIwlFgUBF4J?=
 =?us-ascii?q?+BYEEgz0KGScNZoE8AgcSgSIBhzSDPIEdgheBRIMdghqCP4VRBI0Fn31BB4I?=
 =?us-ascii?q?lhiaKa4QIG4I6i0E5iwwtjgCKMI8GAgoHBg8jgS+CEk0jgQGCO1AQFIFPg3O?=
 =?us-ascii?q?Kb1iBBQM7kyIBAQ?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0E8AADU/p1dfU1DioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWcHAQELAYIagUYvKoxFYIVZgWqKIIoIhSiBPzITAQEBAQEBAQE?=
 =?us-ascii?q?BBgEBGBUCAQEBAYQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQsUCIV?=
 =?us-ascii?q?dDINGOzABAQEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQsBDQE?=
 =?us-ascii?q?bHQEDAgkBAQUQOwMeAhEBBQEcBxIFHYRqAQMdo2SBAzyMJRYFAReCfgWBBIM?=
 =?us-ascii?q?6ChknDWaBPAIHEg6BFAGHNIM8gR2CF4FEgx2CGoI/hVEEjQWffUEHgiWGJop?=
 =?us-ascii?q?rhAgbgjqLQTmLDC2OAIowjwYCCgcGDyOBL4ISTSOBAYI7UBAUgU+Dc4pvWIE?=
 =?us-ascii?q?FAzuTIgEB?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0E9AADU951dh+mAioBlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWcHAQELAYIagUYvKoxFYIVagWqKIIoIhSiBPzITAQEBAQEBAQE?=
 =?us-ascii?q?BBgEBGBUCAQEBAYQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwk?=
 =?us-ascii?q?IKYU0DINGOzABAQEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQs?=
 =?us-ascii?q?BDQEbHQEDAgkBAQUQOwMeAhEBBQEcBxIFHYMAgWoBAx2jUYEDPIwlFgUBF4J?=
 =?us-ascii?q?+BYEEgzwKGScNZoE8AgcSgSIBhzSDPIEdgheBRIMdghqCP4VRBI0Fn31BB4I?=
 =?us-ascii?q?lhiaKa4QIG4I6i0E5iwwtjgCKMI8GAgoHBg8jgS+CEk0jgQGCO1AQFIFPg3O?=
 =?us-ascii?q?Kb1iBBQM7kyIBAQ?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0EiAADP+51dh0O0hNFlHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgWcHAQELAYIagUQxKoxFYIVZgWo5iWeKCIUogT8yEwEBAQEBAQE?=
 =?us-ascii?q?BAQYBARgUAQIBAQEBhD6CUiM0CQ4CAQIJAQEBAwEBAQIBBQIBAQICEAEBAQo?=
 =?us-ascii?q?LCQgphTQMg0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQItVCkBARkCAQMBAg8?=
 =?us-ascii?q?VCwENARsdAQMCCQEBBRA7Ax4CEQEFARwHEgUdgwCBagEDHaNdgQM8jCUWBQE?=
 =?us-ascii?q?Xgn4FgQSDPQoZJw1mgTwCBxKBIgGHNIM8gR2CF4FEgx2CGoI/hVEEjQWffUE?=
 =?us-ascii?q?HgiWGJoprhAgbgjqLQTmLDC2OAIowjwYCCgcGDyOBL4ISTSOBAYI7UBAUgU+?=
 =?us-ascii?q?Dc4pvJjKBBQEBATuTIgEB?=
X-IPAS-Result: =?us-ascii?q?A0E9AADP+51dh1VDioBlHAEBAQEBBwEBEQEEBAEBgWcHA?=
 =?us-ascii?q?QELAYIagUYvKoxFYIVZgWqKIIoIhSiBPzITAQEBAQEBAQEBBgEBGBUCAQEBA?=
 =?us-ascii?q?YQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwkIKYU0DINGOzABA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQsBDQEbHQEDAgkBA?=
 =?us-ascii?q?QUQOwMeAhEBBQEcBxIFHYMAgWoBAx2jXYEDPIwlFgUBF4J+BYEEgz0KGScNZ?=
 =?us-ascii?q?oE8AgcSgSIBhzSDPIEdgheBRIMdghqCP4VRBI0Fn31BB4IlhiaKa4QIG4I6i?=
 =?us-ascii?q?0E5iwwtjgCKMI8GAgoHBg8jgS+CEk0jgQGCO1AQFIFPg3OKb1iBBQM7kyIBA?=
 =?us-ascii?q?Q?=
X-IPAS-Result: =?us-ascii?q?A0E8AADU/p1dfU1DioBlHAEBAQEBBwEBEQEEBAEBgWcHA?=
 =?us-ascii?q?QELAYIagUYvKoxFYIVZgWqKIIoIhSiBPzITAQEBAQEBAQEBBgEBGBUCAQEBA?=
 =?us-ascii?q?YQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQsUCIVdDINGOzABAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQsBDQEbHQEDAgkBAQUQO?=
 =?us-ascii?q?wMeAhEBBQEcBxIFHYRqAQMdo2SBAzyMJRYFAReCfgWBBIM6ChknDWaBPAIHE?=
 =?us-ascii?q?g6BFAGHNIM8gR2CF4FEgx2CGoI/hVEEjQWffUEHgiWGJoprhAgbgjqLQTmLD?=
 =?us-ascii?q?C2OAIowjwYCCgcGDyOBL4ISTSOBAYI7UBAUgU+Dc4pvWIEFAzuTIgEB?=
X-IPAS-Result: =?us-ascii?q?A0E9AADU951dh+mAioBlHAEBAQEBBwEBEQEEBAEBgWcHA?=
 =?us-ascii?q?QELAYIagUYvKoxFYIVagWqKIIoIhSiBPzITAQEBAQEBAQEBBgEBGBUCAQEBA?=
 =?us-ascii?q?YQ+glIjNAkOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwkIKYU0DINGOzABA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQsBDQEbHQEDAgkBA?=
 =?us-ascii?q?QUQOwMeAhEBBQEcBxIFHYMAgWoBAx2jUYEDPIwlFgUBF4J+BYEEgzwKGScNZ?=
 =?us-ascii?q?oE8AgcSgSIBhzSDPIEdgheBRIMdghqCP4VRBI0Fn31BB4IlhiaKa4QIG4I6i?=
 =?us-ascii?q?0E5iwwtjgCKMI8GAgoHBg8jgS+CEk0jgQGCO1AQFIFPg3OKb1iBBQM7kyIBA?=
 =?us-ascii?q?Q?=
X-IPAS-Result: =?us-ascii?q?A0EiAADP+51dh0O0hNFlHAEBAQEBBwEBEQEEBAEBgWcHA?=
 =?us-ascii?q?QELAYIagUQxKoxFYIVZgWo5iWeKCIUogT8yEwEBAQEBAQEBAQYBARgUAQIBA?=
 =?us-ascii?q?QEBhD6CUiM0CQ4CAQIJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQgphTQMg0Y7M?=
 =?us-ascii?q?AEBAQEBAQEBAQEBAQEBAQEBAQEBFQItVCkBARkCAQMBAg8VCwENARsdAQMCC?=
 =?us-ascii?q?QEBBRA7Ax4CEQEFARwHEgUdgwCBagEDHaNdgQM8jCUWBQEXgn4FgQSDPQoZJ?=
 =?us-ascii?q?w1mgTwCBxKBIgGHNIM8gR2CF4FEgx2CGoI/hVEEjQWffUEHgiWGJoprhAgbg?=
 =?us-ascii?q?jqLQTmLDC2OAIowjwYCCgcGDyOBL4ISTSOBAYI7UBAUgU+Dc4pvJjKBBQEBA?=
 =?us-ascii?q?TuTIgEB?=
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="286816550"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="371199905"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="371185714"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="286724345"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=1e100.net;
 s=20161025; 
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to        
 :references:mime-version:content-transfer-encoding;       
 bh=kIovLVirYpbsjXR9oN+2msyJPjO/yPvE5mW4qwwn3Bw=;       
 b=s3/SV4iRUVoqTTizagIIkOgv/vWKeHw7SyPwWZFFwE7EUvn1LEFAp5mHCDBcn3NmHT        
 nNNRx8Y4rZpijxifhltjYItp6lPXcA61ZIzfrQkyuxbMQL8OYXDu3EvISr1XkBM+F9Tf        
 MzgAdrVDGe7iy6yD6eihHb2TT4aeEN1B/OqVTMF7+ZCnHLrYxe6yDdl+tCCwwBFdkuAM        
 fioGZrTxCY+plJq2ny0aGmi4NXjmSI/+hjIAabjkhjSfiXeRkuAa2DjjKB2U2rqA8QTC        
 q2Ru8KTXcocfE9RqiHI0/FsxAWwDx9vkl5GKlDdWKqZJaoPjEQBkqEEW48NquzUq8SSF        
 QC9g==
X-Gm-Message-State: APjAAAWS3OXxv8pUWbfx9BcxObb/S+WPfmCXIaslPIVmOU0U0zAHEdkj 
 pU4H26dgEyd7q/YTiwLzg2A=
X-Google-Smtp-Source: APXvYqyBszE2jXf2bk8hp0wGA9HvtwkClBo3hkRqIDNzmTGUtDiqqjtr7EsHCB00LexEl4Ttme0LUg==
X-Received: by 2002:a0d:ea56:: with SMTP id t83mr2975903ywe.351.1570634858790; 
 Wed, 09 Oct 2019 08:27:38 -0700 (PDT)
From: "William Breathitt Gray" <vilhelm.gray@gmail.com>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>
Subject: [PATCH v17 04/14] gpio: 104-idi-48: Utilize for_each_set_clump8 macro
Date: Wed,  9 Oct 2019 11:27:02 -0400
Message-Id: b0631b6d489f85008480399df283ccd33ecfe310.1570633189.git.vilhelm.gray@gmail.com
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570633189.git.vilhelm.gray@gmail.com>
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
X-MS-Exchange-Organization-ExpirationStartTime: 09 Oct 2019 18:00:46.0311 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: be281720-5a75-4dd8-1d01-08d74ce29c08
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-Forefront-Antispam-Report: CIP:128.138.128.233; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:SKN; SFS:; DIR:INB; SFP:; SCL:-1; SRVR:BN8PR03MB5092; H:ipmx7.colorado.edu;
 FPR:; SPF:None; LANG:en; ; SKIP:1; 
X-MS-Exchange-Organization-AuthSource: SN1NAM01FT054.eop-nam01.prod.protection.outlook.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-OriginatorOrg: colorado.edu
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: be281720-5a75-4dd8-1d01-08d74ce29c08
X-MS-TrafficTypeDiagnostic: BN8PR03MB5092:|BN8PR03MB5092:
X-MS-Exchange-Organization-SCL: -1
X-MS-Oob-TLC-OOBClassifiers: OLM:3173;
X-Microsoft-Antispam: BCL:0;
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2019 18:00:45.8710 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: be281720-5a75-4dd8-1d01-08d74ce29c08
X-MS-Exchange-CrossTenant-Id: 3ded8b1b-070d-4629-82e4-c0b019f46057
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3ded8b1b-070d-4629-82e4-c0b019f46057; Ip=[128.138.128.233];
 Helo=[ipmx7.colorado.edu]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR03MB5092
X-MS-Exchange-Transport-EndToEndLatency: 01:46:25.4424020
X-MS-Exchange-Processed-By-BccFoldering: 15.20.2347.014
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; ex:0; auth:0; dest:I;
 ENG:(750127)(520002050)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?EqFgwxzuSEo9TxH8QQ4GQbwpYe+ODZlMsc+abhFhozpCvGre1MqkSA9NUFYZ?=
 =?us-ascii?Q?XAQTAP2VPJ94EUVcHwzqPe/MykNvPP23ZGTGdOWS5OVF+Zx8EgG24AuyxhgK?=
 =?us-ascii?Q?9Zi4+El5R1dBrIUvoc3Mc2aARDSEskr4PNFoJ1pXtFueNyFOR6wlpWwAy/ZE?=
 =?us-ascii?Q?CfV592zP2899oc4a3OokBamma7P8+jAhRGLZWGXBY2BLYZ4zV5tP2XZ59C/q?=
 =?us-ascii?Q?zoCTwpFapdP8lGuG+mlCsG9l4N+OHSCvhImdlSG2eHKt34dtgj5vIr95UBTT?=
 =?us-ascii?Q?ANujdKeT6caB1nnAWU1SzzC9h42mGbUEB4/2Jm9z7yKCDEGzDdIts5O5UlWq?=
 =?us-ascii?Q?41PwDk7UPPYMhgh9oL1IOOmccGwIfwDzLdNXUAqGbc34uUKXW4oPDVq4Yue1?=
 =?us-ascii?Q?mU/9h8CUkLeMWQUbzIHJMXykTD6bvI3BHD/HObZpwsz7JDLEPVvT/HWDdaEo?=
 =?us-ascii?Q?9gliWb9Qepfv9nWn3q1Xy55kylbEXNluEb67WAHOFG6IfAcY42y16Q1230NC?=
 =?us-ascii?Q?oucZlBdhpsbcwwdRns5y+NOL+42h15FVzFocEvt0CszWz19H0k1PIYkKz1pV?=
 =?us-ascii?Q?KW+c3Xwq6Uky48ZkIoV6LpkLENI6ytK3y5n+1sCHIaiyPwUPxx2XSjAGieZq?=
 =?us-ascii?Q?ZwWGw9VzjomEuh6A4WkIjVsx124XCXRmeAviriGDubXq+BHsoB/H4Ht2FAC4?=
 =?us-ascii?Q?F7KN0WuXHkEAIkp25rMX6foPWqMJp3ggYMrhdWB+iayhbW1k/FNYHqOInaJk?=
 =?us-ascii?Q?5OzrKGhhcXwoIuxrOhzpxoUUWyOnnqXckapEPWiE8EZGfK7dWr17sL0yQdn0?=
 =?us-ascii?Q?3tTYQWbvzkYcl8tTIklIm3UAya4Akp/JlHIlck3T4I9mlzGF5nIoxhwWAyDI?=
 =?us-ascii?Q?v6gA2Pn5DvT7WCdYw65mpUUScFz/aDFz4EFVbJhGjV4aP110RoIbvD95LaIj?=
 =?us-ascii?Q?B1EhYekD+uOyVIt7rmRx0n4RM6vKtofuDIuYiiopD1q1pdCCVFawO9wg5fMV?=
 =?us-ascii?Q?3yevLBZKEl42cTN9NEKU4baI7iiUkOPC3NnHLGF7VgijWEymNpdZaYJLp+5J?=
 =?us-ascii?Q?AJTgmrMqnwvh1d7mbS59ZWQ43oY9jhVDTlRgpjujjZ8i5sZCpZ4=3D?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_204037_536330_284304D8 
X-CRM114-Status: UNSURE (   5.15  )
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
 drivers/gpio/gpio-104-idi-48.c | 36 +++++++---------------------------
 1 file changed, 7 insertions(+), 29 deletions(-)

diff --git a/drivers/gpio/gpio-104-idi-48.c b/drivers/gpio/gpio-104-idi-48.c
index ff53887bdaa8..bf67040cbbbb 100644
--- a/drivers/gpio/gpio-104-idi-48.c
+++ b/drivers/gpio/gpio-104-idi-48.c
@@ -85,42 +85,20 @@ static int idi_48_gpio_get_multiple(struct gpio_chip *chip, unsigned long *mask,
 	unsigned long *bits)
 {
 	struct idi_48_gpio *const idi48gpio = gpiochip_get_data(chip);
-	size_t i;
+	unsigned long offset;
+	unsigned long gpio_mask;
 	static const size_t ports[] = { 0, 1, 2, 4, 5, 6 };
-	const unsigned int gpio_reg_size = 8;
-	unsigned int bits_offset;
-	size_t word_index;
-	unsigned int word_offset;
-	unsigned long word_mask;
-	const unsigned long port_mask = GENMASK(gpio_reg_size - 1, 0);
+	unsigned int port_addr;
 	unsigned long port_state;
 
 	/* clear bits array to a clean slate */
 	bitmap_zero(bits, chip->ngpio);
 
-	/* get bits are evaluated a gpio port register at a time */
-	for (i = 0; i < ARRAY_SIZE(ports); i++) {
-		/* gpio offset in bits array */
-		bits_offset = i * gpio_reg_size;
+	for_each_set_clump8(offset, gpio_mask, mask, ARRAY_SIZE(ports) * 8) {
+		port_addr = idi48gpio->base + ports[offset / 8];
+		port_state = inb(port_addr) & gpio_mask;
 
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
-
-		/* read bits from current gpio port */
-		port_state = inb(idi48gpio->base + ports[i]);
-
-		/* store acquired bits at respective bits array offset */
-		bits[word_index] |= (port_state << word_offset) & word_mask;
+		bitmap_set_value8(bits, port_state, offset);
 	}
 
 	return 0;
-- 
2.23.0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
