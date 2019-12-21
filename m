Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E59CE128B71
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 21:15:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9nvLSyvxUgd39Bm0gyKY002RKHQEESI8SBA+hKGQ+ek=; b=MVkSMIndj+t5bm
	4kggCdWkT8u3Tvzo/LXCnvvziNsUYMqW9KYBpmnJP93YJchMrsGfkBMB2A4S9YXAxQDswOoUlrHMt
	GEGrr63lIcufJ//yVtlyG82uGHC40BghIOk3ylnbcZvZXX66Fz+jfEofOMkwfIKZgpOSBacyABOIb
	nTkaBC8DUkkUcMcd3eKK/n+1pDPXsVwU3x0i8EmNfqimHc8jpkxvAdu7vGphR5b3wKN3TCBUkS3Ve
	EG10QwZgWaXB5tY4jtmlcc/5SgPVFydBD0V3vFW3HnUfr19ziVuMvZCcO5HAtdhnW8ijS0GeKCyy7
	rCZmPQM02/VpkDUSmikg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iilAL-0006Xl-CB; Sat, 21 Dec 2019 20:15:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iilAA-0006XQ-81
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Dec 2019 20:15:47 +0000
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
 [209.85.208.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 722BA206D3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 21 Dec 2019 20:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576959344;
 bh=5ebffvH8RjGUA/CqJXLR3seJ47MPgsm90kIrp/SYkC8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=rRET7jGuQ9x3Bi6G6g9O1ZUsM1zX4zsiWIx1Nt2RxjGBVszQtqOvdsBF44Zl2BSMt
 1/06vhY22BJ5Irc1JeHg41UBKX9WzhDW+rNMBK5x0tDO6y0e+Cza/GHqV8Sw63s/01
 lpUg9+MvHXTQwpVg2VaK0P17ndrD+m0kBl/sU1CI=
Received: by mail-lj1-f178.google.com with SMTP id o13so2218820ljg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 21 Dec 2019 12:15:44 -0800 (PST)
X-Gm-Message-State: APjAAAXLa5UaVd32mQz6yCpHrx4OaNcmxHGNGOIuAjWgoOItQ2AZtD2X
 x2dlELJfPszh/p95mqSG+gUXoTzBZqIEeE3oCOM=
X-Google-Smtp-Source: APXvYqw/wOkj3/7bhV08O1Y2ozplefUJRTEti5Jg7xBvbgQ90EBzcMhD9yqJ5nlEbYLGWhZbqzIfqislmtInQwBiECg=
X-Received: by 2002:a2e:9b05:: with SMTP id u5mr13652547lji.59.1576959342597; 
 Sat, 21 Dec 2019 12:15:42 -0800 (PST)
MIME-Version: 1.0
References: <CGME20191220120146eucas1p22a7b0457be4f378b113f67dc25f2eba7@eucas1p2.samsung.com>
 <20191220115653.6487-1-a.swigon@samsung.com>
 <20191220115653.6487-8-a.swigon@samsung.com>
In-Reply-To: <20191220115653.6487-8-a.swigon@samsung.com>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Sun, 22 Dec 2019 05:15:06 +0900
X-Gmail-Original-Message-ID: <CAGTfZH0LKmBzAokgN+2K4-PS87gc2GnchYaHJi33nMQBCTNS-g@mail.gmail.com>
Message-ID: <CAGTfZH0LKmBzAokgN+2K4-PS87gc2GnchYaHJi33nMQBCTNS-g@mail.gmail.com>
Subject: Re: [RFC PATCH v3 7/7] drm: exynos: mixer: Add interconnect support
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_121546_328853_FDEC1F59 
X-CRM114-Status: GOOD (  26.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, inki.dae@samsung.com,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBGcmksIERlYyAyMCwgMjAxOSBhdCA5OjAzIFBNIEFydHVyIMWad2lnb8WEIDxhLnN3
aWdvbkBzYW1zdW5nLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBNYXJlayBTenlwcm93c2tpIDxtLnN6
eXByb3dza2lAc2Ftc3VuZy5jb20+Cj4KPiBUaGlzIHBhdGNoIGFkZHMgaW50ZXJjb25uZWN0IHN1
cHBvcnQgdG8gZXh5bm9zLW1peGVyLiBUaGUgbWl4ZXIgd29ya3MKPiB0aGUgc2FtZSBhcyBiZWZv
cmUgd2hlbiBDT05GSUdfSU5URVJDT05ORUNUIGlzICduJy4KClRoZSBwYXRjaCBkZXNjcmlwdGlv
biBkb2Vzbid0IGluY2x1ZGUgd2h5IGludGVyY29ubmVjdCBpcyByZXF1aXJlZAphbmQgd2hhdCB0
byBkby4KCj4KPiBDby1kZXZlbG9wZWQtYnk6IEFydHVyIMWad2lnb8WEIDxhLnN3aWdvbkBzYW1z
dW5nLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBBcnR1ciDFmndpZ2/FhCA8YS5zd2lnb25Ac2Ftc3Vu
Zy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNh
bXN1bmcuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19taXhlci5j
IHwgNzEgKysrKysrKysrKysrKysrKysrKysrKysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA2NiBp
bnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9leHlub3MvZXh5bm9zX21peGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5v
c19taXhlci5jCj4gaW5kZXggNmNmZGI5NWZlZjJmLi5hN2U3MjQwYTA1NWYgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfbWl4ZXIuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9leHlub3MvZXh5bm9zX21peGVyLmMKPiBAQCAtMTMsNiArMTMsNyBAQAo+ICAjaW5j
bHVkZSA8bGludXgvY29tcG9uZW50Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9kZWxheS5oPgo+ICAj
aW5jbHVkZSA8bGludXgvaTJjLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9pbnRlcmNvbm5lY3QuaD4K
PiAgI2luY2x1ZGUgPGxpbnV4L2ludGVycnVwdC5oPgo+ICAjaW5jbHVkZSA8bGludXgvaXJxLmg+
Cj4gICNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4KPiBAQCAtOTcsNiArOTgsNyBAQCBzdHJ1Y3Qg
bWl4ZXJfY29udGV4dCB7Cj4gICAgICAgICBzdHJ1Y3QgZXh5bm9zX2RybV9jcnRjICAqY3J0YzsK
PiAgICAgICAgIHN0cnVjdCBleHlub3NfZHJtX3BsYW5lIHBsYW5lc1tNSVhFUl9XSU5fTlJdOwo+
ICAgICAgICAgdW5zaWduZWQgbG9uZyAgICAgICAgICAgZmxhZ3M7Cj4gKyAgICAgICBzdHJ1Y3Qg
aWNjX3BhdGggICAgICAgICAqc29jX3BhdGg7Cj4KPiAgICAgICAgIGludCAgICAgICAgICAgICAg
ICAgICAgIGlycTsKPiAgICAgICAgIHZvaWQgX19pb21lbSAgICAgICAgICAgICptaXhlcl9yZWdz
Owo+IEBAIC05MzEsNiArOTMzLDQwIEBAIHN0YXRpYyB2b2lkIG1peGVyX2Rpc2FibGVfdmJsYW5r
KHN0cnVjdCBleHlub3NfZHJtX2NydGMgKmNydGMpCj4gICAgICAgICBtaXhlcl9yZWdfd3JpdGVt
YXNrKG1peGVyX2N0eCwgTVhSX0lOVF9FTiwgMCwgTVhSX0lOVF9FTl9WU1lOQyk7Cj4gIH0KPgo+
ICtzdGF0aWMgdm9pZCBtaXhlcl9zZXRfbWVtb3J5X2JhbmR3aWR0aChzdHJ1Y3QgZXh5bm9zX2Ry
bV9jcnRjICpjcnRjKQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9k
ZSA9ICZjcnRjLT5iYXNlLnN0YXRlLT5hZGp1c3RlZF9tb2RlOwo+ICsgICAgICAgc3RydWN0IG1p
eGVyX2NvbnRleHQgKmN0eCA9IGNydGMtPmN0eDsKPiArICAgICAgIHVuc2lnbmVkIGxvbmcgYncs
IGJhbmR3aWR0aCA9IDA7Cj4gKyAgICAgICBpbnQgaSwgaiwgc3ViOwo+ICsKPiArICAgICAgIGlm
ICghY3R4LT5zb2NfcGF0aCkKPiArICAgICAgICAgICAgICAgcmV0dXJuOwo+ICsKPiArICAgICAg
IGZvciAoaSA9IDA7IGkgPCBNSVhFUl9XSU5fTlI7IGkrKykgewo+ICsgICAgICAgICAgICAgICBz
dHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSA9ICZjdHgtPnBsYW5lc1tpXS5iYXNlOwo+ICsgICAgICAg
ICAgICAgICBjb25zdCBzdHJ1Y3QgZHJtX2Zvcm1hdF9pbmZvICpmb3JtYXQ7Cj4gKwo+ICsgICAg
ICAgICAgICAgICBpZiAocGxhbmUtPnN0YXRlICYmIHBsYW5lLT5zdGF0ZS0+Y3J0YyAmJiBwbGFu
ZS0+c3RhdGUtPmZiKSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgZm9ybWF0ID0gcGxhbmUt
PnN0YXRlLT5mYi0+Zm9ybWF0Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIGJ3ID0gbW9kZS0+
aGRpc3BsYXkgKiBtb2RlLT52ZGlzcGxheSAqCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkcm1fbW9kZV92cmVmcmVzaChtb2RlKTsKPiAr
ICAgICAgICAgICAgICAgICAgICAgICBpZiAobW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX0lO
VEVSTEFDRSkKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJ3IC89IDI7Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgZm9yIChqID0gMDsgaiA8IGZvcm1hdC0+bnVtX3BsYW5lczsg
aisrKSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdWIgPSBqID8gKGZvcm1h
dC0+dnN1YiAqIGZvcm1hdC0+aHN1YikgOiAxOwo+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgYmFuZHdpZHRoICs9IGZvcm1hdC0+Y3BwW2pdICogYncgLyBzdWI7Cj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgfQo+ICsgICAgICAgICAgICAgICB9Cj4gKyAgICAgICB9Cj4gKwo+ICsg
ICAgICAgLyogYWRkIDIwJSBzYWZldHkgbWFyZ2luICovCj4gKyAgICAgICBiYW5kd2lkdGggPSBi
YW5kd2lkdGggLyA0ICogNTsKPiArCj4gKyAgICAgICBkZXZfZGJnKGN0eC0+ZGV2LCAiZXh5bm9z
LW1peGVyOiBzYWZlIGJhbmR3aWR0aCAlbGQgQnBzXG4iLCBiYW5kd2lkdGgpOwo+ICsgICAgICAg
aWNjX3NldF9idyhjdHgtPnNvY19wYXRoLCBCcHNfdG9faWNjKGJhbmR3aWR0aCksIDApOwo+ICt9
CgpJIHJlY29tbWVuZCB0aGF0IGFkZCB0aGUgcm9sZSBvZiB0aGlzIGZ1bmN0aW9uIGluIG9yZGVy
IHRvIGd1YXJhbnRlZQp0aGUgbWluaW11bSBiYW5kd2lkdGggdG8gcHJldmVudCBwZXJmb3JtYW5j
ZSBkcm9wIG9yIGgvdyBpc3N1ZS4KCj4gKwo+ICBzdGF0aWMgdm9pZCBtaXhlcl9hdG9taWNfYmVn
aW4oc3RydWN0IGV4eW5vc19kcm1fY3J0YyAqY3J0YykKPiAgewo+ICAgICAgICAgc3RydWN0IG1p
eGVyX2NvbnRleHQgKmN0eCA9IGNydGMtPmN0eDsKPiBAQCAtOTgyLDYgKzEwMTgsNyBAQCBzdGF0
aWMgdm9pZCBtaXhlcl9hdG9taWNfZmx1c2goc3RydWN0IGV4eW5vc19kcm1fY3J0YyAqY3J0YykK
PiAgICAgICAgIGlmICghdGVzdF9iaXQoTVhSX0JJVF9QT1dFUkVELCAmbWl4ZXJfY3R4LT5mbGFn
cykpCj4gICAgICAgICAgICAgICAgIHJldHVybjsKPgo+ICsgICAgICAgbWl4ZXJfc2V0X21lbW9y
eV9iYW5kd2lkdGgoY3J0Yyk7Cj4gICAgICAgICBtaXhlcl9lbmFibGVfc3luYyhtaXhlcl9jdHgp
Owo+ICAgICAgICAgZXh5bm9zX2NydGNfaGFuZGxlX2V2ZW50KGNydGMpOwo+ICB9Cj4gQEAgLTEw
MjksNiArMTA2Niw3IEBAIHN0YXRpYyB2b2lkIG1peGVyX2Rpc2FibGUoc3RydWN0IGV4eW5vc19k
cm1fY3J0YyAqY3J0YykKPiAgICAgICAgIGZvciAoaSA9IDA7IGkgPCBNSVhFUl9XSU5fTlI7IGkr
KykKPiAgICAgICAgICAgICAgICAgbWl4ZXJfZGlzYWJsZV9wbGFuZShjcnRjLCAmY3R4LT5wbGFu
ZXNbaV0pOwo+Cj4gKyAgICAgICBtaXhlcl9zZXRfbWVtb3J5X2JhbmR3aWR0aChjcnRjKTsKPiAg
ICAgICAgIGV4eW5vc19kcm1fcGlwZV9jbGtfZW5hYmxlKGNydGMsIGZhbHNlKTsKPgo+ICAgICAg
ICAgcG1fcnVudGltZV9wdXQoY3R4LT5kZXYpOwo+IEBAIC0xMjIwLDEyICsxMjU4LDIyIEBAIHN0
YXRpYyBpbnQgbWl4ZXJfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgICAg
ICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gICAgICAgICBjb25zdCBzdHJ1
Y3QgbWl4ZXJfZHJ2X2RhdGEgKmRydjsKPiAgICAgICAgIHN0cnVjdCBtaXhlcl9jb250ZXh0ICpj
dHg7Cj4gKyAgICAgICBzdHJ1Y3QgaWNjX3BhdGggKnBhdGg7Cj4gICAgICAgICBpbnQgcmV0Owo+
Cj4gKyAgICAgICAvKgo+ICsgICAgICAgICogUmV0dXJucyBOVUxMIGlmIENPTkZJR19JTlRFUkNP
Tk5FQ1QgaXMgZGlzYWJsZWQuCj4gKyAgICAgICAgKiBNYXkgcmV0dXJuIEVSUl9QVFIoLUVQUk9C
RV9ERUZFUikuCj4gKyAgICAgICAgKi8KPiArICAgICAgIHBhdGggPSBvZl9pY2NfZ2V0KGRldiwg
TlVMTCk7Cj4gKyAgICAgICBpZiAoSVNfRVJSKHBhdGgpKQo+ICsgICAgICAgICAgICAgICByZXR1
cm4gUFRSX0VSUihwYXRoKTsKPiArCj4gICAgICAgICBjdHggPSBkZXZtX2t6YWxsb2MoJnBkZXYt
PmRldiwgc2l6ZW9mKCpjdHgpLCBHRlBfS0VSTkVMKTsKPiAgICAgICAgIGlmICghY3R4KSB7Cj4g
ICAgICAgICAgICAgICAgIERSTV9ERVZfRVJST1IoZGV2LCAiZmFpbGVkIHRvIGFsbG9jIG1peGVy
IGNvbnRleHQuXG4iKTsKPiAtICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07Cj4gKyAgICAg
ICAgICAgICAgIHJldCA9IC1FTk9NRU07Cj4gKyAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+ICAg
ICAgICAgfQo+Cj4gICAgICAgICBkcnYgPSBvZl9kZXZpY2VfZ2V0X21hdGNoX2RhdGEoZGV2KTsK
PiBAQCAtMTIzMyw2ICsxMjgxLDcgQEAgc3RhdGljIGludCBtaXhlcl9wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgICAgICAgY3R4LT5wZGV2ID0gcGRldjsKPiAgICAgICAg
IGN0eC0+ZGV2ID0gZGV2Owo+ICAgICAgICAgY3R4LT5teHJfdmVyID0gZHJ2LT52ZXJzaW9uOwo+
ICsgICAgICAgY3R4LT5zb2NfcGF0aCA9IHBhdGg7Cj4KPiAgICAgICAgIGlmIChkcnYtPmlzX3Zw
X2VuYWJsZWQpCj4gICAgICAgICAgICAgICAgIF9fc2V0X2JpdChNWFJfQklUX1ZQX0VOQUJMRUQs
ICZjdHgtPmZsYWdzKTsKPiBAQCAtMTI0MiwxNyArMTI5MSwyOSBAQCBzdGF0aWMgaW50IG1peGVy
X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAgICAgICBwbGF0Zm9ybV9z
ZXRfZHJ2ZGF0YShwZGV2LCBjdHgpOwo+Cj4gICAgICAgICByZXQgPSBjb21wb25lbnRfYWRkKCZw
ZGV2LT5kZXYsICZtaXhlcl9jb21wb25lbnRfb3BzKTsKPiAtICAgICAgIGlmICghcmV0KQo+IC0g
ICAgICAgICAgICAgICBwbV9ydW50aW1lX2VuYWJsZShkZXYpOwo+ICsgICAgICAgaWYgKHJldCA8
IDApCj4gKyAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+ICsKPiArICAgICAgIHBtX3J1bnRpbWVf
ZW5hYmxlKGRldik7Cj4gKwo+ICsgICAgICAgcmV0dXJuIDA7Cj4gKwo+ICtlcnI6Cj4gKyAgICAg
ICBpY2NfcHV0KHBhdGgpOwo+Cj4gICAgICAgICByZXR1cm4gcmV0Owo+ICB9Cj4KPiAgc3RhdGlj
IGludCBtaXhlcl9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgewo+IC0g
ICAgICAgcG1fcnVudGltZV9kaXNhYmxlKCZwZGV2LT5kZXYpOwo+ICsgICAgICAgc3RydWN0IGRl
dmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPiArICAgICAgIHN0cnVjdCBtaXhlcl9jb250ZXh0ICpj
dHggPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPiArCj4gKyAgICAgICBwbV9ydW50aW1lX2Rpc2Fi
bGUoZGV2KTsKPiArCj4gKyAgICAgICBjb21wb25lbnRfZGVsKGRldiwgJm1peGVyX2NvbXBvbmVu
dF9vcHMpOwo+Cj4gLSAgICAgICBjb21wb25lbnRfZGVsKCZwZGV2LT5kZXYsICZtaXhlcl9jb21w
b25lbnRfb3BzKTsKPiArICAgICAgIGljY19wdXQoY3R4LT5zb2NfcGF0aCk7Cj4KPiAgICAgICAg
IHJldHVybiAwOwo+ICB9Cj4gLS0KPiAyLjE3LjEKPgoKQmFzaWNhbGx5LCBJIGFncmVlIHRoaXMg
cGF0Y2ggYWJvdXQgdXNpbmcgSUNDIGZlYXR1cmUKdG8gZ3VhcmFudGVlIHRoZSBtaW5pbXVtIGJh
bmR3aWR0aC4gQnV0LCBJIGRvbid0IGhhdmUKdGhlIGtub3dsZWRnZSBvZiBleHlub3MtbWl4ZXIu
Yy4gU28sIGp1c3QgSSByZXZpZXdlZAp0aGUgcGFydCBvZiBJQ0MgdXNhZ2UuIEFmdGVyIGRpZ2dp
bmcgdGhlIGV4eW5vcy1taXhlci5jLApJJ2xsIHJlcGx5IHRoZSByZXZpZXdlZCB0YWcuIFRoYW5r
cy4KCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
