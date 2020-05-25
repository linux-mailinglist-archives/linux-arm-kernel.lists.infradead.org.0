Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E741E1319
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 18:58:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=89oKSBvfUMUzXGbEkr7JIo0ZCbS0Y7s/ngo0zQg6nJM=; b=gX6REdraew7LZW
	tQ0hA4AM19qYo8pZVuolaX2B604E/OQj8f2vom5QRN5/D0a3VuTdwM2pGPJ4RQEp7SOToIUwrCqLp
	Gg2Sy/6BVyuZpHrFhgmvU2mEFScpcIYwRjcB4YX/+JadtlBtwScCjAzEH6/fBj5SJHhu8Xa8FntN0
	pmlzu9Eaog3zu4E/di4TjWldreCZffp9cq1ZMAiegawqpX4ObvbzpmgMnTjLL6dWZVrPHCpaBOt5z
	m8AC/A4seTqH4FP5V1/bOQaCxBKY56cjO4AvAiiVPIHAnG9nh+ESHRO2LKFfQrCg0DVH7QOAy5Lft
	UB7L6kqMm8sAdCZm538g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdGR5-0002NC-MZ; Mon, 25 May 2020 16:58:47 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdGQu-0002Me-8r; Mon, 25 May 2020 16:58:37 +0000
Received: by mail-pf1-x443.google.com with SMTP id v2so3940783pfv.7;
 Mon, 25 May 2020 09:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=aPMULKZDeq0BX+s9zNJj5lw/mRPJ8V62Bi00UZ2hLPQ=;
 b=JNQq63iU315TudbF0LDZbx0/ESdXGRQ+JL6Q8ov8UoVeiVwyyIzm0oBHPCwmXZzuvs
 xnf7opyTEzKm/Ipk769HDtPHEhmuPMBMiFybuXo2NewIjgQbZ2tUv2JRc43WWqYc3yZ9
 xJ3nkjKYoQFJgR7tVH4OJthhyecWG5WTE9Wkuf9TRujPbxby4YVsPnrYsnNVtlMyqeAM
 HEuiuXFX4Ezr6HR6tyzTDaNauY4TjnrvnoG/BEfOTgglxrJgVUDSP+Bc2+Xf9UcjgcAU
 vKZaPSahzBHFnvb/FO6EtDJHqAyKBvuTicmJl4bBYl1OxTuZtbXJVmPZNzBrLshZbfPN
 KopQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aPMULKZDeq0BX+s9zNJj5lw/mRPJ8V62Bi00UZ2hLPQ=;
 b=HzBsignjAzdXvvxrKhyNzk6Qma9np3Nud4lfABHR2Ct+aKwwF8+fY7j/hwiCSYo7nI
 y9BnJ56xnfzhHgQtomjWgcYcnkoLbn97/QiuiTVuJ2ivS2rspvY/Su+KG4vtChq58OHg
 rmRXDNPd+aTh51Y9yCnlTms40C26gQlrs/GgPdsfWjmcwQiH03qKtLd+AsIxlBtRs1cA
 iaN2yGwyuEHp3KzosQAnzx7/R3/B+KfGfjNfho785vonwaRCYY8OfsD3YkA+IlUrITbO
 LCNErGQ2XkQHRfz/qeM3x85ygFbdzSUY6C/rqGhM3cfuT8zGw4SUoasqvbULERrWwkNi
 qB6A==
X-Gm-Message-State: AOAM53073ZRQ+1pxfmVjhtWUF9mgFO6yyhFjLmDhdAbwiCHb4orVczLp
 jMP5rttUt6PJQ9oenrv7OCQ=
X-Google-Smtp-Source: ABdhPJyamdUHEpVQmhep6MniCPNxtcfAdKYfTqv1tOet1bkSJFZ/NVZIoCCC18ASwCtIF3W4ZjUrBg==
X-Received: by 2002:a63:5116:: with SMTP id f22mr16311686pgb.100.1590425915574; 
 Mon, 25 May 2020 09:58:35 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id e21sm11825840pga.71.2020.05.25.09.58.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 May 2020 09:58:34 -0700 (PDT)
Subject: Re: [PATCH 07/15] PCI: brcmstb: Add control of rescal reset
To: Jim Quinlan <james.quinlan@broadcom.com>,
 Philipp Zabel <pza@pengutronix.de>
