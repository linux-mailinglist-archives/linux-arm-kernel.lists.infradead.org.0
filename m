Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D293C5EABE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 19:46:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KZltfVsyQSVikAYL8om2cNfUutGdrWxD/vTVCDecAqI=; b=rBOihTs4i3PGtE
	VS4N4qoPEEXsU9BamQV9cl8m/qp0OebRFXM9fhQ2hP+8/zy8OHQIyX/fuebZnpDH3p7eyNg5YMbzA
	MIWclAo5Zr/eeo7rESJgi/fGTW2ITk0oALPiUTqWLFH4KWvoOstty+TBhFyoatOw/mfmTjksid41b
	hhPct07e0HdGBGUNNS6zcZ2FfwZbf7khDIJRvR6e+UycPx/BrA8yt867i0Bbcu05SqWRX8C8ipOmc
	AxDjL6fVMgeTIFUWDe64D0TFGH94IMSbhz3Z7a6mbn5Ma98u6IMscboTTuCPjXTaOaEDpedaKShwR
	PctxZ9dmtgeWTBfyg20Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hijKs-0001QQ-Il; Wed, 03 Jul 2019 17:46:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hijKf-0001Q6-20
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 17:46:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3F961344;
 Wed,  3 Jul 2019 10:46:12 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 723E93F718;
 Wed,  3 Jul 2019 10:46:10 -0700 (PDT)
Date: Wed, 3 Jul 2019 18:46:08 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: "Zhang, Lei" <zhang.lei@jp.fujitsu.com>
Subject: Re: [PATCH V3] KVM: arm64: Implement vq_present() as a macro
Message-ID: <20190703174605.GX2790@e103592.cambridge.arm.com>
References: <be823e68faffc82a6f621c16ce1bd45990d92791.1560160681.git.viresh.kumar@linaro.org>
 <8898674D84E3B24BA3A2D289B872026A78BA95D6@G01JPEXMBKW03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8898674D84E3B24BA3A2D289B872026A78BA95D6@G01JPEXMBKW03>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_104613_191549_2EB7498C 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "Okamoto, Takayuki" <tokamoto@jp.fujitsu.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 'Viresh Kumar' <viresh.kumar@linaro.org>,
 Julien Thierry <julien.thierry@arm.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 "Mizuma, Masayoshi" <masayoshi.mizuma@fujitsu.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "Indoh, Takao" <indou.takao@fujitsu.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdWwgMDMsIDIwMTkgYXQgMTI6MDQ6MTFQTSArMDAwMCwgWmhhbmcsIExlaSB3cm90
