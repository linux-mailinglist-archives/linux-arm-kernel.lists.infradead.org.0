Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14350B6070
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 11:33:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZO4VmWN+05dH3tr/t9qGoebZIf4xLAf/BPetRZpf3bs=; b=ffi+27bqdo9UC4O30zH55onmX
	ShI5N1jaAVVnvHSBLGu5QqjLEuZC9fTtaILcCbYLvt0GvcgOia1FxrX979HPdxk3DkCGiLN9UYXCJ
	lSWv8p8kWTuRSzPk4e2B0wDboPtsCfSvkTzQV21bUaKXI9WZOj/tvXpJEhbcWO7R3y5fqXMzk8Xr0
	jmysRa45Wvsfdd/BxjL53U7axw7vENsrNJS3xJYYU51a7Z1De3PyiH1VURUfvHtTjJVOkslX10BJG
	Yw3vF1R+SxbSS22pV40UJxeEqOyOr22TAzI2Mr7F+BxGR7dOfiDWE+lPKlgGvRv0ABgz0Enx1NHnX
	qPkJByyfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAWLD-0006DO-Do; Wed, 18 Sep 2019 09:33:39 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAWL0-0006D0-Cs
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 09:33:28 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8I9LiLC012659; Wed, 18 Sep 2019 11:33:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=w2DW76qUSewnb1/9cIUq9BbK5Drmqq+tMdxCCn/J9V8=;
 b=I1Zy9RDpW/qOpImzeliSW2ZhFKIYE8lxtzo/CF1AWxe4+MUxtIhUp3wyGNcWHCcEuJIv
 9aJCw9kB3R88uCEbYslFaKO/y7xUYyFSggCKFamcvKDhSiTijdJ249Pbb+pBRxumeHgc
 3htuC9vMVKdNB9dMsXDwjm7qFub3LaFR2E8c4hlb4ng4ojoTKCCXb2CK2Buva2JntihK
 yaO6OEPgYskuDPWU8YSTw4G81dYeer/pCoJNwFSqWjJ4XU2GFRa/jG/3y9jhYDtq/cA2
 3dMHqy6mART+qbblqv5hqPxboPsTrna8U0+k49PX5fBvBfX8JOdeD3701d8x79NWS2xn Cg== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx07-00178001.pphosted.com with ESMTP id 2v37kh39fw-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 18 Sep 2019 11:33:17 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 2783951;
 Wed, 18 Sep 2019 09:33:10 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D249C2B06B4;
 Wed, 18 Sep 2019 11:33:09 +0200 (CEST)
Received: from lmecxl0923.lme.st.com (10.75.127.51) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 18 Sep
 2019 11:33:09 +0200
