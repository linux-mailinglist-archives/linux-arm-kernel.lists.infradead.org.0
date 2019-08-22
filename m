Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 498829992C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 18:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kc7sYU5ASp4KMmk2MT6R8eWag5fjTUii/FWUz6lGXvw=; b=d1Sqdq7RLOiOYiwiKpKnYNcbH
	wLM8D2fW3FU7d8LibR/QDA9VGjOjIZEs3/+6SBZ52v5omkj2Jvy1knTrC4WGmInyeDK3GM2cm8fgv
	5Q7Eb2tOUUOkwetvgXY/XZ4OTr1sGCBVkAuYI69+E10LMWDsZgW+1VF0PQCON4PmVHN/1IIwF5OYm
	jnWdVTrCPbWzxd7UXT1lrs7jvS635uXQbA3ykz03bvKpKmEm2k8MENzm3Okk178/aJYtzf0VQs/PJ
	XnJT3CmcBDrMg06LUFTsYzndkLPv/iPuRWi2LfhajGxFwxz/KMYbpAVHloknXMAkMmemzNm6EsxAx
	h8qS/0ZVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0pyk-0003D8-Bg; Thu, 22 Aug 2019 16:30:26 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0pyW-0003Cj-Ph
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 16:30:14 +0000
Received: by mail-wr1-x443.google.com with SMTP id t16so6027062wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 09:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=K+mOx0lYqD6ocklkpSaGRwmKmSPyTCbL4pINdnHHHgs=;
 b=uwC223b9YBE+s6I+Q969S0WnnbC7HMjX99bxpVm5u0z6YeploaaywvumGsA5E2h4Zp
 iFEhakxCkohR8wwJIjlq37R4n3YTS55Txybs0rODpcov6zeO/Oepg6J8Y6M6p4W7TFI2
 yNk8JkFZBnGdi7QxUaJFp5Bi+YPAnHvLk8m3KjM9iD+pnlJtyINC+OHOOK5a7H+8dzBp
 MsnCVg+Y4h90s5CqnBi5G2ZJJReNVHD7+rz0juY7fgHq/ITDq7EXxsB1F2vtNqpIn4aO
 1U50NU1pzwGYZgGda4WGKXVGxMtrkeK47357m+uZ3mgVs8VwgdkyC/Hb+pATyk8Jtdkx
 4y2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=K+mOx0lYqD6ocklkpSaGRwmKmSPyTCbL4pINdnHHHgs=;
 b=ghBedvenhrPFFm+ajHny5nvMjI9N2MrJKowVIfeXOLsOlrDMhKa0h1qEOg2hDigcfq
 JdBT9X8oDhVUk9OifNSNeTSj0RgjlZ8RgOnwZat/DHETM51ZSsxxzbPKq2D8nofLPyW2
 qT8a8EiplbTjkAxEpXNgaE0CchTfTwjtYjzqOO4J4OWDvRTfJ0MYTc0RO9tqMnH5BDIX
 F6fC1OeKt3fzKpJ922IprnacdPcKZGds6vWM0snoCi0J8puNO0ykYJtmdvdUIwFGwAZ7
 xHugZn/kt2CBti7jNdIv1zQnObhI4m9GDFIh7Egqr1QpfWsF+9RJmLU+dOmCzhhq0HtQ
 lhag==
X-Gm-Message-State: APjAAAUna/aJUBxK2+8oGibDQB7t1xZxsuo84EQyBm1fpBc4KLAyAY/Z
 qI6yNLLPlKFH4D0E4ZJAN1E=
X-Google-Smtp-Source: APXvYqyZw6pEh9lK6SgHYRMwyVB+kdGlXlDoeVipFIgsisWJHKxnMbyQZhsgUlZH2BGfWkmNu4MAqQ==
X-Received: by 2002:adf:eb8c:: with SMTP id t12mr5680295wrn.84.1566491411300; 
 Thu, 22 Aug 2019 09:30:11 -0700 (PDT)
Received: from [192.168.1.67]
 (host81-157-241-155.range81-157.btcentralplus.com. [81.157.241.155])
 by smtp.gmail.com with ESMTPSA id v12sm49438wrr.87.2019.08.22.09.30.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 09:30:10 -0700 (PDT)
Subject: Re: [RFC v4 01/18] objtool: Add abstraction for computation of
 symbols offsets
To: Raphael Gault <raphael.gault@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 jpoimboe@redhat.com
References: <20190816122403.14994-1-raphael.gault@arm.com>
 <20190816122403.14994-2-raphael.gault@arm.com>
