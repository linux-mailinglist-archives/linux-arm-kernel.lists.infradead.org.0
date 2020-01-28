Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F42414B10B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 09:41:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5mTsQSrdeJ9zVByjXRmsJp4ETdLNjssYuEhDXCsd0V8=; b=ewOh/Snz4EDcWz
	X0OIgFXjdO2rt7lQ1FHV+QqQ1OW7guBOAHMlzovk6IPtFfkDCq8RWKXxs4kZ/I+KqEHTO+dAH1nfk
	/rAm853q95Lee616Az0glEY5iwe9EoKF6UVPts/qYelrIt+L0QCDHKMh7fZO+tDIFQcnu6cX9fbAy
	iuN8VG3hwI9SuPOeIK2OFCwLOyygO7Ho5uH6SE62RCXib75H4CP7q6XrFIu108C5WKgmeBaa651yh
	kyhiLF6/OfIDOKmof3ZbkXf8Ork/LzKw4AMvMSPj9Ro8yOgIN1zMo1hyUuOkxfaoXlu6seEnLGU1v
	6qTse7TYs/PY5iNv9aXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwMQZ-0001SS-VE; Tue, 28 Jan 2020 08:40:55 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwMQP-0001Rk-FX
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 08:40:47 +0000
Received: by mail-wm1-x342.google.com with SMTP id g1so1507683wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Jan 2020 00:40:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=CY0t0Jh4KmNVk3ml8hjXW8Vdas/J0r5nTkeZF74pSy0=;
 b=s/LpWYEIcfGMYj16YRbqin5Jwv6iYr8gbOvilsGF5E0NS2RZAtMwaA1QgmEQYJer9l
 4ljNiptvd8t9Ch8FcAtJMGOpsZC7Bk7cAq3uEWy1XgHr05QqOkG6/Z6FAc7pG4YfH7/f
 y9qhiHNjmpiPoEq73qxiikV+5Ddl2RuzTXiI9MNBrQpPAQtdZb+B3rJl8wIXq8z0Nx3E
 +sVt1BFSfbt6uPe8R6WoRQ2YkRtvFsJmeyPNmYHYoRXj1G+qvKS6+DUj+TcOhTLsJ5IF
 nErwzIEFNvxk5WUgdwfBJoaDEgVql8oToASv3JMQT5Ey6g/Pgpv9BMAeN6vhVLAV2gW/
 5xkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=CY0t0Jh4KmNVk3ml8hjXW8Vdas/J0r5nTkeZF74pSy0=;
 b=nJ0BfOZmP9EgIXI8llFtcQLqb2NgoWUQe/TNfvUuRwejgwxKBJXEIutG5Fh7yN1rLl
 Z5l5C53sxzjrdknHDSFBuCqJsG1UDABAQG4XZZPNYG+zb9BXFVSaQOOOUx0iaxdJ8Dlx
 j2eqcFsfXSWhlEI5ey/dniVmKuUdn2lvHkURDe8pk8UPkybpaR65Od51JKQc4OKUCmH/
 mFGa2KMnzeJfMMWjkFjB2nWd3+qhEvKfaBfxtfeWZx4B6CNLPxgEQ/rImx7Kw7yWZ7DI
 PlK8HgeVzFuE94S4tnVQKxjtcPJbPQ1PsdvFuBeO4DX5r8VOXqXC/fIKpylsAoPUCBaD
 rm0A==
X-Gm-Message-State: APjAAAUv3e0Kb0mQ3cZq+GqJqNW9HenonpY1S2kAgoYKTJCYizDucqa+
 GoVnrxc+7hK2DRZOwc0GajM=
X-Google-Smtp-Source: APXvYqydtAPMTd8VYXMiKc/zqY0XzwWworu4R59xBUl28EjN007x2C/d4Omf/55dw5k8RxiP/TVZCQ==
X-Received: by 2002:a1c:81d3:: with SMTP id c202mr3533111wmd.14.1580200843638; 
 Tue, 28 Jan 2020 00:40:43 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id d16sm28065304wrg.27.2020.01.28.00.40.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jan 2020 00:40:42 -0800 (PST)
