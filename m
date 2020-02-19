Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5C5164527
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 14:18:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bcdTllPTirVJxQV2W+PdQRBuUD2smytWXoG0y2asYyA=; b=EugQwKjCPNwlVX9EajH/IUGBs
	H3U6BpbNqTGPjFZ5t8ZU8yq4z59SkfcxMZfBogrtv1+d7/1bzqN0SXhwd0/16wuM1JM5O+pQxZ9CK
	0mKg3n+pdVblM8iVGweJqSXoxyOxTZgLONuOEFValluqpUJ6eejBPfTjr7WU6zTSrWX+1O69N1nAg
	w0z8417sZ/b7n+g52XLxQ+5dEhHbD6kJaWWfOtCe7mLpL+Yff/Aq52z/8f7/38WN0/+LZYejSG8Sq
	TIldLUuLvx1VbRxP7KV3XQhNG1MfSiFL3hHKZMESezod7gFURNzv4ixrmBrOI0ikm/2ogfw46UVpY
	tlt+UN5Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4PEr-0000d5-0g; Wed, 19 Feb 2020 13:18:05 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4PEj-0000cH-0O
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 13:17:58 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01JDE98i013103; Wed, 19 Feb 2020 14:17:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=zifsjtq8jgW/VpIDS+qc8/zgoiL+Ci7sDrNfN7sef08=;
 b=te5G1smDpNOhPSlD+LLVY/1ijJNoOY1sRCQFnyTh7je65xUWwx5mkF8EQgsjhVcOn6j5
 U7d87r9UfnJJFcyO3+4aoujeY4Ld0GBabd665tb+afBx7W4fcmGNan/2/shRsrZlQMB8
 nlbe1nKZ34NuV14k1eOXfi1bACWdpWIy/pb5l04fX5xwBXL6R9CFz+Ucjn6tj7VLyfEW
 Pj2zMN9e6nhvnHr6XVamGnuPi3IqdFi7ZTHYFpJIcqa4HM/zK9k9RpTfM7lorirbH8Me
 LVN0lkmJcdaZhFWloStXUvNpze34lvH8JttQEl4kyUOnwGAs9a+RggPqYIkjA68m/G/P 7Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y8ub5k72h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 19 Feb 2020 14:17:41 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2A8BC10002A;
 Wed, 19 Feb 2020 14:17:38 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 169002B8970;
 Wed, 19 Feb 2020 14:17:38 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.47) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 19 Feb
 2020 14:17:36 +0100
Subject: Re: [PATCH v2 1/2] irqchip/stm32: Add irq retrigger support
To: Marc Zyngier <maz@kernel.org>
References: <20200218131218.10789-1-alexandre.torgue@st.com>
 <20200218131218.10789-2-alexandre.torgue@st.com>
 <16d27f75-8157-7a92-ae61-b5b3ab05bdd9@st.com>
 <608d9c84813323ee3839f6ac21aa8f4e@kernel.org>
 <ae69e38a-78f9-ca68-c48c-86275e41b3bb@st.com>
 <10cabf9edf901fb148a1a2a5e2448845@kernel.org>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <716c20a0-bc18-8bb5-b380-14046a384a98@st.com>
Date: Wed, 19 Feb 2020 14:17:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <10cabf9edf901fb148a1a2a5e2448845@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-19_03:2020-02-19,
 2020-02-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_051757_490791_56FAB9C0 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
