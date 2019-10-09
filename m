Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0213ED1A0E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 22:49:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n4141HsFB/bG1MHvV8kiKbZfOAlwqn3bhjRU+RSVU7M=; b=FU7+yNbdTZUgaRQg/Gy+L9sxk
	Xsd3faQgZhWzKGGsbK2jZ5vtkRHrKzuQX4F9U7+LPBvB3F0N61R+EIAZfOiMUWiO3NvEV8QUkjVSD
	XXUPF0FmJTulKUWw22yPIrL+OX9NIIQ61fYAiHcUNP5XmebRcTTeK5cJo0yBx4OZoeueNM7MSxnsI
	hSiS19tQbli1eht+gbis34z6lJf7Bhoi32YGChDRl9ZgFLkAeFnWiUXoQr4+FMFdEUTQaMqq18VOa
	33QD/PHGrcLN9nuoURatXV9d9qh4NZl92KSjBTSZ+oHYDCPDlZXbnL8bmNaNibCAylY5A0nmDDCR5
	Zo0Z1h24Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIItf-0008LO-6W; Wed, 09 Oct 2019 20:49:23 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIItT-0008KI-2x; Wed, 09 Oct 2019 20:49:12 +0000
Received: from [10.200.156.146] (unknown [167.220.2.18])
 by linux.microsoft.com (Postfix) with ESMTPSA id 9792520B71C6;
 Wed,  9 Oct 2019 13:49:09 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 9792520B71C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1570654149;
 bh=R1XYwLvD2iwGBu/tSvMiVcIj6u8j47QQ6okMOZpNB7U=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=DKXLDx2TpAjvOkCcLD+fMOQ+UmAKk9f0J4PKC6kqYILap7MQfAxBIF2iiDgV4XJLq
 GWrcnyuAANdZF6aJ12FQZieemm+kz1XCRB86ccPD2aAux00sIXbYcxnvl7Jf912bkQ
 R+9ELrLAIdqH9L7Ny8K/E71UScCwE4MURLnjvU3Y=
Subject: Re: [PATCH v2 1/2] Add support for arm64 to carry ima measurement log
 in kexec_file_load
To: Sasha Levin <sashal@kernel.org>
References: <20191007185943.1828-1-prsriva@linux.microsoft.com>
 <20191007185943.1828-2-prsriva@linux.microsoft.com>
 <20191008212224.GC1396@sasha-vm>
From: prsriva <prsriva@linux.microsoft.com>
Message-ID: <b4ca20f8-dc8c-7266-de54-8062cf6ac8e3@linux.microsoft.com>
Date: Wed, 9 Oct 2019 13:49:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191008212224.GC1396@sasha-vm>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_134911_200424_9A1F1761 
X-CRM114-Status: GOOD (  18.59  )
X-Spam-Score: -15.6 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Cc: mark.rutland@arm.com, jean-philippe@linaro.org, arnd@arndb.de,
 takahiro.akashi@linaro.org, sboyd@kernel.org, catalin.marinas@arm.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, zohar@linux.ibm.com,
 bauerman@linux.ibm.com, yamada.masahiro@socionext.com,
 kristina.martsenko@arm.org, duwe@lst.de, allison@lohutok.net,
 james.morse@arm.org, linux-integrity@vger.kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMC84LzE5IDI6MjIgUE0sIFNhc2hhIExldmluIHdyb3RlOgo+IE9uIE1vbiwgT2N0IDA3
