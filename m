Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE452117EA0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 04:57:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6oE21TQlzHYQGCR5ArRZNx8+d4RRbU1eO3wy4y1UNT4=; b=rgputBHgAQuP8UgMR6HgjPMhG
	RT7SfwrWAVH5ALCKSCrTS1pJvT+m7kBnLdmAuEYPWVFTx9ORpxT/x2XGNXLmi+yiwyKQ0u6RYdPYq
	yAT52CvUkJfUr72oLyppf/RdLa5rJ/TI3nCtyByXDAAWR9jBemcTrvLjZyJTrwHpoGUnrnMCliGci
	cgJuvLqTpaMqhE0N46+93gSK+wJ+Qz4B+7d+L0OLbhSWlo0U9RSo2m+oGh3DoLL2HhWxWmabwqevi
	2Mb1CUftBwChqf1KZ3/5aX9ZLYCZ7QE967Q47yF9XSugvNaLYZ0Q1OKXWWjEK1aq4JIccHiIeIgMu
	WqYRU1Vfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieWeM-0004JJ-76; Tue, 10 Dec 2019 03:57:26 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieWeC-0004If-T9; Tue, 10 Dec 2019 03:57:18 +0000
Received: from [10.28.19.135] (10.28.19.135) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Tue, 10 Dec
 2019 11:57:40 +0800
Subject: Re: [PATCH] arm64: dts: a1: add saradc controller
To: Kevin Hilman <khilman@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>
References: <1575358332-44866-1-git-send-email-xingyu.chen@amlogic.com>
 <7hpngxqfa7.fsf@baylibre.com>
