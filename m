Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B853DE2148
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 19:03:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8kxHNyBywn2c+vGTwqZ/IW4vRtx3/MDQblpDq1ePOc=; b=qdRVBb0/9yX8Ap
	1WzMOJ/6Y7iXYwLpMKrVVmGe1J+eWj3VPd48SlZBSyOPyOvIA3oEaQt46EIAxDri51hUCP7rCJUnV
	d7DzMAtMNS2ow5BCt0wgm9EjLAOU9J2zUjqWN2B/51Y3U9sWmPnzToaS8v3PIZ8m7douC8yvAIYqm
	6zt2irDEwSIOmY7SCflWfy0LKmhT0joQVHx/ZoiX1WJrVB8mappckDmqArtu6LaagmJTKP1icfiWE
	5K4+qYLXuaNav+TT5H8hV2tOneqVwXe8ROV/wTSSLl4E2iGSQFvQJgS12oWjBPbY54Tya5gdKP9Ff
	2wOy5Iut9RE+wzWKBnNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNK2P-00060o-Kt; Wed, 23 Oct 2019 17:03:09 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNK2F-00060O-Ig
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 17:03:01 +0000
Received: by mail-ed1-x544.google.com with SMTP id y8so4048978edu.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 10:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lfyYJCpihwCnIIE7ruVuey3YIuD1cBFEnblxL3Pf/GI=;
 b=MVVxCOX9LRMQ36a3zNVyY+afvH1vtKyY26cuhVBsZxf2IIbcJVSLjlQSbIN93RUx87
 5qKNEkqJ5jiuKu2gkZO7WelpuY14JiMDCgIsMHIauPcipDsQAcVrr3FnkTlWeVefe+fT
 qZsWYa4FBlP3s3WjQVeMbCTL0P0Tr8p3CuykPaplANBe+9/enfRdK5o7aSD6iNgfuTYp
 vY+F7iOG8ig/11r6XtjeNvobRL5SOtWqVMNBXClHzFga5wb8yY0FKPH46iGe6rJCe0N7
 Vr9rz0HzA4WOZa7Yj5K04ixXEldjtZOkx4eLWQkM+mGzAftjOY4y16i3aQDfiKOJ1XNy
 K+Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=lfyYJCpihwCnIIE7ruVuey3YIuD1cBFEnblxL3Pf/GI=;
 b=nrJvRNIUgYu3upi5vYEyQBY7gF886VvuAxfxAflsRRf3LO5KcqwOAtUDi8qrM5yjiH
 /nzCMoGpJ/GbFm2Q0b4pI3hQ1e5ENA8ieftRxHEfdAsbWXfRLzacsIybXzkDntQRPjsJ
 O1blrfM7Z3LBrcPKMQDrZi3LKXSx5qe/rWYdKl4v8Aio8G2/opY4WuB6qpztHu2y38Rj
 33n7+IuPXtU7A/Hioq7urmxASJ9zY9RWRmBc6gorogo2j9fRsw9o35mQNBDK6bbpA0bP
 OCD+inYVD5o1dojoj4SvzfZF6o9Qa4nSatsvgLUqCHCy+qcF17ASzFa9nRjKfltoD/T5
 lZKQ==
X-Gm-Message-State: APjAAAXKQe3QV1O1nT6xcwE822YqZ98YdtxXcskIvQOLGvZSkoTVa9be
 8XXECbKbpaGqO32INps1mF6cWk6k
X-Google-Smtp-Source: APXvYqzymVs1QDqA/1YTAp6vInBkMYtF8XzZI8GIvyIFLORM5ghcENbZoOm+z/Kuq5t0R4oLkuwDLA==
X-Received: by 2002:a17:906:6a15:: with SMTP id
 o21mr33246404ejr.79.1571850177503; 
 Wed, 23 Oct 2019 10:02:57 -0700 (PDT)
