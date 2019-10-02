Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E02CFC4917
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 10:02:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VNISKa6XdjMO/Y+fMJk0S2JayXUEQBWafLOhKeNX0Io=; b=auyES43EaZHrtP
	MLvFI994CvaGKLhFvOZL+nbdaXL7bQvN0oVdOJQLWn7YeA4D+chul054PialsQ4eQpHMZgdm6XWrV
	ZvJMd/2FFFobJV39Lehp85R95paCiqe467jUulQ9KUuO1N5X4+bPz82c7DOsIdBlsicnbU6VF2ccZ
	8xPw/rzYgp+2YveS82y0Ph3QAkY2vKStlv4ht57Ndb6qSkvAlQWj4QCnvjuFs+u5E4ptinqHsAOFn
	4A4361LLiaN4nH/WCkfhb+/PPWlXt6kSzzOUZW1Ob/GhoPLi7mAP0Sir/dYWaYUbjtHpoJQFmwzXd
	QtxIOLxPJxMtCKhaJAsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFZaQ-0006Iu-6f; Wed, 02 Oct 2019 08:02:14 +0000
Received: from smtp.cellavision.se ([84.19.140.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFZaG-0006Ia-V9
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 08:02:06 +0000
Received: from DRCELLEX03.cellavision.se (172.16.169.12) by
 DRCELLEX03.cellavision.se (172.16.169.12) with Microsoft SMTP Server (TLS) id
 15.0.1044.25; Wed, 2 Oct 2019 10:02:03 +0200
Received: from DRCELLEX03.cellavision.se ([fe80::982a:ae4b:76e:fa98]) by
 DRCELLEX03.cellavision.se ([fe80::982a:ae4b:76e:fa98%12]) with mapi id
 15.00.1044.021; Wed, 2 Oct 2019 10:02:03 +0200
From: Hans Andersson <Hans.Andersson@CELLAVISION.SE>
To: Jose Abreu <Jose.Abreu@synopsys.com>, "mcoquelin.stm32@gmail.com"
 <mcoquelin.stm32@gmail.com>
Subject: RE: [PATCH] net: stmmac: Read user ID muliple times if needed.
Thread-Topic: [PATCH] net: stmmac: Read user ID muliple times if needed.
Thread-Index: AQHVePAX5n9iUQBpykuXocq+LEgDYKdG2TOAgAAjX2A=
Date: Wed, 2 Oct 2019 08:02:02 +0000
Message-ID: <e878e0e4036a4d69b05dcee717fd7ac5@DRCELLEX03.cellavision.se>
References: <20191002070721.9916-1-haan@cellavision.se>
 <BN8PR12MB3266ED591171A79825090BE0D39C0@BN8PR12MB3266.namprd12.prod.outlook.com>
In-Reply-To: <BN8PR12MB3266ED591171A79825090BE0D39C0@BN8PR12MB3266.namprd12.prod.outlook.com>
Accept-Language: en-US, sv-SE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.230.0.148]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_010205_005789_1F1ED480 
X-CRM114-Status: UNSURE (   5.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "peppe.cavallaro@st.com" <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We assert / de-assert the reset line, but the CPU is too fast and the IP is still 
in reset when we later try to read user ID / Synopsys ID. Another option would
be to add a delay after we reset.

-----Original Message-----
From: Jose Abreu <Jose.Abreu@synopsys.com> 
Sent: den 2 oktober 2019 09:52
To: Hans Andersson <Hans.Andersson@CELLAVISION.SE>; mcoquelin.stm32@gmail.com
Cc: peppe.cavallaro@st.com; alexandre.torgue@st.com; davem@davemloft.net; netdev@vger.kernel.org; linux-stm32@st-md-mailman.stormreply.com; linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Hans Andersson <Hans.Andersson@CELLAVISION.SE>
Subject: RE: [PATCH] net: stmmac: Read user ID muliple times if needed.

From: Hans Andersson <haan@cellavision.se>
Date: Oct/02/2019, 08:07:21 (UTC+00:00)

> When we read user ID / Synopsys ID we might still be in reset, so read 
> muliple times if needed.

We shouldn't even try to read it if IP is in reset ... 

---
Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
