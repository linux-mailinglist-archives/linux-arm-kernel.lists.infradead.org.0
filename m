Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F25DFD540C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 05:53:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=maVgGls1nkYDMLN9T/Am0aZpe2fU90qaDsFl4DCvcsU=; b=JlQqrSmoPMaHL/
	WFa1eTEQ/j5xFthmme1c0iT0ty2F1O1Tohis+z7mJHNH9msN5APzfFmsYTuj7Dhbd+BU/pH70IinE
	/skNKcATTKKtsXNtzecqUHMSrro0hUNeTW4Z7Cw3Uyrkg1lgmWqSCzQ/Z7gX4zjXMbXm4PD83zsJ4
	agzLfn3AOs0ApW5RiHEzlkCPtg2Ad914z6xxqAzznTc8sLkYh3euZMLaYcumeePt8aNfJ2uJAPVt4
	3aBhWwY8isPAG7mknbX5eS3ZqeUpUp1YSWdkqPODgfnTdXySXAlgOUkrcbOfbHMBHxkzST9vYpenA
	5ah1t8ZMHK1I8S8Qs50Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJUwa-00082u-30; Sun, 13 Oct 2019 03:53:20 +0000
Received: from listssympa-test.colorado.edu ([128.138.129.156])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJUwR-00082b-Il
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 03:53:13 +0000
Received: from listssympa-test.colorado.edu (localhost [127.0.0.1])
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/sympa) with ESMTPS id
 x9D3qxu2025421
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 12 Oct 2019 21:52:59 -0600
Received: (from root@localhost)
 by listssympa-test.colorado.edu (8.15.2/8.15.2/MJC-8.0/submit) id
 x9D3qvh1025384; Sat, 12 Oct 2019 21:52:57 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025; 
 h=from:to:cc:subject:date:message-id:in-reply-to:references 
 :mime-version:content-transfer-encoding;       
 bh=GAGfzyUV4XhvgurCxyCR2EqX3tIH+KR8HXshRAb1W4M=;       
 b=kXMUo3pNLSF6Bp5VuIy+BzgCHpXZAPVHaSL4XcqD5U2yDdjIyMtggpchGRC0lzQ9cl        
 8OsrKzXBk/gvBZY4XUMDYanF00odndN8hUaCsXTmXQQfOsi0yqoZ2BGaAgFZFTAwKYY+        
 72CDl/NCip1wkGco+vDpg3SscZRhlC7j9N9wrj/CQme5+DfjMpt2WHmkxeUc3cArczYr        
 41q2EJWcGZl/6ZNW5izQrtO1dmpxsC6dnYwpz0u1TXcMnSwV361ENBPmaynMnEGAo58F        
 rBF+krBfJm17uq7xmqcSlvUL0UfaU89yEGJYBAsU3aElh6RV8Q0XCRUggxxrmH0b1uli        
 FBoQ==
Received: from DM5PR03MB3274.namprd03.prod.outlook.com (2603:10b6:a03:1e0::16)
 by BYAPR03MB4376.namprd03.prod.outlook.com with HTTPS via
 BY5PR03CA0006.NAMPRD03.PROD.OUTLOOK.COM; Wed, 9 Oct 2019 22:34:30 +0000
