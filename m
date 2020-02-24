Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3C816AB3B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 17:20:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hwJPtrFd9mLs9+dqDeTVQSM8u3Lk/IesKcFF9Ax2f+8=; b=Hn8TGPwL6efn1KpcIgGR5OaNM
	8ZJqxIDdgnTUmhuT5Fusf+OP/icUhfAqACRAxDOFYEz64dxiLksjmwWxpw1GLGKl565KbzY5K1gB5
	zj2kvse8DxFDDaI4rFJQvtqg2abUST0np/DYOdrYaLJ8zqMWS6hL4eLe6Ws5lS4ogIg1mxVrUunsA
	X974U0taoAWJYO6O5zEKv7S7HTY9ps7kOh0/I7f8pGpS4NSrFnmFwosxeeKXgQ7LoWp6pLcd/kUBi
	sNHb5YCbHmp88FMSgH3A53Ptsj1EXHZ+GT9SzHFtgWmnpNQa4V1VmUXF92ue1LCYEBWNsHPOlNQc+
	C0O2C6Leg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6GTN-00070I-LU; Mon, 24 Feb 2020 16:20:45 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6GTE-0006zc-H3
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 16:20:38 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01OGCfam007873; Mon, 24 Feb 2020 17:20:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=WOrB9zjTn0T7PtrYAJ4aCW7Dq+zTAEPFOtROr7XMOzo=;
 b=IkyaGR4EFtaiGt7dPLgTYVNiT5WVp0abgnGKHqvs5vb7jFPFo9CCfx7MR6GyWcYI94Pp
 vDjJlFTZxwfD7MgR7i+gIVXHFor29lRKAnyWX72QDjXyARdthSLlyUVR7OhnZdcm96nU
 gTLUdZkFVPS5qIqh+Kj+IHMY/TYLweul/f3DeoUbZbvsSXdVHpxWJe+L39GKH8vDCd5E
 jedIymmRP6bmhuo8z2+i2nkgF/8fGKuf3BH/8v2ZEcTYD0xQr72wxqPTBx6HiIdZArCU
 J864vOCt2r1/Ct0L3qydZ6kIHJVk9s2gQc3505UGe7Onar2sg6qbeYX9cf1t0eD9ltPv Lw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yatn5ts7a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 24 Feb 2020 17:20:28 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D7BD410002A;
 Mon, 24 Feb 2020 17:20:23 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C73DE2A7B2C;
 Mon, 24 Feb 2020 17:20:23 +0100 (CET)
Received: from lmecxl0923.lme.st.com (10.75.127.45) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 24 Feb
 2020 17:20:23 +0100
Subject: Re: [PATCH V2 0/9] mmc: mmci: sdmmc: add sdr104 support
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <20200128090636.13689-1-ludovic.barre@st.com>
 <CAPDyKFr+7SvRasPPjFDA2kwG0ERS-Qp3FGbVbRGLrscz5N=L2g@mail.gmail.com>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <86464a0a-d830-465e-b35b-8dd2e766db70@st.com>
Date: Mon, 24 Feb 2020 17:20:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <CAPDyKFr+7SvRasPPjFDA2kwG0ERS-Qp3FGbVbRGLrscz5N=L2g@mail.gmail.com>
Content-Language: fr
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-24_04:2020-02-21,
 2020-02-24 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_082037_047703_2C19A4D5 
