Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2F9C9BD9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 12:14:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Lllmzgk0rxhdMRMnfBis2lW8sqY21Q7GmM5UXOo5GNQ=; b=mwkNbYrJkVC7op3/Hl/4j0Sto
	WLhGIhMRF0aIr+1T5q2GvmXHBdYQcAeYbNFCF/B+luEL05F7mkvEzHafrle7Wn06CQyML4g3SgzAh
	JW2dmRfdRihpX2Xm7EVT07DCks3mzlUdxaDu7fksd57WcasOY8b/PlZiW/iIXbYNnifSqHoYmfnW/
	CFYu00xqPYfQT0aH0Ue2powxyh7z+w/OIrK3Wz84qdb1aEA2Vp6n/zn9GlcyOdMIS63rSOYgeAcWJ
	izxOWiBT+4rQN1h9kfhk2qWhGOcltDdBuBD65lyNPb3Pahu0hStepfptE8x6v5RZzYGtaUeZ8zhKN
	tHrpcaJRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFy7x-0002DW-M5; Thu, 03 Oct 2019 10:14:29 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFy7l-0002AJ-TR
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 10:14:19 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x93A1XYB005313; Thu, 3 Oct 2019 12:14:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=MsUZ3Un62yxRwQi4yRJRkjzgs7EZoNS0M8FD2ejbYXQ=;
 b=M/vTDOH5TOj+MW946TPa7I7ampt54o6A5s+fwy78xnkOuP9trvchBSwpPum37NKHXQCT
 Z5d1BO7+GjcnZT1HJe7IYddFTVwpQmc/e7hDPu6mRmxh65MbCNBxtb7ecNYejpCSWCnK
 RZp227FcBs3gKM2t7R+cQtT0BJqh8OMf5FVdgKzM2fBMp6Ym2lw6AChn7amXhuGltMwr
 aZJgJhVU5IyrDjd8kpQEC/+kiws2mXSMR0O+KFBt9kHEDrMa3VCKabkVOtbsxiZf2vAY
 195EWJWHufBGFZ5ybqBmivmDRZPj1kCdZxKVScGa4skfGCRlk9wLe5hNug9BPE8lRZ86 wA== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vcem38uhm-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 03 Oct 2019 12:14:11 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id A616C22;
 Thu,  3 Oct 2019 10:14:07 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 05E2F2B5CD1;
 Thu,  3 Oct 2019 12:14:07 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 3 Oct
 2019 12:14:06 +0200
Subject: Re: [PATCH 2/5] net: ethernet: stmmac: fix warning when w=1 option is
 used during build
To: Christophe Roullier <christophe.roullier@st.com>, <robh@kernel.org>,
 <davem@davemloft.net>, <joabreu@synopsys.com>, <mark.rutland@arm.com>,
 <mcoquelin.stm32@gmail.com>, <peppe.cavallaro@st.com>
References: <20190920053817.13754-1-christophe.roullier@st.com>
 <20190920053817.13754-3-christophe.roullier@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <3715b72a-4b7c-32f4-a037-94d2862ad07d@st.com>
Date: Thu, 3 Oct 2019 12:14:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190920053817.13754-3-christophe.roullier@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG4NODE3.st.com (10.75.127.12) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-03_04:2019-10-01,2019-10-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_031418_239789_3DF20DAC 
X-CRM114-Status: GOOD (  18.35  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, andrew@lunn.ch, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiA5LzIwLzE5IDc6MzggQU0sIENocmlzdG9waGUgUm91bGxpZXIgd3JvdGU6Cj4gVGhp
cyBwYXRjaCBmaXggdGhlIGZvbGxvd2luZyB3YXJuaW5nOgo+IAo+IHdhcm5pbmc6IHZhcmlhYmxl
IOKAmHJldOKAmSBzZXQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlXQo+
ICAgIGludCB2YWwsIHJldDsKPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGhlIFJvdWxsaWVy
IDxjaHJpc3RvcGhlLnJvdWxsaWVyQHN0LmNvbT4KPiAtLS0KCkFja2VkLWJ5OiBBbGV4YW5kcmUg
VE9SR1VFIDxhbGV4YW5kcmUudG9yZ3VlQHN0LmNvbT4KCj4gICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9zdG1pY3JvL3N0bW1hYy9kd21hYy1zdG0zMi5jIHwgNiArKystLS0KPiAgIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXN0bTMyLmMgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1zdG0zMi5jCj4gaW5kZXggN2U2NjE5
ODY4Y2MxLi4xNjdhNWU5OTk2MGEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
c3RtaWNyby9zdG1tYWMvZHdtYWMtc3RtMzIuYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L3N0bWljcm8vc3RtbWFjL2R3bWFjLXN0bTMyLmMKPiBAQCAtMTg0LDcgKzE4NCw3IEBAIHN0YXRp
YyBpbnQgc3RtMzJtcDFfc2V0X21vZGUoc3RydWN0IHBsYXRfc3RtbWFjZW5ldF9kYXRhICpwbGF0
X2RhdCkKPiAgIHsKPiAgIAlzdHJ1Y3Qgc3RtMzJfZHdtYWMgKmR3bWFjID0gcGxhdF9kYXQtPmJz
cF9wcml2Owo+ICAgCXUzMiByZWcgPSBkd21hYy0+bW9kZV9yZWc7Cj4gLQlpbnQgdmFsLCByZXQ7
Cj4gKwlpbnQgdmFsOwo+ICAgCj4gICAJc3dpdGNoIChwbGF0X2RhdC0+aW50ZXJmYWNlKSB7Cj4g
ICAJY2FzZSBQSFlfSU5URVJGQUNFX01PREVfTUlJOgo+IEBAIC0yMjAsOCArMjIwLDggQEAgc3Rh
dGljIGludCBzdG0zMm1wMV9zZXRfbW9kZShzdHJ1Y3QgcGxhdF9zdG1tYWNlbmV0X2RhdGEgKnBs
YXRfZGF0KQo+ICAgCX0KPiAgIAo+ICAgCS8qIE5lZWQgdG8gdXBkYXRlIFBNQ0NMUlIgKGNsZWFy
IHJlZ2lzdGVyKSAqLwo+IC0JcmV0ID0gcmVnbWFwX3dyaXRlKGR3bWFjLT5yZWdtYXAsIHJlZyAr
IFNZU0NGR19QTUNDTFJSX09GRlNFVCwKPiAtCQkJICAgZHdtYWMtPm9wcy0+c3lzY2ZnX2V0aF9t
YXNrKTsKPiArCXJlZ21hcF93cml0ZShkd21hYy0+cmVnbWFwLCByZWcgKyBTWVNDRkdfUE1DQ0xS
Ul9PRkZTRVQsCj4gKwkJICAgICBkd21hYy0+b3BzLT5zeXNjZmdfZXRoX21hc2spOwo+ICAgCj4g
ICAJLyogVXBkYXRlIFBNQ1NFVFIgKHNldCByZWdpc3RlcikgKi8KPiAgIAlyZXR1cm4gcmVnbWFw
X3VwZGF0ZV9iaXRzKGR3bWFjLT5yZWdtYXAsIHJlZywKPiAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
