Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E7F1F5406
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 13:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WCGxkrMuZKM12x1Ph9vw10YPmXDBYR8F4MBkOK1QD/k=; b=DZPBrOqdNf5uBt+Rj9/jYtbjJ
	/zD3ltVtAUgGXqeIMMxdT/mZrOvo3U9/0LPMuOQfOJLS1/5skKh0S5c6n43OEpECw81d5dj0xf/1u
	28CIMJsxvMG/xvg40OxqW1T9Wg7zU5G0M5mNKmdAaNOdy5qbAB4azKvxkKYFxCVTXigOvxwK2h92V
	QJ0ylQfHgsXfB75k+2QFG5fNiamS11JO0M1PeuT2DTfOfwpm/7sPAJIWQQiwMoCT2YqPufxDNq3fJ
	XdurohFMVFs+HjgYDMxWccCf7ztO0mEWd7Yr0QwImvVaXSZywY6jT4rS0wegQj+OaalimtMldlmoT
	95asc5mNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jizNW-0006Fx-Fc; Wed, 10 Jun 2020 11:58:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jizNP-0006FT-I7
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 11:58:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B2A041F1;
 Wed, 10 Jun 2020 04:58:34 -0700 (PDT)
Received: from [10.57.9.128] (unknown [10.57.9.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 328663F66F;
 Wed, 10 Jun 2020 04:58:34 -0700 (PDT)
Subject: Re: arm64: el1_error when copy rawdata to a partition
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>,
 linux-arm-kernel@lists.infradead.org
References: <27a86dfd-e565-bbe0-423f-a9485d51ef43@gtsys.com.hk>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <601da1b5-4137-4a5d-0d42-0d46af1045dd@arm.com>
Date: Wed, 10 Jun 2020 12:58:32 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <27a86dfd-e565-bbe0-423f-a9485d51ef43@gtsys.com.hk>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_045839_687327_B164CE31 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2hyaXMsCgpPbiAyMDIwLTA2LTEwIDA0OjQ5LCBDaHJpcyBSdWVobCB3cm90ZToKPiBIaSwK
PiAKPiBqdXN0IGhpdCBhIHBhbmljIG9uIG15IHJrMzM5OS1vcmFuZ2VwaSB3aGlsZSBydW5uaW5n
Cj4gCj4geHogLWQgLWMgaW1hZ2UueHogfCBkZCBvZj0vZGV2L21tY2JsazJwMiBicz0xTQo+IAo+
IFRoaXMgY2FuIHJlcHJvZHVjZS4KCldoYXQncyB5b3VyIGZpcm13YXJlIHNldHVwPyBUaGVyZSdz
IGEga25vd24gc25hZyB3aGVuIG1peGluZyBtYWlubGluZSAKVS1Cb290IHdpdGggUm9ja2NoaXAn
cyBUcnVzdGVkIEZpcm13YXJlIGJpbmFyaWVzIC0gdGhlICJ0cnVzdC5pbWciIGJsb2JzIAp0ZW5k
IHRvIGluY2x1ZGUgYW4gT1AtVEVFIHBheWxvYWQgdGhhdCBjYXJ2ZXMgb3V0IHNvbWUgRFJBTSBm
b3IgdGhlIApTZWN1cmUgd29ybGQsIGFuZCB0aGUgQlNQIFUtQm9vdCBoYXMgc29tZSBoYXJkLWNv
ZGVkIGhhbmRsaW5nIGZvciB0aGF0IAp3aGVyZWFzIG1haW5saW5lIGRvZXNuJ3QuIEFzIGEgcmVz
dWx0LCBpbiB0aGF0IGNvbmZpZ3VyYXRpb24gTGludXggZW5kcyAKdXAgdW5hd2FyZSB0aGF0IHNv
bWUgb2YgdGhlIG1lbW9yeSBpdCdzIGJlZW4gdG9sZCBhYm91dCBpc24ndCBhY3R1YWxseSAKYWNj
ZXNzaWJsZSBhbmQgd2lsbCB0cmlnZ2VyIGFuIGV4dGVybmFsIGFib3J0IGlmIHRvdWNoZWQgKHdo
aWNoIGR1ZSB0byAKdGhlIG5hdHVyZSBvZiB0aGUgcGFnZSBhbGxvY2F0b3IgdHlwaWNhbGx5IG9u
bHkgc2VlbXMgdG8gaGFwcGVuIHVuZGVyIAptZW1vcnkgcHJlc3N1cmUsIGxpa2UgYSBsYXJnZSBj
b3B5IG9wZXJhdGlvbiB0aGF0IGNodXJucyBhIGxvdCBvZiBkYXRhIAp0aHJvdWdoIHRoZSBwYWdl
IGNhY2hlKS4KClJvYmluLgoKPiBBbnkgaGludHM/Cj4gUmVnYXJkcwo+IENocmlzCj4gCj4gW8Kg
IDE5OC4zNDQyMDNdIDAwMDogS2VybmVsIHBhbmljIC0gbm90IHN5bmNpbmc6IEFzeW5jaHJvbm91
cyBTRXJyb3IgCj4gSW50ZXJydXB0ZCsKPiAKPiBbwqAgMTk4LjM1MTg4Nl0gMDAwOiBDUFU6IDAg
UElEOiA0MDggQ29tbTogeHogTm90IHRhaW50ZWQgNS40LjQwLXJ0MjQgIzM1Cj4gCj4gW8KgIDE5
OC4zNTkwODBdIDAwMDogSGFyZHdhcmUgbmFtZTogT3JhbmdlIFBpIFJLMzM5OSBCb2FyZCAoRFQp
Cj4gCj4gW8KgIDE5OC4zNjUzMDNdIDAwMDogQ2FsbCB0cmFjZToKPiAKPiBbwqAgMTk4LjM2ODUw
NF0gMDAwOsKgIGR1bXBfYmFja3RyYWNlKzB4MC8weDE0MAo+IAo+IFvCoCAxOTguMzczMDc4XSAw
MDA6wqAgc2hvd19zdGFjaysweDE0LzB4MjAKPiAKPiBbwqAgMTk4LjM3NzI2MV0gMDAwOsKgIGR1
bXBfc3RhY2srMHhiYy8weDEwMAo+IAo+IFvCoCAxOTguMzgxNTQyXSAwMDA6wqAgcGFuaWMrMHgx
NjAvMHgzMjQKPiAKPiBbwqAgMTk4LjM4NTQzNV0gMDAwOsKgIG5taV9wYW5pYysweDYwLzB4OTAK
PiAKPiBbwqAgMTk4LjM4OTUyMV0gMDAwOsKgIGFybTY0X3NlcnJvcl9wYW5pYysweDc0LzB4ODAK
PiAKPiBbwqAgMTk4LjM5NDQ4MV0gMDAwOsKgIGRvX3NlcnJvcisweDdjLzB4MTMwCj4gCj4gW8Kg
IDE5OC4zOTg2NjRdIDAwMDrCoCBlbDFfZXJyb3IrMHg4NC8weGY4Cj4gCj4gW8KgIDE5OC40MDI3
NTFdIDAwMDrCoCBfX2FyY2hfY29weV9mcm9tX3VzZXIrMHgxZjQvMHgyNDAKPiAKPiBbwqAgMTk4
LjQwODE5NV0gMDAwOsKgIGNvcHlfcGFnZV9mcm9tX2l0ZXIrMHhkYy8weDJiMAo+IAo+IFvCoCAx
OTguNDEzMzUxXSAwMDA6wqAgcGlwZV93cml0ZSsweDIwNC8weDQ0OAo+IAo+IFvCoCAxOTguNDE3
NzMxXSAwMDA6wqAgbmV3X3N5bmNfd3JpdGUrMHgxMDAvMHgxODAKPiAKPiBbwqAgMTk4LjQyMjQ5
OF0gMDAwOsKgIF9fdmZzX3dyaXRlKzB4MmMvMHg0MAo+IAo+IFvCoCAxOTguNDI2NzcwXSAwMDA6
wqAgdmZzX3dyaXRlKzB4YjAvMHgxZDAKPiAKPiBbwqAgMTk4LjQzMDk1NF0gMDAwOsKgIGtzeXNf
d3JpdGUrMHg2NC8weGU4Cj4gCj4gW8KgIDE5OC40MzUxMzddIDAwMDrCoCBfX2FybTY0X3N5c193
cml0ZSsweDE4LzB4MjAKPiAKPiBbwqAgMTk4LjQ0MDAwMF0gMDAwOsKgIGVsMF9zdmNfY29tbW9u
LmNvbnN0cHJvcC4xKzB4N2MvMHhlOAo+IAo+IFvCoCAxOTguNDQ1NzM5XSAwMDA6wqAgZWwwX3N2
Y19oYW5kbGVyKzB4MjAvMHg4MAo+IAo+IFvCoCAxOTguNDUwNDA4XSAwMDA6wqAgZWwwX3N2Yysw
eDgvMHhjCj4gCj4gW8KgIDE5OC40NTQxMDddIDAwMDogU01QOiBzdG9wcGluZyBzZWNvbmRhcnkg
Q1BVcwo+IAo+IFvCoCAxOTguNDU5MDY0XSAwMDA6IEtlcm5lbCBPZmZzZXQ6IGRpc2FibGVkCj4g
Cj4gW8KgIDE5OC40NjM0MzldIDAwMDogQ1BVIGZlYXR1cmVzOiAweDAwMDIsMjAwMDYwMGMKPiAK
PiBbwqAgMTk4LjQ2ODM5OV0gMDAwOiBNZW1vcnkgTGltaXQ6IG5vbmUKPiAKPiBbwqAgMTk4LjQ3
MjI5M10gMDAwOiAtLS1bIGVuZCBLZXJuZWwgcGFuaWMgLSBub3Qgc3luY2luZzogQXN5bmNocm9u
b3VzIAo+IFNFcnJvciBJbnRlcnJ1cHQgXS0tLQo+IFvCoCAxOTguNDgxMzMwXSAwMDA6IFNFcnJv
ciBJbnRlcnJ1cHQgb24gQ1BVMCwgY29kZSAweGJmMDAwMDAwIC0tIFNFcnJvcgo+IAo+IFvCoCAx
OTguNDg4NDI2XSAwMDA6IENQVTogMCBQSUQ6IDQwOCBDb21tOiB4eiBOb3QgdGFpbnRlZCA1LjQu
NDAtcnQyNCAjMzUKPiAKPiBbwqAgMTk4LjQ5NTYyMF0gMDAwOiBIYXJkd2FyZSBuYW1lOiBPcmFu
Z2UgUGkgUkszMzk5IEJvYXJkIChEVCkKPiAKPiBbwqAgMTk4LjUwMTg0MV0gMDAwOiBwc3RhdGU6
IDYwMDAwMDg1IChuWkN2IGRhSWYgLVBBTiAtVUFPKQo+IAo+IFvCoCAxOTguNTA3Njc0XSAwMDA6
IHBjIDogZWwxX2lycSsweDc4LzB4MTgwCj4gW8KgIDE5OC41MTIwNTBdIDAwMDogbHIgOiBwYW5p
YysweDJjMC8weDMyNAo+IFvCoCAxOTguNTE2MzIyXSAwMDA6IHNwIDogZmZmZjgwMDAxMTI5Yjhh
MAo+IFvCoCAxOTguNTIwNTAzXSAwMDA6IHgyOTogZmZmZjgwMDAxMTI5YjlkMAo+IFvCoCAxOTgu
NTI0NzgyXSAwMDA6IHgyODogZmZmZjAwMDA3NTBhOWMwMAo+IFvCoCAxOTguNTI5MDYwXSAwMDA6
Cj4gW8KgIDE5OC41MzEyMDFdIDAwMDogeDI3OiAwMDAwMDAwMDAwMDAwMDAxCj4gW8KgIDE5OC41
MzU0ODBdIDAwMDogeDI2OiAwMDAwMDAwMDAwMDAwMDAxCj4gW8KgIDE5OC41Mzk3NTddIDAwMDoK
PiBbwqAgMTk4LjU0MTg5OV0gMDAwOiB4MjU6IDAwMDAwMDAwMDAwMDAwMDAKPiBbwqAgMTk4LjU0
NjE3OF0gMDAwOiB4MjQ6IGZmZmY4MDAwMTEyOWJkNjAKPiBbwqAgMTk4LjU1MDQ1Nl0gMDAwOgo+
IFvCoCAxOTguNTUyNTk3XSAwMDA6IHgyMzogMDAwMDAwMDA2MDAwMDE0NQo+IFvCoCAxOTguNTU2
ODc2XSAwMDA6IHgyMjogZmZmZjgwMDAxMDBiNTQyOAo+IFvCoCAxOTguNTYxMTU0XSAwMDA6Cj4g
W8KgIDE5OC41NjMyOTZdIDAwMDogeDIxOiBmZmZmODAwMDExMjliOWUwCj4gW8KgIDE5OC41Njc1
NzRdIDAwMDogeDIwOiAwMDAwZmZmZmZmZmZmZmZmCj4gW8KgIDE5OC41NzE4NTJdIDAwMDoKPiBb
wqAgMTk4LjU3Mzk5NF0gMDAwOiB4MTk6IGZmZmY4MDAwMTBlNDBiYTAKPiBbwqAgMTk4LjU3ODI3
Ml0gMDAwOiB4MTg6IDAwMDAwMDAwMDAwMDAwMTAKPiBbwqAgMTk4LjU4MjU1MV0gMDAwOgo+IFvC
oCAxOTguNTg0NjkyXSAwMDA6IHgxNzogMDAwMDAwMDAwMDAwMDAwMAo+IFvCoCAxOTguNTg4OTcx
XSAwMDA6IHgxNjogMDAwMDAwMDAwMDAwMDAwMAo+IFvCoCAxOTguNTkzMjQ5XSAwMDA6Cj4gW8Kg
IDE5OC41OTUzOTBdIDAwMDogeDE1OiBmZmZmZmZmZmZmZmZmZmZmCj4gW8KgIDE5OC41OTk2Njld
IDAwMDogeDE0OiAyZDJkNWQyMDc0NzA3NTcyCj4gW8KgIDE5OC42MDM5NDddIDAwMDoKPiBbwqAg
MTk4LjYwNjA4OV0gMDAwOiB4MTM6IDcyNjU3NDZlNDkyMDcyNmYKPiBbwqAgMTk4LjYxMDM2N10g
MDAwOiB4MTI6IDcyNzI0NTUzMjA3Mzc1NmYKPiBbwqAgMTk4LjYxNDY0Nl0gMDAwOgo+IFvCoCAx
OTguNjE2Nzg3XSAwMDA6IHgxMTogZmZmZjgwMDAxMGRiZjNmOAo+IFvCoCAxOTguNjIxMDY1XSAw
MDA6IHgxMDogMDAwMDAwMDAwMDAwMDAwMQo+IFvCoCAxOTguNjI1MzQzXSAwMDA6Cj4gW8KgIDE5
OC42Mjc0ODRdIDAwMDogeDkgOiAwMDAwMDAwMDAwMDczNGQwCj4gW8KgIDE5OC42MzE3NjNdIDAw
MDogeDggOiBmZmZmODAwMDEwZTQ4MjA4Cj4gW8KgIDE5OC42MzYwNDFdIDAwMDoKPiBbwqAgMTk4
LjYzODE4Ml0gMDAwOiB4NyA6IGZmZmY4MDAwMTBlNDUxNDgKPiBbwqAgMTk4LjY0MjQ2MV0gMDAw
OiB4NiA6IDAwMDAwMDAwMDAwNzM0ZDAKPiBbwqAgMTk4LjY0NjczOV0gMDAwOgo+IFvCoCAxOTgu
NjQ4ODgxXSAwMDA6IHg1IDogMDAwMDAwMDAwMDAwMzBjMAo+IFvCoCAxOTguNjUzMTU5XSAwMDA6
IHg0IDogMDAwMDAwMDAwMDAwMDAwMAo+IFvCoCAxOTguNjU3NDM3XSAwMDA6Cj4gW8KgIDE5OC42
NTk1NzldIDAwMDogeDMgOiAwMDAwMDAwMDAwMDAwMDAxCj4gW8KgIDE5OC42NjM4NTddIDAwMDog
eDIgOiAwMDAwMDAwMDAwMDAwMDAxCj4gW8KgIDE5OC42NjgxMzVdIDAwMDoKPiBbwqAgMTk4LjY3
MDI3Nl0gMDAwOiB4MSA6IGZmZmY4MDAwMTBkYTkwMDAKPiBbwqAgMTk4LjY3NDU1NV0gMDAwOiB4
MCA6IDAwMDAwMDAwMDAwMDAwZTAKPiBbwqAgMTk4LjY3ODgzM10gMDAwOgo+IAo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
