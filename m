Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 788CD113D2D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 09:38:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:
	Subject:To:MIME-Version:From:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vt/rWqibC2So8H0sqJcG8fwPUIT/cek1K/HwKMrtnkw=; b=SjiC8l/JUny46O
	041MeEFyCyQyGTKpk8X8p2j223npWgTcW+BmCUudftpOCTUAnt5powKECp/NhgjjISUkaDz+9b7mG
	AgKnLI44X6WTOWXhLVw3FPZMcusvT50QUmU7r+0agfxEcLodo95eCsSERNa1ICsKSHRMSc3oJh3ID
	xQRyHKjYajrvvR70hog/JPQcv4Rat1whFyofmK3Co4u2MY+Yb7LLxZsmpxuayf1o3Wkf/+nrkDjDh
	/ByKXWnhVCli43kL0qEd+FXBGTx5D2f/9c5Z2AKGCQLbdKjtZ3pVQM97V9XCvgjLx1Wf3IdRPAETd
	3Lg34MExs0uNZGFKPYIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icmeO-0002cw-Cl; Thu, 05 Dec 2019 08:38:16 +0000
Received: from mx01-fr.bfs.de ([193.174.231.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icmeH-0002cF-BS
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 08:38:11 +0000
Received: from mail-fr.bfs.de (mail-fr.bfs.de [10.177.18.200])
 by mx01-fr.bfs.de (Postfix) with ESMTPS id 7782D202F1;
 Thu,  5 Dec 2019 09:37:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901; 
 t=1575535076;
 h=from:from:sender:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=N89mIBhLkn3llR08ackf1tw/9b9UA+6X9J+YpdHprTc=;
 b=xVw37OiWCXFKBfYcm4cpaqktWxfdbvvR7mHMQgsRfDYECj3xkiWCbVAiBWI8JnJWvyAcUz
 zOKOvQyRElw14l6T/T8THSq9CLDo9jAbNYjMsdKMTmHR6ZVtNsxZMAJFtmV8Vg6ZjqoKZQ
 TrFeztpQBefHWudZYnvGC4I2b2z7ylccPugaMU9aAWWFxAcA/+xnWNbKGJSgagwSYUoe+M
 zzU6fp3UIhn2RJoHQCAyOiQxaANMCtJ5Vy0TkgzgHdoRxkUs2VtKeKYfLDl9CYazklEqmV
 rPigI2Of/Fh3nRfKon5hR+ki0IQtf1YmMNWB4PO3YQRmY2NiGGdZmqV6qLwzqw==
Received: from [134.92.181.33] (unknown [134.92.181.33])
 by mail-fr.bfs.de (Postfix) with ESMTPS id 1EDBABEEBD;
 Thu,  5 Dec 2019 09:37:56 +0100 (CET)
Message-ID: <5DE8C1E3.4080204@bfs.de>
Date: Thu, 05 Dec 2019 09:37:55 +0100
From: walter harms <wharms@bfs.de>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; de;
 rv:1.9.1.16) Gecko/20101125 SUSE/3.0.11 Thunderbird/3.0.11
MIME-Version: 1.0
To: =?UTF-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH] pwm: sun4i: Narrow scope of local variable
References: <20191002101624.gljyf7g4nia2rcbx@pengutronix.de>
 <20191205072404.6858-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20191205072404.6858-1-u.kleine-koenig@pengutronix.de>
