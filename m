Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F30213A198
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 08:21:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ahXIqXOh/k8tSsrsG76/EVTnpzp5wzuGEoguVVqfV/4=; b=cBIfqKR+L2BEzj
	HRARSpFL7wG2g0oP9gUfVBPG9Jxdd3laHsahDA5umAWS54b/MJA1yYbWDZreX4S9UmIv314LXQnJK
	s7Hn6nMkYT/uGcnwfco9+cDGquvG3rrpe8uHrdSBoaUvB8IfD4muTKeNs3SEs29RWB5m+D++NHeR4
	93/+Jmbm6OHCvAV3cZ3NEBXyu6kZDzaag/MTqqe8cpGwa/br+T9cfdxaORiIXK4kRfrjKkaVlvROC
	O0V2v2MbChXw285Qazni5DBKBXbpB57AqrUGF+GkWumyiKFvgPei8AncsBzOJ9ekXcBSzUHFckDVu
	zJ15+HisrXvwqaj57y7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irGVv-00081P-2Y; Tue, 14 Jan 2020 07:21:23 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irGVf-000806-Ge
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 07:21:09 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 4E8C54A801AFB970E380;
 Tue, 14 Jan 2020 15:20:55 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Tue, 14 Jan 2020
 15:20:47 +0800
Subject: Re: [PATCH v1] ACPI/IORT: Workaround for IORT ID count "minus one"
 issue
To: John Garry <john.garry@huawei.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, "Rafael J.
 Wysocki" <rafael@kernel.org>, Pankaj Bansal <pankaj.bansal@nxp.com>
References: <1577708824-4873-1-git-send-email-guohanjun@huawei.com>
 <d3af932c-106e-ee6e-56d3-5a665fd9b357@huawei.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <b67fa77a-af21-9013-9162-1cfbd946e648@huawei.com>
Date: Tue, 14 Jan 2020 15:19:15 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <d3af932c-106e-ee6e-56d3-5a665fd9b357@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_232107_719470_B298AA2F 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC8xLzEzIDE3OjM0LCBKb2huIEdhcnJ5IHdyb3RlOgo+IE9uIDMwLzEyLzIwMTkgMTI6
MjcsIEd1b2hhbmp1biAoSGFuanVuIEd1bykgd3JvdGU6Cj4+ICt9Owo+PiArCj4+ICtzdGF0aWMg
Ym9vbCBhcHBseV9pZF9jb3VudF93b3JrYXJvdW5kOwo+PiArCj4+ICtzdGF0aWMgc3RydWN0IGlv
cnRfd29ya2Fyb3VuZF9vZW1faW5mbyB3YV9pbmZvW10gX19pbml0ZGF0YSA9IHsKPj4gK8KgwqDC
oCB7Cj4+ICvCoMKgwqDCoMKgwqDCoCAub2VtX2lkwqDCoMKgwqDCoMKgwqAgPSAiSElTScKgICIs
Cj4+ICvCoMKgwqDCoMKgwqDCoCAub2VtX3RhYmxlX2lkwqDCoMKgID0gIkhJUDA3wqDCoCAiLAo+
PiArwqDCoMKgwqDCoMKgwqAgLm9lbV9yZXZpc2lvbsKgwqDCoCA9IDAsCj4+ICvCoMKgwqAgfSwg
ewo+PiArwqDCoMKgwqDCoMKgwqAgLm9lbV9pZMKgwqDCoMKgwqDCoMKgID0gIkhJU0nCoCAiLAo+
PiArwqDCoMKgwqDCoMKgwqAgLm9lbV90YWJsZV9pZMKgwqDCoCA9ICJISVAwOMKgwqAgIiwKPj4g
K8KgwqDCoMKgwqDCoMKgIC5vZW1fcmV2aXNpb27CoMKgwqAgPSAwLAo+PiArwqDCoMKgIH0KPj4g
K307Cj4gCj4gQW0gSSByaWdodCBpbiBzYXlpbmcgdGhhdCBhbnkgZnV0dXJlIEJJT1MgZm9yIHRo
ZXNlIGNoaXBzZXRzIHdpbGwgaGF2ZSB0byBjb250aW51ZSB0byBoYXZlIGJ1Z2d5IGZpcm13YXJl
PyBJZiBzbywgaXQncyB1bmZvcnR1bmF0ZS4KCkZvciBiZXR0ZXIgY29tcGF0aWJpbGl0eSwgSSB3
b3VsZCBzYXkgeWVzIDooCgpGb3IgZXhhbXBsZSwgaWYgeW91IGZpeCB0aGF0IGluIHRoZSBmaXJt
d2FyZSwgYW5kIHVwZGF0ZQp0aGUgSU9SVCByZXZpc2lvbiBudW1iZXIsIHRoZW4gaXQgd2lsbCBy
dW4gcHJldHR5IGdvb2QKb24gbmV3IHZlcnNpb24gb2YgdGhlIGtlcm5lbCwgYnV0IG5vdCBvbiBv
bGQgdmVyc2lvbiBvZgprZXJuZWwgd2l0aG91dCB0aGUgYmFja3BvcnRpbmcgb2YgdGhpcyBwYXRj
aC4KClRoYW5rcwpIYW5qdW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