Subject: Re: [PATCH V6 0/3] mmc: mmci: add busy detect for stm32 sdmmc variant
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
References: <20190905122112.29672-1-ludovic.Barre@st.com>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <940e3ce8-1a4f-7e03-dfec-25330051ea5f@st.com>
Date: Wed, 18 Sep 2019 11:33:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20190905122112.29672-1-ludovic.Barre@st.com>
Content-Language: fr
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-18_06:2019-09-17,2019-09-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_023326_909552_75F36773 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 srinivas.kandagatla@linaro.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aGkgVWxmCgpKdXN0IGEgImdlbnRsZW1hbiBwaW5nIiBhYm91dCB0aGlzIHNlcmllcyBhbmQKaHR0
cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvOS80Lzc0NwoKUmVnYXJkcwpMdWRvCgpMZSA5LzUvMTkg
w6AgMjoyMSBQTSwgTHVkb3ZpYyBCYXJyZSBhIMOpY3JpdMKgOgo+IEZyb206IEx1ZG92aWMgQmFy
cmUgPGx1ZG92aWMuYmFycmVAc3QuY29tPgo+IAo+IFRoaXMgcGF0Y2ggc2VyaWVzIGFkZHMgYnVz
eSBkZXRlY3QgZm9yIHN0bTMyIHNkbW1jIHZhcmlhbnQuCj4gU29tZSBhZGFwdGF0aW9ucyBhcmUg
cmVxdWlyZWQ6Cj4gLU9uIHNkbW1jIHRoZSBkYXRhIHRpbWVyIGlzIHN0YXJ0ZWQgb24gZGF0YSB0
cmFuc2ZlcnQKPiBhbmQgYnVzeSBzdGF0ZSwgc28gd2UgbXVzdCBhZGQgaGFyZHdhcmUgYnVzeSB0
aW1lb3V0IHN1cHBvcnQuCj4gLUFkZCBidXN5X2NvbXBsZXRlIGNhbGxiYWNrIGF0IG1tY2lfaG9z
dF9vcHMgdG8gYWxsb3cgdG8gZGVmaW5lCj4gYSBzcGVjaWZpYyBidXN5IGNvbXBsZXRpb24gYnkg
dmFyaWFudC4KPiAtQWRkIHNkbW1jIGJ1c3lfY29tcGxldGUgY2FsbGJhY2suCj4gCj4gVjY6Cj4g
LW1tY2lfc3RhcnRfY29tbWFuZDogc2V0IGRhdGF0aW1lciBvbmx5IG9uIHJzcF9idXN5IGZsYWcK
PiAocmVtb3ZlIGhvc3QtPm1ycS0+ZGF0YSkuCj4gLW1vdmUgbWF4X2J1c3lfdGltZW91dCBpbiBz
ZXRfaW9zIGNhbGxiYWNrLgo+IC10eXBvIGZpeDogZXJyX21zaywgY2xrcyBvbiBvbmUgbGluZXMu
Cj4gCj4gVjU6Cj4gLVJlcGxhY2VzICFjbWQtPmRhdGEgdG8gIWhvc3QtPm1ycS0+ZGF0YSB0byBh
dm9pZCBvdmVyd3JpdGUKPiAgIG9mIGRhdGF0aW1lciByZWdpc3RlciBieSB0aGUgZmlyc3QgY29t
bWFuZCAoY21kMjMsIHdpdGhvdXQgZGF0YSkgb2YKPiAgIFNCQyByZXF1ZXN0Lgo+IAo+IFY0Ogo+
IC1SZS13b3JrIHdpdGggYnVzeV9jb21wbGV0ZSBjYWxsYmFjawo+IC1JbiBzZXJpZXMsIG1vdmUg
Im1tYzogbW1jaTogYWRkIGhhcmR3YXJlIGJ1c3kgdGltZW91dCBmZWF0dXJlIiBpbgo+IGZpcnN0
IHRvIHNpbXBsaWZ5IGJ1c3lfY29tcGxldGUgcHJvdG90eXBlIHdpdGggZXJyX21zayBwYXJhbWV0
ZXIuCj4gCj4gVjM6Cj4gLXJlYmFzZSBvbiBsYXRlc3QgbW1jIG5leHQKPiAtcmVwbGFjZSByZS1y
ZWFkIGJ5IHN0YXR1cyBwYXJhbWV0ZXIuCj4gCj4gVjI6Cj4gLW1tY2lfY21kX2lycSBjbGVhbnVw
IGluIHNlcGFyYXRlIHBhdGNoLgo+IC1zaW1wbGlmeSB0aGUgYnVzeV9kZXRlY3RfZmxhZyBleGNs
dWRlCj4gLXJlcGxhY2Ugc2RtbWMgc3BlY2lmaWMgY29tbWVudCBpbgo+ICJtbWM6IG1tY2k6IGF2
b2lkIGZha2UgYnVzeSBwb2xsaW5nIGluIG1tY2lfaXJxIgo+IHRvIGZvY3VzIG9uIGNvbW1vbiBi
ZWhhdmlvcgo+IAo+IEx1ZG92aWMgQmFycmUgKDMpOgo+ICAgIG1tYzogbW1jaTogYWRkIGhhcmR3
YXJlIGJ1c3kgdGltZW91dCBmZWF0dXJlCj4gICAgbW1jOiBtbWNpOiBhZGQgYnVzeV9jb21wbGV0
ZSBjYWxsYmFjawo+ICAgIG1tYzogbW1jaTogc2RtbWM6IGFkZCBidXN5X2NvbXBsZXRlIGNhbGxi
YWNrCj4gCj4gICBkcml2ZXJzL21tYy9ob3N0L21tY2kuYyAgICAgICAgICAgICB8IDE4MyArKysr
KysrKysrKysrKysrKy0tLS0tLS0tLS0tCj4gICBkcml2ZXJzL21tYy9ob3N0L21tY2kuaCAgICAg
ICAgICAgICB8ICAgNyArLQo+ICAgZHJpdmVycy9tbWMvaG9zdC9tbWNpX3N0bTMyX3NkbW1jLmMg
fCAgMzggKysrKysrCj4gICAzIGZpbGVzIGNoYW5nZWQsIDE1NiBpbnNlcnRpb25zKCspLCA3MiBk
ZWxldGlvbnMoLSkKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
