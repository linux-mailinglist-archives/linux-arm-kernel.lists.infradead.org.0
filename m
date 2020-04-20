Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC191B0CF0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 15:39:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F9iYMjOg7XC3QK9gEmwTqRF9/M6l/UWKCJjbiP2Cvqk=; b=aYMNYEdvN9ws3UIKxtqa45R2b
	EGsLGgDajl9RN/PLe7fby5L+z5/OXQeoEMuP5LT3IBRxhM/a5H3E3l1f+y97epDxImwcnNRUE1z8+
	IrvddrQgt4cgeNJ6kQYWTJ1kqEi8OuhyygTX8ge4RHuIt7/jeOSxDxJBjv+mtzx2cGxEaR4/PighI
	FX+uouiENZIQV702OHKJKhix5Ji9jM20qzo0U5u/5QFT1Oo6k13V0wpk226kk5VSzwhPdgoaeAWVL
	/f0gDBDZly/JXaXk2RY8ZDCFK8LA+ZvltPjKNQhSni61Iv94moONhtZMbCJn8EOF12ynV0rpGGaJO
	4OsL4ijXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWeD-00057A-Cn; Mon, 20 Apr 2020 13:39:41 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWdT-0004Tw-Or; Mon, 20 Apr 2020 13:38:57 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 9673631221DD9CA2C719;
 Mon, 20 Apr 2020 21:36:40 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.7) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.487.0; Mon, 20 Apr 2020
 21:36:34 +0800
Subject: Re: [PATCH v2] staging: mt7621-pinctrl: Use correct pointer type
 argument for sizeof
To: Greg KH <gregkh@linuxfoundation.org>
References: <20200420124151.4356-1-yanaijie@huawei.com>
 <20200420130715.GA4040736@kroah.com>
From: Jason Yan <yanaijie@huawei.com>
Message-ID: <6df8fd83-9888-1aab-c5a6-87e5b2f942ca@huawei.com>
Date: Mon, 20 Apr 2020 21:36:34 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200420130715.GA4040736@kroah.com>
X-Originating-IP: [10.166.213.7]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_063856_389442_63DA725A 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, nishkadg.linux@gmail.com,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgrU2iAyMDIwLzQvMjAgMjE6MDcsIEdyZWcgS0gg0LS1wDoKPiBPbiBNb24sIEFwciAyMCwgMjAy
MCBhdCAwODo0MTo1MVBNICswODAwLCBKYXNvbiBZYW4gd3JvdGU6Cj4+IEZpeCB0aGUgZm9sbG93
aW5nIGNvY2NpY2hlY2sgd2FybmluZzoKPj4KPj4gZHJpdmVycy9zdGFnaW5nL210NzYyMS1waW5j
dHJsL3BpbmN0cmwtcnQyODgwLmM6MjIzOjE0LTM2OiBXQVJOSU5HOiBVc2UKPj4gY29ycmVjdCBw
b2ludGVyIHR5cGUgYXJndW1lbnQgZm9yIHNpemVvZgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBKYXNv
biBZYW4gPHlhbmFpamllQGh1YXdlaS5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvc3RhZ2luZy9t
dDc2MjEtcGluY3RybC9waW5jdHJsLXJ0Mjg4MC5jIHwgMiArLQo+PiAgIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IFdoYXQgY2hhbmdlZCBmcm9tIHYx
PyAgQWx3YXlzIHB1dCB0aGF0IGJlbG93IHRoZSAtLS0gbGluZS4KPiAKPiBQbGVhc2UgZml4IHVw
IGFuZCBzZW5kIGEgdjMuCj4gCgpPSy4KCj4gdGhhbmtzLAo+IAo+IGdyZWcgay1oCj4gCj4gLgo+
IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
