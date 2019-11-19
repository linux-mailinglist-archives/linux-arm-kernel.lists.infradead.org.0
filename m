Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6A2102411
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 13:16:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1gi3qfxEt0SejdaxNX5Gfi0qfB5iSWtXKfUzpKuQ5S4=; b=kKi24AytqV99ft
	fA6M+QIhfTt8bRzZDw/teT7wHBoZT5s9rH1A458WCyWnMpQJQhonfmEfLyA/GIxnGMVJJ8MH8ZNei
	39r24SwlsB3c6mjdnkTinp5Btz/FyyNRx+bbZ/SVCUDCp7N00uhZRTl+GASRtn3+H+rjoB96g2Xvz
	Oj2CyLGr+se88ZV1n//mc76CqPVVCW4SGOTDdTMnFM342JRNWtpf7CTUaS9GBxQ9k2v362VmdRL4w
	k7lsa3ng15Te40C2owCfsov3Drf7mE1Neaywl1Ej1Xl7C4Gv9VyQjwo2SCCSNR3sZMHl28gxX4lnE
	kaCsqv7P+9tCzkhoYItw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX2QX-0001g0-8G; Tue, 19 Nov 2019 12:16:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX2QP-0001eu-HX
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 12:16:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 934E11FB;
 Tue, 19 Nov 2019 04:16:01 -0800 (PST)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 70F813F703;
 Tue, 19 Nov 2019 04:16:01 -0800 (PST)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
 id 15D23682956; Tue, 19 Nov 2019 12:16:00 +0000 (GMT)
