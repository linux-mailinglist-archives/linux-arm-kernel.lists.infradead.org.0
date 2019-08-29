Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A71B2A1411
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 10:49:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=57CKGQrVxDcOhI5n9lNEHe8zUuwbxqMIbBE1Yz24fNY=; b=QRQBy1H4VzLgaJVRUtazLbD+i
	8j7JXm3/xZyWGtYQJDK0+MaA1LHrd6THUqyOHE7kMyd77vgFqh9FNRCLEr+Py4qduqYDz6MfmG7TY
	h0uDJ32B7blp7iIZct4T8FnpoL2IZt6VkwOfAH7aMl/Y3YWpPkPopOuA+MQQ7P6ql1V3I32fHpJ6A
	qgXGwkd3Q5iTzWblNOTk9trOWziFUdNpddVqTt9sjFEJCgk1xSGlzLRyxiPTlG6sFP0saZjGz5Fzk
	ypQ3PXnraFeAyrOnNvhsWJIxlla9t/zDMvM6ZVLEYuoxXgILzApXjgNdG/xy5e1us0wsfr5Fnke7G
	NyQBVWT8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3G7W-0004z7-4I; Thu, 29 Aug 2019 08:49:30 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3G7J-0004yg-PT
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 08:49:19 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7T8kxr5031268; Thu, 29 Aug 2019 10:48:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : references
 : from : message-id : date : mime-version : in-reply-to : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=NlGM32ocdpPWCJcOtDVLjpgH+SvU7mlXgBdhDT7M+X8=;
 b=u0db09ugjsVglBswXP+mVOWomLQtCDERzWqyS+4Tpnl9MaCsmoTNFiPCKzdfA50T6D7C
 C+GbQFCz9y6h5qxvB99GS73qVvw+KBZ69vEVNNDHZmhmS15jbzNJVBCyDo2rYNVPA0M7
 AyM0nNRswqEa8rgxhWc9dSev0UQYkJERN5IjBULZUiyCR/eN9O5v/jIbbg2kSa8HokzD
 rtGaXJ45MtbkV2OIbOKlJc3uFrOvxL1SpY0kxAVa5WkVxmObe6Qqx27tr3PO4f2e0oac
 pDQVtheQDemuJ/HUlrZ3smKV1zedt2eG+UZXZqQCz4eKkIaj21L5ZvS8MsZ+wsLUnvfD 2g== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx07-00178001.pphosted.com with ESMTP id 2unujk470g-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 29 Aug 2019 10:48:55 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 8F4B04D;
 Thu, 29 Aug 2019 08:48:47 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E22742AD3F3;
 Thu, 29 Aug 2019 10:48:46 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.47) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 29 Aug
 2019 10:48:46 +0200
Subject: Re: [PATCH v3 5/5] ARM: dts: stm32: add ddrperfm on stm32mp157c
To: Gerald BAEZA <gerald.baeza@st.com>, "will@kernel.org" <will@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mcoquelin.stm32@gmail.com"
 <mcoquelin.stm32@gmail.com>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>, "olof@lixom.net"
 <olof@lixom.net>, "arnd@arndb.de" <arnd@arndb.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-doc@vger.kernel.org"
 <linux-doc@vger.kernel.org>
References: <1566918464-23927-1-git-send-email-gerald.baeza@st.com>
 <1566918464-23927-6-git-send-email-gerald.baeza@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <8e3170a3-c814-d06e-f1f9-6d4e6a4bed71@st.com>
Date: Thu, 29 Aug 2019 10:48:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1566918464-23927-6-git-send-email-gerald.baeza@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-29_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_014918_289228_601728D0 
X-CRM114-Status: GOOD (  16.61  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR2VyYWxkCgpPbiA4LzI3LzE5IDU6MDggUE0sIEdlcmFsZCBCQUVaQSB3cm90ZToKPiBUaGUg
RERSUEVSRk0gaXMgdGhlIEREUiBQZXJmb3JtYW5jZSBNb25pdG9yIGVtYmVkZGVkCj4gaW4gU1RN
MzJNUDEgU09DLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEdlcmFsZCBCYWV6YSA8Z2VyYWxkLmJhZXph
QHN0LmNvbT4KPiAtLS0KPiAgwqBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy5kdHNpIHwg
OCArKysrKysrKwo+ICDCoDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPiAKPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2MuZHRzaSAKPiBiL2FyY2gvYXJt
L2Jvb3QvZHRzL3N0bTMybXAxNTdjLmR0c2kKPiBpbmRleCAwYzRlNmViLi42ZWE2OTMzIDEwMDY0
NAo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdjLmR0c2kKPiArKysgYi9hcmNo
L2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy5kdHNpCj4gQEAgLTEzNzgsNiArMTM3OCwxNCBAQAo+
ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPiAg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPiAKPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBkZHJwZXJmbTogcGVyZkA1YTAwNzAwMCB7Cj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAic3Qsc3RtMzItZGRy
LXBtdSI7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJl
ZyA9IDwweDVhMDA3MDAwIDB4NDAwPjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgY2xvY2tzID0gPCZyY2MgRERSUEVSRk0+Owo+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXNldHMgPSA8JnJjYyBERFJQRVJGTV9S
PjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RhdHVz
ID0gIm9rYXkiOwoKTm8gbmVlZCB0byBhZGQgInN0YXR1cyA9ICJva2F5IiIgaGVyZS4KCnJlZ2Fy
ZHMKQWxleAoKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+ICsKPiAgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdXNhcnQxOiBzZXJpYWxANWMwMDAwMDAgewo+ICDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJs
ZSA9ICJzdCxzdG0zMmg3LXVhcnQiOwo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4NWMwMDAwMDAgMHg0MDA+Owo+IC0tIAo+IDIuNy40
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
