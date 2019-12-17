Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CAD9122EB0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 15:28:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ghTqsTqIfCbD1R2wp2JaeFj7Ba8uB7TGCY1WviXNXvI=; b=a2zDpc1FIXUdKI
	VRmbJelxWtwPg+EY6/Pk7t4zSa2uwV+HyNySLl/OXNsMglp5ZlH//lExHqacEaZTe/4Auu3WSPnDX
	PHVANQOUgqxAgDZRByJa/Hqt8sohepkHbOiTdvIx8NT/9d0yP+/q9sxi1+sB0rRvUHiLetzY44/kd
	x7NEm0cS/UO70GiL7nF+29B52w86tQgjN+cZ3lnDHqGTkrvMO5vYUR8u2xluhST2Pbf+pW1gIwD5L
	D3KzGGV9sFMX+EjgLPdi00hsCrCSVyht9qJUVsa5gBEWsMVPXFD28yC6+AAbLIz3/XW02wKsoH7lm
	d/mJ+71uZySRCVgqsVuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihDpl-0006dH-QS; Tue, 17 Dec 2019 14:28:21 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihDpb-0006cI-As
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 14:28:13 +0000
Received: by mail-lj1-x243.google.com with SMTP id e10so11152454ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 06:28:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Vk7ni/PqrPUTZjj6Kf0gRjET4D/e5zlH4n0cpw8x2OM=;
 b=o47fXkjALqz4rl5PO30XgOGI+1aJQyxmjTcJzaa75KqVxZQ8OvnXdS4bp/muyjXfq6
 +Q+hVoUpjIBzMZR/dJ8tTGNbodcjDAvRLLRHn/+1kWntm/gP4EI04o+U6BxZc5vAdlmx
 9Kua9Fb7A8hqXqKXQE/U7TNT7oojkZoTXs2K2xFmL81+OemZJrGNXJ5+VXRyPOWkIJDd
 Js/Fit/gQ4iwL/bU2QCY1RvuM/VZloJ2Qp4Z9bM9FrL63PPQy0yfQ7AFeszybDaezq8X
 ZUrBOt5O+A4eJPIkFLUgE4Jp2iDj/DAI3AXcWZXvlPkEa/Oh+fJQf9CpEYLiXLrZzihl
 s3sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Vk7ni/PqrPUTZjj6Kf0gRjET4D/e5zlH4n0cpw8x2OM=;
 b=q33DFdwOtuCvdiqBUXqg5GRxMiEC32yLy0mLebzWCb7jfgJBDKdQt+SwcG1IkvaLSv
 WKTDf6NtJmogj+UdNjWEDT0+KG88PJ0x+xr0E945LApzZ3QH2r+SUkrm5vLXRzt+QpaC
 PmE5S1GLb7SjOfkvT3HlPPfvgprZ5S9HO1BoPLIKAoZP+dsLKnjNuF2CwOsZU0afVnIk
 G5bG0rB4gkg9F8eWzhDakWfEve8SGhtCMkxAIAiRa1rhBrtmG4gE3T9qO2TpghRJjElI
 ZytiQTXr0Z9Nx5Z1ONNyyi0yMMLU7AsXJLcCIhYVBV3ev0nwz6LlqBNsSCmUTQ5uF5be
 PrfQ==
X-Gm-Message-State: APjAAAVRVR4PJdGn18ofCsGE+tknQGw/aZGe2dw6Mj13fapMFBHxv4oc
 zfp8FhDDTZEfsspxvlGxCyM=
X-Google-Smtp-Source: APXvYqx9Yu+YCch0Clt7jQ2sGxMLQC73A43RH+34NZSNGonEedW1jGzJxy5aLY3sXFM0+bViyRljOg==
X-Received: by 2002:a2e:9008:: with SMTP id h8mr3452969ljg.217.1576592889463; 
 Tue, 17 Dec 2019 06:28:09 -0800 (PST)
