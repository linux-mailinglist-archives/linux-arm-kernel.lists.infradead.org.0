Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4395129E31
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 07:45:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e73xDDNIuO+iRfdYutBfOClHIADiVpwffJGNgZVms4E=; b=G13nFhvz2Lgkas
	wtBmq7K1zgp7FtbGN3071P+J0fI4/yb/5TO4dsHOfEl3Va4aQdm2l4yqillSaPUD4//kUGVihZMcy
	8wykfw2lixy3x7xrB/ZS++/Sd0MWtI2178ouTW4ArXgqzE68hYJklD3GWZOy6Kvao4gwHSsgsjGyg
	I3ZWaCHzkCDP8aJlT62wx4yernLEzUfRwNX7RdAx1G+UbCxwL3sAA4rGf63H/gsSmJ1BEkUiFK2o3
	AZ4UUlB5jfYhhytX8MWGUzpGqy2/zU0IJ2Kt90eXkJB5sH54fi+ex9jrbEc1om2xCYzRIqDqeUf8p
	QTCr4EBu25UY7tC3HI5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijdwe-0007Mz-Gz; Tue, 24 Dec 2019 06:45:28 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijdwW-0007M6-5O
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 06:45:22 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1577169917; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: Date: Subject: In-Reply-To: References: Cc:
 To: From: Sender; bh=y1omERZmcgskIaqOr8CISIffUQ7b0HcT2oXAlwX2yc0=;
 b=PrMScfsT8wSdAPcdUgnpH4UXhSXhHIYDN+zxNmuqFuQnByvkauGB2lPAVfzNsz0thPScqWON
 UgzFRfag0l0KRvCnG7zgabeY5EEJ55r+jYZfamia6gEZJ247AKK96fWCD0KW5hTeBUchsALH
 vu+pLRE165l7SwaoQUl9l7AARnk=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e01b3fb.7ff5eaf6b3e8-smtp-out-n02;
 Tue, 24 Dec 2019 06:45:15 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 6F317C43383; Tue, 24 Dec 2019 06:45:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from Pillair
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: pillair)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 278B0C433A2;
 Tue, 24 Dec 2019 06:45:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 278B0C433A2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pillair@codeaurora.org
From: <pillair@codeaurora.org>
To: "'Matthias Kaehlcke'" <mka@chromium.org>
References: <1576741521-30102-1-git-send-email-pillair@codeaurora.org>
 <20191219174755.GY228856@google.com>
