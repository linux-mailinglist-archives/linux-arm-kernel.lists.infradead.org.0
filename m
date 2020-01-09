Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B456C135994
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 13:56:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T8kqvRwzwA0ZZ9efxsMge47vJepdBVIO3t3dlIMdhtQ=; b=JMIdi9HU7sgnOP
	ZPCSLFKYefvyLxwKj9fotKV3vCrnBiI1VQgfV7yxfwtx9K/XkIaysHGd5xbSmkpdJ52/YnbxFjrHS
	A3ToWrThwg1F9CmZpSIfh6bFe3KMxPs1Oe6P3tJNk8hLEe5d9qigqx8Ymt7gynr+dACprZV8YSQHm
	+hHqD33B3V2Op4Seglb7pxNcC2PG81U0u05LhfMU1SsabZiJx5GrUzj6TCXhjvHaDXhTOKKtyVV7V
	BUzcz9+JYv2MG7k0foCKBJ7mUfDE2hDEpaZObAQ3mcMBCOprp62Mjh8x/O4xtiytOmw74T+sgqOjk
	C6CrUN5U64jO1GFE4QVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipXMT-0003yU-Cy; Thu, 09 Jan 2020 12:56:29 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipXMM-0003y5-Co
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 12:56:24 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 009Cr4dT031277; Thu, 9 Jan 2020 13:56:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=2y1+dv3nA3YET9zOXNr+lo/MYiTPIWq79tj8sKOA3F8=;
 b=sbIXe/5jUi27CnIYRMXm6JcfW3/WQkj8DcllHwy+LR+c3b8zV3LVq3LiYZrVJyMPFCj3
 DUhW51atwpcQmQWIaS+64nhhztJehmjuMFsZVDmQKKabEhVq2yVh7N3RU+9G6zLhMwZu
 rv4fUOrpzUSr56B6r4tNuUg5xlttT2mxC38v827WTNAnM8nfVDZRO24jdAB4A61OpPTZ
 RVCd7WhUzPtTlbttM1PbyAD2/KP8xZkfZDkFJKEUj41MzsWi+oKNHcUdaCViYCtFpher
 YHp2ojOTg+176+I/GtlRckbcTBNKG7M+Z83EFG6Uqfv/O+N7fDlDsNg8vdSujmCuexo+ Fw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2xdw8b2dya-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 09 Jan 2020 13:56:16 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id DB47A10002A;
 Thu,  9 Jan 2020 13:56:15 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id CA77F2B3836;
 Thu,  9 Jan 2020 13:56:15 +0100 (CET)
Received: from [10.48.0.71] (10.75.127.44) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 9 Jan
 2020 13:56:15 +0100
Subject: Re: [PATCH v2] iio: adc: stm32-dfsdm: Use dma_request_chan() instead
 dma_request_slave_channel()
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <jic23@kernel.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
References: <20200107114532.6697-1-peter.ujfalusi@ti.com>
 <eade6657-8470-0d70-b3c1-fcdddf891c6c@st.com>
 <4c0b7e3e-cd98-860a-e931-c216f1bc6e7a@ti.com>
 <698d9dec-4486-f70a-b8e0-dfd6b4bb907f@st.com>
 <45195b31-70fa-39c9-e109-eeb33d6a2663@ti.com>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <5328b668-2522-5d8d-83bb-f99bfe3086ed@st.com>