ZToKPiBIaSBndXlzLAo+IAo+IEkgY2FuJ3Qgc3RhcnQgdXAgS1ZNIGd1ZXN0IG9zIHdpdGggU1ZF
IGZlYXR1cmUgd2l0aCB5b3VyIHBhdGNoLgo+IFRoZSBlcnJvciBtZXNzYWdlIGlzIAo+IHFlbXUt
c3lzdGVtLWFhcmNoNjQ6IGt2bV9pbml0X3ZjcHUgZmFpbGVkOiBJbnZhbGlkIGFyZ3VtZW50Lgo+
IAo+IE15IHRlc3QgZW52aXJvbWVudC4KPiBrZXJuZWwgIGxpbnV4LTUuMi1yYzYKPiBxZW11ICBb
UWVtdS1kZXZlbF0gW1BBVENIIHYyIDAwLzE0XSB0YXJnZXQvYXJtL2t2bTogZW5hYmxlIFNWRSBp
biBndWVzdHMgaHR0cHM6Ly9saXN0cy5nbnUub3JnL2FyY2hpdmUvaHRtbC9xZW11LWRldmVsLzIw
MTktMDYvbXNnMDQ5NDUuaHRtbAo+IEtWTSBzdGFydCB1cCBvcHRpb24KPiAtbWFjaGluZSB2aXJ0
LGdpYy12ZXJzaW9uPWhvc3QsYWNjZWw9a3ZtIFwKPiAtY3B1IGhvc3QgXAo+IC1tYWNoaW5lIHR5
cGU9dmlydCBcCj4gLW5vZ3JhcGhpYyBcCj4gLXNtcCAxNiBcIC1tIDQwOTYgXAo+IC1kcml2ZSBp
Zj1ub25lLGZpbGU9L3Jvb3QvaW1hZ2UucWNvdzIsaWQ9aGQwLGZvcm1hdD1xY293MiBcCj4gLWRl
dmljZSB2aXJ0aW8tYmxrLWRldmljZSxkcml2ZT1oZDAgXAo+IC1uZXRkZXYgdXNlcixpZD1teW5l
dDAscmVzdHJpY3Q9b2ZmLGhvc3Rmd2Q9dGNwOjozODAwMS06MjIgXAo+IC1kZXZpY2UgdmlydGlv
LW5ldC1kZXZpY2UsbmV0ZGV2PW15bmV0MCBcCj4gLWJpb3MgL3Jvb3QvUUVNVV9FRkkuZmQKPiAK
PiBzdmVfdnFfYXZhaWxhYmxlIGZ1bmN0aW9uJ3MgcmV0dXJuIHZhbHVlJyB0eXBlIGlzIGJvb2wu
Cj4gQnV0IHZxX3ByZXNlbnQgaXMgbWFjcm8sIHNvIHRoZSB2YWx1ZSBpcyBub3Qgb25seSBUUlVF
LCBGQUxTRSBidXQgYWxzbyBzb21lIG51bWJlcnMuCj4gU28gSXQgZmFpbGVkIGF0IAo+IGlmICh2
cV9wcmVzZW50KHZxcywgdnEpICE9IHN2ZV92cV9hdmFpbGFibGUodnEpKS4KPiBJIHRoaW5rIGl0
IGlzIG5lc3NhcnkgdG8gbWFrZSB2cV9wcmVzZW50IG1hY3JvJ3MgdmFsdWUgb25seSBUUlVFIGFu
ZCBGQUxTRS4KPiAKPiBhcmNoL2FybTY0L2t2bS9ndWVzdC5jCj4gc3RhdGljIGludCBzZXRfc3Zl
X3ZscyhzdHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUsIGNvbnN0IHN0cnVjdCBrdm1fb25lX3JlZyAqcmVn
KQo+IAlmb3IgKHZxID0gU1ZFX1ZRX01JTjsgdnEgPD0gbWF4X3ZxOyArK3ZxKQo+IAkJaWYgKHZx
X3ByZXNlbnQodnFzLCB2cSkgIT0gc3ZlX3ZxX2F2YWlsYWJsZSh2cSkp44CALy8gSXQgZmFpbGVk
IGF0IGhlcmUuCj4gCQkJcmV0dXJuIC1FSU5WQUw7Cj4gCj4gTXkgcGF0Y2ggYXMgZm9sbG93cy4K
PiBJIGhhdmUgc3RhcnRlZCB1cCBLVk0gZ3Vlc3Qgb3Mgc3VjY2Vzc2Z1bGx5IHdpdGggU1ZFIGZl
YXR1cmUgd2l0aCB0aGlzIHBhdGNoLgo+IAo+IENvdWxkIHlvdSByZXZpZXcgYW5kIG1lcmdlIG15
IHBhdGNoPwoKWy4uLl0KClRoYW5rcyBmb3IgcmVwb3J0aW5nIHRoaXMhICBJdCBsb29rcyBsaWtl
IHdlIGRpZG4ndCByZWFsaXNlIHdlIGRyb3BwZWQKdGhlIGltcGxpY2l0IGNhc3QgdG8gYm9vbCB3
aGVuIHRoZSByZXN1bHQgd2FzIHJldHVybmVkIGZyb20gdGhlIG9yaWdpbmFsCnZlcnNpb24gb2Yg
dnFfcHJlc2VudCgpLgoKWW91ciBmaXggbG9va3Mgc2Vuc2libGUgdG8gbWUuCgpGb3IgdGhlIGZ1
dHVyZSwgc2VlIERvY3VtZW50YXRpb24vcHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMucnN0IGZv
cgpndWlkYW5jZSBvbiBob3cgdG8gcHJlcGFyZSBhIHBhdGNoIGZvciBzdWJtaXNzaW9uLgoKSG93
ZXZlciwgZHVlIHRvIHRoZSBmYWN0IHRoYXQgd2UncmUgYWxyZWFkeSBhdCAtcmM3IEkndmUgd3Jp
dHRlbiBhCmNvbW1pdCBtZXNzYWdlIGZvciB0aGUgcGF0Y2ggYW5kIHJlcG9zdGVkIFsxXS4gIFNp
bmNlIHRoZSBmaXggaXMgeW91cnMsCkknbGwga2VlcCB5b3VyIGF1dGhvcnNoaXAgYW5kIFMtby1C
LgoKUGxlYXNlIHJldGVzdCB3aGVuIHlvdSBjYW4gKHRob3VnaCB0aGUgZGlmZiBzaG91bGQgYmUg
dGhlIHNhbWUpLgoKTm90ZSwgeW91ciBtYWlsIHNlZW1zIHRvIGJlIGNvcnJ1cHRlZCwgYnV0IHNp
bmNlIHRoZSBkaWZmIGlzIGEgb25lLWxpbmUKZml4LCBJJ20gcHJldHR5IGNvbmZpZGVudCBJIGRl
Y29kZWQgaXQgY29ycmVjdGx5LiAgSWYgYW55dGhpbmcgbG9va3MKd3JvbmcsIHBsZWFzZSBsZXQg
bWUga25vdy4KClsuLi5dCgpDaGVlcnMKLS0tRGF2ZQoKClsxXSBbUEFUQ0hdIEtWTTogYXJtNjQv
c3ZlOiBGaXggdnFfcHJlc2VudCgpIG1hY3JvIHRvIHlpZWxkIGEgYm9vbApodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9waXBlcm1haWwvbGludXgtYXJtLWtlcm5lbC8yMDE5LUp1bHkvNjY0NzQ1
Lmh0bWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