Received: from BN6PR03CA0012.namprd03.prod.outlook.com (2603:10b6:404:23::22)
 by
 DM5PR03MB3274.namprd03.prod.outlook.com (2603:10b6:4:40::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.2305.20; Wed, 9 Oct 2019 17:55:59 +0000
Received: from BY2NAM01FT049.eop-nam01.prod.protection.outlook.com
 (2a01:111:f400:7e42::201) by BN6PR03CA0012.outlook.office365.com
 (2603:10b6:404:23::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Wed, 9 Oct 2019 17:55:58 +0000
Received: from ipmx3.colorado.edu (128.138.67.74) by
 BY2NAM01FT049.mail.protection.outlook.com (10.152.69.34) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2347.16 via Frontend Transport; Wed, 9 Oct 2019 17:55:58 +0000
Received: from ipmx2.colorado.edu ([128.138.128.232]) by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 11:09:49 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 10:31:26 -0600
Received: from ipmx4.colorado.edu ([128.138.67.75])  by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 10:07:23 -0600
Received: from ipmx7.colorado.edu ([128.138.128.233]) by mx.colorado.edu with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 09:56:38 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:46:11 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:38:13 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:32:29 -0600
Received: from mx.colorado.edu ([128.138.128.150]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:29:48 -0600
Received: from vger.kernel.org ([209.132.180.67]) by mx.colorado.edu with
 ESMTP; 09 Oct 2019 09:27:54 -0600
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand id
 S1731254AbfJIP1w (ORCPT <rfc822; michael.gilroy@colorado.edu>);
 Wed, 9 Oct 2019 11:27:52 -0400
Received: from mail-yw1-f68.google.com ([209.85.161.68]:43139 "EHLO       
 mail-yw1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org       
 with ESMTP id S1731767AbfJIP1t (ORCPT       
 <rfc822; linux-kernel@vger.kernel.org>); Wed, 9 Oct 2019 11:27:49 -0400
Received: by mail-yw1-f68.google.com with SMTP id q7so948949ywe.10; Wed, 09 Oct
 2019 08:27:48 -0700 (PDT)
Received: from localhost.localdomain (072-189-084-142.res.spectrum.com.
 [72.189.84.142])        by smtp.gmail.com with ESMTPSA id
 g40sm611863ywk.14.2019.10.09.08.27.46        (version=TLS1_3
 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);        Wed, 09 Oct 2019
 08:27:47 -0700 (PDT)
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
IronPort-SDR: LoJjbmyA1PjnDVsM3+e2WFE6PywtOHaQtt9VexgFMkNKySNJ4GPJOQnHU3kThpChAl3b/+viVr
 Lji+wxCBhkFgJJ5L/OmGRJys2N7fEmK5c=
IronPort-SDR: B060eUl5g5lmRiClXSfl5vC9EaypBo5WwC9FT+dMor0MrKNtXEm7EfDMl1NCMPLa9vTp/WQwSS
 GoZ1wtYbIY0Y98+yrDz58fgOlq/AfIA4Y=
IronPort-SDR: WdoytwjgbRdM/NLJqGiQrQjqhSoudRxDPGUuHl6+aKIda4dkV0w1IGxWW8oD2QMmiylvX+WVWS
 Rci2Hwjx+2Wo0RyyPHEiLS3IxXXyUqaok=
IronPort-SDR: P56KDVzZDdabThHwsgPZph8GpwMwIKD963WZCHK5yqk5bCbZyHnnMYJLTEtbrW2A6YaAtSF5qI
 lLXjx49DT3gMUUiXCYgS9Su9DbYlL/cxE=
IronPort-SDR: r6Erf3yWSSojn1WQcTz1MpoVATMdVCx5qwgxT6LDcCLugtq/w5ZE82s4E3tybq9sHBwLXPBrhG
 xm/BA6RC9oBUxyQ8TNt3MekU08359RbOI=
IronPort-SDR: 7Onlq/a8C3WNpqzSClqe+Pf/vLzSLbpiZjo2vUzRryHaW6QnuEZvnpzPtd2YCeOc33dHFNaPcn
 GBG90NrVa7er6W+x9lULrS5CtEyvFeAOI=
IronPort-SDR: SMip3AtbnpEHzF9oYftyo2o8xMUW+6BzH9GAMH7TinK9kD4NXEGC3YXQ0U9YknpyJdSCXz8DHi
 eyIJtfnvXc4/jVpEceHnhvPhQdpLymmzI=
IronPort-SDR: Naj8gSMx67nPm+V7c2WO814GHnYSPUWNuQr3OQSPpCxrvMGSaNnFZJtfDthjnmhdjveHe0UV7Y
 f/isXj8830G/qNUekUhG5KmkIoAQSmEa0=
IronPort-SDR: BUXbC+rCQW02NjYDKnxRyPXwA6tyaVGMr7+EZ33Hx6sB6/554+HeWk8XC8iL1Z3DOLmYWnWCrE
 0oJCa52gAy1O3Ej2oxqPe7hGdcngxXrKY=
IronPort-PHdr: =?us-ascii?q?9a23=3AezN03RWYFeSUzbQoOUHdxb6jMHvV8LGtY1w5yb?=
 =?us-ascii?q?sCzp9Qe6C+9ojjO0qBtag/kgqQDs3Svuhfgq/Ns6m6BDJTqZ3Uqn0GeYxBW1?=
 =?us-ascii?q?gfhMEfjwEsU6vnQQWzZLaiJ2Q2SctHXV5huXq8NBsdA5OkPwSM+yXosG13eF?=
 =?us-ascii?q?23fUI9bqy9GtvclcOyhfy1qZbYMR5Vjjiwaq8gIByqoFfUu9INiIRvb6c9mB?=
 =?us-ascii?q?rP52FFY+BHgH9vd0iekRvm68G78YUGkWwY87ppv4YIGff/fqE1CKJVFi8nNG?=
 =?us-ascii?q?Zn78rtqRTFUU6T/HIaSWsbiF9FBQPC4BD8UcSU0GOy/qI1kGHSN82jYpkbVy?=
 =?us-ascii?q?az0pk3eB/2hzodHC4o21uNp9VA1756gFGCnUxf85XUWqifbcUiW/aOGLFSDS?=
 =?us-ascii?q?IJFo4ZHyYUAbOZUoxUF8wlBsgGhZGgmUYvvFiUFwaHJPvf+BZwuF//5olm4+?=
 =?us-ascii?q?84PVz7hh0ME9AvoVHIo9rtP6c9a8vtyLvxnD7HCpEekX+1oMCAOlhxhuqWfq?=
 =?us-ascii?q?BAW8mWxlcFJTKZvmi1hb3sOR3NjuMBtWS9v+pdXMm0u1IimzhIrB+0x589k4?=
 =?us-ascii?q?773Kg6w3nL2xdX/K8qBuyJCysZKZbsWNMY/2nSaNFdbsdlZUppoH8lyZINvt?=
 =?us-ascii?q?2lUDAFk688zCzla/isLIrZxEP8TuTWCg59iS8mVLy9og6uq3eAz+7sW/S/i1?=
 =?us-ascii?q?1jtCFXo8Op1DhFn1SbooDPAqck5x2M+wmE+DLXrb92B39plLjiMYIGm7I1jo?=
 =?us-ascii?q?oImhrPGB7pgFeukfaqRk4B/NO31b+5O5jAjKeZPp5yrwfTHY0px5yRZIZwek?=
 =?us-ascii?q?BGFyDTsaym/pOg/lfTTpdP16Iri/bJtYnRHsAFm4rhPgFc79Zy+juQLQaM+c?=
 =?us-ascii?q?8lxnAqKFIbQizXttDZEGvzL//oHe26owymySpvxpWkdvWpSt2FZjCLvp3mRO?=
 =?us-ascii?q?MouAZMjQspytZH4IhIT6sMO+/3RhrpvcfDXUVjYSWp3+bqDsl83YoCWGWJR5?=
 =?us-ascii?q?WUK77WrUTWubAqM6+HY4sSoj/xLL4o6+O9xXM6mFpIZaCyxtNXc3G3GP16Pl?=
 =?us-ascii?q?+UKWThmNYPEGoG/0I+QeXmhUfEUGt7aHO7XqZ67TY+BQ=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AfUNw6RBTIOOdw3odZb74UyQJP3V1l5bVG0s49J?=
 =?us-ascii?q?MjlrtSc6OlocS/blKKvKYlhQrTRoye8PJN0beI4OjrDHYN5Z+RvXxFapFIXg?=
 =?us-ascii?q?8IhZZz/URoSIbNQQWzIKvlaiU7GIJJU1o2t2ruaxAMRp+mPQCBxx/6pXZaUl?=
 =?us-ascii?q?23fQogKP7yH9zOiJa83LKp5pfRbg5U1ja0fb4gKRittgzeu4wXjdljLOMrxw?=
 =?us-ascii?q?PNsz5UfLZMyG1lP1+VlBvng6X4tNYru2wY87pz8s9FXODkcr4jTLteXj8hNX?=
 =?us-ascii?q?w44tGuqQPKSxCB62FZX2MdlRZJBQeWiXOyFt+5+mOy/uB9jQazEsPkXI0KBQ?=
 =?us-ascii?q?Si8ah2UjT4mQw9bRMgwDrLq+wzr5gLgCK6pyZWydfrPKTAZ58cNuuVNZtSDS?=
 =?us-ascii?q?JLC8VhchFGWZuaS7AhUcAZYNhFjpi+jUkBhjumNTuFPN3PwwRs2k/9xIFn7r?=
 =?us-ascii?q?4wPQ3E/R0FA90BqH/Ug+/ebKMAaLG+yMyqhX2LJ7sekX+1uK/TaDMzkduPGr?=
 =?us-ascii?q?1uW/jglXkSMi/0h1O+8dTiMzWZ8LQNjmGw9NpcUNKWsmAAsAApsyGo9J0GpY?=
 =?us-ascii?q?Dgiawn5Gzt6gZI8cVQR5XwAAYzKZbsWMQKnA2ecK1dQ9t7XGJHsyF51JEets?=
 =?us-ascii?q?WAZyM48pQj7EHdOtrWbJKKpTnaUevMYht2hld9ZOiApxOx4UWdwbb3f9O/wm?=
 =?us-ascii?q?dQy0gN2pGE/jhFn1SPs9HdZ9lC9WiT3XHR5Sbst+BWGFoosvPXLoYx2ZVump?=
 =?us-ascii?q?wirlzRRjKvpHX9qamtaXt/pLGFzc7fZ7z3oLqaGqBdjVyuHMFM0oT3Saxwek?=
 =?us-ascii?q?BGRUK1uuem/rPB+BSmXawVnvgvmZLdrq3+ffkVr5PpUh54/aQSwT+kMmyv/d?=
 =?us-ascii?q?AYw0M5fGsdSDm9sofmK0HUJdCgB66ih1XJ8n8jj7iOdvWpSrvnKUGWxeSpbf?=
 =?us-ascii?q?N88Ula0A0p0ZVF6olJDq1UOPvoQRyr7o7xEwM5Pgqowu3uFNR60MYkVHmSBr?=
 =?us-ascii?q?OCbvyAtE/O7eUrJPOFaIhTtTrgeLAp5P/r2GcwgkRVPbKo0p0edG2iE7x4Ll?=
 =?us-ascii?q?+Yb3vhjpZJEWoDsgckCu2/oFKHWD9XIX21Wq8=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3AU5nYNxw+ldCf2bHXCy+O/D0hRQkC/pjqNwoI44?=
 =?us-ascii?q?YmjLQQIvnx4cG7bwTWsO92hRrSXYyBtqwXw+GDqa3kUHwN7dGbvXQLYJFABH?=
 =?us-ascii?q?pnwY1e10RoSIaJXEL+Jf/uKSc9GZcKTwo/pyjlaBAPRZWbBRWa6jX6pXZaGk?=
 =?us-ascii?q?DxLw1wdPjySIXZ3d+q3eK/8IGBbwxUiWi4bKhpJRq76ATd5MgQxJFvMqIgjw?=
 =?us-ascii?q?fO8GFFdelMyGVjKEn2/V60ro/4tNYru3ZVuvcsstBNS777eKJqRrteEDkgLy?=
 =?us-ascii?q?Up/sTtrhfOV06C4HAbXmQQnUktYUCNpFmyFt+5uCuvmcNS1juLAPOqfbAqVi?=
 =?us-ascii?q?m4xLd6YyWypT43bCIY0CL0sJxQvLlbmjur/iMj5tuHBePdfLI2NuuVNdlPRl?=
 =?us-ascii?q?pkY8EKTwplOa3iRZNSMfcgLKVyvYbWh0M+nzKGOymlP8ez+jRRqiLLh7wW3+?=
 =?us-ascii?q?YAACTa0wM4FNIhil+MqMfMZawWNIL9hOGAhX2LJ7sG/izny5r4WBNmru+mb4?=
 =?us-ascii?q?MsQff05XgmES2d1lKcr4DDbzOo388Wg1Se39NZW8W0ijY2sgZD+BKAz+4jpL?=
 =?us-ascii?q?vnuqsK6WH1tkAbiM59bZXwAAYzPoSPPJ8XkQqbL9JpQewpRCJ2lD41kYYdsq?=
 =?us-ascii?q?yBfCwhl5Z24U/Acf7AWLGN70+geOiTBC9k3k1FfbGviiu5qkOJ0ObuZ9PRsh?=
 =?us-ascii?q?4C5mIN2pGE/ixUzkb+yPeMZcl5uRmT/wnS1hLq8P1jeEwxjbrAAMAtxI8vjo?=
 =?us-ascii?q?hLrB3/LiTTnn7psvTIL2gC0NCt4vXhR7PLibabat9a72O2euxm0oT3SawiGC?=
 =?us-ascii?q?ZNXHKx98a5jeL+5BLpRaxBtfkor42BjZ7TGJRKt4OWIT5/+50esB+SCzf46u?=
 =?us-ascii?q?pIpCE3B2h4dx2Xn5LsGwnEee38DJLdyxzk2H8jj7iOEJfmO8CYfTDT1bb7er?=
 =?us-ascii?q?Bl7FRAjRA+1s1b+8dMA6oac6ipCGbsqNzVCAM4OAWowuHhTe9wzZ4aRXnRXf?=
 =?us-ascii?q?2cIOXZtluP/OsjJK+BaJJG8Dr+Kv1w//f1ljd5gl4Se6C1wIEaIG61BPVoIk?=
 =?us-ascii?q?iVIDLsj94NHH1Mv18WQ+njiVnEWjlWag=3D=3D?=
IronPort-PHdr: =?us-ascii?q?9a23=3ArBPUSBDOs5Rpb9YpS+t+UyQJP3V1l5bVG0s49J?=
 =?us-ascii?q?MjlrtSc6OlocS/blKKvKYlhQrTRoye8PJN0beI4OjrDHYN5Z+RvXxFapFIXg?=
 =?us-ascii?q?8IhZZz/URoSIbNQQWzIKvlaiU7GIJJU1o2t2ruaxAMRp+mPQCBxx/6pXZaUl?=
 =?us-ascii?q?23fQogKP7yH9zOiJa83LKp5pfRbg5U1ja0fb4gKRittgzeu4wXjdljLOMrxw?=
 =?us-ascii?q?PNsz5UfLZMyG1lP1+VlBvng6X4tNYru2wY87pz8s9FXODkcr4jTLteXj8hNX?=
 =?us-ascii?q?w44tGuqQPKSxCB62FZX2MdlRZJBQeWiXOyFt+5+mOy/uB9jQazEsPkXI0KBQ?=
 =?us-ascii?q?Si8ah2UjT4mQw9bRMgwDrLq+wzr5gLgCK6pyZWydfrPKTAZ58cNuuVNZtSDS?=
 =?us-ascii?q?JLC8VhchFGWZuaS7AhUcAZYNhFjpi+jUkBhjumNTuFPN3PwwRs2k/9xIFn7r?=
 =?us-ascii?q?4wPQ3E/R0FA90BqH/Ug+/ebKMAaLG+yMyqhX2LJ7sekX+1uK/TaDMzkduPGr?=
 =?us-ascii?q?1uW/jglXkSMi/0h1O+8dTiMzWZ8LQNjmGw9NpcUNKWsmAAsAApsyGo9J0GpY?=
 =?us-ascii?q?Dgiawn5Gzt6gZI8cVQR5XwAAYzKZbsWMQKnA2ecK1dQ9t7XGJHsyF51JEets?=
 =?us-ascii?q?WAZyM48pQj7EHdOtrWbJKKpTnaUevMYht2hld9ZOiApxOx4UWdwbb3f9O/wm?=
 =?us-ascii?q?dQy0gN2pGE/jhFn1SPs9HdZ9lC9WiT3XHR5Sbst+BWGFoosvPXLoYx2ZVump?=
 =?us-ascii?q?wirlzRRjKvpHX9qamtaXt/pLGFzc7fZ7z3oLqaGqBdjVyuHMFM0oT3Saxwek?=
 =?us-ascii?q?BGRUK1uuem/rPB+BSmXawVnvgvmZLdrq3+ffkVr5PpUh54/aQSwT+kMmyv/d?=
 =?us-ascii?q?AYw0M5fGsdSDm9sofmK0HUJdCgB66ih1XJ8n8jj7iOdvWpSrvnKUGWxeSpbf?=
 =?us-ascii?q?N88Ula0A0p0ZVF6olJDq1UOPvoQRyr7o7xEwM5Pgqowu3uFNR60MYkVHmSBr?=
 =?us-ascii?q?OCbvyAtE/O7eUrJPOFaIhTtTrgeLAp5P/r2GcwgkRVPbKo0p0edG2iE7x4Ll?=
 =?us-ascii?q?+Yb3vhjpZJEWoDsgckCu2/oFKHWD9XIX21Wq8=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0F6AABLGZ5dbeiAioBPFhwBAQEBAQc?=
 =?us-ascii?q?BAREBBAQBAYFpBQEBCwGCGgWBQi8qjSWFWoFqiiCKCIUogT8vFgEBAQEBAQE?=
 =?us-ascii?q?BAQYBARgVAgEBAQGEPoJSIzYHDgIBAgkBAQEDAQEBAgEFAgEBAgIQCw0JBiu?=
 =?us-ascii?q?FNAyDRjswAQEBAQEBAQEBAQEBAQEBAQEBAQEVAoEBKQEBGQIBAwECDxULAQ0?=
 =?us-ascii?q?BGx0BAwIJAQEFECAbAx4CEQEFARwHEgUdhUYBAy6jd4EDPIwlFgUBF4J+BYE?=
 =?us-ascii?q?EgzkKGScNZoE8AgcSgSIBhzSDPIEdgheBRIMdghqBZ1iFVwSNBZ99QQeCJYY?=
 =?us-ascii?q?mimuECBuNe4tFLY4AijCPBgIKBwYPI4E2C4IATSOBAYI7UBAUgU8MF4NQim9?=
 =?us-ascii?q?YgQUDO49YAQE?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0GKAACmBZ5dh0tDioBPFhwBAQEBAQc?=
 =?us-ascii?q?BAREBBAQBAYFpBQEBCwGCGoFGLyqNJYVagWqKIIoIhSiBPy8WAQEBAQEBAQE?=
 =?us-ascii?q?BBgEBGBUCAQEBAYQ+glIjNgcOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwk?=
 =?us-ascii?q?IKYU0DINGOzABAQEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQs?=
 =?us-ascii?q?BDQEbHQEDAgkBAQUQIBsDHgIRAQUBHAcSBR2DAIFqAQMdo3WBAzyMJRYFARe?=
 =?us-ascii?q?CfgWBBIM6ChknDWaBPAIHEoEiAYc0gzyBHYIXgUSDHYIagWdYhVEEjQWffUE?=
 =?us-ascii?q?HgiWGJoprhAgbjXuLRS2OAIowjwYCCgcGDyOBNguCAE0jgQGCO1AQFIFPDBe?=
 =?us-ascii?q?DUIpvWIEFAzuTIgEB?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0GKAABX/51dh+mAioBPFhwBAQEBAQc?=
 =?us-ascii?q?BAREBBAQBAYFpBQEBCwGCGoFGLyqNJYVZgWqKIIoIhSiBPy8WAQEBAQEBAQE?=
 =?us-ascii?q?BBgEBGBUCAQEBAYQ+glIjNgcOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwk?=
 =?us-ascii?q?IKYU0DINGOzABAQEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQs?=
 =?us-ascii?q?BDQEbHQEDAgkBAQUQIBsDHgIRAQUBHAcSBR2DAIFqAQMdo2eBAzyMJRYFARe?=
 =?us-ascii?q?CfgWBBIM5ChknDWaBPAIHEoEiAYc0gzyBHYIXgUSDHYIagWdYhVEEjQWffUE?=
 =?us-ascii?q?HgiWGJoprhAgbjXuLRS2OAIowjwYCCgcGDyOBNguCAE0jgQGCO1AQFIFPDBe?=
 =?us-ascii?q?DUIpvWIEFAzuTIgEB?=
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0FNAADP+51dh0O0hNFPFhwBAQEBAQc?=
 =?us-ascii?q?BAREBBAQBAYFpBQEBCwGCGoFEMSqNJYVZgWo5iWeKCIUogT8vFgEBAQEBAQE?=
 =?us-ascii?q?BAQYBARgUAQIBAQEBhD6CUiM2Bw4CAQIJAQEBAwEBAQIBBQIBAQICEAEBAQo?=
 =?us-ascii?q?LCQgphTQMg0Y7MAEBAQEBAQEBAQEBAQEBAQEBAQEBFQItVCkBARkCAQMBAg8?=
 =?us-ascii?q?VCwENARsdAQMCCQEBBRAgGwMeAhEBBQEcBxIFHYMAgWoBAx2jXYEDPIwlFgU?=
 =?us-ascii?q?BF4J+BYEEgz0KGScNZoE8AgcSgSIBhzSDPIEdgheBRIMdghqBZ1iFUQSNBZ9?=
 =?us-ascii?q?9QQeCJYYmimuECBuNe4tFLY4AijCPBgIKBwYPI4E2C4IATSOBAYI7UBAUgU8?=
 =?us-ascii?q?MF4NQim8mMoEFAQEBO5MiAQE?=
X-IPAS-Result: =?us-ascii?q?A0F6AABLGZ5dbeiAioBPFhwBAQEBAQcBAREBBAQBAYFpB?=
 =?us-ascii?q?QEBCwGCGgWBQi8qjSWFWoFqiiCKCIUogT8vFgEBAQEBAQEBAQYBARgVAgEBA?=
 =?us-ascii?q?QGEPoJSIzYHDgIBAgkBAQEDAQEBAgEFAgEBAgIQCw0JBiuFNAyDRjswAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEVAoEBKQEBGQIBAwECDxULAQ0BGx0BAwIJAQEFE?=
 =?us-ascii?q?CAbAx4CEQEFARwHEgUdhUYBAy6jd4EDPIwlFgUBF4J+BYEEgzkKGScNZoE8A?=
 =?us-ascii?q?gcSgSIBhzSDPIEdgheBRIMdghqBZ1iFVwSNBZ99QQeCJYYmimuECBuNe4tFL?=
 =?us-ascii?q?Y4AijCPBgIKBwYPI4E2C4IATSOBAYI7UBAUgU8MF4NQim9YgQUDO49YAQE?=
X-IPAS-Result: =?us-ascii?q?A0GKAACmBZ5dh0tDioBPFhwBAQEBAQcBAREBBAQBAYFpB?=
 =?us-ascii?q?QEBCwGCGoFGLyqNJYVagWqKIIoIhSiBPy8WAQEBAQEBAQEBBgEBGBUCAQEBA?=
 =?us-ascii?q?YQ+glIjNgcOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwkIKYU0DINGOzABA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQsBDQEbHQEDAgkBA?=
 =?us-ascii?q?QUQIBsDHgIRAQUBHAcSBR2DAIFqAQMdo3WBAzyMJRYFAReCfgWBBIM6ChknD?=
 =?us-ascii?q?WaBPAIHEoEiAYc0gzyBHYIXgUSDHYIagWdYhVEEjQWffUEHgiWGJoprhAgbj?=
 =?us-ascii?q?XuLRS2OAIowjwYCCgcGDyOBNguCAE0jgQGCO1AQFIFPDBeDUIpvWIEFAzuTI?=
 =?us-ascii?q?gEB?=
X-IPAS-Result: =?us-ascii?q?A0GKAABX/51dh+mAioBPFhwBAQEBAQcBAREBBAQBAYFpB?=
 =?us-ascii?q?QEBCwGCGoFGLyqNJYVZgWqKIIoIhSiBPy8WAQEBAQEBAQEBBgEBGBUCAQEBA?=
 =?us-ascii?q?YQ+glIjNgcOAgECCQEBAQMBAQECAQUCAQECAhABAQEKCwkIKYU0DINGOzABA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBARUCLVQpAQEZAgEDAQIPFQsBDQEbHQEDAgkBA?=
 =?us-ascii?q?QUQIBsDHgIRAQUBHAcSBR2DAIFqAQMdo2eBAzyMJRYFAReCfgWBBIM5ChknD?=
 =?us-ascii?q?WaBPAIHEoEiAYc0gzyBHYIXgUSDHYIagWdYhVEEjQWffUEHgiWGJoprhAgbj?=
 =?us-ascii?q?XuLRS2OAIowjwYCCgcGDyOBNguCAE0jgQGCO1AQFIFPDBeDUIpvWIEFAzuTI?=
 =?us-ascii?q?gEB?=
X-IPAS-Result: =?us-ascii?q?A0FNAADP+51dh0O0hNFPFhwBAQEBAQcBAREBBAQBAYFpB?=
 =?us-ascii?q?QEBCwGCGoFEMSqNJYVZgWo5iWeKCIUogT8vFgEBAQEBAQEBAQYBARgUAQIBA?=
 =?us-ascii?q?QEBhD6CUiM2Bw4CAQIJAQEBAwEBAQIBBQIBAQICEAEBAQoLCQgphTQMg0Y7M?=
 =?us-ascii?q?AEBAQEBAQEBAQEBAQEBAQEBAQEBFQItVCkBARkCAQMBAg8VCwENARsdAQMCC?=
 =?us-ascii?q?QEBBRAgGwMeAhEBBQEcBxIFHYMAgWoBAx2jXYEDPIwlFgUBF4J+BYEEgz0KG?=
 =?us-ascii?q?ScNZoE8AgcSgSIBhzSDPIEdgheBRIMdghqBZ1iFUQSNBZ99QQeCJYYmimuEC?=
 =?us-ascii?q?BuNe4tFLY4AijCPBgIKBwYPI4E2C4IATSOBAYI7UBAUgU8MF4NQim8mMoEFA?=
 =?us-ascii?q?QEBO5MiAQE?=
X-IronPort-AV: E=Sophos; i="5.67,277,1566885600"; d="scan'208"; a="369365868"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="414040306"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="369067055"
X-IronPort-AV: E=Sophos; i="5.67,276,1566885600"; d="scan'208"; a="286725388"
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
 bh=GAGfzyUV4XhvgurCxyCR2EqX3tIH+KR8HXshRAb1W4M=;       
 b=bOkL+vFUslFsfafdPJFKvX0bGi728Fxz5vwzIKBy4zSN3mJTnmAtkr+L8cTEMES/4o        
 zQWYfyXQTtyJ5MP75xBjw3r+c5YK/HsWcK9edpnxXVsdRpR7ZJHzlzoDvXz7QY57CExl        
 RP7Lz0vJW3sr5mTbuStASrXyqSHJmmTgSFmupMUbjQqAnfUeX4TcklMkSC1Do//zbc0v        
 2Ne9AYo+Nji78LT9TjoYXERsjeLGuR+XyFrARaGjbQR/r5P3PKD9iAAayWqJhf6BvX2T        
 QFoh03PX+NqQe/FY4qwrwED9DMT9BdbaE1qBSUL5gYYlC8uIUg6L7hU2vqAKT4132VkK        
 L6PA==
X-Gm-Message-State: APjAAAU9Nv7kjbVjAiQASqElHkGTZ4GrPtMcZwsPQpn1T9P2dyQDTAFF 
 349PgS144b3p1YLfwDejjO0=
X-Google-Smtp-Source: APXvYqzU4mk2ALxC5shgv1Btwp1xQb3tD3PCuvxgw7dxEmZhlvqDmfddDtyomz4/6eWxAvTEX7t0SQ==
X-Received: by 2002:a81:7446:: with SMTP id p67mr3018012ywc.457.1570634868449; 
 Wed, 09 Oct 2019 08:27:48 -0700 (PDT)
From: "William Breathitt Gray" <vilhelm.gray@gmail.com>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>
Subject: [PATCH v17 09/14] gpio: uniphier: Utilize for_each_set_clump8 macro
Date: Wed,  9 Oct 2019 11:27:07 -0400
Message-Id: 271a7735b02b6a8b1f54c018e38ea932d1fd299e.1570633189.git.vilhelm.gray@gmail.com
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570633189.git.vilhelm.gray@gmail.com>
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
X-MS-Exchange-Organization-ExpirationStartTime: 09 Oct 2019 17:55:58.5230 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: 9123b879-2ef1-4af5-d8d8-08d74ce1f0a9
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-Forefront-Antispam-Report: CIP:128.138.67.74; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:SKN; SFS:; DIR:INB; SFP:; SCL:-1; SRVR:DM5PR03MB3274; H:ipmx3.colorado.edu;
 FPR:; SPF:None; LANG:en; ; SKIP:1; 
X-MS-Exchange-Organization-AuthSource: BY2NAM01FT049.eop-nam01.prod.protection.outlook.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-OriginatorOrg: colorado.edu
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9123b879-2ef1-4af5-d8d8-08d74ce1f0a9
X-MS-TrafficTypeDiagnostic: DM5PR03MB3274:|DM5PR03MB3274:
X-MS-Exchange-Organization-SCL: -1
X-MS-Oob-TLC-OOBClassifiers: OLM:2887;
X-Microsoft-Antispam: BCL:0;
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2019 17:55:58.2557 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9123b879-2ef1-4af5-d8d8-08d74ce1f0a9
X-MS-Exchange-CrossTenant-Id: 3ded8b1b-070d-4629-82e4-c0b019f46057
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3ded8b1b-070d-4629-82e4-c0b019f46057; Ip=[128.138.67.74];
 Helo=[ipmx3.colorado.edu]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR03MB3274
X-MS-Exchange-Transport-EndToEndLatency: 04:38:34.5407564
X-MS-Exchange-Processed-By-BccFoldering: 15.20.2347.014
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; ex:0; auth:0; dest:I;
 ENG:(750127)(520002050)(944506383)(944626516); 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?N8Ne7GombSxNgHDoJG4EeuRE7JW8gSak8vDxf+SNI3vy5Mq2KL0NLSb7ToUE?=
 =?us-ascii?Q?TCJECYo3Vg+Oq0T74QXx+LjQy9Va3XaxV9UzSF3pycbh2aHXQ3MQ6nyFUSuX?=
 =?us-ascii?Q?betMy87lUsc7vuyF6qqYQtUeBkF9W0MwbiHf8t0yaNb61sGCz+mTE+ASZFVU?=
 =?us-ascii?Q?RVwgtpqrOzaNyqu0QaJ/ka4JELr/A2lkGYN4TcgIWxtP0rQ+DvksvqG2Cjds?=
 =?us-ascii?Q?f1AQU/g3psKHnxML1r5tIIVJXsPtQ5MQnqTqeF5eQm/aU3iuHj8MMtvsWX9E?=
 =?us-ascii?Q?5YMLykFhH1XGOu7ETaaojtZ1UpSNiPr9T0M0T5mDJU/MG0jBfd62uH8FcCnV?=
 =?us-ascii?Q?gw88BZV0sYL51Gzerd+o6n3w7zi/gmLm2A2hzhxmm25eLlZJxS0gtGI3AemE?=
 =?us-ascii?Q?IK9jpJ/x7mby6DAietIaWcWsRaBi8CvGayt3IYGNyIVWJNd1+9/HlE+DBRYD?=
 =?us-ascii?Q?s4yiGbG5s6RrY+dlNa3NYm7aWEInyDE7lz5SjufxxvNSrm7pWRWSN4M59Lwr?=
 =?us-ascii?Q?AxTM04mfFkMYJutWEmP1UGCKL8Lu70XJPCx3uwEssZFKg7/+ZMuH/vOd70NB?=
 =?us-ascii?Q?r+rFSx72dOyC5U4Qw3VlRK3+5TGAR3Yj7uaowei470ydzDB5MvnrkUwVEefA?=
 =?us-ascii?Q?9DqJk1qmmRkkAMc413yVcjAuDKSaseDJv1JOJOD4FqB72DVhgo2nfpj/UYr+?=
 =?us-ascii?Q?6U9+nX8AhIqE8bhJEq91l847AOkJA917tF3yYhLXtGfZznwU0vWvHpfAHCar?=
 =?us-ascii?Q?LR6Ofb/rWyCfw1Sg/ZLUFDgKGoef7nCaiDVMCgVDi6Fxb5bYylbooLz9AVKL?=
 =?us-ascii?Q?jCk6I1hennfpIk8kVHM7ixRQf4zrUt1TduXuJiXU+H4OT6S47vdhRbBCC2ID?=
 =?us-ascii?Q?amRAdR4forfMphXVbFuyIQOVa0h4c2IW8JwbK0iWnkOnFCVr2kOQnQk3+bdl?=
 =?us-ascii?Q?vJ4i4r78q81eo5KUrZaEUq9TUAWGEPOjvGQNs/HmTEG6HK7dG2T7jIoXqrHf?=
 =?us-ascii?Q?SGu6z+vNrZNI/ARmMTIhDxZJ0mzdKzrDch3/zGBcO2av9uDes/ySW8sshvge?=
 =?us-ascii?Q?8HE9Xh0KujQ60AkpwnTbHLPkWVC0YUTuHfDva+vPXflMP3BaurzJDOahtcy0?=
 =?us-ascii?Q?AlzWiG3hI9fDLKn5R95JH1hxvSW4Q++NJFVnPdQ4cHHN0fOBsHK734WwsyQr?=
 =?us-ascii?Q?O+9YLKNdKml96mHn?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_205311_677464_5B1300C8 
X-CRM114-Status: UNSURE (   5.36  )
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
for_each_set_clump8 macro to simplify code and improve clarity. An
improvement in this case is that banks that are not masked will now be
skipped.

Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
---
 drivers/gpio/gpio-uniphier.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/gpio/gpio-uniphier.c b/drivers/gpio/gpio-uniphier.c
index 93cdcc41e9fb..3e4b15d0231e 100644
--- a/drivers/gpio/gpio-uniphier.c
+++ b/drivers/gpio/gpio-uniphier.c
@@ -15,9 +15,6 @@
 #include <linux/spinlock.h>
 #include <dt-bindings/gpio/uniphier-gpio.h>
 
-#define UNIPHIER_GPIO_BANK_MASK		\
-				GENMASK((UNIPHIER_GPIO_LINES_PER_BANK) - 1, 0)
-
 #define UNIPHIER_GPIO_IRQ_MAX_NUM	24
 
 #define UNIPHIER_GPIO_PORT_DATA		0x0	/* data */
@@ -147,15 +144,14 @@ static void uniphier_gpio_set(struct gpio_chip *chip,
 static void uniphier_gpio_set_multiple(struct gpio_chip *chip,
 				       unsigned long *mask, unsigned long *bits)
 {
-	unsigned int bank, shift, bank_mask, bank_bits;
-	int i;
+	unsigned long i;
+	unsigned long bank_mask;
+	unsigned long bank;
+	unsigned long bank_bits;
 
-	for (i = 0; i < chip->ngpio; i += UNIPHIER_GPIO_LINES_PER_BANK) {
+	for_each_set_clump8(i, bank_mask, mask, chip->ngpio) {
 		bank = i / UNIPHIER_GPIO_LINES_PER_BANK;
-		shift = i % BITS_PER_LONG;
-		bank_mask = (mask[BIT_WORD(i)] >> shift) &
-						UNIPHIER_GPIO_BANK_MASK;
-		bank_bits = bits[BIT_WORD(i)] >> shift;
+		bank_bits = bitmap_get_value8(bits, i);
 
 		uniphier_gpio_bank_write(chip, bank, UNIPHIER_GPIO_PORT_DATA,
 					 bank_mask, bank_bits);
-- 
2.23.0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
