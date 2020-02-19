Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9455F164501
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 14:07:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+G28BvOYrEC+9rFS5an3Z49NtBioXxztQFN1PC6+AJE=; b=ZnYHGij3Oq0of2/TU6JHiL0dH
	+asGV05gGBzhoX5FLnd4BukT9mkIVuxryolq+gQjZ9DfPq9GuFPtK26duZjV39z8PTbnDIFQ7kNf8
	5/Ep7Qqwi5iG8azPSkh5YXN/Q+VlvqkbnbzArvsDtF3bOKvoJYyAlhHZj1gLn4WwRPVsRVuS8bYbQ
	ARtTSVJJS+78AEjMcNykMfcv+48irv9WPTuHLScNhOJ0SGc6UVVst4uoj56ZQUi8Dz+VSu9uSE+G6
	NqNrEMWtJ7MseM1bYCyms+Lw2bVHl7dpkF/Hrj2cnb0MqfHb1OD4Ha27zB2AkJLR4Agu9Km3ef30h
	irIo7SchQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4P4w-0004dz-TV; Wed, 19 Feb 2020 13:07:50 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4P4h-0004XK-Te
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 13:07:37 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01JD3oYT005776; Wed, 19 Feb 2020 14:07:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=l/B3KaEv2Jvj0I5nAEs7f8vFAJgLMsUxBXAa1hAOuA4=;
 b=jGsQCxqd5C6Dz0am6OYuV40mCFaFg2SA/u4pdvfonZvOL3L/WfWZrsXlHjKwsV45rvHY
 RK+iInIFU1/I6jktLK2xXr6MdAdz+5cZb8cq0gQeRL4OJnb5MiVuxN0r4siuocm6vb5W
 MG3hHz5nTHVuwMumfAetokeVW+oxdoMYnX12Lm9X33pFtdGXWmU5HIT0JHFw/gLrnwa4
 BifVIDuDD1NAkrurCuQj0eSBe1Sm0JIWeDEQGgN7JFH5FmLUSKB/DcyTPGIkW7HbXagX
 DNtiH4Kau2QswwlMPmY/hoI8wEEtKpIkrKtYJbnZE7kctabFDMN9rWv+dxxIBrL/JFZd qQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y8ub033wj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 19 Feb 2020 14:07:24 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CE32D10002A;
 Wed, 19 Feb 2020 14:07:23 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BC2132B739B;
 Wed, 19 Feb 2020 14:07:23 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.47) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 19 Feb
 2020 14:07:23 +0100
Subject: Re: [PATCH v2 1/2] irqchip/stm32: Add irq retrigger support
To: Marc Zyngier <maz@kernel.org>
References: <20200218131218.10789-1-alexandre.torgue@st.com>
 <20200218131218.10789-2-alexandre.torgue@st.com>
 <16d27f75-8157-7a92-ae61-b5b3ab05bdd9@st.com>
 <608d9c84813323ee3839f6ac21aa8f4e@kernel.org>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <ae69e38a-78f9-ca68-c48c-86275e41b3bb@st.com>
Date: Wed, 19 Feb 2020 14:07:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <608d9c84813323ee3839f6ac21aa8f4e@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-19_03:2020-02-19,
 2020-02-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_050736_271445_EF59F138 
