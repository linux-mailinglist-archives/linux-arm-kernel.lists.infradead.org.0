Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0EB1BF1A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 09:39:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4SE8osVoRDXetyHC9kxOVCd3+yyqLM+FDy8zRKoJYPM=; b=ZxorDe7aY/cBW2jW3kInBKYgB
	3yYq7uSIYJ6sGFf2MRFPArGJbjvCRY6qBlszDO9zTxYWnd0FI77fFQESVsJgpsCpTanhcQHJaaoRd
	gDhvvr+yaoMAkPR+tYnlzyxXbabZSpl3hAXbWKyslHgNfrHsFDZLQKlK6VKxmy1fKi/Ldgz+pdQpH
	pSB76IgKYGaR9w8v6/vf5XNAUz4ujK91KVowm+I4XsOuRDxsr2y5PKz24wLPuVMqlrRWxvOy0JyNp
	l9xOHZlEZ3IJ8v4rmwbw0yBga7ic6HNiswSpOIk1c9bZakBBw+AwB++4m/ab7WZ4zJcMzmbht+FOP
	pCnpsCWdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU3nA-0005bE-Sc; Thu, 30 Apr 2020 07:39:32 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU3n2-0005aZ-9S
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 07:39:26 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03U7cQa1008219; Thu, 30 Apr 2020 09:39:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=hLXLo+GSEynKmmIDnjzImPRmCzlZcqmqhBlXoeTOsZ4=;
 b=hMfFXYiclvNFJ2xCJbg/Vi4jOz2iF1+kT6oNIN2pSyOdvaSWT7znwYymsY/EniTvNxvO
 3hLP2g93w4SDNd6EdwJCezJDPVI5WtByhm44VH5dXgJTHiOa3KytGKtiXg+THNx7lz/4
 jpDq2c+FVQGDgkVwJP9kR6QSi6buf/IuNMIu+M7sDNQ4eev36xN4IE6lb+1CkXgVqBvP
 tIi0BQ019yMuYNrW4v71tmhOX45ZGxDNPuP8Fy1c0540sjLM6IoGa4VhuSMy3xUm9Wzk
 7mqx5Vbf0UI8sW+8ih6Iojtk75DDIL1WQGzbeFx0kFf/iTjG2pvHVimIPHlq9owtkHUy xg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30n4j66vap-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 30 Apr 2020 09:39:16 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8D8EE10002A;
 Thu, 30 Apr 2020 09:39:16 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 75D5F2A4D92;
 Thu, 30 Apr 2020 09:39:16 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.45) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 30 Apr
 2020 09:39:12 +0200
Subject: Re: [PATCH V5 00/20] ARM: dts: stm32: Repair AV96 board
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
References: <20200422104613.96944-1-marex@denx.de>
 <e47b72fc-9591-021d-7abc-14a7166a4845@st.com>
 <9a5d29a4-14ae-1e4f-68fe-21e4f619625d@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <d1e9c84c-48a1-0eef-9da4-94c184ac179c@st.com>
