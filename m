Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA561EF8E5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:23:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8UDi/7HZYmcU/MZxeO35VpVFSE81se5De2h76sCA+kc=; b=bWX+iSPzORmvBkUckSR9uMPr2
	lIV6fyI7XOKnoSZcc6A0z6ZfKMLTRMrn7EeGrKUn/oGSUmLFgY6U57T6fmKCe1tgcsKdBnSEdEH+R
	AFG60UXP/LOyHPzfbE+qZv/36Qk93/iRbsMgtE271ZWU/CZZXpVRfXMUpsJY35BelXyAQVTc++yVb
	ZDuj8uFfGrIwGzEeBcWw+KHnLAn44ljN8cOzXM+wZ50Su8RdT9KPSmOXCj8cSr628u5QccpwPPoVW
	QB0sbBeaednLFba4uDLmX85C1yjmdnERxLx6Lm19slKygFT4v8NoHdSCA2gM9/JSb1J46bocoiweO
	Mp3We14QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhCK7-0006Il-7y; Fri, 05 Jun 2020 13:23:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhCJu-0006ID-DM
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 13:23:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4F84331B;
 Fri,  5 Jun 2020 06:23:36 -0700 (PDT)
Received: from [10.57.10.23] (unknown [10.57.10.23])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 28FEE3F305;
 Fri,  5 Jun 2020 06:23:34 -0700 (PDT)
Subject: Re: Please help to confirm the risk if using TPIDRRO_EL0 to save CPU
 number, thanks.
To: Will Deacon <will@kernel.org>
References: <1D289F1E6D91D2489524BBB0B8880A7DA1A39219@dggeml509-mbx.china.huawei.com>
 <20200601070311.GA8601@willie-the-truck>
 <20200605121029.GE5413@sirena.org.uk>
 <20200605123302.GA19936@willie-the-truck>
 <a46ddb53-2226-c9c3-bf3f-0fcc5d924b1e@arm.com>
 <20200605130251.GB20441@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <c2cf6fb1-6776-4b4b-eaa9-c07ddddcdab7@arm.com>
Date: Fri, 5 Jun 2020 14:23:32 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200605130251.GB20441@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_062338_537442_BA4B2819 
X-CRM114-Status: GOOD (  20.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "fujun \(F\)" <oliver.fu@hisilicon.com>, Mark Brown <broonie@kernel.org>,
 Wuxuecheng <wuxuecheng@hisilicon.com>, "Lixin \(Victor,
 Kirin\)" <victor.lixin@hisilicon.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNi0wNSAxNDowMiwgV2lsbCBEZWFjb24gd3JvdGU6Cj4gT24gRnJpLCBKdW4gMDUs
