Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DB11DB1C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:30:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JgHcOEbCcFOt9QkyCgz4TGaDUJFW1ftKI6gvCyExzSw=; b=ODEFCfLC+E4tL5dN87ElLBNFA
	DFTMujWS9W0hY4/NRhgFq0ThRYnw363uwTUtBh8dQdSOYDTEnoH0QAseQhxAtG79lh/gGuUljBiGB
	geXTClfE3KssRKm/YJx02iHwsGqSdmf3wj8/lb0o/cabHh7vhKBXVxAudbbrNo7ANrohQEX2vzNZc
	rGDRrQPcB1ra5/y1vPT1uvLDc5UhkEjXNcJsNzSfCRqUHxzHUXZynkD2kmw45eWEkKaDwaaTtDp87
	m2MlGuNh8umq+hDnsT7nSEHek6/kVTNKjU9U9SYc07Vap2D27yUnZZGHrSMpypb3rPq9XK0zm2Sko
	A3OVT82Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMvg-00026C-4H; Wed, 20 May 2020 11:30:32 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMuM-0001Pp-Im
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:29:13 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 96BA5E6039F64A421650;
 Wed, 20 May 2020 12:29:06 +0100 (IST)
Received: from [127.0.0.1] (10.210.167.247) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Wed, 20 May
 2020 12:29:05 +0100
Subject: Re: BUG: sleeping function called from atomic due to "Balance initial
 LPI affinity across CPUs"
To: Marc Zyngier <maz@kernel.org>
References: <CAG=TAF6hJL-wfGLq3oa-ZGk3-YGEtuMyO2V9ePFUcbv99NWVSw@mail.gmail.com>
 <81796a6e-718a-aa93-d183-6747e0654c8c@huawei.com>
 <e07d73938a7534c6c2cd0517de378fcd@kernel.org>
