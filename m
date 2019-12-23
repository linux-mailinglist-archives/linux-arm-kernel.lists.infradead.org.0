Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E611F1290D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 03:07:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pe+NTxyJ4XFXM0AFiAT3+J6XZd4LEy/6VvF0lh8fEcQ=; b=iP1HTZCsk5Ouw6
	Fy8GC+LC2XCMwhGj8qU7HQYmAV0NFE3C8QT5cQdon7u4KDlMdIu8aIY2pA1JwMbK8uqKY/HnDW5H7
	wRPNs2xdt2zFp10aeagX5Y2fTRNc+YYW1qg10KU08hJVRqFS2PHsOxS96S1Jj6k/TZLJ9e+TWMQQo
	XS+YETFIbBFIG2YKP+8mpNaxikX0Uz2N2cPH0r1nQLOwHD52lE4p1BvTCRaEy/xpDmIoBJE/whwIF
	aFbKthPfTwh+kou5TlDiHKo74QnSMy7QUfwcZLOoWhpMaPGDSyUGJfQerhXQte2BCPwS95RKMBcyq
	g6RHsE2icMU/bKITetZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijD7k-00032e-3W; Mon, 23 Dec 2019 02:07:08 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijD7b-00030G-Nj
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 02:07:01 +0000
Received: from DGGEMM402-HUB.china.huawei.com (unknown [172.30.72.53])
 by Forcepoint Email with ESMTP id 21A7A9D47367D63EB243;
 Mon, 23 Dec 2019 10:06:47 +0800 (CST)
Received: from dggeme755-chm.china.huawei.com (10.3.19.101) by
 DGGEMM402-HUB.china.huawei.com (10.3.20.210) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 23 Dec 2019 10:06:46 +0800
Received: from [127.0.0.1] (10.173.221.248) by dggeme755-chm.china.huawei.com
 (10.3.19.101) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 23
 Dec 2019 10:06:46 +0800
Subject: Re: [PATCH 1/5] KVM: arm64: Document PV-lock interface
To: Markus Elfring <Markus.Elfring@web.de>, <kvm@vger.kernel.org>,
 <kvmarm@lists.cs.columbia.edu>, <linux-arm-kernel@lists.infradead.org>,
 <linux-doc@vger.kernel.org>, <virtualization@lists.linux-foundation.org>
References: <20191217135549.3240-2-yezengruan@huawei.com>
 <2337a083-499f-7778-7bf3-9f525a04e17a@web.de>
From: yezengruan <yezengruan@huawei.com>
Message-ID: <6d798e02-7ab2-fc58-9f75-ee74de97ae72@huawei.com>
Date: Mon, 23 Dec 2019 10:06:43 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <2337a083-499f-7778-7bf3-9f525a04e17a@web.de>
Content-Language: en-US
X-Originating-IP: [10.173.221.248]
X-ClientProxiedBy: dggeme703-chm.china.huawei.com (10.1.199.99) To
 dggeme755-chm.china.huawei.com (10.3.19.101)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_180659_938607_39D0E2EE 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.188 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, "Suzuki K.
 Poulose" <suzuki.poulose@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, James Morse <james.morse@arm.com>, Marc
 Zyngier <maz@kernel.org>, Steven Price <steven.price@arm.com>,
 Will Deacon <will@kernel.org>, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFya3VzLAoKT24gMjAxOS8xMi8yMCAyMjozMiwgTWFya3VzIEVsZnJpbmcgd3JvdGU6Cj4g
4oCmCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vdmlydC9rdm0vYXJtL3B2bG9jay5yc3QKPiDigKYK
Pj4gK1BhcmF2aXJ0dWFsaXplZCBsb2NrIHN1cHBvcnQgZm9yIGFybTY0Cj4+ICs9PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+PiArCj4+ICtLVk0vYXJtNjQgcHJvdmlkcyBz
b21lIOKApgo+IOKApgo+IAo+IEkgc3VnZ2VzdCB0byBhdm9pZCBhIHR5cG8gaGVyZS4KClRoYW5r
cyBmb3IgcG9zdGluZyB0aGlzLgoKPiAKPiBSZWdhcmRzLAo+IE1hcmt1cwo+IAoKVGhhbmtzLAoK
WmVuZ3J1YW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