References: <20200519203419.12369-1-james.quinlan@broadcom.com>
 <20200519203419.12369-8-james.quinlan@broadcom.com>
 <20200520072747.GB5213@pengutronix.de>
 <CA+-6iNxtW66QLrb5BaOOCPJwG-1fShdfZqiLSkKfi6Y669dn5w@mail.gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <c76cc2e6-fcc5-5d42-5ff1-770a99cb9b13@gmail.com>
Date: Mon, 25 May 2020 09:58:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <CA+-6iNxtW66QLrb5BaOOCPJwG-1fShdfZqiLSkKfi6Y669dn5w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_095836_347323_F2D144C2 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA1LzIxLzIwMjAgMjo0OCBQTSwgSmltIFF1aW5sYW4gd3JvdGU6Cj4gT24gV2VkLCBNYXkg
MjAsIDIwMjAgYXQgMzoyNyBBTSBQaGlsaXBwIFphYmVsIDxwemFAcGVuZ3V0cm9uaXguZGU+IHdy
b3RlOgo+Pgo+PiBIaSBKaW0sCj4+Cj4+IE9uIFR1ZSwgTWF5IDE5LCAyMDIwIGF0IDA0OjM0OjA1
UE0gLTA0MDAsIEppbSBRdWlubGFuIHdyb3RlOgo+Pj4gRnJvbTogSmltIFF1aW5sYW4gPGpxdWlu
bGFuQGJyb2FkY29tLmNvbT4KPj4+Cj4+PiBTb21lIFNUQiBjaGlwcyBoYXZlIGEgc3BlY2lhbCBw
dXJwb3NlIHJlc2V0IGNvbnRyb2xsZXIgbmFtZWQKPj4+IFJFU0NBTCAocmVzZXQgY2FsaWJyYXRp
b24pLiAgVGhpcyBjb21taXQgYWRkcyB0aGUgY29udHJvbAo+Pj4gb2YgUkVTQ0FMIGFzIHdlbGwg
YXMgdGhlIGFiaWxpdHkgdG8gc3RhcnQgYW5kIHN0b3AgaXRzCj4+PiBvcGVyYXRpb24gZm9yIFBD
SWUgSFcuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogSmltIFF1aW5sYW4gPGpxdWlubGFuQGJyb2Fk
Y29tLmNvbT4KPj4+IC0tLQo+Pj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1icmNtc3Ri
LmMgfCA4MSArKysrKysrKysrKysrKysrKysrKysrKysrKy0KPj4+ICAxIGZpbGUgY2hhbmdlZCwg
ODAgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtYnJjbXN0Yi5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxl
ci9wY2llLWJyY21zdGIuYwo+Pj4gaW5kZXggMmM0NzAxMDRiYTM4Li4wNzg3ZThmNmY3ZTUgMTAw
NjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtYnJjbXN0Yi5jCj4+PiAr
KysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtYnJjbXN0Yi5jCj4+IFsuLi5dCj4+PiBA
QCAtMTEwMCw2ICsxMTY0LDIxIEBAIHN0YXRpYyBpbnQgYnJjbV9wY2llX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+PiAgICAgICAgICAgICAgIGRldl9lcnIoJnBkZXYtPmRl
diwgImNvdWxkIG5vdCBlbmFibGUgY2xvY2tcbiIpOwo+Pj4gICAgICAgICAgICAgICByZXR1cm4g
cmV0Owo+Pj4gICAgICAgfQo+Pj4gKyAgICAgcGNpZS0+cmVzY2FsID0gZGV2bV9yZXNldF9jb250
cm9sX2dldF9zaGFyZWQoJnBkZXYtPmRldiwgInJlc2NhbCIpOwo+Pj4gKyAgICAgaWYgKElTX0VS
UihwY2llLT5yZXNjYWwpKSB7Cj4+PiArICAgICAgICAgICAgIGlmIChQVFJfRVJSKHBjaWUtPnJl
c2NhbCkgPT0gLUVQUk9CRV9ERUZFUikKPj4+ICsgICAgICAgICAgICAgICAgICAgICByZXR1cm4g
LUVQUk9CRV9ERUZFUjsKPj4+ICsgICAgICAgICAgICAgcGNpZS0+cmVzY2FsID0gTlVMTDsKPj4K
Pj4gVGhpcyBpcyBlZmZlY3RpdmVseSBhbiBvcHRpb25hbCByZXNldCBjb250cm9sLCBzbyBpdCBp
cyBiZXR0ZXIgdG8gdXNlOgo+PiDihrUKPj4gICAgICAgICBwY2llLT5yZXNjYWwgPSBkZXZtX3Jl
c2V0X2NvbnRyb2xfZ2V0X29wdGlvbmFsX3NoYXJlZCgmcGRldi0+ZGV2LAo+PiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJyZXNj
YWwiKTvihrUKPj4gICAgICAgICBpZiAoSVNfRVJSKHBjaWUtPnJlc2NhbCkpCj4+ICAgICAgICAg
ICAgICAgICByZXR1cm4gUFRSX0VSUihwY2llLT5yZXNjYWwpOwo+Pgo+Pj4gKyAgICAgfSBlbHNl
IHsKPj4+ICsgICAgICAgICAgICAgcmV0ID0gcmVzZXRfY29udHJvbF9kZWFzc2VydChwY2llLT5y
ZXNjYWwpOwo+Pj4gKyAgICAgICAgICAgICBpZiAocmV0KQo+Pj4gKyAgICAgICAgICAgICAgICAg
ICAgIGRldl9lcnIoJnBkZXYtPmRldiwgImZhaWxlZCB0byBkZWFzc2VydCAncmVzY2FsJ1xuIik7
Cj4+PiArICAgICB9Cj4+Cj4+IHJlc2V0X2NvbnRyb2xfKiBjYW4gaGFuZGxlIHJzdGMgPT0gTlVM
TCBwYXJhbWV0ZXJzIGZvciBvcHRpb25hbCByZXNldAo+PiBjb250cm9scywgc28gdGhpcyBjYW4g
YmUgZG9uZSB1bmNvbmRpdGlvbmFsbHk6Cj4+Cj4+ICAgICAgICAgcmV0ID0gcmVzZXRfY29udHJv
bF9kZWFzc2VydChwY2llLT5yZXNjYWwpO+KGtQo+PiAgICAgICAgIGlmIChyZXQp4oa1Cj4+ICAg
ICAgICAgICAgICAgICBkZXZfZXJyKCZwZGV2LT5kZXYsICJmYWlsZWQgdG8gZGVhc3NlcnQgJ3Jl
c2NhbCdcbiIpO+KGtQo+Pgo+PiBJcyByZXNjYWwgaGFuZGxlZCBieSB0aGUgcmVzZXQtYnJjbXN0
Yi1yZXNjYWwgZHJpdmVyPyBTaW5jZSB0aGF0IG9ubHkKPj4gaW1wbGVtZW50cyB0aGUgLnJlc2V0
IG9wLCBJIHdvdWxkIGV4cGVjdCByZXNldF9jb250cm9sX3Jlc2V0KCkgaGVyZS4KPiBXaGVyZSBl
eGFjdGx5PyAgInJlc2V0LmgiIHNheXMgdGhhdCAiQ2FsbGluZyByZXNldF9jb250cm9sX3Jlc2Uo
KXQgaXMKPiBub3QgYWxsb3dlZCBvbiBhIHNoYXJlZCByZXNldCBjb250cm9sLiIgc28gSSdtIG5v
dCBzdXJlIHdoeSAgeW91IHdvdWxkCj4gd2FudCBtZSB0byBpbnZva2UgaXQuCgpZZXMgdGhpcyBp
cyBoYW5kbGVkIGJ5IGRyaXZlcnMvcmVzZXQvcmVzZXQtYnJjbXN0Yi1yZXNjYWwuYyB3aGljaCBv
bmx5CmltcGxlbWVudHMgYSAucmVzZXQoKSBjYWxsYmFjaywgd2hhdCB3b3VsZCBiZSB0aGUgYXBw
cm9wcmlhdGUgQVBJIHVzYWdlCmhlcmUgZ2l2ZW4gdGhhdCB0aGlzIGlzIGEgc2hhcmVkIHJlc2V0
IGJldHdlZW4gQUhDSSBhbmQgUENJZSwgc2hvdWxkCmRyaXZlcnMvcmVzZXQvcmVzZXQtYnJjbXN0
Yi1yZXNjYWwuYyBub3QgaW1wbGVtZW50IGEgLnJlc2V0KCkgY2FsbGJhY2sKYW5kIC5hc3NlcnQo
KSBjYWxsYmFjayBpbnN0ZWFkPwoKPj4gT3RoZXJ3aXNlIHRoaXMgbG9va3MgbGlrZSBpdCdkIGJl
IG1pc3NpbmcgYSByZXNldF9jb250cm9sX2Fzc2VydCBpbgo+PiByZW1vdmUuCj4gSSBjYW4gYWRk
IHRoaXMuCj4gVGhhbmtzLAo+IEppbQo+Pgo+PiByZWdhcmRzCj4+IFBoaWxpcHAKCi0tIApGbG9y
aWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