IDIwMjAgYXQgMDE6NTg6MzlQTSArMDEwMCwgUm9iaW4gTXVycGh5IHdyb3RlOgo+PiBPbiAyMDIw
LTA2LTA1IDEzOjMzLCBXaWxsIERlYWNvbiB3cm90ZToKPj4+IE9uIEZyaSwgSnVuIDA1LCAyMDIw
IGF0IDAxOjEwOjI5UE0gKzAxMDAsIE1hcmsgQnJvd24gd3JvdGU6Cj4+Pj4gT24gTW9uLCBKdW4g
MDEsIDIwMjAgYXQgMDg6MDM6MTJBTSArMDEwMCwgV2lsbCBEZWFjb24gd3JvdGU6Cj4+Pj4+IE9u
IEZyaSwgTWF5IDI5LCAyMDIwIGF0IDA5OjAzOjM3QU0gKzAwMDAsIExpeGluIChWaWN0b3IsIEtp
cmluKSB3cm90ZToKPj4+Pgo+Pj4+Pj4gICAgICBJbnRlbCBvcHRpbWl6ZWQgZ2V0Y3B1IHN5c2Nh
bGwgb24gTGludXgvQW5kcm9pZCBzeXN0ZW0gYnkgdXNpbmcgdkRTTywgYnV0Cj4+Pj4+PiAgICAg
IEFSTSBkb2Vzbid0IGRvIGFueSBvcHRpbWl6YXRpb25zIGZvciBnZXRjcHUgc3lzY2FsbC4KPj4+
Pgo+Pj4+Pj4gICAgICBJbiBBcHBsZSBvcGVuIHNvdXJjZSwgVFBJRFJST19FTDAvVFBJRFJVUk8g
aXMgdXNlZCB0byBzYXZlIHRoZSBDUFUgbnVtYmVyLAo+Pj4+Pj4gICAgICBbMV1odHRwczovL29w
ZW5zb3VyY2UuYXBwbGUuY29tL3NvdXJjZS94bnUveG51LTQ1NzAuMS40Ni9vc2Ztay9hcm0vY3N3
aXRjaC5zLmF1dG8uaHRtbAo+Pj4+Cj4+Pj4+PiAgICAgIMOvwr/CvcOvwr/CvcOvwr/CvcOvwr/C
vcOvwr/CvcOvwr/CvcOvwr/CvcOvwr/CvcOvwr/CvcOvwr/CvcOvwr/CvUlzIHRoZXJlIGFueSBy
aXNrIGlmIHVzaW5nIFRQSURSUk9fRUwwL1RQSURSVVJPIHRvIGltcGxlbWVudAo+Pj4+Pj4gICAg
ICB0aGUgdkRTTyBmb3IgZ2V0Y3B1PyBJcyB0aGVyZSBhbnkgcG9zc2libGUgdG8gYnJlYWsgYW55
IEFSTSBBQkk/IENhbiB5b3UKPj4+Pj4+ICAgICAgaGVscCB1cyB0byBjb25maXJtIHRoZSBjb25z
aWRlcmF0aW9ucz8KPj4+Pgo+Pj4+PiBEbyB5b3UgaGF2ZSBhIHVzZS1jYXNlIGZvciBoaWdoLXBl
cmZvcm1hbmNlIGdldGNwdSgpIHRoYXQgaXNuJ3QgYmV0dGVyCj4+Pj4+IHN1aXRlZCB0byByc2Vx
KCk/Cj4+Pj4KPj4+PiBJIGFjdHVhbGx5IGhhdmUgYW4gaW1wbGVtZW50YXRpb24gb2YgdGhpcyB0
aGF0IEknZCBiZWVuIHdhaXRpbmcgZm9yIHRoZQo+Pj4+IGVuZCBvZiB0aGUgbWVyZ2Ugd2luZG93
IHRvIHBvc3QsIGxhcmdlbHkgYmVjYXVzZSBJIGZpcnN0IGhlYXJkIG9mIHRoZQo+Pj4+IHVzZSBv
ZiByZXN0YXJ0YWJsZSBzZXF1ZW5jZXMgZm9yIHRoaXMgYWZ0ZXIgSSdkIGFscmVhZHkgaW1wbGVt
ZW50ZWQgdGhlCj4+Pj4gdkRTTyB2ZXJzaW9uIC0gdGhpcyBzdHVmZiBpcyBub3QgYXMgZGlzY292
ZXJhYmxlIGFzIG9uZSBtaWdodCBkZXNpcmUuCj4+Pj4gSXQgZG9lc24ndCBzdG9yZSB0aGUgQ1BV
IElEIGRpcmVjdGx5IGluIFRQSURSUk8gYnV0IHJhdGhlciB1c2VzIFRQSUREUlJPCj4+Pj4gdG8g
c3RvcmUgdGhlIG9mZnNldCBvZiBhIHBlci1DUFUgc3RydWN0IGluIHRoZSB2RFNPIGRhdGEgaW4g
b3JkZXIgdG8KPj4+PiBhbGxvdyBmb3IgdGhlIGFkZGl0aW9uIG9mIGZ1cnRoZXIgZGF0YSBpbiB0
aGUgZnV0dXJlLiAgSSdsbCBwb3N0IGl0Cj4+Pj4gdG9kYXkgZm9yIGRpc2N1c3Npb24uCj4+Pj4K
Pj4+PiBUaGUgbGF0ZXN0IHZlcnNpb24gb2YgdGhlIE1hdGhpZXUncyBnbGliYyBpbnRlZ3JhdGlv
biBwYXRjaGVzIGlzOgo+Pj4+Cj4+Pj4gICAgICAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGtt
bC8yMDIwMDUyNzE4NTEzMC41NjA0LTMtbWF0aGlldS5kZXNub3llcnNAZWZmaWNpb3MuY29tLwo+
Pj4+Cj4+Pj4gVGhlIG9ubHkgdGhpbmdzIEkgY2FuIHNlZSB3aGVyZSB0aGUgdkRTTyBkb2VzIGJl
dHRlciBhcmUgc3VwcG9ydCBmb3IgdGhlCj4+Pj4gbm9kZSBwYXJhbWV0ZXIgb2YgZ2V0Y3B1KCkg
YW5kIHRoZSBlYXNlIG9mIGltcGxlbWVudGF0aW9uIGZvciB0aGUgdXNlcnMsCj4+Pj4gdGhlIHJl
c3RhcnRhYmxlIHNlcXVlbmNlcyBjb2RlIHdhcyBtZXJnZWQgYWxsIHRoZSB3YXkgYmFjayBpbiB2
NC4xOCBhbmQKPj4+PiBpdCdzIHN0aWxsIG5vdCB1c2VkIGJ5IGFueSBvZiB0aGUgbGliY3MgYXMg
ZmFyIGFzIEkgY2FuIHNlZS4gIFRoZSBub2RlCj4+Pj4gdG8gQ1BVIG1hcHBpbmcgaXMgc3RhdGlj
IHNvIEknbSBub3Qgc3VyZSBob3cgZXhjaXRpbmcgdGhhdCBpcywgaXQgY291bGQKPj4+PiBiZSBs
b29rZWQgdXAgc2VwYXJhdGVseSB3aGVuIHByb2Nlc3NpbmcgZGF0YSBpZiBpdCdzIGltcG9ydGFu
dCwgYnV0IHRoZQo+Pj4+IGVhc2Ugb2YgdXNlIGZlZWxzIGxpa2Ugc29tZXRoaW5nLgo+Pj4+Cj4+
Pj4gT25lIGltcG9ydGFudCBjYXZlYXQgd2l0aCB1c2luZyBUUElEUlJPIGlzIHRoYXQgaWYgS1BU
SSBpcyBhY3RpdmUgdGhlbgo+Pj4+IHRoZSBLUFRJIHRyYW1wb2xpbmUgdXNlcyBUUElEUlJPIGFz
IGEgc2NyYXRjaCByZWdpc3RlciBzbyB1bmxlc3Mgd2UgY2FuCj4+Pj4gZmluZCBhbm90aGVyIHJl
Z2lzdGVyIGZvciBzY3JhdGNoIHVzYWdlIHRoZSB1c2VyIHdvdWxkIG5lZWQgdG8gZ2l2ZSB1cAo+
Pj4+IHRoZSBwcm90ZWN0aW9ucyBvZmZlcmVkIGJ5IEtQVEkgb3IgcnVuIG9uIGZ1dHVyZSBoYXJk
d2FyZSB3aGljaCBjYW4gdXNlCj4+Pj4gRTBQRCBpbnN0ZWFkLiAgVGhpcyBzZXZlcmVseSBsaW1p
dHMgdGhlIHVzZWZ1bG5lc3Mgb24gY3VycmVudCBzeXN0ZW1zLgo+Pj4KPj4+IFdlIG9ubHkgdHJh
c2ggVFBJRFJSTyBvbiBlbnRyeSwgc28gSSB0aGluayB5b3UgY291bGQgcmVwb3B1bGF0ZSBpdCBv
biBldmVyeQo+Pj4gZXhjZXB0aW9uIGZyb20gdXNlcnNwYWNlIGFuZCBpdCAqc2hvdWxkKiB3b3Jr
IHdpdGggS1BUSSAoZmFtb3VzIGxhc3Qgd29yZHMhKQo+Pgo+PiBJcyB0aGF0IG5vdCBhbHJlYWR5
IHRoZSBjYXNlIGdpdmVuIHRoYXQgd2Uga2VlcCBUTFMgZ3ViYmlucyBpbiB0aGVyZSBmb3IKPj4g
Y29tcGF0IHRhc2tzPwo+IAo+IE5vOyB3ZSBvbmx5IHRyYXNoIFRQSURSUk8gZm9yIDY0LWJpdCB0
YXNrcy4gMzItYml0IHRhc2tzIGhhdmUgbG9hZHMgb2YKPiBmcmVlIHJlZ2lzdGVycyA6RAoKRGVy
cCwgSSB0aG91Z2h0IHRoYXQgd2FzIG9uZSB0aGF0IHdlIGFsd2F5cyByZXdyb3RlIHNvbWV3aGVy
ZSBpbiB0aGUgCmV4Y2VwdGlvbiByZXR1cm4gcGF0aCwgYnV0IEkgbXVzdCBoYXZlIGdvdCBtdWRk
bGVkIHVwIHdpdGggQ09OVEVYVElEUiAKKHdoaWNoIHVwb24gZG91YmxlLWNoZWNraW5nLCBJIHNl
ZSB3ZSAncmVzdG9yZScgZnJvbSBpdHNlbGYsIHNvIEkgZGlkbid0IApldmVuIHJlbWVtYmVyIHRo
YXQgcXVpdGUgcmlnaHQuLi4pCgpSb2Jpbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
