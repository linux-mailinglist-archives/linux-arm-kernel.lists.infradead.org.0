Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 700351357F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 12:29:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RPga6dFp+W4lZt7LUbOA6KyK5GWhU46AEzwbUDHfCjA=; b=jljKr5xAuX+Oze
	E+Yos3GHo0KcTO2/F/yoxyngV69M0lBkl0wPZ2NAiOx34Q9dgJWYFYeXUfKXQvQBOfMvOsejStqyQ
	quO9nm4tXTABeTKIxFd3bmgDaJvWLCqw5sSRXYiZconh+SZ2E0pQ/wNi//zf86/mnwZ6soc2H4jk4
	wuJZ7ka7swFdvRRdZcON/iMqBrocGXchbCTV1lJ2i3esNoUH0K/dWOISTQci4V4gAKUPTWvCccN+J
	MgDZVz1gjzqQ8Y+SBQ+z6Yddp77kYqjUyI1VUlAmMtBbSBPMNDnVN46U1R8V6Qm9PtvEkQAyxwAgN
	RhOCI+92/fFNa3mEWxqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipW04-0005hq-Rc; Thu, 09 Jan 2020 11:29:16 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipVzw-0005gt-V5
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 11:29:10 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 009BRq95008261; Thu, 9 Jan 2020 12:29:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=AxZf/fSBlfXNNSHtuKJsnMXKc0gcBZunFQ/GUTcU0Ew=;
 b=ep1riYVkRMeQ3qB2A0qZ8bop9cK6cH8vvv7E1zMY9T6YA3Hn3JfBAxrJSpJLH3tGHwPL
 fQFRaln2+8YEOlYL+jXAdPhJcm/Swamw5RlBEwjkNupNnRR0CC//xVqz8xUdOxKxnC+9
 /09w8DgaLVyqnle3tOVjPJn5FdFgyYwChDCE4YIP2YII9K1pEI5ZC1a8pOnK9RixVRYp
 PtF2MRdD2/MVzuTC0OEctrc0HLYkkIA05mg4IH7wNzpqUXeVQjrVMEuVfCmwbc3u46gf
 0JX7j0jOlNvNofm7Vur4V+MWzFqkGDARt73RIbbetII6NQZ/W5SGgPOv8u3ADPsJvFJz Ow== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakm5sb53-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 09 Jan 2020 12:29:04 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id F1AFD10002A;
 Thu,  9 Jan 2020 12:29:02 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id DEE692A4D79;
 Thu,  9 Jan 2020 12:29:02 +0100 (CET)
Received: from [10.48.0.71] (10.75.127.44) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 9 Jan
 2020 12:29:02 +0100
Subject: Re: [PATCH v2] iio: adc: stm32-dfsdm: Use dma_request_chan() instead
 dma_request_slave_channel()
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <jic23@kernel.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
References: <20200107114532.6697-1-peter.ujfalusi@ti.com>
 <eade6657-8470-0d70-b3c1-fcdddf891c6c@st.com>
 <4c0b7e3e-cd98-860a-e931-c216f1bc6e7a@ti.com>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <698d9dec-4486-f70a-b8e0-dfd6b4bb907f@st.com>
Date: Thu, 9 Jan 2020 12:29:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <4c0b7e3e-cd98-860a-e931-c216f1bc6e7a@ti.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-09_02:2020-01-09,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_032909_451759_A59C0256 
X-CRM114-Status: GOOD (  20.66  )
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

