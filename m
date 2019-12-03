Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B550B10FAC5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 10:32:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BV8QQQy4TTDj31E6qSBuZv7zk9pHCkkYvkoSyDkfq4=; b=qsYd12F04aKT0s
	jqwSnkgeeKTakyxV6GV/dR1gUHDS1nTKk8OwjMofdf75+pRhyBFoY73yp4J+CYr18cU2J08ZJbb0f
	6EM5egAMbTFbuhdcgwL7c+ho/PvRrTipSwmkFTUugS+9pP2wr0Nk0Wr7LDkqvX7pTcVgun4vLURAc
	N42bqIl5hUFmh0J1Ckqw7KW7EWlAiWYEfjpuMrm0WWK6f5HFvhFQQ8dI0bruUH8ky9mDVJRwa7182
	dbde12YCLEWZgDF++seWeEhPp8uvVfv4Ub+l21ZkY73cJHnUMKwP5n7zN2FpkXYlb1HZPXjmvDPod
	O5KBZUpzQOlvdNWwR1oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic4Xf-0007w4-Ah; Tue, 03 Dec 2019 09:32:23 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic4XX-0007vQ-Rr; Tue, 03 Dec 2019 09:32:17 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E96CBAF13;
 Tue,  3 Dec 2019 09:32:13 +0000 (UTC)
Subject: Re: [PATCH 1/6] dt-bindings: clock: add bindings for RTD1619 clocks
To: James Tai <james.tai@realtek.com>
References: <20191203074513.9416-1-james.tai@realtek.com>
 <20191203074513.9416-2-james.tai@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <f069747b-7f10-f47c-684d-11138b8fd129@suse.de>