X-CRM114-Status: GOOD (  17.49  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aGkgVWxmCgpMZSAyLzE5LzIwIMOgIDExOjI4IEFNLCBVbGYgSGFuc3NvbiBhIMOpY3JpdMKgOgo+
IE9uIFR1ZSwgMjggSmFuIDIwMjAgYXQgMTA6MDYsIEx1ZG92aWMgQmFycmUgPGx1ZG92aWMuYmFy
cmVAc3QuY29tPiB3cm90ZToKPj4KPj4gVG8gc3VwcG9ydCB0aGUgc2RyMTA0IG1vZGUsIHNkbW1j
IHZhcmlhbnQgbmVlZHM6Cj4+IC1IYXJkd2FyZSBkZWxheSBibG9jayBzdXBwb3J0IGZvciBzZG1t
YyB2YXJpYW50Cj4+ICAgd2l0aCB0dW5pbmcgcHJvY2VkdXJlCj4+IC1Wb2x0YWdlIHN3aXRjaCBj
YWxsYmFja3MKPj4gLXNkbW1jIHJldmlzaW9uIDIuMAo+Pgo+PiBWMjoKPj4gLXJlZ3JvdXAgaG9z
dC0+bW1jX29wcyAmIG1tYy0+b3BzIGFzc2lnbm1lbnQKPj4gLWFkZCB0aW1lb3V0IGRlZmluZQo+
PiAtcmVuYW1lIHByZXBfdm9sdF9zd2l0Y2ggdG8gcHJlX3NpZ192b2x0X3N3aXRjaAo+PiAtcmVu
YW1lIHZvbHRfc3dpdGNoIHRvIHBvc3Rfc2lnX3ZvbHRfc3dpdGNoCj4+IC1hZGQgJ3doeScgY29t
bWVudCBmb3IgIm1tYzogbW1jaTogYWRkIHZvbHRfc3dpdGNoIGNhbGxiYWNrcyIKPj4KPj4gTHVk
b3ZpYyBCYXJyZSAoOSk6Cj4+ICAgIG1tYzogbW1jaTogc2RtbWM6IHJlcGxhY2Ugc2dfZG1hX3h4
eCBtYWNyb3MKPj4gICAgbW1jOiBtbWNpOiBzZG1tYzogcmVuYW1lIHNkbW1jX3ByaXYgc3RydWN0
IHRvIHNkbW1jX2lkbWEKPj4gICAgbW1jOiBtbWNpOiBhZGQgYSByZWZlcmVuY2UgYXQgbW1jX2hv
c3Rfb3BzIGluIG1tY2kgc3RydWN0Cj4+ICAgIG1tYzogbW1jaTogYWRkIHByaXZhdGUgcG9pbnRl
ciBmb3IgdmFyaWFudAo+PiAgICBkdC1iaW5kaW5nczogbW1jOiBtbWNpOiBhZGQgZGVsYXkgYmxv
Y2sgYmFzZSByZWdpc3RlciBmb3Igc2RtbWMKPj4gICAgbW1jOiBtbWNpOiBzZG1tYzogYWRkIGV4
ZWN1dGUgdHVuaW5nIHdpdGggZGVsYXkgYmxvY2sKPj4gICAgbW1jOiBtbWNpOiBhZGQgdm9sdF9z
d2l0Y2ggY2FsbGJhY2tzCj4+ICAgIG1tYzogbW1jaTogc2RtbWM6IGFkZCB2b2x0YWdlIHN3aXRj
aCBmdW5jdGlvbnMKPj4gICAgbW1jOiBtbWNpOiBhZGQgc2RtbWMgdmFyaWFudCByZXZpc2lvbiAy
LjAKPj4KPj4gICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9tbWMvbW1jaS50eHQgICAgICAgICAg
fCAgIDIgKwo+PiAgIGRyaXZlcnMvbW1jL2hvc3QvbW1jaS5jICAgICAgICAgICAgICAgICAgICAg
ICB8ICA0MiArKystCj4+ICAgZHJpdmVycy9tbWMvaG9zdC9tbWNpLmggICAgICAgICAgICAgICAg
ICAgICAgIHwgICA4ICsKPj4gICBkcml2ZXJzL21tYy9ob3N0L21tY2lfc3RtMzJfc2RtbWMuYyAg
ICAgICAgICAgfCAyMDQgKysrKysrKysrKysrKysrKystCj4+ICAgNCBmaWxlcyBjaGFuZ2VkLCAy
NDggaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPj4KPj4gLS0KPj4gMi4xNy4xCj4+Cj4g
Cj4gQXBwbGllZCBmb3IgbmV4dCwgdGhhbmtzIQoKdGhhbmtzIFVsZi4KCj4gCj4gSSB0b29rIHRo
ZSBsaWJlcnR5IHRvIGRvIG1pbm9yIGFtZW5kbWVudHMgdG8gc29tZSBvZiB0aGUgY2hhbmdlbG9n
cywKPiBidXQgaW4gcGFydGljdWxhciBJIGhhdmUgY2hhbmdlIHNvbWUgb2YgcHJlZml4ZXMgZm9y
IHRoZSBjb21taXQKPiBtZXNzYWdlIGhlYWRlcnMgaW50byAibW1jOiBtbWNpX3NkbW1jOiIuCgpP
aywgSSB1c2UgdGhpcyBwcmVmaXhlIGZvciBuZXh0IGNvbW1pdC4KCj4gCj4gUGxlYXNlIHRlbGws
IGlmIHRoZXJlIGlzIGFueXRoaW5nIHRoYXQgeW91IHdhbnQgbWUgdG8gdXBkYXRlLgoKSSB0ZXN0
ZWQgeW91ciBuZXh0IGJyYW5jaCwgYW5kIGl0J3Mgb2sgZm9yIG1lLgpzZG1tYyB1cHN0cmVhbSBp
cyBhbG1vc3QgZmluaXNoZWQsIEkganVzdCBzb21lIHJlY2VudCBmaXhlcyB0byBzZW5kLgoKPiAK
PiBLaW5kIHJlZ2FyZHMKPiBVZmZlCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