Date: Thu, 9 Jan 2020 13:56:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <45195b31-70fa-39c9-e109-eeb33d6a2663@ti.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-09_02:2020-01-09,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_045622_719570_53AE6D29 
X-CRM114-Status: GOOD (  20.41  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Olivier MOYSAN <olivier.moysan@st.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, vkoul@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMS85LzIwIDEyOjQwIFBNLCBQZXRlciBVamZhbHVzaSB3cm90ZToKPiAKPiAKPiBPbiAwOS8w
MS8yMDIwIDEzLjI5LCBGYWJyaWNlIEdhc25pZXIgd3JvdGU6Cj4+IE9uIDEvOS8yMCAxMTozMiBB
TSwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4+Pgo+Pj4KPj4+IE9uIDA5LzAxLzIwMjAgMTEuMTMs
IEZhYnJpY2UgR2FzbmllciB3cm90ZToKPj4+PiBPbiAxLzcvMjAgMTI6NDUgUE0sIFBldGVyIFVq
ZmFsdXNpIHdyb3RlOgo+Pj4+PiBkbWFfcmVxdWVzdF9zbGF2ZV9jaGFubmVsKCkgaXMgYSB3cmFw
cGVyIG9uIHRvcCBvZiBkbWFfcmVxdWVzdF9jaGFuKCkKPj4+Pj4gZWF0aW5nIHVwIHRoZSBlcnJv
ciBjb2RlLgo+Pj4+Pgo+Pj4+PiBCeSB1c2luZyBkbWFfcmVxdWVzdF9jaGFuKCkgZGlyZWN0bHkg
dGhlIGRyaXZlciBjYW4gc3VwcG9ydCBkZWZlcnJlZAo+Pj4+PiBwcm9iaW5nIGFnYWluc3QgRE1B
Lgo+Pj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBVamZhbHVzaSA8cGV0ZXIudWpmYWx1
c2lAdGkuY29tPgo+Pj4+PiAtLS0KPj4+Pj4gSGksCj4+Pj4+Cj4+Pj4+IENoYW5nZXMgc2luY2Ug
djE6Cj4+Pj4+IC0gRmFsbCBiYWNrIHRvIElSUSBtb2RlIGZvciBBREMgb25seSBpbiBjYXNlIG9m
IEVOT0RFVgo+Pj4+Cj4+Pj4gSGkgUGV0ZXIsCj4+Pj4KPj4+PiBUaGFua3MgZm9yIHRoZSBwYXRj
aCwKPj4+Pgo+Pj4+IFBsZWFzZSBmaW5kIGEgbWlub3IgY29tbWVudCBoZXJlIGFmdGVyLiBBcGFy
dCBmcm9tIHRoYXQsIHlvdSBjYW4gYWRkIG15Ogo+Pj4+Cj4+Pj4gQWNrZWQtYnk6IEZhYnJpY2Ug
R2FzbmllciA8ZmFicmljZS5nYXNuaWVyQHN0LmNvbT4KPj4+Pgo+Pj4+Cj4+Pj4+Cj4+Pj4+IFJl
Z2FyZHMsCj4+Pj4+IFBldGVyCj4+Pj4+Cj4+Pj4+ICBkcml2ZXJzL2lpby9hZGMvc3RtMzItZGZz
ZG0tYWRjLmMgfCAyMSArKysrKysrKysrKysrKysrKy0tLS0KPj4+Pj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxNyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Pj4+Pgo+Pj4+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9paW8vYWRjL3N0bTMyLWRmc2RtLWFkYy5jIGIvZHJpdmVycy9paW8vYWRjL3N0
bTMyLWRmc2RtLWFkYy5jCj4+Pj4+IGluZGV4IGU0OTMyNDJjMjY2ZS4uNzRhMjIxMWJkZmY0IDEw
MDY0NAo+Pj4+PiAtLS0gYS9kcml2ZXJzL2lpby9hZGMvc3RtMzItZGZzZG0tYWRjLmMKPj4+Pj4g
KysrIGIvZHJpdmVycy9paW8vYWRjL3N0bTMyLWRmc2RtLWFkYy5jCj4+Pj4+IEBAIC0xMzgzLDkg
KzEzODMsMTMgQEAgc3RhdGljIGludCBzdG0zMl9kZnNkbV9kbWFfcmVxdWVzdChzdHJ1Y3QgaWlv
X2RldiAqaW5kaW9fZGV2KQo+Pj4+PiAgewo+Pj4+PiAgCXN0cnVjdCBzdG0zMl9kZnNkbV9hZGMg
KmFkYyA9IGlpb19wcml2KGluZGlvX2Rldik7Cj4+Pj4+ICAKPj4+Pj4gLQlhZGMtPmRtYV9jaGFu
ID0gZG1hX3JlcXVlc3Rfc2xhdmVfY2hhbm5lbCgmaW5kaW9fZGV2LT5kZXYsICJyeCIpOwo+Pj4+
PiAtCWlmICghYWRjLT5kbWFfY2hhbikKPj4+Pj4gLQkJcmV0dXJuIC1FSU5WQUw7Cj4+Pj4+ICsJ
YWRjLT5kbWFfY2hhbiA9IGRtYV9yZXF1ZXN0X2NoYW4oJmluZGlvX2Rldi0+ZGV2LCAicngiKTsK
Pj4+Pj4gKwlpZiAoSVNfRVJSKGFkYy0+ZG1hX2NoYW4pKSB7Cj4+Pj4+ICsJCWludCByZXQgPSBQ
VFJfRVJSKGFkYy0+ZG1hX2NoYW4pOwo+Pj4+PiArCj4+Pj4+ICsJCWFkYy0+ZG1hX2NoYW4gPSBO
VUxMOwo+Pj4+PiArCQlyZXR1cm4gcmV0Owo+Pj4+Cj4+Pj4gWW91IG1heSAicmV0dXJuIFBUUl9F
UlIoYWRjLT5kbWFfY2hhbik7IiBkaXJlY3RseSBoZXJlLgo+Pj4KPj4+IEkgZG9uJ3QgbWFrZSBk
ZWNpc2lvbiBoZXJlIG9uIGJlaGFsZiBvZiB0aGUgYWRjIHBhdGggb24gdG8gZ28gZm9yd2FyZCB3
Lwo+Pj4gb3Igdy9vIERNQSBzdXBwb3J0IGFuZCBpZiB3ZSBnbyBhaGVhZCB0aGUgc3RtMzJfZGZz
ZG1fZG1hX3JlbGVhc2UoKQo+Pj4gbmVlZHMgdGhlIGRtYV9jaGFuIHRvIGJlIE5VTEwgaW4gY2Fz
ZSB3ZSBkb24ndCB1c2UgRE1BLgo+Pj4KPj4+IEl0IGlzIG11Y2ggY2xlYW5lciB0byBzZXQgZG1h
X2NoYW4gdG8gTlVMTCBoZXJlIHRoYW4gZG9pbmcgaXQgaW4gb3RoZXIKPj4+IHBhdGhzLgo+Pgo+
PiBIaSBQZXRlciwKPiAKPiBIaSBGYWJyaWNlLAo+IAo+PiBTb3JyeSBJIHdhc24ndCBjbGVhciBl
bm91Z2guIEkgYWdyZWUgd2l0aCB5b3UuIEkgd2FzIHN1Z2dlc3Rpbmcgb25seSwKPj4gdGFsa2lu
ZyBhYm91dCB0aGUgJ3JldCcgdmFyaWFibGUuIEl0IG1heSBiZSByZW1vdmVkIHRvIHNwYXJlIGEg
ZmV3IGxpbmVzCj4+IDotKS4KPj4gCWlmIChJU19FUlIoYWRjLT5kbWFfY2hhbikpIHsKPj4gCQlh
ZGMtPmRtYV9jaGFuID0gTlVMTDsKPj4gCQlyZXR1cm4gUFRSX0VSUihhZGMtPmRtYV9jaGFuKTsK
Pj4gCX0KPj4gSSdtIG9rYXkgYm90aCB3YXlzLgo+IAo+IFBUUl9FUlIoTlVMTCk7IHdpbGwgcmV0
dXJuIDAKPiBJIG5lZWQgdG8gcmV0cmlldmUgdGhlIGFjdHVhbCBlcnJvciBjb2RlIGJlZm9yZSBO
VUxMaW5nIGRtYV9jaGFuLgoKT2ggeWVzLCBzbyBwbGVhc2UgZm9yZ2V0IHRoaXMuClRoYW5rcywK
RmFicmljZQoKPiAKPj4KPj4+Cj4+Pj4KPj4+PiBCZXN0IFJlZ2FyZHMsCj4+Pj4gRmFicmljZQo+
Pj4+Cj4+Pj4+ICsJfQo+Pj4+PiAgCj4+Pj4+ICAJYWRjLT5yeF9idWYgPSBkbWFfYWxsb2NfY29o
ZXJlbnQoYWRjLT5kbWFfY2hhbi0+ZGV2aWNlLT5kZXYsCj4+Pj4+ICAJCQkJCSBERlNETV9ETUFf
QlVGRkVSX1NJWkUsCj4+Pj4+IEBAIC0xNTA5LDcgKzE1MTMsMTYgQEAgc3RhdGljIGludCBzdG0z
Ml9kZnNkbV9hZGNfaW5pdChzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2KQo+Pj4+PiAgCWluaXRf
Y29tcGxldGlvbigmYWRjLT5jb21wbGV0aW9uKTsKPj4+Pj4gIAo+Pj4+PiAgCS8qIE9wdGlvbmFs
bHkgcmVxdWVzdCBETUEgKi8KPj4+Pj4gLQlpZiAoc3RtMzJfZGZzZG1fZG1hX3JlcXVlc3QoaW5k
aW9fZGV2KSkgewo+Pj4+PiArCXJldCA9IHN0bTMyX2Rmc2RtX2RtYV9yZXF1ZXN0KGluZGlvX2Rl
dik7Cj4+Pj4+ICsJaWYgKHJldCkgewo+Pj4+PiArCQlpZiAocmV0ICE9IC1FTk9ERVYpIHsKPj4+
Pj4gKwkJCWlmIChyZXQgIT0gLUVQUk9CRV9ERUZFUikKPj4+Pj4gKwkJCQlkZXZfZXJyKCZpbmRp
b19kZXYtPmRldiwKPj4+Pj4gKwkJCQkJIkRNQSBjaGFubmVsIHJlcXVlc3QgZmFpbGVkIHdpdGgg
JWRcbiIsCj4+Pj4+ICsJCQkJCXJldCk7Cj4+Pj4+ICsJCQlyZXR1cm4gcmV0Owo+Pj4+PiArCQl9
Cj4+Pj4+ICsKPj4+Pj4gIAkJZGV2X2RiZygmaW5kaW9fZGV2LT5kZXYsICJObyBETUEgc3VwcG9y
dFxuIik7Cj4+Pj4+ICAJCXJldHVybiAwOwo+Pj4+PiAgCX0KPj4+Pj4KPj4+Cj4+PiAtIFDDqXRl
cgo+Pj4KPj4+IFRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIs
IDAwMTgwIEhlbHNpbmtpLgo+Pj4gWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290
aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKPj4+Cj4gCj4gLSBQw6l0ZXIKPiAKPiBUZXhhcyBJ
bnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4K
PiBZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBI
ZWxzaW5raQo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
