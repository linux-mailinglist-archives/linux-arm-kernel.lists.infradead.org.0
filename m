Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC5B179181
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 14:37:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BERbFZN2Zt2vRGeaxWaP2AK2XDoE8egdna+WtnyvO7M=; b=c685nOwYwcwLv/
	IjcTs/1GL77w9frIlFzIeBxTTcX0g9TzQ45eVTCsTuX8yDSgJwfoQ5Sj4wThnMYI7OOofEjLWDSQU
	OphiPdnqOEV72yptEbUNT9OVXlFmX2L1QxW9vgc275+tkMLe2aswWivEUiXHUtYqI2RI4gz3hVyJ5
	960piLxWEXWgRruYxLoUQYGIFRpSS5yyvECCCLEWtJ71iXZBnzO2dYiyUzrhT5FTFpcroacYkr3FL
	Q4Yuq/MYZRLnCH7wLwqfoPlocFiFKfg2QzJdzwa+ojprCu1ZZSP39RhRKMMubtJP6HxRBz0dMlIIu
	cLBe5wVTp+159yRz69vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9UDG-0002xK-69; Wed, 04 Mar 2020 13:37:26 +0000
Received: from poy.remlab.net ([2001:41d0:2:5a1a::]
 helo=ns207790.ip-94-23-215.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9UD9-0002vu-Rd
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 13:37:21 +0000
Received: from basile.remlab.net (87-92-31-51.bb.dnainternet.fi [87.92.31.51])
 (Authenticated sender: remi)
 by ns207790.ip-94-23-215.eu (Postfix) with ESMTPSA id D8C6F5FD39;
 Wed,  4 Mar 2020 14:37:13 +0100 (CET)
From: =?ISO-8859-1?Q?R=E9mi?= Denis-Courmont <remi@remlab.net>
To: linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: relax jump label ASM constraints
Date: Wed, 04 Mar 2020 15:37:12 +0200
Message-ID: <2592563.ryHoOe0dYf@basile.remlab.net>
Organization: Remlab
In-Reply-To: <20200304123932.GA3575@lakrids.cambridge.arm.com>
References: <20200304093419.190879-1-remi@remlab.net>
 <20200304123932.GA3575@lakrids.cambridge.arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_053720_041821_E170B95F 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpMZSBrZXNraXZpaWtrb25hIDQuIG1hYWxpc2t1dXRhIDIwMjAsIDE0LjM5LjMzIEVFVCBN
YXJrIFJ1dGxhbmQgYSDDqWNyaXQgOgo+IE9uIFdlZCwgTWFyIDA0LCAyMDIwIGF0IDExOjM0OjE5
QU0gKzAyMDAsIFLDqW1pIERlbmlzLUNvdXJtb250IHdyb3RlOgo+ID4gRnJvbTogUmVtaSBEZW5p
cy1Db3VybW9udCA8cmVtaS5kZW5pcy5jb3VybW9udEBodWF3ZWkuY29tPgo+ID4gCj4gPiBUaGUg
c3RhdGljIGtleSBhZGRyZXNzIGlzIHN0b3JlZCBpbiB0aGUganVtcCBsYWJlbCB0YWJsZS4gSXQg
bmVlZHMgdG8KPiA+IGJlIGEgcnVuLXRpbWUgY29uc3RhbnQuIEhvd2V2ZXIsIGl0IGRvZXMgbm90
IG5lZWQgdG8gYmUgYSBjb25zdGFudAo+ID4gc3VpdGFibGUgZm9yIGV4cGFuc2lvbiBhcyBhbiBp
bW1lZGlhdGUgdmFsdWUsIGdpdmVuIHRoYXQgaXQgaXMKPiA+IGV4cGFuZGVkIGluIGEgZnVsbCA2
NC1iaXRzICgucXVhZCkgc3RhdGVtZW50Lgo+IAo+IEknbSBub3Qgc3VyZSB0aGF0J3MgcXVpdGUg
dHJ1ZSwKCkl0IGl0IGluZGVlZCBub3QgdHJ1ZS4gU29tZSB0aW1lIGVsYXBzZWQgYmV0d2VlbiB3
cml0aW5nIHRoZSBwYXRjaCBhbmQgCmRlc2NyaWJpbmcgaXQsIGFuZCBJJ2QgZm9yZ2V0dGVuIHRo
ZSBleGFjdCBkZXRhaWxzIGluIHRoZSBtZWFuIHRpbWUgOiQKCldoYXQncyBhY3R1YWxseSBoYXBw
ZW5pbmcgaXMgdGhhdCB0aGUgY3VycmVudCBjb25zdHJhaW50IHdhbnRzIGEgY29uc3RhbnQsIGJ1
dCAKaW4gcmVhbGl0eSwgZWl0aGVyIGEgY29uc3RhbnQgb3IgYSBzeW1ib2wgaXMgYWNjZXB0YWJs
ZS4gSW4gdGhlIGxhdGVyIGNhc2UsIAp0aGUgLnF1YWQgd2lsbCBiZSBhIGNvbnN0YW50LgoKPiBz
aW5jZSBpdCdzIHVzZWQgaW4gYW4gZXhwcmVzc2lvbgo+IGV2YWx1YXRlZCBieSB0aGUgYXNzZW1i
bGVyLiBJSVJDIHRoZSAiJWMwIC0gLiIgZXhwcmVzc2lvbiBjYW5ub3QgYmUKPiByZXByZXNlbnRl
ZCBieSBhbiBBQXJjaDY0IEVMRiByZWxvY2F0aW9uLgoKQ2hhbmdpbmcgdGhlIGNvbnN0cmFpbnQg
d29uJ3QgYWZmZWN0IHRoZSBhYmlsaXR5IG9yIGluYWJpbGl0eSBvZiB0aGUgY29tcGlsZXIgCmFu
ZCBsaW5rZXIgdG8gZ2VuZXJhdGUgYSByZWxvY2F0aW9uLiBJbiB0aGlzIGNhc2UsIHRoZSB2YWx1
ZSBpcyBlc3NlbnRpYWxseSBhbiAKb2Zmc2V0IGFuZCBpdCBqdXN0IHdvcmtzIGVpdGhlciB3YXku
Cgo+IEhhdmUgSSBtaXNzZWQgc29tZXRoaW5nIHRoYXQgJ1MnIGFsbG93cyB0aGF0ICdpJyBkb2Vz
IG5vdCwgb3IgaXMgdGhlcmUgYQo+IGZ1bmN0aW9uYWwgcHJvYmxlbSB0b2RheT8KCk5vLiBJIGRv
bid0IHJlbWVtYmVyIGV4YWN0bHkgd2hpY2ggY29tcGlsZXIgb3IgY29tcGlsZXIgZmxhZ3MgYW5k
IGtlcm5lbCAKY29uZmlndXJhdGlvbiBJIHdhcyB0cnlpbmcgdG8gbm90aWNlIHRoZSBpbmNvbnNp
c3RlbmN5LiBCdXQgaXQncyBvbmx5IGEgbGF0ZW50IAppc3N1ZSBhcyBmYXIgYXMgSSBhbSBhd2Fy
ZS4KCi0tIApSw6ltaSBEZW5pcy1Db3VybW9udApodHRwOi8vd3d3LnJlbWxhYi5uZXQvCgoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
