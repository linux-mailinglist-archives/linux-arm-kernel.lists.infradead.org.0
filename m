Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6AF6A6BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 12:45:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=stX6vBiiOEQTyJreFbn2uaVtcE/sKIGuKiKDuB5O430=; b=R1UVrnXRYBlFWWVukjTjzngUD
	PUJzG6WL5TJcz1j91wfLO7MRaotGmqEsr4iWIXt1RUMgNB8kvz0gp2FUUEzAaVISxgulz1sMSjnID
	1wUY0uXKyIeuVAJot4yiB/1a0XW2tWeHsCVZadI4C7jrQ/EUr73xgSRqWvO6tYIb7xm7k7ygkbN5b
	mAx++xJQz4vbw1r1Sl95s7eo9n9dbLEX4+ZVI3J8dCHAfHoB9GV5YRnWrloeKV16xkCXiWIMVnw8k
	W1HNFn6Hugvub6FoTtsUV8DyhIXBqTIU53q71VX4tNwEQTZzsbA2fZSHZdFoh4MjVx4XBmjCfDn/B
	0JE2NM3hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnKxN-0005L1-7E; Tue, 16 Jul 2019 10:45:13 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnKww-0005I5-Uo
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 10:44:48 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6GAiism017500;
 Tue, 16 Jul 2019 05:44:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563273884;
 bh=xAUeoAyBbOBCb3mEnXWmyizdBhqwUzcNWgmgEUmhoeI=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=FKSFGu7JJ2KD4x1wu8mJ0wJw9dC9x0iMgIeiYpYtbNMsj4UDPDXXResfNsD/50bSd
 nzJNjkoJISnwf9eOUM11U65sTxYBDzN7H4KkuzIuwdO+rl6J67697A8gjteVBCPzT5
 678muO2ndffPko7HCBQsYZ0dSmj2QLx8vtcP2MMM=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6GAiiju091125
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 16 Jul 2019 05:44:44 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 16
 Jul 2019 05:44:44 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 16 Jul 2019 05:44:43 -0500
Received: from [10.250.98.116] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6GAie9C058777;
 Tue, 16 Jul 2019 05:44:41 -0500
Subject: Re: [RESEND PATCH next v2 0/6] ARM: keystone: update dt and enable
 cpts support
To: <santosh.shilimkar@oracle.com>, Santosh Shilimkar <ssantosh@kernel.org>
References: <20190705151247.30422-1-grygorii.strashko@ti.com>
 <2ef8b34e-7a6e-b3e4-90e0-c4e7f16c2e99@oracle.com>
From: grygorii <grygorii.strashko@ti.com>
Message-ID: <a2dae3a5-7e25-1de0-e722-8860b58cb3a2@ti.com>
Date: Tue, 16 Jul 2019 16:14:39 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <2ef8b34e-7a6e-b3e4-90e0-c4e7f16c2e99@oracle.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_034447_108853_602C66B5 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Murali Karicheri <m-karicheri2@ti.com>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwNi8wNy8yMDE5IDA1OjE4LCBzYW50b3NoLnNoaWxpbWthckBvcmFjbGUuY29tIHdyb3Rl
Ogo+IE9uIDcvNS8xOSA4OjEyIEFNLCBHcnlnb3JpaSBTdHJhc2hrbyB3cm90ZToKPj4gSGkgU2Fu
dG9zaCwKPj4KPj4gVGhpcyBzZXJpZXMgaXMgc2V0IG9mIHBsYXRmb3JtIGNoYW5nZXMgcmVxdWly
ZWQgdG8gZW5hYmxlIE5FVENQIENQVFMgcmVmZXJlbmNlCj4+IGNsb2NrIHNlbGVjdGlvbiBhbmQg
ZmluYWwgcGF0Y2ggdG8gZW5hYmxlIENQVFMgZm9yIEtleXN0b25lIDY2QUsyRS9ML0hLIFNvQ3Mu
Cj4+Cj4+IFRob3NlIHBhdGNoZXMgd2VyZSBwb3N0ZWQgYWxyZWFkeSBbMV0gdG9nZXRoZXIgd2l0
aCBkcml2ZXIncyBjaGFuZ2VzLCBzbyB0aGlzCj4+IGlzIHJlLXNlbmQgb2YgRFQvcGxhdGZvcm0g
c3BlY2lmaWMgY2hhbmdlcyBvbmx5LCBhcyBkcml2ZXIncyBjaGFuZ2VzIGhhdmUKPj4gYmVlbiBt
ZXJnZWQgYWxyZWFkeS4KPj4KPj4gUGF0Y2hlcyAxLTU6IENQVFMgRFQgbm9kZXMgdXBkYXRlIGZv
ciBUSSBLZXlzdG9uZSAyIDY2QUsySEsvRS9MIFNvQ3MuCj4+IFBhdGNoIDY6IGVuYWJsZXMgQ1BU
UyBmb3IgVEkgS2V5c3RvbmUgMiA2NkFLMkhLL0UvTCBTb0NzLgo+Pgo+PiBbMV0gaHR0cHM6Ly9w
YXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMDk4MDAzNy8KPj4KPj4gR3J5Z29yaWkgU3RyYXNo
a28gKDYpOgo+PiDCoMKgIEFSTTogZHRzOiBrZXlzdG9uZS1jbG9ja3M6IGFkZCBpbnB1dCBmaXhl
ZCBjbG9ja3MKPj4gwqDCoCBBUk06IGR0czogazJlLWNsb2NrczogYWRkIGlucHV0IGV4dC4gZml4
ZWQgY2xvY2tzIHRzaXBjbGthL2IKPj4gwqDCoCBBUk06IGR0czogazJlLW5ldGNwOiBhZGQgY3B0
cyByZWZjbGtfbXV4IG5vZGUKPj4gwqDCoCBBUk06IGR0czogazJoay1uZXRjcDogYWRkIGNwdHMg
cmVmY2xrX211eCBub2RlCj4+IMKgwqAgQVJNOiBkdHM6IGsybC1uZXRjcDogYWRkIGNwdHMgcmVm
Y2xrX211eCBub2RlCj4+IMKgwqAgQVJNOiBjb25maWdzOiBrZXlzdG9uZTogZW5hYmxlIGNwdHMK
Pj4KPiBXaWxsIGFkZCB0aGVzZSBmb3IgNS40IHF1ZXVlLiBUaGFua3MgISEKClRoYW5rIHlvdQoK
LS0gCkJlc3QgcmVnYXJkcywKZ3J5Z29yaWkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
