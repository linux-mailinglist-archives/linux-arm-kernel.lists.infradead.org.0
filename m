Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B192D122E76
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 15:20:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MeiYa4EugtBu2rYZRHDS9Eaywq4LB71joW/9Wab44QQ=; b=s3UDAf69PKx8iL
	q7mnb7NLHgy4Weh6xW1DCQfxi3H1SKzbJgxh9nGTbxrFGX1M2zxXXqZk100jOG/Q76Af7sFhApjFI
	OLYemnh+NHwJADrHWfXqfgAW6Q2ofoJ9tTIwzws5sasA5m/oqq93eFIsQGmvZjzhuB2SdjqGdj7SX
	3EVLO4eq+4FLiejLhzxBSa/hLcdPLg58ZoTCuzTQ4UsysUmF+WzF1NBpQMegNgtt8KNZ7TPfA2weg
	wh+FC/obNXGgIjasXCj78BtdqkaH3fwjciKznAYYN3H3ApxFQN1dp70y/QvXDHsCGxehv3hSe8w3B
	YT2+jWMPTgHe120Tzphg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihDhz-0002wW-Ob; Tue, 17 Dec 2019 14:20:19 +0000
Received: from hqnvemgate24.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihDhh-0002TF-2C
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 14:20:03 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5df8e3f10000>; Tue, 17 Dec 2019 06:19:29 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 17 Dec 2019 06:19:57 -0800
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 17 Dec 2019 06:19:57 -0800
Received: from [10.21.133.51] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 17 Dec
 2019 14:19:55 +0000
Subject: Re: [PATCH] ARM: tegra: Fix restoration of PLLM when exiting suspend
To: Dmitry Osipenko <digetx@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
References: <20191210103708.7023-1-jonathanh@nvidia.com>
 <1f2a4f23-5be5-aa7e-6eb4-2aeb4058481d@gmail.com>
 <1fe9cd2d-50a2-aae5-95fa-0329acce4c4c@gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <6ee48145-7315-4283-ae56-fbf00b00f16b@nvidia.com>
Date: Tue, 17 Dec 2019 14:19:53 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1fe9cd2d-50a2-aae5-95fa-0329acce4c4c@gmail.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1576592370; bh=VgXUtKhqgLVr5RbEKdnJKebuI70EdEW74FMRKcdpWpE=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=Bea6jnqWdbSR0yqgUeL0b1K5+TUqrASkru1gp2XFcrFH0yraP0LNyipb24sCYYd+L
 FB1lLurA+uB5pEWfeqFGYoublsEftBoXCOxTbFtTV6l+I71lO0HSB9+GBSB426cuiE
 uLRoEZAeGvE+C+Wg3Jj8u/vxXkginiJUx4V/WhFMVOv2YVG1oXsEvm8Ht1IcnHDzsp
 lP8xcrY9VKkO/gIKdqD7mkb6dMV9twWPv3i4x8SgZCPatoNF3EUiR4NmJaMM6+GML3
 M8jUkUv5pSl1tB98lZEOtCdKYDtre0Nb/ueGoe4c+XIs5dNWsDQgfTv7LRgv/PwZDe
 V26Dhl1ECs9Dg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_062001_139924_F242F465 
