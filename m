Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5DF12C103
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 08:57:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QnmJP6qXTwLlsVhfCv1kuSViwxBfsSb2ECzec0fg/pA=; b=mhAlSrFADd5a9E
	wnALtWmZQ3b//Y0hAnmuvpB/I+9LQA4uOqBW2PWp32vSEHd9NTRWcIuXo/bZTwZv7dxLze505sm5p
	mpiTJphWCOVv/DxddcjfMyHGh2la6Pwj7Q1MGk0M3QPjOuDsqYs8a1WDFGOJNOVccjKeJkZJx2v8Z
	0EwykYtFGzh5ppBCJC9ueckmbN+7r3peECXRflw3ekMSXDaXoAspuY3UqRe1zlxiV+nxezlQoFGrs
	JYzIadv/IxR/bco9/HMw3m9cWWDvdugnggDoQaxR6W2F3S2F3s80YPnqDhaOdI7ieXMLhxwIa4H0k
	F/DnpZGnwTaanLx60rHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilTSG-00069h-Ba; Sun, 29 Dec 2019 07:57:40 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ilTS6-00068z-Ny; Sun, 29 Dec 2019 07:57:32 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xBT7vM7H015574,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xBT7vM7H015574
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Sun, 29 Dec 2019 15:57:22 +0800
Received: from RTEXMB06.realtek.com.tw (172.21.6.99) by
 RTITCASV01.realtek.com.tw (172.21.6.18) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Sun, 29 Dec 2019 15:57:22 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB06.realtek.com.tw (172.21.6.99) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Sun, 29 Dec 2019 15:57:21 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d]) by
 RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d%8]) with mapi id
 15.01.1779.005; Sun, 29 Dec 2019 15:57:21 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>
Subject: RE: [PATCH v2 0/2] Initial RTD1319 SoC and Realtek PymParticle EVB
 support
Thread-Topic: [PATCH v2 0/2] Initial RTD1319 SoC and Realtek PymParticle EVB
 support
Thread-Index: AQHVvZBnw+MU9IFQeki5qI/vGuhs8afP46uAgADZpxA=
Date: Sun, 29 Dec 2019 07:57:21 +0000
Message-ID: <4a8a2899c2e140b39db251b456a77959@realtek.com>
References: <20191228150553.6210-1-james.tai@realtek.com>
 <9fbe4392-5028-3718-8c97-547a46efad2a@suse.de>
In-Reply-To: <9fbe4392-5028-3718-8c97-547a46efad2a@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [114.37.128.25]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_235730_909503_14E26780 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andreas,

> This time you CC'ed me only on the cover letter, so that I didn't get notified of,
> e.g., Marc's review comments. I wonder why: realtek.yaml is in MAINTAINERS,
> and so is dts/realtek/, so get_maintainers.pl should've picked me up, even if
> you forgot to explicitly CC me? Please check what went wrong there and make
> sure it doesn't happen again for the next submission.
> 
I will check it and make sure it doesn't happen again for the next submission.

Thanks.

Regards,
James


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