X-CRM114-Status: GOOD (  15.51  )
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
Cc: marex@denx.de, Jason Cooper <jason@lakedaemon.net>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyLzE5LzIwIDEyOjQzIFBNLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4gT24gMjAyMC0wMi0x
OSAxMTozMywgQWxleGFuZHJlIFRvcmd1ZSB3cm90ZToKPj4gRml4IE1hcmMgZW1haWwgYWRkcmVz
cwo+Pgo+PiBPbiAyLzE4LzIwIDI6MTIgUE0sIEFsZXhhbmRyZSBUb3JndWUgd3JvdGU6Cj4+PiBU
aGlzIGNvbW1pdCBpbnRyb2R1Y2VzIHJldHJpZ2dlciBzdXBwb3J0IGZvciBzdG0zMl9leHRfaCBj
aGlwLgo+Pj4gSXQgY29uc2lzdHMgdG8gcmlzZSB0aGUgR0lDIGludGVycnVwdCBtYXBwZWQgdG8g
YW4gRVhUSSBsaW5lLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEFsZXhhbmRyZSBUb3JndWUgPGFs
ZXhhbmRyZS50b3JndWVAc3QuY29tPgo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lycWNo
aXAvaXJxLXN0bTMyLWV4dGkuYyAKPj4+IGIvZHJpdmVycy9pcnFjaGlwL2lycS1zdG0zMi1leHRp
LmMKPj4+IGluZGV4IGUwMGYyZmEyN2YwMC4uYzk3MWQxMTVlZGI0IDEwMDY0NAo+Pj4gLS0tIGEv
ZHJpdmVycy9pcnFjaGlwL2lycS1zdG0zMi1leHRpLmMKPj4+ICsrKyBiL2RyaXZlcnMvaXJxY2hp
cC9pcnEtc3RtMzItZXh0aS5jCj4+PiBAQCAtNjA0LDEyICs2MDQsMjQgQEAgc3RhdGljIHZvaWQg
c3RtMzJfZXh0aV9oX3N5c2NvcmVfZGVpbml0KHZvaWQpCj4+PiDCoMKgwqDCoMKgIHVucmVnaXN0
ZXJfc3lzY29yZV9vcHMoJnN0bTMyX2V4dGlfaF9zeXNjb3JlX29wcyk7Cj4+PiDCoCB9Cj4+PiDC
oCArc3RhdGljIGludCBzdG0zMl9leHRpX2hfcmV0cmlnZ2VyKHN0cnVjdCBpcnFfZGF0YSAqZCkK
Pj4+ICt7Cj4+PiArwqDCoMKgIHN0cnVjdCBzdG0zMl9leHRpX2NoaXBfZGF0YSAqY2hpcF9kYXRh
ID0gCj4+PiBpcnFfZGF0YV9nZXRfaXJxX2NoaXBfZGF0YShkKTsKPj4+ICvCoMKgwqAgY29uc3Qg
c3RydWN0IHN0bTMyX2V4dGlfYmFuayAqc3RtMzJfYmFuayA9IGNoaXBfZGF0YS0+cmVnX2Jhbms7
Cj4+PiArwqDCoMKgIHZvaWQgX19pb21lbSAqYmFzZSA9IGNoaXBfZGF0YS0+aG9zdF9kYXRhLT5i
YXNlOwo+Pj4gK8KgwqDCoCB1MzIgbWFzayA9IEJJVChkLT5od2lycSAlIElSUVNfUEVSX0JBTksp
Owo+Pj4gKwo+Pj4gK8KgwqDCoCB3cml0ZWxfcmVsYXhlZChtYXNrLCBiYXNlICsgc3RtMzJfYmFu
ay0+c3dpZXJfb2ZzdCk7Cj4+PiArCj4+PiArwqDCoMKgIHJldHVybiBpcnFfY2hpcF9yZXRyaWdn
ZXJfaGllcmFyY2h5KGQpOwo+IAo+IENhbGxpbmcgaXJxX2NoaXBfcmV0cmlnZ2VyX2hpZXJhcmNo
eSBoZXJlIGlzIHJlYWxseSBvZGQuIElmIHRoZSB3cml0ZQo+IGFib3ZlIGhhcyB0aGUgZWZmZWN0
IG9mIG1ha2luZyB0aGUgaW50ZXJydXB0IHBlbmRpbmcgYWdhaW4sIHdoeSBkbyB5b3UKPiBuZWVk
IHRvIGZvcmNlIHRoZSByZXRyaWdnZXIgYW55IGZ1cnRoZXI/CgpUbyBiZSBob25lc3QsIGFzIHdl
IHVzZSBoaWVyYXJjaGljYWwgaXJxX2NoaXAsIEkgdGhvdWdodCBpdCB3YXMgdGhlIHdheSAKdG8g
Zm9sbG93ICh0byByZXRyaWdnZXIgcGFyZW50IGlycV9jaGlwKS4gSXQgbWFrZXMgbWF5YmUgbm8g
c2VucyBoZXJlLgpUaGUgbW9zdCBpbXBvcnRhbnQgdG8gcmVnZW5lcmF0ZSBnaWMgaW50ZXJydXB0
IChhc3NvY2lhdGUgdG8gdGhlIGV4dGkgCmxpbmUpIGlzIHRvIHdyaXRlIGluIFNXSUVSIHJlZ2lz
dGVyLgoKQWxleAoKPiAKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBNLgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
