Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD60159227
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 15:44:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y4C7baBFamihxIfMvzZ2Nntq3OBggePLJkRP3z0sqNk=; b=ClnuteS09jyUPyVKZ08VwxkEK
	YySxtcKSlcXEKfrZLrnpPWBKgbBzglQ2Ngdyfa5GjQRvUmLbocYO3SELd4MeeuFvU6PLy3MMXvzJN
	1A4cfCYo81h/dj3v6Gn6Z1m7dFT6SPnRgbmmv1DdMu7hVqoiUmFlrtnO+bHFwjO2JIFZ6eyMByQ79
	PseM2hYVIg+1h1AR2RebMXshbNB5XAX7nbrINWs3UeyEzDKuTTDhg/30KOL2X61fAh4gl0Dl5vNrv
	6bL1B8tSqvXU/xT8U4jVxN+zH+FNPWu75LwK2K4oRr9YpnCSfWqo4+JJuvacTqkgiDvJKXLXAkEfM
	q1tDZF4Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1WmL-0001hk-Ur; Tue, 11 Feb 2020 14:44:45 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1WmB-0001hI-Vy
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 14:44:37 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01BEiRXu032757; Tue, 11 Feb 2020 15:44:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=zMrqEZqOCVnlA3/9d0Rc7Rgo4RLOby/Y5h96V1K6k5k=;
 b=GtWzjgWpZQmghAi169LU0uuY4j7UF/y4Gxjub5zSHljucQ9SciIS1fLFx8NgjERgpEqd
 wD2ePTUv/IS4QpFL9ashW1yofY0nK/2ZRkTrwnh5vpa39jIgJSyf0bP0MsxLWB3JnPwC
 c1nSsQxR/ELJ1NNAZiSh6qB5VMdSGOdzJw/piJ0VJCKihyErlkdRkV9gaiGiZggHXRb3
 JKG1oAfc3Pk3dP48IbxrRU1u7fZArbuL1j1hAOco7JtMhjlz4ZZv7pVn4VOAXp9fdizr
 uotji9CPN2DDHDLLtx4hKF92yFf7FnBzwHslCu1jX0mj3fq8XgNV6R/j+ka/1TtPFeHt PA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y1ufh5xf0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 11 Feb 2020 15:44:28 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6748F100046;
 Tue, 11 Feb 2020 15:44:18 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 535752BD3FC;
 Tue, 11 Feb 2020 15:44:18 +0100 (CET)
Received: from lmecxl0923.lme.st.com (10.75.127.48) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 11 Feb
 2020 15:44:17 +0100
Subject: Re: [PATCH V2 9/9] mmc: mmci: add sdmmc variant revision 2.0
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
References: <20200128090636.13689-1-ludovic.barre@st.com>
 <20200128090636.13689-10-ludovic.barre@st.com>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <853f4b14-a188-f329-34e5-8e88fcafa775@st.com>
Date: Tue, 11 Feb 2020 15:44:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20200128090636.13689-10-ludovic.barre@st.com>
Content-Language: fr
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG7NODE2.st.com (10.75.127.20) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-11_04:2020-02-10,
 2020-02-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_064436_513893_D04D904D 
