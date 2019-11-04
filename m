Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BB6EDC5E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 11:22:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e/wb0g89IYs8POTuc8+aeRhs5mUoti/7NLQooo3HpLY=; b=lUOatJDbUCsXRcY/Pc/3ZXZhj
	vhy/QbjqHyuyVyNmRmX0ub8fgUttGPNYeZZb/RipXtGojCPOFBmAgl1qkNB5fKokn6qoIxOQLe1AQ
	D7K0PdkYFzD3QWW4YblPZa6t2OufQat0BYT+mtjwZW7jbxSdCANfn/RYjy1a7zdU9/oCnEZgKpZRv
	z0ux84vZF72SGz/HBejkpXSYiWkDLj3MDP3S2oPwvR3O33DzVATjK91RBzO1Of3qtsYybDx85/vj0
	7Nn6YiEsojFwmS+PahV6ZUlC5nsLuVnMyypf551WqxBy0zid7cMfPUwquSJXb50buIkFXq4+cfwfY
	TH9k8VsNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRZV6-0000se-M2; Mon, 04 Nov 2019 10:22:20 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRZUz-0000rz-EJ
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 10:22:15 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA49utVG002166; Mon, 4 Nov 2019 11:22:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=eU6eABG4qyDAE1xkwrnneHH0ZTGv0XqpzXiOHf/PvB4=;
 b=j00ZwEYhJTDKLSQNtp6gi01FWnzPPaXXE6fU0NQE/41OO2OdjYgNDhaersyBnVi4duq5
 8i9WfYiqi0JJpFvASDIS95l7yFBoxP/5TnlCAb26vvjeO4E9cNTMxQXYmSwhZEFZ9wsW
 XiTzu9wgffgYBNJjicJsb3LRqyzl4Y0V2LUzP+/SPXOJhpRDEVPlcZBKIFp4cKzNi7cx
 w+rdIvThGJU65NnXoLTTy4ZTMPAwMeB73KdGtC3kk7Z1GqZbARXGhMRYpQENcKdvO4f6
 LLFzdtDvaz/5VDOizprNJOEeQBDGJ1xdQOdoyac5aBLNa6VBZZAZjSeEPmRMGNO0PfH6 NA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2w1054gw6p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 04 Nov 2019 11:22:08 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 283CF10002A;
 Mon,  4 Nov 2019 11:22:08 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1AB272BC5C3;
 Mon,  4 Nov 2019 11:22:08 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 4 Nov
 2019 11:22:07 +0100
Subject: Re: [PATCH 1/1] pinctrl: stmfx: fix valid_mask init sequence
To: Amelie Delaunay <amelie.delaunay@st.com>, Linus Walleij
 <linus.walleij@linaro.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>