Date: Tue, 3 Dec 2019 10:32:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191203074513.9416-2-james.tai@realtek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_013216_194502_74A5A629 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 cylee12 <cylee12@realtek.com>, linux-realtek-soc@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMgYW5kIENoZW5nLVl1LAoKQW0gMDMuMTIuMTkgdW0gMDg6NDUgc2NocmllYiBKYW1l
cyBUYWk6Cj4gRnJvbTogY3lsZWUxMiA8Y3lsZWUxMkByZWFsdGVrLmNvbT4KClBsZWFzZSBmaXgg
dGhlIGF1dGhvciAoZ2l0IGNvbW1pdCAtLWFtZW5kIC0tYXV0aG9yPSIuLi4iKSBhbmQgdXNlIGFu
CmFwcHJvcHJpYXRlIGdpdCBjb25maWcgc2V0dGluZyAoYW5kIGNvbW11bmljYXRpb24gdG8geW91
ciB0ZWFtKSB0byBhdm9pZAp0aGlzIHJlb2NjdXJyaW5nIGZvciBuZXcgY29tbWl0cyAtIGFscmVh
ZHkgcG9pbnRlZCBvdXQgdG8gSmFtZXMuCgpCVFcgSSB3b25kZXIgd2h5IHdlIGhhdmUgc28gbWFu
eSBzZWVtaW5nbHkgdW5yZWxhdGVkIHBlb3BsZSBpbiBDQwooTWVkaWF0ZWssIFJJU0MtVikgdGhh
dCB0aGUgcGF0Y2hlcyBhbmQgcmVzcG9uc2VzIGtlZXAgaGFuZ2luZyBpbgptYWlsaW5nIGxpc3Qg
bW9kZXJhdGlvbj8KCj4gCj4gQWRkIGRldmljZXRyZWUgYmluZGluZyBmb3IgUmVhbHRlayBSVEQx
NjE5IGNsb2Nrcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaGVuZy1ZdSBMZWUgPGN5bGVlMTJAcmVh
bHRlay5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSmFtZXMgVGFpIDxqYW1lcy50YWlAcmVhbHRlay5j
b20+Cj4gLS0tCj4gIGluY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svcnRrLGNsb2NrLXJ0ZDE2MTku
aCB8IDg4ICsrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDg4IGluc2VydGlv
bnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svcnRr
LGNsb2NrLXJ0ZDE2MTkuaAo+IAo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2R0LWJpbmRpbmdzL2Ns
b2NrL3J0ayxjbG9jay1ydGQxNjE5LmggYi9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3J0ayxj
bG9jay1ydGQxNjE5LmgKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAw
MC4uNDk3ZjliOTE0ODU3Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2luY2x1ZGUvZHQtYmluZGlu
Z3MvY2xvY2svcnRrLGNsb2NrLXJ0ZDE2MTkuaAoKTkFLIGZvciB0aGUgZmlsZW5hbWUuICJydGss
IiBpcyBub3QgYSByZWdpc3RlcmVkIHZlbmRvciBwcmVmaXggWzFdLCBzbwp5b3UgY2Fubm90IHVz
ZSBpdCBhbnl3aGVyZSBpbiBiaW5kaW5ncy4gUGxlYXNlIHVzZSB0aGUgcmVnaXN0ZXJlZCBwcmVm
aXgKInJlYWx0ZWssIiBhbmQgY29tcGFyZSB0aGUgb3RoZXIgUmVhbHRlayBiaW5kaW5ncyBoZWFk
ZXJzIHRoYXQgZ290CmFjY2VwdGVkIGFscmVhZHkuIFRoZSBvcmRlciBvZiBTb0MgdnMuIG5hbWUg
c2VlbXMgd3JvbmcuCgpbMV0KaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tl
cm5lbC9naXQvbmV4dC9saW51eC1uZXh0LmdpdC90cmVlL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbAoKPiBAQCAtMCwwICsxLDg4IEBACj4gKy8q
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8KCldoeSByZXN0cmljdCB0
aGVzZSB0cml2aWFsIG51bWJlcnMgdG8gR1BMdjI/IFBsZWFzZSBjb21wYXJlIHRoZSAuZHRzaQph
bmQgLnlhbWwgZmlsZXMgd2hlcmUgdGhpcyBtYXkgZ2V0ICNpbmNsdWRlJ2QsIGFuZCBrZWVwIG5v
bi1MaW51eCBPU2VzCnN1Y2ggYXMgQlNEcyBpbiBtaW5kIGZvciBhbnkgRFQgYmluZGluZ3M7IGl0
J3Mgc3VwcG9zZWQgdG8gYmUgYW4KT1MtbmV1dHJhbCBpbnRlcmZhY2UgY29udHJhY3QgdGhhdCBh
bnlvbmUgY2FuIGltcGxlbWVudC4KCj4gKyNpZm5kZWYgX19EVF9CSU5ESU5HU19SVEtfQ0xPQ0tf
UlREMTYxOV9ICj4gKyNkZWZpbmUgX19EVF9CSU5ESU5HU19SVEtfQ0xPQ0tfUlREMTYxOV9ICgpN
YXkgbmVlZCBhZGp1c3RtZW50cyBiYXNlZCBvbiB0aGUgZmlsZW5hbWUsIHNhbWUgZm9yIHRoZSAj
ZW5kaWYuCgo+ICsKPiArI2RlZmluZSBDQ19QTExfU0NQVSAwCj4gKyNkZWZpbmUgQ0NfUExMX0JV
UyAyCgpQbGVhc2UgdGFiLWluZGVudCB0aGUgaW5kaWNlcyBmb3IgcmVhZGFiaWxpdHkuCgo+ICsj
ZGVmaW5lIENDX0NMS19TWVMgMwo+ICsjZGVmaW5lIENDX0NMS19TWVNfU0IyIDQKPiArI2RlZmlu
ZSBDQ19QTExfRENTQiA1Cj4gKyNkZWZpbmUgQ0NfQ0xLX1NZU0ggNgo+ICsjZGVmaW5lIENDX1BM
TF9ERFNBIDcKPiArI2RlZmluZSBDQ19QTExfRERTQiA4Cj4gKyNkZWZpbmUgQ0NfUExMX0dQVSA5
Cj4gKyNkZWZpbmUgQ0NfQ0xLX0dQVSAxMAo+ICsjZGVmaW5lIENDX1BMTF9WRTEgMTEKPiArI2Rl
ZmluZSBDQ19QTExfVkUyIDEyCj4gKyNkZWZpbmUgQ0NfQ0xLX1ZFMSAxMwo+ICsjZGVmaW5lIEND
X0NMS19WRTIgMTQKPiArI2RlZmluZSBDQ19DTEtfVkUzIDE1Cj4gKyNkZWZpbmUgQ0NfQ0xLX1ZF
Ml9CUFUgMTYKPiArI2RlZmluZSBDQ19QTExfRElGIDE3Cj4gKyNkZWZpbmUgQ0NfUExMX1BTQVVE
MUEgMTgKPiArI2RlZmluZSBDQ19QTExfUFNBVUQyQSAxOQo+ICsKPiArI2RlZmluZSBDQ19DS0Vf
TUlTQyAzMwo+ICsjZGVmaW5lIENDX0NLRV9QQ0lFMCAzNAo+ICsjZGVmaW5lIENDX0NLRV9HU1BJ
IDM1Cj4gKyNkZWZpbmUgQ0NfQ0tFX1NEUyAzNgo+ICsjZGVmaW5lIENDX0NLRV9IRE1JIDM3Cj4g
KyNkZWZpbmUgQ0NfQ0tFX0xTQURDIDM4Cj4gKyNkZWZpbmUgQ0NfQ0tFX1NFIDM5Cj4gKyNkZWZp
bmUgQ0NfQ0tFX0NQIDQwCj4gKyNkZWZpbmUgQ0NfQ0tFX01EIDQxCj4gKyNkZWZpbmUgQ0NfQ0tF
X1RQIDQyCj4gKyNkZWZpbmUgQ0NfQ0tFX1JTQSA0Mwo+ICsjZGVmaW5lIENDX0NLRV9ORiA0NAo+
ICsjZGVmaW5lIENDX0NLRV9FTU1DIDQ1Cj4gKyNkZWZpbmUgQ0NfQ0tFX1NEIDQ2Cj4gKyNkZWZp
bmUgQ0NfQ0tFX1NESU9fSVAgNDcKPiArI2RlZmluZSBDQ19DS0VfTUlQSSA0OAo+ICsjZGVmaW5l
IENDX0NLRV9FTU1DX0lQIDQ5Cj4gKyNkZWZpbmUgQ0NfQ0tFX1NESU8gNTAKPiArI2RlZmluZSBD
Q19DS0VfU0RfSVAgNTEKPiArI2RlZmluZSBDQ19DS0VfQ0FCTEVSWCA1Mgo+ICsjZGVmaW5lIEND
X0NLRV9UUEIgNTMKPiArI2RlZmluZSBDQ19DS0VfU0MxIDU0Cj4gKyNkZWZpbmUgQ0NfQ0tFX0ky
QzMgNTUKPiArI2RlZmluZSBDQ19DS0VfSlBFRyA1Ngo+ICsjZGVmaW5lIENDX0NLRV9TQzAgNTcK
PiArI2RlZmluZSBDQ19DS0VfSERNSVJYIDU4Cj4gKyNkZWZpbmUgQ0NfQ0tFX0hTRSA1OQo+ICsj
ZGVmaW5lIENDX0NLRV9VUjIgNjAKPiArI2RlZmluZSBDQ19DS0VfVVIxIDYxCj4gKyNkZWZpbmUg
Q0NfQ0tFX0ZBTiA2Mgo+ICsjZGVmaW5lIENDX0NLRV9TQVRBX1dSQVBfU1lTIDYzCj4gKyNkZWZp
bmUgQ0NfQ0tFX1NBVEFfV1JBUF9TWVNIIDY0Cj4gKyNkZWZpbmUgQ0NfQ0tFX1NBVEFfTUFDX1NZ
U0ggNjUKPiArI2RlZmluZSBDQ19DS0VfUjJSRFNDIDY2Cj4gKyNkZWZpbmUgQ0NfQ0tFX1BDSUUx
IDY3Cj4gKyNkZWZpbmUgQ0NfQ0tFX0kyQzQgNjgKPiArI2RlZmluZSBDQ19DS0VfSTJDNSA2OQo+
ICsjZGVmaW5lIENDX0NLRV9FRFAgNzAKPiArI2RlZmluZSBDQ19DS0VfVFNJT19UUlggNzEKPiAr
I2RlZmluZSBDQ19DS0VfVFZFIDcyCj4gKyNkZWZpbmUgQ0NfQ0tFX1ZPIDczCj4gKwo+ICsjZGVm
aW5lIENDX0NMS19NQVggNzQKPiArCj4gKwo+ICsjZGVmaW5lIElDX0NLRV9DRUMwIDIKPiArI2Rl
ZmluZSBJQ19DS0VfQ0JVU1JYX1NZUyAzCj4gKyNkZWZpbmUgSUNfQ0tFX0NCVVNUWF9TWVMgNAo+
ICsjZGVmaW5lIElDX0NLRV9DQlVTX1NZUyA1Cj4gKyNkZWZpbmUgSUNfQ0tFX0NCVVNfT1NDIDYK
PiArI2RlZmluZSBJQ19DS0VfSVIgNwo+ICsjZGVmaW5lIElDX0NLRV9VUjAgOAo+ICsjZGVmaW5l
IElDX0NLRV9JMkMwIDkKPiArI2RlZmluZSBJQ19DS0VfSTJDMSAxMAo+ICsjZGVmaW5lIElDX0NL
RV9FVE5fMjUwTSAxMQo+ICsjZGVmaW5lIElDX0NLRV9FVE5fU1lTIDEyCj4gKyNkZWZpbmUgSUNf
Q0tFX1VTQl9EUkQgMTMKPiArI2RlZmluZSBJQ19DS0VfVVNCX0hPU1QgMTQKPiArI2RlZmluZSBJ
Q19DS0VfVVNCX1UzX0hPU1QgMTUKPiArI2RlZmluZSBJQ19DS0VfVVNCIDE2Cj4gKyNkZWZpbmUg
SUNfQ0xLX01BWCAxNwo+ICsKPiArI2VuZGlmIC8qIF9fRFRfQklORElOR1NfUlRLX0NMT0NLX1JU
RDE2MTlfSCAqLwo+ICsKClRyYWlsaW5nIGVtcHR5IGxpbmUuCgpSZWdhcmRzLApBbmRyZWFzCgot
LSAKU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkw
NDA5IE7DvHJuYmVyZywgR2VybWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAo
QUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
