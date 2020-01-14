Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4868D13A12B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 07:57:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OJUyE5/ipk6gPOTJpyGqakATNrZzqHyECvTQfgyU+NA=; b=nV1HA5pulTLXiH
	9VZsyoSjycH6JcAH6Uo9r1XEuMglbU4CfHFHzUQIneCKlqIqLcBNPGbJV2Lmw7LdXYYFH+akIcgz2
	qvOspPq1K8+GNNKZbj2oXllAw4Wyt7BdDbrFUUGclcAzt+liEpA3wnQ0yWJm5UdRePxbeHaDF5uH5
	ZoX0ETmqrylHNh/3k6e5JpwzuSCCeFIdHtE3//u0ahetjNTHMRTKijA7w/YuewDvNsS3UVm0eKvOf
	7Xfp65BbUpSkqtpxUJYSMTvF0aPxDBzT/kxKKPXhgHxkmTFaNMFV0duGXWJ+LBQTep2DNZq9fJP3/
	jTr3tXvG0Qk+jC7O4ZEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irG8Q-0005Tj-AU; Tue, 14 Jan 2020 06:57:06 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irG8J-0005Sz-Tb
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 06:57:01 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 22:56:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,431,1571727600"; d="scan'208";a="217650453"
Received: from pgsmsx112.gar.corp.intel.com ([10.108.55.201])
 by orsmga008.jf.intel.com with ESMTP; 13 Jan 2020 22:56:54 -0800
Received: from pgsmsx114.gar.corp.intel.com ([169.254.4.192]) by
 PGSMSX112.gar.corp.intel.com ([169.254.3.207]) with mapi id 14.03.0439.000;
 Tue, 14 Jan 2020 14:56:53 +0800
From: "Ong, Boon Leong" <boon.leong.ong@intel.com>
To: Jakub Kicinski <kubakici@wp.pl>
Subject: RE: [PATCH net 3/7] net: stmmac: fix missing netdev->features in
 stmmac_set_features
Thread-Topic: [PATCH net 3/7] net: stmmac: fix missing netdev->features in
 stmmac_set_features
Thread-Index: AQHVyfomk1Civpoau0S27mPh9DveG6foDXcAgAGt5vA=
Date: Tue, 14 Jan 2020 06:56:53 +0000
Message-ID: <AF233D1473C1364ABD51D28909A1B1B75C45CC79@pgsmsx114.gar.corp.intel.com>
References: <1578967276-55956-1-git-send-email-boon.leong.ong@intel.com>
 <1578967276-55956-4-git-send-email-boon.leong.ong@intel.com>
 <20200113051712.73442991@cakuba>
In-Reply-To: <20200113051712.73442991@cakuba>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_225659_964403_7B77D426 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, "Voon,
 Weifeng" <weifeng.voon@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, "Tan, 
 Tee Min" <tee.min.tan@intel.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>On Tue, 14 Jan 2020 10:01:12 +0800, Ong Boon Leong wrote:
>
>Please fix the date on your system.
>
>Please always provide a patch description. For bug fixes description of
>how the bug manifest to the users is important to have.
>
>> Fixes: d2afb5bdffde ("stmmac: fix the rx csum feature")
>>
>
>Please remove the empty lines between the Fixes tag and the other tags
>on all patches.

Thanks for input. Will fix. 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
