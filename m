Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C80C1C736C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 16:56:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6n/i9TfB0mO9eMnObtZp03m3Rv3pie5LOSaEG02kt+Y=; b=ZygojWI3FE2JKELHpGcN4VH3l
	GNAGBeF3NJaD9drVfj6kFkp//4BomcrFesNFCk8wFZVIKlw4cq5pGpJovITrPo/KLgrWhteeoIPlJ
	cycwNe13jztAOXS96h3T3D9KYNxSoE7fgQ3PJXQU+5cAQGoaQHE74YKL3TlbJ6Hdp6GKMILnhGfjJ
	ieWKj89/ah8KBKPT8LNuOubg7qCPfEZno+3g3M4SElG1avAHd9Arq0lURdyzI5Hyg1qWAKXHFSdlq
	Li8MHZSwzZ1DqyribJFuV5tPKAAu3XE/Vw1tEmrV0IlyqKzBheYdfK8pYTZy1W5p46iaemea6cjyV
	MriMEU/Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWLSj-0004ea-EG; Wed, 06 May 2020 14:55:53 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWLST-0004Wy-4H
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 14:55:38 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 046Epgj0002819; Wed, 6 May 2020 16:55:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=IlqKhhUb3TjAiX8MxAisX7NF8L8uHtYK3ys5TzgEwW0=;
 b=dD81mSEGQ3ZA8op5mEIDlj/kRvv3yTdDwod9KIw4AM+I413RbPo/gA6bP9TOtGL2ytLs
 8eK5OA12UFSkAHwmdRKyVRcBTYMENpUWF7d5M9ofbY5JnaetS6ZnTP88oq3zl0oK+2SK
 NqOo0khsQvjX34W6uZMGnk6kl61/UtKyArqsPWh7MMuZlBR4t9w2a3FQHeoO3vT7sD56
 8j8+roZU4ngmuzyvuMlgBf5PT2lRUo7YirubEhxfdfAzzN0u+s8rb72qdIARJrTckNDK
 XNsF7uXJeqyPp1eS9mrpz7nFWikY28eHZJQk4V+9/FaOAGbUPhiu7ym9QurtgLQD/npE Zg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30ryrjeq7c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 06 May 2020 16:55:31 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 32F7310002A;
 Wed,  6 May 2020 16:55:31 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1ADAC2C38A9;
 Wed,  6 May 2020 16:55:31 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.46) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 6 May
 2020 16:55:26 +0200
Subject: Re: [PATCH 01/12] ARM: dts: stm32: Add alternate pinmux for I2C2 pins
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
References: <20200429163743.67854-1-marex@denx.de>
 <13aabff1-d4d0-7afb-6a57-a8136e35c6a4@st.com>
 <1d9cbde1-2be1-f54e-7c65-202f2bc7e0a9@denx.de>
 <b100645c-32ac-325d-5838-0fab2c93df22@st.com>
 <6dc6b79f-2a20-3899-e42f-eabaeb33a829@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <c012b356-c935-3536-a3eb-0683f4339dda@st.com>
Date: Wed, 6 May 2020 16:55:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <6dc6b79f-2a20-3899-e42f-eabaeb33a829@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-05-06_08:2020-05-05,
 2020-05-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_075537_541152_0BA839E2 
