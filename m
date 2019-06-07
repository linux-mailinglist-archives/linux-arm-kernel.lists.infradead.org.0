Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2EC38BE7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 15:45:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xO2R4TSp8oh21D4zJ2+Njs6KrvzKP4agN2ulE71QNgY=; b=oHXXL20jbOhaz1zDKc5otq5Q6
	N7+1cnoNpjPeYoBDLeL5gpbDle5+u5wTu1y8iI97O4wMRRa+BYXb5rILcNTnIm9rhi9Y3Ev6Ie3av
	spvscwdTW//h+VMrHFD3YEd1kJOlWi5SziYpMXje4ocMjdjO3r7gZDI5+xz/6PDGiYWfi2J8eM1hx
	hgR3nxF15E+9Dsk9SFhgkYFwxDKeYbPTXKqqMgqsnv3fbVEzicFHMvUgrrlA1KUU5ouvcBDafvReN
	DdI0iMljAtsGYtI9b8k2O52+o9NOy9HYJZosqxWotkdfe3ePohTOgAhmo9igNXhF9qqIlewtaCmmj
	PELLdZIcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZFBn-0008TE-PR; Fri, 07 Jun 2019 13:45:51 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZFBe-0008S2-LI
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 13:45:44 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cfa6a850000>; Fri, 07 Jun 2019 06:45:41 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 07 Jun 2019 06:45:41 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 07 Jun 2019 06:45:41 -0700
Received: from [10.25.74.159] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 7 Jun
 2019 13:45:35 +0000
Subject: Re: [PATCH V8 13/15] phy: tegra: Add PCIe PIPE2UPHY support
To: Dmitry Osipenko <digetx@gmail.com>, <lorenzo.pieralisi@arm.com>,
 <bhelgaas@google.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <kishon@ti.com>,
 <catalin.marinas@arm.com>, <will.deacon@arm.com>, <jingoohan1@gmail.com>,
 <gustavo.pimentel@synopsys.com>
References: <20190526043751.12729-1-vidyas@nvidia.com>
 <20190526043751.12729-14-vidyas@nvidia.com>
 <c81c5d42-4292-ba6d-b5ab-afe1a604115f@gmail.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <5a5545c8-9e4c-b459-c40e-9e1c4e5daf5b@nvidia.com>
Date: Fri, 7 Jun 2019 19:15:32 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <c81c5d42-4292-ba6d-b5ab-afe1a604115f@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1559915141; bh=X7YbyMYnPU4o/uuTsDoXMzQCmQIN7PmhE/enZhHNCbs=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=razz/z/YkMUuZJAs2q0s0SSZ/bUR5omne4pEFftfOU61dLcPqJXKCsGHE3NcpO35+
 8/F2iY2hVc46KAjY6gmEvqpg5fZ3KSxtuPhgOMOwYKMqeO9JIGY6v17MKg2Or+8u+H
 KlITvD4TlEvUpP4ZaERzjMOe/Uw/MNFgiZuqHAY4aQAOWJUJ1FuVnWa356Z1OJu5RL
 Y6R72p7/fJwuiWR/h3U5Eh8WMG0HEStRFp9Pr9OgZGW/VJAIAyZZoqfbqcIqzCExV0
 phKG+yMITM2HvqQyAOuTLfbzBgJQSbyydm6e2I9WMYP+4QQY+Fq8/03gsOCNAchoQG
 +1xx4qJ63FuHA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_064542_710544_F754B80A 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, mperttunen@nvidia.com,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNi82LzIwMTkgMTA6MDAgUE0sIERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPiAyNi4wNS4yMDE5
