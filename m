Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8E119AB17
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 13:49:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vv+pivPwXwis5O8HnSwq64iBqh4yNxir6iqbJn+/J9g=; b=H7tOumf6UsnYLpANMY33vy2mO
	1sbO3Bdi0tr6STgT4bviSCurF2+33HF9lynE+pXpW+HkMy0NB2JWyC3A6zslE34J3qQGMnBVL/FMc
	E1e8E97ABZ804XQzn+A4m1vSfVl8XvPY5ErttZb242jDBWk2pl1H211M7o9E/Xd0DutHUSEa6KJK+
	fghNjm1v6+CaPFXzU/Hdw0eU5rvcZRyNslmGlPRQENKXhY2sJcdfbeMTmYg+Qa1P02P+sGK/30D2V
	+iFoaCP6cTpnJPk/J2/S+TYNU35+VRfvATN3Tu015/UKEnjzXvov+dlJEL7Cjhxt23nbNNhwnasy6
	mw69EiuXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJbsO-0003Fq-Ri; Wed, 01 Apr 2020 11:49:44 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJbsH-0003Ec-N0
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 11:49:39 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 031Bkxpm024980; Wed, 1 Apr 2020 13:49:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=aZWau1vWy8nJyZdXOYXLadRU6Z617QmaukbbcrrY4bw=;
 b=HbcPBW7WuXoouDC/2wnpPm8Y81eTsm6s1iByWlGj6xnnmk5Lc3qP1Ks6YYm+HX3DWjKL
 8SUVyfR3dzukZ6/XGe8QEYTBB/ohg2OC076DzDiGpLU44rI8JkL7xMNRTXHUPawYa0Pg
 tXiN6/7mNXr0lZYG+taHXCju5AxCeyN8MMRuiWyVBfPtiOra38jdIjNhEf1CegYiVE62
 tqcbxhEknNg29+WSiZpgKPaZhw1K7fPhO1tmWObpEO3gHmqmh6uiq7MMg1iIIRrd3BNL
 3L6QZdd4BL9o6Y5HAJTFrRcSs6pHXkrEy2DHRMrBpdILEJUrvSOx8liNCkS/ubyiMr/0 cg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 302y53y2cj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 01 Apr 2020 13:49:32 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9A3A2100034;
 Wed,  1 Apr 2020 13:49:31 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8CC152A621B;
 Wed,  1 Apr 2020 13:49:31 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 1 Apr
 2020 13:49:27 +0200
Subject: Re: [PATCH V3 01/22] ARM: dts: stm32: Add alternate pinmux for
 ethernet RGMII
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
References: <20200331175811.205153-1-marex@denx.de>
 <20200331175811.205153-2-marex@denx.de>
 <06ad9a40-3118-7336-056d-b115aef66599@st.com>
 <86a4957a-dddd-08b9-e920-2943548610d1@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <6634a7b7-e786-6840-649f-0c49b16fd450@st.com>
Date: Wed, 1 Apr 2020 13:49:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <86a4957a-dddd-08b9-e920-2943548610d1@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-01_01:2020-03-31,
 2020-03-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_044938_043765_CB869BD7 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Patrick Delaunay <patrick.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA0LzEvMjAgMTowNCBQTSwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4gT24gNC8xLzIwIDExOjUy