From: John Garry <john.garry@huawei.com>
Message-ID: <e47cf647-0a9a-e3ae-063f-ce17b6229400@huawei.com>
Date: Wed, 20 May 2020 12:28:07 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <e07d73938a7534c6c2cd0517de378fcd@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.210.167.247]
X-ClientProxiedBy: lhreml745-chm.china.huawei.com (10.201.108.195) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_042910_782854_A3766C36 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [185.176.76.210 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>, Qian Cai <cai@lca.pw>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAvMDUvMjAyMCAxMDo1MSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IEhpIEpvaG4sCj4gCj4g
T24gMjAyMC0wNS0yMCAwOTo0MywgSm9obiBHYXJyeSB3cm90ZToKPj4gT24gMTkvMDUvMjAyMCAy
MzowOSwgUWlhbiBDYWkgd3JvdGU6Cj4+PiBSZXZlcnRlZCB0aGUgbGludXgtbmV4dCBjb21taXQg
ZjA2OGE2MmM1NDhjICgiaXJxY2hpcC9naWMtdjMtaXRzOgo+Pj4gQmFsYW5jZSBpbml0aWFsIExQ
SSBhZmZpbml0eSBhY3Jvc3MgQ1BVcyIpIGZpeGVkIHRoZXNlIHdhcm5pbmdzIGR1cmluZwo+Pj4g
Ym9vdCwKPj4KPj4gVGhhbmtzIGZvciB0aGUgbm90aWNlLiBTbyB3ZSBuZWVkIHRoZSBmb2xsb3dp
bmcgc2V0IHRvIHNlZSB0aGlzOgo+PiBDT05GSUdfQ1BVTUFTS19PRkZTVEFDSz15Cj4+IENPTkZJ
R19ERUJVR19BVE9NSUNfU0xFRVA9eQo+PiBDT05GSUdfREVCVUdfUEVSX0NQVV9NQVBTPXkKPiAK
PiBBaCwgdGhhbmtzIGZvciBwb2ludGluZyB0aGlzIG91dC4KPiAKPj4+IGl0c19zZWxlY3RfY3B1
IGF0IGRyaXZlcnMvaXJxY2hpcC9pcnEtZ2ljLXYzLWl0cy5jOjE1NzIKPj4+Cj4+PiBbwqAgMzMy
LjgxOTM4MV1bIFQzMzU5XSBCVUc6IHNsZWVwaW5nIGZ1bmN0aW9uIGNhbGxlZCBmcm9tIGludmFs
aWQKPj4+IGNvbnRleHQgYXQgbW0vc2xhYi5oOjU2OAo+Pj4gW8KgIDMzMi44Mjc0MDVdWyBUMzM1
OV0gaW5fYXRvbWljKCk6IDEsIGlycXNfZGlzYWJsZWQoKTogMTI4LAo+Pj4gbm9uX2Jsb2NrOiAw
LCBwaWQ6IDMzNTksIG5hbWU6IGlycWJhbGFuY2UKPj4+IFvCoCAzMzIuODM2NDU1XVsgVDMzNTld
IElORk86IGxvY2tkZXAgaXMgdHVybmVkIG9mZi4KPj4+IFvCoCAzMzIuODQxMDc2XVsgVDMzNTld
IGlycSBldmVudCBzdGFtcDogMAo+Pj4gW8KgIDMzMi44NDQ4MzZdWyBUMzM1OV0gaGFyZGlycXMg
bGFzdMKgIGVuYWJsZWQgYXQgKDApOiAKPj4+IFs8MDAwMDAwMDAwMDAwMDAwMD5dIDB4MAo+Pj4g
W8KgIDMzMi44NTE4MjhdWyBUMzM1OV0gaGFyZGlycXMgbGFzdCBkaXNhYmxlZCBhdCAoMCk6Cj4+
PiBbPGZmZmY5MDAwMTAxZWE2NWM+XSBjb3B5X3Byb2Nlc3MrMHg5OGMvMHgxZjM0Cj4+PiBbwqAg
MzMyLjg2MDcxMF1bIFQzMzU5XSBzb2Z0aXJxcyBsYXN0wqAgZW5hYmxlZCBhdCAoMCk6Cj4+PiBb
PGZmZmY5MDAwMTAxZWE2OTA+XSBjb3B5X3Byb2Nlc3MrMHg5YzAvMHgxZjM0Cj4+PiBbwqAgMzMy
Ljg2OTU4Nl1bIFQzMzU5XSBzb2Z0aXJxcyBsYXN0IGRpc2FibGVkIGF0ICgwKTogCj4+PiBbPDAw
MDAwMDAwMDAwMDAwMDA+XSAweDAKPj4+IFvCoCAzMzIuODc2NTYwXVsgVDMzNTldIENQVTogMTU1
IFBJRDogMzM1OSBDb21tOiBpcnFiYWxhbmNlIFRhaW50ZWQ6IEcKPj4+IMKgwqDCoMKgwqDCoCBX
wqDCoMKgIEzCoMKgwqAgNS43LjAtcmM2LW5leHQtMjAyMDA1MTkgIzEKPj4+IFvCoCAzMzIuODg2
NTYzXVsgVDMzNTldIEhhcmR3YXJlIG5hbWU6IEhQRSBBcG9sbG8gNzAKPj4+IC9DMDFfQVBBQ0hF
X01CwqDCoMKgwqDCoMKgwqDCoCAsIEJJT1MgTDUwXzUuMTNfMS4xMSAwNi8xOC8yMDE5Cj4+PiBb
wqAgMzMyLjg5NzAwMF1bIFQzMzU5XSBDYWxsIHRyYWNlOgo+Pj4gW8KgIDMzMi45MDAxNTFdWyBU
MzM1OV3CoCBkdW1wX2JhY2t0cmFjZSsweDAvMHgyMmMKPj4+IFvCoCAzMzIuOTA0NTE0XVsgVDMz
NTldwqAgc2hvd19zdGFjaysweDI4LzB4MzQKPj4+IFvCoCAzMzIuOTA4NTQzXVsgVDMzNTldwqAg
ZHVtcF9zdGFjaysweDEwNC8weDE5NAo+Pj4gW8KgIDMzMi45MTI3MzhdWyBUMzM1OV3CoCBfX19t
aWdodF9zbGVlcCsweDMxNC8weDMyOAo+Pj4gW8KgIDMzMi45MTcyNzRdWyBUMzM1OV3CoCBfX21p
Z2h0X3NsZWVwKzB4N2MvMHhlMAo+Pj4gW8KgIDMzMi45MjE1NjNdWyBUMzM1OV3CoCBzbGFiX3By
ZV9hbGxvY19ob29rKzB4NDQvMHg4Ywo+Pj4gW8KgIDMzMi45MjYzNjBdWyBUMzM1OV3CoCBfX2tt
YWxsb2Nfbm9kZSsweGIwLzB4NjE4Cj4+PiBbwqAgMzMyLjkzMDgxMV1bIFQzMzU5XcKgIGFsbG9j
X2NwdW1hc2tfdmFyX25vZGUrMHg0OC8weDk0Cj4+Cj4+IFdlIGNvdWxkIHVzZSBHRlBfQVRPTUlD
IGZsYWcgYXQgdGhlIGNhbGxzaXRlIGhlcmUsIGJ1dCBtYXliZSB0aGVyZSBpcwo+PiBhIGJldHRl
ciBzb2x1dGlvbi4KPiAKPiBJIGRvbid0IHNlZSBvbmUsIGFuZCBJIGRvdWJ0IGl0IGlzIHdvcnRo
IHRoZSBoYXNzbGUgdG8gaGF2ZSBhbnl0aGluZwo+IGJ1dCBHRlBfQVRPTUlDLiBUaGUgZGVmYXVs
dCBhcm02NCBjb25maWcgaXMgdG8gaGF2ZSBvbi1zdGFjayBjcHVtYXNrcywKPiBhbmQgb25seSBE
RUJVR19QRVJfQ1BVX01BUFMgYWxsb3dzIHRoaXMgdG8gYmUgY2hhbmdlZC4KCkpGWUksIEkgd2Fz
IGFibGUgdG8gcmVjcmVhdGUgb24gbXkgRDA1OgoKWzExLjk1MTczOV0gQ1BVOiAyMSBQSUQ6IDEg
Q29tbTogc3dhcHBlci8wIFRhaW50ZWQ6IEcgClc1LjcuMC1yYzYtbmV4dC0yMDIwMDUxOS1kaXJ0
eSAjMTYKWzExLjk2MTI2Ml0gSGFyZHdhcmUgbmFtZTogSHVhd2VpIFRhaXNoYW4gMjI4MCAvRDA1
LCBCSU9TIEhpc2lsaWNvbiBEMDUgCklUMjEgTmVtbyAyLjAgUkMwIDA0LzE4LzIwMTgKWzExLjk3
MDQzNV0gQ2FsbCB0cmFjZToKWzExLjk3Mjg5MF0gIGR1bXBfYmFja3RyYWNlKzB4MC8weDFiMApb
MTEuOTc2NTYxXSAgc2hvd19zdGFjaysweDE0LzB4MWMKWzExLjk3OTg4NF0gIGR1bXBfc3RhY2sr
MHhjMC8weGYwClsxMS45ODMyMDddICBfX19taWdodF9zbGVlcCsweDEwYy8weDEyYwpbMTEuOTg3
MDUyXSAgX19taWdodF9zbGVlcCsweDRjLzB4ODAKWzExLjk5MDYzN10gIF9fa21hbGxvY19ub2Rl
KzB4MWFjLzB4MmRjClsxMS45OTQ0ODNdICBhbGxvY19jcHVtYXNrX3Zhcl9ub2RlKzB4MjgvMHg2
MApbMTEuOTk4ODUyXSAgYWxsb2NfY3B1bWFza192YXIrMHgxMC8weDE4ClsxMi4wMDI3ODddICBp
dHNfc2VsZWN0X2NwdSsweDJjLzB4MTljClsxMi4wMDY1NDZdICBpdHNfaXJxX2RvbWFpbl9hY3Rp
dmF0ZSsweDM4LzB4ZjAKWzEyLjAxMTAwNF0gIF9faXJxX2RvbWFpbl9hY3RpdmF0ZV9pcnErMHg2
Yy8weGFjClsxMi4wMTExMDhdIHNkIDA6MDo3OjA6IFtzZGhdIEF0dGFjaGVkIFNDU0kgZGlzawpb
MTIuMDE1NjM2XSAgX19pcnFfZG9tYWluX2FjdGl2YXRlX2lycSsweDM0LzB4YWMKWzEyLjAxNTYz
OF0gIF9faXJxX2RvbWFpbl9hY3RpdmF0ZV9pcnErMHgzNC8weGFjClsxMi4wMTU2NDBdICBpcnFf
ZG9tYWluX2FjdGl2YXRlX2lycSsweDNjLzB4NGMKWzEyLjAxNTY0M10gIGlycV9hY3RpdmF0ZSsw
eDIwLzB4MzAKWzEyLjAzNzQ4Ml0gIF9fc2V0dXBfaXJxKzB4NTM4LzB4NmVjClsxMi4wNDEwNjVd
ICByZXF1ZXN0X3RocmVhZGVkX2lycSsweGRjLzB4MThjClsxMi4wNDUzNTBdICB1c2JfYWRkX2hj
ZCsweDRiMC8weDZjMApbMTIuMDQ4OTM0XSAgZWhjaV9wbGF0Zm9ybV9wcm9iZSsweDFmNC8weDQz
OApbMTIuMDUzMjE4XSAgcGxhdGZvcm1fZHJ2X3Byb2JlKzB4NGMvMHhhMApbMTIuMDU3MjM5XSAg
cmVhbGx5X3Byb2JlKzB4ZjQvMHgzNWMKWzEyLjA2MDgyM10gIGRyaXZlcl9wcm9iZV9kZXZpY2Ur
MHg1NC8weGIwClsxMi4wNjQ5MzFdICBkZXZpY2VfZHJpdmVyX2F0dGFjaCsweDY4LzB4NzAKWzEy
LjA2OTEyNl0gIF9fZHJpdmVyX2F0dGFjaCsweDljLzB4ZjgKWzEyLjA3Mjg4NF0gIGJ1c19mb3Jf
ZWFjaF9kZXYrMHg1MC8weGEwClsxMi4wNzY3MzBdICBkcml2ZXJfYXR0YWNoKzB4MjAvMHgyOApb
MTIuMDgwMzEzXSAgYnVzX2FkZF9kcml2ZXIrMHgxNDgvMHgxZmMKWzEyLjA4NDE1OV0gIGRyaXZl
cl9yZWdpc3RlcisweDZjLzB4MTI0ClsxMi4wODgwMDVdICBfX3BsYXRmb3JtX2RyaXZlcl9yZWdp
c3RlcisweDQ4LzB4NTAKWzEyLjA5MjcyN10gIGVoY2lfcGxhdGZvcm1faW5pdCsweDU0LzB4NjQK
WzEyLjA5Njc0N10gIGRvX29uZV9pbml0Y2FsbCsweDUwLzB4MTk0ClsxMi4xMDA1OTNdICBrZXJu
ZWxfaW5pdF9mcmVlYWJsZSsweDFlNC8weDI1MApbMTIuMTA0OTY0XSAga2VybmVsX2luaXQrMHgx
MC8weDEwOApbMTIuMTA4NDYwXSAgcmV0X2Zyb21fZm9yaysweDEwLzB4MTgKWzEyLjExMjA3N10g
ZWhjaS1wbGF0Zm9ybSBQTlAwRDIwOjAwOiBpcnEgMzYxLCBpbyBtZW0gMHhhNzAyMDAwMAoKQW5k
IHNldHRpbmcgR0ZQX0FUT01JQyByZW1vdmVzIHRoYXQgQlVHLgoKQ2hlZXJzLApKb2huCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
