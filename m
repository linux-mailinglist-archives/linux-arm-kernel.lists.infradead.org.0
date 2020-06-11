Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 575321F5FF3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 04:21:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5y0FIJJ4Xlb7I+6fekJ6wzsh/8MQZyFFnjyy0n7cA5I=; b=J1gnpyDUyVqsP7Whu/zyymnYQ
	XlfQuiN746ew2I0I8HU77oOpzvFM7OI+eKeI5PETNDoTbwKD6zf26SjN9teAtevDHIRTK4Gh0tqLs
	VE45MLZPw2KaUV9h0Q0rgQJnBu4nsE4+2h46KTR5j7pROlkHoeiPYOqeVEGaZv8tIAIyM2YqECNdq
	wnqyenylatvcJc+xDJuZLaMfKB14N6KzdojJAij51Ar3oBLfmYKhpwOi4wQenz7l6t00cpOYacijG
	voqQ4PoV8eH73tBtazTYRaPDxazu3c0UdvY70kAcHODwGXNg6iWzjc9iBaHN16Muj7B7uYloHdYpj
	dNLz87qjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjCqN-00078D-Vr; Thu, 11 Jun 2020 02:21:27 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjCqF-00073u-Jh
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 02:21:22 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 9E24B200D8A5;
 Thu, 11 Jun 2020 10:21:08 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X90czm0ieQca; Thu, 11 Jun 2020 10:21:08 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 7A8BC2001AE7;
 Thu, 11 Jun 2020 10:21:08 +0800 (HKT)
Received: from [10.128.2.32] (unknown [124.217.189.183])
 by s01.gtsys.com.hk (Postfix) with ESMTPSA id 49AB9C01B74;
 Thu, 11 Jun 2020 10:21:08 +0800 (HKT)