IEFNLCBBbGV4YW5kcmUgVG9yZ3VlIHdyb3RlOgo+PiBIaSBNYXJlawo+IAo+IEhpLAo+IAo+IFsu
Li5dCj4gCj4+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTUtcGluY3RybC5kdHNp
Cj4+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTUtcGluY3RybC5kdHNpCj4+PiBA
QCAtMTk2LDYgKzE5Niw1NyBAQCBwaW5zMSB7Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+
PiAgwqDCoMKgwqDCoCB9Owo+Pj4gIMKgICvCoMKgwqAgZXRoZXJuZXQwX3JnbWlpX3BpbnNfYjog
cmdtaWktMSB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgcGluczEgewo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcGlubXV4ID0gPFNUTTMyX1BJTk1VWCgnRycsIDUsIEFGMTEpPiwgLyoKPj4+IEVU
SF9SR01JSV9DTEsxMjUgKi8KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8
U1RNMzJfUElOTVVYKCdHJywgNCwgQUYxMSk+LCAvKiBFVEhfUkdNSUlfR1RYX0NMSyAqLwo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxTVE0zMl9QSU5NVVgoJ0InLCAxMiwg
QUYxMSk+LCAvKiBFVEhfUkdNSUlfVFhEMCAqLwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIDxTVE0zMl9QSU5NVVgoJ0cnLCAxNCwgQUYxMSk+LCAvKiBFVEhfUkdNSUlfVFhE
MSAqLwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxTVE0zMl9QSU5NVVgo
J0MnLCAyLCBBRjExKT4sIC8qIEVUSF9SR01JSV9UWEQyICovCj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgPFNUTTMyX1BJTk1VWCgnRScsIDIsIEFGMTEpPiwgLyogRVRIX1JH
TUlJX1RYRDMgKi8KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8U1RNMzJf
UElOTVVYKCdHJywgMTEsIEFGMTEpPiwgLyogRVRIX1JHTUlJX1RYX0NUTCAqLwo+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxTVE0zMl9QSU5NVVgoJ0MnLCAxLCBBRjExKT47
IC8qIEVUSF9NREMgKi8KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJpYXMtZGlzYWJsZTsK
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRyaXZlLXB1c2gtcHVsbDsKPj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHNsZXctcmF0ZSA9IDwyPjsKPj4+ICvCoMKgwqDCoMKgwqDCoCB9Owo+
Pj4gK8KgwqDCoMKgwqDCoMKgIHBpbnMyIHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBp
bm11eCA9IDxTVE0zMl9QSU5NVVgoJ0EnLCAyLCBBRjExKT47IC8qIEVUSF9NRElPICovCj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBiaWFzLWRpc2FibGU7Cj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBkcml2ZS1wdXNoLXB1bGw7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzbGV3
LXJhdGUgPSA8MD47Cj4+PiArwqDCoMKgwqDCoMKgwqAgfTsKPj4+ICvCoMKgwqDCoMKgwqDCoCBw
aW5zMyB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwaW5tdXggPSA8U1RNMzJfUElOTVVY
KCdDJywgNCwgQUYxMSk+LCAvKiBFVEhfUkdNSUlfUlhEMCAqLwo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIDxTVE0zMl9QSU5NVVgoJ0MnLCA1LCBBRjExKT4sIC8qIEVUSF9S
R01JSV9SWEQxICovCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPFNUTTMy
X1BJTk1VWCgnSCcsIDYsIEFGMTEpPiwgLyogRVRIX1JHTUlJX1JYRDIgKi8KPj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8U1RNMzJfUElOTVVYKCdCJywgMSwgQUYxMSk+LCAv
KiBFVEhfUkdNSUlfUlhEMyAqLwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IDxTVE0zMl9QSU5NVVgoJ0EnLCAxLCBBRjExKT4sIC8qIEVUSF9SR01JSV9SWF9DTEsgKi8KPj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8U1RNMzJfUElOTVVYKCdBJywgNywg
QUYxMSk+OyAvKiBFVEhfUkdNSUlfUlhfQ1RMICovCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBiaWFzLWRpc2FibGU7Cj4+PiArwqDCoMKgwqDCoMKgwqAgfTsKPj4+ICvCoMKgwqAgfTsKPj4+
ICsKPj4+ICvCoMKgwqAgZXRoZXJuZXQwX3JnbWlpX3BpbnNfc2xlZXBfYjogcmdtaWktc2xlZXAt
MSB7Cj4+Cj4+IEkganVzdCBtZXJnZWQgYSBzZXJpZXMgZnJvbSBBaG1hZCB0aGF0IHVuaWZ5IHBp
bnMgZ3JvdXAgbmFtZS4gU28gaXQKPj4gc2hvdWxkIGJlIGV0aGVybmV0MF9yZ21paV9zbGVlcF9w
aW5zX2IuIEFzIGEgbG90IGNoYW5nZSBoYXZlIGJlZW4gZG9uZQo+PiBpbiBwaW5jdHJsIGR0c2kg
ZGlsZXMsIGNhbiB5b3UgcmViYXNlIG9uIHRvcCBvZiBzdG0zMi1uZXQgcGxlYXNlPwo+IAo+IEdy
ZWF0LiBEbyB5b3UgaGF2ZSBhIGxpbmsgdG8gdGhpcyB0cmVlIHdpdGggdGhpcyBicmFuY2ggPwo+
IAoKU29ycnkgSSBtZWFuIHN0bTMyLW5leHQgYnJhbmNoIGhlcmU6IApnaXQ6Ly9naXQua2VybmVs
Lm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYXRvcmd1ZS9zdG0zMi5naXQKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