LCAyMDE5IGF0IDExOjU5OjQyQU0gLTA3MDAsIFByYWtoYXIgU3JpdmFzdGF2YSB3cm90ZToKPj4g
RHVyaW5nIGtleGVjX2ZpbGVfbG9hZCwgY2FycnlpbmcgZm9yd2FyZCB0aGUgaW1hIG1lYXN1cmVt
ZW50IGxvZyBhbGxvd3MKPj4gYSB2ZXJpZnlpbmcgcGFydHkgdG8gZ2V0IHRoZSBlbnRpcmUgcnVu
dGltZSBldmVudCBsb2cgc2luY2UgdGhlIGxhc3QKPj4gZnVsbCByZWJvb3Qgc2luY2UgdGhhdCBp
cyB3aGVuIFBDUnMgd2VyZSBsYXN0IHJlc2V0Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBQcmFraGFy
IFNyaXZhc3RhdmEgPHByc3JpdmFAbGludXgubWljcm9zb2Z0LmNvbT4KPj4gLS0tCj4+IGFyY2gv
S2NvbmZpZ8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgfMKgwqAgNiArLQo+PiBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL2ltYS5owqDCoMKgwqDCoMKg
wqDCoMKgwqAgfMKgIDI0ICsrKwo+PiBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL2tleGVjLmjCoMKg
wqDCoMKgwqDCoMKgIHzCoMKgIDUgKwo+PiBhcmNoL2FybTY0L2tlcm5lbC9NYWtlZmlsZcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAzICstCj4+IGFyY2gvYXJtNjQva2VybmVsL2ltYV9r
ZXhlYy5jwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA3OCArKysrKysrKysrCj4+IGFyY2gvYXJtNjQv
a2VybmVsL21hY2hpbmVfa2V4ZWNfZmlsZS5jIHzCoMKgIDYgKwo+PiBkcml2ZXJzL29mL0tjb25m
aWfCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDYgKwo+PiBk
cml2ZXJzL29mL01ha2VmaWxlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fMKgwqAgMSArCj4+IGRyaXZlcnMvb2Yvb2ZfaW1hLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB8IDIwNCArKysrKysrKysrKysrKysrKysrKysrKysrCj4+IGluY2x1ZGUv
bGludXgvb2YuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDMx
ICsrKysKPj4gMTAgZmlsZXMgY2hhbmdlZCwgMzYyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCj4+IGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL2ltYS5oCj4+
IGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2tlcm5lbC9pbWFfa2V4ZWMuYwo+PiBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9vZi9vZl9pbWEuYwo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJj
aC9LY29uZmlnIGIvYXJjaC9LY29uZmlnCj4+IGluZGV4IGE3YjU3ZGQ0MmMyNi4uZDUzZTE1OTZj
NWIxIDEwMDY0NAo+PiAtLS0gYS9hcmNoL0tjb25maWcKPj4gKysrIGIvYXJjaC9LY29uZmlnCj4+
IEBAIC0xOSw3ICsxOSwxMSBAQCBjb25maWcgS0VYRUNfQ09SRQo+PiDCoMKgwqDCoGJvb2wKPj4K
Pj4gY29uZmlnIEhBVkVfSU1BX0tFWEVDCj4+IC3CoMKgwqAgYm9vbAo+PiArwqDCoMKgIGJvb2wg
IkNhcnJ5IG92ZXIgSU1BIG1lYXN1cmVtZW50IGxvZyBkdXJpbmcga2V4ZWNfZmlsZV9sb2FkKCkg
Cj4+IHN5c2NhbGwiCj4+ICvCoMKgwqAgZGVwZW5kcyBvbiBLRVhFQ19GSUxFCj4+ICvCoMKgwqAg
aGVscAo+PiArwqDCoMKgwqDCoCBTZWxlY3QgdGhpcyBvcHRpb24gdG8gY2Fycnkgb3ZlciBJTUEg
bWVhc3VyZW1lbnQgbG9nIGR1cmluZwo+PiArwqDCoMKgwqDCoCBrZXhlY19maWxlX2xvYWQuCj4g
Cj4gVGhpcyBjaGFuZ2UgbG9va3MgdmVyeSB3cm9uZzogSEFWRV8qIGNvbmZpZyBzeW1ib2xzIGFy
ZSB1c2VkIHRvIGluZGljYXRlCj4gdGhlIGF2YWlsYWJpbGl0eSBvZiBjZXJ0YWluIGFyY2ggc3Bl
Y2lmaWMgY2FwYWJpbGl0eSwgcmF0aGVyIHRoYW4gYWN0IGFzCj4gYSBjb25maWcgb3B0aW9uLiBI
b3cgZG9lcyB0aGlzIHdvcmsgd2l0aCBDT05GSUdfSU1BX0tFWEVDID8KPiAKVGhhbmtzIGZvciBw
b2ludGluZyB0aGlzIG91dC4gTXkgYXR0ZW1wdCB3YXMgdG8gbW92ZSB0aGlzIG91dCBvZiBhcmNo
IApkZXBlbmRlbnQgY29uZmlnLiBJIHdpbGwgZml4IHRoZSBDT05GSUcuCgo+IEFsc28sIHBsZWFz
ZSwgYXQgdGhlIHZlcnkgbGVhc3QgdmVyaWZ5IHRoYXQgYmFzaWMgZnVuY3Rpb25hbGl0eSB3b3Jr
cyBvbgo+IHRoZSBhcmNoaXRlY3R1cmVzIHdlIGhhdmUgYWNjZXNzIHRvLiBUcnlpbmcgaXQgb24g
eDg2Ogo+IAoKTGV0IG1lIGZpeCB0aGUgYnVpbGQgaXNzdWVzIGZvciBvdGhlciBhcmNocy4KSSBo
YXZlIHRlc3RlZCB0aGVzZSBjaGFuZ2VzIGZvciBhcm02NC4KCj4gJCBtYWtlIGFsbG1vZGNvbmZp
Zwo+IHNjcmlwdHMva2NvbmZpZy9jb25mwqAgLS1hbGxtb2Rjb25maWcgS2NvbmZpZwo+ICMKPiAj
IE5vIGNoYW5nZSB0byAuY29uZmlnCj4gIwo+ICQgbWFrZQo+ICDCoENBTEzCoMKgwqAgc2NyaXB0
cy9jaGVja3N5c2NhbGxzLnNoCj4gIMKgQ0FMTMKgwqDCoCBzY3JpcHRzL2F0b21pYy9jaGVjay1h
dG9taWNzLnNoCj4gIMKgREVTQ0VORMKgIG9ianRvb2wKPiAgwqBDQ8KgwqDCoMKgwqAgc2VjdXJp
dHkvaW50ZWdyaXR5L2ltYS9pbWFfZnMubwo+IEluIGZpbGUgaW5jbHVkZWQgZnJvbSBzZWN1cml0
eS9pbnRlZ3JpdHkvaW1hL2ltYV9mcy5jOjI2Ogo+IHNlY3VyaXR5L2ludGVncml0eS9pbWEvaW1h
Lmg6Mjg6MTA6IGZhdGFsIGVycm9yOiBhc20vaW1hLmg6IE5vIHN1Y2ggZmlsZSAKPiBvciBkaXJl
Y3RvcnkKPiAjaW5jbHVkZSA8YXNtL2ltYS5oPgo+ICDCoMKgwqDCoMKgwqDCoMKgIF5+fn5+fn5+
fn5+Cj4gY29tcGlsYXRpb24gdGVybWluYXRlZC4KPiBtYWtlWzNdOiAqKiogW3NjcmlwdHMvTWFr
ZWZpbGUuYnVpbGQ6MjY2OiAKPiBzZWN1cml0eS9pbnRlZ3JpdHkvaW1hL2ltYV9mcy5vXSBFcnJv
ciAxCj4gbWFrZVsyXTogKioqIFtzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUwOTogc2VjdXJpdHkv
aW50ZWdyaXR5L2ltYV0gRXJyb3IgMgo+IG1ha2VbMV06ICoqKiBbc2NyaXB0cy9NYWtlZmlsZS5i
dWlsZDo1MDk6IHNlY3VyaXR5L2ludGVncml0eV0gRXJyb3IgMgo+IG1ha2U6ICoqKiBbTWFrZWZp
bGU6MTY0OTogc2VjdXJpdHldIEVycm9yIDIKPiAKPiAtLSAKPiBUaGFua3MsCj4gU2FzaGEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