From: Julien <julien.thierry.kdev@gmail.com>
Message-ID: <7bdc1178-e916-7d21-eb54-bea27fcadc17@gmail.com>
Date: Thu, 22 Aug 2019 17:30:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <20190816122403.14994-2-raphael.gault@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_093012_861886_A56237E5 
X-CRM114-Status: GOOD (  24.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (julien.thierry.kdev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Cc: peterz@infradead.org, catalin.marinas@arm.com, will.deacon@arm.com,
 raph.gault+kdev@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUmFwaGHDq2wsCgpPbiAxNi8wOC8xOSAxMzoyMywgUmFwaGFlbCBHYXVsdCB3cm90ZToKPiBU
aGUganVtcCBkZXN0aW5hdGlvbiBhbmQgcmVsb2NhdGlvbiBvZmZzZXQgdXNlZCBwcmV2aW91c2x5
IGFyZSBvbmx5Cj4gcmVsaWFibGUgb24geDg2XzY0IGFyY2hpdGVjdHVyZS4gV2UgYWJzdHJhY3Qg
dGhlc2UgY29tcHV0YXRpb25zIGJ5IGNhbGxpbmcKPiBhcmNoLWRlcGVuZGVudCBpbXBsZW1lbnRh
dGlvbnMuCj4gCj4gU2lnbmVkLW9mZi1ieTogUmFwaGFlbCBHYXVsdCA8cmFwaGFlbC5nYXVsdEBh
cm0uY29tPgo+IC0tLQo+ICAgdG9vbHMvb2JqdG9vbC9hcmNoLmggICAgICAgICAgICB8ICA2ICsr
KysrKwo+ICAgdG9vbHMvb2JqdG9vbC9hcmNoL3g4Ni9kZWNvZGUuYyB8IDExICsrKysrKysrKysr
Cj4gICB0b29scy9vYmp0b29sL2NoZWNrLmMgICAgICAgICAgIHwgMTUgKysrKysrKysrKy0tLS0t
Cj4gICAzIGZpbGVzIGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL3Rvb2xzL29ianRvb2wvYXJjaC5oIGIvdG9vbHMvb2JqdG9vbC9hcmNo
LmgKPiBpbmRleCBjZWQzNzY1YzRmNDQuLmE5YTUwYTI1Y2E2NiAxMDA2NDQKPiAtLS0gYS90b29s
cy9vYmp0b29sL2FyY2guaAo+ICsrKyBiL3Rvb2xzL29ianRvb2wvYXJjaC5oCj4gQEAgLTY2LDYg
KzY2LDggQEAgc3RydWN0IHN0YWNrX29wIHsKPiAgIAlzdHJ1Y3Qgb3Bfc3JjIHNyYzsKPiAgIH07
Cj4gICAKPiArc3RydWN0IGluc3RydWN0aW9uOwo+ICsKPiAgIHZvaWQgYXJjaF9pbml0aWFsX2Z1
bmNfY2ZpX3N0YXRlKHN0cnVjdCBjZmlfc3RhdGUgKnN0YXRlKTsKPiAgIAo+ICAgaW50IGFyY2hf
ZGVjb2RlX2luc3RydWN0aW9uKHN0cnVjdCBlbGYgKmVsZiwgc3RydWN0IHNlY3Rpb24gKnNlYywK
PiBAQCAtNzUsNCArNzcsOCBAQCBpbnQgYXJjaF9kZWNvZGVfaW5zdHJ1Y3Rpb24oc3RydWN0IGVs
ZiAqZWxmLCBzdHJ1Y3Qgc2VjdGlvbiAqc2VjLAo+ICAgCj4gICBib29sIGFyY2hfY2FsbGVlX3Nh
dmVkX3JlZyh1bnNpZ25lZCBjaGFyIHJlZyk7Cj4gICAKPiArdW5zaWduZWQgbG9uZyBhcmNoX2p1
bXBfZGVzdGluYXRpb24oc3RydWN0IGluc3RydWN0aW9uICppbnNuKTsKPiArCj4gK3Vuc2lnbmVk
IGxvbmcgYXJjaF9kZXN0X3JlbGFfb2Zmc2V0KGludCBhZGRlbmQpOwo+ICsKPiAgICNlbmRpZiAv
KiBfQVJDSF9IICovCj4gZGlmZiAtLWdpdCBhL3Rvb2xzL29ianRvb2wvYXJjaC94ODYvZGVjb2Rl
LmMgYi90b29scy9vYmp0b29sL2FyY2gveDg2L2RlY29kZS5jCj4gaW5kZXggMDU2N2M0N2E5MWIx
Li5mYTMzYjM0NjU3MjIgMTAwNjQ0Cj4gLS0tIGEvdG9vbHMvb2JqdG9vbC9hcmNoL3g4Ni9kZWNv
ZGUuYwo+ICsrKyBiL3Rvb2xzL29ianRvb2wvYXJjaC94ODYvZGVjb2RlLmMKPiBAQCAtMTEsNiAr
MTEsNyBAQAo+ICAgI2luY2x1ZGUgImxpYi9pbmF0LmMiCj4gICAjaW5jbHVkZSAibGliL2luc24u
YyIKPiAgIAo+ICsjaW5jbHVkZSAiLi4vLi4vY2hlY2suaCIKPiAgICNpbmNsdWRlICIuLi8uLi9l
bGYuaCIKPiAgICNpbmNsdWRlICIuLi8uLi9hcmNoLmgiCj4gICAjaW5jbHVkZSAiLi4vLi4vd2Fy
bi5oIgo+IEBAIC02Niw2ICs2NywxMSBAQCBib29sIGFyY2hfY2FsbGVlX3NhdmVkX3JlZyh1bnNp
Z25lZCBjaGFyIHJlZykKPiAgIAl9Cj4gICB9Cj4gICAKPiArdW5zaWduZWQgbG9uZyBhcmNoX2Rl
c3RfcmVsYV9vZmZzZXQoaW50IGFkZGVuZCkKPiArewo+ICsJcmV0dXJuIGFkZGVuZCArIDQ7Cj4g
K30KPiArCj4gICBpbnQgYXJjaF9kZWNvZGVfaW5zdHJ1Y3Rpb24oc3RydWN0IGVsZiAqZWxmLCBz
dHJ1Y3Qgc2VjdGlvbiAqc2VjLAo+ICAgCQkJICAgIHVuc2lnbmVkIGxvbmcgb2Zmc2V0LCB1bnNp
Z25lZCBpbnQgbWF4bGVuLAo+ICAgCQkJICAgIHVuc2lnbmVkIGludCAqbGVuLCBlbnVtIGluc25f
dHlwZSAqdHlwZSwKPiBAQCAtNDk3LDMgKzUwMyw4IEBAIHZvaWQgYXJjaF9pbml0aWFsX2Z1bmNf
Y2ZpX3N0YXRlKHN0cnVjdCBjZmlfc3RhdGUgKnN0YXRlKQo+ICAgCXN0YXRlLT5yZWdzWzE2XS5i
YXNlID0gQ0ZJX0NGQTsKPiAgIAlzdGF0ZS0+cmVnc1sxNl0ub2Zmc2V0ID0gLTg7Cj4gICB9Cj4g
Kwo+ICt1bnNpZ25lZCBsb25nIGFyY2hfanVtcF9kZXN0aW5hdGlvbihzdHJ1Y3QgaW5zdHJ1Y3Rp
b24gKmluc24pCj4gK3sKPiArCXJldHVybiBpbnNuLT5vZmZzZXQgKyBpbnNuLT5sZW4gKyBpbnNu
LT5pbW1lZGlhdGU7Cj4gK30KPiBkaWZmIC0tZ2l0IGEvdG9vbHMvb2JqdG9vbC9jaGVjay5jIGIv
dG9vbHMvb2JqdG9vbC9jaGVjay5jCj4gaW5kZXggMTc2ZjJmMDg0MDYwLi40NzlmYWI0NmI2NTYg
MTAwNjQ0Cj4gLS0tIGEvdG9vbHMvb2JqdG9vbC9jaGVjay5jCj4gKysrIGIvdG9vbHMvb2JqdG9v
bC9jaGVjay5jCj4gQEAgLTU2Myw3ICs1NjMsNyBAQCBzdGF0aWMgaW50IGFkZF9qdW1wX2Rlc3Rp
bmF0aW9ucyhzdHJ1Y3Qgb2JqdG9vbF9maWxlICpmaWxlKQo+ICAgCQkJCQkgICAgICAgaW5zbi0+
bGVuKTsKPiAgIAkJaWYgKCFyZWxhKSB7Cj4gICAJCQlkZXN0X3NlYyA9IGluc24tPnNlYzsKPiAt
CQkJZGVzdF9vZmYgPSBpbnNuLT5vZmZzZXQgKyBpbnNuLT5sZW4gKyBpbnNuLT5pbW1lZGlhdGU7
Cj4gKwkJCWRlc3Rfb2ZmID0gYXJjaF9qdW1wX2Rlc3RpbmF0aW9uKGluc24pOwo+ICAgCQl9IGVs
c2UgaWYgKHJlbGEtPnN5bS0+dHlwZSA9PSBTVFRfU0VDVElPTikgewo+ICAgCQkJZGVzdF9zZWMg
PSByZWxhLT5zeW0tPnNlYzsKPiAgIAkJCWRlc3Rfb2ZmID0gcmVsYS0+YWRkZW5kICsgNDsKPiBA
QCAtNjU5LDcgKzY1OSw3IEBAIHN0YXRpYyBpbnQgYWRkX2NhbGxfZGVzdGluYXRpb25zKHN0cnVj
dCBvYmp0b29sX2ZpbGUgKmZpbGUpCj4gICAJCXJlbGEgPSBmaW5kX3JlbGFfYnlfZGVzdF9yYW5n
ZShpbnNuLT5zZWMsIGluc24tPm9mZnNldCwKPiAgIAkJCQkJICAgICAgIGluc24tPmxlbik7Cj4g
ICAJCWlmICghcmVsYSkgewo+IC0JCQlkZXN0X29mZiA9IGluc24tPm9mZnNldCArIGluc24tPmxl
biArIGluc24tPmltbWVkaWF0ZTsKPiArCQkJZGVzdF9vZmYgPSBhcmNoX2p1bXBfZGVzdGluYXRp
b24oaW5zbik7Cj4gICAJCQlpbnNuLT5jYWxsX2Rlc3QgPSBmaW5kX3N5bWJvbF9ieV9vZmZzZXQo
aW5zbi0+c2VjLAo+ICAgCQkJCQkJCQlkZXN0X29mZik7Cj4gICAKPiBAQCAtNjcyLDE0ICs2NzIs
MTkgQEAgc3RhdGljIGludCBhZGRfY2FsbF9kZXN0aW5hdGlvbnMoc3RydWN0IG9ianRvb2xfZmls
ZSAqZmlsZSkKPiAgIAkJCX0KPiAgIAo+ICAgCQl9IGVsc2UgaWYgKHJlbGEtPnN5bS0+dHlwZSA9
PSBTVFRfU0VDVElPTikgewo+ICsJCQkvKgo+ICsJCQkgKiB0aGUgb3JpZ2luYWwgeDg2XzY0IGNv
ZGUgYWRkcyA0IHRvIHRoZSByZWxhLT5hZGRlbmQKPiArCQkJICogd2hpY2ggaXMgbm90IG5lZWRl
ZCBvbiBhcm02NCBhcmNoaXRlY3R1cmUuCj4gKwkJCSAqLwoKSSdtIG5vdCBzdXJlIHRoaXMgaXMg
d29ydGggbWVudGlvbmluZyBpbiBnZW5lcmljIGNvZGUuIFlvdSBtaWdodCBpbmNsdWRlIAppdCBp
biB0aGUgY29tbWl0IG1lc3NhZ2UgdG8ganVzdGlmeSB0aGUgY2hhbmdlLgoKPiArCQkJZGVzdF9v
ZmYgPSBhcmNoX2Rlc3RfcmVsYV9vZmZzZXQocmVsYS0+YWRkZW5kKTsKPiAgIAkJCWluc24tPmNh
bGxfZGVzdCA9IGZpbmRfc3ltYm9sX2J5X29mZnNldChyZWxhLT5zeW0tPnNlYywKPiAtCQkJCQkJ
CQlyZWxhLT5hZGRlbmQrNCk7Cj4gKwkJCQkJCQkJZGVzdF9vZmYpOwo+ICAgCQkJaWYgKCFpbnNu
LT5jYWxsX2Rlc3QgfHwKPiAgIAkJCSAgICBpbnNuLT5jYWxsX2Rlc3QtPnR5cGUgIT0gU1RUX0ZV
TkMpIHsKPiAtCQkJCVdBUk5fRlVOQygiY2FuJ3QgZmluZCBjYWxsIGRlc3Qgc3ltYm9sIGF0ICVz
KzB4JXgiLAo+ICsJCQkJV0FSTl9GVU5DKCJjYW4ndCBmaW5kIGNhbGwgZGVzdCBzeW1ib2wgYXQg
JXMrMHglbHgiLAo+ICAgCQkJCQkgIGluc24tPnNlYywgaW5zbi0+b2Zmc2V0LAo+ICAgCQkJCQkg
IHJlbGEtPnN5bS0+c2VjLT5uYW1lLAo+IC0JCQkJCSAgcmVsYS0+YWRkZW5kICsgNCk7Cj4gKwkJ
CQkJICBkZXN0X29mZik7Cj4gICAJCQkJcmV0dXJuIC0xOwo+ICAgCQkJfQo+ICAgCQl9IGVsc2UK
PiAKCk90aGVyd2lzZSwgdGhlIGNoYW5nZSBsb29rcyBnb29kIHRvIG1lLgoKVGhhbmtzLAoKLS0g
Ckp1bGllbiBUaGllcnJ5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