Date: Thu, 30 Apr 2020 09:39:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <9a5d29a4-14ae-1e4f-68fe-21e4f619625d@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-30_02:2020-04-30,
 2020-04-30 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_003924_782797_68206583 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-stm32@st-md-mailman.stormreply.com,
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA0LzI5LzIwIDY6NDAgUE0sIE1hcmVrIFZhc3V0IHdyb3RlOgo+IE9uIDQvMjkvMjAgOTo1
NiBBTSwgQWxleGFuZHJlIFRvcmd1ZSB3cm90ZToKPj4gSGkgTWFyZWsKPj4KPj4gT24gNC8yMi8y
MCAxMjo0NSBQTSwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4+PiBUaGUgQVY5NiBib2FyZCBkZXZpY2Ug
dHJlZSBpcyBjb21wbGV0ZWx5IGJyb2tlbiBhbmQgZG9lcyBub3QgbWF0Y2ggdGhlCj4+PiBoYXJk
d2FyZS4gVGhpcyBzZXJpZXMgZml4ZXMgaXQgdXAuCj4+Pgo+Pj4gTWFyZWsgVmFzdXQgKDIwKToK
Pj4+ICDCoMKgIEFSTTogZHRzOiBzdG0zMjogUmVwYWlyIFBNSUMgY29uZmlndXJhdGlvbiBvbiBB
Vjk2Cj4+PiAgwqDCoCBBUk06IGR0czogc3RtMzI6IFJlcGFpciBQTUlDIGludGVycnVwdCBvbiBB
Vjk2Cj4+PiAgwqDCoCBBUk06IGR0czogc3RtMzI6IEFkZCBhbHRlcm5hdGUgcGlubXV4IGZvciBl
dGhlcm5ldCBSR01JSQo+Pj4gIMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBSZXBhaXIgZXRoZXJuZXQg
b3BlcmF0aW9uIG9uIEFWOTYKPj4+ICDCoMKgIEFSTTogZHRzOiBzdG0zMjogQWRkIG1pc3Npbmcg
ZXRoZXJuZXQgUEhZIHJlc2V0IG9uIEFWOTYKPj4+ICDCoMKgIEFSTTogZHRzOiBzdG0zMjogQWRk
IG1pc3NpbmcgZXRoZXJuZXQgUEhZIHNrZXdzIG9uIEFWOTYKPj4+ICDCoMKgIEFSTTogZHRzOiBz
dG0zMjogQWRkIGFsdGVybmF0ZSBwaW5tdXggZm9yIFNETU1DIHBpbnMKPj4+ICDCoMKgIEFSTTog
ZHRzOiBzdG0zMjogUmVwYWlyIFNETU1DMSBvcGVyYXRpb24gb24gQVY5Ngo+Pj4gIMKgwqAgQVJN
OiBkdHM6IHN0bTMyOiBBZGQgZU1NQyBhdHRhY2hlZCB0byBTRE1NQzIgb24gQVY5Ngo+Pj4gIMKg
wqAgQVJNOiBkdHM6IHN0bTMyOiBBZGQgUVNQSSBOT1Igb24gQVY5Ngo+Pj4gIMKgwqAgQVJNOiBk
dHM6IHN0bTMyOiBBZGQgY29uZmlndXJhdGlvbiBFRVBST00gb24gQVY5Ngo+Pj4gIMKgwqAgQVJN
OiBkdHM6IHN0bTMyOiBFbmFibGUgV2lGaSBvbiBBVjk2Cj4+PiAgwqDCoCBBUk06IGR0czogc3Rt
MzI6IEFkZCBhbHRlcm5hdGUgcGlubXV4IGZvciBVU0FSVDIgcGlucwo+Pj4gIMKgwqAgQVJNOiBk
dHM6IHN0bTMyOiBFbmFibGUgQmx1ZXRvb3RoIG9uIEFWOTYKPj4+ICDCoMKgIEFSTTogZHRzOiBz
dG0zMjogQWRkIGFsdGVybmF0ZSBwaW5tdXggZm9yIExUREMgcGlucwo+Pj4gIMKgwqAgQVJNOiBk
dHM6IHN0bTMyOiBBZGQgYmluZGluZ3MgZm9yIEhETUkgdmlkZW8gb24gQVY5Ngo+Pj4gIMKgwqAg
QVJNOiBkdHM6IHN0bTMyOiBBZGQgYWx0ZXJuYXRlIHBpbm11eCBmb3IgU0FJMiBwaW5zCj4+PiAg
wqDCoCBBUk06IGR0czogc3RtMzI6IEFkZCBiaW5kaW5ncyBmb3IgYXVkaW8gb24gQVY5Ngo+Pj4g
IMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBBZGQgYmluZGluZ3MgZm9yIFVTQiBvbiBBVjk2Cj4+PiAg
wqDCoCBBUk06IGR0czogc3RtMzI6IFJlbmFtZSBMRURzIHRvIG1hdGNoIHNpbGtzY3JlZW4gb24g
QVY5Ngo+Pj4KPj4+ICDCoCBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTUtcGluY3RybC5kdHNp
wqDCoMKgIHwgMjgwICsrKysrKysrKysrKysrKysrCj4+PiAgwqAgYXJjaC9hcm0vYm9vdC9kdHMv
c3RtMzJtcDE1N2EtYXZlbmdlcjk2LmR0cyB8IDMyNCArKysrKysrKysrKysrKysrKystLQo+Pj4g
IMKgIDIgZmlsZXMgY2hhbmdlZCwgNTcyIGluc2VydGlvbnMoKyksIDMyIGRlbGV0aW9ucygtKQo+
Pj4KPj4+IENjOiBBbGV4YW5kcmUgVG9yZ3VlIDxhbGV4YW5kcmUudG9yZ3VlQHN0LmNvbT4KPj4+
IENjOiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8u
b3JnPgo+Pj4gQ2M6IE1heGltZSBDb3F1ZWxpbiA8bWNvcXVlbGluLnN0bTMyQGdtYWlsLmNvbT4K
Pj4+IENjOiBQYXRyaWNlIENob3RhcmQgPHBhdHJpY2UuY2hvdGFyZEBzdC5jb20+Cj4+PiBDYzog
UGF0cmljayBEZWxhdW5heSA8cGF0cmljay5kZWxhdW5heUBzdC5jb20+Cj4+PiBDYzogbGludXgt
c3RtMzJAc3QtbWQtbWFpbG1hbi5zdG9ybXJlcGx5LmNvbQo+Pj4gVG86IGxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4KPj4KPj4gU2VyaWVzIGFwcGxpZWQgb24gc3RtMzIt
bmV4dC4KPiAKPiBUaGFua3MuIEkgc2VudCBvdXQgdGhlIHJlc3QsIHdoaWNoIHNob3VsZCBiZSB2
ZXJ5IG11Y2ggYWxsIHRoZXJlIGlzIGZvcgo+IG5vdyA6KSA+CgpJIGhvcGUgOikuIEkgaGFkIGEg
bG9vayBvbiBpdCBhbmQgaXQgc291bmRzIGdvb2QuIEknbGwgbWVyZ2UgaXQgbmV4dCB3ZWVrLgoK
cmVnYXJkcwphbGV4CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
