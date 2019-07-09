Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C59663719
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 15:39:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iEWSal3m173FJ98xX1fDpMCTUJeY6Fq5RgOnYSHY65w=; b=OszjzfznN70zSVeATKm2GBDSe
	Hx9L3kmUFOilr5A6utzd7Sb4XerZvaw1k4HKMJXjUTE8R7Yhi1BxibkwvAoKvLvDVof4Z80dpyQa7
	kcKoQwYgJekji8804A9zq9P7OSMrlgR0hBvCzpiASLlZmineMgfehVGo4y6gMmbrfMS2zp0dTXGKe
	CMhbDhijksTljnVaPURjpyptgZ6HW6jaEDiM6hRgKKT4gGdsY1ftwnnjQFmvVQGHh3oLExcf4heou
	A+TR9n6GwWs9Ic9tXDLyLqqPmkJZKaTFkjZZn/XIC245rUq8vy6Lx5Arjk9FZgBf8rnG7+c/RLKRQ
	k0J3+LWVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkqKq-0002Iv-Ah; Tue, 09 Jul 2019 13:39:08 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkqKf-0002Hu-GG
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 13:38:58 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d2498ea0000>; Tue, 09 Jul 2019 06:38:50 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Tue, 09 Jul 2019 06:38:55 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Tue, 09 Jul 2019 06:38:55 -0700
Received: from [10.25.74.15] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 9 Jul
 2019 13:38:49 +0000
Subject: Re: [PATCH V12 01/12] PCI: Add #defines for some of PCIe spec r4.0
 features
From: Vidya Sagar <vidyas@nvidia.com>
To: <bhelgaas@google.com>
References: <20190701124010.7484-1-vidyas@nvidia.com>
 <20190701124010.7484-2-vidyas@nvidia.com>
 <66d8af45-66f5-b597-0ea8-39e8662df5e6@nvidia.com>
X-Nvconfidentiality: public
Message-ID: <841a79fa-24ff-8710-456a-44f081230d8f@nvidia.com>
Date: Tue, 9 Jul 2019 19:08:46 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <66d8af45-66f5-b597-0ea8-39e8662df5e6@nvidia.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1562679530; bh=eH8RfLaPI82FgFhlZTVX588/yBLz0+QCElzGkG7NYFc=;
 h=X-PGP-Universal:Subject:From:To:CC:References:X-Nvconfidentiality:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=aCct5UmybzIIUCobuk1bacIiVcdUMSfBvPPs7i603WYBHXMYK+4IPlmmklNl7qZW8
 xLnxYlBQa4UBG/2FKpWDlz8D4jiAfMEnvmFnl5WkXgbe5xE+Snh4SuwMvnIJ9CJMZT
 HBj+K8d/0O1SSvA796hdO8+UqNh7hpJn7lhDdJetHlY2gdwCpwxW7WLctV7sXbK0+T
 vK1vnceH9Ry6QqWgPZjC57doyvrHAB74TjvW7+dnEykgmD6G361G962nCAZ1VVT01m
 rZGE+4HWfy/0t3O/WuiE2HYqs0PdFkpX5Nu4n9mOzKm7b8UGMbf4+GPpAwCvYgmePr
 LpD7zNfpQEfDQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_063857_558824_2094A0F4 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, kishon@ti.com, kthota@nvidia.com, thierry.reding@gmail.com,
 gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 linux-tegra@vger.kernel.org, digetx@gmail.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNy81LzIwMTkgNzoxNiBQTSwgVmlkeWEgU2FnYXIgd3JvdGU6CkJqb3JuLApBcG9sb2dpZXMg