Received: from [192.168.2.145] (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.googlemail.com with ESMTPSA id g14sm12752266ljj.37.2019.12.17.06.28.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Dec 2019 06:28:08 -0800 (PST)
Subject: Re: [PATCH] ARM: tegra: Fix restoration of PLLM when exiting suspend
To: Jon Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>
References: <20191210103708.7023-1-jonathanh@nvidia.com>
 <1f2a4f23-5be5-aa7e-6eb4-2aeb4058481d@gmail.com>
 <1fe9cd2d-50a2-aae5-95fa-0329acce4c4c@gmail.com>
 <6ee48145-7315-4283-ae56-fbf00b00f16b@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <57264acd-2623-9e9f-53c6-3b4cd3991315@gmail.com>
Date: Tue, 17 Dec 2019 17:28:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <6ee48145-7315-4283-ae56-fbf00b00f16b@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_062811_401264_E92E0AB5 
X-CRM114-Status: GOOD (  26.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, Peter De Schrijver <pdeschrijver@nvidia.com>,
 stable@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTcuMTIuMjAxOSAxNzoxOSwgSm9uIEh1bnRlciDQv9C40YjQtdGCOgo+IAo+IE9uIDEwLzEyLzIw
MTkgMjA6MjksIERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPj4gMTAuMTIuMjAxOSAyMjoyOCwgRG1p
dHJ5IE9zaXBlbmtvINC/0LjRiNC10YI6Cj4+PiBIZWxsbyBKb24sCj4+Pgo+Pj4gMTAuMTIuMjAx
OSAxMzozNywgSm9uIEh1bnRlciDQv9C40YjQtdGCOgo+Pj4+IFRoZSBzdXNwZW5kIGVudHJ5IGFu
ZCBleGl0IGNvZGUgZm9yIDMyLWJpdCBUZWdyYSBkZXZpY2VzIGFzc3VtZXMgdGhhdAo+Pj4+IHRo
ZSBQTExNICh3aGljaCBpcyB1c2VkIHRvIHByb3ZpZGUgdGhlIGNsb2NrIGZvciBleHRlcm5hbCBt
ZW1vcnkpCj4+Pj4gaXMgYWx3YXlzIGVuYWJsZWQgb24gZW50cnkgdG8gc3VzcGVuZC4gSGVuY2Us
IHRoZSBjdXJyZW50IGNvZGUgYWx3YXlzCj4+Pj4gZGlzYWJsZXMgdGhlIFBMTE0gb24gZW50cnkg
dG8gc3VzcGVuZCBhbmQgcmUtZW5hYmxlcyB0aGUgUExMTSBvbiBleGl0Cj4+Pj4gZnJvbSBzdXNw
ZW5kLgo+Pj4+Cj4+Pj4gU2luY2UgdGhlIGludHJvZHVjdGlvbiBvZiB0aGUgVGVncmExMjQgRU1D
IGRyaXZlciBieSBjb21taXQgNzNhN2YwYTkwNjQxCj4+Pj4gKCJtZW1vcnk6IHRlZ3JhOiBBZGQg
RU1DIChleHRlcm5hbCBtZW1vcnkgY29udHJvbGxlcikgZHJpdmVyIiksIHdoaWNoIGlzCj4+Pj4g
dXNlZCB0byBzY2FsZSB0aGUgRU1DIGZyZXF1ZW5jeSwgUExMTSBtYXkgbm90IGJlIHRoZSBjdXJy
ZW50IGNsb2NrCj4+Pj4gc291cmNlIGZvciB0aGUgRU1DIG9uIGVudHJ5IHRvIHN1c3BlbmQgYW5k
IGhlbmNlIG1heSBub3QgYmUgZW5hYmxlZC4KPj4+PiBBbHdheXMgZW5hYmxpbmcgdGhlIFBMTE0g
b24gZXhpdCBmcm9tIHN1c3BlbmQgY2FuIGNhdXNlIHRoZSBhY3R1YWwKPj4+PiBzdGF0dXMgb24g
dGhlIFBMTCB0byBiZSBkaWZmZXJlbnQgZnJvbSB0aGF0IHJlcG9ydGVkIGJ5IHRoZSBjb21tb24g
Y2xvY2sKPj4+PiBmcmFtZXdvcmsuCj4+Pj4KPj4+PiBPbiBrZXJuZWxzIHByaW9yIHRvIHY0LjUs
IHRoZSBjb2RlIHRvIHNldCB0aGUgcmF0ZSBvZiB0aGUgUExMTSBoYWQgYQo+Pj4+IHRlc3QgdG8g
dmVyaWZ5IGlmIHRoZSBQTEwgd2FzIGVuYWJsZWQgYW5kIGlmIHRoZSBQTEwgd2FzIGVuYWJsZWQs
Cj4+Pj4gc2V0dGluZyB0aGUgcmF0ZSB3b3VsZCBmYWlsLiBTaW5jZSBjb21taXQgMjY3YjYyYTk2
OTUxCj4+Pj4gKCJjbGs6IHRlZ3JhOiBwbGw6IFVwZGF0ZSBQTExNIGhhbmRsaW5nIikgdGhlIHRl
c3QgdG8gc2VlIGlmIFBMTE0gaXMKPj4+PiBlbmFibGVkIHdhcyByZW1vdmVkLgo+Pj4+Cj4+Pj4g
V2l0aCB0aGVzZSBlYXJsaWVyIGtlcm5lbHMsIGlmIHRoZSBQTExNIGlzIGRpc2FibGVkIG9uIGVu
dGVyaW5nIHN1c3BlbmQKPj4+PiBhbmQgdGhlIEVNQyBkcml2ZXIgYXR0ZW1wdHMgdG8gc2V0IHRo
ZSBwYXJlbnQgb2YgdGhlIEVNQyBjbG9jayB0byB0aGUKPj4+PiBQTExNIG9uIGV4aXRpbmcgc3Vz
cGVuZCwgdGhlbiB0aGUgc2V0IHJhdGUgZm9yIHRoZSBQTExNIHdpbGwgZmFpbCBhbmQgaW4KPj4+
PiB0dXJuIGNhdXNlIHRoZSByZXN1bWUgdG8gZmFpbC4KPj4+Pgo+Pj4+IFdlIHNob3VsZCBub3Qg
YmUgcmUtZW5hYmxpbmcgdGhlIFBMTE0gb24gcmVzdW1lIGZyb20gc3VzcGVuZCB1bmxlc3MgaXQK
Pj4+PiB3YXMgZW5hYmxlZCBvbiBlbnRyeSB0byBzdXNwZW5kLiBUaGVyZWZvcmUsIGZpeCB0aGlz
IGJ5IHNhdmluZyB0aGUgc3RhdGUKPj4+PiBvZiBQTExNIG9uIGVudHJ5IHRvIHN1c3BlbmQgYW5k
IG9ubHkgcmUtZW5hYmxlIGl0LCBpZiBpdCB3YXMgYWxyZWFkeQo+Pj4+IGVuYWJsZWQuCj4+Pj4K
Pj4+PiBGaXhlczogNzNhN2YwYTkwNjQxICgibWVtb3J5OiB0ZWdyYTogQWRkIEVNQyAoZXh0ZXJu
YWwgbWVtb3J5IGNvbnRyb2xsZXIpIGRyaXZlciIpCj4+Pj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5l
bC5vcmcKPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEpvbiBIdW50ZXIgPGpvbmF0aGFuaEBudmlk
aWEuY29tPgo+Pj4+IC0tLQo+Pj4+ICBhcmNoL2FybS9tYWNoLXRlZ3JhL3NsZWVwLXRlZ3JhMzAu
UyB8IDMzICsrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tCj4+Pj4gIDEgZmlsZSBjaGFuZ2Vk
LCAyNyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL21hY2gtdGVncmEvc2xlZXAtdGVncmEzMC5TIGIvYXJjaC9hcm0vbWFjaC10ZWdy
YS9zbGVlcC10ZWdyYTMwLlMKPj4+PiBpbmRleCAzMzQxYTEyYmJiOWMuLmMyZjA3OTNhNDI0ZiAx
MDA2NDQKPj4+PiAtLS0gYS9hcmNoL2FybS9tYWNoLXRlZ3JhL3NsZWVwLXRlZ3JhMzAuUwo+Pj4+
ICsrKyBiL2FyY2gvYXJtL21hY2gtdGVncmEvc2xlZXAtdGVncmEzMC5TCj4+Pj4gQEAgLTMzNywy
NiArMzM3LDQyIEBAIEVOVFJZKHRlZ3JhMzBfbHAxX3Jlc2V0KQo+Pj4+ICAJYWRkCXIxLCByMSwg
IzIKPj4+PiAgCXdhaXRfdW50aWwgcjEsIHI3LCByMwo+Pj4+ICAKPj4+PiAtCS8qIGVuYWJsZSBQ
TExNIHZpYSBQTUMgKi8KPj4+PiArCS8qIHJlc3RvcmUgUExMTSBzdGF0ZSAqLwo+Pj4+ICAJbW92
MzIJcjIsIFRFR1JBX1BNQ19CQVNFCj4+Pj4gKwlhZHIJcjcsIHRlZ3JhX3BsbG1fc3RhdHVzCj4+
Pj4gKwlsZHIJcjEsIFtyN10KPj4+PiArCWNtcAlyMiwgIygxIDw8IDEyKQo+Pj4+ICsJYm5lCV9z
a2lwX3BsbG0KPj4+PiArCj4+Pj4gIAlsZHIJcjEsIFtyMiwgI1BNQ19QTExQX1dCMF9PVkVSUklE
RV0KPj4+PiAgCW9ycglyMSwgcjEsICMoMSA8PCAxMikKPj4+PiAgCXN0cglyMSwgW3IyLCAjUE1D
X1BMTFBfV0IwX09WRVJSSURFXQo+Pj4+ICAKPj4+PiAgCXBsbF9lbmFibGUgcjEsIHIwLCBDTEtf
UkVTRVRfUExMTV9CQVNFLCAwCj4+Pj4gKwlwbGxfbG9ja2VkIHIxLCByMCwgQ0xLX1JFU0VUX1BM
TE1fQkFTRQo+Pj4+ICsKPj4+PiArX3NraXBfcGxsbToKPj4+PiAgCXBsbF9lbmFibGUgcjEsIHIw
LCBDTEtfUkVTRVRfUExMQ19CQVNFLCAwCj4+Pj4gIAlwbGxfZW5hYmxlIHIxLCByMCwgQ0xLX1JF
U0VUX1BMTFhfQkFTRSwgMAo+Pj4+ICAKPj4+PiAgCWIJX3BsbF9tX2NfeF9kb25lCj4+Pj4gIAo+
Pj4+ICBfbm9fcGxsX2lkZHFfZXhpdDoKPj4+PiAtCS8qIGVuYWJsZSBQTExNIHZpYSBQTUMgKi8K
Pj4+PiArCS8qIHJlc3RvcmUgUExMTSBzdGF0ZSAqLwo+Pj4+ICAJbW92MzIJcjIsIFRFR1JBX1BN
Q19CQVNFCj4+Pj4gKwlhZHIJcjcsIHRlZ3JhX3BsbG1fc3RhdHVzCj4+Pj4gKwlsZHIJcjEsIFty
N10KPj4+PiArCWNtcAlyMiwgIygxIDw8IDEyKQo+Pj4+ICsJYm5lCV9za2lwX3BsbG1fbm9faWRk
cQo+Pj4+ICsKPj4+PiAgCWxkcglyMSwgW3IyLCAjUE1DX1BMTFBfV0IwX09WRVJSSURFXQo+Pj4+
ICAJb3JyCXIxLCByMSwgIygxIDw8IDEyKQo+Pj4+ICAJc3RyCXIxLCBbcjIsICNQTUNfUExMUF9X
QjBfT1ZFUlJJREVdCj4+Pj4gIAo+Pj4+ICAJcGxsX2VuYWJsZSByMSwgcjAsIENMS19SRVNFVF9Q
TExNX0JBU0UsIENMS19SRVNFVF9QTExNX01JU0MKPj4+PiArCXBsbF9sb2NrZWQgcjEsIHIwLCBD
TEtfUkVTRVRfUExMTV9CQVNFCj4+Pj4gKwo+Pj4+ICtfc2tpcF9wbGxtX25vX2lkZHE6Cj4+Pj4g
IAlwbGxfZW5hYmxlIHIxLCByMCwgQ0xLX1JFU0VUX1BMTENfQkFTRSwgQ0xLX1JFU0VUX1BMTENf
TUlTQwo+Pj4+ICAJcGxsX2VuYWJsZSByMSwgcjAsIENMS19SRVNFVF9QTExYX0JBU0UsIENMS19S
RVNFVF9QTExYX01JU0MKPj4+PiAgCj4+Pj4gQEAgLTM2NCw3ICszODAsNiBAQCBfcGxsX21fY194
X2RvbmU6Cj4+Pj4gIAlwbGxfZW5hYmxlIHIxLCByMCwgQ0xLX1JFU0VUX1BMTFBfQkFTRSwgQ0xL
X1JFU0VUX1BMTFBfTUlTQwo+Pj4+ICAJcGxsX2VuYWJsZSByMSwgcjAsIENMS19SRVNFVF9QTExB
X0JBU0UsIENMS19SRVNFVF9QTExBX01JU0MKPj4+PiAgCj4+Pj4gLQlwbGxfbG9ja2VkIHIxLCBy
MCwgQ0xLX1JFU0VUX1BMTE1fQkFTRQo+Pj4+ICAJcGxsX2xvY2tlZCByMSwgcjAsIENMS19SRVNF
VF9QTExQX0JBU0UKPj4+PiAgCXBsbF9sb2NrZWQgcjEsIHIwLCBDTEtfUkVTRVRfUExMQV9CQVNF
Cj4+Pj4gIAlwbGxfbG9ja2VkIHIxLCByMCwgQ0xLX1JFU0VUX1BMTENfQkFTRQo+Pj4+IEBAIC01
MjYsNiArNTQxLDggQEAgX19ub19kdWFsX2VtY19jaGFubDoKPj4+PiAgRU5EUFJPQyh0ZWdyYTMw
X2xwMV9yZXNldCkKPj4+PiAgCj4+Pj4gIAkuYWxpZ24JTDFfQ0FDSEVfU0hJRlQKPj4+PiArdGVn
cmFfcGxsbV9zdGF0dXM6Cj4+Pj4gKwkud29yZAkwCj4+Pj4gIHRlZ3JhMzBfc2RyYW1fcGFkX2Fk
ZHJlc3M6Cj4+Pj4gIAkud29yZAlURUdSQV9FTUNfQkFTRSArIEVNQ19DRkcJCQkJQDB4MAo+Pj4+
ICAJLndvcmQJVEVHUkFfRU1DX0JBU0UgKyBFTUNfWkNBTF9JTlRFUlZBTAkJCUAweDQKPj4+PiBA
QCAtNjI0LDEwICs2NDEsMTQgQEAgdGVncmEzMF9zd2l0Y2hfY3B1X3RvX2NsazMyazoKPj4+PiAg
CWFkZAlyMSwgcjEsICMyCj4+Pj4gIAl3YWl0X3VudGlsIHIxLCByNywgcjkKPj4+Cj4+Pgo+Pj4+
IC0JLyogZGlzYWJsZSBQTExNIHZpYSBQTUMgaW4gTFAxICovCj4+Pj4gKwkvKiBkaXNhYmxlIFBM
TE0sIGlmIGVuYWJsZWQsIHZpYSBQTUMgaW4gTFAxICovCj4+Pj4gKwlhZHIJcjEsIHRlZ3JhX3Bs
bG1fc3RhdHVzCj4+Pj4gIAlsZHIJcjAsIFtyNCwgI1BNQ19QTExQX1dCMF9PVkVSUklERV0KPj4+
PiAtCWJpYwlyMCwgcjAsICMoMSA8PCAxMikKPj4+PiAtCXN0cglyMCwgW3I0LCAjUE1DX1BMTFBf
V0IwX09WRVJSSURFXQo+Pj4+ICsJYW5kCXIyLCByMCwgIygxIDw8IDEyKQo+Pj4+ICsJc3RyICAg
ICByMiwgW3IxXQo+Pj4+ICsJY21wCXIyLCAjKDEgPDwgMTIpCj4+Pj4gKwliaWNlcQlyMCwgcjAs
ICMoMSA8PCAxMikKPj4+PiArCXN0cmVxCXIwLCBbcjQsICNQTUNfUExMUF9XQjBfT1ZFUlJJREVd
Cj4+Pj4gIAo+Pj4+ICAJLyogZGlzYWJsZSBQTExQLCBQTExBLCBQTExDIGFuZCBQTExYICovCj4+
Pj4gIAlsZHIJcjAsIFtyNSwgI0NMS19SRVNFVF9QTExQX0JBU0VdCj4+Pgo+Pj4gUExMTSdzIGVu
YWJsZS1zdGF0dXMgY291bGQgYmUgZGVmaW5lZCBlaXRoZXIgYnkgUE1DIG9yIENhUi4gVGh1cyBh
dAo+Pj4gZmlyc3QgeW91IG5lZWQgdG8gY2hlY2sgd2hldGhlciBQTUMgb3ZlcnJpZGVzIENhUidz
IGVuYWJsZSBhbmQgdGhlbgo+Pj4ganVkZ2UgdGhlIGVuYWJsZSBzdGF0ZSBiYXNlZCBvbiBQTUMg
b3IgQ2FSIHN0YXRlIHJlc3BlY3RpdmVseS4KPj4+Cj4+Cj4+IEFjdHVhbGx5LCBub3cgSSB0aGlu
ayB0aGF0IGl0IGRvZXNuJ3QgbWFrZSBzZW5zZSB0byBjaGVjayBQTUMgV0IwIHN0YXRlCj4+IGF0
IGFsbC4gSUlVQywgUExMTSdzIHN0YXRlIG9mIHRoZSBXQjAgcmVnaXN0ZXIgZGVmaW5lcyB3aGV0
aGVyIEJvb3QgUk9NCj4+IHNob3VsZCBlbmFibGUgUExMTSBvbiByZXN1bWUgZnJvbSBzdXNwZW5k
LiBUaHVzIGl0IHdpbGwgYmUgY29ycmVjdCB0bwo+PiBjaGVjayBvbmx5IHRoZSBDYVIncyBlbmFi
bGUtc3RhdGUgb2YgUExMTS4KPiAKPiBUaGFua3MgZm9yIHBvaW50aW5nIHRoaXMgb3V0IGFuZCBz
b3JyeSBmb3IgdGhlIGRlbGF5LiBIb3dldmVyLCBJIGFtIG5vdAo+IHN1cmUgSSBhZ3JlZSB0aGF0
IHdlIHNob3VsZCBub3QgY2hlY2sgdGhpcyBhdCBhbGwuIElmIHRoZSBvdmVycmlkZSBiaXQKPiBp
cyBzZXQsIHRoZW4gd2UgZG8gd2FudCB0byBjaGVjayB0aGUgc3RhdGUgZnJvbSB0aGUgUE1DIHJl
Z2lzdGVyIGFuZCBpZgo+IGl0IGlzIG5vdCB0aGVuIHdlIHNob3VsZCBqdXN0IHVzZSB0aGUgUExM
TSByZWdpc3RlciBpdHNlbGYuCgpTb3JyeSBpZiBJIHdhc24ndCBjbGVhci4uIG15IHBvaW50IGlz
IHRoYXQgdGhlIFBNQydzIG92ZXJyaWRlIHJlZ2lzdGVyCmJpdCBkb2Vzbid0IHJlZmxlY3QgdGhl
IFBMTE0ncyBlbmFibGUtc3RhdGUuIFRoZSBQTExNIGNvdWxkIGJlIGRpc2FibGVkCndoaWxlIFBN
Q19QTExQX1dCMF9PVkVSUklERV9QTExNX0VOQUJMRSBiaXQgaXMgc2V0LgoKVGhlIENhUidzIFBM
TE0gZW5hYmxlLXN0YXRlIHJlZmxlY3RzIHRoZSBhY3R1YWwgaGFyZHdhcmUgc3RhdGUuIEF0IGxl
YXN0CnRoYXQncyB3aGF0IEkgc2VlIG9uIFQzMC4KCj4+IExvb2tzIGxpa2UgaXQgaXMgYSBiaXQg
b2Ygbm9uc2Vuc2UgdGhhdCBjbGtfcGxsX2lzX2VuYWJsZWQoKSBjaGVja3MKPj4gUE1DX1BMTFBf
V0IwX09WRVJSSURFX1BMTE1fRU5BQkxFIGZvciBqdWRnaW5nIG9mIHRoZSBlbmFibGUtc3RhdGUu
IFRoaXMKPj4gaXMgbm90IHRoZSBmaXJzdCB0aW1lIEknbSBnZXR0aW5nIGNvbmZ1c2VkIGJ5IGl0
LCBwZXJoYXBzIHdpbGwgYmUKPj4gd29ydGh3aGlsZSB0byBjbGVhbiB1cCB0aGF0IHBhcnQgb2Yg
dGhlIGNsayBkcml2ZXIncyBjb2RlIChpZiBJJ20gbm90Cj4+IG1pc3Npbmcgc29tZXRoaW5nKS4K
PiAKPiBUaGF0IGNvZGUgbG9va3MgZmluZSB0byBtZS4gSSBqdXN0IHRoaW5rIHRoaXMgY29kZSBl
bnRlcmluZyBhbmQgZXhpdGluZwo+IHN1c3BlbmQgbmVlZHMgdG8gYmUgZml4ZWQuIEkgd2lsbCBy
ZS13b3JrIHRoaXMgZml4Lgo+IAo+IEpvbgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