T24gMS85LzIwIDExOjMyIEFNLCBQZXRlciBVamZhbHVzaSB3cm90ZToKPiAKPiAKPiBPbiAwOS8w
MS8yMDIwIDExLjEzLCBGYWJyaWNlIEdhc25pZXIgd3JvdGU6Cj4+IE9uIDEvNy8yMCAxMjo0NSBQ
TSwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4+PiBkbWFfcmVxdWVzdF9zbGF2ZV9jaGFubmVsKCkg
aXMgYSB3cmFwcGVyIG9uIHRvcCBvZiBkbWFfcmVxdWVzdF9jaGFuKCkKPj4+IGVhdGluZyB1cCB0
aGUgZXJyb3IgY29kZS4KPj4+Cj4+PiBCeSB1c2luZyBkbWFfcmVxdWVzdF9jaGFuKCkgZGlyZWN0
bHkgdGhlIGRyaXZlciBjYW4gc3VwcG9ydCBkZWZlcnJlZAo+Pj4gcHJvYmluZyBhZ2FpbnN0IERN
QS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBVamZhbHVzaSA8cGV0ZXIudWpmYWx1c2lA
dGkuY29tPgo+Pj4gLS0tCj4+PiBIaSwKPj4+Cj4+PiBDaGFuZ2VzIHNpbmNlIHYxOgo+Pj4gLSBG
YWxsIGJhY2sgdG8gSVJRIG1vZGUgZm9yIEFEQyBvbmx5IGluIGNhc2Ugb2YgRU5PREVWCj4+Cj4+
IEhpIFBldGVyLAo+Pgo+PiBUaGFua3MgZm9yIHRoZSBwYXRjaCwKPj4KPj4gUGxlYXNlIGZpbmQg
YSBtaW5vciBjb21tZW50IGhlcmUgYWZ0ZXIuIEFwYXJ0IGZyb20gdGhhdCwgeW91IGNhbiBhZGQg
bXk6Cj4+Cj4+IEFja2VkLWJ5OiBGYWJyaWNlIEdhc25pZXIgPGZhYnJpY2UuZ2FzbmllckBzdC5j
b20+Cj4+Cj4+Cj4+Pgo+Pj4gUmVnYXJkcywKPj4+IFBldGVyCj4+Pgo+Pj4gIGRyaXZlcnMvaWlv
L2FkYy9zdG0zMi1kZnNkbS1hZGMuYyB8IDIxICsrKysrKysrKysrKysrKysrLS0tLQo+Pj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2lpby9hZGMvc3RtMzItZGZzZG0tYWRjLmMgYi9kcml2ZXJzL2lp
by9hZGMvc3RtMzItZGZzZG0tYWRjLmMKPj4+IGluZGV4IGU0OTMyNDJjMjY2ZS4uNzRhMjIxMWJk
ZmY0IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9paW8vYWRjL3N0bTMyLWRmc2RtLWFkYy5jCj4+
PiArKysgYi9kcml2ZXJzL2lpby9hZGMvc3RtMzItZGZzZG0tYWRjLmMKPj4+IEBAIC0xMzgzLDkg
KzEzODMsMTMgQEAgc3RhdGljIGludCBzdG0zMl9kZnNkbV9kbWFfcmVxdWVzdChzdHJ1Y3QgaWlv
X2RldiAqaW5kaW9fZGV2KQo+Pj4gIHsKPj4+ICAJc3RydWN0IHN0bTMyX2Rmc2RtX2FkYyAqYWRj
ID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsKPj4+ICAKPj4+IC0JYWRjLT5kbWFfY2hhbiA9IGRtYV9y
ZXF1ZXN0X3NsYXZlX2NoYW5uZWwoJmluZGlvX2Rldi0+ZGV2LCAicngiKTsKPj4+IC0JaWYgKCFh
ZGMtPmRtYV9jaGFuKQo+Pj4gLQkJcmV0dXJuIC1FSU5WQUw7Cj4+PiArCWFkYy0+ZG1hX2NoYW4g
PSBkbWFfcmVxdWVzdF9jaGFuKCZpbmRpb19kZXYtPmRldiwgInJ4Iik7Cj4+PiArCWlmIChJU19F
UlIoYWRjLT5kbWFfY2hhbikpIHsKPj4+ICsJCWludCByZXQgPSBQVFJfRVJSKGFkYy0+ZG1hX2No
YW4pOwo+Pj4gKwo+Pj4gKwkJYWRjLT5kbWFfY2hhbiA9IE5VTEw7Cj4+PiArCQlyZXR1cm4gcmV0
Owo+Pgo+PiBZb3UgbWF5ICJyZXR1cm4gUFRSX0VSUihhZGMtPmRtYV9jaGFuKTsiIGRpcmVjdGx5
IGhlcmUuCj4gCj4gSSBkb24ndCBtYWtlIGRlY2lzaW9uIGhlcmUgb24gYmVoYWxmIG9mIHRoZSBh
ZGMgcGF0aCBvbiB0byBnbyBmb3J3YXJkIHcvCj4gb3Igdy9vIERNQSBzdXBwb3J0IGFuZCBpZiB3
ZSBnbyBhaGVhZCB0aGUgc3RtMzJfZGZzZG1fZG1hX3JlbGVhc2UoKQo+IG5lZWRzIHRoZSBkbWFf
Y2hhbiB0byBiZSBOVUxMIGluIGNhc2Ugd2UgZG9uJ3QgdXNlIERNQS4KPiAKPiBJdCBpcyBtdWNo
IGNsZWFuZXIgdG8gc2V0IGRtYV9jaGFuIHRvIE5VTEwgaGVyZSB0aGFuIGRvaW5nIGl0IGluIG90
aGVyCj4gcGF0aHMuCgpIaSBQZXRlciwKClNvcnJ5IEkgd2Fzbid0IGNsZWFyIGVub3VnaC4gSSBh
Z3JlZSB3aXRoIHlvdS4gSSB3YXMgc3VnZ2VzdGluZyBvbmx5LAp0YWxraW5nIGFib3V0IHRoZSAn
cmV0JyB2YXJpYWJsZS4gSXQgbWF5IGJlIHJlbW92ZWQgdG8gc3BhcmUgYSBmZXcgbGluZXMKOi0p
LgoJaWYgKElTX0VSUihhZGMtPmRtYV9jaGFuKSkgewoJCWFkYy0+ZG1hX2NoYW4gPSBOVUxMOwoJ
CXJldHVybiBQVFJfRVJSKGFkYy0+ZG1hX2NoYW4pOwoJfQpJJ20gb2theSBib3RoIHdheXMuCgo+
IAo+Pgo+PiBCZXN0IFJlZ2FyZHMsCj4+IEZhYnJpY2UKPj4KPj4+ICsJfQo+Pj4gIAo+Pj4gIAlh
ZGMtPnJ4X2J1ZiA9IGRtYV9hbGxvY19jb2hlcmVudChhZGMtPmRtYV9jaGFuLT5kZXZpY2UtPmRl
diwKPj4+ICAJCQkJCSBERlNETV9ETUFfQlVGRkVSX1NJWkUsCj4+PiBAQCAtMTUwOSw3ICsxNTEz
LDE2IEBAIHN0YXRpYyBpbnQgc3RtMzJfZGZzZG1fYWRjX2luaXQoc3RydWN0IGlpb19kZXYgKmlu
ZGlvX2RldikKPj4+ICAJaW5pdF9jb21wbGV0aW9uKCZhZGMtPmNvbXBsZXRpb24pOwo+Pj4gIAo+
Pj4gIAkvKiBPcHRpb25hbGx5IHJlcXVlc3QgRE1BICovCj4+PiAtCWlmIChzdG0zMl9kZnNkbV9k
bWFfcmVxdWVzdChpbmRpb19kZXYpKSB7Cj4+PiArCXJldCA9IHN0bTMyX2Rmc2RtX2RtYV9yZXF1
ZXN0KGluZGlvX2Rldik7Cj4+PiArCWlmIChyZXQpIHsKPj4+ICsJCWlmIChyZXQgIT0gLUVOT0RF
Vikgewo+Pj4gKwkJCWlmIChyZXQgIT0gLUVQUk9CRV9ERUZFUikKPj4+ICsJCQkJZGV2X2Vycigm
aW5kaW9fZGV2LT5kZXYsCj4+PiArCQkJCQkiRE1BIGNoYW5uZWwgcmVxdWVzdCBmYWlsZWQgd2l0
aCAlZFxuIiwKPj4+ICsJCQkJCXJldCk7Cj4+PiArCQkJcmV0dXJuIHJldDsKPj4+ICsJCX0KPj4+
ICsKPj4+ICAJCWRldl9kYmcoJmluZGlvX2Rldi0+ZGV2LCAiTm8gRE1BIHN1cHBvcnRcbiIpOwo+
Pj4gIAkJcmV0dXJuIDA7Cj4+PiAgCX0KPj4+Cj4gCj4gLSBQw6l0ZXIKPiAKPiBUZXhhcyBJbnN0
cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KPiBZ
LXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxz
aW5raQo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