Zm9yIHBpbmdpbmcgYWdhaW4gYWJvdXQgdGhpcy4KQ2FuIHlvdSBwbGVhc2UgcHJvdmlkZSBBY2sg
Zm9yIHRoaXMgY2hhbmdlIHNvIHRoYXQgTG9yZW56byBjYW4gcGljayB1cCB0aGlzIHNlcmllcz8K
ClRoYW5rcywKVmlkeWEgU2FnYXIKCj4gT24gNy8xLzIwMTkgNjowOSBQTSwgVmlkeWEgU2FnYXIg
d3JvdGU6Cj4gQmpvcm4sCj4gQ2FuIHlvdSBwbGVhc2UgcHJvdmlkZSBBY2sgZm9yIHRoaXMgcGF0
Y2g/Cj4gCj4gVGhhbmtzLAo+IFZpZHlhIFNhZ2FyCj4gCj4+IEFkZCAjZGVmaW5lcyBvbmx5IGZv
ciB0aGUgRGF0YSBMaW5rIEZlYXR1cmUgYW5kIFBoeXNpY2FsIExheWVyIDE2LjAgR1Qvcwo+PiBm
ZWF0dXJlcy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogVmlkeWEgU2FnYXIgPHZpZHlhc0BudmlkaWEu
Y29tPgo+PiBSZXZpZXdlZC1ieTogVGhpZXJyeSBSZWRpbmcgPHRyZWRpbmdAbnZpZGlhLmNvbT4K
Pj4gLS0tCj4+IENoYW5nZXMgc2luY2UgW3YxMV06Cj4+ICogTm9uZQo+Pgo+PiBDaGFuZ2VzIHNp
bmNlIFt2MTBdOgo+PiAqIE5vbmUKPj4KPj4gQ2hhbmdlcyBzaW5jZSBbdjldOgo+PiAqIE5vbmUK
Pj4KPj4gQ2hhbmdlcyBzaW5jZSBbdjhdOgo+PiAqIE5vbmUKPj4KPj4gQ2hhbmdlcyBzaW5jZSBb
djddOgo+PiAqIE5vbmUKPj4KPj4gQ2hhbmdlcyBzaW5jZSBbdjZdOgo+PiAqIE5vbmUKPj4KPj4g
Q2hhbmdlcyBzaW5jZSBbdjVdOgo+PiAqIE5vbmUKPj4KPj4gQ2hhbmdlcyBzaW5jZSBbdjRdOgo+
PiAqIE5vbmUKPj4KPj4gQ2hhbmdlcyBzaW5jZSBbdjNdOgo+PiAqIE5vbmUKPj4KPj4gQ2hhbmdl
cyBzaW5jZSBbdjJdOgo+PiAqIFVwZGF0ZWQgY29tbWl0IG1lc3NhZ2UgYW5kIGRlc2NyaXB0aW9u
IHRvIGV4cGxpY2l0bHkgbWVudGlvbiB0aGF0IGRlZmluZXMgYXJlCj4+IMKgwqAgYWRkZWQgb25s
eSBmb3Igc29tZSBvZiB0aGUgZmVhdHVyZXMgYW5kIG5vdCBhbGwuCj4+Cj4+IENoYW5nZXMgc2lu
Y2UgW3YxXToKPj4gKiBOb25lCj4+Cj4+IMKgIGluY2x1ZGUvdWFwaS9saW51eC9wY2lfcmVncy5o
IHwgMjIgKysrKysrKysrKysrKysrKysrKysrLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMjEgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBp
L2xpbnV4L3BjaV9yZWdzLmggYi9pbmNsdWRlL3VhcGkvbGludXgvcGNpX3JlZ3MuaAo+PiBpbmRl
eCBmMjhlNTYyZDdjYTguLjFjNzlmNmEwOTdkMiAxMDA2NDQKPj4gLS0tIGEvaW5jbHVkZS91YXBp
L2xpbnV4L3BjaV9yZWdzLmgKPj4gKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L3BjaV9yZWdzLmgK
Pj4gQEAgLTcxMyw3ICs3MTMsOSBAQAo+PiDCoCAjZGVmaW5lIFBDSV9FWFRfQ0FQX0lEX0RQQ8Kg
wqDCoCAweDFEwqDCoMKgIC8qIERvd25zdHJlYW0gUG9ydCBDb250YWlubWVudCAqLwo+PiDCoCAj
ZGVmaW5lIFBDSV9FWFRfQ0FQX0lEX0wxU1PCoMKgwqAgMHgxRcKgwqDCoCAvKiBMMSBQTSBTdWJz
dGF0ZXMgKi8KPj4gwqAgI2RlZmluZSBQQ0lfRVhUX0NBUF9JRF9QVE3CoMKgwqAgMHgxRsKgwqDC
oCAvKiBQcmVjaXNpb24gVGltZSBNZWFzdXJlbWVudCAqLwo+PiAtI2RlZmluZSBQQ0lfRVhUX0NB
UF9JRF9NQVjCoMKgwqAgUENJX0VYVF9DQVBfSURfUFRNCj4+ICsjZGVmaW5lIFBDSV9FWFRfQ0FQ
X0lEX0RMRsKgwqDCoCAweDI1wqDCoMKgIC8qIERhdGEgTGluayBGZWF0dXJlICovCj4+ICsjZGVm
aW5lIFBDSV9FWFRfQ0FQX0lEX1BMwqDCoMKgIDB4MjbCoMKgwqAgLyogUGh5c2ljYWwgTGF5ZXIg
MTYuMCBHVC9zICovCj4+ICsjZGVmaW5lIFBDSV9FWFRfQ0FQX0lEX01BWMKgwqDCoCBQQ0lfRVhU
X0NBUF9JRF9QTAo+PiDCoCAjZGVmaW5lIFBDSV9FWFRfQ0FQX0RTTl9TSVpFT0bCoMKgwqAgMTIK
Pj4gwqAgI2RlZmluZSBQQ0lfRVhUX0NBUF9NQ0FTVF9FTkRQT0lOVF9TSVpFT0YgNDAKPj4gQEAg
LTEwNTMsNCArMTA1NSwyMiBAQAo+PiDCoCAjZGVmaW5lwqAgUENJX0wxU1NfQ1RMMV9MVFJfTDEy
X1RIX1NDQUxFwqDCoMKgIDB4ZTAwMDAwMDDCoCAvKiBMVFJfTDEuMl9USFJFU0hPTERfU2NhbGUg
Ki8KPj4gwqAgI2RlZmluZSBQQ0lfTDFTU19DVEwywqDCoMKgwqDCoMKgwqAgMHgwY8KgwqDCoCAv
KiBDb250cm9sIDIgUmVnaXN0ZXIgKi8KPj4gKy8qIERhdGEgTGluayBGZWF0dXJlICovCj4+ICsj
ZGVmaW5lIFBDSV9ETEZfQ0FQwqDCoMKgwqDCoMKgwqAgMHgwNMKgwqDCoCAvKiBDYXBhYmlsaXRp
ZXMgUmVnaXN0ZXIgKi8KPj4gKyNkZWZpbmXCoCBQQ0lfRExGX0xPQ0FMX0RMRl9TVVBfTUFTS8Kg
wqDCoCAweDAwN2ZmZmZmwqAgLyogTG9jYWwgRGF0YSBMaW5rIEZlYXR1cmUgU3VwcG9ydGVkICov
Cj4+ICsjZGVmaW5lwqAgUENJX0RMRl9FWENIQU5HRV9FTkFCTEXCoMKgwqAgMHg4MDAwMDAwMMKg
IC8qIERhdGEgTGluayBGZWF0dXJlIEV4Y2hhbmdlIEVuYWJsZSAqLwo+PiArI2RlZmluZSBQQ0lf
RExGX1NUU8KgwqDCoMKgwqDCoMKgIDB4MDjCoMKgwqAgLyogU3RhdHVzIFJlZ2lzdGVyICovCj4+
ICsjZGVmaW5lwqAgUENJX0RMRl9SRU1PVEVfRExGX1NVUF9NQVNLwqDCoMKgIDB4MDA3ZmZmZmbC
oCAvKiBSZW1vdGUgRGF0YSBMaW5rIEZlYXR1cmUgU3VwcG9ydGVkICovCj4+ICsjZGVmaW5lwqAg
UENJX0RMRl9SRU1PVEVfRExGX1NVUF9WQUxJRMKgwqDCoCAweDgwMDAwMDAwwqAgLyogUmVtb3Rl
IERhdGEgTGluayBGZWF0dXJlIFN1cHBvcnQgVmFsaWQgKi8KPj4gKwo+PiArLyogUGh5c2ljYWwg
TGF5ZXIgMTYuMCBHVC9zICovCj4+ICsjZGVmaW5lIFBDSV9QTF8xNkdUX0NBUMKgwqDCoMKgwqDC
oMKgIDB4MDTCoMKgwqAgLyogQ2FwYWJpbGl0aWVzIFJlZ2lzdGVyICovCj4+ICsjZGVmaW5lIFBD
SV9QTF8xNkdUX0NUUkzCoMKgwqAgMHgwOMKgwqDCoCAvKiBDb250cm9sIFJlZ2lzdGVyICovCj4+
ICsjZGVmaW5lIFBDSV9QTF8xNkdUX1NUU8KgwqDCoMKgwqDCoMKgIDB4MGPCoMKgwqAgLyogU3Rh
dHVzIFJlZ2lzdGVyICovCj4+ICsjZGVmaW5lIFBDSV9QTF8xNkdUX0xEUE1fU1RTwqDCoMKgIDB4
MTDCoMKgwqAgLyogTG9jYWwgRGF0YSBQYXJpdHkgTWlzbWF0Y2ggU3RhdHVzIFJlZ2lzdGVyICov
Cj4+ICsjZGVmaW5lIFBDSV9QTF8xNkdUX0ZSRFBNX1NUU8KgwqDCoCAweDE0wqDCoMKgIC8qIEZp
cnN0IFJldGltZXIgRGF0YSBQYXJpdHkgTWlzbWF0Y2ggU3RhdHVzIFJlZ2lzdGVyICovCj4+ICsj
ZGVmaW5lIFBDSV9QTF8xNkdUX1NSRFBNX1NUU8KgwqDCoCAweDE4wqDCoMKgIC8qIFNlY29uZCBS
ZXRpbWVyIERhdGEgUGFyaXR5IE1pc21hdGNoIFN0YXR1cyBSZWdpc3RlciAqLwo+PiArI2RlZmlu
ZSBQQ0lfUExfMTZHVF9SU1ZEwqDCoMKgIDB4MUPCoMKgwqAgLyogUmVzZXJ2ZWQgKi8KPj4gKyNk
ZWZpbmUgUENJX1BMXzE2R1RfTEVfQ1RSTMKgwqDCoCAweDIwwqDCoMKgIC8qIExhbmUgRXF1YWxp
emF0aW9uIENvbnRyb2wgUmVnaXN0ZXIgKi8KPj4gKwo+PiDCoCAjZW5kaWYgLyogTElOVVhfUENJ
X1JFR1NfSCAqLwo+Pgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