X-CRM114-Status: GOOD (  17.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

aGkgVWxmCgpMZSAxLzI4LzIwIMOgIDEwOjA2IEFNLCBMdWRvdmljIEJhcnJlIGEgw6ljcml0wqA6
Cj4gVGhpcyBwYXRjaCBhZGRzIGEgc2RtbWMgdmFyaWFudCByZXZpc2lvbiAyLjAuCj4gVGhpcyBy
ZXZpc2lvbiBpcyBiYWNrd2FyZCBjb21wYXRpYmxlIHdpdGggMS4xLCBhbmQgYWRkcyBkbWEKPiBs
aW5rIGxpc3Qgc3VwcG9ydC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBMdWRvdmljIEJhcnJlIDxsdWRv
dmljLmJhcnJlQHN0LmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvbW1jL2hvc3QvbW1jaS5jIHwgMzAg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMzAgaW5z
ZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21tYy9ob3N0L21tY2kuYyBiL2Ry
aXZlcnMvbW1jL2hvc3QvbW1jaS5jCj4gaW5kZXggMjRlNjMwMTgzZWQ0Li5hNzc0YzMyOWMyMTIg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tbWMvaG9zdC9tbWNpLmMKPiArKysgYi9kcml2ZXJzL21t
Yy9ob3N0L21tY2kuYwo+IEBAIC0yNzUsNiArMjc1LDMxIEBAIHN0YXRpYyBzdHJ1Y3QgdmFyaWFu
dF9kYXRhIHZhcmlhbnRfc3RtMzJfc2RtbWMgPSB7Cj4gICAJLmluaXQJCQk9IHNkbW1jX3Zhcmlh
bnRfaW5pdCwKPiAgIH07Cj4gICAKPiArc3RhdGljIHN0cnVjdCB2YXJpYW50X2RhdGEgdmFyaWFu
dF9zdG0zMl9zZG1tY3YyID0gewo+ICsJLmZpZm9zaXplCQk9IDE2ICogNCwKPiArCS5maWZvaGFs
ZnNpemUJCT0gOCAqIDQsCj4gKwkuZl9tYXgJCQk9IDIwODAwMDAwMCwKPiArCS5zdG0zMl9jbGtk
aXYJCT0gdHJ1ZSwKPiArCS5jbWRyZWdfY3BzbV9lbmFibGUJPSBNQ0lfQ1BTTV9TVE0zMl9FTkFC
TEUsCj4gKwkuY21kcmVnX2xyc3BfY3JjCT0gTUNJX0NQU01fU1RNMzJfTFJTUF9DUkMsCj4gKwku
Y21kcmVnX3Nyc3BfY3JjCT0gTUNJX0NQU01fU1RNMzJfU1JTUF9DUkMsCj4gKwkuY21kcmVnX3Ny
c3AJCT0gTUNJX0NQU01fU1RNMzJfU1JTUCwKPiArCS5jbWRyZWdfc3RvcAkJPSBNQ0lfQ1BTTV9T
VE0zMl9DTURTVE9QLAo+ICsJLmRhdGFfY21kX2VuYWJsZQk9IE1DSV9DUFNNX1NUTTMyX0NNRFRS
QU5TLAo+ICsJLmlycV9waW9fbWFzawkJPSBNQ0lfSVJRX1BJT19TVE0zMl9NQVNLLAo+ICsJLmRh
dGFjdHJsX2ZpcnN0CQk9IHRydWUsCj4gKwkuZGF0YWNudF91c2VsZXNzCT0gdHJ1ZSwKPiArCS5k
YXRhbGVuZ3RoX2JpdHMJPSAyNSwKPiArCS5kYXRhY3RybF9ibG9ja3N6CT0gMTQsCj4gKwkuZGF0
YWN0cmxfYW55X2Jsb2Nrc3oJPSB0cnVlLAo+ICsJLnN0bTMyX2lkbWFic2l6ZV9tYXNrCT0gR0VO
TUFTSygxNiwgNSksCj4gKwkuZG1hX2xsaQkJPSB0cnVlLAo+ICsJLmJ1c3lfdGltZW91dAkJPSB0
cnVlLAoKSSBmb3JnZXQgImJ1c3lfZGV0ZWN0CQk9IHRydWUsIiBwcm9wZXJ0eQpJIGFkZCB0aGlz
IGluIG5leHQgcGF0Y2ggc2V0Cgo+ICsJLmJ1c3lfZGV0ZWN0X2ZsYWcJPSBNQ0lfU1RNMzJfQlVT
WUQwLAo+ICsJLmJ1c3lfZGV0ZWN0X21hc2sJPSBNQ0lfU1RNMzJfQlVTWUQwRU5ETUFTSywKPiAr
CS5pbml0CQkJPSBzZG1tY192YXJpYW50X2luaXQsCj4gK307Cj4gKwo+ICAgc3RhdGljIHN0cnVj
dCB2YXJpYW50X2RhdGEgdmFyaWFudF9xY29tID0gewo+ICAgCS5maWZvc2l6ZQkJPSAxNiAqIDQs
Cj4gICAJLmZpZm9oYWxmc2l6ZQkJPSA4ICogNCwKPiBAQCAtMjM0Myw2ICsyMzY4LDExIEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgYW1iYV9pZCBtbWNpX2lkc1tdID0gewo+ICAgCQkubWFzawk9IDB4
ZjBmZmZmZmYsCj4gICAJCS5kYXRhCT0gJnZhcmlhbnRfc3RtMzJfc2RtbWMsCj4gICAJfSwKPiAr
CXsKPiArCQkuaWQgICAgID0gMHgwMDI1MzE4MCwKPiArCQkubWFzawk9IDB4ZjBmZmZmZmYsCj4g
KwkJLmRhdGEJPSAmdmFyaWFudF9zdG0zMl9zZG1tY3YyLAo+ICsJfSwKPiAgIAkvKiBRdWFsY29t
bSB2YXJpYW50cyAqLwo+ICAgCXsKPiAgIAkJLmlkICAgICA9IDB4MDAwNTExODAsCj4gCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
