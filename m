Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0031272DA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 02:37:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aYDRNrYHvOnWW0uu6Lrlk9AZJUWEc+Bf95UNHW6JnyU=; b=KBjf0eTP0XKOhL
	ApZvouvXWBGkzgB2Z7QTx87CwWKXKt2BSwcSqF1oN0odkTRySik+PfGH0+T/IW4MXNB+Kg/rE5HSJ
	HExUl/OwOU6P/dnZez5JI7uVct7k97asLgZ2YRaBqBxVW8XBMvl0CZTcI7jCAKt1mrVrxp++Yb7c5
	hnQz4rS4buS4QoT224D8CzgT9rqZ8WOKBtrLPIzdTvBX4GHJejwJxft0GmRubxDlulTOw+OIS2fBv
	/xWRLqFesU0A3Zii91f3gMFC2JbQ04InzKAL6GFBLJNZ7YCsmBmTMA23wvbzFXEZg7bD+bz8kLMGv
	NSlGmBDh6C3/m8Zw6Sbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii7EV-0003Cq-Tf; Fri, 20 Dec 2019 01:37:35 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii7EL-0003CH-CP
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 01:37:27 +0000
Received: by mail-pg1-x54a.google.com with SMTP id x189so4266543pgd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 17:37:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc:content-transfer-encoding;
 bh=ZRY76nUi493+xuL7Tm0FlcOAyz0Ji1nFyA0Xlgk3AOY=;
 b=J143fqLZK4/lFzYrCfOIl3+2NbBbgVzLDSm4kEMxZktRis7lgreOCdxYJMeKPplkMr
 hSvPqstpn+bS83eJywSg4D1b1NnNaZKth1RGcbxQlbJXzymKqYCrpDhspOdmjZMZJAIa
 EVq6a8wp2BjjNPZhfifKOfE32LIe7ZDb7s537MMfK6RKt8WDX/8AlrlzRPwiyiVL+gdM
 o+H4bB45aiSA0r6k6yUMWDXVt6zN/mn+OF9zD5qopCyG4wLAKpciAbuN1IyLqfDzPqaR
 sK9p/dlPN2mXF3aCcHsGnVmUdCw2leQQMuwTxhXwL7/tkka64TwMlx9H42rQnN2jcNOi
 fntQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc:content-transfer-encoding;
 bh=ZRY76nUi493+xuL7Tm0FlcOAyz0Ji1nFyA0Xlgk3AOY=;
 b=GdQBJaJ82V3pu2lVn1c39J6VUst3hESuYBsrknaJ0KDZd3TQiKWEzhCZyMTwwI6yxE
 3kXQwyeaBJvXxNmUdjHw2JFj94ri9lAsOJ3NjKv9mu5LAyTl3PWGa6032pAWPWWepeAv
 VbTzVhv6DnPwzce8X34vjF0o/7doVeTcT5KJnw1fdOseoVAxYH6qVNhfcRkUSSSCDZd0
 a3ziAcAdBZj68r4VnwFDkdH45mh5TS4Ixcu4PYMNOmkdSrImFQmLwsv6TAxbIjb1pe2C
 Rl0EQC/7svTB76hK8dn/0iSBmPsmpc9SqCnVivDi3ici0cfILIAt7pGvlPx6Rb2lWzim
 ar+w==
X-Gm-Message-State: APjAAAVcI/noEYku0dPDA/yCJj8UcnP6wkxZ3aEN+1yS31AkrUqNJ5B0
 4X7yhyU7uZGjHWBWnb8qjE+DUIc=
X-Google-Smtp-Source: APXvYqxaNmZqoXs4tYB6snO5BmWk18re5etHg7lWZji+j3yxRsEA601c51JheS86Ob+7tZu24lPAgpI=
X-Received: by 2002:a63:f107:: with SMTP id f7mr12336875pgi.76.1576805843222; 
 Thu, 19 Dec 2019 17:37:23 -0800 (PST)