Received: from [10.67.50.53] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id sb3sm62677ejb.64.2019.10.23.10.02.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 23 Oct 2019 10:02:56 -0700 (PDT)
Subject: Re: [PATCH RFC 2/2] irqchip/gic: Allow the use of SGI interrupts
To: Marc Zyngier <maz@kernel.org>
References: <20191023000547.7831-1-f.fainelli@gmail.com>
 <20191023000547.7831-3-f.fainelli@gmail.com>
 <112a725164b7fe321f27357fd4cd772f@www.loen.fr>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <fdb77138-3df8-ef51-6519-e630b6228eb0@gmail.com>
Date: Wed, 23 Oct 2019 10:02:48 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <112a725164b7fe321f27357fd4cd772f@www.loen.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_100259_644568_1F72BC48 
X-CRM114-Status: GOOD (  28.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Thanu Rangarajan <thanu.rangarajan@arm.com>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Jim Quinlan <james.quinlan@broadcom.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gbWFyYywKCk9uIDEwLzIzLzE5IDY6MjIgQU0sIE1hcmMgWnluZ2llciB3cm90ZToKPiBI
aSBGbG9yaWFuLAo+IAo+IE5lZWRsZXNzIHRvIHNheSwgSSBtb3N0bHkgaGF2ZSBxdWVzdGlvbnMu
Li4KPiAKPiBPbiAyMDE5LTEwLTIzIDAxOjA1LCBGbG9yaWFuIEZhaW5lbGxpIHdyb3RlOgo+PiBT
R0kgaW50ZXJydXB0cyBhcmUgYSBjb252ZW5pZW50IHdheSBmb3IgdHJ1c3RlZCBmaXJtd2FyZSB0
byB0YXJnZXQgYQo+PiBzcGVjaWZpYyBzZXQgb2YgQ1BVcy4gVXBkYXRlIHRoZSBBUk0gR0lDIGNv
ZGUgdG8gYWxsb3cgdGhlIHRyYW5zbGF0aW9uCj4+IGFuZCBtYXBwaW5nIG9mIFNHSSBpbnRlcnJ1
cHRzLgo+Pgo+PiBTaW5jZSB0aGUga2VybmVsIGFscmVhZHkgdXNlcyBTR0lzIGZvciB2YXJpb3Vz
IGludGVyLXByb2Nlc3NvciBpbnRlcnJ1cHQKPj4gYWN0aXZpdGllcywgd2Ugc3BlY2lmaWNhbGx5
IG1ha2Ugc3VyZSB0aGF0IHdlIGRvIG5vdCBsZXQgdXNlcnMgb2YgdGhlCj4+IElSUSBBUEkgdG8g
ZXZlbiB0cnkgdG8gbWFwIHRob3NlLgo+Pgo+PiBJbnRlcm5hbCBJUElzIHJlbWFpbiBkaXNwYXRj
aGVkIHRocm91Z2ggaGFuZGxlX0lQSSgpIHdoaWxlIHB1YmxpYyBTR0lzCj4+IGdldCBwcm9tb3Rl
ZCB0byBhIG5vcm1hbCBpbnRlcnJ1cHQgZmxvdyBtYW5hZ2VtZW50Lgo+Pgo+PiBTaWduZWQtb2Zm
LWJ5OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KPj4gLS0tCj4+IMKg
ZHJpdmVycy9pcnFjaGlwL2lycS1naWMuYyB8IDQxICsrKysrKysrKysrKysrKysrKysrKysrKysr
Ky0tLS0tLS0tLS0tLQo+PiDCoDEgZmlsZSBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspLCAxMiBk
ZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaXJxY2hpcC9pcnEtZ2ljLmMg
Yi9kcml2ZXJzL2lycWNoaXAvaXJxLWdpYy5jCj4+IGluZGV4IDMwYWI2MjMzNDNkMy4uZGNmZGJh
YWNkZDY0IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2lycWNoaXAvaXJxLWdpYy5jCj4+ICsrKyBi
L2RyaXZlcnMvaXJxY2hpcC9pcnEtZ2ljLmMKPj4gQEAgLTM4NSw3ICszODUsMTAgQEAgc3RhdGlj
IHZvaWQgX19leGNlcHRpb25faXJxX2VudHJ5Cj4+IGdpY19oYW5kbGVfaXJxKHN0cnVjdCBwdF9y
ZWdzICpyZWdzKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIFBhaXJzIHdpdGggdGhl
IHdyaXRlIGJhcnJpZXIgaW4gZ2ljX3JhaXNlX3NvZnRpcnEKPj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgKi8KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNtcF9ybWIoKTsKPj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaGFuZGxlX0lQSShpcnFuciwgcmVncyk7Cj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGlmIChpcnFuciA8IE5SX0lQSSkKPj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBoYW5kbGVfSVBJKGlycW5yLCByZWdzKTsKPj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgZWxzZQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhhbmRsZV9k
b21haW5faXJxKGdpYy0+ZG9tYWluLCBpcnFuciwgcmVncyk7Cj4gCj4gRG91YmxlIEVPSSwgVU5Q
UkVESUNUQUJMRSB0ZXJyaXRvcnksIHlvdXIgc3RhdGUgbWFjaGluZSBpcyBub3cgZGVhZC4KCk9o
IHllcywgdGhlIGludGVycnVwdCBmbG93IG5vdyBhbHNvIGdvZXMgdGhyb3VnaCAtPmlycV9lb2kg
KHRoYXQncyB0aGUKd2hvbGUgcG9pbnQpLCBtZWguCgo+IAo+PiDCoCNlbmRpZgo+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgY29udGludWU7Cj4+IMKgwqDCoMKgwqDCoMKgwqAgfQo+PiBAQCAt
MTAwNSwyMCArMTAwOCwzNCBAQCBzdGF0aWMgaW50IGdpY19pcnFfZG9tYWluX3RyYW5zbGF0ZShz
dHJ1Y3QKPj4gaXJxX2RvbWFpbiAqZCwKPj4gwqDCoMKgwqDCoMKgwqDCoCBpZiAoZndzcGVjLT5w
YXJhbV9jb3VudCA8IDMpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTlZB
TDsKPj4KPj4gLcKgwqDCoMKgwqDCoMKgIC8qIEdldCB0aGUgaW50ZXJydXB0IG51bWJlciBhbmQg
YWRkIDE2IHRvIHNraXAgb3ZlciBTR0lzICovCj4+IC3CoMKgwqDCoMKgwqDCoCAqaHdpcnEgPSBm
d3NwZWMtPnBhcmFtWzFdICsgMTY7Cj4+IC0KPj4gLcKgwqDCoMKgwqDCoMKgIC8qCj4+IC3CoMKg
wqDCoMKgwqDCoMKgICogRm9yIFNQSXMsIHdlIG5lZWQgdG8gYWRkIDE2IG1vcmUgdG8gZ2V0IHRo
ZSBHSUMgaXJxCj4+IC3CoMKgwqDCoMKgwqDCoMKgICogSUQgbnVtYmVyCj4+IC3CoMKgwqDCoMKg
wqDCoMKgICovCj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAoIWZ3c3BlYy0+cGFyYW1bMF0pCj4+ICvC
oMKgwqDCoMKgwqDCoCAqaHdpcnEgPSBmd3NwZWMtPnBhcmFtWzFdOwo+PiArwqDCoMKgwqDCoMKg
wqAgc3dpdGNoIChmd3NwZWMtPnBhcmFtWzBdKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBjYXNlIDA6
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgKiBGb3IgU1BJcywgd2UgbmVlZCB0byBhZGQgMTYgbW9yZSB0byBnZXQgdGhlIEdJQyBpcnEK
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIElEIG51bWJlcgo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICovCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICpod2lycSArPSAxNjsK
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogZmFsbCB0aHJvdWdoICovCj4+ICvCoMKgwqDC
oMKgwqDCoCBjYXNlIDE6Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIEFkZCAxNiB0byBz
a2lwIG92ZXIgU0dJcyAqLwo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKmh3aXJxICs9IDE2
Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqdHlwZSA9IGZ3c3BlYy0+cGFyYW1bMl0gJiBJ
UlFfVFlQRV9TRU5TRV9NQVNLOwo+Pgo+PiAtwqDCoMKgwqDCoMKgwqAgKnR5cGUgPSBmd3NwZWMt
PnBhcmFtWzJdICYgSVJRX1RZUEVfU0VOU0VfTUFTSzsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgLyogTWFrZSBpdCBjbGVhciB0aGF0IGJyb2tlbiBEVHMgYXJlLi4uIGJyb2tlbiAqLwo+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBXQVJOX09OKCp0eXBlID09IElSUV9UWVBFX05PTkUpOwo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBicmVhazsKPj4gK8KgwqDCoMKgwqDCoMKgIGNhc2Ug
MjoKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogUmVmdXNlIHRvIG1hcCBpbnRlcm5hbCBJ
UElzICovCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmICgqaHdpcnEgPCBOUl9JUEkpCj4g
Cj4gU28gZGVwZW5kaW5nIG9uIGhvdyB0aGUga2VybmVsIHVzZXMgU0dJcywgeW91IGNhbiBvciBj
YW5ub3QgdXNlIHRoZXNlIFNHSXMuCj4gVGhhdCBsb29rcyBsaWtlIGEgZ29vZCB3YXkgdG8gY29y
bmVyIG91cnNlbHZlcyBpbnRvIG5vdCBiZWluZyB0byBjaGFuZ2UKPiBtdWNoLgoKYXJjaC9hcm0v
a2VybmVsL3NtcC5jIGhhcyBhIGZvcndhcmQgbG9va2luZyBzdGF0ZW1lbnQgYWJvdXQgU0dJIG51
bWJlcmluZzoKCiAgICAgICAgLyoKICAgICAgICAgKiBTR0k4LTE1IGNhbiBiZSByZXNlcnZlZCBi
eSBzZWN1cmUgZmlybXdhcmUsIGFuZCB0aHVzIG1heQogICAgICAgICAqIG5vdCBiZSB1c2FibGUg
YnkgdGhlIGtlcm5lbC4gUGxlYXNlIGtlZXAgdGhlIGFib3ZlIGxpbWl0ZWQKICAgICAgICAgKiB0
byBhdCBtb3N0IDggZW50cmllcy4KICAgICAgICAgKi8KCmlzIHRoaXMgc29tZXRoaW5nIHRoYXQg
Y2FuIGJlIHVzZWQgYXMgYW4gdW5pdmVyc2FsIGFuZCB1bmJyZWFrYWJsZSBydWxlCmZvciB0aGUg
QVJNNjQga2VybmVsIGFzIHdlbGwgaW4gb3JkZXIgdG8gZW5zdXJlIFNHSXMgOC0xNSBjYW4gYmUg
dXNhYmxlCnRocm91Z2ggdGhlIElSUSBBUEkgb3IgaXMgdGhpcyBzaW1wbHkgbm90IGEgZ3VhcmFu
dGVlIGF0IGFsbD8KCj4gCj4gQWxzbywgZG8geW91IGV4cGVjdCB0aGlzIHRvIHdvcmsgZm9yIGJv
dGggR3JvdXAtMCBhbmQgR3JvdXAtMSBpbnRlcnJ1cHRzCj4gKHNpbmNlIHlvdSBpbXBseSB0aGF0
IHRoaXMgd29ya3MgYXMgYSBjb21tdW5pY2F0aW9uIG1lZGl1bSB3aXRoIHRoZSBzZWN1cmUKPiBz
aWRlKT8gR2l2ZW4gdGhhdCB0aGUga2VybmVsIHJ1bm5pbmcgaW4gTlMgaGFzIG5vIHdheSB0byBl
bmFibGUvZGlzYWJsZQo+IEdyb3VwLTAgaW50ZXJydXB0cywgdGhpcyBsb29rcyB0ZXJtaW5hbGx5
IGZsYXdlZC4gT3IgaXMgdGhhdCBHcm91cC0xIG9ubHk/CgpUaGF0IHdvdWxkIGJlIEdyb3VwLTEg
aW50ZXJydXB0cyBvbmx5LCBhcmUgeW91IHN1Z2dlc3RpbmcgdGhlcmUgaXMgYW4KYWRkaXRpb25h
bCBjaGVjayBiZWluZyBkb25lIHRoYXQgc3VjaCBTR0lzIGFyZSBhY3R1YWxseSBwYXJ0IG9mIEdy
b3VwLTE/Cgo+IAo+IEhvdyBkbyB3ZSBkZXNjcmliZSB3aGljaCBTR0lzIGFyZSBndWFyYW50ZWVk
IHRvIGJlIGF2YWlsYWJsZSB0byBMaW51eD8KCkluIG91ciBjYXNlLCB0aGUgRGV2aWNlIFRyZWUg
bWFpbGJveCBub2RlIGdldHMgcG9wdWxhdGVkIGl0cyBpbnRlcnJ1cHRzCnByb3BlcnR5IHdpdGgg
dGhlIFNHSSBudW1iZXIocyksIGFuZCB0aGF0IHNhbWUgbnVtYmVyIGlzIGFsc28gcGFzc2VkIGFz
CmEgY29uZmlndXJhdGlvbiBwYXJhbWV0ZXIgdG8gdGhlIHRydXN0ZWQgZmlybXdhcmUuIE9yIGFy
ZSB5b3UgZWNob2luZwpiYWNrIHRvIHlvdXIgZWFybGllciBjb21tZW50IGFib3V0IHRoZSBmYWN0
IHRoYXQgaWYgdGhlIGtlcm5lbCBjaGFuZ2VzCml0cyBvd24gZGVmaW5pdGlvbiBvZiBOUl9JUEkg
dGhlbiB3ZSBzdWRkZW5seSBzdGFydCBicmVha2luZyBJUlEgQVBJCnVzZXMgb2YgU0dJcyBpbiBh
IGNlcnRhaW4gcmFuZ2U/Cgo+IAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJl
dHVybiAtRVBFUk07Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKnR5cGUgPSBJUlFf
VFlQRV9OT05FOwo+IAo+IE9yIG5vdC4gU0dJIGFyZSBlZGdlIHRyaWdnZXJlZCwgYnkgZGVmaW5p
dGlvbi4KPiAKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYnJlYWs7Cj4+ICvCoMKgwqDCoMKg
wqDCoCBkZWZhdWx0Ogo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBicmVhazsKPj4gK8KgwqDC
oMKgwqDCoMKgIH0KPj4KPj4gLcKgwqDCoMKgwqDCoMKgIC8qIE1ha2UgaXQgY2xlYXIgdGhhdCBi
cm9rZW4gRFRzIGFyZS4uLiBicm9rZW4gKi8KPj4gLcKgwqDCoMKgwqDCoMKgIFdBUk5fT04oKnR5
cGUgPT0gSVJRX1RZUEVfTk9ORSk7Cj4gCj4gUmVhbGx5PwoKR2l2ZW4gdGhlIGNvbW1lbnQgaW4g
Z2ljX3NldF90eXBlKCkgYWJvdXQgU0dJcywgdGhlIFdBUk5fT04oKSB3YXMgbW92ZWQKYWJvdmUg
dG8gY29udGludWUgY2hlY2tpbmcgZm9yIEdJQ19TUEkgYW5kIEdJQ19QUEksIGJ1dCB3ZSBzaG91
bGQKZXh0cmFjdCB0aGUgdHlwZSBmcm9tIHRoZSBEZXZpYyBlVHJlZSBhbmQgb25seSBwZXJtaXQg
YW4gZWRnZSBtYXNrLgotLSAKRmxvcmlhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
