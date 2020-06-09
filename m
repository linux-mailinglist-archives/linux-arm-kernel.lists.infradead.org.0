Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE481F3285
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 05:16:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RtOoAL/kOmkWXKHWdM0IwboTWdjEtRtQlAZpqvqY6HY=; b=dmrEURQr3T1ctE
	uqRjQ5GGVh2/LROa3sY7kIRdCJ3C4/whknGThBhWZdt93CQI8rKXCBGU7rWmNsY/TS+kvi9i5CEjN
	p4sRaMeX0y6ioI0H4ko+KHi+lC10EG2z4r4P6YyDAR25hymxZEIZHcRJEU6k5+XtOOEJVXcYg6HPU
	xSbY1eHVC3J8oHwo4lPhkkLUftmbNZkL4suhxMbfzMGKSLHSrmRUXwFUHle2fZElmt8a6J0L8ovxP
	A46BLDnMx1cugOh9F4nNwSJQGRrPYUF9skMXu4+i1wjmQZDLU1UY0XTlH3zxuj9asVEYAr3dd1H+N
	0mjYlVgCMmR81LSMZoPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiUkf-0007W6-6P; Tue, 09 Jun 2020 03:16:37 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiUkV-0007UU-BU
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 03:16:29 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 9180CDAB3462744352EF;
 Tue,  9 Jun 2020 11:16:13 +0800 (CST)
Received: from [127.0.0.1] (10.67.76.251) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.487.0; Tue, 9 Jun 2020
 11:16:08 +0800
Subject: Re: [PATCH] drivers/perf: hisi: Fix wrong value for all counters
 enable
To: Will Deacon <will@kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <1591350221-32275-1-git-send-email-zhangshaokun@hisilicon.com>
 <159162760171.200666.5672755060952056458.b4-ty@kernel.org>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Message-ID: <052f4df0-63ad-7529-0045-1093d8e4fa93@hisilicon.com>
Date: Tue, 9 Jun 2020 11:16:08 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <159162760171.200666.5672755060952056458.b4-ty@kernel.org>
X-Originating-IP: [10.67.76.251]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_201627_568379_70372591 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com
Content-Type: text/plain; charset="gbk"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhhbmtzIFdpbGwuCgrU2iAyMDIwLzYvOCAyMzoxNywgV2lsbCBEZWFjb24g0LS1wDoKPiBPbiBG
cmksIDUgSnVuIDIwMjAgMTc6NDM6NDEgKzA4MDAsIFNoYW9rdW4gWmhhbmcgd3JvdGU6Cj4+IElu
IEwzQyB1bmNvcmUgUE1VIGRyaXZlcnMsIGJpdDE2IGlzIHVzZWQgdG8gY29udHJvbCBhbGwgY291
bnRlcnMgZW5hYmxlICYKPj4gZGlzYWJsZS4gV3JvbmcgdmFsdWUgaXMgZ2l2ZW4gaW4gdGhlIGRy
aXZlciBhbmQgaXRzIGRlZmF1bHQgdmFsdWUgaXMgMSdiMSwKPj4gaXQgY2FuIHdvcmsgYmVjYXVz
ZSBlYWNoIFBNVSBjb3VudGVyIGhhcyBpdHMgb3duIGNvbnRyb2wgYml0cyB0b28uCj4+IExldCdz
IGZpeCB0aGUgd3JvbmcgdmFsdWUuCj4gCj4gQXBwbGllZCB0byBhcm02NCAoZm9yLW5leHQvY29y
ZSksIHRoYW5rcyEKPiAKPiBbMS8xXSBkcml2ZXJzL3BlcmY6IGhpc2k6IEZpeCB3cm9uZyB2YWx1
ZSBmb3IgYWxsIGNvdW50ZXJzIGVuYWJsZQo+ICAgICAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcv
YXJtNjQvYy85NjFhYmQ3OGFkY2IKPiAKPiBDaGVlcnMsCj4gCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