Subject: Re: arm64: el1_error when copy rawdata to a partition
To: Robin Murphy <robin.murphy@arm.com>
References: <27a86dfd-e565-bbe0-423f-a9485d51ef43@gtsys.com.hk>
 <601da1b5-4137-4a5d-0d42-0d46af1045dd@arm.com>
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
Message-ID: <75d4f767-7af2-dee1-a1a8-e9467651a4e3@gtsys.com.hk>
Date: Thu, 11 Jun 2020 10:21:06 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <601da1b5-4137-4a5d-0d42-0d46af1045dd@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_192119_970873_66547757 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iaW4sCgpPbiAxMC82LzIwMjAgNzo1OCBwbSwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IEhp
IENocmlzLAo+Cj4gT24gMjAyMC0wNi0xMCAwNDo0OSwgQ2hyaXMgUnVlaGwgd3JvdGU6Cj4+IEhp
LAo+Pgo+PiBqdXN0IGhpdCBhIHBhbmljIG9uIG15IHJrMzM5OS1vcmFuZ2VwaSB3aGlsZSBydW5u
aW5nCj4+Cj4+IHh6IC1kIC1jIGltYWdlLnh6IHwgZGQgb2Y9L2Rldi9tbWNibGsycDIgYnM9MU0K
Pj4KPj4gVGhpcyBjYW4gcmVwcm9kdWNlLgo+Cj4gV2hhdCdzIHlvdXIgZmlybXdhcmUgc2V0dXA/
IFRoZXJlJ3MgYSBrbm93biBzbmFnIHdoZW4gbWl4aW5nIG1haW5saW5lIFUtQm9vdCAKPiB3aXRo
IFJvY2tjaGlwJ3MgVHJ1c3RlZCBGaXJtd2FyZSBiaW5hcmllcyAtIHRoZSAidHJ1c3QuaW1nIiBi
bG9icyB0ZW5kIHRvIAo+IGluY2x1ZGUgYW4gT1AtVEVFIHBheWxvYWQgdGhhdCBjYXJ2ZXMgb3V0
IHNvbWUgRFJBTSBmb3IgdGhlIFNlY3VyZSB3b3JsZCwgYW5kIAo+IHRoZSBCU1AgVS1Cb290IGhh
cyBzb21lIGhhcmQtY29kZWQgaGFuZGxpbmcgZm9yIHRoYXQgd2hlcmVhcyBtYWlubGluZSBkb2Vz
bid0LiAKPiBBcyBhIHJlc3VsdCwgaW4gdGhhdCBjb25maWd1cmF0aW9uIExpbnV4IGVuZHMgdXAg
dW5hd2FyZSB0aGF0IHNvbWUgb2YgdGhlIAo+IG1lbW9yeSBpdCdzIGJlZW4gdG9sZCBhYm91dCBp
c24ndCBhY3R1YWxseSBhY2Nlc3NpYmxlIGFuZCB3aWxsIHRyaWdnZXIgYW4gCj4gZXh0ZXJuYWwg
YWJvcnQgaWYgdG91Y2hlZCAod2hpY2ggZHVlIHRvIHRoZSBuYXR1cmUgb2YgdGhlIHBhZ2UgYWxs
b2NhdG9yIAo+IHR5cGljYWxseSBvbmx5IHNlZW1zIHRvIGhhcHBlbiB1bmRlciBtZW1vcnkgcHJl
c3N1cmUsIGxpa2UgYSBsYXJnZSBjb3B5IAo+IG9wZXJhdGlvbiB0aGF0IGNodXJucyBhIGxvdCBv
ZiBkYXRhIHRocm91Z2ggdGhlIHBhZ2UgY2FjaGUpLgo+Cj4gUm9iaW4uClllcywgSSdtIHVzaW5n
IHRoZSBtaW5pLWxvYWRlciBmcm9tIFJvY2tjaGlwIGFuZCB0aGUgdHJ1c3RlZC5pbWcgd2l0aCB0
aGUgCm1haW5saW5lIHVib290IDIwMjAuNAphbmQgd2hhdCB5b3UgdGVsbCBtZSBtYWtlcyBzZW5z
ZSEKCkkgdHJpZWQgdG8gdXNlIHRoZSBvcGVuLXNvdXJjZSBvbmx5IGJ1dCBmYWlsZWQgZW5kIHVw
IHdpdGg6CiJUcnkgYm9vdGluZyBmcm9tIE1NQzEiCmFuZCB0aGVuIHRpbWVvdXQgb24gdGhlIFNE
ICYgZU1NQywgSSB0aGluayB0aGUgY2xvY2sgbm90IGNvbWUgdXAKb3IgaXNuJ3QgaW5pdGlhbGl6
ZWQgaW4gdGhlIFNQTC4KClVCT09UIGNvbmZpZzoKIMKgTGlzdCBvZiBkZXZpY2UgdHJlZSBwcm9w
ZXJ0aWVzIHRvIGRyb3AgZm9yIFNQTDoKLi4uIGNsb2NrLW5hbWVzIC4uIGFzc2lnbmVkLWNsb2Nr
cyBhc3NpZ25lZC1jbG9jay1yYXRlcyBhc3NpZ25lZC1jbG9jay1wYXJlbnRzCgp3aGlsZSBJIHdy
aXRlIHRoaXMsIEkgcmVhZCBhYm91dCB0aGUgInUtYm9vdCxkbS1wcmUtcmVsb2MiIGluIHRoZSBo
ZWxwIHRleHQgLSBobW0KbGV0IG1lIGFkZCB0aGlzIHRvIHRoZSByazMzOTktb3JhbmdlcGkuZHRz
IGFuZCBnaXZlIHRoZSBwdXJlIG9wZW4tc291cmNlIHNvbHV0aW9uCm9uZSBtb3JlIHRyeS4KClRo
YW5rIHlvdSBmb3IgeW91ciBhbnN3ZXIuCkNocmlzCgoKCj4KPj4gQW55IGhpbnRzPwo+PiBSZWdh
cmRzCj4+IENocmlzCj4+Cj4+IFvCoCAxOTguMzQ0MjAzXSAwMDA6IEtlcm5lbCBwYW5pYyAtIG5v
dCBzeW5jaW5nOiBBc3luY2hyb25vdXMgU0Vycm9yIEludGVycnVwdGQrCj4+Cj4+IFvCoCAxOTgu
MzUxODg2XSAwMDA6IENQVTogMCBQSUQ6IDQwOCBDb21tOiB4eiBOb3QgdGFpbnRlZCA1LjQuNDAt
cnQyNCAjMzUKPj4KPj4gW8KgIDE5OC4zNTkwODBdIDAwMDogSGFyZHdhcmUgbmFtZTogT3Jhbmdl
IFBpIFJLMzM5OSBCb2FyZCAoRFQpCj4+Cj4+IFvCoCAxOTguMzY1MzAzXSAwMDA6IENhbGwgdHJh
Y2U6Cj4+Cj4+IFvCoCAxOTguMzY4NTA0XSAwMDA6wqAgZHVtcF9iYWNrdHJhY2UrMHgwLzB4MTQw
Cj4+Cj4+IFvCoCAxOTguMzczMDc4XSAwMDA6wqAgc2hvd19zdGFjaysweDE0LzB4MjAKPj4KPj4g
W8KgIDE5OC4zNzcyNjFdIDAwMDrCoCBkdW1wX3N0YWNrKzB4YmMvMHgxMDAKPj4KPj4gW8KgIDE5
OC4zODE1NDJdIDAwMDrCoCBwYW5pYysweDE2MC8weDMyNAo+Pgo+PiBbwqAgMTk4LjM4NTQzNV0g
MDAwOsKgIG5taV9wYW5pYysweDYwLzB4OTAKPj4KPj4gW8KgIDE5OC4zODk1MjFdIDAwMDrCoCBh
cm02NF9zZXJyb3JfcGFuaWMrMHg3NC8weDgwCj4+Cj4+IFvCoCAxOTguMzk0NDgxXSAwMDA6wqAg
ZG9fc2Vycm9yKzB4N2MvMHgxMzAKPj4KPj4gW8KgIDE5OC4zOTg2NjRdIDAwMDrCoCBlbDFfZXJy
b3IrMHg4NC8weGY4Cj4+Cj4+IFvCoCAxOTguNDAyNzUxXSAwMDA6wqAgX19hcmNoX2NvcHlfZnJv
bV91c2VyKzB4MWY0LzB4MjQwCj4+Cj4+IFvCoCAxOTguNDA4MTk1XSAwMDA6wqAgY29weV9wYWdl
X2Zyb21faXRlcisweGRjLzB4MmIwCj4+Cj4+IFvCoCAxOTguNDEzMzUxXSAwMDA6wqAgcGlwZV93
cml0ZSsweDIwNC8weDQ0OAo+Pgo+PiBbwqAgMTk4LjQxNzczMV0gMDAwOsKgIG5ld19zeW5jX3dy
aXRlKzB4MTAwLzB4MTgwCj4+Cj4+IFvCoCAxOTguNDIyNDk4XSAwMDA6wqAgX192ZnNfd3JpdGUr
MHgyYy8weDQwCj4+Cj4+IFvCoCAxOTguNDI2NzcwXSAwMDA6wqAgdmZzX3dyaXRlKzB4YjAvMHgx
ZDAKPj4KPj4gW8KgIDE5OC40MzA5NTRdIDAwMDrCoCBrc3lzX3dyaXRlKzB4NjQvMHhlOAo+Pgo+
PiBbwqAgMTk4LjQzNTEzN10gMDAwOsKgIF9fYXJtNjRfc3lzX3dyaXRlKzB4MTgvMHgyMAo+Pgo+
PiBbwqAgMTk4LjQ0MDAwMF0gMDAwOsKgIGVsMF9zdmNfY29tbW9uLmNvbnN0cHJvcC4xKzB4N2Mv
MHhlOAo+Pgo+PiBbwqAgMTk4LjQ0NTczOV0gMDAwOsKgIGVsMF9zdmNfaGFuZGxlcisweDIwLzB4
ODAKPj4KPj4gW8KgIDE5OC40NTA0MDhdIDAwMDrCoCBlbDBfc3ZjKzB4OC8weGMKPj4KPj4gW8Kg
IDE5OC40NTQxMDddIDAwMDogU01QOiBzdG9wcGluZyBzZWNvbmRhcnkgQ1BVcwo+Pgo+PiBbwqAg
MTk4LjQ1OTA2NF0gMDAwOiBLZXJuZWwgT2Zmc2V0OiBkaXNhYmxlZAo+Pgo+PiBbwqAgMTk4LjQ2
MzQzOV0gMDAwOiBDUFUgZmVhdHVyZXM6IDB4MDAwMiwyMDAwNjAwYwo+Pgo+PiBbwqAgMTk4LjQ2
ODM5OV0gMDAwOiBNZW1vcnkgTGltaXQ6IG5vbmUKPj4KPj4gW8KgIDE5OC40NzIyOTNdIDAwMDog
LS0tWyBlbmQgS2VybmVsIHBhbmljIC0gbm90IHN5bmNpbmc6IEFzeW5jaHJvbm91cyBTRXJyb3Ig
Cj4+IEludGVycnVwdCBdLS0tCj4+IFvCoCAxOTguNDgxMzMwXSAwMDA6IFNFcnJvciBJbnRlcnJ1
cHQgb24gQ1BVMCwgY29kZSAweGJmMDAwMDAwIC0tIFNFcnJvcgo+Pgo+PiBbwqAgMTk4LjQ4ODQy
Nl0gMDAwOiBDUFU6IDAgUElEOiA0MDggQ29tbTogeHogTm90IHRhaW50ZWQgNS40LjQwLXJ0MjQg
IzM1Cj4+Cj4+IFvCoCAxOTguNDk1NjIwXSAwMDA6IEhhcmR3YXJlIG5hbWU6IE9yYW5nZSBQaSBS
SzMzOTkgQm9hcmQgKERUKQo+Pgo+PiBbwqAgMTk4LjUwMTg0MV0gMDAwOiBwc3RhdGU6IDYwMDAw
MDg1IChuWkN2IGRhSWYgLVBBTiAtVUFPKQo+Pgo+PiBbwqAgMTk4LjUwNzY3NF0gMDAwOiBwYyA6
IGVsMV9pcnErMHg3OC8weDE4MAo+PiBbwqAgMTk4LjUxMjA1MF0gMDAwOiBsciA6IHBhbmljKzB4
MmMwLzB4MzI0Cj4+IFvCoCAxOTguNTE2MzIyXSAwMDA6IHNwIDogZmZmZjgwMDAxMTI5YjhhMAo+
PiBbwqAgMTk4LjUyMDUwM10gMDAwOiB4Mjk6IGZmZmY4MDAwMTEyOWI5ZDAKPj4gW8KgIDE5OC41
MjQ3ODJdIDAwMDogeDI4OiBmZmZmMDAwMDc1MGE5YzAwCj4+IFvCoCAxOTguNTI5MDYwXSAwMDA6
Cj4+IFvCoCAxOTguNTMxMjAxXSAwMDA6IHgyNzogMDAwMDAwMDAwMDAwMDAwMQo+PiBbwqAgMTk4
LjUzNTQ4MF0gMDAwOiB4MjY6IDAwMDAwMDAwMDAwMDAwMDEKPj4gW8KgIDE5OC41Mzk3NTddIDAw
MDoKPj4gW8KgIDE5OC41NDE4OTldIDAwMDogeDI1OiAwMDAwMDAwMDAwMDAwMDAwCj4+IFvCoCAx
OTguNTQ2MTc4XSAwMDA6IHgyNDogZmZmZjgwMDAxMTI5YmQ2MAo+PiBbwqAgMTk4LjU1MDQ1Nl0g
MDAwOgo+PiBbwqAgMTk4LjU1MjU5N10gMDAwOiB4MjM6IDAwMDAwMDAwNjAwMDAxNDUKPj4gW8Kg
IDE5OC41NTY4NzZdIDAwMDogeDIyOiBmZmZmODAwMDEwMGI1NDI4Cj4+IFvCoCAxOTguNTYxMTU0
XSAwMDA6Cj4+IFvCoCAxOTguNTYzMjk2XSAwMDA6IHgyMTogZmZmZjgwMDAxMTI5YjllMAo+PiBb
wqAgMTk4LjU2NzU3NF0gMDAwOiB4MjA6IDAwMDBmZmZmZmZmZmZmZmYKPj4gW8KgIDE5OC41NzE4
NTJdIDAwMDoKPj4gW8KgIDE5OC41NzM5OTRdIDAwMDogeDE5OiBmZmZmODAwMDEwZTQwYmEwCj4+
IFvCoCAxOTguNTc4MjcyXSAwMDA6IHgxODogMDAwMDAwMDAwMDAwMDAxMAo+PiBbwqAgMTk4LjU4
MjU1MV0gMDAwOgo+PiBbwqAgMTk4LjU4NDY5Ml0gMDAwOiB4MTc6IDAwMDAwMDAwMDAwMDAwMDAK
Pj4gW8KgIDE5OC41ODg5NzFdIDAwMDogeDE2OiAwMDAwMDAwMDAwMDAwMDAwCj4+IFvCoCAxOTgu
NTkzMjQ5XSAwMDA6Cj4+IFvCoCAxOTguNTk1MzkwXSAwMDA6IHgxNTogZmZmZmZmZmZmZmZmZmZm
Zgo+PiBbwqAgMTk4LjU5OTY2OV0gMDAwOiB4MTQ6IDJkMmQ1ZDIwNzQ3MDc1NzIKPj4gW8KgIDE5
OC42MDM5NDddIDAwMDoKPj4gW8KgIDE5OC42MDYwODldIDAwMDogeDEzOiA3MjY1NzQ2ZTQ5MjA3
MjZmCj4+IFvCoCAxOTguNjEwMzY3XSAwMDA6IHgxMjogNzI3MjQ1NTMyMDczNzU2Zgo+PiBbwqAg
MTk4LjYxNDY0Nl0gMDAwOgo+PiBbwqAgMTk4LjYxNjc4N10gMDAwOiB4MTE6IGZmZmY4MDAwMTBk
YmYzZjgKPj4gW8KgIDE5OC42MjEwNjVdIDAwMDogeDEwOiAwMDAwMDAwMDAwMDAwMDAxCj4+IFvC
oCAxOTguNjI1MzQzXSAwMDA6Cj4+IFvCoCAxOTguNjI3NDg0XSAwMDA6IHg5IDogMDAwMDAwMDAw
MDA3MzRkMAo+PiBbwqAgMTk4LjYzMTc2M10gMDAwOiB4OCA6IGZmZmY4MDAwMTBlNDgyMDgKPj4g
W8KgIDE5OC42MzYwNDFdIDAwMDoKPj4gW8KgIDE5OC42MzgxODJdIDAwMDogeDcgOiBmZmZmODAw
MDEwZTQ1MTQ4Cj4+IFvCoCAxOTguNjQyNDYxXSAwMDA6IHg2IDogMDAwMDAwMDAwMDA3MzRkMAo+
PiBbwqAgMTk4LjY0NjczOV0gMDAwOgo+PiBbwqAgMTk4LjY0ODg4MV0gMDAwOiB4NSA6IDAwMDAw
MDAwMDAwMDMwYzAKPj4gW8KgIDE5OC42NTMxNTldIDAwMDogeDQgOiAwMDAwMDAwMDAwMDAwMDAw
Cj4+IFvCoCAxOTguNjU3NDM3XSAwMDA6Cj4+IFvCoCAxOTguNjU5NTc5XSAwMDA6IHgzIDogMDAw
MDAwMDAwMDAwMDAwMQo+PiBbwqAgMTk4LjY2Mzg1N10gMDAwOiB4MiA6IDAwMDAwMDAwMDAwMDAw
MDEKPj4gW8KgIDE5OC42NjgxMzVdIDAwMDoKPj4gW8KgIDE5OC42NzAyNzZdIDAwMDogeDEgOiBm
ZmZmODAwMDEwZGE5MDAwCj4+IFvCoCAxOTguNjc0NTU1XSAwMDA6IHgwIDogMDAwMDAwMDAwMDAw
MDBlMAo+PiBbwqAgMTk4LjY3ODgzM10gMDAwOgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dAo+PiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCj4KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCgotLSAKR1RTWVMgTGltaXRlZCBSRklEIFRlY2hub2xvZ3kKOS9GLCBVbml0IEUsIFIw
NywgS3dhaSBTaGluZyBJbmR1c3RyaWFsIEJ1aWxkaW5nIFBoYXNlIDIsCjQyLTQ2IFRhaSBMaW4g
UGFpIFJvYWQsIEt3YWkgQ2h1bmcsIE4uVC4sIEhvbmcgS29uZwpUZWwgKDg1MikgOTA3OSA5NTIx
CgpEaXNjbGFpbWVyOiBodHRwczovL3d3dy5ndHN5cy5jb20uaGsvZW1haWwvY2xhc3NpZmllZC5o
dG1sCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