Date: Thu, 19 Dec 2019 17:36:39 -0800
In-Reply-To: <20191217180152.GO5624@arrakis.emea.arm.com>
Message-Id: <20191220013639.212396-1-pcc@google.com>
Mime-Version: 1.0
References: <20191217180152.GO5624@arrakis.emea.arm.com>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
Subject: [PATCH] arm64: mte: Do not service syscalls after async tag fault
From: Peter Collingbourne <pcc@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_173725_448593_7DED5214 
X-CRM114-Status: GOOD (  26.28  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
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
 Will Deacon <will@kernel.org>, linux-mm@kvack.org,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Marc Zyngier <maz@kernel.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kostya Serebryany <kcc@google.com>,
 Evgenii Stepanov <eugenis@google.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2hlbiBlbnRlcmluZyB0aGUga2VybmVsIGFmdGVyIGFuIGFzeW5jIHRhZyBmYXVsdCBkdWUgdG8g
YSBzeXNjYWxsLCByYXRoZXIKdGhhbiBmb3IgYW5vdGhlciByZWFzb24gKGUuZy4gcHJlZW1wdGlv
biksIHdlIGRvbid0IHdhbnQgdG8gc2VydmljZSB0aGUKc3lzY2FsbCBhcyBpdCBtYXkgbWFzayB0
aGUgdGFnIGZhdWx0LiBSZXdpbmQgdGhlIFBDIHRvIHRoZSBzdmMgaW5zdHJ1Y3Rpb24KaW4gb3Jk
ZXIgdG8gZ2l2ZSBhIHVzZXJzcGFjZSBzaWduYWwgaGFuZGxlciBhbiBvcHBvcnR1bml0eSB0byBo
YW5kbGUgdGhlCmZhdWx0IGFuZCByZXN1bWUsIGFuZCBza2lwIGFsbCBvdGhlciBzeXNjYWxsIHBy
b2Nlc3NpbmcuCgpTaWduZWQtb2ZmLWJ5OiBQZXRlciBDb2xsaW5nYm91cm5lIDxwY2NAZ29vZ2xl
LmNvbT4KLS0tCk9uIFR1ZSwgRGVjIDE3LCAyMDE5IGF0IDEwOjAxIEFNIENhdGFsaW4gTWFyaW5h
cyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+IHdyb3RlOgo+Cj4gT24gRnJpLCBEZWMgMTMsIDIw
MTkgYXQgMDU6NDM6MTVQTSAtMDgwMCwgUGV0ZXIgQ29sbGluZ2JvdXJuZSB3cm90ZToKPiA+IE9u
IFdlZCwgRGVjIDExLCAyMDE5IGF0IDEwOjQ0IEFNIENhdGFsaW4gTWFyaW5hcwo+ID4gPGNhdGFs
aW4ubWFyaW5hc0Bhcm0uY29tPiB3cm90ZToKPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
a2VybmVsL3NpZ25hbC5jIGIvYXJjaC9hcm02NC9rZXJuZWwvc2lnbmFsLmMKPiA+ID4gaW5kZXgg
ZGQyY2RjMGQ1YmUyLi40MWZhZTY0YWY4MmEgMTAwNjQ0Cj4gPiA+IC0tLSBhL2FyY2gvYXJtNjQv
a2VybmVsL3NpZ25hbC5jCj4gPiA+ICsrKyBiL2FyY2gvYXJtNjQva2VybmVsL3NpZ25hbC5jCj4g
PiA+IEBAIC03MzAsNiArNzMwLDkgQEAgc3RhdGljIHZvaWQgc2V0dXBfcmV0dXJuKHN0cnVjdCBw
dF9yZWdzICpyZWdzLCBzdHJ1Y3Qga19zaWdhY3Rpb24gKmthLAo+ID4gPiDCoCDCoCDCoCDCoCBy
ZWdzLT5yZWdzWzI5XSA9ICh1bnNpZ25lZCBsb25nKSZ1c2VyLT5uZXh0X2ZyYW1lLT5mcDsKPiA+
ID4gwqAgwqAgwqAgwqAgcmVncy0+cGMgPSAodW5zaWduZWQgbG9uZylrYS0+c2Euc2FfaGFuZGxl
cjsKPiA+ID4KPiA+ID4gKyDCoCDCoCDCoCAvKiBUQ08gKFRhZyBDaGVjayBPdmVycmlkZSkgYWx3
YXlzIGNsZWFyZWQgZm9yIHNpZ25hbCBoYW5kbGVycyAqLwo+ID4gPiArIMKgIMKgIMKgIHJlZ3Mt
PnBzdGF0ZSAmPSB+UFNSX1RDT19CSVQ7Cj4gPiA+ICsKPiA+ID4gwqAgwqAgwqAgwqAgaWYgKGth
LT5zYS5zYV9mbGFncyAmIFNBX1JFU1RPUkVSKQo+ID4gPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCBzaWd0cmFtcCA9IGthLT5zYS5zYV9yZXN0b3JlcjsKPiA+ID4gwqAgwqAgwqAgwqAgZWxzZQo+
ID4gPiBAQCAtOTIxLDYgKzkyNCwxMSBAQCBhc21saW5rYWdlIHZvaWQgZG9fbm90aWZ5X3Jlc3Vt
ZShzdHJ1Y3QgcHRfcmVncyAqcmVncywKPiA+ID4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgaWYgKHRocmVhZF9mbGFncyAmIF9USUZfVVBST0JFKQo+ID4gPiDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB1cHJvYmVfbm90aWZ5X3Jlc3Vt
ZShyZWdzKTsKPiA+ID4KPiA+ID4gKyDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBp
ZiAodGhyZWFkX2ZsYWdzICYgX1RJRl9NVEVfQVNZTkNfRkFVTFQpIHsKPiA+ID4gKyDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBjbGVhcl90aHJlYWRfZmxhZyhU
SUZfTVRFX0FTWU5DX0ZBVUxUKTsKPiA+ID4gKyDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCBmb3JjZV9zaWduYWxfaW5qZWN0KFNJR1NFR1YsIFNFR1ZfTVRFQUVS
UiwgMCk7Cj4gPgo+ID4gSW4gdGhlIGNhc2Ugd2hlcmUgdGhlIGtlcm5lbCBpcyBlbnRlcmVkIGR1
ZSB0byBhIHN5c2NhbGwsIHRoaXMgd2lsbAo+ID4gaW5qZWN0IGEgc2lnbmFsLCBidXQgb25seSBh
ZnRlciBzZXJ2aWNpbmcgdGhlIHN5c2NhbGwuIFRoaXMgbWVhbnMKPiA+IHRoYXQsIGZvciBleGFt
cGxlLCBpZiB0aGUgc3lzY2FsbCBpcyBleGl0KCksIHRoZSBhc3luYyB0YWcgY2hlY2sKPiA+IGZh
aWx1cmUgd2lsbCBiZSBzaWxlbnRseSBpZ25vcmVkLiBJIGNhbiByZXByb2R1Y2UgdGhlIHByb2Js
ZW0gd2l0aCB0aGUKPiA+IHByb2dyYW0gYmVsb3c6Cj4gWy4uLl0KPiA+IFRoaXMgcGF0Y2ggZml4
ZXMgdGhlIHByb2JsZW0gZm9yIG1lOgo+ID4KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tl
cm5lbC9zeXNjYWxsLmMgYi9hcmNoL2FybTY0L2tlcm5lbC9zeXNjYWxsLmMKPiA+IGluZGV4IDlh
OWQ5OGE0NDNmYy4uZDBjODkxOGRlZTAwIDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm02NC9rZXJu
ZWwvc3lzY2FsbC5jCj4gPiArKysgYi9hcmNoL2FybTY0L2tlcm5lbC9zeXNjYWxsLmMKPiA+IEBA
IC05NCw2ICs5NCw4IEBAIHN0YXRpYyB2b2lkIGVsMF9zdmNfY29tbW9uKHN0cnVjdCBwdF9yZWdz
ICpyZWdzLCBpbnQKPiA+IHNjbm8sIGludCBzY19uciwKPiA+IMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgY29uc3Qgc3lzY2FsbF9mbl90IHN5c2NhbGxfdGFibGVbXSkK
PiA+IMKgewo+ID4gwqAgwqAgwqAgwqAgdW5zaWduZWQgbG9uZyBmbGFncyA9IGN1cnJlbnRfdGhy
ZWFkX2luZm8oKS0+ZmxhZ3M7Cj4gPiArIMKgIMKgIMKgIGlmIChmbGFncyAmIF9USUZfTVRFX0FT
WU5DX0ZBVUxUKQo+ID4gKyDCoCDCoCDCoCDCoCDCoCDCoCDCoCByZXR1cm47Cj4KPiBJdCBuZWVk
cyBhIGJpdCBvZiB0aGlua2luZy4gVGhpcyBvbmUgd291bGRuJ3Qgd29yayBpZiB5b3Ugd2FudCB0
byBoYW5kbGUKPiB0aGUgc2lnbmFsIGFuZCByZXN1bWUgc2luY2UgaXQgd291bGQgc2tpcCB0aGUg
U1ZDIGluc3RydWN0aW9uLiBXZSdkIG5lZWQKPiBhdCBsZWFzdCB0byBkbyBhIHJlZ3MtPnBjIC09
IDQgYW5kIHByb2JhYmx5IG1vdmUgaXQgZnVydGhlciBkb3duIGluIHRoaXMKPiBmdW5jdGlvbi4K
Ck9rYXksIGhvdyBkb2VzIHRoaXMgbG9vaz8KClBldGVyCgogYXJjaC9hcm02NC9rZXJuZWwvc3lz
Y2FsbC5jIHwgMjIgKysrKysrKysrKysrKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDE5IGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJu
ZWwvc3lzY2FsbC5jIGIvYXJjaC9hcm02NC9rZXJuZWwvc3lzY2FsbC5jCmluZGV4IDlhOWQ5OGE0
NDNmYy4uNDllYTliYjQ3MTkwIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9zeXNjYWxs
LmMKKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvc3lzY2FsbC5jCkBAIC05NSwxMyArOTUsMjkgQEAg
c3RhdGljIHZvaWQgZWwwX3N2Y19jb21tb24oc3RydWN0IHB0X3JlZ3MgKnJlZ3MsIGludCBzY25v
LCBpbnQgc2NfbnIsCiB7CiAJdW5zaWduZWQgbG9uZyBmbGFncyA9IGN1cnJlbnRfdGhyZWFkX2lu
Zm8oKS0+ZmxhZ3M7CiAKLQlyZWdzLT5vcmlnX3gwID0gcmVncy0+cmVnc1swXTsKLQlyZWdzLT5z
eXNjYWxsbm8gPSBzY25vOwotCiAJY29ydGV4X2E3Nl9lcnJhdHVtXzE0NjMyMjVfc3ZjX2hhbmRs
ZXIoKTsKIAlsb2NhbF9kYWlmX3Jlc3RvcmUoREFJRl9QUk9DQ1RYKTsKIAl1c2VyX2V4aXQoKTsK
IAorI2lmZGVmIENPTkZJR19BUk02NF9NVEUKKwlpZiAoZmxhZ3MgJiBfVElGX01URV9BU1lOQ19G
QVVMVCkgeworCQkvKgorCQkgKiBXZSBlbnRlcmVkIHRoZSBrZXJuZWwgYWZ0ZXIgYW4gYXN5bmMg
dGFnIGZhdWx0IGR1ZSB0byBhCisJCSAqIHN5c2NhbGwsIHJhdGhlciB0aGFuIGZvciBhbm90aGVy
IHJlYXNvbiAoZS5nLiBwcmVlbXB0aW9uKS4KKwkJICogSW4gdGhpcyBjYXNlLCB3ZSBkb24ndCB3
YW50IHRvIHNlcnZpY2UgdGhlIHN5c2NhbGwgYXMgaXQgbWF5CisJCSAqIG1hc2sgdGhlIHRhZyBm
YXVsdC4gUmV3aW5kIHRoZSBQQyB0byB0aGUgc3ZjIGluc3RydWN0aW9uIGluCisJCSAqIG9yZGVy
IHRvIGdpdmUgYSB1c2Vyc3BhY2Ugc2lnbmFsIGhhbmRsZXIgYW4gb3Bwb3J0dW5pdHkgdG8KKwkJ
ICogaGFuZGxlIHRoZSBmYXVsdCBhbmQgcmVzdW1lLCBhbmQgc2tpcCBhbGwgb3RoZXIgc3lzY2Fs
bAorCQkgKiBwcm9jZXNzaW5nLgorCQkgKi8KKwkJcmVncy0+cGMgLT0gNDsKKwkJcmV0dXJuOwor
CX0KKyNlbmRpZgorCisJcmVncy0+b3JpZ194MCA9IHJlZ3MtPnJlZ3NbMF07CisJcmVncy0+c3lz
Y2FsbG5vID0gc2NubzsKKwogCWlmIChoYXNfc3lzY2FsbF93b3JrKGZsYWdzKSkgewogCQkvKiBz
ZXQgZGVmYXVsdCBlcnJubyBmb3IgdXNlci1pc3N1ZWQgc3lzY2FsbCgtMSkgKi8KIAkJaWYgKHNj
bm8gPT0gTk9fU1lTQ0FMTCkKLS0gCjIuMjQuMS43MzUuZzAzZjRlNzI4MTctZ29vZwoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
