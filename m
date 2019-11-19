Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEA1102DD3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 21:57:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DSaimwDMXvufkODs6Htcvdu52vqHkJhJ4kXcKp1Ig2g=; b=uPRbAK6wrh0fp8
	pRJ9cg5d0zcpkPNqYdVQ6aq4Dh5n5HX1ViC5xqy1jhgcPZv9ezQW/kCrIaDvKNMInWVdUOuhxFuVv
	YffqNpYNsSAcVVJp7gpAzkue+mMEnXwLIK3xa4IsBpGa8HtWKxir+08I3s8yYERN/Rk5gg9D7HNST
	FpRAgqNl/kFGeMJwtaOibUGfrskN3q0nG4MZubsoKfosA72kPwQ9vsW27b8pdOJUX9CnPWbQYTubN
	SSZ7JWoCCID7XA+kwWSZEWOh2hpRobag1hQuh67TJG1qQhPKZ+AJrDasIrE+UyVbCBfEGvGjNsUez
	3Y+2Tsk5JMy+86WcttWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXAYZ-00019d-Ui; Tue, 19 Nov 2019 20:57:03 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXAYR-00018E-34; Tue, 19 Nov 2019 20:56:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 4F97FAC84;
 Tue, 19 Nov 2019 20:56:50 +0000 (UTC)
Subject: Re: [PATCH v4 2/8] irqchip: Add Realtek RTD1295 mux driver
To: Marc Zyngier <maz@kernel.org>
References: <20191119021917.15917-1-afaerber@suse.de>
 <20191119021917.15917-3-afaerber@suse.de>
 <a34e00cac16899b53d0b6445f0e81f4c@www.loen.fr>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <e98364c5-a859-7981-8ccf-f8e5b5069379@suse.de>
Date: Tue, 19 Nov 2019 21:56:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <a34e00cac16899b53d0b6445f0e81f4c@www.loen.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_125655_277617_8D0D58EF 
X-CRM114-Status: GOOD (  13.05  )
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
Cc: James Tai <james.tai@realtek.com>,
 Aleix Roca Nonell <kernelrocks@gmail.com>,
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMTkuMTEuMTkgdW0gMTM6MDEgc2NocmllYiBNYXJjIFp5bmdpZXI6Cj4gT24gMjAxOS0xMS0x
OSAwMjoxOSwgQW5kcmVhcyBGw6RyYmVyIHdyb3RlOgo+PiArc3RhdGljIHZvaWQgcnRkMTE5NV9t
dXhfZW5hYmxlX2lycShzdHJ1Y3QgaXJxX2RhdGEgKmRhdGEpCj4+ICt7Cj4+ICvCoMKgwqAgc3Ry
dWN0IHJ0ZDExOTVfaXJxX211eF9kYXRhICptdXhfZGF0YSA9Cj4+IGlycV9kYXRhX2dldF9pcnFf
Y2hpcF9kYXRhKGRhdGEpOwo+PiArwqDCoMKgIHVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4+ICvCoMKg
wqAgdTMyIG1hc2s7Cj4+ICsKPj4gK8KgwqDCoCBtYXNrID0gbXV4X2RhdGEtPmluZm8tPmlzcl90
b19pbnRfZW5fbWFza1tkYXRhLT5od2lycV07Cj4+ICvCoMKgwqAgaWYgKCFtYXNrKQo+PiArwqDC
oMKgwqDCoMKgwqAgcmV0dXJuOwo+IAo+IEhvdyBjYW4gdGhpcyBoYXBwZW4/IFlvdSd2ZSBtYXBw
ZWQgdGhlIGludGVycnVwdCwgc28gaXQgZXhpc3RzLgo+IEkgY2FuJ3Qgc2VlIGhvdyB5b3UgY2Fu
IGRlY2lkZSB0byBmYWlsIHN1Y2ggZW5hYmxlLgoKVGhlIFtVTVNLX11JU1IgYml0cyBhbmQgdGhl
IFNDUFVfSU5UX0VOIGJpdHMgYXJlIG5vdCAoYWxsKSB0aGUgc2FtZS4KCk15IC4uLl9pc3JfdG9f
c2NwdV9pbnRfZW5bXSBhcnJheXMgaGF2ZSAzMiBlbnRyaWVzIGZvciBPKDEpIGxvb2t1cCwgYnV0
CmFyZSBzcGFyc2VseSBwb3B1bGF0ZWQuIFNvIHRoZXJlIGFyZSBjaXJjdW1zdGFuY2VzIHN1Y2gg
YXMgV0RPR19OTUkgYXMKd2VsbCBhcyByZXNlcnZlZCBiaXRzIHRoYXQgd2UgY2Fubm90IGVuYWJs
ZS4gVGhpcyBjaGVjayBzaG91bGQgYmUKaWRlbnRpY2FsIHRvIHYzOyB0aGUgZXF1aXZhbGVudCBt
YXNrIGNoZWNrIGluc2lkZSB0aGUgaW50ZXJydXB0IGhhbmRsZXIKd2FzIGV4dGVuZGVkIHdpdGgg
Im1hc2sgJiYiIHRvIGRvIHRoZSBzYW1lIGluIHRoaXMgdjQuCgpUaGUgb3RoZXIgcXVlc3Rpb24g
SSdsbCBuZWVkIHRvIGRpZyBpbnRvLCBpdCdzIGJlZW4gdHdvIHllYXJzIHNpbmNlIEkKd3JvdGUg
dGhhdCBjb2RlIC0gZmlyc3QgdmVyeSBzaW1wbGUgZ3Vlc3N3b3JrLCB0aGVuIG1vcmUgZWxhYm9y
YXRlCnF1aXJrcyBsaWtlIHRoZSBhYm92ZS4KClJlZ2FyZHMsCkFuZHJlYXMKCi0tIApTVVNFIFNv
ZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgKTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5i
ZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIKSFJCIDM2ODA5IChBRyBOw7xybmJl
cmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
