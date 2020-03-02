Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3F8175C0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 14:48:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aL91I5VyYID+C5uQbyNyMtguqEMqoSnBiI9osjhKcgw=; b=RdO3Obn1h+KI5W9qVOQizF04l
	oRewBZofwlfn2Pgo5IClU4pz2wyo2umzoFSjbnU7evbKLNZv4wka80mnBjyHXgpriKj65rH3Huj8U
	CxygM6E1NOTYh061Z6by3HizV1CJ5resQ0VHyeKYYu4DZTsHESglYFW1RxuiJfR3oMqqE+EeKfV2z
	h8kU3API2RxQsuVi2TINouikJ9sERVgySCtxLTcrxh3cYAxMH1H5uBfDjSqpH8CzqwGUcUYcjw4G2
	LhQdANmCjHbz/gftBM6uZZVbTBkSBLE9G2RZ00Ko6urONJjXyo3CkEG7CWsxfOuJPoivt4nBC9sU9
	2IgAnYQ2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8lQW-0006N4-Q1; Mon, 02 Mar 2020 13:48:08 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8lQP-0006M6-6Q
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 13:48:03 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 022Dhffg032358; Mon, 2 Mar 2020 14:47:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=z0zTg9vDN9RLRb4HKBo0xtz0EHRAqKWxASBqeCbA8Bo=;
 b=oPsC0aUaAjk62s5mmZl/vPqJboFCIgVW5Eh/Z+sAlwS7fCi4o32xbLQ9kGIj76Wdu9Cv
 aqCsNp7aB1fKBcfCjPpv8zcFq9MyvFrwdViJRWNQCW2TY+k+VXMLv75hiBJZpmOMfDwN
 y9KLV8V667aqc8OZ6dHCwv+io+uebkR4lxnH4gMHxGP/IBIdFP50wdaswv3IMx6JtHh+
 PGqqY7un6udMvNQsLMjwos3qrFDHkqz0aVI0a4NgilH2AB+CWf+iqrxJXIWQRBz/iRWr
 fKcHn+iW0B3T32LECaCZVM9oJpHcf5fpXlwfA7iMfgGSY+/2/hQGll1AaK2o98fll4+x jA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yfem0ksh5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 02 Mar 2020 14:47:56 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AC1C610002A;
 Mon,  2 Mar 2020 14:47:51 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 985EC20DE4C;
 Mon,  2 Mar 2020 14:47:51 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 2 Mar
 2020 14:47:51 +0100
Subject: Re: [PATCH V2 6/6] ARM: dts: stm32: Add DH Electronics DHCOM STM32MP1
 SoM and PDK2 board
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
References: <20200119191143.50033-1-marex@denx.de>
 <20200119191143.50033-6-marex@denx.de>
 <1b288811-8ffb-a150-71ef-4c006e6d5740@st.com>
 <1ec643e9-217d-c83d-793f-c05d6c4502bd@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <46e68418-21c0-b82c-d226-4f5ada0ef351@st.com>
Date: Mon, 2 Mar 2020 14:47:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1ec643e9-217d-c83d-793f-c05d6c4502bd@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG8NODE1.st.com (10.75.127.22) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-02_04:2020-03-02,
 2020-03-02 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_054801_720010_9A63C7AF 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyZWsKCk9uIDIvMjMvMjAgMzozNyBQTSwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4gT24gMi8x
MC8yMCA1OjM1IFBNLCBBbGV4YW5kcmUgVG9yZ3VlIHdyb3RlOgo+PiBIaSBNYXJlawo+IAo+IEhp
LAo+IAo+PiBPbiAxLzE5LzIwIDg6MTEgUE0sIE1hcmVrIFZhc3V0IHdyb3RlOgo+Pj4gQWRkIHN1
cHBvcnQgZm9yIERIIEVsZWN0cm9uaWNzIERIQ09NIFNvTSBhbmQgUERLMiByZXYuIDQwMCBjYXJy
aWVyCj4+PiBib2FyZC4gVGhpcyBpcyBhbiBTb00gd2l0aCBTVE0zMk1QMTU3QyBhbmQgYW4gZXZh
bHVhdGlvbiBraXQuIFRoZQo+Pj4gYmFzZWJvYXJkIHByb3ZpZGVzIEV0aGVybmV0LCBVQVJULCBV
U0IsIENBTiBhbmQgb3B0aW9uYWwgZGlzcGxheS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBNYXJl
ayBWYXN1dCA8bWFyZXhAZGVueC5kZT4KPj4+IENjOiBBbGV4YW5kcmUgVG9yZ3VlIDxhbGV4YW5k
cmUudG9yZ3VlQHN0LmNvbT4KPj4+IENjOiBNYXhpbWUgQ29xdWVsaW4gPG1jb3F1ZWxpbi5zdG0z
MkBnbWFpbC5jb20+Cj4+PiBDYzogUGF0cmljZSBDaG90YXJkIDxwYXRyaWNlLmNob3RhcmRAc3Qu
Y29tPgo+Pj4gQ2M6IFBhdHJpY2sgRGVsYXVuYXkgPHBhdHJpY2suZGVsYXVuYXlAc3QuY29tPgo+
Pj4gQ2M6IGxpbnV4LXN0bTMyQHN0LW1kLW1haWxtYW4uc3Rvcm1yZXBseS5jb20KPj4+IFRvOiBs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4+IC0tLQo+Pj4gVjI6IC0gQWRk
IHN0bTMybXAxIGludG8gdGhlIHN1YmplY3QgYW5kIGNvbW1pdCBtZXNzYWdlCj4+PiAgwqDCoMKg
wqAgLSBTb3J0IERUIGFscGhhbnVtZXJpY2FsbHkKPj4+ICDCoMKgwqDCoCAtIE1vdmUgYWxsIHBp
bmNvbnRyb2wgZW50cmllcyBpbnRvIHN0bTMybXAxNS1waW5jdHJsLmR0c2kKPj4+IC0tLQo+Pgo+
PiBUaGFua3MgdG8gYWRkIGEgbmV3IFNUTTMyIGJvYXJkLgo+Pgo+PiBTZXJpZXMgYXBwbGllZCBv
biBzdG0zMi1uZXh0Lgo+IAo+IEhvdyBjb21lIHRoZXNlIGFyZSBub3QgaW4gbmV4dC9tYXN0ZXIg
eWV0LCBpcyB0aGUgYnJhbmNoIG5vdCBiZWluZwo+IG1lcmdlZCBpbnRvIG5leHQgcmVndWxhcmx5
ID8KPiAKCk5vIHRoaXMgYnJhbmNoIGlzIG5vdCBtZXJnZWQgcmVndWxhcmx5IGluIG5leHQvbWFz
dGVyLiBZb3UnbGwgZ2V0IGl0IGluIAo1LjctcmMxLgoKcmVnYXJkcwpBbGV4CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