Date: Tue, 19 Nov 2019 12:16:00 +0000
From: Liviu Dudau <liviu.dudau@arm.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH] arm64: dts: arm: juno: Fix UART frequency
Message-ID: <20191119121559.7grzoz2yoxhg23nf@e110455-lin.cambridge.arm.com>
References: <20191119120331.28243-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191119120331.28243-1-andre.przywara@arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_041605_624853_5CEB6C4F 
X-CRM114-Status: GOOD (  20.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBOb3YgMTksIDIwMTkgYXQgMTI6MDM6MzFQTSArMDAwMCwgQW5kcmUgUHJ6eXdhcmEg
d3JvdGU6Cj4gT2xkZXIgdmVyc2lvbnMgb2YgdGhlIEp1bm8gKlNvQyogVFJNIFsxXSByZWNvbW1l
bmRlZCB0aGF0IHRoZSBVQVJUIGNsb2NrCj4gc291cmNlIHNob3VsZCBiZSA3LjI3MzggTUh6LCB3
aGVyZWFzIHRoZSAqc3lzdGVtKiBUUk0gWzJdIHN0YXRlZCBhIG1vcmUKPiBjb3JyZWN0IHZhbHVl
IG9mIDcuMzcyOCBNSHouIFNvbWVob3cgdGhlIHdyb25nIHZhbHVlIG1hbmFnZWQgdG8gZW5kIHVw
IGluCj4gb3VyIERULgo+IERvaW5nIGEgcHJpbWUgZmFjdG9yaXNhdGlvbiwgYSBtb2R1bG8gZGl2
aWRlIGJ5IDExNTIwMCBhbmQgdHJ5aW5nCj4gdG8gYnV5IGEgNy4yNzM4IE1IeiBjcnlzdGFsIGF0
IHlvdXIgZmF2b3VyaXRlIGVsZWN0cm9uaWNzIGRlYWxlciBzdWdnZXN0Cj4gdGhhdCB0aGUgb2xk
IHZhbHVlIHdhcyBhY3R1YWxseSBhIHR5cG8uIFRoZSBhY3R1YWwgVUFSVCBjbG9jayBpcyBkcml2
ZW4KPiBieSBhIFBMTCwgY29uZmlndXJlZCB2aWEgYSBwYXJhbWV0ZXIgaW4gc29tZSBib2FyZC50
eHQgZmlsZSBpbiB0aGUKPiBmaXJtd2FyZSwgd2hpY2ggcmVhZHMgNy4zNyBNSHogKHNpYyEpLgo+
IAo+IEZpeCB0aGlzIHRvIGNvcnJlY3QgdGhlIGJhdWQgcmF0ZSBkaXZpc29yIGNhbGN1bGF0aW9u
IG9uIHRoZSBKdW5vIGJvYXJkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuZHJlIFByenl3YXJhIDxh
bmRyZS5wcnp5d2FyYUBhcm0uY29tPgo+IAo+IFsxXSBodHRwOi8vaW5mb2NlbnRlci5hcm0uY29t
L2hlbHAvdG9waWMvY29tLmFybS5kb2MuZGRpMDUxNWIuYi9EREkwNTE1Ql9iX2p1bm9fYXJtX2Rl
dmVsb3BtZW50X3BsYXRmb3JtX3NvY190cm0ucGRmCj4gWzJdIGh0dHA6Ly9pbmZvY2VudGVyLmFy
bS5jb20vaGVscC90b3BpYy9jb20uYXJtLmRvYy4xMDAxMTNfMDAwMF8wN19lbi9hcm1fdmVyc2F0
aWxlX2V4cHJlc3NfanVub19kZXZlbG9wbWVudF9wbGF0Zm9ybV8odjJtX2p1bm8pX3RlY2huaWNh
bF9yZWZlcmVuY2VfbWFudWFsXzEwMDExM18wMDAwXzA3X2VuLnBkZgoKQWNrZWQtYnk6IExpdml1
IER1ZGF1IDxsaXZpdS5kdWRhdUBhcm0uY29tPgoKQmVzdCByZWdhcmRzLApMaXZpdQoKPiAtLS0K
PiAgYXJjaC9hcm02NC9ib290L2R0cy9hcm0vanVuby1jbG9ja3MuZHRzaSB8IDQgKystLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FybS9qdW5vLWNsb2Nrcy5kdHNpIGIvYXJjaC9h
cm02NC9ib290L2R0cy9hcm0vanVuby1jbG9ja3MuZHRzaQo+IGluZGV4IGU1ZTI2NWRmYTkwMi4u
Mjg3MGI1ZWViMTk4IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYXJtL2p1bm8t
Y2xvY2tzLmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FybS9qdW5vLWNsb2Nrcy5k
dHNpCj4gQEAgLTgsMTAgKzgsMTAgQEAKPiAgICovCj4gIC8gewo+ICAJLyogU29DIGZpeGVkIGNs
b2NrcyAqLwo+IC0Jc29jX3VhcnRjbGs6IHJlZmNsazcyNzM4MDBoeiB7Cj4gKwlzb2NfdWFydGNs
azogcmVmY2xrNzM3MjgwMGh6IHsKPiAgCQljb21wYXRpYmxlID0gImZpeGVkLWNsb2NrIjsKPiAg
CQkjY2xvY2stY2VsbHMgPSA8MD47Cj4gLQkJY2xvY2stZnJlcXVlbmN5ID0gPDcyNzM4MDA+Owo+
ICsJCWNsb2NrLWZyZXF1ZW5jeSA9IDw3MzcyODAwPjsKPiAgCQljbG9jay1vdXRwdXQtbmFtZXMg
PSAianVubzp1YXJ0Y2xrIjsKPiAgCX07Cj4gIAo+IC0tIAo+IDIuMTcuMQo+IAoKLS0gCj09PT09
PT09PT09PT09PT09PT09CnwgSSB3b3VsZCBsaWtlIHRvIHwKfCBmaXggdGhlIHdvcmxkLCAgfAp8
IGJ1dCB0aGV5J3JlIG5vdCB8CnwgZ2l2aW5nIG1lIHRoZSAgIHwKIFwgc291cmNlIGNvZGUhICAv
CiAgLS0tLS0tLS0tLS0tLS0tCiAgICDCr1xfKOODhClfL8KvCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
