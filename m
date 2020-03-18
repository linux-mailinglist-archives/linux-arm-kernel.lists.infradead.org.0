Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFBD18A254
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 19:29:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uN5RY2finRBdMG/E8Un1d4Ld+rY5REGfYN0NXzr/Iwo=; b=jtZDhr97fXlUDf
	vb9Fn1EJFWNA9x+kNtU79zVws8NM0mlkzIQHx+or6O9TZO8SuoJ/l6n1yWSCZTEc21WBnIgGrek9Y
	QzH+DneWKpte8C2qa82PwXAGi96YnoOcKZX7Vf8rfIeA2o1rmChjwW2PLPKkswtY0apT4+CKDVrCu
	4TzOtKDG/RgdvfE13TMC83RSbk1VlSuRGnS3wC/N9Z4R8Wvpa06GRgbgjcHkt9/4vxBl/exl5oYRI
	iXqCCF30f8DJkL5Jca70qQ1So7pXLqogSkJViLPri5pvigS8tbk23cVi35bo7iGjo0Qu5o0oj8DEQ
	UPh0ChMwpJ+UvqxNf/Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEdRk-0000lg-FH; Wed, 18 Mar 2020 18:29:40 +0000
Received: from poy.remlab.net ([2001:41d0:2:5a1a::]
 helo=ns207790.ip-94-23-215.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEdRb-0000lC-Nr
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 18:29:33 +0000
Received: from basile.remlab.net (87-92-31-51.bb.dnainternet.fi [87.92.31.51])
 (Authenticated sender: remi)
 by ns207790.ip-94-23-215.eu (Postfix) with ESMTPSA id 7E4E95FB07;
 Wed, 18 Mar 2020 19:29:13 +0100 (CET)
From: =?ISO-8859-1?Q?R=E9mi?= Denis-Courmont <remi@remlab.net>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 1/3] arm64: clean up trampoline vector loads
Date: Wed, 18 Mar 2020 20:29:12 +0200
Message-ID: <8127163.Epc2VWTDuo@basile.remlab.net>
Organization: Remlab
In-Reply-To: <20200318180630.GE94111@arrakis.emea.arm.com>
References: <20200316124046.103844-1-remi@remlab.net>
 <20200318175709.GD94111@arrakis.emea.arm.com>
 <20200318180630.GE94111@arrakis.emea.arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_112931_922262_8660C27D 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUga2Vza2l2aWlra29uYSAxOC4gbWFhbGlza3V1dGEgMjAyMCwgMjAuMDYuMzAgRUVUIENhdGFs
aW4gTWFyaW5hcyBhIMOpY3JpdCA6Cj4gT24gV2VkLCBNYXIgMTgsIDIwMjAgYXQgMDU6NTc6MDlQ
TSArMDAwMCwgQ2F0YWxpbiBNYXJpbmFzIHdyb3RlOgo+ID4gT24gTW9uLCBNYXIgMTYsIDIwMjAg
YXQgMDI6NDA6NDRQTSArMDIwMCwgUsOpbWkgRGVuaXMtQ291cm1vbnQgd3JvdGU6Cj4gPiA+IEZy
b206IFLDqW1pIERlbmlzLUNvdXJtb250IDxyZW1pLmRlbmlzLmNvdXJtb250QGh1YXdlaS5jb20+
Cj4gPiA+IAo+ID4gPiBUaGlzIHN3aXRjaGVzIGZyb20gY3VzdG9tIGluc3RydWN0aW9uIHBhdHRl
cm5zIHRvIHRoZSByZWd1bGFyIGxhcmdlCj4gPiA+IG1lbW9yeSBtb2RlbCBzZXF1ZW5jZSB3aXRo
IEFEUlAgYW5kIExEUi4gSW4gZG9pbmcgc28sIHRoZSBBREQKPiA+ID4gaW5zdHJ1Y3Rpb24gY2Fu
IGJlIGVsaW1pbmF0ZWQgaW4gdGhlIFNERUkgaGFuZGxlciwgYW5kIHRoZSBjb2RlIG5vCj4gPiA+
IGxvbmdlciBhc3N1bWVzIHRoYXQgdGhlIHRyYW1wb2xpbmUgdmVjdG9ycyBhbmQgdGhlIHZlY3Rv
cnMgYWRkcmVzcyBib3RoCj4gPiA+IHN0YXJ0IG9uIGEgcGFnZSBib3VuZGFyeS4KPiA+ID4gCj4g
PiA+IFNpZ25lZC1vZmYtYnk6IFLDqW1pIERlbmlzLUNvdXJtb250IDxyZW1pLmRlbmlzLmNvdXJt
b250QGh1YXdlaS5jb20+Cj4gPiAKPiA+IEkgcXVldWVkIHRoZSAzIHRyYW1wb2xpbmUgcGF0Y2hl
cyBmb3IgNS43LiBUaGFua3MuCj4gCj4gLi4uIGFuZCByZW1vdmVkLiBJIGFwcGxpZWQgdGhlbSBv
biB0b3Agb2YgYXJtNjQgZm9yLW5leHQvYXNtLWFubm90YXRpb25zCj4gYW5kIHdpdGggZGVmY29u
ZmlnIEkgZ2V0Ogo+IAo+ICAgTEQgICAgICAudG1wX3ZtbGludXgxCj4gYXJjaC9hcm02NC9rZXJu
ZWwvZW50cnkubzogaW4gZnVuY3Rpb24gYHRyYW1wX3ZlY3RvcnMnOgo+IGFyY2gvYXJtNjQva2Vy
bmVsL2VudHJ5LlM6ODM4OiguZW50cnkudHJhbXAudGV4dCsweDQzYyk6IHJlbG9jYXRpb24KPiB0
cnVuY2F0ZWQgdG8gZml0OiBSX0FBUkNINjRfTERTVDY0X0FCU19MTzEyX05DIGFnYWluc3Qgc3lt
Ym9sCj4gYF9fZW50cnlfdHJhbXBfZGF0YV9zdGFydCcgZGVmaW5lZCBpbiAucm9kYXRhIHNlY3Rp
b24gaW4KPiAKPiBJIGhhdmVuJ3QgYmlzZWN0ZWQgdG8gc2VlIHdoaWNoIHBhdGNoIGNhdXNlZCB0
aGlzIGlzc3VlLgoKVWhvLCByaWdodCA6LSggSXQgb25seSBidWlsZHMgd2l0aCBTREVJIGVuYWJs
ZWQgOi0kCgpJJ2xsIGNoZWNrIGZ1cnRoZXIuCgotLSAKUsOpbWkgRGVuaXMtQ291cm1vbnQKaHR0
cDovL3d3dy5yZW1sYWIubmV0LwoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
