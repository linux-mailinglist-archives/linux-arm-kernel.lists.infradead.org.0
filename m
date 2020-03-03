Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B67317846D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 21:58:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=smRMHjEOwgrLaapBlFN8Gp7LlJ630o67aY2WPc9jaR0=; b=ieehKopYes2bZa
	dFK0q2gXl+kTqbCj+scnkHiZ+7EtSlLYgy/8DBZdZ7Z3EcwMingXBT18d8gGyvx14Q2xLL8WN4NTe
	1QYtq/MCK83Dzdwza/nY9cntu36EPFIhZptk7p3znQWw/HQXAOUk4ofGjxOD40e8G6GELkXTDOdQN
	JkvU2OvlyVN1ME5o0Q7cWTcNAZbUfxntulQcDbRlHL1jaLOjiqmewny7QXYjmtwcoezlUGfwj7wF3
	nV+3j67YrUXp3AcmGMDrgJXFHGO6+8y/1nIGn0MIwecHzFfOVdp3cmUskJ607NCnh2+K/GNy7BCZN
	aTWBy42cXV0eqwFUuRdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Ec1-0004DN-Os; Tue, 03 Mar 2020 20:57:57 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Ebu-0004D1-KS
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 20:57:52 +0000
Received: from [IPv6:2a03:2260:3009:300:402e:ee34:440:98b9] (unknown
 [IPv6:2a03:2260:3009:300:402e:ee34:440:98b9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 9D9C8231D9;
 Tue,  3 Mar 2020 21:57:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1583269066;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PtQAp1jd9bV2ryiqqYe14ChtIVkk/SPZAu261A3lfB8=;
 b=Tlbxpxb2wPtvw/8v3cyp4HREFGsBcixG0xBHoPu9M0emxm/F2EnXALLqn2NyF2dhf8Ue4X
 M+y7zm4viI68KD2kplXWo98NwYd11nyaoA4iB135C7ALIUCslb2E9OrglPclYZzsZw+phE
 QbHIebUEgOk+/TUoxoLfK6zHc+iRArk=
Date: Tue, 03 Mar 2020 21:57:42 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <20200303184737.GD26191@bogus>
References: <20200303174306.6015-1-michael@walle.cc>
 <20200303174306.6015-4-michael@walle.cc> <20200303184737.GD26191@bogus>
MIME-Version: 1.0
Subject: Re: [PATCH v3 3/9] tty: serial: fsl_lpuart: handle EPROBE_DEFER for
 DMA
To: Rob Herring <robh@kernel.org>
From: Michael Walle <michael@walle.cc>
Message-ID: <8DA9ACF0-755C-4AA7-A292-C00FA025B30B@walle.cc>
X-Spamd-Bar: /
X-Spam-Status: No, score=-0.10
X-Rspamd-Server: web
X-Spam-Score: -0.10
X-Rspamd-Queue-Id: 9D9C8231D9
X-Spamd-Result: default: False [-0.10 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[13]; NEURAL_HAM(-0.00)[-0.511];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:201701, ipnet:2a03:2260:3000::/36, country:DE];
 MID_RHS_MATCH_FROM(0.00)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_125750_831003_881E810A 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Peng Fan <peng.fan@nxp.com>, Vabhav Sharma <vabhav.sharma@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Yuan Yao <yao.yuan@nxp.com>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMy4gTcOkcnogMjAyMCAxOTo0NzozNyBNRVogc2NocmllYiBSb2IgSGVycmluZyA8cm9iaEBr
ZXJuZWwub3JnPjoKPk9uIFR1ZSwgTWFyIDAzLCAyMDIwIGF0IDA2OjQzOjAwUE0gKzAxMDAsIE1p
Y2hhZWwgV2FsbGUgd3JvdGU6Cj4+IFRoZSBETUEgY2hhbm5lbCBtaWdodCBub3QgYmUgYXZhaWxh
YmxlIGF0IHByb2JlIHRpbWUuIFRoaXMgaXMgZXNwLgo+dGhlCj4+IGNhc2UgaWYgdGhlIERNQSBj
b250cm9sbGVyIGhhcyBhbiBJT01NVSBtYXBwaW5nLgo+Cj5UaGUgc3ViamVjdCBzaG91bGQgYmUg
dXBkYXRlZCBhcyB0aGlzIGRvZXNuJ3QgaW52b2x2ZSBkZWZlcnJlZCBwcm9iZQo+YW55IG1vcmUu
IAoKb2sKCj4KPj4gVGhlcmUgaXMgYWxzbyBhbm90aGVyIGNhdmVhdC4gSWYgdGhlcmUgaXMgbm8g
RE1BIGNvbnRyb2xsZXIgYXQgYWxsLAo+PiBkbWFfcmVxdWVzdF9jaGFuKCkgd2lsbCBhbHNvIHJl
dHVybiAtRVBST0JFX0RFRkVSLiBUaHVzIHdlIGNhbm5vdAo+dGVzdAo+PiBmb3IgLUVQUk9CRV9E
RUZFUiBpbiBwcm9iZSgpLiBPdGhlcndpc2UgdGhlIGxwdWFydCBkcml2ZXIgd2lsbCBmYWlsCj50
bwo+PiBwcm9iZSBpZiwgZm9yIGV4YW1wbGUsIHRoZSBETUEgZHJpdmVyIGlzIG5vdCBlbmFibGVk
IGluIHRoZSBrZXJuZWwKPj4gY29uZmlndXJhdGlvbi4KPj4gCj4+IFRvIHdvcmthcm91bmQgdGhp
cywgd2UgcmVxdWVzdCB0aGUgRE1BIGNoYW5uZWwgaW4gX3N0YXJ0dXAoKS4gT3RoZXIKPj4gc2Vy
aWFsIGRyaXZlcnMgZG8gaXQgdGhlIHNhbWUgd2F5Lgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogTWlj
aGFlbCBXYWxsZSA8bWljaGFlbEB3YWxsZS5jYz4KPj4gLS0tCj4+ICBkcml2ZXJzL3R0eS9zZXJp
YWwvZnNsX2xwdWFydC5jIHwgODQKPisrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLQo+
PiAgMSBmaWxlIGNoYW5nZWQsIDUzIGluc2VydGlvbnMoKyksIDMxIGRlbGV0aW9ucygtKQo+PiAK
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdHR5L3NlcmlhbC9mc2xfbHB1YXJ0LmMKPmIvZHJpdmVy
cy90dHkvc2VyaWFsL2ZzbF9scHVhcnQuYwo+PiBpbmRleCBjMzFiOGYzZGI2YmYuLjBiOGM0Nzdi
MzJhMyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy90dHkvc2VyaWFsL2ZzbF9scHVhcnQuYwo+PiAr
KysgYi9kcml2ZXJzL3R0eS9zZXJpYWwvZnNsX2xwdWFydC5jCj4+IEBAIC0xNDkzLDM2ICsxNDkz
LDYzIEBAIHN0YXRpYyB2b2lkIHJ4X2RtYV90aW1lcl9pbml0KHN0cnVjdAo+bHB1YXJ0X3BvcnQg
KnNwb3J0KQo+PiAgc3RhdGljIHZvaWQgbHB1YXJ0X3R4X2RtYV9zdGFydHVwKHN0cnVjdCBscHVh
cnRfcG9ydCAqc3BvcnQpCj4+ICB7Cj4+ICAJdTMyIHVhcnRiYXVkOwo+PiArCWludCByZXQ7Cj4+
ICAKPj4gLQlpZiAoc3BvcnQtPmRtYV90eF9jaGFuICYmICFscHVhcnRfZG1hX3R4X3JlcXVlc3Qo
JnNwb3J0LT5wb3J0KSkgewo+PiAtCQlpbml0X3dhaXRxdWV1ZV9oZWFkKCZzcG9ydC0+ZG1hX3dh
aXQpOwo+PiAtCQlzcG9ydC0+bHB1YXJ0X2RtYV90eF91c2UgPSB0cnVlOwo+PiAtCQlpZiAobHB1
YXJ0X2lzXzMyKHNwb3J0KSkgewo+PiAtCQkJdWFydGJhdWQgPSBscHVhcnQzMl9yZWFkKCZzcG9y
dC0+cG9ydCwgVUFSVEJBVUQpOwo+PiAtCQkJbHB1YXJ0MzJfd3JpdGUoJnNwb3J0LT5wb3J0LAo+
PiAtCQkJCSAgICAgICB1YXJ0YmF1ZCB8IFVBUlRCQVVEX1RETUFFLCBVQVJUQkFVRCk7Cj4+IC0J
CX0gZWxzZSB7Cj4+IC0JCQl3cml0ZWIocmVhZGIoc3BvcnQtPnBvcnQubWVtYmFzZSArIFVBUlRD
UjUpIHwKPj4gLQkJCQlVQVJUQ1I1X1RETUFTLCBzcG9ydC0+cG9ydC5tZW1iYXNlICsgVUFSVENS
NSk7Cj4+IC0JCX0KPj4gKwlzcG9ydC0+ZG1hX3R4X2NoYW4gPSBkbWFfcmVxdWVzdF9zbGF2ZV9j
aGFubmVsKHNwb3J0LT5wb3J0LmRldiwKPiJ0eCIpOwo+PiArCWlmICghc3BvcnQtPmRtYV90eF9j
aGFuKSB7Cj4+ICsJCWRldl9pbmZvX29uY2Uoc3BvcnQtPnBvcnQuZGV2LAo+PiArCQkJICAgICAg
IkRNQSB0eCBjaGFubmVsIHJlcXVlc3QgZmFpbGVkLCBvcGVyYXRpbmcgd2l0aG91dCB0eAo+RE1B
XG4iKTsKPgo+TWlnaHQgYmUgdXNlZnVsIHRvIHByaW50IHRoZSBlcnJubyB0b28uCgpJIGRpZG4n
dCB3YW50IHRvIGNoYW5nZSB0aGUgb3JpZ2luYWwgZXJyb3IgbWVzc2FnZS4gQnV0IEkgY2FuIGNo
YW5nZSB0aGF0IHdoZW4gSSB1cGRhdGUgdGhlIHN1YmplY3QuIAoKLW1pY2hhZWwKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
