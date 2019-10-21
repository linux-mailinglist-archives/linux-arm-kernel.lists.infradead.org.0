Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 824C7DECB0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 14:46:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nh/q3Qp40JBdQVBxwDuNRs2WnNWrTCXy3lSWLlwdJZk=; b=I2mDwO8gI7DTSL
	qYeQhEcBhCSUk8wFGPzo9HDRDwoYP7kWydZ+NtQ0I58Pp3zYyBQlhje2hGj2N4HeDd6DMqnNS0ocZ
	1v2MRxEPemCIHRiTHQbHRjE8nrCBOYkPnn5JC4oLPwyXae7kIzxNgGiWV/nt8dOwW0ayM4pd0ctfG
	P4ODrpZavm4SlbnYOuYWPfJ9f4uGSDAghule799oKt1wetM2H2ExE/TbB9Dn+vHtPN80cTIn+Rsnc
	F33BaivghZIl8OYyFqmehIedmJiv++mn9u5sY/3l59DaZ7pq/onpccLi4H/JF4X7iKXtrilFustgg
	cq4wDoUF3isc65R+25JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMX5C-0005yS-VC; Mon, 21 Oct 2019 12:46:46 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMX52-0005y6-82
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 12:46:37 +0000
Received: by mail-wm1-x341.google.com with SMTP id 3so12659823wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 05:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=oxlugiViiQE3cSKhufhby1ti8KNom5JSbs6PQgpr2f4=;
 b=HE5jNR0m/8rCwUemPzMdlN05lJ+BtFDbrnxh1nyjX6n4kA0QGZCHW0p8ybDWYI2Fyl
 SSW3rtr0Xx8IOJ7EmV6C1jYIWURaAevNwN+YRk+XxTvVLNomfz1+tTejV7v4yv2zddpq
 5LztFvZNYJHd/rTBr1EXQ3ZM/5kG25+ixWmEwz2o9x54YrmW5P+JlketwitxX/0rxG1B
 0IKlkOgXQoZ1eqKUQ1zL4WjlcOIGRb6Lqp+2GNbadLJjTRccTE5jIe1ompVqCxVHAPlh
 G2NSWukRHIGZYd4GXkcmWePz/hzTZfrF6yRAIS5f3gDiEI6us0xiNDRFYf4s+AExOzIf
 py1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=oxlugiViiQE3cSKhufhby1ti8KNom5JSbs6PQgpr2f4=;
 b=Pbe8x6Yh+3pPshhFURNUPeFdOGJLozH8Ln2PbL/DhHtoElfbirSGs9/Le2s6+JcCAY
 XMNoafGOaFrZi8ggdrmuDqOyhtC/S1QR2n1T7VnF9LEVKCKoir0SxaiBJYB50qQapHTP
 3ku0rBgiioYvKZnozbwieYWsDHLH7lAalt3fz2bafGuttr2wTa6qrnmvtGLuANDDf1rs
 ZMzy8uHbuaO95jFbSJbpgm0wR0FMmNKxMRTTK8sbeMVAubgp9a3QbOQOafhC9DZoEd4D
 +Gr+g5+XXzFcjdvY77l/SXcIbppUlobxSvQzqbbLJHPiPoXWrOYcfWKwP1Ume2u2rrt+
 0X0g==
X-Gm-Message-State: APjAAAVWYdc+SiSAzMmTPENuvPlp11tdv+ZKL8RKoIIQZ3fGQCyHx0D/
 nJAbkih2cAuTODSMvkDpHTM+2g==
X-Google-Smtp-Source: APXvYqzN83CIOvU7h1VI/upm+FMF8KlXoDHQuZQPMn0sUbaplEuqAC9iJ5IdsyG4SkF4yRVs8RanRg==
X-Received: by 2002:a1c:1f14:: with SMTP id f20mr5765595wmf.147.1571661994201; 
 Mon, 21 Oct 2019 05:46:34 -0700 (PDT)
Received: from dell ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id z1sm14850654wrn.57.2019.10.21.05.46.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 21 Oct 2019 05:46:33 -0700 (PDT)
Date: Mon, 21 Oct 2019 13:46:32 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Daniel Thompson <daniel.thompson@linaro.org>
Subject: Re: [PATCH v2 3/9] mfd: cs5535-mfd: Request shared IO regions
 centrally
Message-ID: <20191021124632.GH4365@dell>
References: <20191021105822.20271-1-lee.jones@linaro.org>
 <20191021105822.20271-4-lee.jones@linaro.org>
 <20191021122606.5q22j6wtyslwljco@holly.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021122606.5q22j6wtyslwljco@holly.lan>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_054636_293304_5447D6F9 
