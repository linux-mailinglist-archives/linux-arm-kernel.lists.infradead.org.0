Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C311E3F41
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 12:39:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HKMoh2VI86YnkHFE195wpYOEFQegMvCAuyO0TBwg+dE=; b=eRyEvz4tk2m1em
	0NMf/tJWMQuNn01UPM5SeeJNISzbx/iOOiBlWlsv6U+wepjC6KYwLczAYrIxJp6Vwn0JIWz1SI2n4
	u22qSJp5S0x1SoxIDKOkwDfaRlH+V6zOQ1PVms0CarrWJY8Uxff6F94XUyoN9KgAc/jvZC+vV5vSY
	zmT7NCr48WNA1lubCQJ3JjgZvW2ic8LlWJ17epKSNmjD2Ily7DJhFHiwookAxXSpZibyo+hcMHvPU
	80jf3GuBS4Xoy2PCTxnZFOq1ar8XT2bb+OcJfzKNOl3hbfnQYq7tJLwzZWkC/YaZtLUYzevPrhSM4
	NqMjtlRmeA/Z/uZsX/dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdtTE-0006A6-FK; Wed, 27 May 2020 10:39:36 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdtSx-000696-Oh
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 10:39:21 +0000
Received: from sntmail12r.snt-is.com (unknown [10.203.32.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id 418D167A7C7;
 Wed, 27 May 2020 12:39:13 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail12r.snt-is.com
 (10.203.32.182) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Wed, 27 May
 2020 12:39:12 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1913.007; Wed, 27 May 2020 12:39:12 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Russell King <linux@armlinux.org.uk>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, "Rafael J. Wysocki"
 <rjw@rjwysocki.net>, Daniel Lezcano <daniel.lezcano@linaro.org>, Kate Stewart
 <kstewart@linuxfoundation.org>, Enrico Weigelt <info@metux.net>, "Thomas
 Gleixner" <tglx@linutronix.de>
Subject: High interrupt latency with low power idle mode on i.MX6
Thread-Topic: High interrupt latency with low power idle mode on i.MX6
Thread-Index: AQHWNBMPiENrGmpy5EqtWjfM5SmInw==
Date: Wed, 27 May 2020 10:39:12 +0000
Message-ID: <bc91129c-121c-a070-53b2-1f0bb6d4500a@kontron.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <74610AFAFACFA04C9CA7028EA7CC1B36@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 418D167A7C7.AEE78
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: daniel.lezcano@linaro.org, info@metux.net,
 kstewart@linuxfoundation.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux@armlinux.org.uk, rjw@rjwysocki.net, s.hauer@pengutronix.de,
 shawnguo@kernel.org, tglx@linutronix.de
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_033919_962050_3CB80F8B 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.208.41.68 listed in list.dnswl.org]
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

on our i.MX6UL/ULL boards running mainline kernels, we see an issue with 
RS485 collisions on the bus. These are caused by the resetting of the 
RTS signal being delayed after each transmission. The TXDC interrupt 
takes several milliseconds to trigger and the slave on the bus already 
starts to send a reply in the meantime.

We found out that these delays only happen when the CPU is in "low power 
idle" mode (ARM power off). When we disable cpuidle state 2 or put some 
background load on the CPU everything works fine and the delays are gone.

echo 1 > /sys/devices/system/cpu/cpu0/cpuidle/state2/disable

It seems like also other interfaces (I2C, etc.) might be affected by 
these increased latencies, we haven't investigated this more closely, 
though.

We currently apply a patch to our kernel, that disables low power idle 
mode by default, but I'm wondering if there's a way to fix this 
properly? Any ideas?

Thanks,
Frieder
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
