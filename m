Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 051E011834D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 10:15:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i3FlQI7zOrmBbfPgVyUbuXqzN7Ti3uvHbrjmpGFZrPw=; b=M1/kqzMXpHNdz4
	WG6Jq5KwxlCVqttX199juKhDsdAFbhjlmUcenvtPoEQlqvpH+OSp9rBGDZf7CVUX9LPiJbak6j3SA
	N9oOrSJOq0bA1NQ/lh3pelD+nuDDaY0n9VRElsPy7A7TlGioQdBA+JAc9NUc7BOJ38kSgHh6VBsfU
	5zIFU5DHyf6S2rICfLlLLxpw1tRvoMhSGQVk/VV7dDqmunh1vyYrwtbRS1SoK726DZlPzgz4Nr2YG
	KGAEAiogeDQPE8pjQgn+yR75TjGfzXuzzUOYTu2TbL7tZ8NR1c91ovuW8GOj9pQnzxUosRW+Ji8Tx
	c/EQpLrqs63RxcZKU5Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iebcB-0006JJ-Qo; Tue, 10 Dec 2019 09:15:31 +0000
Received: from a27-11.smtp-out.us-west-2.amazonses.com ([54.240.27.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iebbf-0006A9-PB; Tue, 10 Dec 2019 09:15:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1575969297;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 bh=Ujunv0R/WM+sahEPNbxCRS3Q2pY5WCU98/q3fvcKML8=;
 b=FurnRi/rf6sfEqmGHgzzny9K1UPyYS5COjPBRL96qm/bOPAfltKnUsRUXBei2dSp
 ERFfH7AXujYb7a1352NYc1mThMN3OJ+qfJfxOQs17AvXX1l8A+m58gO4Rhwx+EVlG49
 bhKDtujZSNdQ5T8cuhE+tEaKmlsk/b2xp8AZvBfo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1575969297;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Feedback-ID;
 bh=Ujunv0R/WM+sahEPNbxCRS3Q2pY5WCU98/q3fvcKML8=;
 b=BBjPvf5dtQVdT7WuaWtd+QlR8uBBQFeOvmA3E4FJtT2TaEMvSG90rVgKMpnDL875
 dkWLtMzukbFPiTw8mnZ0CLYbPpiNg1KKaau1WA2yyf6IciA9HV57YUM25w/0BUSV7cJ
 XG4GyPK4GEplchvGkbOUS/b/17MDL1iQzKCOwsRk=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 279BBC447BC
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 8/8] arm64: dts: rockchip: RockPro64: enable wifi module
 at sdio0
References: <20191209223822.27236-1-smoch@web.de> <2668270.pdtvSLGib8@diego>
 <2cf70216-8d98-4122-4f4e-b8254089a017@web.de>
 <6162240.GiEx4hqPFh@diego>
Date: Tue, 10 Dec 2019 09:14:57 +0000
In-Reply-To: <6162240.GiEx4hqPFh@diego> ("Heiko
 \=\?utf-8\?Q\?St\=C3\=BCbner\=22'\?\=
 \=\?utf-8\?Q\?s\?\= message of "Tue, 10 Dec 2019 02:18:24 +0100")
Message-ID: <0101016eef17156c-201eba4e-5e80-44aa-ad35-5f34fc616021-000000@us-west-2.amazonses.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-SES-Outgoing: 2019.12.10-54.240.27.11
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_011459_845712_20D12C56 
X-CRM114-Status: GOOD (  20.57  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: brcm80211-dev-list.pdl@broadcom.com, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Soeren Moch <smoch@web.de>,
 brcm80211-dev-list@cypress.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JpdGVzOgoKPiBIaSBTb2VyZW4sCj4K
PiBBbSBEaWVuc3RhZywgMTAuIERlemVtYmVyIDIwMTksIDAwOjI5OjIxIENFVCBzY2hyaWViIFNv
ZXJlbiBNb2NoOgo+PiBPbiAxMC4xMi4xOSAwMDowOCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+
ID4gQW0gTW9udGFnLCA5LiBEZXplbWJlciAyMDE5LCAyMzozODoyMiBDRVQgc2NocmllYiBTb2Vy
ZW4gTW9jaDoKPj4gPj4gUm9ja1BybzY0IHN1cHBvcnRzIGFuIEFtcGFrIEFQNjM1OVNBIGJhc2Vk
IHdpZmkvYnQgY29tYm8gbW9kdWxlLgo+PiA+PiBUaGUgQkNNNDM1OS85IHdpZmkgY29udHJvbGxl
ciBpbiB0aGlzIG1vZHVsZSBpcyBjb25uZWN0ZWQgdG8gc2RpbzAsCj4+ID4+IGVuYWJsZSB0aGlz
IGludGVyZmFjZS4KPj4gPj4KPj4gPj4gU2lnbmVkLW9mZi1ieTogU29lcmVuIE1vY2ggPHNtb2No
QHdlYi5kZT4KPj4gPj4gLS0tCj4+ID4+IE5vdCBzdXJlIHdoZXJlIHRvIHBsYWNlIGV4YWN0bHkg
dGhlIHNkaW8wIG5vZGUgaW4gdGhlIGR0cyBiZWNhdXNlCj4+ID4+IGV4aXN0aW5nIHNkIG5vZGVz
IGFyZSBub3Qgc29ydGVkIGFscGhhYmV0aWNhbGx5Lgo+PiA+Pgo+PiA+PiBUaGlzIGxhc3QgcGF0
Y2ggaW4gdGhpcyBicmNtZm1hYyBwYXRjaCBzZXJpZXMgcHJvYmFibHkgc2hvdWxkIGJlIHBpY2tl
ZAo+PiA+PiB1cCBieSBIZWlrbyBpbmRlcGVuZGVudGx5IG9mIHRoZSByZXN0IG9mIHRoaXMgc2Vy
aWVzLiBJdCB3YXMgc2VudCB0b2dldGhlcgo+PiA+PiB0byBzaG93IGhvdyB0aGlzIGJyY21mbWFj
IGV4dGVuc2lvbiBmb3IgNDM1OS1zZGlvIHN1cHBvcnQgd2l0aCBSU0RCIGlzCj4+ID4+IHVzZWQg
YW5kIHRlc3RlZC4KPj4gPiBub2RlIHBsYWNlbWVudCBsb29rcyBnb29kIHNvIEkgY2FuIGFwcGx5
IGl0LCBqdXN0IGEgZ2VuZXJhbCBxdWVzdGlvbnMKPj4gPiBJIG9ubHkgZ290IHBhdGNoIDgvOCBh
cmUgcGF0Y2hlcyAxLTcgcmVsZXZhbnQgZm9yIHRoaXMgb25lIGFuZCB3aGF0IGFyZSB0aGV5Pwo+
PiBQYXRjaGVzIDEtNyBhcmUgdGhlIHBhdGNoZXMgdG8gc3VwcG9ydCB0aGUgQkNNNDM1OSBjaGlw
c2V0IHdpdGggU0RJTwo+PiBpbnRlcmZhY2UgaW4gdGhlIGxpbnV4IGJyY21mbWFjIG5ldC13aXJl
bGVzcyBkcml2ZXIsIHNlZSBbMV0uCj4+IAo+PiBTbyB0aGlzIHBhdGNoIHNlcmllcyBoYXMgMiBw
YXJ0czoKPj4gcGF0Y2hlcyAxLTc6IGFkZCBzdXBwb3J0IGZvciB0aGUgd2lmaSBjaGlwc2V0IGlu
IHRoZSB3aXJlbGVzcyBkcml2ZXIsCj4+IHRoaXMgaGFzIHRvIGdvIHRocm91Z2ggbmV0LXdpcmVs
ZXNzCj4+IHBhdGNoIDg6IGVuYWJsZSB0aGUgd2lmaSBtb2R1bGUgd2l0aCB0aGlzIGNoaXBzZXQg
b24gUm9ja1BybzY0LCB0aGlzIHBhdGNoCj4KPiBUaGFua3MgZm9yIHRoZSBjbGFyaWZpY2F0aW9u
IDotKSAuCj4KPiBBcyBwYXRjaCA4ICJvbmx5IiBkb2VzIHRoZSBjb3JlIHNkaW8gbm9kZSwgaXQg
ZG9lc24ndCByZWFsbHkgZGVwZW5kIG9uIHRoZQo+IGVhcmxpZXIgb25lcyBhbmQgeW91IGNhbiBz
dWJtaXQgYW55IHVhcnQtaG9va3MgZm9yIGJsdWV0b290aCBvbmNlIHRoZQo+IG90aGVyIHBhdGNo
ZXMgbGFuZCBJIGd1ZXNzLgo+Cj4KPj4gSWYgdGhpcyB3YXMgY29uZnVzaW5nLCB3aGF0IHdvdWxk
IGJlIHRoZSBpZGVhbCB3YXkgdG8gcG9zdCBzdWNoIHNlcmllcz8KPgo+IEkgdGhpbmsgZXZlcnkg
bWFpbnRhaW5lciBoYXMgc29tZSBzbGlnaHRseSBkaWZmZXJlbnQgcGVyc3BlY3RpdmUgb24gdGhp
cywKPiBidXQgcGVyc29uYWxseSBJIGxpa2UgZ2V0dGluZyB0aGUgd2hvbGUgc2VyaWVzIHRvIGZv
bGxvdyB0aGUgZGlzY3Vzc2lvbiBidXQKPiBhbHNvIHRvIGp1c3Qgc2VlIHdoZW4gdGhlIGRyaXZl
ci1zaWRlIGNoYW5nZXMgZ2V0IG1lcmdlZCwgYXMgdGhlIGR0cy1wYXJ0cwo+IG5lZWQgdG8gd2Fp
dCBmb3IgdGhhdCBpbiBhIGxvdCBvZiBjYXNlcy4KCkZXSVcgSSBwcmVmZXIgdGhlIHNhbWUgYXMg
SGVpa28uIElmIEkgZG9uJ3Qgc2VlIGFsbCB0aGUgcGF0Y2hlcyBpbiB0aGUKcGF0Y2hzZXQgSSBz
dGFydCB3b3JyeWluZyBpZiBwYXRjaHdvcmsgbG9zdCB0aGVtLCBvciBzb21ldGhpbmcsIGFuZCB0
aGVuCml0IHRha2VzIG1vcmUgdGltZSBmcm9tIG1lIHRvIGludmVzdGlnYXRlIHdoYXQgaGFwcGVu
ZWQuIFNvIEkgc3Ryb25nbHkKcmVjb21tZW5kIHNlbmRpbmcgdGhlIHdob2xlIHNlcmllcyB0byBl
dmVyeW9uZSBhcyBpdCBzYXZlcyB0aW1lLgoKLS0gCmh0dHBzOi8vd2lyZWxlc3Mud2lraS5rZXJu
ZWwub3JnL2VuL2RldmVsb3BlcnMvZG9jdW1lbnRhdGlvbi9zdWJtaXR0aW5ncGF0Y2hlcwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
