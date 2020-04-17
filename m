Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6FA1AE759
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 23:12:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:To:Subject:
	Message-ID:From:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W/96s3RhhOtH00vQmPUletequPXSKGHWxSWixvb8YUA=; b=gGAzWulsMNSrh/
	afI3md7zjQ7eQgsORWKaQS/dQOLR6sNWYdU77Qe73NohFzaStFLDgVy+ptY229EYpd9mq9lbDX5Q9
	v0h01zN+/tILovzosvHKO6nWlo/y8VY7AvJ6ly8fmjfJpLLHDdbJb18Ev4S8RMrmLyclRdwn63NjJ
	9wYTJa+Hz1VBMaG6X6jC4+EcLUV2/SlkbpZfzWvD6vHxBmiYwHk2CEIn/DD4o7hKz5Kquz2BfqM5i
	qadV6+BoEIuf3aUaAlmvyCkK+KqWgLtyNQbjr5gSpXM0S1fHb+Jqql25lxSsIn9t+9oJVUMjuzens
	paOFy6z2u0r1TvwtEBXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPYHG-00064m-CN; Fri, 17 Apr 2020 21:11:58 +0000
Received: from piie.net ([80.82.223.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPYH7-00063d-AT
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 21:11:51 +0000
Received: from mail.piie.net (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
 (Client did not present a certificate)
 by piie.net (Postfix) with ESMTPSA id 0DEA6163C;
 Fri, 17 Apr 2020 23:11:25 +0200 (CEST)
Mime-Version: 1.0
Date: Fri, 17 Apr 2020 21:11:25 +0000
X-Mailer: RainLoop/1.11.3
From: "=?utf-8?B?UGV0ZXIgS8Okc3RsZQ==?=" <peter@piie.net>
Message-ID: <0db3b33479eea6508a0d1136158aa31e@piie.net>
Subject: Re: [RFC 0/8] Stop monitoring disabled devices
To: "Andrzej Pietrasiewicz" <andrzej.p@collabora.com>, "Bartlomiej
 Zolnierkiewicz" <b.zolnierkie@samsung.com>
In-Reply-To: <fc166e0f-91ec-67d5-28b0-428f556643a4@collabora.com>
References: <fc166e0f-91ec-67d5-28b0-428f556643a4@collabora.com>
 <20200407174926.23971-1-andrzej.p@collabora.com>
 <2bc5a902-acde-526a-11a5-2357d899916c@linaro.org>
 <aeec2ce8-8fb9-9353-f3dd-36a476ceeb3b@collabora.com>
 <CGME20200415104010eucas1p101278e53e34a2e56dfc7c82b533a9122@eucas1p1.samsung.com>
 <dc999149-d168-0b86-0559-7660e0fdec77@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_141149_650222_7B57B8D2 
X-CRM114-Status: UNSURE (   3.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: platform-driver-x86@vger.kernel.org, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-acpi@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 Len Brown <lenb@kernel.org>, linux-pm@vger.kernel.org, Sascha
 Hauer <s.hauer@pengutronix.de>, Ido Schimmel <idosch@mellanox.com>,
 Jiri Pirko <jiri@mellanox.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>,
 Shawn Guo <shawnguo@kernel.org>, "Rafael J .
 Wysocki" <rjw@rjwysocki.net>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 netdev@vger.kernel.org, Enrico Weigelt <info@metux.net>, "David S .
 Miller" <davem@davemloft.net>, Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

17. April 2020 18:23, "Andrzej Pietrasiewicz" <andrzej.p@collabora.com> schrieb:

[...]

> I've just sent a v3. After addressing your and Daniel's comments my series
> now looks pretty compact. Let's see if there's more feedback. Is your work on
> reviving the above mentioned 2018 series ready?

I agree, v3 looks pretty good, I will test it within next 2 days for acerhdf.  Thanks for your work!

-- 
--peter;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