From: Xingyu Chen <xingyu.chen@amlogic.com>
Message-ID: <9a2ddfa3-28f3-7d15-bb25-5b84078b77c7@amlogic.com>
Date: Tue, 10 Dec 2019 11:57:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <7hpngxqfa7.fsf@baylibre.com>
Content-Language: en-GB
X-Originating-IP: [10.28.19.135]
X-ClientProxiedBy: mail-sz.amlogic.com (10.28.11.5) To mail-sz.amlogic.com
 (10.28.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_195716_942770_85EF09D1 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Qianggui Song <qianggui.song@amlogic.com>, devicetree@vger.kernel.org,
 Jianxin Pan <jianxin.pan@amlogic.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Jian Hu <jian.hu@amlogic.com>, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, Jonathan Cameron <jic23@kernel.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEtldmluCgpPbiAyMDE5LzEyLzEwIDY6NTYsIEtldmluIEhpbG1hbiB3cm90ZToKPiBYaW5n
eXUgQ2hlbiA8eGluZ3l1LmNoZW5AYW1sb2dpYy5jb20+IHdyaXRlczoKPgo+PiBUaGUgc2FyYWRj
IGNvbnRyb2xsZXIgaW4gTWVzb24tQTEgaXMgdGhlIHNhbWUgYXMgdGhlIE1lc29uLUcxMiBzZXJp
ZXMgU29DcywKPj4gc28gd2UgdXNlIHRoZSBzYW1lIGNvbXBhdGlibGUgc3RyaW5nLgo+Pgo+PiBT
aWduZWQtb2ZmLWJ5OiBYaW5neXUgQ2hlbiA8eGluZ3l1LmNoZW5AYW1sb2dpYy5jb20+Cj4+Cj4+
IC0tLQo+PiBUaGlzIHBhdGNoIGlzIGJhc2VkIG9uIEExIGNsb2NrIHBhdGNoc2V0IGF0IFswXS4K
Pj4KPj4gWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWFtbG9naWMvMjAxOTExMjkx
NDQ2MDUuMTgyNzc0LTEtamlhbi5odUBhbWxvZ2ljLmNvbQo+PiAtLS0KPj4gICBhcmNoL2FybTY0
L2Jvb3QvZHRzL2FtbG9naWMvbWVzb24tYTEuZHRzaSB8IDE1ICsrKysrKysrKysrKysrKwo+PiAg
IDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL2FtbG9naWMvbWVzb24tYTEuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvYW1sb2dpYy9tZXNvbi1hMS5kdHNpCj4+IGluZGV4IDcyMTBhZDAuLmNhZDE3NTYgMTAwNjQ0
Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYW1sb2dpYy9tZXNvbi1hMS5kdHNpCj4+ICsr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYW1sb2dpYy9tZXNvbi1hMS5kdHNpCj4+IEBAIC05Myw2
ICs5MywyMSBAQAo+PiAgIAkJCQljbG9jay1uYW1lcyA9ICJ4dGFsIiwgInBjbGsiLCAiYmF1ZCI7
Cj4+ICAgCQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+ICAgCQkJfTsKPj4gKwo+PiArCQkJc2Fy
YWRjOiBhZGNAMmMwMCB7Cj4+ICsJCQkJY29tcGF0aWJsZSA9ICJhbWxvZ2ljLG1lc29uLWcxMmEt
c2FyYWRjIiwKPj4gKwkJCQkJICAgICAiYW1sb2dpYyxtZXNvbi1zYXJhZGMiOwo+PiArCQkJCXJl
ZyA9IDwweDAgMHgyYzAwIDB4MCAweDQ4PjsKPiBXaHkgMHg0OCBoZXJlPyAgQVhHIHVzZXMgMHgz
OCBhbmQgeW91J3JlIG5vdCBhZGRpbmcgYW55IG1vcmUgcmVnaXN0ZXJzCj4gdG8gdGhpcyBkcml2
ZXIuCgpUaGFua3MgZm9yIHlvdSByZXZpZXcuCgpUaGUgc2FyYWRjIGludHJvZHVjZXMgNCBuZXcg
cmVnaXN0ZXJzIChhcyBzaG93biBiZWxvdykgYmVnaW4gd2l0aCBnMTJhIApwbGF0Zm9ybSwgYW5k
IHRoZXNlIHJlZ2lzdGVycyBhcmUgdXNlZAp0byBzYXZlIHRoZSBzYW1wbGluZyB2YWx1ZSBvZiBj
b3JyZXNwb25kaW5nIGNoYW5uZWwuIEluIG90aGVyIHdvcmRzLCB3ZSAKY2FuIGNob29zZSBmaWZv
IG9yIG5ldyByZWdpc3RlcnMgdG8gc2F2ZQpzYW1wbGluZyB2YWx1ZSwgYnV0IGl0IGlzIG5vdCBz
dXBwb3J0ZWQgYnkgdGhlIGN1cnJlbnQgZHJpdmVyLgoKZG91dCByZWdpc3RlcsKgIHwtLS0+IGZp
Zm8KIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8LS0t
PiBjaGFubmVsIHJlZ3MgLXwKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwtLS0gY2hhbm5lbC0wCiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8LS0tIGNoYW5uZWwtMQog
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgfCAuLi4KIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHwgLS0tIGNoYW5uZWwtNwoKQU9fU0FSX0FEQ19DSE5MMDHvvJpzYXZpbmcg
c2FtcGxpbmcgZGF0YSBvZiBjaGFubmVsIDAvMQpBT19TQVJfQURDX0NITkwyMzrCoMKgIHNhdmlu
ZyBzYW1wbGluZyBkYXRhIG9mIGNoYW5uZWwgMi8zCkFPX1NBUl9BRENfQ0hOTDQ1OsKgwqAgc2F2
aW5nIHNhbXBsaW5nIGRhdGEgb2YgY2hhbm5lbCA0LzUKQU9fU0FSX0FEQ19DSE5MNjc6wqDCoCBz
YXZpbmcgc2FtcGxpbmcgZGF0YSBvZiBjaGFubmVsIDYvNwoKClRoaXMgcGF0Y2ggdXNlIHRoZSAw
eDQ4IHRvIGRlc2NyaWJlIHRoZSByZWdpc3RlcnMgbGVuZ3RoIGp1c3QgZm9sbG93IHRoZSAKZmls
ZSBtZXNvbi1nMTItY29tbW9uLmR0c2kuIGFuZCBpdCBkb2Vzbid0CmFmZmVjdCB0aGUgZHJpdmVy
IGJlY2F1c2Ugb2YgdGhlIG1hcHBlZCByZWdpdGVyIGxlbmd0aCBpcyBsaW1pdGVkIGJ5IAptYXhf
cmVnaXN0ZXIgbWVtYmVyIGluIHN0cnVjdCByZWdtYXBfY29uZmlnLgoKSSBjYW4gcmVwbGFjZSAw
eDQ4IHdpdGggMHgzOCBpbiBuZXh0IHBhdGNoIGlmIG5lY2Vzc2FyeS4KCj4gS2V2aW4KPgo+IC4K
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