X-Spam-Status: No, score=-3.07
Authentication-Results: mx01-fr.bfs.de
X-Spamd-Result: default: False [-3.07 / 7.00]; ARC_NA(0.00)[];
 HAS_REPLYTO(0.00)[wharms@bfs.de]; BAYES_HAM(-2.97)[99.88%];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 FREEMAIL_ENVRCPT(0.00)[gmail.com]; TAGGED_RCPT(0.00)[];
 MIME_GOOD(-0.10)[text/plain]; REPLYTO_ADDR_EQ_FROM(0.00)[];
 DKIM_SIGNED(0.00)[]; RCPT_COUNT_SEVEN(0.00)[8];
 NEURAL_HAM(-0.00)[-0.999,0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; RCVD_COUNT_TWO(0.00)[2];
 MID_RHS_MATCH_FROM(0.00)[]; RCVD_TLS_ALL(0.00)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_003809_714239_9811C86C 
X-CRM114-Status: GOOD (  19.08  )
X-Spam-Score: 2.4 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.6 RCVD_IN_SBL            RBL: Received via a relay in Spamhaus SBL
 [134.92.181.33 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: wharms@bfs.de
Cc: linux-pwm@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, kernel@pengutronix.de,
 Colin King <colin.king@canonical.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpBbSAwNS4xMi4yMDE5IDA4OjI0LCBzY2hyaWViIFV3ZSBLbGVpbmUtS8O2bmlnOgo+IFRoZSB2
YXJpYWJsZSBwdmFsIGlzIG9ubHkgdXNlZCBpbiBhIHNpbmdsZSBibG9jayBpbiB0aGUgZnVuY3Rp
b24KPiBzdW40aV9wd21fY2FsY3VsYXRlKCkuIFNvIGRlY2xhcmUgaXQgaW4gYSBtb3JlIGxvY2Fs
IHNjb3BlIHRvIHNpbXBsaWZ5Cj4gdGhlIGZ1bmN0aW9uIGZvciBodW1hbnMgYW5kIGNvbXBpbGVy
cy4KPiAKPiBXaGlsZSB0aGUgZGlmZnN0YXQgZm9yIHRoaXMgcGF0Y2ggaXMgbmVnYXRpdmUgZm9y
IHRoaXMgcGF0Y2ggSSBzdGlsbAo+IHRoaW5nIHRoZSBhZHZhbnRhZ2Ugb2YgaGF2aW5nIGEgbmFy
cm93ZXIgc2NvcGUgaXMgYmVuZWZpY2lhbC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5l
LUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgo+IC0tLQo+IEhlbGxvLAo+
IAo+IGZvciB0aGUgcGF0Y2ggdGhhdCBiZWNhbWUKPiAKPiAJMWI5OGFkM2IzYmU5ICgicHdtOiBz
dW40aTogRHJvcCByZWR1bmRhbnQgYXNzaWdubWVudCB0byB2YXJpYWJsZSBwdmFsIikKPiAKPiAo
YW5kIHdoaWNoIHlpZWxkZWQgdGhlIHNpdHVhdGlvbiB0aGF0IHB2YWwgaXMgb25seSB1c2VkIGlu
IHRoaXMgc2luZ2xlCj4gYmxvY2spIEkgc3VnZ2VzdGVkIHRvIGRvIHRoaXMgY2hhbmdlLiBUaGlz
IHdhcyBpZ25vcmVkIGhvd2V2ZXIgYnkgYm90aAo+IENvbGluIGFuZCBUaGllcnJ5IHdpdGhvdXQg
Y29tbWVudC4gU28gSSBzdWdnZXN0IHRoZSBjaGFuZ2UgaGVyZQo+IHNlcGFyYXRlbHkuCj4gCj4g
QmVzdCByZWdhcmRzCj4gVXdlCj4gCj4gIGRyaXZlcnMvcHdtL3B3bS1zdW40aS5jIHwgNCArKyst
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgYi9kcml2ZXJzL3B3bS9wd20tc3Vu
NGkuYwo+IGluZGV4IDU4MWQyMzI4NzMzMy4uODkxOWU2YWI3NTc3IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvcHdtL3B3bS1zdW40aS5jCj4gKysrIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKPiBA
QCAtMTQ5LDcgKzE0OSw3IEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX2NhbGN1bGF0ZShzdHJ1Y3Qg
c3VuNGlfcHdtX2NoaXAgKnN1bjRpX3B3bSwKPiAgCQkJICAgICAgIHUzMiAqZHR5LCB1MzIgKnBy
ZCwgdW5zaWduZWQgaW50ICpwcnNjbHIpCj4gIHsKPiAgCXU2NCBjbGtfcmF0ZSwgZGl2ID0gMDsK
PiAtCXVuc2lnbmVkIGludCBwdmFsLCBwcmVzY2FsZXIgPSAwOwo+ICsJdW5zaWduZWQgaW50IHBy
ZXNjYWxlciA9IDA7Cj4gIAo+ICAJY2xrX3JhdGUgPSBjbGtfZ2V0X3JhdGUoc3VuNGlfcHdtLT5j
bGspOwo+ICAKPiBAQCAtMTcwLDYgKzE3MCw4IEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX2NhbGN1
bGF0ZShzdHJ1Y3Qgc3VuNGlfcHdtX2NoaXAgKnN1bjRpX3B3bSwKPiAgCWlmIChwcmVzY2FsZXIg
PT0gMCkgewo+ICAJCS8qIEdvIHVwIGZyb20gdGhlIGZpcnN0IGRpdmlkZXIgKi8KPiAgCQlmb3Ig
KHByZXNjYWxlciA9IDA7IHByZXNjYWxlciA8IFBXTV9QUkVTQ0FMX01BU0s7IHByZXNjYWxlcisr
KSB7Cj4gKwkJCXVuc2lnbmVkIGludCBwdmFsOwo+ICsKPiAgCQkJaWYgKCFwcmVzY2FsZXJfdGFi
bGVbcHJlc2NhbGVyXSkKPiAgCQkJCWNvbnRpbnVlOwo+ICAJCQlwdmFsID0gcHJlc2NhbGVyX3Rh
YmxlW3ByZXNjYWxlcl07CgoKbml0IHBpY2tpbmc6CkRvaW5nIHRoZSBhc3NpZ25tZW50IGZpcnN0
IHdvdWxkIHJlbW92ZSB0aGUgb25seSB1c2UKb2YgcHJlc2NhbGVyX3RhYmxlW3ByZXNjYWxlcl0u
Cgp1bnNpZ25lZCBpbnQgcHZhbCA9IHByZXNjYWxlcl90YWJsZVtwcmVzY2FsZXJdOwppZiAoICEg
cHZhbCApCiAgY29udGludWU7CgppZiB5b3UgZmVlbCBhZHZlbnR1cmVzIHlvdSBjb3VsZCBhbHNv
IHJlcGxhY2UgdGhlIGZvcigpIGZvciBhIHdoaWxlKCkKc2luY2Ugd2Uga25vdyB0aGF0IHByZXNj
YWxlciA9PSAwLgoKd2hpbGUgKCBwcmVzY2FsZXIgPCBQV01fUFJFU0NBTF9NQVNLICkKewp1bnNp
Z25lZCBpbnQgcHZhbCA9IHByZXNjYWxlcl90YWJsZVtwcmVzY2FsZXIrK107Ci4uLi4KCgpqbTJj
LAoKIHdoCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
