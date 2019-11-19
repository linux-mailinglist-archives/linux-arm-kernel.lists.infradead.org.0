Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38ED11022BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 12:15:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KqcgT/5UItiNm4N3CAoXnpFQgJcrcYwAGeipn+C7jOU=; b=pD+OqsM0yZ2TWR
	p6Esu9PcsR4aCmx9GHhOAgruz/cZuYF3lzy12nVw5jimzkRx4FAHwB/M5SV1Gu9TBqid594Bor5IY
	ywMbpjw1xI+aXFv2H4xlj8NpZVQ1qq10ROdhNcLtwXjdBFcs5t2J3LMg2EnoY19noBPoLTqmi17ZC
	x1CVQwxT2s+8/ixkOyX0gj0fLBvZinadTTOGMsE61Fjk9JUX5zHqP/8sZ41bNklfk54G+j2uqSuZL
	crId69Q3Qq5SWTNIDtUXF2pNkug0w+IasBtLuBfWDB/mFjtpXGPXftAjgHJyLEU/QhCnzR5ct2nQN
	O7Tj/KA+eHbvS2wapfnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX1U2-0001E7-BY; Tue, 19 Nov 2019 11:15:46 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX1To-0001D0-9y; Tue, 19 Nov 2019 11:15:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 0E48BBA0D;
 Tue, 19 Nov 2019 11:15:30 +0000 (UTC)
Subject: Re: [PATCH 5/7] ARM: dts: rtd1195: Introduce r-bus
To: James Tai <james.tai@realtek.com>
References: <20191111030434.29977-1-afaerber@suse.de>
 <20191111030434.29977-6-afaerber@suse.de>
 <a43d184d74c34e269714858b2635c35e@realtek.com>
 <960a80b9-b1bf-3709-bbb7-fc2a3c3ae1da@suse.de>
 <753c18eee3fb4e9ea25d42798542b3dd@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <ed66e712-4ceb-374c-dd36-476d79706251@suse.de>
Date: Tue, 19 Nov 2019 12:15:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <753c18eee3fb4e9ea25d42798542b3dd@realtek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_031532_514261_4E2B0DD6 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsCgpBbSAxOC4xMS4xOSB1bSAwNzo1MyBzY2hyaWViIEphbWVzIFRhaToKPj4gU28g
YW5vdGhlciBxdWVzdGlvbiwgYXBwbGljYWJsZSB0byBhbGwgU29DczogVGhpcyByZXNlcnZlZCBC
b290IFJPTSBhcmVhIGF0Cj4+IHRoZSBzdGFydCBvZiB0aGUgYWRkcmVzcyBzcGFjZSwgaGVyZSBv
ZiBzaXplIDB4YTgwMCwgaXMgdGhhdCBjb3BpZWQgaW50byBSQU0sIG9yCj4+IGlzIHRoYXQgdGhl
IGFjdHVhbCBST00gb3ZlcmxhcHBpbmcgUkFNPyBJZiB0aGUgbGF0dGVyLCB3ZSBzaG91bGQgZXhj
bHVkZSBpdAo+PiBmcm9tIC9tZW1vcnlAMCdzIHJlZyAobWFraW5nIGl0IC9tZW1vcnlAYTgwMCks
IGFuZCBhZGQgaXQgdG8gc29jJ3MgcmFuZ2VzCj4+IGhlcmUgZm9yIGNvcnJlY3RuZXNzLgo+Pgo+
IFllcywgd2Ugc2hvdWxkIGV4Y2x1ZGUgaXQgZnJvbSAvbWVtb3J5QDAncyByZWcuCgpPSywgd2ls
bCBsb29rIGludG8gaXQuCgo+IAo+PiBXaXRoIHRoZSBmb2xsb3ctdXAgcXVlc3Rpb246IElzIGl0
IGNvcnJlY3QgdGhhdCwgZ2l2ZW4gdGhlIHNpemUgMHhhODAwLCBJIGhhdmUgYQo+PiBnYXAgYmV0
d2VlbiAvbWVtcmVzZXJ2ZS9zIGZyb20gMHhhODAwIHRvIDB4YzAwMCwgb3Igc2hvdWxkIHdlIHJl
c2VydmUgdGhhdAo+PiBnYXAgYnkgZXh0ZW5kaW5nIHRoZSBuZXh0IC9tZW1yZXNlcnZlLyBvciBp
bnNlcnRpbmcgb25lPwo+IAo+IFdlIHNob3VsZCByZXNlcnZlIG1lbW9yeSBhZGRyZXNzIGZyb20g
MHgwMDAwIHRvIDB4YTgwMCBmb3IgdGhlIGludGVybmFsIFJPTS4KClBsZWFzZSBzZWUgWzFdIC0g
SSBoYWQgYWxyZWFkeSB1cGRhdGVkIHRoZSBzZWNvbmQgcmVzZXJ2YXRpb24gdG8gc3RhcnQKYXQg
MHhhODAwIGFuZCBleHRlbmRlZCBpdCB0byAweDEwMDAwMCBiZWZvcmUgeW91ciByZXNwb25zZSBo
ZXJlLgoKVGhlIHByZXZpb3VzICJib290Y29kZSIgc2l6ZSBvZiAweGMwMDAgY2FuIGJlIGZvdW5k
IGhlcmU6Cmh0dHBzOi8vZ2l0aHViLmNvbS9CUEktU0lOT1ZPSVAvQlBJLU00LWJzcC9ibG9iL21h
c3Rlci9saW51eC1ydGsvYXJjaC9hcm0vbWFjaC1ydGQxMTl4L2luY2x1ZGUvbWFjaC9tZW1vcnku
aApodHRwczovL2dpdGh1Yi5jb20vQlBJLVNJTk9WT0lQL0JQSS1NNC1ic3AvYmxvYi9tYXN0ZXIv
bGludXgtcnRrL2FyY2gvYXJtL2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTE5eC9ydGQtMTE5eC1ob3Jz
ZXJhZGlzaC5kdHMKCkFzIHlvdSBjYW4gc2VlIHRoZSAweGMwMDAgYW5kIDB4ZjQwMDAgd2VyZSBo
YXJkY29kZWQgYW5kIGRpZCBub3QgZGVwZW5kCm9uIFNZU19CT09UQ09ERV9NRU1TSVpFLi4uCkZv
ciBsYXRlciBTb0NzIEkgc2F3IHNvbWUgRklYTUUoPykgY29tbWVudCB0aGF0IGFyZWEgdXAgdG8g
MHgxMDAwMDAgd2FzCnJlc2VydmVkIGR1ZSB0byBzb21lIEppcmEgdGlja2V0IGFuZCBzaG91bGQg
Z2V0IGZpeGVkPyBBbnkgaW5zaWdodHMgb24Kd2hhdCBpcyBpbiB0aGF0IG1lbW9yeSByYW5nZSBj
YXVzaW5nIHByb2JsZW1zPwoKUmVnYXJkcywKQW5kcmVhcwoKWzFdIGh0dHBzOi8vcGF0Y2h3b3Jr
Lmtlcm5lbC5vcmcvcGF0Y2gvMTEyNDgwMzMvCgotLSAKU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMg
R2VybWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQpHRjog
RmVsaXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