In-Reply-To: <20191219174755.GY228856@google.com>
Subject: RE: [PATCH v2] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
Date: Tue, 24 Dec 2019 12:15:10 +0530
Message-ID: <01fc01d5ba25$b2b12dd0$18138970$@codeaurora.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIjIEokzq12Ktb+lJAmDlq61u6HBQGTLv1bpyFwBpA=
Content-Language: en-us
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_224520_269286_AA31BA9C 
X-CRM114-Status: GOOD (  18.53  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTUl0dGhpYXMsCgo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogTWF0dGhp
YXMgS2FlaGxja2UgPG1rYUBjaHJvbWl1bS5vcmc+Cj4gU2VudDogVGh1cnNkYXksIERlY2VtYmVy
IDE5LCAyMDE5IDExOjE4IFBNCj4gVG86IFJha2VzaCBQaWxsYWkgPHBpbGxhaXJAY29kZWF1cm9y
YS5vcmc+Cj4gQ2M6IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4LQo+IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGxp
bnV4LWFybS1tc21Admdlci5rZXJuZWwub3JnCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2Ml0gYXJt
NjQ6IGR0czogcWNvbTogc2M3MTgwOiBBZGQgV0NOMzk5MCBXTEFOCj4gbW9kdWxlIGRldmljZSBu
b2RlCj4gCj4gT24gVGh1LCBEZWMgMTksIDIwMTkgYXQgMDE6MTU6MjFQTSArMDUzMCwgUmFrZXNo
IFBpbGxhaSB3cm90ZToKPiA+IEFkZCBkZXZpY2Ugbm9kZSBmb3IgdGhlIGF0aDEwayBTTk9DIHBs
YXRmb3JtIGRyaXZlciBwcm9iZQo+ID4gYW5kIGFkZCByZXNvdXJjZXMgcmVxdWlyZWQgZm9yIFdD
TjM5OTAgb24gc2M3MTgwIHNvYy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBSYWtlc2ggUGlsbGFp
IDxwaWxsYWlyQGNvZGVhdXJvcmEub3JnPgo+ID4gLS0tCj4gCj4gVGhpcyBkb2VzIG5vdCBhcHBs
eSBjbGVhbmx5IGFnYWluc3QgdGhlIGN1cnJlbnQgcWNvbS9hcm02NC1mb3ItNS42Cj4gb3IgZm9y
LW5leHQgYnJhbmNoLCBsb29rcyBsaWtlIHlvdSBuZWVkIHRvIHJlYmFzZS4KPiAKPiA+ICBhcmNo
L2FybTY0L2Jvb3QvZHRzL3Fjb20vc2M3MTgwLWlkcC5kdHMgfCAgNSArKysrKwo+ID4gIGFyY2gv
YXJtNjQvYm9vdC9kdHMvcWNvbS9zYzcxODAuZHRzaSAgICB8IDI4Cj4gKysrKysrKysrKysrKysr
KysrKysrKysrKysrKwo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMzMgaW5zZXJ0aW9ucygrKQo+ID4K
PiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2M3MTgwLWlkcC5kdHMK
PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYzcxODAtaWRwLmR0cwo+ID4gaW5kZXggMTg5
MjU0Zi4uYjJjYTE0M2YgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20v
c2M3MTgwLWlkcC5kdHMKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYzcxODAt
aWRwLmR0cwo+ID4gQEAgLTI0OCw2ICsyNDgsMTEgQEAKPiA+ICAJc3RhdHVzID0gIm9rYXkiOwo+
ID4gIH07Cj4gPgo+ID4gKyZ3aWZpIHsKPiA+ICsJc3RhdHVzID0gIm9rYXkiOwo+ID4gKwlxY29t
LG1zYV9maXhlZF9wZXJtOwo+IAo+IFdoYXQgaXMgdGhlIHN0YXR1cyBvZiB0aGUgcGF0Y2ggYWRk
aW5nIHRoaXMgZmxhZz8KClRoaXMgcGF0Y2ggaXMgY3VycmVudGx5IHVuZGVyIHJldmlldyAoaHR0
cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTIzNjUzNS8pCkl0IGhhc27igJl0IGJl
ZW4gYWNrZWQgeWV0LgoKPiAKPiA+ICt9Owo+ID4gKwo+ID4gIC8qIFBJTkNUUkwgLSBhZGRpdGlv
bnMgdG8gbm9kZXMgZGVmaW5lZCBpbiBzYzcxODAuZHRzaSAqLwo+ID4KPiA+ICAmcXVwX2kyYzJf
ZGVmYXVsdCB7Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NjNzE4
MC5kdHNpCj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2M3MTgwLmR0c2kKPiA+IGluZGV4
IDY2NmU5YjkuLmNlMmQyYTUgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fj
b20vc2M3MTgwLmR0c2kKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYzcxODAu
ZHRzaQo+ID4gQEAgLTQyLDYgKzQyLDEyIEBACj4gPiAgCQkJY29tcGF0aWJsZSA9ICJxY29tLGNt
ZC1kYiI7Cj4gPiAgCQkJbm8tbWFwOwo+ID4gIAkJfTsKPiA+ICsKPiA+ICsJCXdsYW5fZndfbWVt
OiBtZW1vcnlAOTM5MDAwMDAgewo+ID4gKwkJCWNvbXBhdGlibGUgPSAicmVtb3ZlZC1kbWEtcG9v
bCI7Cj4gPiArCQkJbm8tbWFwOwo+ID4gKwkJCXJlZyA9IDwwIDB4OTM5MDAwMDAgMCAweDIwMDAw
MD47Cj4gPiArCQl9Owo+ID4gIAl9Owo+ID4KPiA+ICAJY3B1cyB7Cj4gPiBAQCAtMTExOSw2ICsx
MTI1LDI4IEBACj4gPiAgCQkJCSNjbG9jay1jZWxscyA9IDwxPjsKPiA+ICAJCQl9Owo+ID4gIAkJ
fTsKPiA+ICsKPiA+ICsJCXdpZmk6IHdpZmlAMTg4MDAwMDAgewo+ID4gKwkJCXN0YXR1cyA9ICJk
aXNhYmxlZCI7Cj4gCj4gbml0OiB0aGUgY29udmVudGlvbiBzZWVtcyB0byBiZSB0byBhZGQgdGhp
cyBhdCB0aGUgZW5kIG9mIHRoZSBub2RlLAo+IHdoaWNoIElNTyBtYWtlcyBzZW5zZSBzaW5jZSBt
b3N0IG90aGVyIGZpZWxkcyBwcm92aWRlIG1vcmUgJ2ludGVyZXN0aW5nJwo+IGluZm9ybWF0aW9u
LgoKSSB3aWxsIHNlbmQgb3V0IGFuIHVwZGF0ZWQgcGF0Y2hzZXQsIG1vdmluZyAic3RhdHVzPWRp
c2FibGVkIiBkb3duCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
