Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80EBB13A429
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 10:47:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v7G4StD0LB34B6AJVCwKMWxyohet8VF/LRhrGTncJcg=; b=PN68j5DhojDeSIEW0ZNDBldrv
	zOIO+HBN8iQd/alc0ev7JtDBmiuL9EeJDjBiw6F92HsQZifXPNirR1uEb5ATj5oDFnRwly+YXRtT4
	7UrBuj4RH8d5sHBIYkt+didcLx6pm9D9QO5BwbF93KmHB8T9AnTnKlcD/MEbARuPuE6AfQ72yjuCc
	V1Uk19SAgwWd4yln5tWF4OQdH4PXiaDcuEmcdEe/QtoaEFnDeTFVzZ+bpEl0T8CBop8C2m827aqWm
	NIYvQlCqxGOsIymegRdNjDAMIMZw4GD1faklOYOBGqsCiUrvSGiEWncZkRggsI2B7dOascy92/8Ps
	w9DpmIngA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irInP-00004v-K2; Tue, 14 Jan 2020 09:47:35 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irIn3-0008V1-7T
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 09:47:19 +0000
Received: from LHREML713-CAH.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 0524B413676FB742ABE3;
 Tue, 14 Jan 2020 09:47:08 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML713-CAH.china.huawei.com (10.201.108.36) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 14 Jan 2020 09:47:07 +0000
Received: from [127.0.0.1] (10.202.226.43) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Tue, 14 Jan
 2020 09:47:07 +0000
Subject: Re: [PATCH v1] ACPI/IORT: Workaround for IORT ID count "minus one"
 issue
To: Hanjun Guo <guohanjun@huawei.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, "Rafael J.
 Wysocki" <rafael@kernel.org>, Pankaj Bansal <pankaj.bansal@nxp.com>
References: <1577708824-4873-1-git-send-email-guohanjun@huawei.com>
 <d3af932c-106e-ee6e-56d3-5a665fd9b357@huawei.com>
 <b67fa77a-af21-9013-9162-1cfbd946e648@huawei.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <eef4fe19-5813-ab8d-6249-906dbb3dbbcd@huawei.com>
Date: Tue, 14 Jan 2020 09:47:06 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <b67fa77a-af21-9013-9162-1cfbd946e648@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.202.226.43]
X-ClientProxiedBy: lhreml729-chm.china.huawei.com (10.201.108.80) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_014713_415993_E9AAABA5 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTQvMDEvMjAyMCAwNzoxOSwgSGFuanVuIEd1byB3cm90ZToKPiBPbiAyMDIwLzEvMTMgMTc6
MzQsIEpvaG4gR2Fycnkgd3JvdGU6Cj4+IE9uIDMwLzEyLzIwMTkgMTI6MjcsIEd1b2hhbmp1biAo
SGFuanVuIEd1bykgd3JvdGU6Cj4+PiArfTsKPj4+ICsKPj4+ICtzdGF0aWMgYm9vbCBhcHBseV9p
ZF9jb3VudF93b3JrYXJvdW5kOwo+Pj4gKwo+Pj4gK3N0YXRpYyBzdHJ1Y3QgaW9ydF93b3JrYXJv
dW5kX29lbV9pbmZvIHdhX2luZm9bXSBfX2luaXRkYXRhID0gewo+Pj4gK8KgwqDCoCB7Cj4+PiAr
wqDCoMKgwqDCoMKgwqAgLm9lbV9pZMKgwqDCoMKgwqDCoMKgID0gIkhJU0nCoCAiLAo+Pj4gK8Kg
wqDCoMKgwqDCoMKgIC5vZW1fdGFibGVfaWTCoMKgwqAgPSAiSElQMDfCoMKgICIsCj4+PiArwqDC
oMKgwqDCoMKgwqAgLm9lbV9yZXZpc2lvbsKgwqDCoCA9IDAsCj4+PiArwqDCoMKgIH0sIHsKPj4+
ICvCoMKgwqDCoMKgwqDCoCAub2VtX2lkwqDCoMKgwqDCoMKgwqAgPSAiSElTScKgICIsCj4+PiAr
wqDCoMKgwqDCoMKgwqAgLm9lbV90YWJsZV9pZMKgwqDCoCA9ICJISVAwOMKgwqAgIiwKPj4+ICvC
oMKgwqDCoMKgwqDCoCAub2VtX3JldmlzaW9uwqDCoMKgID0gMCwKPj4+ICvCoMKgwqAgfQo+Pj4g
K307Cj4+Cj4+IEFtIEkgcmlnaHQgaW4gc2F5aW5nIHRoYXQgYW55IGZ1dHVyZSBCSU9TIGZvciB0
aGVzZSBjaGlwc2V0cyB3aWxsIGhhdmUgdG8gY29udGludWUgdG8gaGF2ZSBidWdneSBmaXJtd2Fy
ZT8gSWYgc28sIGl0J3MgdW5mb3J0dW5hdGUuCj4gCj4gRm9yIGJldHRlciBjb21wYXRpYmlsaXR5
LCBJIHdvdWxkIHNheSB5ZXMgOigKPiAKPiBGb3IgZXhhbXBsZSwgaWYgeW91IGZpeCB0aGF0IGlu
IHRoZSBmaXJtd2FyZSwgYW5kIHVwZGF0ZQo+IHRoZSBJT1JUIHJldmlzaW9uIG51bWJlciwgdGhl
biBpdCB3aWxsIHJ1biBwcmV0dHkgZ29vZAo+IG9uIG5ldyB2ZXJzaW9uIG9mIHRoZSBrZXJuZWws
IGJ1dCBub3Qgb24gb2xkIHZlcnNpb24gb2YKPiBrZXJuZWwgd2l0aG91dCB0aGUgYmFja3BvcnRp
bmcgb2YgdGhpcyBwYXRjaC4KCm9rLCBzbyB0aGF0IHNlZW1zIHRvIGJlIGEgdHJhZGUgb2ZmIHRo
ZW4uIEhhdmluZyB0byBiYWNrcG9ydCBpbnRyb2R1Y2VzIAphIHJpc2suCgpTbyB0aGVuIGl0IG1p
Z2h0IGJlIGdvb2QgdG8gYWRkIGEgY29tbWVudCB0byBJRCBjb3VudCBtZW1iZXJzIGluIApvcGVu
LXNvdXJjZSBlZGsyLXBsYXRmb3JtcyBoaXAwNyBhbmQgaGlwMDggSU9SVHMgdG8gbWVudGlvbiBp
dCBpcyBidWdneSwgCnNvIG5vdCB0byBiZSBjb3BpZWQgYXMgYSByZWZlcmVuY2UuCgpDaGVlcnMs
CkpvaG4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