X-CRM114-Status: GOOD (  22.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Ck9uIDEwLzEyLzIwMTkgMjA6MjksIERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPiAxMC4xMi4yMDE5
IDIyOjI4LCBEbWl0cnkgT3NpcGVua28g0L/QuNGI0LXRgjoKPj4gSGVsbG8gSm9uLAo+Pgo+PiAx
MC4xMi4yMDE5IDEzOjM3LCBKb24gSHVudGVyINC/0LjRiNC10YI6Cj4+PiBUaGUgc3VzcGVuZCBl
bnRyeSBhbmQgZXhpdCBjb2RlIGZvciAzMi1iaXQgVGVncmEgZGV2aWNlcyBhc3N1bWVzIHRoYXQK
Pj4+IHRoZSBQTExNICh3aGljaCBpcyB1c2VkIHRvIHByb3ZpZGUgdGhlIGNsb2NrIGZvciBleHRl
cm5hbCBtZW1vcnkpCj4+PiBpcyBhbHdheXMgZW5hYmxlZCBvbiBlbnRyeSB0byBzdXNwZW5kLiBI
ZW5jZSwgdGhlIGN1cnJlbnQgY29kZSBhbHdheXMKPj4+IGRpc2FibGVzIHRoZSBQTExNIG9uIGVu
dHJ5IHRvIHN1c3BlbmQgYW5kIHJlLWVuYWJsZXMgdGhlIFBMTE0gb24gZXhpdAo+Pj4gZnJvbSBz
dXNwZW5kLgo+Pj4KPj4+IFNpbmNlIHRoZSBpbnRyb2R1Y3Rpb24gb2YgdGhlIFRlZ3JhMTI0IEVN
QyBkcml2ZXIgYnkgY29tbWl0IDczYTdmMGE5MDY0MQo+Pj4gKCJtZW1vcnk6IHRlZ3JhOiBBZGQg
RU1DIChleHRlcm5hbCBtZW1vcnkgY29udHJvbGxlcikgZHJpdmVyIiksIHdoaWNoIGlzCj4+PiB1
c2VkIHRvIHNjYWxlIHRoZSBFTUMgZnJlcXVlbmN5LCBQTExNIG1heSBub3QgYmUgdGhlIGN1cnJl
bnQgY2xvY2sKPj4+IHNvdXJjZSBmb3IgdGhlIEVNQyBvbiBlbnRyeSB0byBzdXNwZW5kIGFuZCBo
ZW5jZSBtYXkgbm90IGJlIGVuYWJsZWQuCj4+PiBBbHdheXMgZW5hYmxpbmcgdGhlIFBMTE0gb24g
ZXhpdCBmcm9tIHN1c3BlbmQgY2FuIGNhdXNlIHRoZSBhY3R1YWwKPj4+IHN0YXR1cyBvbiB0aGUg
UExMIHRvIGJlIGRpZmZlcmVudCBmcm9tIHRoYXQgcmVwb3J0ZWQgYnkgdGhlIGNvbW1vbiBjbG9j
awo+Pj4gZnJhbWV3b3JrLgo+Pj4KPj4+IE9uIGtlcm5lbHMgcHJpb3IgdG8gdjQuNSwgdGhlIGNv
ZGUgdG8gc2V0IHRoZSByYXRlIG9mIHRoZSBQTExNIGhhZCBhCj4+PiB0ZXN0IHRvIHZlcmlmeSBp
ZiB0aGUgUExMIHdhcyBlbmFibGVkIGFuZCBpZiB0aGUgUExMIHdhcyBlbmFibGVkLAo+Pj4gc2V0
dGluZyB0aGUgcmF0ZSB3b3VsZCBmYWlsLiBTaW5jZSBjb21taXQgMjY3YjYyYTk2OTUxCj4+PiAo
ImNsazogdGVncmE6IHBsbDogVXBkYXRlIFBMTE0gaGFuZGxpbmciKSB0aGUgdGVzdCB0byBzZWUg
aWYgUExMTSBpcwo+Pj4gZW5hYmxlZCB3YXMgcmVtb3ZlZC4KPj4+Cj4+PiBXaXRoIHRoZXNlIGVh
cmxpZXIga2VybmVscywgaWYgdGhlIFBMTE0gaXMgZGlzYWJsZWQgb24gZW50ZXJpbmcgc3VzcGVu
ZAo+Pj4gYW5kIHRoZSBFTUMgZHJpdmVyIGF0dGVtcHRzIHRvIHNldCB0aGUgcGFyZW50IG9mIHRo
ZSBFTUMgY2xvY2sgdG8gdGhlCj4+PiBQTExNIG9uIGV4aXRpbmcgc3VzcGVuZCwgdGhlbiB0aGUg
c2V0IHJhdGUgZm9yIHRoZSBQTExNIHdpbGwgZmFpbCBhbmQgaW4KPj4+IHR1cm4gY2F1c2UgdGhl
IHJlc3VtZSB0byBmYWlsLgo+Pj4KPj4+IFdlIHNob3VsZCBub3QgYmUgcmUtZW5hYmxpbmcgdGhl
IFBMTE0gb24gcmVzdW1lIGZyb20gc3VzcGVuZCB1bmxlc3MgaXQKPj4+IHdhcyBlbmFibGVkIG9u
IGVudHJ5IHRvIHN1c3BlbmQuIFRoZXJlZm9yZSwgZml4IHRoaXMgYnkgc2F2aW5nIHRoZSBzdGF0
ZQo+Pj4gb2YgUExMTSBvbiBlbnRyeSB0byBzdXNwZW5kIGFuZCBvbmx5IHJlLWVuYWJsZSBpdCwg
aWYgaXQgd2FzIGFscmVhZHkKPj4+IGVuYWJsZWQuCj4+Pgo+Pj4gRml4ZXM6IDczYTdmMGE5MDY0
MSAoIm1lbW9yeTogdGVncmE6IEFkZCBFTUMgKGV4dGVybmFsIG1lbW9yeSBjb250cm9sbGVyKSBk
cml2ZXIiKQo+Pj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPj4+Cj4+PiBTaWduZWQtb2Zm
LWJ5OiBKb24gSHVudGVyIDxqb25hdGhhbmhAbnZpZGlhLmNvbT4KPj4+IC0tLQo+Pj4gIGFyY2gv
YXJtL21hY2gtdGVncmEvc2xlZXAtdGVncmEzMC5TIHwgMzMgKysrKysrKysrKysrKysrKysrKysr
KystLS0tLS0KPj4+ICAxIGZpbGUgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlv
bnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC10ZWdyYS9zbGVlcC10ZWdy
YTMwLlMgYi9hcmNoL2FybS9tYWNoLXRlZ3JhL3NsZWVwLXRlZ3JhMzAuUwo+Pj4gaW5kZXggMzM0
MWExMmJiYjljLi5jMmYwNzkzYTQyNGYgMTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL2FybS9tYWNoLXRl
Z3JhL3NsZWVwLXRlZ3JhMzAuUwo+Pj4gKysrIGIvYXJjaC9hcm0vbWFjaC10ZWdyYS9zbGVlcC10
ZWdyYTMwLlMKPj4+IEBAIC0zMzcsMjYgKzMzNyw0MiBAQCBFTlRSWSh0ZWdyYTMwX2xwMV9yZXNl
dCkKPj4+ICAJYWRkCXIxLCByMSwgIzIKPj4+ICAJd2FpdF91bnRpbCByMSwgcjcsIHIzCj4+PiAg
Cj4+PiAtCS8qIGVuYWJsZSBQTExNIHZpYSBQTUMgKi8KPj4+ICsJLyogcmVzdG9yZSBQTExNIHN0
YXRlICovCj4+PiAgCW1vdjMyCXIyLCBURUdSQV9QTUNfQkFTRQo+Pj4gKwlhZHIJcjcsIHRlZ3Jh
X3BsbG1fc3RhdHVzCj4+PiArCWxkcglyMSwgW3I3XQo+Pj4gKwljbXAJcjIsICMoMSA8PCAxMikK
Pj4+ICsJYm5lCV9za2lwX3BsbG0KPj4+ICsKPj4+ICAJbGRyCXIxLCBbcjIsICNQTUNfUExMUF9X
QjBfT1ZFUlJJREVdCj4+PiAgCW9ycglyMSwgcjEsICMoMSA8PCAxMikKPj4+ICAJc3RyCXIxLCBb
cjIsICNQTUNfUExMUF9XQjBfT1ZFUlJJREVdCj4+PiAgCj4+PiAgCXBsbF9lbmFibGUgcjEsIHIw
LCBDTEtfUkVTRVRfUExMTV9CQVNFLCAwCj4+PiArCXBsbF9sb2NrZWQgcjEsIHIwLCBDTEtfUkVT
RVRfUExMTV9CQVNFCj4+PiArCj4+PiArX3NraXBfcGxsbToKPj4+ICAJcGxsX2VuYWJsZSByMSwg
cjAsIENMS19SRVNFVF9QTExDX0JBU0UsIDAKPj4+ICAJcGxsX2VuYWJsZSByMSwgcjAsIENMS19S
RVNFVF9QTExYX0JBU0UsIDAKPj4+ICAKPj4+ICAJYglfcGxsX21fY194X2RvbmUKPj4+ICAKPj4+
ICBfbm9fcGxsX2lkZHFfZXhpdDoKPj4+IC0JLyogZW5hYmxlIFBMTE0gdmlhIFBNQyAqLwo+Pj4g
KwkvKiByZXN0b3JlIFBMTE0gc3RhdGUgKi8KPj4+ICAJbW92MzIJcjIsIFRFR1JBX1BNQ19CQVNF
Cj4+PiArCWFkcglyNywgdGVncmFfcGxsbV9zdGF0dXMKPj4+ICsJbGRyCXIxLCBbcjddCj4+PiAr
CWNtcAlyMiwgIygxIDw8IDEyKQo+Pj4gKwlibmUJX3NraXBfcGxsbV9ub19pZGRxCj4+PiArCj4+
PiAgCWxkcglyMSwgW3IyLCAjUE1DX1BMTFBfV0IwX09WRVJSSURFXQo+Pj4gIAlvcnIJcjEsIHIx
LCAjKDEgPDwgMTIpCj4+PiAgCXN0cglyMSwgW3IyLCAjUE1DX1BMTFBfV0IwX09WRVJSSURFXQo+
Pj4gIAo+Pj4gIAlwbGxfZW5hYmxlIHIxLCByMCwgQ0xLX1JFU0VUX1BMTE1fQkFTRSwgQ0xLX1JF
U0VUX1BMTE1fTUlTQwo+Pj4gKwlwbGxfbG9ja2VkIHIxLCByMCwgQ0xLX1JFU0VUX1BMTE1fQkFT
RQo+Pj4gKwo+Pj4gK19za2lwX3BsbG1fbm9faWRkcToKPj4+ICAJcGxsX2VuYWJsZSByMSwgcjAs
IENMS19SRVNFVF9QTExDX0JBU0UsIENMS19SRVNFVF9QTExDX01JU0MKPj4+ICAJcGxsX2VuYWJs
ZSByMSwgcjAsIENMS19SRVNFVF9QTExYX0JBU0UsIENMS19SRVNFVF9QTExYX01JU0MKPj4+ICAK
Pj4+IEBAIC0zNjQsNyArMzgwLDYgQEAgX3BsbF9tX2NfeF9kb25lOgo+Pj4gIAlwbGxfZW5hYmxl
IHIxLCByMCwgQ0xLX1JFU0VUX1BMTFBfQkFTRSwgQ0xLX1JFU0VUX1BMTFBfTUlTQwo+Pj4gIAlw
bGxfZW5hYmxlIHIxLCByMCwgQ0xLX1JFU0VUX1BMTEFfQkFTRSwgQ0xLX1JFU0VUX1BMTEFfTUlT
Qwo+Pj4gIAo+Pj4gLQlwbGxfbG9ja2VkIHIxLCByMCwgQ0xLX1JFU0VUX1BMTE1fQkFTRQo+Pj4g
IAlwbGxfbG9ja2VkIHIxLCByMCwgQ0xLX1JFU0VUX1BMTFBfQkFTRQo+Pj4gIAlwbGxfbG9ja2Vk
IHIxLCByMCwgQ0xLX1JFU0VUX1BMTEFfQkFTRQo+Pj4gIAlwbGxfbG9ja2VkIHIxLCByMCwgQ0xL
X1JFU0VUX1BMTENfQkFTRQo+Pj4gQEAgLTUyNiw2ICs1NDEsOCBAQCBfX25vX2R1YWxfZW1jX2No
YW5sOgo+Pj4gIEVORFBST0ModGVncmEzMF9scDFfcmVzZXQpCj4+PiAgCj4+PiAgCS5hbGlnbglM
MV9DQUNIRV9TSElGVAo+Pj4gK3RlZ3JhX3BsbG1fc3RhdHVzOgo+Pj4gKwkud29yZAkwCj4+PiAg
dGVncmEzMF9zZHJhbV9wYWRfYWRkcmVzczoKPj4+ICAJLndvcmQJVEVHUkFfRU1DX0JBU0UgKyBF
TUNfQ0ZHCQkJCUAweDAKPj4+ICAJLndvcmQJVEVHUkFfRU1DX0JBU0UgKyBFTUNfWkNBTF9JTlRF
UlZBTAkJCUAweDQKPj4+IEBAIC02MjQsMTAgKzY0MSwxNCBAQCB0ZWdyYTMwX3N3aXRjaF9jcHVf
dG9fY2xrMzJrOgo+Pj4gIAlhZGQJcjEsIHIxLCAjMgo+Pj4gIAl3YWl0X3VudGlsIHIxLCByNywg
cjkKPj4KPj4KPj4+IC0JLyogZGlzYWJsZSBQTExNIHZpYSBQTUMgaW4gTFAxICovCj4+PiArCS8q
IGRpc2FibGUgUExMTSwgaWYgZW5hYmxlZCwgdmlhIFBNQyBpbiBMUDEgKi8KPj4+ICsJYWRyCXIx
LCB0ZWdyYV9wbGxtX3N0YXR1cwo+Pj4gIAlsZHIJcjAsIFtyNCwgI1BNQ19QTExQX1dCMF9PVkVS
UklERV0KPj4+IC0JYmljCXIwLCByMCwgIygxIDw8IDEyKQo+Pj4gLQlzdHIJcjAsIFtyNCwgI1BN
Q19QTExQX1dCMF9PVkVSUklERV0KPj4+ICsJYW5kCXIyLCByMCwgIygxIDw8IDEyKQo+Pj4gKwlz
dHIgICAgIHIyLCBbcjFdCj4+PiArCWNtcAlyMiwgIygxIDw8IDEyKQo+Pj4gKwliaWNlcQlyMCwg
cjAsICMoMSA8PCAxMikKPj4+ICsJc3RyZXEJcjAsIFtyNCwgI1BNQ19QTExQX1dCMF9PVkVSUklE
RV0KPj4+ICAKPj4+ICAJLyogZGlzYWJsZSBQTExQLCBQTExBLCBQTExDIGFuZCBQTExYICovCj4+
PiAgCWxkcglyMCwgW3I1LCAjQ0xLX1JFU0VUX1BMTFBfQkFTRV0KPj4KPj4gUExMTSdzIGVuYWJs
ZS1zdGF0dXMgY291bGQgYmUgZGVmaW5lZCBlaXRoZXIgYnkgUE1DIG9yIENhUi4gVGh1cyBhdAo+
PiBmaXJzdCB5b3UgbmVlZCB0byBjaGVjayB3aGV0aGVyIFBNQyBvdmVycmlkZXMgQ2FSJ3MgZW5h
YmxlIGFuZCB0aGVuCj4+IGp1ZGdlIHRoZSBlbmFibGUgc3RhdGUgYmFzZWQgb24gUE1DIG9yIENh
UiBzdGF0ZSByZXNwZWN0aXZlbHkuCj4+Cj4gCj4gQWN0dWFsbHksIG5vdyBJIHRoaW5rIHRoYXQg
aXQgZG9lc24ndCBtYWtlIHNlbnNlIHRvIGNoZWNrIFBNQyBXQjAgc3RhdGUKPiBhdCBhbGwuIElJ
VUMsIFBMTE0ncyBzdGF0ZSBvZiB0aGUgV0IwIHJlZ2lzdGVyIGRlZmluZXMgd2hldGhlciBCb290
IFJPTQo+IHNob3VsZCBlbmFibGUgUExMTSBvbiByZXN1bWUgZnJvbSBzdXNwZW5kLiBUaHVzIGl0
IHdpbGwgYmUgY29ycmVjdCB0bwo+IGNoZWNrIG9ubHkgdGhlIENhUidzIGVuYWJsZS1zdGF0ZSBv
ZiBQTExNLgoKVGhhbmtzIGZvciBwb2ludGluZyB0aGlzIG91dCBhbmQgc29ycnkgZm9yIHRoZSBk
ZWxheS4gSG93ZXZlciwgSSBhbSBub3QKc3VyZSBJIGFncmVlIHRoYXQgd2Ugc2hvdWxkIG5vdCBj
aGVjayB0aGlzIGF0IGFsbC4gSWYgdGhlIG92ZXJyaWRlIGJpdAppcyBzZXQsIHRoZW4gd2UgZG8g
d2FudCB0byBjaGVjayB0aGUgc3RhdGUgZnJvbSB0aGUgUE1DIHJlZ2lzdGVyIGFuZCBpZgppdCBp
cyBub3QgdGhlbiB3ZSBzaG91bGQganVzdCB1c2UgdGhlIFBMTE0gcmVnaXN0ZXIgaXRzZWxmLgoK
PiBMb29rcyBsaWtlIGl0IGlzIGEgYml0IG9mIG5vbnNlbnNlIHRoYXQgY2xrX3BsbF9pc19lbmFi
bGVkKCkgY2hlY2tzCj4gUE1DX1BMTFBfV0IwX09WRVJSSURFX1BMTE1fRU5BQkxFIGZvciBqdWRn
aW5nIG9mIHRoZSBlbmFibGUtc3RhdGUuIFRoaXMKPiBpcyBub3QgdGhlIGZpcnN0IHRpbWUgSSdt
IGdldHRpbmcgY29uZnVzZWQgYnkgaXQsIHBlcmhhcHMgd2lsbCBiZQo+IHdvcnRod2hpbGUgdG8g
Y2xlYW4gdXAgdGhhdCBwYXJ0IG9mIHRoZSBjbGsgZHJpdmVyJ3MgY29kZSAoaWYgSSdtIG5vdAo+
IG1pc3Npbmcgc29tZXRoaW5nKS4KClRoYXQgY29kZSBsb29rcyBmaW5lIHRvIG1lLiBJIGp1c3Qg
dGhpbmsgdGhpcyBjb2RlIGVudGVyaW5nIGFuZCBleGl0aW5nCnN1c3BlbmQgbmVlZHMgdG8gYmUg
Zml4ZWQuIEkgd2lsbCByZS13b3JrIHRoaXMgZml4LgoKSm9uCgotLSAKbnZwdWJsaWMKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
