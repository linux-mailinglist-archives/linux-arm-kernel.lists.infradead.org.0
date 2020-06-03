Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8051EC675
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 03:12:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fD1NFOdWMyV4tcmNigecuXzTBzTyijrcl6cwboJM6So=; b=YyHvQbzBHxg+VT07a22Mat8wd
	Hp51Sf0q3CJV5mLNPMReL7EnG8DGENFh12xgq8ncbNSnolrB/YON/+yH9e7d0NPGia631tuVo9VK8
	4x3PkCAZamH5jdShUx5DsTU3vBw4ctjtvX/KgdEPhkMvAW8n7LCztai37arVvFfiEgL6U35hwyTor
	wMJFLRyWX7OH7lR2xreIVZj0nSb4I+TTE6BoSUYAIXVAg18cMcZXq4qHG9ANTwDsRH+BFs9VFwHFM
	hBFPnA4tpDt634gAY12qL74mVyUKU28pPWN7/mKT8niHTL3oTLxbA9U+zf3Dnsb1VG6psLNkIXYZZ
	MBMApk46A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgHxc-0007xn-1H; Wed, 03 Jun 2020 01:12:52 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgHxW-0007wn-85
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 01:12:47 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 71F915A433E1043B5189;
 Wed,  3 Jun 2020 09:12:31 +0800 (CST)
Received: from [127.0.0.1] (10.166.215.204) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.487.0;
 Wed, 3 Jun 2020 09:12:22 +0800
Subject: Re: [PATCH] pinctrl: sirf: Add missing put_device() call in
 sirfsoc_gpio_probe()
To: Markus Elfring <Markus.Elfring@web.de>,
 <linux-arm-kernel@lists.infradead.org>, <linux-gpio@vger.kernel.org>
References: <01abac73-2107-daf2-d7bd-bef9d73d554a@web.de>
From: "yukuai (C)" <yukuai3@huawei.com>
Message-ID: <0c3372cf-342f-81c7-fab8-4a68e59ebbd2@huawei.com>
Date: Wed, 3 Jun 2020 09:12:21 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <01abac73-2107-daf2-d7bd-bef9d73d554a@web.de>
X-Originating-IP: [10.166.215.204]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_181246_442109_CB0A131B 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Barry Song <baohua@kernel.org>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Yi Zhang <yi.zhang@huawei.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC82LzMgMjo1NiwgTWFya3VzIEVsZnJpbmcgd3JvdGU6Cj4+IGluIHNpcmZzb2NfZ3Bp
b19wcm9iZSgpLCBpZiBvZl9maW5kX2RldmljZV9ieV9ub2RlKCkgc3VjY2VlZCwKPj4gcHV0X2Rl
dmljZSgpIGlzIG1pc3NpbmcgaW4gdGhlIGVycm9yIGhhbmRsaW5nIHBhdGNoLgo+IAo+IEhvdyBk
byB5b3UgdGhpbmsgYWJvdXQgYW5vdGhlciB3b3JkaW5nIHZhcmlhbnQ/Cj4gCj4gICAgIEEgY29j
Y2ljaGVjayBydW4gcHJvdmlkZWQgaW5mb3JtYXRpb24gbGlrZSB0aGUgZm9sbG93aW5nLgo+IAo+
ICAgICBkcml2ZXJzL3BpbmN0cmwvc2lyZi9waW5jdHJsLXNpcmYuYzo3OTg6Mi04OiBFUlJPUjog
bWlzc2luZyBwdXRfZGV2aWNlOwo+ICAgICBjYWxsIG9mX2ZpbmRfZGV2aWNlX2J5X25vZGUgb24g
bGluZSA3OTIsIGJ1dCB3aXRob3V0IGEgY29ycmVzcG9uZGluZwo+ICAgICBvYmplY3QgcmVsZWFz
ZSB3aXRoaW4gdGhpcyBmdW5jdGlvbi4KPiAKPiAgICAgR2VuZXJhdGVkIGJ5OiBzY3JpcHRzL2Nv
Y2NpbmVsbGUvZnJlZS9wdXRfZGV2aWNlLmNvY2NpCj4gCj4gICAgIFRodXMgYWRkIGEganVtcCB0
YXJnZXQgdG8gZml4IHRoZSBleGNlcHRpb24gaGFuZGxpbmcgZm9yIHRoaXMKPiAgICAgZnVuY3Rp
b24gaW1wbGVtZW50YXRpb24uCj4gCj4gCj4gV291bGQgeW91IGxpa2UgdG8gYWRkIHRoZSB0YWcg
4oCcRml4ZXPigJ0gdG8gdGhlIGNvbW1pdCBtZXNzYWdlPwo+IApXaWxsIGRvLCB0aGFua3MgZm9y
IHlvdXIgYWR2aXNlIQoKWXUgS3VhaQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