IDc6MzcsIFZpZHlhIFNhZ2FyINC/0LjRiNC10YI6Cj4+IFN5bm9wc3lzIERlc2lnbldhcmUgY29y
ZSBiYXNlZCBQQ0llIGNvbnRyb2xsZXJzIGluIFRlZ3JhIDE5NCBTb0MgaW50ZXJmYWNlCj4+IHdp
dGggVW5pdmVyc2FsIFBIWSAoVVBIWSkgbW9kdWxlIHRocm91Z2ggYSBQSVBFMlVQSFkgKFAyVSkg
bW9kdWxlLgo+PiBGb3IgZWFjaCBQQ0llIGxhbmUgb2YgYSBjb250cm9sbGVyLCB0aGVyZSBpcyBh
IFAyVSB1bml0IGluc3RhbnRpYXRlZCBhdAo+PiBoYXJkd2FyZSBsZXZlbC4gVGhpcyBkcml2ZXIg
cHJvdmlkZXMgc3VwcG9ydCBmb3IgdGhlIHByb2dyYW1taW5nIHJlcXVpcmVkCj4+IGZvciBlYWNo
IFAyVSB0aGF0IGlzIGdvaW5nIHRvIGJlIHVzZWQgZm9yIGEgUENJZSBjb250cm9sbGVyLgo+Pgo+
PiBTaWduZWQtb2ZmLWJ5OiBWaWR5YSBTYWdhciA8dmlkeWFzQG52aWRpYS5jb20+Cj4+IC0tLQo+
PiBDaGFuZ2VzIHNpbmNlIFt2N106Cj4+ICogQ2hhbmdlZCBQMlUgZHJpdmVyIGZpbGUgbmFtZSBm
cm9tIHBjaWUtcDJ1LXRlZ3JhMTk0LmMgdG8gcGh5LXRlZ3JhMTk0LXAydS5jCj4+Cj4+IENoYW5n
ZXMgc2luY2UgW3Y2XToKPj4gKiBOb25lCj4+Cj4+IENoYW5nZXMgc2luY2UgW3Y1XToKPj4gKiBB
ZGRyZXNzZWQgcmV2aWV3IGNvbW1lbnRzIGZyb20gVGhpZXJyeQo+Pgo+PiBDaGFuZ2VzIHNpbmNl
IFt2NF06Cj4+ICogTm9uZQo+Pgo+PiBDaGFuZ2VzIHNpbmNlIFt2M106Cj4+ICogUmViYXNlZCBv
biB0b3Agb2YgbGludXgtbmV4dCB0b3Agb2YgdGhlIHRyZWUKPj4KPj4gQ2hhbmdlcyBzaW5jZSBb
djJdOgo+PiAqIFJlcGxhY2VkIHNwYWNlcyB3aXRoIHRhYnMgaW4gS2NvbmZpZyBmaWxlCj4+ICog
U29ydGVkIGhlYWRlciBmaWxlIGluY2x1c2lvbiBhbHBoYWJldGljYWxseQo+Pgo+PiBDaGFuZ2Vz
IHNpbmNlIFt2MV06Cj4+ICogQWRkZWQgQ09NUElMRV9URVNUIGluIEtjb25maWcKPj4gKiBSZW1v
dmVkIGVtcHR5IHBoeV9vcHMgaW1wbGVtZW50YXRpb25zCj4+ICogTW9kaWZpZWQgY29kZSBhY2Nv
cmRpbmcgdG8gRFQgZG9jdW1lbnRhdGlvbiBmaWxlIG1vZGlmaWNhdGlvbnMKPj4KPj4gICBkcml2
ZXJzL3BoeS90ZWdyYS9LY29uZmlnICAgICAgICAgICAgfCAgIDcgKysKPj4gICBkcml2ZXJzL3Bo
eS90ZWdyYS9NYWtlZmlsZSAgICAgICAgICAgfCAgIDEgKwo+PiAgIGRyaXZlcnMvcGh5L3RlZ3Jh
L3BoeS10ZWdyYTE5NC1wMnUuYyB8IDEwOSArKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4g
ICAzIGZpbGVzIGNoYW5nZWQsIDExNyBpbnNlcnRpb25zKCspCj4+ICAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvcGh5L3RlZ3JhL3BoeS10ZWdyYTE5NC1wMnUuYwo+Pgo+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9waHkvdGVncmEvS2NvbmZpZyBiL2RyaXZlcnMvcGh5L3RlZ3JhL0tjb25maWcK
Pj4gaW5kZXggYTNiMWRlOTUzZmI3Li5jNTZmYzg0NTJlMDMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZl
cnMvcGh5L3RlZ3JhL0tjb25maWcKPj4gKysrIGIvZHJpdmVycy9waHkvdGVncmEvS2NvbmZpZwo+
PiBAQCAtNiwzICs2LDEwIEBAIGNvbmZpZyBQSFlfVEVHUkFfWFVTQgo+PiAgIAo+PiAgIAkgIFRv
IGNvbXBpbGUgdGhpcyBkcml2ZXIgYXMgYSBtb2R1bGUsIGNob29zZSBNIGhlcmU6IHRoZSBtb2R1
bGUgd2lsbAo+PiAgIAkgIGJlIGNhbGxlZCBwaHktdGVncmEteHVzYi4KPj4gKwo+PiArY29uZmln
IFBIWV9URUdSQTE5NF9QMlUKPj4gKwl0cmlzdGF0ZSAiTlZJRElBIFRlZ3JhMTk0IFBJUEUyVVBI
WSBQSFkgZHJpdmVyIgo+PiArCWRlcGVuZHMgb24gQVJDSF9URUdSQSB8fCBDT01QSUxFX1RFU1QK
PiAKPiBBUkNIX1RFR1JBIGlzIGEgYml0IHRvbyBtdWNoLCBBUkNIX1RFR1JBXzE5NF9TT0Mgc2hv
dWxkIGZpdCBiZXR0ZXIgaGVyZS4KPiAKT2suIEknbGwgdGFrZSBjYXJlIG9mIGl0IGluIHRoZSBu
ZXh0IHBhdGNoIHNlcmllcy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
