Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC7C127307
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 02:49:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8WxpjhY5q/zQ7JUmDJQUYMT9H09oRm3IY1t5vC4ssQ=; b=lwi+gIKvPTm6z2
	/tE5OSqD7wR88h6qMbBIDIozsIDJpfTVAiNBgFhZBQtW/lxfnr810nleNHQM35qyWM6sVACnFVL2f
	DtXJNcfX9Jfl6la+ZmVCt+77w99VM7d0y75LKd0EHJ/mztkgg3ZzDy4Q1LrRVmB4foW8xfc2YDLaQ
	bS0pZ4LbjDj5HSMnAJ8ntr3pkxYOzqnjGSruhGxvqOv4xdrFzeCdaiIPiahXXT6c2A+M5Y8dzPQ+2
	X0M0EYUyjpI6mYUL8di7OEJWP5T4Bqu1Zi/aTzo35ee783Xw8w8CHZcRFZK0k3NOaklrk2RoVAoE8
	3hpI9qqms8K2mRcwRgAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii7Q3-0007am-Dk; Fri, 20 Dec 2019 01:49:31 +0000
Received: from mail-yb1-xb49.google.com ([2607:f8b0:4864:20::b49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii7Pt-0007aB-Cx
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 01:49:23 +0000
Received: by mail-yb1-xb49.google.com with SMTP id j82so5619078ybj.16
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 17:49:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc:content-transfer-encoding;
 bh=HZMnRQf2RzyKu0EQDfD1pRubT2qoNtln9gX9VZl7+Lw=;
 b=QnD2X8ugKAM+uICpb7uuNo+E46l8sDMOx9E2HllXNNfZ3iUHNx7MEf5Cn0GjUwfRTd
 OKLau0tl6dua5duaimUEqxFDkRJkuWXPc1v3yiTigDeXisZZhWPRv1M51ulShTut74/0
 ma4/kaNbkejRaCDbNXrYqFSVIMW6S7OmDHydlpWtXpRIAnu59Prcrx0HfLn2aunMypwl
 V/jocBvh3oyonQOMr0+IlqC4PufPaZsPxYCPTQvKCuf8MX3m8fwh0Yhq6AU39rgKPAN0
 9TRM3nrbL70rMxgLnlQHhKSO+5WtC9JO6YIi9gIZROJcL/Yc3wkGv5PENac6siscxMHp
 TN9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc:content-transfer-encoding;
 bh=HZMnRQf2RzyKu0EQDfD1pRubT2qoNtln9gX9VZl7+Lw=;
 b=K7U4dMF55OGBcQiUK+FhN70NFJSJE6U/f9VHRrWe/WDUXQ9QmirWim+uXt3xa+pNey
 Zlsu1aaE8KezU0T22fiJ1JDd6o0rySVk3tKJ97fLiSjln1PvdtHRQt1XJhWBmqHjU62N
 vJ9saCdSTxRrZsRGcq/phGOFKo5xr3aDfoxAUYlhfwoscqgF6PI39+Brd26zkp3KVEkt
 V2HpLuaP2Qxs84La01FJBxEUnWMAJZZDhbyh22uVwyz3oh6qR+qiOHO8JUpPt+T1CipP
 dl5SZ6hhIMXppki2sJ6r4aWXfHtIKYBYeFo3PfoKbwLzCMqyUpp/6sKCuajrrr/PZXsK
 U6lg==
X-Gm-Message-State: APjAAAVYKmjyA9LVQmfXh+aWoOZC1opPGNlKWvuzrffw5vabmiAW87VH
 lR+IIe9W7XmRUw3c4P0eiuFd058=
X-Google-Smtp-Source: APXvYqzIKCMr5RBHVty3PxKkUeb+z/z35I8hFPiVh8D2zq2tXjZ8EsxBxsgexdyHh/iBIMSJ8f2vGqE=
X-Received: by 2002:a81:618a:: with SMTP id v132mr9055009ywb.388.1576806560029; 
 Thu, 19 Dec 2019 17:49:20 -0800 (PST)
Date: Thu, 19 Dec 2019 17:48:53 -0800
In-Reply-To: <CAMn1gO4iv1FsxV+aR3CgU=jgmVjHL0YQF-xJJG0UMv3nJZnOBw@mail.gmail.com>
Message-Id: <20191220014853.223389-1-pcc@google.com>
Mime-Version: 1.0
References: <CAMn1gO4iv1FsxV+aR3CgU=jgmVjHL0YQF-xJJG0UMv3nJZnOBw@mail.gmail.com>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
Subject: [PATCH] arm64: mte: Clear SCTLR_EL1.TCF0 on exec
From: Peter Collingbourne <pcc@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Evgenii Stepanov <eugenis@google.com>, Kostya Serebryany <kcc@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_174921_476668_FBF23738 
X-CRM114-Status: GOOD (  22.90  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b49 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Will Deacon <will@kernel.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Marc Zyngier <maz@kernel.org>, Kevin Brodsky <kevin.brodsky@arm.com>,
 linux-mm@kvack.org, Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2lnbmVkLW9mZi1ieTogUGV0ZXIgQ29sbGluZ2JvdXJuZSA8cGNjQGdvb2dsZS5jb20+Ci0tLQpP
biBUaHUsIERlYyAxOSwgMjAxOSBhdCAxMjozMiBQTSBQZXRlciBDb2xsaW5nYm91cm5lIDxwY2NA
Z29vZ2xlLmNvbT4gd3JvdGU6Cj4KPiBPbiBXZWQsIERlYyAxMSwgMjAxOSBhdCAxMDo0NSBBTSBD
YXRhbGluIE1hcmluYXMKPiA8Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+IHdyb3RlOgo+ID4gKyDC
oCDCoCDCoCBpZiAoY3VycmVudC0+dGhyZWFkLnNjdGxyX3RjZjAgIT0gbmV4dC0+dGhyZWFkLnNj
dGxyX3RjZjApCj4gPiArIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHVwZGF0ZV9zY3Rscl9lbDFfdGNm
MChuZXh0LT50aHJlYWQuc2N0bHJfdGNmMCk7Cj4KPiBJIGRvbid0IGVudGlyZWx5IHVuZGVyc3Rh
bmQgd2h5IHlldCwgYnV0IEkndmUgZm91bmQgdGhhdCB0aGlzIGNoZWNrIGlzCj4gaW5zdWZmaWNp
ZW50IGZvciBlbnN1cmluZyBjb25zaXN0ZW5jeSBiZXR3ZWVuIFNDVExSX0VMMS5UQ0YwIGFuZAo+
IHNjdGxyX3RjZjAuIEluIG15IEFuZHJvaWQgdGVzdCBlbnZpcm9ubWVudCB3aXRoIHNvbWUgcHJv
Y2Vzc2VzIGhhdmluZwo+IHNjdGxyX3RjZjA9U0NUTFJfRUwxX1RDRjBfU1lOQyBhbmQgb3RoZXJz
IGhhdmluZyBzY3Rscl90Y2YwPTAsIEkgYW0KPiBzZWVpbmcgaW50ZXJtaXR0ZW50IHRhZyBmYWls
dXJlcyBjb21pbmcgZnJvbSB0aGUgc2N0bHJfdGNmMD0wCj4gcHJvY2Vzc2VzLiBXaXRoIHRoaXMg
cGF0Y2g6Cj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9tbS9mYXVsdC5jIGIvYXJjaC9hcm02
NC9tbS9mYXVsdC5jCj4gaW5kZXggZWYzYmZhMmJmMmIxLi40ZTVkMDI1MjBhNTEgMTAwNjQ0Cj4g
LS0tIGEvYXJjaC9hcm02NC9tbS9mYXVsdC5jCj4gKysrIGIvYXJjaC9hcm02NC9tbS9mYXVsdC5j
Cj4gQEAgLTY2Myw2ICs2NjMsOCBAQCBzdGF0aWMgaW50IGRvX3NlYSh1bnNpZ25lZCBsb25nIGFk
ZHIsIHVuc2lnbmVkIGludAo+IGVzciwgc3RydWN0IHB0X3JlZ3MgKnJlZ3MpCj4gwqBzdGF0aWMg
aW50IGRvX3RhZ19jaGVja19mYXVsdCh1bnNpZ25lZCBsb25nIGFkZHIsIHVuc2lnbmVkIGludCBl
c3IsCj4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgc3RydWN0
IHB0X3JlZ3MgKnJlZ3MpCj4gwqB7Cj4gKyDCoCDCoCDCoCBwcmludGsoS0VSTl9FUlIgImRvX3Rh
Z19jaGVja19mYXVsdCAlbHggJWx4XG4iLAo+ICsgwqAgwqAgwqAgwqAgwqAgwqAgwqBjdXJyZW50
LT50aHJlYWQuc2N0bHJfdGNmMCwgcmVhZF9zeXNyZWcoc2N0bHJfZWwxKSk7Cj4gwqAgwqAgwqAg
wqAgZG9fYmFkX2FyZWEoYWRkciwgZXNyLCByZWdzKTsKPiDCoCDCoCDCoCDCoCByZXR1cm4gMDsK
PiDCoH0KPgo+IEkgc2VlIGRtZXNnIG91dHB1dCBsaWtlIHRoaXM6Cj4KPiBbIMKgIDE1LjI0OTIx
Nl0gZG9fdGFnX2NoZWNrX2ZhdWx0IDAgYzYwZmM2NDc5MWQKPgo+IHNob3dpbmcgdGhhdCBTQ1RM
Ul9FTDEuVENGMCBiZWNhbWUgaW5jb25zaXN0ZW50IHdpdGggc2N0bHJfdGNmMC4gVGhpcwo+IHBh
dGNoIGZpeGVzIHRoZSBwcm9ibGVtIGZvciBtZToKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2tlcm5lbC9wcm9jZXNzLmMgYi9hcmNoL2FybTY0L2tlcm5lbC9wcm9jZXNzLmMKPiBpbmRleCBm
YmE4OWM5ZjA3MGIuLmZiMDEyZjBiYWExMiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2tlcm5l
bC9wcm9jZXNzLmMKPiArKysgYi9hcmNoL2FybTY0L2tlcm5lbC9wcm9jZXNzLmMKPiBAQCAtNTE4
LDkgKzUxOCw3IEBAIHN0YXRpYyB2b2lkIG10ZV90aHJlYWRfc3dpdGNoKHN0cnVjdCB0YXNrX3N0
cnVjdCAqbmV4dCkKPiDCoCDCoCDCoCDCoCBpZiAoIXN5c3RlbV9zdXBwb3J0c19tdGUoKSkKPiDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCByZXR1cm47Cj4KPiAtIMKgIMKgIMKgIC8qIGF2b2lkIGV4
cGVuc2l2ZSBTQ1RMUl9FTDEgYWNjZXNzZXMgaWYgbm8gY2hhbmdlICovCj4gLSDCoCDCoCDCoCBp
ZiAoY3VycmVudC0+dGhyZWFkLnNjdGxyX3RjZjAgIT0gbmV4dC0+dGhyZWFkLnNjdGxyX3RjZjAp
Cj4gLSDCoCDCoCDCoCDCoCDCoCDCoCDCoCB1cGRhdGVfc2N0bHJfZWwxX3RjZjAobmV4dC0+dGhy
ZWFkLnNjdGxyX3RjZjApOwo+ICsgwqAgwqAgwqAgdXBkYXRlX3NjdGxyX2VsMV90Y2YwKG5leHQt
PnRocmVhZC5zY3Rscl90Y2YwKTsKPiDCoCDCoCDCoCDCoCB1cGRhdGVfZ2NyX2VsMV9leGNsKG5l
eHQtPnRocmVhZC5nY3JfZXhjbCk7Cj4gwqB9Cj4gwqAjZWxzZQo+IEBAIC02NDMsMTUgKzY0MSw4
IEBAIHN0YXRpYyBsb25nIHNldF9tdGVfY3RybCh1bnNpZ25lZCBsb25nIGFyZykKPiDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCByZXR1cm4gLUVJTlZBTDsKPiDCoCDCoCDCoCDCoCB9Cj4KPiAtIMKg
IMKgIMKgIC8qCj4gLSDCoCDCoCDCoCDCoCogbXRlX3RocmVhZF9zd2l0Y2goKSBjaGVja3MgY3Vy
cmVudC0+dGhyZWFkLnNjdGxyX3RjZjAgYXMgYW4KPiAtIMKgIMKgIMKgIMKgKiBvcHRpbWlzYXRp
b24uIERpc2FibGUgcHJlZW1wdGlvbiBzbyB0aGF0IGl0IGRvZXMgbm90IHNlZQo+IC0gwqAgwqAg
wqAgwqAqIHRoZSB2YXJpYWJsZSB1cGRhdGUgYmVmb3JlIHRoZSBTQ1RMUl9FTDEuVENGMCBvbmUu
Cj4gLSDCoCDCoCDCoCDCoCovCj4gLSDCoCDCoCDCoCBwcmVlbXB0X2Rpc2FibGUoKTsKPiDCoCDC
oCDCoCDCoCBjdXJyZW50LT50aHJlYWQuc2N0bHJfdGNmMCA9IHRjZjA7Cj4gwqAgwqAgwqAgwqAg
dXBkYXRlX3NjdGxyX2VsMV90Y2YwKHRjZjApOwo+IC0gwqAgwqAgwqAgcHJlZW1wdF9lbmFibGUo
KTsKPgo+IMKgIMKgIMKgIMKgIGN1cnJlbnQtPnRocmVhZC5nY3JfZXhjbCA9IChhcmcgJiBQUl9N
VEVfRVhDTF9NQVNLKSA+Pgo+IFBSX01URV9FWENMX1NISUZUOwo+IMKgIMKgIMKgIMKgIHVwZGF0
ZV9nY3JfZWwxX2V4Y2woY3VycmVudC0+dGhyZWFkLmdjcl9leGNsKTsKPgo+IFNpbmNlIHN5c3Jl
Z19jbGVhcl9zZXQgb25seSBzZXRzIHRoZSBzeXNyZWcgaWYgaXQgZW5kZWQgdXAgY2hhbmdpbmcs
IEkKPiB3b3VsZG4ndCBleHBlY3QgdGhpcyB0byBjYXVzZSBhIHNpZ25pZmljYW50IHBlcmZvcm1h
bmNlIGhpdCB1bmxlc3MKPiBqdXN0IHJlYWRpbmcgU0NUTFJfRUwxIGlzIGV4cGVuc2l2ZS4gVGhh
dCBiZWluZyBzYWlkLCBpZiB0aGUKPiBpbmNvbnNpc3RlbmN5IGlzIGluZGljYXRpdmUgb2YgYSBk
ZWVwZXIgcHJvYmxlbSwgd2Ugc2hvdWxkIHByb2JhYmx5Cj4gYWRkcmVzcyB0aGF0LgoKSSB0cmFj
a2VkIGl0IGRvd24gdG8gdGhlIGZsdXNoX210ZV9zdGF0ZSgpIGZ1bmN0aW9uIHNldHRpbmcgc2N0
bHJfdGNmMCBidXQKZmFpbGluZyB0byB1cGRhdGUgU0NUTFJfRUwxLlRDRjAuIFdpdGggdGhpcyBw
YXRjaCBJIGFtIG5vdCBzZWVpbmcgYW55IG1vcmUKaW5jb25zaXN0ZW5jaWVzLgoKUGV0ZXIKCiBh
cmNoL2FybTY0L2tlcm5lbC9wcm9jZXNzLmMgfCAzNyArKysrKysrKysrKysrKysrKysrKystLS0t
LS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJuZWwvcHJvY2Vzcy5jIGIvYXJjaC9h
cm02NC9rZXJuZWwvcHJvY2Vzcy5jCmluZGV4IGZiYTg5YzlmMDcwYi4uMDdlOGU3YmQzYmVjIDEw
MDY0NAotLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9wcm9jZXNzLmMKKysrIGIvYXJjaC9hcm02NC9r
ZXJuZWwvcHJvY2Vzcy5jCkBAIC0zMTksNiArMzE5LDI1IEBAIHN0YXRpYyB2b2lkIGZsdXNoX3Rh
Z2dlZF9hZGRyX3N0YXRlKHZvaWQpCiB9CiAKICNpZmRlZiBDT05GSUdfQVJNNjRfTVRFCitzdGF0
aWMgdm9pZCB1cGRhdGVfc2N0bHJfZWwxX3RjZjAodTY0IHRjZjApCit7CisJLyogbm8gbmVlZCBm
b3IgSVNCIHNpbmNlIHRoaXMgb25seSBhZmZlY3RzIEVMMCwgaW1wbGljaXQgd2l0aCBFUkVUICov
CisJc3lzcmVnX2NsZWFyX3NldChzY3Rscl9lbDEsIFNDVExSX0VMMV9UQ0YwX01BU0ssIHRjZjAp
OworfQorCitzdGF0aWMgdm9pZCBzZXRfc2N0bHJfZWwxX3RjZjAodTY0IHRjZjApCit7CisJLyoK
KwkgKiBtdGVfdGhyZWFkX3N3aXRjaCgpIGNoZWNrcyBjdXJyZW50LT50aHJlYWQuc2N0bHJfdGNm
MCBhcyBhbgorCSAqIG9wdGltaXNhdGlvbi4gRGlzYWJsZSBwcmVlbXB0aW9uIHNvIHRoYXQgaXQg
ZG9lcyBub3Qgc2VlCisJICogdGhlIHZhcmlhYmxlIHVwZGF0ZSBiZWZvcmUgdGhlIFNDVExSX0VM
MS5UQ0YwIG9uZS4KKwkgKi8KKwlwcmVlbXB0X2Rpc2FibGUoKTsKKwljdXJyZW50LT50aHJlYWQu
c2N0bHJfdGNmMCA9IHRjZjA7CisJdXBkYXRlX3NjdGxyX2VsMV90Y2YwKHRjZjApOworCXByZWVt
cHRfZW5hYmxlKCk7Cit9CisKIHN0YXRpYyB2b2lkIGZsdXNoX210ZV9zdGF0ZSh2b2lkKQogewog
CWlmICghc3lzdGVtX3N1cHBvcnRzX210ZSgpKQpAQCAtMzI3LDcgKzM0Niw3IEBAIHN0YXRpYyB2
b2lkIGZsdXNoX210ZV9zdGF0ZSh2b2lkKQogCS8qIGNsZWFyIGFueSBwZW5kaW5nIGFzeW5jaHJv
bm91cyB0YWcgZmF1bHQgKi8KIAljbGVhcl90aHJlYWRfZmxhZyhUSUZfTVRFX0FTWU5DX0ZBVUxU
KTsKIAkvKiBkaXNhYmxlIHRhZyBjaGVja2luZyAqLwotCWN1cnJlbnQtPnRocmVhZC5zY3Rscl90
Y2YwID0gMDsKKwlzZXRfc2N0bHJfZWwxX3RjZjAoMCk7CiB9CiAjZWxzZQogc3RhdGljIHZvaWQg
Zmx1c2hfbXRlX3N0YXRlKHZvaWQpCkBAIC00OTcsMTIgKzUxNiw2IEBAIHN0YXRpYyB2b2lkIHNz
YnNfdGhyZWFkX3N3aXRjaChzdHJ1Y3QgdGFza19zdHJ1Y3QgKm5leHQpCiB9CiAKICNpZmRlZiBD
T05GSUdfQVJNNjRfTVRFCi1zdGF0aWMgdm9pZCB1cGRhdGVfc2N0bHJfZWwxX3RjZjAodTY0IHRj
ZjApCi17Ci0JLyogbm8gbmVlZCBmb3IgSVNCIHNpbmNlIHRoaXMgb25seSBhZmZlY3RzIEVMMCwg
aW1wbGljaXQgd2l0aCBFUkVUICovCi0Jc3lzcmVnX2NsZWFyX3NldChzY3Rscl9lbDEsIFNDVExS
X0VMMV9UQ0YwX01BU0ssIHRjZjApOwotfQotCiBzdGF0aWMgdm9pZCB1cGRhdGVfZ2NyX2VsMV9l
eGNsKHU2NCBleGNsKQogewogCS8qCkBAIC02NDMsMTUgKzY1Niw3IEBAIHN0YXRpYyBsb25nIHNl
dF9tdGVfY3RybCh1bnNpZ25lZCBsb25nIGFyZykKIAkJcmV0dXJuIC1FSU5WQUw7CiAJfQogCi0J
LyoKLQkgKiBtdGVfdGhyZWFkX3N3aXRjaCgpIGNoZWNrcyBjdXJyZW50LT50aHJlYWQuc2N0bHJf
dGNmMCBhcyBhbgotCSAqIG9wdGltaXNhdGlvbi4gRGlzYWJsZSBwcmVlbXB0aW9uIHNvIHRoYXQg
aXQgZG9lcyBub3Qgc2VlCi0JICogdGhlIHZhcmlhYmxlIHVwZGF0ZSBiZWZvcmUgdGhlIFNDVExS
X0VMMS5UQ0YwIG9uZS4KLQkgKi8KLQlwcmVlbXB0X2Rpc2FibGUoKTsKLQljdXJyZW50LT50aHJl
YWQuc2N0bHJfdGNmMCA9IHRjZjA7Ci0JdXBkYXRlX3NjdGxyX2VsMV90Y2YwKHRjZjApOwotCXBy
ZWVtcHRfZW5hYmxlKCk7CisJc2V0X3NjdGxyX2VsMV90Y2YwKHRjZjApOwogCiAJY3VycmVudC0+
dGhyZWFkLmdjcl9leGNsID0gKGFyZyAmIFBSX01URV9FWENMX01BU0spID4+IFBSX01URV9FWENM
X1NISUZUOwogCXVwZGF0ZV9nY3JfZWwxX2V4Y2woY3VycmVudC0+dGhyZWFkLmdjcl9leGNsKTsK
LS0gCjIuMjQuMS43MzUuZzAzZjRlNzI4MTctZ29vZwoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