X-CRM114-Status: GOOD (  23.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyMSBPY3QgMjAxOSwgRGFuaWVsIFRob21wc29uIHdyb3RlOgoKPiBPbiBNb24sIE9j
dCAyMSwgMjAxOSBhdCAxMTo1ODoxNkFNICswMTAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiBQcmlv
ciB0byB0aGlzIHBhdGNoLCBJTyByZWdpb25zIHdlcmUgcmVxdWVzdGVkIHZpYSBhbiBNRkQgc3Vi
c3l0ZW0tbGV2ZWwKPiA+IC5lbmFibGUoKSBjYWxsLWJhY2sgYW5kIHNpbWlsYXJseSByZWxlYXNl
ZCBieSBhIC5kaXNhYmxlKCkgY2FsbC1iYWNrLgo+ID4gRG91YmxlIHJlcXVlc3RzL3JlbGVhc2Vz
IHdlcmUgYXZvaWRlZCBieSBhIGNlbnRyYWxseSBoYW5kbGVkIHVzYWdlIGNvdW50Cj4gPiBtZWNo
YW5pc20uCj4gPiAKPiA+IFRoaXMgY29tcGxleGl0eSBjYW4gYWxsIGJlIGF2b2lkZWQgYnkgaGFu
ZGxpbmcgSU8gcmVnaW9ucyBvbmx5IG9uY2UgZHVyaW5nCj4gPiAucHJvYmUoKSBhbmQgLnJlbW92
ZSgpIG9mIHRoZSBwYXJlbnQgZGV2aWNlLiAgU2luY2UgdGhpcyBpcyB0aGUgb25seQo+ID4gbGVn
aXRpbWF0ZSB1c2VyIG9mIHRoZSBhZm9yZW1lbnRpb25lZCB1c2FnZSBjb3VudCBtZWNoYW5pc20s
IHRoaXMgcGF0Y2gKPiA+IHdpbGwgYWxsb3cgaXQgdG8gYmUgcmVtb3ZlZCBmcm9tIE1GRCBjb3Jl
IGluIHN1YnNlcXVlbnQgc3RlcHMuCj4gPiAKPiA+IFN1Z2dlc3RlZC1ieTogRGFuaWVsIFRob21w
c29uIDxkYW5pZWwudGhvbXBzb25AbGluYXJvLm9yZz4KPiA+IFNpZ25lZC1vZmYtYnk6IExlZSBK
b25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL21mZC9jczU1
MzUtbWZkLmMgfCA3MiArKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4g
PiAgMSBmaWxlIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKyksIDQyIGRlbGV0aW9ucygtKQo+ID4g
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZmQvY3M1NTM1LW1mZC5jIGIvZHJpdmVycy9tZmQv
Y3M1NTM1LW1mZC5jCj4gPiBpbmRleCA5Y2U2YmJjZGJkYTEuLjA1M2UzMzQ0NzgwOCAxMDA2NDQK
PiA+IC0tLSBhL2RyaXZlcnMvbWZkL2NzNTUzNS1tZmQuYwo+ID4gKysrIGIvZHJpdmVycy9tZmQv
Y3M1NTM1LW1mZC5jCj4gPiBAQCAtMjcsMzggKzI3LDYgQEAgZW51bSBjczU1MzVfbWZkX2JhcnMg
ewo+ID4gIAlOUl9CQVJTLAo+ID4gIH07Cj4gPiAgCj4gPiAtc3RhdGljIGludCBjczU1MzVfbWZk
X3Jlc19lbmFibGUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+IC17Cj4gPiAtCXN0
cnVjdCByZXNvdXJjZSAqcmVzOwo+ID4gLQo+ID4gLQlyZXMgPSBwbGF0Zm9ybV9nZXRfcmVzb3Vy
Y2UocGRldiwgSU9SRVNPVVJDRV9JTywgMCk7Cj4gPiAtCWlmICghcmVzKSB7Cj4gPiAtCQlkZXZf
ZXJyKCZwZGV2LT5kZXYsICJjYW4ndCBmZXRjaCBkZXZpY2UgcmVzb3VyY2UgaW5mb1xuIik7Cj4g
PiAtCQlyZXR1cm4gLUVJTzsKPiA+IC0JfQo+ID4gLQo+ID4gLQlpZiAoIXJlcXVlc3RfcmVnaW9u
KHJlcy0+c3RhcnQsIHJlc291cmNlX3NpemUocmVzKSwgRFJWX05BTUUpKSB7Cj4gPiAtCQlkZXZf
ZXJyKCZwZGV2LT5kZXYsICJjYW4ndCByZXF1ZXN0IHJlZ2lvblxuIik7Cj4gPiAtCQlyZXR1cm4g
LUVJTzsKPiA+IC0JfQo+ID4gLQo+ID4gLQlyZXR1cm4gMDsKPiA+IC19Cj4gPiAtCj4gPiAtc3Rh
dGljIGludCBjczU1MzVfbWZkX3Jlc19kaXNhYmxlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCj4gPiAtewo+ID4gLQlzdHJ1Y3QgcmVzb3VyY2UgKnJlczsKPiA+IC0KPiA+IC0JcmVzID0g
cGxhdGZvcm1fZ2V0X3Jlc291cmNlKHBkZXYsIElPUkVTT1VSQ0VfSU8sIDApOwo+ID4gLQlpZiAo
IXJlcykgewo+ID4gLQkJZGV2X2VycigmcGRldi0+ZGV2LCAiY2FuJ3QgZmV0Y2ggZGV2aWNlIHJl
c291cmNlIGluZm9cbiIpOwo+ID4gLQkJcmV0dXJuIC1FSU87Cj4gPiAtCX0KPiA+IC0KPiA+IC0J
cmVsZWFzZV9yZWdpb24ocmVzLT5zdGFydCwgcmVzb3VyY2Vfc2l6ZShyZXMpKTsKPiA+IC0JcmV0
dXJuIDA7Cj4gPiAtfQo+ID4gLQo+ID4gIHN0YXRpYyBzdHJ1Y3QgcmVzb3VyY2UgY3M1NTM1X21m
ZF9yZXNvdXJjZXNbTlJfQkFSU107Cj4gPiAgCj4gPiAgc3RhdGljIHN0cnVjdCBtZmRfY2VsbCBj
czU1MzVfbWZkX2NlbGxzW10gPSB7Cj4gPiBAQCAtODEsMTcgKzQ5LDExIEBAIHN0YXRpYyBzdHJ1
Y3QgbWZkX2NlbGwgY3M1NTM1X21mZF9jZWxsc1tdID0gewo+ID4gIAkJLm5hbWUgPSAiY3M1NTM1
LXBtcyIsCj4gPiAgCQkubnVtX3Jlc291cmNlcyA9IDEsCj4gPiAgCQkucmVzb3VyY2VzID0gJmNz
NTUzNV9tZmRfcmVzb3VyY2VzW1BNU19CQVJdLAo+ID4gLQo+ID4gLQkJLmVuYWJsZSA9IGNzNTUz
NV9tZmRfcmVzX2VuYWJsZSwKPiA+IC0JCS5kaXNhYmxlID0gY3M1NTM1X21mZF9yZXNfZGlzYWJs
ZSwKPiA+ICAJfSwKPiA+ICAJW0FDUElfQkFSXSA9IHsKPiA+ICAJCS5uYW1lID0gImNzNTUzNS1h
Y3BpIiwKPiA+ICAJCS5udW1fcmVzb3VyY2VzID0gMSwKPiA+ICAJCS5yZXNvdXJjZXMgPSAmY3M1
NTM1X21mZF9yZXNvdXJjZXNbQUNQSV9CQVJdLAo+ID4gLQo+ID4gLQkJLmVuYWJsZSA9IGNzNTUz
NV9tZmRfcmVzX2VuYWJsZSwKPiA+IC0JCS5kaXNhYmxlID0gY3M1NTM1X21mZF9yZXNfZGlzYWJs
ZSwKPiA+ICAJfSwKPiA+ICB9Owo+ID4gIAo+ID4gQEAgLTEwOSw3ICs3MSw2IEBAIHN0YXRpYyBp
bnQgY3M1NTM1X21mZF9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwKPiA+ICAJaWYgKGVycikK
PiA+ICAJCXJldHVybiBlcnI7Cj4gPiAgCj4gPiAtCS8qIGZpbGwgaW4gSU8gcmFuZ2UgZm9yIGVh
Y2ggY2VsbDsgc3ViZHJpdmVycyBoYW5kbGUgdGhlIHJlZ2lvbiAqLwo+ID4gIAlmb3IgKGkgPSAw
OyBpIDwgTlJfQkFSUzsgaSsrKSB7Cj4gPiAgCQlzdHJ1Y3QgbWZkX2NlbGwgKmNlbGwgPSAmY3M1
NTM1X21mZF9jZWxsc1tpXTsKPiA+ICAJCXN0cnVjdCByZXNvdXJjZSAqciA9ICZjczU1MzVfbWZk
X3Jlc291cmNlc1tpXTsKPiA+IEBAIC0xMjIsMjIgKzgzLDQ3IEBAIHN0YXRpYyBpbnQgY3M1NTM1
X21mZF9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwKPiA+ICAJCXItPmVuZCA9IHBjaV9yZXNv
dXJjZV9lbmQocGRldiwgaSk7Cj4gPiAgCX0KPiA+ICAKPiA+ICsJZXJyID0gcGNpX3JlcXVlc3Rf
cmVnaW9uKHBkZXYsIFBNU19CQVIsIERSVl9OQU1FKTsKPiA+ICsJaWYgKGVycikgewo+ID4gKwkJ
ZGV2X2VycigmcGRldi0+ZGV2LCAiRmFpbGVkIHRvIHJlcXVlc3QgUE1TX0JBUidzIElPIHJlZ2lv
blxuIik7Cj4gPiArCQlnb3RvIGVycl9kaXNhYmxlOwo+ID4gKwl9Cj4gPiArCj4gPiAgCWVyciA9
IG1mZF9hZGRfZGV2aWNlcygmcGRldi0+ZGV2LCBQTEFURk9STV9ERVZJRF9OT05FLCBjczU1MzVf
bWZkX2NlbGxzLAo+ID4gIAkJCSAgICAgIEFSUkFZX1NJWkUoY3M1NTM1X21mZF9jZWxscyksIE5V
TEwsIDAsIE5VTEwpOwo+ID4gIAlpZiAoZXJyKSB7Cj4gPiAgCQlkZXZfZXJyKCZwZGV2LT5kZXYs
Cj4gPiAgCQkJIkZhaWxlZCB0byBhZGQgQ1M1NTMyIHN1Yi1kZXZpY2VzOiAlZFxuIiwgZXJyKTsK
PiA+IC0JCWdvdG8gZXJyX2Rpc2FibGU7Cj4gPiArCQlnb3RvIGVycl9yZWxlYXNlX3BtczsKPiA+
ICAJfQo+ID4gIAo+ID4gLQlpZiAobWFjaGluZV9pc19vbHBjKCkpCj4gPiAtCQltZmRfY2xvbmVf
Y2VsbCgiY3M1NTM1LWFjcGkiLCBvbHBjX2FjcGlfY2xvbmVzLCBBUlJBWV9TSVpFKG9scGNfYWNw
aV9jbG9uZXMpKTsKPiA+ICsJaWYgKG1hY2hpbmVfaXNfb2xwYygpKSB7Cj4gPiArCQllcnIgPSBw
Y2lfcmVxdWVzdF9yZWdpb24ocGRldiwgQUNQSV9CQVIsIERSVl9OQU1FKTsKPiA+ICsJCWlmIChl
cnIpIHsKPiA+ICsJCQlkZXZfZXJyKCZwZGV2LT5kZXYsCj4gPiArCQkJCSJGYWlsZWQgdG8gcmVx
dWVzdCBBQ1BJX0JBUidzIElPIHJlZ2lvblxuIik7Cj4gPiArCQkJZ290byBlcnJfcmVtb3ZlX2Rl
dmljZXM7Cj4gPiArCQl9Cj4gPiArCj4gPiArCQllcnIgPSBtZmRfY2xvbmVfY2VsbCgiY3M1NTM1
LWFjcGkiLCBvbHBjX2FjcGlfY2xvbmVzLAo+ID4gKwkJCQkgICAgIEFSUkFZX1NJWkUob2xwY19h
Y3BpX2Nsb25lcykpOwo+ID4gKwkJaWYgKGVycikgewo+ID4gKwkJCWRldl9lcnIoJnBkZXYtPmRl
diwgIkZhaWxlZCB0byBjbG9uZSBNRkQgY2VsbFxuIik7Cj4gPiArCQkJZ290byBlcnJfcmVsZWFz
ZV9hY3BpOwo+ID4gKwkJfQo+ID4gKwl9Cj4gCj4gTWFraW5nIHRoZSByZXF1ZXN0X3JlZ2lvbigp
IGNvbmRpdGlvbmFsIG9uIG1hY2hpbmVfaXNfb2xwYygpIHNlZW1zIHRvIGJlCj4gYmVzdCBvbiB0
aGUgYXNzdW1wdGlvbiB0aGF0IHRoZSBjczU1MzUtYWNwaSBpcyBub3Qgb3RoZXJ3aXNlIHVzZWQu
Cj4gCj4gSSBzdXNwZWN0IHRoZSBhc3N1bXB0aW9uIGlzIHRydWUgYnV0IHlvdSBoYXZlIHRvIGNv
bWJpbmUga25vd2xlZGdlIGZyb20KPiBzZXZlcmFsIGJpdHMgb2YgY29kZSB0byBmaWd1cmUgdGhh
dCBvdXQuCgpJdCBpcyBub3QgdXNlZC4KCldpbGwgcmVwbHkgdG8geW91ciBvdGhlciBjb21tZW50
LgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExl
YWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxv
dyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