References: <20191104100908.10880-1-amelie.delaunay@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <3767f869-7454-c230-5e6c-487b436cb58f@st.com>
Date: Mon, 4 Nov 2019 11:22:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191104100908.10880-1-amelie.delaunay@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG7NODE2.st.com (10.75.127.20) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-11-04_06:2019-11-01,2019-11-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_022213_777858_E2A2C93D 
X-CRM114-Status: GOOD (  20.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW3DqWxpZSwKCk9uIDExLzQvMTkgMTE6MDkgQU0sIEFtZWxpZSBEZWxhdW5heSB3cm90ZToK
PiBXaXRoIHN0bWZ4X3BpbmN0cmxfZ3Bpb19pbml0X3ZhbGlkX21hc2sgY2FsbGJhY2ssIGdwaW9f
dmFsaWRfbWFzayB3YXMgdXNlZAo+IHRvIGluaXRpYWxpemUgZ3Bpb2NoaXAgdmFsaWRfbWFzayBm
b3IgZ3Bpb2xpYi4gQnV0IGdwaW9fdmFsaWRfbWFzayB3YXMgbm90Cj4geWV0IGluaXRpYWxpemVk
LiBncGlvX3ZhbGlkX21hc2sgcmVxdWlyZWQgZ3Bpby1yYW5nZXMgdG8gYmUgcmVnaXN0ZXJlZCwK
PiB0aGlzIGlzIHRoZSBjYXNlIGFmdGVyIGdwaW9jaGlwX2FkZF9kYXRhIGNhbGwuIEJ1dCBpbml0
X3ZhbGlkX21hc2sKPiBjYWxsYmFjayBpcyBhbHNvIGNhbGxlZCB1bmRlciBncGlvY2hpcF9hZGRf
ZGF0YS4gZ3Bpb192YWxpZF9tYXNrCj4gaW5pdGlhbGl6YXRpb24gY2Fubm90IGJlIG1vdmVkIGJl
Zm9yZSBncGlvY2hpcF9hZGRfZGF0YSBiZWNhdXNlCj4gZ3Bpby1yYW5nZXMgYXJlIG5vdCByZWdp
c3RlcmVkLgo+IFNvLCBpdCBpcyBub3QgcG9zc2libGUgdG8gdXNlIGluaXRfdmFsaWRfbWFzayBj
YWxsYmFjay4KPiBUbyBhdm9pZCB0aGlzIGlzc3VlLCBnZXQgcmlkIG9mIHZhbGlkX21hc2sgYW5k
IHJlbHkgb24gcmFuZ2VzLgo+IAo+IEZpeGVzOiBkYTliMTQyYWIyYzUgKCJwaW5jdHJsOiBzdG1m
eDogVXNlIHRoZSBjYWxsYmFjayB0byBwb3B1bGF0ZSB2YWxpZF9tYXNrIikKPiBTaWduZWQtb2Zm
LWJ5OiBBbWVsaWUgRGVsYXVuYXkgPGFtZWxpZS5kZWxhdW5heUBzdC5jb20+CgpBY2tlZC1ieTog
QWxleGFuZHJlIFRPUkdVRSA8YWxleGFuZHJlLnRvcmd1ZUBzdC5jb20+Cgo+IC0tLQo+ICAgZHJp
dmVycy9waW5jdHJsL3BpbmN0cmwtc3RtZnguYyB8IDE0IC0tLS0tLS0tLS0tLS0tCj4gICAxIGZp
bGUgY2hhbmdlZCwgMTQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGlu
Y3RybC9waW5jdHJsLXN0bWZ4LmMgYi9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1zdG1meC5jCj4g
aW5kZXggNTY0NjYwMDI4ZmNjLi5jY2RmMGJiMjE0MTQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9w
aW5jdHJsL3BpbmN0cmwtc3RtZnguYwo+ICsrKyBiL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLXN0
bWZ4LmMKPiBAQCAtNTg1LDE5ICs1ODUsNiBAQCBzdGF0aWMgaW50IHN0bWZ4X3BpbmN0cmxfZ3Bp
b19mdW5jdGlvbl9lbmFibGUoc3RydWN0IHN0bWZ4X3BpbmN0cmwgKnBjdGwpCj4gICAJcmV0dXJu
IHN0bWZ4X2Z1bmN0aW9uX2VuYWJsZShwY3RsLT5zdG1meCwgZnVuYyk7Cj4gICB9Cj4gICAKPiAt
c3RhdGljIGludCBzdG1meF9waW5jdHJsX2dwaW9faW5pdF92YWxpZF9tYXNrKHN0cnVjdCBncGlv
X2NoaXAgKmdjLAo+IC0JCQkJCSAgICAgIHVuc2lnbmVkIGxvbmcgKnZhbGlkX21hc2ssCj4gLQkJ
CQkJICAgICAgdW5zaWduZWQgaW50IG5ncGlvcykKPiAtewo+IC0Jc3RydWN0IHN0bWZ4X3BpbmN0
cmwgKnBjdGwgPSBncGlvY2hpcF9nZXRfZGF0YShnYyk7Cj4gLQl1MzIgbjsKPiAtCj4gLQlmb3Jf
ZWFjaF9jbGVhcl9iaXQobiwgJnBjdGwtPmdwaW9fdmFsaWRfbWFzaywgbmdwaW9zKQo+IC0JCWNs
ZWFyX2JpdChuLCB2YWxpZF9tYXNrKTsKPiAtCj4gLQlyZXR1cm4gMDsKPiAtfQo+IC0KPiAgIHN0
YXRpYyBpbnQgc3RtZnhfcGluY3RybF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQo+ICAgewo+ICAgCXN0cnVjdCBzdG1meCAqc3RtZnggPSBkZXZfZ2V0X2RydmRhdGEocGRldi0+
ZGV2LnBhcmVudCk7Cj4gQEAgLTY2MCw3ICs2NDcsNiBAQCBzdGF0aWMgaW50IHN0bWZ4X3BpbmN0
cmxfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgIAlwY3RsLT5ncGlvX2No
aXAubmdwaW8gPSBwY3RsLT5wY3RsX2Rlc2MubnBpbnM7Cj4gICAJcGN0bC0+Z3Bpb19jaGlwLmNh
bl9zbGVlcCA9IHRydWU7Cj4gICAJcGN0bC0+Z3Bpb19jaGlwLm9mX25vZGUgPSBucDsKPiAtCXBj
dGwtPmdwaW9fY2hpcC5pbml0X3ZhbGlkX21hc2sgPSBzdG1meF9waW5jdHJsX2dwaW9faW5pdF92
YWxpZF9tYXNrOwo+ICAgCj4gICAJcmV0ID0gZGV2bV9ncGlvY2hpcF9hZGRfZGF0YShwY3RsLT5k
ZXYsICZwY3RsLT5ncGlvX2NoaXAsIHBjdGwpOwo+ICAgCWlmIChyZXQpIHsKPiAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
