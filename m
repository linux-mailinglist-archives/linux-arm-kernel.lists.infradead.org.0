Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 700604F79C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 19:56:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V+gQJ2j/NSS/ftl1P78MpRB5NK+vEou4nLHlzLvutZk=; b=WZTDdw8WbkAz8QyMFcKE8rdvb
	NsaD7SognYYUb/T+QK/n/Zq6QKQK0DXUYZlQO0gs+yNWfDu6QaN5v9UeeBG+Z7malS3NwW94RLLxp
	G/uxsgm1W2IbXoJ4EOQ5Z7YFik1MtCJ2lKW9kSi3DzuG/kVJdsjUed0TsuII04KRFt8gR6rqDaqo4
	TjNQbhcYMJrgcISI8QBbMiGJnePA4Kv8DIXuZGYIW4d0PI8XIpHb/zyDLaLZfZPN221BrtXnZvPnn
	LSpXikNjLLuxn+1H0OO7+Q5r+DBljS49qTh3arGcq10eQTe8l3b+uUGNMV4P3kJPf/hXJys6BG5vE
	3JOgRz3ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hekFd-0007pT-TU; Sat, 22 Jun 2019 17:56:33 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hekFR-0007p7-Q2
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 17:56:23 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d0e6bc30000>; Sat, 22 Jun 2019 10:56:20 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Sat, 22 Jun 2019 10:56:20 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Sat, 22 Jun 2019 10:56:20 -0700
Received: from [10.25.72.60] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Sat, 22 Jun
 2019 17:56:13 +0000
Subject: Re: [PATCH V10 13/15] phy: tegra: Add PCIe PIPE2UPHY support
To: Dmitry Osipenko <digetx@gmail.com>, Kishon Vijay Abraham I
 <kishon@ti.com>, <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <thierry.reding@gmail.com>,
 <jonathanh@nvidia.com>, <catalin.marinas@arm.com>, <will.deacon@arm.com>,
 <jingoohan1@gmail.com>, <gustavo.pimentel@synopsys.com>
References: <20190612095339.20118-1-vidyas@nvidia.com>
 <20190612095339.20118-14-vidyas@nvidia.com>
 <9e699085-ef5e-f7be-e27c-23907ba92c82@ti.com>
 <68a6579b-af28-ed7e-35f8-d857638368ba@gmail.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <9fe060a1-947b-9fd4-d965-5393474116e1@nvidia.com>
Date: Sat, 22 Jun 2019 23:26:10 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <68a6579b-af28-ed7e-35f8-d857638368ba@gmail.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1561226180; bh=FPEqeVoOjkLE9CXebBQ5ns9O3vg2DvsSK/z3knmmwi4=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=cBMF6btYslhW+xqHD9ruSdhZ25KIXdXSaIwynub9LrME0LayuDOrnXFjWpeGS2oLq
 Oo79fRdomyCU7PsnhR8OGKko+FmSJlRpJz/Q/pNHD1Ky7yQ67Nf1mQMt28yOpg3aEH
 ijk4ES0kOHjA3kjXvUBs7KmcaW+ncOi5T0nEbWnqLIOB4B80ZhS2lNDl5pl+YFi/C6
 dDH92+p0tiYQVzB8XoTNz25WvIlMfCanNwVDjmRHhGC4ZYXGcYSEXKUQflxqPBmye5
 Z8XIcgRyT9u3GqIkShgdhXBgL+eciOFJj/gB0GtMH0jaPH0IX1KKa8ywZpEkuuDWuE
 P0Z5wQHBlq0oA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_105621_865498_2C50A383 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, mperttunen@nvidia.com,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNi8yMS8yMDE5IDQ6NTMgQU0sIERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPiAyMC4wNi4yMDE5