Cc: marex@denx.de, Jason Cooper <jason@lakedaemon.net>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyLzE5LzIwIDI6MTMgUE0sIE1hcmMgWnluZ2llciB3cm90ZToKPiBPbiAyMDIwLTAyLTE5
IDEzOjA3LCBBbGV4YW5kcmUgVG9yZ3VlIHdyb3RlOgo+PiBPbiAyLzE5LzIwIDEyOjQzIFBNLCBN
YXJjIFp5bmdpZXIgd3JvdGU6Cj4+PiBPbiAyMDIwLTAyLTE5IDExOjMzLCBBbGV4YW5kcmUgVG9y
Z3VlIHdyb3RlOgo+Pj4+IEZpeCBNYXJjIGVtYWlsIGFkZHJlc3MKPj4+Pgo+Pj4+IE9uIDIvMTgv
MjAgMjoxMiBQTSwgQWxleGFuZHJlIFRvcmd1ZSB3cm90ZToKPj4+Pj4gVGhpcyBjb21taXQgaW50
cm9kdWNlcyByZXRyaWdnZXIgc3VwcG9ydCBmb3Igc3RtMzJfZXh0X2ggY2hpcC4KPj4+Pj4gSXQg
Y29uc2lzdHMgdG8gcmlzZSB0aGUgR0lDIGludGVycnVwdCBtYXBwZWQgdG8gYW4gRVhUSSBsaW5l
Lgo+Pj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBBbGV4YW5kcmUgVG9yZ3VlIDxhbGV4YW5kcmUu
dG9yZ3VlQHN0LmNvbT4KPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaXJxY2hpcC9p
cnEtc3RtMzItZXh0aS5jIAo+Pj4+PiBiL2RyaXZlcnMvaXJxY2hpcC9pcnEtc3RtMzItZXh0aS5j
Cj4+Pj4+IGluZGV4IGUwMGYyZmEyN2YwMC4uYzk3MWQxMTVlZGI0IDEwMDY0NAo+Pj4+PiAtLS0g
YS9kcml2ZXJzL2lycWNoaXAvaXJxLXN0bTMyLWV4dGkuYwo+Pj4+PiArKysgYi9kcml2ZXJzL2ly
cWNoaXAvaXJxLXN0bTMyLWV4dGkuYwo+Pj4+PiBAQCAtNjA0LDEyICs2MDQsMjQgQEAgc3RhdGlj
IHZvaWQgc3RtMzJfZXh0aV9oX3N5c2NvcmVfZGVpbml0KHZvaWQpCj4+Pj4+IMKgwqDCoMKgwqAg
dW5yZWdpc3Rlcl9zeXNjb3JlX29wcygmc3RtMzJfZXh0aV9oX3N5c2NvcmVfb3BzKTsKPj4+Pj4g
wqAgfQo+Pj4+PiDCoCArc3RhdGljIGludCBzdG0zMl9leHRpX2hfcmV0cmlnZ2VyKHN0cnVjdCBp
cnFfZGF0YSAqZCkKPj4+Pj4gK3sKPj4+Pj4gK8KgwqDCoCBzdHJ1Y3Qgc3RtMzJfZXh0aV9jaGlw
X2RhdGEgKmNoaXBfZGF0YSA9IAo+Pj4+PiBpcnFfZGF0YV9nZXRfaXJxX2NoaXBfZGF0YShkKTsK
Pj4+Pj4gK8KgwqDCoCBjb25zdCBzdHJ1Y3Qgc3RtMzJfZXh0aV9iYW5rICpzdG0zMl9iYW5rID0g
Y2hpcF9kYXRhLT5yZWdfYmFuazsKPj4+Pj4gK8KgwqDCoCB2b2lkIF9faW9tZW0gKmJhc2UgPSBj
aGlwX2RhdGEtPmhvc3RfZGF0YS0+YmFzZTsKPj4+Pj4gK8KgwqDCoCB1MzIgbWFzayA9IEJJVChk
LT5od2lycSAlIElSUVNfUEVSX0JBTkspOwo+Pj4+PiArCj4+Pj4+ICvCoMKgwqAgd3JpdGVsX3Jl
bGF4ZWQobWFzaywgYmFzZSArIHN0bTMyX2JhbmstPnN3aWVyX29mc3QpOwo+Pj4+PiArCj4+Pj4+
ICvCoMKgwqAgcmV0dXJuIGlycV9jaGlwX3JldHJpZ2dlcl9oaWVyYXJjaHkoZCk7Cj4+Pgo+Pj4g
Q2FsbGluZyBpcnFfY2hpcF9yZXRyaWdnZXJfaGllcmFyY2h5IGhlcmUgaXMgcmVhbGx5IG9kZC4g
SWYgdGhlIHdyaXRlCj4+PiBhYm92ZSBoYXMgdGhlIGVmZmVjdCBvZiBtYWtpbmcgdGhlIGludGVy
cnVwdCBwZW5kaW5nIGFnYWluLCB3aHkgZG8geW91Cj4+PiBuZWVkIHRvIGZvcmNlIHRoZSByZXRy
aWdnZXIgYW55IGZ1cnRoZXI/Cj4+Cj4+IFRvIGJlIGhvbmVzdCwgYXMgd2UgdXNlIGhpZXJhcmNo
aWNhbCBpcnFfY2hpcCwgSSB0aG91Z2h0IGl0IHdhcyB0aGUKPj4gd2F5IHRvIGZvbGxvdyAodG8g
cmV0cmlnZ2VyIHBhcmVudCBpcnFfY2hpcCkuIEl0IG1ha2VzIG1heWJlIG5vIHNlbnMKPj4gaGVy
ZS4KPiAKPiBJbmRlZWQsIGl0IGxvb2tzIHBlcmZlY3RseSBwb2ludGxlc3MuIFdoYXQgaXJxX2No
aXBfcmV0cmlnZ2VyX2hpZXJhcmNoeSgpCj4gZG9lcyBpcyB0byBsb29rIGZvciB0aGUgZmlyc3Qg
cGFyZW50IGlycWNoaXAgdGhhdCBpcyBhYmxlIHRvIHJldHJpZ2dlcgo+IHRoZSBpbnRlcnJ1cHQu
IEd1ZXNzIHdoYXQsIHlvdSd2ZSBqdXN0IGRvbmUgdGhhdCBhbHJlYWR5LiBBbmQgb25jZSB5b3Un
dmUKPiBnZW5lcmF0ZWQgdGhlIGludGVycnVwdCwgeW91IGRvbid0IG5lZWQgdG8gYXNrIHRoZSBv
dGhlciBpcnFjaGlwcyBpbiB0aGUKPiBjaGFpbiB0byBkbyB0aGUgc2FtZSB0aGluZy4KCkkgYWdy
ZWUuIEkgZ29ubmEgcmVtb3ZlIGl0IHYzLgoKVGhhbmtzIGZvciB0aGUgZmVlYmFjay4KQWxleAoK
Pj4gVGhlIG1vc3QgaW1wb3J0YW50IHRvIHJlZ2VuZXJhdGUgZ2ljIGludGVycnVwdCAoYXNzb2Np
YXRlIHRvIHRoZSBleHRpCj4+IGxpbmUpIGlzIHRvIHdyaXRlIGluIFNXSUVSIHJlZ2lzdGVyLgo+
IAo+IFF1aXRlLiBIZW5jZSBteSBxdWVzdGlvbi4KPiAKPiAgwqDCoMKgwqDCoMKgwqAgTS4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