X-CRM114-Status: GOOD (  21.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
Cc: Patrick Delaunay <patrick.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA1LzYvMjAgNDozOSBQTSwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4gT24gNS82LzIwIDQ6MjYg
UE0sIEFsZXhhbmRyZSBUb3JndWUgd3JvdGU6Cj4+Cj4+Cj4+Cj4+PiBBbGwgcmlnaHQsIHRoYW5r
cy4KPj4+Cj4+PiBidHcgSSBoYWQgdGhpcyBpbnRlcm5hbCBkaXNjdXNzaW9uIG5vdyBhYm91dCBo
YW5kbGluZyB0aGUgY29tYmluYXRvcmlhbAo+Pj4gZXhwbG9zaW9uIG9mIGJvYXJkIERUcyBoZXJl
LiBJZiB3ZSBzdXBwb3J0IHRoZW0gYWxsLCBieSB0aGUgZW5kIG9mIHRoZQo+Pj4gbGlmZXNwYW4g
b2YgdGhlc2UgZGV2aWNlcywgd2UgZW5kIHVwIHdpdGg6Cj4+Pgo+Pj4gU1RNMzJNUDE1ezEsMyw3
fXthLGMsZCxmfSBTb00gcmV2LiB7MC4uN30wMCBvbiBiYXNlYm9hcmQgcmV2LiB7MC4uN30wMC4K
Pj4+Cj4+PiBUaGVyZSB3b24ndCBiZSBldmVyeSBTb00gYW5kIGJhc2Vib2FyZCByZXZpc2lvbiBj
b21iaW5hdGlvbiBhbGwgcmlnaHQuCj4+PiBCdXQgZXZlbiB0aGUgYW1vdW50IG9mIFNvTSBvcHRp
b25zIGdpdmVzIG1lIDEyIERUcy4gVGhhdCBpcyBub3QgYSBsb3cKPj4+IG51bWJlci4gRG9lcyBT
VCBoYXZlIHNvbWUgcGxhbiB0byBoYW5kbGUgc3VjaCBzaXR1YXRpb24gPwo+Pgo+PiBZZXMgSSBo
YXZlIHRoZSBzYW1lIHBvaW50IGluIG1pbmQuIEhvdyB0byBtYWludGFpbiBhbGwgYm9hcmRzID8g
U2hvdWxkCj4+IHdlIHJlZnVzZSBzb21lIGJvYXJkcyBhbmQgb25seSBrZWVwIG9uZSBhcyBleGFt
cGxlID8KPiAKPiBCdXQgd2hpY2ggb25lcyBkbyB5b3Ugd2FudCB0byBkcm9wPyBUaGUgcGRrMiBp
cyBhIGRldmtpdCAsIHNvIHlvdSBjYW4KPiBwdXQgaW4gYW55IFNvTSBvcHRpb24sIHRoYXQncyB0
aGUgcHJvYmxlbS4KCk9rIGJ1dCB3ZSBjb3VsZCBjaG9pY2UgdG8gYnVpbGQgb25seSBvbmUgKG9y
IGZldykgcG9zc2liaWxpdGllcy4gSSBtZWFuIAptYXliZSBvbmx5IG1wMTU3ID8KCgo+Pj4gSSBj
YW4gaW1hZ2luZSB0aGF0IFUtQm9vdCBjYW4gcGF0Y2ggdGhlIERUIGFuZCBlbmFibGUvZGlzYWJs
ZQo+Pj4gZnVuY3Rpb25hbGl0eSAsIHdoaWNoIGNvdWxkIGhhbmRsZSB0aGUge2EsYyxkLGZ9IG9w
dGlvbnMgYW5kIHJlZHVjZSB0aGUKPj4+IGFtb3VudCBvZiBEVHMuIEl0IGNvdWxkIHBvc3NpYmx5
IGFsc28gaGFuZGxlIHRoZSB7MSwzLDd9IG9wdGlvbnMuCj4+Pgo+Pgo+PiBJdCBpcyBzb21ldGhp
bmcgSSBkaXNjdXNzZWQgd2l0aCBLZXZpbiBIaWxtYW4gYXQgRUxDRSBhbmQgc29tZXRpbWUgd2l0
aAo+PiBSb2Igb24gSUlSYy4gV2UgY291bGQgdXNlIHUtYm9vdCB0byBoYW5kbGUgZGlmZmVyZW5j
ZXMgYmV0d2VlbiBTb0MsIGFuZAo+PiBib2FyZHMuIFRlY2huaWNhbGx5IGl0J3MgcG9zc2libGUg
YnV0IHRoZSBtYWluIGlzc3VlIGRvaW5nIHRoYXQgaXMswqAgeW91Cj4+IHdpbGwgaGlkZSBzb21l
IHVwZGF0ZXMgaW4geW91ciBib290bG9hZGVyIGFuZCB0aGVuIHlvdXIgZHRiIHVzZWQgYnkKPj4g
a2VybmVsIHdpbGwgbm90IHJlZmxlY3QgeW91ciBkdHMgZmlsZS4gSXQgY291bGQgYmUgY29uZnVz
ZWQgZm9yCj4+IGN1c3RvbWVycyBhbmQgdXNlcnMuCj4gCj4gWWVzLgo+IAo+Pj4gQW55IG90aGVy
IGlkZWFzID8KPj4KPj4gV2hhdCBpcyBmb3IgeW91IHRoZSBtYWluIGlzc3VlID8gdGhlIG51bWJl
ciBvZiBmaWxlcyB0byBhZGQgb3IgaG93IHRvCj4+IG1haW50YWluIGFsbCB0aG9zZSBmaWxlcyA/
Cj4gCj4gVGhlIG51bWJlci4gTWFpbnRhaW5pbmcgdGhlbSBpcyBub3QgdGhhdCBtdWNoIG9mIGEg
cHJvYmxlbS4KCkkgYWdyZWUKCj4gCj4+IElmIGl0IGlzIHRoZSBudW1iZXIgb2YgZmlsZXMgdG8g
YWRkLCB3ZSBjYW4gdGhpbmsgYWJvdXQgc2V2ZXJhbCB3YXlzOgo+Pgo+PiAxLUFzIG1lbnRpb25l
ZCBhYm92ZSwgdG8gb25seSBrZWVwIGtpbmQgb2YgcmVmZXJlbmNlIHBsYXRmb3Jtcwo+Pgo+PiAy
LUhhdmUgdmVuZG9yIGRpcmVjdG9yaWVzIGluIGFyY2gvYXJtL2Jvb3QvZHRzIChidXQgaXQncyBh
bm90aGVyIHN0b3J5Cj4+IHRvIG1ha2UgaXQgYWNjZXB0ZWQpCj4gCj4gTWF5YmUgdGhhdCdzIHNv
bWV0aGluZyB3ZSBzaG91bGQgY29uc2lkZXIgZm9yIGFybTMyLCBidXQgdGhhdCdzIGEKPiBkaWZm
ZXJlbnQgZGlzY3Vzc2lvbiBhbHRvZ2V0aGVyLgoKSSBnb25uYSBzZWUgaG93IHRvIHN0YXJ0IGRp
c2N1c3Npb24gb24gdGhhdCAobWF5YmUgdGhhbmtzIHRvIExpbmFybyBhbmQgCmRldmljZSB0cmVl
IGV2b2x1dGlvbikKCgo+PiAzLU9yIG1heWJlIHVzZSBEVEJPIHRvIG92ZXJ3cml0ZSBzb21lIGNv
bmZpZ3VyYXRpb24uCj4+Cj4+IElmIHRoZSBjb25jZXJuIGlzIGFib3V0IGhvdyB0byBtYWludGFp
biwgbWF5YmUgSSdtIHdyb25nIGJ1dCBJIHRoaW5rCj4+IHRoYXQgd2l0aCBhIGdvb2Qgc3BsaXQg
YW5kIGZhY3Rvcml6YXRpb24gd2UgY291bGQgbWluaW1pemUgc3VwcG9ydC4KPj4KPj4gQ3VycmVu
dGx5IEkgb25seSB0aG9zZSB0aGluZ3MgaW4gbWluZCBidXQgbm90aGluZyByZWFsbHkgbWF0dXJl
Lgo+IAo+IEkgaG9wZSB0aGlzIHBhdGNoc2V0IGRvZXMgdGhlIHNwbGl0IHJpZ2h0LCBpdCdzIHRo
ZSBudW1iZXIuCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