IDEwOjI0LCBLaXNob24gVmlqYXkgQWJyYWhhbSBJINC/0LjRiNC10YI6Cj4+Cj4+Cj4+IE9uIDEy
LzA2LzE5IDM6MjMgUE0sIFZpZHlhIFNhZ2FyIHdyb3RlOgo+Pj4gU3lub3BzeXMgRGVzaWduV2Fy
ZSBjb3JlIGJhc2VkIFBDSWUgY29udHJvbGxlcnMgaW4gVGVncmEgMTk0IFNvQyBpbnRlcmZhY2UK
Pj4+IHdpdGggVW5pdmVyc2FsIFBIWSAoVVBIWSkgbW9kdWxlIHRocm91Z2ggYSBQSVBFMlVQSFkg
KFAyVSkgbW9kdWxlLgo+Pj4gRm9yIGVhY2ggUENJZSBsYW5lIG9mIGEgY29udHJvbGxlciwgdGhl
cmUgaXMgYSBQMlUgdW5pdCBpbnN0YW50aWF0ZWQgYXQKPj4+IGhhcmR3YXJlIGxldmVsLiBUaGlz
IGRyaXZlciBwcm92aWRlcyBzdXBwb3J0IGZvciB0aGUgcHJvZ3JhbW1pbmcgcmVxdWlyZWQKPj4+
IGZvciBlYWNoIFAyVSB0aGF0IGlzIGdvaW5nIHRvIGJlIHVzZWQgZm9yIGEgUENJZSBjb250cm9s
bGVyLgo+Pgo+PiBPbmUgbWlub3IgY29tbWVudCBiZWxvdy4gV2l0aCB0aGF0IGZpeGVkCj4+Cj4+
IEFja2VkLWJ5OiBLaXNob24gVmlqYXkgQWJyYWhhbSBJIDxraXNob25AdGkuY29tPgo+Pj4KPj4+
IFNpZ25lZC1vZmYtYnk6IFZpZHlhIFNhZ2FyIDx2aWR5YXNAbnZpZGlhLmNvbT4KPj4+IC0tLQo+
Pj4gQ2hhbmdlcyBzaW5jZSBbdjldOgo+Pj4gKiBVc2VkIF9yZWxheGVkKCkgdmVyc2lvbnMgb2Yg
cmVhZGwoKSAmIHdyaXRlbCgpCj4+Pgo+Pj4gQ2hhbmdlcyBzaW5jZSBbdjhdOgo+Pj4gKiBNYWRl
IGl0IGRlcGVuZGVudCBvbiBBUkNIX1RFR1JBXzE5NF9TT0MgZGlyZWN0bHkgaW5zdGVhZCBvZiBB
UkNIX1RFR1JBCj4+Pgo+Pj4gQ2hhbmdlcyBzaW5jZSBbdjddOgo+Pj4gKiBDaGFuZ2VkIFAyVSBk
cml2ZXIgZmlsZSBuYW1lIGZyb20gcGNpZS1wMnUtdGVncmExOTQuYyB0byBwaHktdGVncmExOTQt
cDJ1LmMKPj4+Cj4+PiBDaGFuZ2VzIHNpbmNlIFt2Nl06Cj4+PiAqIE5vbmUKPj4+Cj4+PiBDaGFu
Z2VzIHNpbmNlIFt2NV06Cj4+PiAqIEFkZHJlc3NlZCByZXZpZXcgY29tbWVudHMgZnJvbSBUaGll
cnJ5Cj4+Pgo+Pj4gQ2hhbmdlcyBzaW5jZSBbdjRdOgo+Pj4gKiBOb25lCj4+Pgo+Pj4gQ2hhbmdl
cyBzaW5jZSBbdjNdOgo+Pj4gKiBSZWJhc2VkIG9uIHRvcCBvZiBsaW51eC1uZXh0IHRvcCBvZiB0
aGUgdHJlZQo+Pj4KPj4+IENoYW5nZXMgc2luY2UgW3YyXToKPj4+ICogUmVwbGFjZWQgc3BhY2Vz
IHdpdGggdGFicyBpbiBLY29uZmlnIGZpbGUKPj4+ICogU29ydGVkIGhlYWRlciBmaWxlIGluY2x1
c2lvbiBhbHBoYWJldGljYWxseQo+Pj4KPj4+IENoYW5nZXMgc2luY2UgW3YxXToKPj4+ICogQWRk
ZWQgQ09NUElMRV9URVNUIGluIEtjb25maWcKPj4+ICogUmVtb3ZlZCBlbXB0eSBwaHlfb3BzIGlt
cGxlbWVudGF0aW9ucwo+Pj4gKiBNb2RpZmllZCBjb2RlIGFjY29yZGluZyB0byBEVCBkb2N1bWVu
dGF0aW9uIGZpbGUgbW9kaWZpY2F0aW9ucwo+Pj4KPj4+ICAgZHJpdmVycy9waHkvdGVncmEvS2Nv
bmZpZyAgICAgICAgICAgIHwgICA3ICsrCj4+PiAgIGRyaXZlcnMvcGh5L3RlZ3JhL01ha2VmaWxl
ICAgICAgICAgICB8ICAgMSArCj4+PiAgIGRyaXZlcnMvcGh5L3RlZ3JhL3BoeS10ZWdyYTE5NC1w
MnUuYyB8IDEyMCArKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4+ICAgMyBmaWxlcyBjaGFu
Z2VkLCAxMjggaW5zZXJ0aW9ucygrKQo+Pj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9w
aHkvdGVncmEvcGh5LXRlZ3JhMTk0LXAydS5jCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGh5L3RlZ3JhL0tjb25maWcgYi9kcml2ZXJzL3BoeS90ZWdyYS9LY29uZmlnCj4+PiBpbmRleCBl
NTE2OTY3ZDY5NWIuLmY5ODE3YzNhZTg1ZiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvcGh5L3Rl
Z3JhL0tjb25maWcKPj4+ICsrKyBiL2RyaXZlcnMvcGh5L3RlZ3JhL0tjb25maWcKPj4+IEBAIC03
LDMgKzcsMTAgQEAgY29uZmlnIFBIWV9URUdSQV9YVVNCCj4+PiAgIAo+Pj4gICAJICBUbyBjb21w
aWxlIHRoaXMgZHJpdmVyIGFzIGEgbW9kdWxlLCBjaG9vc2UgTSBoZXJlOiB0aGUgbW9kdWxlIHdp
bGwKPj4+ICAgCSAgYmUgY2FsbGVkIHBoeS10ZWdyYS14dXNiLgo+Pj4gKwo+Pj4gK2NvbmZpZyBQ
SFlfVEVHUkExOTRfUDJVCj4+PiArCXRyaXN0YXRlICJOVklESUEgVGVncmExOTQgUElQRTJVUEhZ
IFBIWSBkcml2ZXIiCj4+PiArCWRlcGVuZHMgb24gQVJDSF9URUdSQV8xOTRfU09DIHx8IENPTVBJ
TEVfVEVTVAo+Pj4gKwlzZWxlY3QgR0VORVJJQ19QSFkKPj4+ICsJaGVscAo+Pj4gKwkgIEVuYWJs
ZSB0aGlzIHRvIHN1cHBvcnQgdGhlIFAyVSAoUElQRSB0byBVUEhZKSB0aGF0IGlzIHBhcnQgb2Yg
VGVncmEgMTl4IFNPQ3MuCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGVncmEvTWFrZWZp
bGUgYi9kcml2ZXJzL3BoeS90ZWdyYS9NYWtlZmlsZQo+Pj4gaW5kZXggNjRjY2FlYWNiNjMxLi4z
MjBkZDM4OWYzNGQgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL3BoeS90ZWdyYS9NYWtlZmlsZQo+
Pj4gKysrIGIvZHJpdmVycy9waHkvdGVncmEvTWFrZWZpbGUKPj4+IEBAIC02LDMgKzYsNCBAQCBw
aHktdGVncmEteHVzYi0kKENPTkZJR19BUkNIX1RFR1JBXzEyNF9TT0MpICs9IHh1c2ItdGVncmEx
MjQubwo+Pj4gICBwaHktdGVncmEteHVzYi0kKENPTkZJR19BUkNIX1RFR1JBXzEzMl9TT0MpICs9
IHh1c2ItdGVncmExMjQubwo+Pj4gICBwaHktdGVncmEteHVzYi0kKENPTkZJR19BUkNIX1RFR1JB
XzIxMF9TT0MpICs9IHh1c2ItdGVncmEyMTAubwo+Pj4gICBwaHktdGVncmEteHVzYi0kKENPTkZJ
R19BUkNIX1RFR1JBXzE4Nl9TT0MpICs9IHh1c2ItdGVncmExODYubwo+Pj4gK29iai0kKENPTkZJ
R19QSFlfVEVHUkExOTRfUDJVKSArPSBwaHktdGVncmExOTQtcDJ1Lm8KPj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3BoeS90ZWdyYS9waHktdGVncmExOTQtcDJ1LmMgYi9kcml2ZXJzL3BoeS90ZWdy
YS9waHktdGVncmExOTQtcDJ1LmMKPj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+PiBpbmRleCAw
MDAwMDAwMDAwMDAuLmRmMDA5YWJkMjQ4Mgo+Pj4gLS0tIC9kZXYvbnVsbAo+Pj4gKysrIGIvZHJp
dmVycy9waHkvdGVncmEvcGh5LXRlZ3JhMTk0LXAydS5jCj4+PiBAQCAtMCwwICsxLDEyMCBAQAo+
Pj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wKwo+Pj4gKy8qCj4+PiArICog
UDJVIChQSVBFIHRvIFVQSFkpIGRyaXZlciBmb3IgVGVncmEgVDE5NCBTb0MKPj4+ICsgKgo+Pj4g
KyAqIENvcHlyaWdodCAoQykgMjAxOSBOVklESUEgQ29ycG9yYXRpb24uCj4+PiArICoKPj4+ICsg
KiBBdXRob3I6IFZpZHlhIFNhZ2FyIDx2aWR5YXNAbnZpZGlhLmNvbT4KPj4+ICsgKi8KPj4+ICsK
Pj4+ICsjaW5jbHVkZSA8bGludXgvZXJyLmg+Cj4+PiArI2luY2x1ZGUgPGxpbnV4L2lvLmg+Cj4+
PiArI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+Pj4gKyNpbmNsdWRlIDxsaW51eC9vZi5oPgo+
Pj4gKyNpbmNsdWRlIDxsaW51eC9vZl9wbGF0Zm9ybS5oPgo+Pj4gKyNpbmNsdWRlIDxsaW51eC9w
aHkvcGh5Lmg+Cj4+PiArCj4+PiArI2RlZmluZSBQMlVfUEVSSU9ESUNfRVFfQ1RSTF9HRU4zCTB4
YzAKPj4+ICsjZGVmaW5lIFAyVV9QRVJJT0RJQ19FUV9DVFJMX0dFTjNfUEVSSU9ESUNfRVFfRU4J
CUJJVCgwKQo+Pj4gKyNkZWZpbmUgUDJVX1BFUklPRElDX0VRX0NUUkxfR0VOM19JTklUX1BSRVNF
VF9FUV9UUkFJTl9FTglCSVQoMSkKPj4+ICsjZGVmaW5lIFAyVV9QRVJJT0RJQ19FUV9DVFJMX0dF
TjQJMHhjNAo+Pj4gKyNkZWZpbmUgUDJVX1BFUklPRElDX0VRX0NUUkxfR0VONF9JTklUX1BSRVNF
VF9FUV9UUkFJTl9FTglCSVQoMSkKPj4+ICsKPj4+ICsjZGVmaW5lIFAyVV9SWF9ERUJPVU5DRV9U
SU1FCQkJCTB4YTQKPj4+ICsjZGVmaW5lIFAyVV9SWF9ERUJPVU5DRV9USU1FX0RFQk9VTkNFX1RJ
TUVSX01BU0sJMHhmZmZmCj4+PiArI2RlZmluZSBQMlVfUlhfREVCT1VOQ0VfVElNRV9ERUJPVU5D
RV9USU1FUl9WQUwJCTE2MAo+Pj4gKwo+Pj4gK3N0cnVjdCB0ZWdyYV9wMnUgewo+Pj4gKwl2b2lk
IF9faW9tZW0gKmJhc2U7Cj4+PiArfTsKPj4+ICsKPj4+ICtzdGF0aWMgaW5saW5lIHZvaWQgcDJ1
X3dyaXRlbChzdHJ1Y3QgdGVncmFfcDJ1ICpwaHksIGNvbnN0IHUzMiB2YWx1ZSwKPj4+ICsJCQkg
ICAgICBjb25zdCB1MzIgcmVnKQo+Pj4gK3sKPj4+ICsJd3JpdGVsX3JlbGF4ZWQodmFsdWUsIHBo
eS0+YmFzZSArIHJlZyk7Cj4+PiArfQo+Pj4gKwo+Pj4gK3N0YXRpYyBpbmxpbmUgdTMyIHAydV9y
ZWFkbChzdHJ1Y3QgdGVncmFfcDJ1ICpwaHksIGNvbnN0IHUzMiByZWcpCj4+PiArewo+Pj4gKwly
ZXR1cm4gcmVhZGxfcmVsYXhlZChwaHktPmJhc2UgKyByZWcpOwo+Pj4gK30KPj4+ICsKPj4+ICtz
dGF0aWMgaW50IHRlZ3JhX3AydV9wb3dlcl9vbihzdHJ1Y3QgcGh5ICp4KQo+Pj4gK3sKPj4+ICsJ
c3RydWN0IHRlZ3JhX3AydSAqcGh5ID0gcGh5X2dldF9kcnZkYXRhKHgpOwo+Pj4gKwl1MzIgdmFs
Owo+Pj4gKwo+Pj4gKwl2YWwgPSBwMnVfcmVhZGwocGh5LCBQMlVfUEVSSU9ESUNfRVFfQ1RSTF9H
RU4zKTsKPj4+ICsJdmFsICY9IH5QMlVfUEVSSU9ESUNfRVFfQ1RSTF9HRU4zX1BFUklPRElDX0VR
X0VOOwo+Pj4gKwl2YWwgfD0gUDJVX1BFUklPRElDX0VRX0NUUkxfR0VOM19JTklUX1BSRVNFVF9F
UV9UUkFJTl9FTjsKPj4+ICsJcDJ1X3dyaXRlbChwaHksIHZhbCwgUDJVX1BFUklPRElDX0VRX0NU
UkxfR0VOMyk7Cj4+PiArCj4+PiArCXZhbCA9IHAydV9yZWFkbChwaHksIFAyVV9QRVJJT0RJQ19F
UV9DVFJMX0dFTjQpOwo+Pj4gKwl2YWwgfD0gUDJVX1BFUklPRElDX0VRX0NUUkxfR0VONF9JTklU
X1BSRVNFVF9FUV9UUkFJTl9FTjsKPj4+ICsJcDJ1X3dyaXRlbChwaHksIHZhbCwgUDJVX1BFUklP
RElDX0VRX0NUUkxfR0VONCk7Cj4+PiArCj4+PiArCXZhbCA9IHAydV9yZWFkbChwaHksIFAyVV9S
WF9ERUJPVU5DRV9USU1FKTsKPj4+ICsJdmFsICY9IH5QMlVfUlhfREVCT1VOQ0VfVElNRV9ERUJP
VU5DRV9USU1FUl9NQVNLOwo+Pj4gKwl2YWwgfD0gUDJVX1JYX0RFQk9VTkNFX1RJTUVfREVCT1VO
Q0VfVElNRVJfVkFMOwo+Pj4gKwlwMnVfd3JpdGVsKHBoeSwgdmFsLCBQMlVfUlhfREVCT1VOQ0Vf
VElNRSk7Cj4+PiArCj4+PiArCXJldHVybiAwOwo+Pj4gK30KPj4+ICsKPj4+ICtzdGF0aWMgY29u
c3Qgc3RydWN0IHBoeV9vcHMgb3BzID0gewo+Pj4gKwkucG93ZXJfb24gPSB0ZWdyYV9wMnVfcG93
ZXJfb24sCj4+PiArCS5vd25lciA9IFRISVNfTU9EVUxFLAo+Pj4gK307Cj4+PiArCj4+PiArc3Rh
dGljIGludCB0ZWdyYV9wMnVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4+
ICt7Cj4+PiArCXN0cnVjdCBwaHlfcHJvdmlkZXIgKnBoeV9wcm92aWRlcjsKPj4+ICsJc3RydWN0
IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPj4+ICsJc3RydWN0IHBoeSAqZ2VuZXJpY19waHk7
Cj4+PiArCXN0cnVjdCB0ZWdyYV9wMnUgKnBoeTsKPj4+ICsJc3RydWN0IHJlc291cmNlICpyZXM7
Cj4+PiArCj4+PiArCXBoeSA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqcGh5KSwgR0ZQX0tF
Uk5FTCk7Cj4+PiArCWlmICghcGh5KQo+Pj4gKwkJcmV0dXJuIC1FTk9NRU07Cj4+PiArCj4+PiAr
CXJlcyA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZV9ieW5hbWUocGRldiwgSU9SRVNPVVJDRV9NRU0s
ICJjdGwiKTsKPj4+ICsJcGh5LT5iYXNlID0gZGV2bV9pb3JlbWFwX3Jlc291cmNlKGRldiwgcmVz
KTsKPj4+ICsJaWYgKElTX0VSUihwaHktPmJhc2UpKQo+Pj4gKwkJcmV0dXJuIFBUUl9FUlJfT1Jf
WkVSTyhwaHktPmJhc2UpOwo+Pj4gKwo+Pj4gKwlwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCBw
aHkpOwo+Pj4gKwo+Pj4gKwlnZW5lcmljX3BoeSA9IGRldm1fcGh5X2NyZWF0ZShkZXYsIE5VTEws
ICZvcHMpOwo+Pj4gKwlpZiAoSVNfRVJSKGdlbmVyaWNfcGh5KSkKPj4+ICsJCXJldHVybiBQVFJf
RVJSX09SX1pFUk8oZ2VuZXJpY19waHkpOwo+Pj4gKwo+Pj4gKwlwaHlfc2V0X2RydmRhdGEoZ2Vu
ZXJpY19waHksIHBoeSk7Cj4+PiArCj4+PiArCXBoeV9wcm92aWRlciA9IGRldm1fb2ZfcGh5X3By
b3ZpZGVyX3JlZ2lzdGVyKGRldiwgb2ZfcGh5X3NpbXBsZV94bGF0ZSk7Cj4+PiArCWlmIChJU19F
UlIocGh5X3Byb3ZpZGVyKSkKPj4+ICsJCXJldHVybiBQVFJfRVJSX09SX1pFUk8ocGh5X3Byb3Zp
ZGVyKTsKPj4+ICsKPj4+ICsJcmV0dXJuIDA7Cj4+Cj4+IEp1c3QgbWFrZSB0aGlzLi4KPj4gcGh5
X3Byb3ZpZGVyID0gZGV2bV9vZl9waHlfcHJvdmlkZXJfcmVnaXN0ZXIoZGV2LCBvZl9waHlfc2lt
cGxlX3hsYXRlKTsKPj4gcmV0dXJuIFBUUl9FUlJfT1JfWkVSTyhwaHlfcHJvdmlkZXIpOwo+IAo+
IFRoZXJlIGlzIGEgbmVlZCB0byBzL1BUUl9FUlJfT1JfWkVSTy9QVFJfRVJSLyBmb3IgYWxsIG9m
IHRoZSBvY2N1cnJlbmNlcwo+IGluIHRoaXMgcGF0Y2ggYmVjYXVzZSBpdCBpcyBpbXBvc3NpYmxl
IHRvIGdldCBaRVJPIGlmIHdlIGFscmVhZHkga25vdwo+IHRoYXQgcG9pbnRlciBpcyBhIGVycm9y
LgpBZ3JlZSB3aXRoIHRoaXMgcG9pbnQuCgo+IAo+IFNlY29uZGx5LCBpdCBpcyBhbHdheXMgY2xl
YW5lciB0byByZXR1cm4gMCBleHBsaWNpdGx5IG9uIHN1Y2Nlc3MgYW5kCj4gUFRSX0VSUl9PUl9a
RVJPKHBoeV9wcm92aWRlcikgaXMgYSBtdWNoIGxlc3MgcmVhZGFibGUgZm9ybSB0aGFuIGEgc2lt
cGxlCj4gcmV0dXJuIDAuIFNvIEknbSBzdWdnZXN0aW5nIHRvIGtlZXAgdGhhdCBwYXJ0IGFzLWlz
Lgo+IAp5ZXMsIHRydWUgdGhhdC4gSSdsbCBhZGRyZXNzIHRoZXNlIGluIHRoZSBuZXh0IHNlcmll
cwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