Date: Tue, 28 Jan 2020 09:40:41 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Iuliana Prodan <iuliana.prodan@nxp.com>
Subject: Re: [PATCH 5/9] crypto: engine: add enqueue_request/can_do_more
Message-ID: <20200128084041.GA10493@Red>
References: <20200122104528.30084-1-clabbe.montjoie@gmail.com>
 <20200122104528.30084-6-clabbe.montjoie@gmail.com>
 <AM0PR04MB717155300E3575C07D31E1D08C0B0@AM0PR04MB7171.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB717155300E3575C07D31E1D08C0B0@AM0PR04MB7171.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_004045_517732_EDAA31CE 
X-CRM114-Status: GOOD (  26.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [clabbe.montjoie[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "herbert@gondor.apana.org.au" <herbert@gondor.apana.org.au>,
 "linux-sunxi@googlegroups.com" <linux-sunxi@googlegroups.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mripard@kernel.org" <mripard@kernel.org>, "wens@csie.org" <wens@csie.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKYW4gMjcsIDIwMjAgYXQgMTA6NTg6MzZQTSArMDAwMCwgSXVsaWFuYSBQcm9kYW4g
d3JvdGU6Cj4gT24gMS8yMi8yMDIwIDEyOjQ1IFBNLCBDb3JlbnRpbiBMYWJiZSB3cm90ZToKPiA+
IFRoaXMgcGF0Y2hzIGFkZHMgdHdvIG5ldyBmdW5jdGlvbiB3cmFwcGVyIGluIGNyeXB0b19lbmdp
bmUuCj4gPiAtIGVucXVldWVfcmVxdWVzdCgpIGZvciBkcml2ZXJzIGVucXVldWluZyByZXF1ZXN0
IHRvIGhhcmR3YXJlLgo+ID4gLSBjYW5fcXVldWVfbW9yZSgpIGZvciBsZXR0aW5nIGRyaXZlcnMg
dG8gdGVsbCBpZiB0aGV5IGNhbgo+ID4gZW5xdWV1ZS9wcmVwYXJlIG1vcmUuCj4gPiAKPiA+IFNp
bmNlIHNvbWUgZHJpdmVycyAobGlrZSBjYWFtKSBvbmx5IGVucXVldWUgcmVxdWVzdCB3aXRob3V0
ICJkb2luZyIKPiA+IHRoZW0sIGRvX29uZV9yZXF1ZXN0KCkgaXMgbm93IG9wdGlvbmFsLgo+ID4g
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDb3JlbnRpbiBMYWJiZSA8Y2xhYmJlLm1vbnRqb2llQGdtYWls
LmNvbT4KPiA+IC0tLQo+ID4gICBjcnlwdG8vY3J5cHRvX2VuZ2luZS5jICB8IDI1ICsrKysrKysr
KysrKysrKysrKysrKystLS0KPiA+ICAgaW5jbHVkZS9jcnlwdG8vZW5naW5lLmggfCAxNCArKysr
KysrKy0tLS0tLQo+ID4gICAyIGZpbGVzIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKyksIDkgZGVs
ZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9jcnlwdG8vY3J5cHRvX2VuZ2luZS5jIGIv
Y3J5cHRvL2NyeXB0b19lbmdpbmUuYwo+ID4gaW5kZXggNWJjYjFlNzQwZmQ5Li40YTI4NTQ4YzQ5
YWEgMTAwNjQ0Cj4gPiAtLS0gYS9jcnlwdG8vY3J5cHRvX2VuZ2luZS5jCj4gPiArKysgYi9jcnlw
dG8vY3J5cHRvX2VuZ2luZS5jCj4gPiBAQCAtODMsNiArODMsNyBAQCBzdGF0aWMgdm9pZCBjcnlw
dG9fcHVtcF9yZXF1ZXN0cyhzdHJ1Y3QgY3J5cHRvX2VuZ2luZSAqZW5naW5lLAo+ID4gICAJCWdv
dG8gb3V0Owo+ID4gICAJfQo+ID4gICAKPiA+ICtyZXRyeToKPiA+ICAgCS8qIEdldCB0aGUgZmlz
dCByZXF1ZXN0IGZyb20gdGhlIGVuZ2luZSBxdWV1ZSB0byBoYW5kbGUgKi8KPiA+ICAgCWJhY2ts
b2cgPSBjcnlwdG9fZ2V0X2JhY2tsb2coJmVuZ2luZS0+cXVldWUpOwo+ID4gICAJYXN5bmNfcmVx
ID0gY3J5cHRvX2RlcXVldWVfcmVxdWVzdCgmZW5naW5lLT5xdWV1ZSk7Cj4gPiBAQCAtMTE4LDEw
ICsxMTksMjggQEAgc3RhdGljIHZvaWQgY3J5cHRvX3B1bXBfcmVxdWVzdHMoc3RydWN0IGNyeXB0
b19lbmdpbmUgKmVuZ2luZSwKPiA+ICAgCQkJZ290byByZXFfZXJyMjsKPiA+ICAgCQl9Cj4gPiAg
IAl9Cj4gPiArCj4gPiArCWlmIChlbmdpbmVjdHgtPm9wLmVucXVldWVfcmVxdWVzdCkgewo+ID4g
KwkJcmV0ID0gZW5naW5lY3R4LT5vcC5lbnF1ZXVlX3JlcXVlc3QoZW5naW5lLCBhc3luY19yZXEp
Owo+ID4gKwkJaWYgKHJldCkgewo+ID4gKwkJCWRldl9lcnIoZW5naW5lLT5kZXYsICJmYWlsZWQg
dG8gZW5xdWV1ZSByZXF1ZXN0OiAlZFxuIiwKPiA+ICsJCQkJcmV0KTsKPiA+ICsJCQlnb3RvIHJl
cV9lcnI7Cj4gPiArCQl9Cj4gPiArCX0KPiA+ICsJaWYgKGVuZ2luZWN0eC0+b3AuY2FuX3F1ZXVl
X21vcmUgJiYgZW5naW5lLT5xdWV1ZS5xbGVuID4gMCkgewo+ID4gKwkJcmV0ID0gZW5naW5lY3R4
LT5vcC5jYW5fcXVldWVfbW9yZShlbmdpbmUsIGFzeW5jX3JlcSk7Cj4gPiArCQlpZiAocmV0ID4g
MCkgewo+ID4gKwkJCXNwaW5fbG9ja19pcnFzYXZlKCZlbmdpbmUtPnF1ZXVlX2xvY2ssIGZsYWdz
KTsKPiA+ICsJCQlnb3RvIHJldHJ5Owo+ID4gKwkJfQo+ID4gKwkJaWYgKHJldCA8IDApIHsKPiA+
ICsJCQlkZXZfZXJyKGVuZ2luZS0+ZGV2LCAiZmFpbGVkIHRvIGNhbGwgY2FuX3F1ZXVlX21vcmVc
biIpOwo+ID4gKwkJCS8qIFRPRE8gKi8KPiA+ICsJCX0KPiA+ICsJfQo+ID4gICAJaWYgKCFlbmdp
bmVjdHgtPm9wLmRvX29uZV9yZXF1ZXN0KSB7Cj4gPiAtCQlkZXZfZXJyKGVuZ2luZS0+ZGV2LCAi
ZmFpbGVkIHRvIGRvIHJlcXVlc3RcbiIpOwo+ID4gLQkJcmV0ID0gLUVJTlZBTDsKPiA+IC0JCWdv
dG8gcmVxX2VycjsKPiA+ICsJCXJldHVybjsKPiA+ICAgCX0KPiA+ICAgCXJldCA9IGVuZ2luZWN0
eC0+b3AuZG9fb25lX3JlcXVlc3QoZW5naW5lLCBhc3luY19yZXEpOwo+ID4gICAJaWYgKHJldCkg
ewo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvY3J5cHRvL2VuZ2luZS5oIGIvaW5jbHVkZS9jcnlw
dG8vZW5naW5lLmgKPiA+IGluZGV4IDAzZDlmOWVjMWNlYS4uOGFiOWQyNmUzMGZlIDEwMDY0NAo+
ID4gLS0tIGEvaW5jbHVkZS9jcnlwdG8vZW5naW5lLmgKPiA+ICsrKyBiL2luY2x1ZGUvY3J5cHRv
L2VuZ2luZS5oCj4gPiBAQCAtNjMsMTQgKzYzLDE2IEBAIHN0cnVjdCBjcnlwdG9fZW5naW5lIHsK
PiA+ICAgICogQHByZXBhcmVfX3JlcXVlc3Q6IGRvIHNvbWUgcHJlcGFyZSBpZiBuZWVkIGJlZm9y
ZSBoYW5kbGUgdGhlIGN1cnJlbnQgcmVxdWVzdAo+ID4gICAgKiBAdW5wcmVwYXJlX3JlcXVlc3Q6
IHVuZG8gYW55IHdvcmsgZG9uZSBieSBwcmVwYXJlX3JlcXVlc3QoKQo+ID4gICAgKiBAZG9fb25l
X3JlcXVlc3Q6IGRvIGVuY3J5cHRpb24gZm9yIGN1cnJlbnQgcmVxdWVzdAo+ID4gKyAqIEBlbnF1
ZXVlX3JlcXVlc3Q6CUVucXVldWUgdGhlIHJlcXVlc3QgaW4gdGhlIGhhcmR3YXJlCj4gPiArICog
QGNhbl9xdWV1ZV9tb3JlOglpZiB0aGlzIGZ1bmN0aW9uIHJldHVybiA+IDAsIGl0IHdpbGwgdGVs
bCB0aGUgY3J5cHRvCj4gPiArICogCWVuZ2luZSB0aGF0IG1vcmUgc3BhY2UgYXJlIGF2YWlsbGFi
bGUgZm9yIHByZXBhcmUvZW5xdWV1ZSByZXF1ZXN0Cj4gPiAgICAqLwo+ID4gICBzdHJ1Y3QgY3J5
cHRvX2VuZ2luZV9vcCB7Cj4gPiAtCWludCAoKnByZXBhcmVfcmVxdWVzdCkoc3RydWN0IGNyeXB0
b19lbmdpbmUgKmVuZ2luZSwKPiA+IC0JCQkgICAgICAgdm9pZCAqYXJlcSk7Cj4gPiAtCWludCAo
KnVucHJlcGFyZV9yZXF1ZXN0KShzdHJ1Y3QgY3J5cHRvX2VuZ2luZSAqZW5naW5lLAo+ID4gLQkJ
CQkgdm9pZCAqYXJlcSk7Cj4gPiAtCWludCAoKmRvX29uZV9yZXF1ZXN0KShzdHJ1Y3QgY3J5cHRv
X2VuZ2luZSAqZW5naW5lLAo+ID4gLQkJCSAgICAgIHZvaWQgKmFyZXEpOwo+ID4gKwlpbnQgKCpw
cmVwYXJlX3JlcXVlc3QpKHN0cnVjdCBjcnlwdG9fZW5naW5lICplbmdpbmUsIHZvaWQgKmFyZXEp
Owo+ID4gKwlpbnQgKCp1bnByZXBhcmVfcmVxdWVzdCkoc3RydWN0IGNyeXB0b19lbmdpbmUgKmVu
Z2luZSwgdm9pZCAqYXJlcSk7Cj4gPiArCWludCAoKmRvX29uZV9yZXF1ZXN0KShzdHJ1Y3QgY3J5
cHRvX2VuZ2luZSAqZW5naW5lLCB2b2lkICphcmVxKTsKPiA+ICsJaW50ICgqZW5xdWV1ZV9yZXF1
ZXN0KShzdHJ1Y3QgY3J5cHRvX2VuZ2luZSAqZW5naW5lLCB2b2lkICphcmVxKTsKPiA+ICsJaW50
ICgqY2FuX3F1ZXVlX21vcmUpKHN0cnVjdCBjcnlwdG9fZW5naW5lICplbmdpbmUsIHZvaWQgKmFy
ZXEpOwo+ID4gICB9Owo+IAo+IEFzIEkgbWVudGlvbmVkIGluIGFub3RoZXIgdGhyZWFkIFsxXSwg
dGhlc2UgY3J5cHRvLWVuZ2luZSBwYXRjaGVzICgjMSAtIAo+ICM1KSBpbXBseSBtb2RpZmljYXRp
b25zIGluIGFsbCB0aGUgZHJpdmVycyB0aGF0IHVzZSBjcnlwdG8tZW5naW5lLgo+IEl0J3Mgbm90
IGJhY2t3YXJkcyBjb21wYXRpYmxlLgoKVGhpcyBpcyB3cm9uZy4gVGhpcyBpcyBmYWxzZS4KQVMg
SSBIQVZFIEFMUkVBRFkgU0FJRCwgSSBoYXZlIHRlc3RlZCBhbmQgZGlkbnQgc2VlIGFueSBiZWhh
dm91ciBjaGFuZ2UgaW4gdGhlIGN1cnJlbnQgdXNlciBvZiBjcnlwdG8gZW5naW5lLgpJIGhhdmUg
dGVzdGVkIG15IHNlcmllIHdpdGggb21hcCwgdmlydGlvLCBhbWxvZ2ljLCBzdW44aS1zcywgc3Vu
OGktY2UgYW5kIGRpZG50IHNlZSBhbnkgY2hhbmdlIGluIGJlaGF2b3VyIFdJVEhPVVQgQ0hBTkdJ
TkcgdGhlbS4KSSByZXNhaWQsIEkgZGlkbnQgdG91Y2ggb21hcCwgdmlydGlvLCBldGMuLi4KT25s
eSBzdG0zMiBpcyBub3QgdGVzdGVkIGJlY2F1c2Ugc2ltcGx5IHRoZXJlIGFyZSBub3QgYm9hcmQg
d2l0aCB0aGlzIGRyaXZlciBlbmFibGVkLgoKSSBoYXZlIGFsc28gdGVzdGVkIHlvdXIgc2VyaWUg
d2hpY2ggYWRkcyBzdXBwb3J0IGZvciBjcnlwdG8gZW5naW5lIHRvIGNhYW0sIGFuZCB0aGUgY3Jh
c2ggaXMgdGhlIHNhbWUgd2l0aC93aXRob3V0IG15IHNlcmllLgpTbyBubyBiZWhhdm91ciBjaGFu
Z2UuCgo+IFlvdXIgY2hhbmdlcyBpbXBseSB0aGF0IGRvX29uZV9yZXF1ZXN0IGV4ZWN1dGVzIHRo
ZSByZXF1ZXN0ICYgd2FpdHMgZm9yIAo+IGNvbXBsZXRpb24gYW5kIGVucXVldWVfcmVxdWVzdCBz
ZW5kcyBpdCB0byBoYXJkd2FyZS4gVGhhdCBtZWFucyB0aGF0IGFsbCAKPiB0aGUgb3RoZXIgZHJp
dmVycyBuZWVkIHRvIGJlIG1vZGlmeSwgdG8gaW1wbGVtZW50IGVucXVldWVfcmVxdWVzdCwgCj4g
aW5zdGVhZCBvZiBkb19vbmVfcmVxdWVzdC4gVGhleSBuZWVkIHRvIGJlIGNvbXBsaWFudCB3aXRo
IHRoZSBuZXcgCj4gY2hhbmdlcywgbmV3IEFQSS4gT3RoZXJ3aXNlLCB0aGV5IGFyZSBub3QgdXNp
bmcgY3J5cHRvLWVuZ2luZSByaWdodCwgCj4gZG9uJ3QgeW91IHRoaW5rPwo+IAoKTXkgY2hhbmdl
IGltcGx5IG5vdGhpbmcsIGN1cnJlbnQgdXNlciB3b3JrIHRoZSBzYW1lLgpCdXQgaWYgdGhleSB3
YW50LCB0aGV5IENPVUxEIHN3aXRjaCB0byBlbnF1ZXVlX3JlcXVlc3QoKS4KCj4gQWxzbywgZG9f
b25lX3JlcXVlc3QgaXQgc2hvdWxkbuKAmXQgYmUgYmxvY2tpbmcuIFdlIGdvdCB0aGlzIGNvbmZp
cm1hdGlvbiAKPiBmcm9tIEhlcmJlcnQgWzJdLgoKUmUtcmVhZCB3aGF0IEhlcmJlcnQgc2FpZCwg
Ikl0IGNlcnRhaW5seSBzaG91bGRuJ3QgYmUgYmxvY2tpbmcgaW4gdGhlIGdlbmVyYWwgY2FzZS4i
IEJ1dCB0aGF0IG1lYW5zIGl0IGNvdWxkLgpCdXQgdGhpcyB3b250IGNoYW5nZSBteSBwYXRjaCBz
aW5jZSBib3RoIGJlaGF2b3VyIGFyZSBzdXBwb3J0ZWQuCgo+IAo+IFsxXSAKPiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9sa21sL1ZJMVBSMDRNQjQ0NDU1MzQzMjMwQ0JBNzQwMEQyMUM5OThDMEMw
QFZJMVBSMDRNQjQ0NDUuZXVycHJkMDQucHJvZC5vdXRsb29rLmNvbS8KPiBbMl0gCj4gaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDIwMDEyMjE0NDEzNC5heHFwd3g2NWo3eHlzeXkzQGdv
bmRvci5hcGFuYS5vcmcuYXUvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
