Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 872A11EB73E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 10:21:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6UcUTisNTC34POE0yvGkK6shs5GxZtSQ0Jn94AS33YQ=; b=cwiMyQDFooCgU9
	TFpp56vxkhYAxjl/MoGy5rgnK2dXxxkzaaRVkQRKUIWqlf70Zkg9wEWlWASg7dp8e93nVUD/7KGep
	G01V5P2HlcTkdhxPwXbExH128uWf2ZAuUya1txccxzZEY4HJdYgDuvC4xeO98aws7cPA3YleVAkxg
	XYDA/vY3PklAIGJJkxmzjM1yFXxo4Mm8T/R7lNT6qeqnaWikmJkhztMlUdJw9b7SD+ut57uMoPtIj
	kTPvyz0jNKaMETePK2RjwJbt/ilQGpMW1CMqS93GAt0q2PgZBk28VQBy3ITQQ+u1+7XctqAXXdlnP
	q1uQNBgd9BrgAm6nZMOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg2Ar-0001Zu-Lv; Tue, 02 Jun 2020 08:21:29 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg2Ak-0001ZT-As
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 08:21:23 +0000
Received: by mail-ed1-f68.google.com with SMTP id e12so4123652eds.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 01:21:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=bMqx/K8qt6ZuFGVbxPaYyyZ1KHtt21Gc7xSEXh3TFqc=;
 b=FUhqxiugheSRO+uIfokFkifG6VHNGb81Ilq3qTxtx+ARe/af1ZUvRZpk9nm+6m2RpX
 56nK2ja3EdTjGowwScirYJskJEiskPtGYYJHQrk5TTAPbNkIvWJvqu9SGTTkzq7zciQ+
 XLMFDZwfRNrmOOCG4esONrczOridz3zzA0eKWI0m/iGyB5RZFlbLGuAaMn8xrCZzXkJX
 hYRbKutpQ/lULPrKClocxtM0NEUczn06e9dqEUrU2/5o5maNr547OMuniZ5KoT62dfj3
 DeP6emM9env9Gh402GJkUXlCwFwVcnbCIYCwEGzX2wYvSkr+HyHRCZEpXBZwn1nqiWI2
 NbSQ==
X-Gm-Message-State: AOAM531qhRF5plp/f/STqOr5cr+iW4RsGOf8HFPFcOFUmvtMmR9ErDuA
 sDIhLa5EwqmlelDKOmKP6v4=
X-Google-Smtp-Source: ABdhPJz0s1Yv0craKTmc1+MBA9Wpl8/dfLu81EyEQULFcLKG2SD43M0HslPqhrDnEtV41wdc2KCt7w==
X-Received: by 2002:aa7:d283:: with SMTP id w3mr13300946edq.262.1591086081042; 
 Tue, 02 Jun 2020 01:21:21 -0700 (PDT)
Received: from kozik-lap ([194.230.155.118])
 by smtp.googlemail.com with ESMTPSA id h10sm1340569ejb.2.2020.06.02.01.21.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 02 Jun 2020 01:21:20 -0700 (PDT)
Date: Tue, 2 Jun 2020 10:21:18 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [RFC PATCH v5 2/6] interconnect: Add generic interconnect driver
 for Exynos SoCs
Message-ID: <20200602082118.GB8216@kozik-lap>
References: <20200529163200.18031-1-s.nawrocki@samsung.com>
 <CGME20200529163223eucas1p2f663280abb499b4114b2f2930b43a4e5@eucas1p2.samsung.com>
 <20200529163200.18031-3-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529163200.18031-3-s.nawrocki@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_012122_375891_15FB7CDD 
X-CRM114-Status: GOOD (  25.58  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 sw0312.kim@samsung.com, a.swigon@samsung.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, inki.dae@samsung.com, cw00.choi@samsung.com,
 myungjoo.ham@samsung.com, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMjksIDIwMjAgYXQgMDY6MzE6NTZQTSArMDIwMCwgU3lsd2VzdGVyIE5hd3Jv
Y2tpIHdyb3RlOgo+IFRoaXMgcGF0Y2ggYWRkcyBhIGdlbmVyaWMgaW50ZXJjb25uZWN0IGRyaXZl
ciBmb3IgRXh5bm9zIFNvQ3MgaW4gb3JkZXIKPiB0byBwcm92aWRlIGludGVyY29ubmVjdCBmdW5j
dGlvbmFsaXR5IGZvciBlYWNoICJzYW1zdW5nLGV4eW5vcy1idXMiCj4gY29tcGF0aWJsZSBkZXZp
Y2UuCj4gCj4gVGhlIFNvQyB0b3BvbG9neSBpcyBhIGdyYXBoIChvciBtb3JlIHNwZWNpZmljYWxs
eSwgYSB0cmVlKSBhbmQgaXRzCj4gZWRnZXMgYXJlIHNwZWNpZmllZCB1c2luZyB0aGUgJ3NhbXN1
bmcsaW50ZXJjb25uZWN0LXBhcmVudCcgaW4gdGhlCj4gRFQuIER1ZSB0byB1bnNwZWNpZmllZCBy
ZWxhdGl2ZSBwcm9iaW5nIG9yZGVyLCAtRVBST0JFX0RFRkVSIG1heSBiZQo+IHByb3BhZ2F0ZWQg
dG8gZW5zdXJlIHRoYXQgdGhlIHBhcmVudCBpcyBwcm9iZWQgYmVmb3JlIGl0cyBjaGlsZHJlbi4K
PiAKPiBFYWNoIGJ1cyBpcyBub3cgYW4gaW50ZXJjb25uZWN0IHByb3ZpZGVyIGFuZCBhbiBpbnRl
cmNvbm5lY3Qgbm9kZSBhcwo+IHdlbGwgKGNmLiBEb2N1bWVudGF0aW9uL2ludGVyY29ubmVjdC9p
bnRlcmNvbm5lY3QucnN0KSwgaS5lLiBldmVyeSBidXMKPiByZWdpc3RlcnMgaXRzZWxmIGFzIGEg
bm9kZS4gTm9kZSBJRHMgYXJlIG5vdCBoYXJkY29kZWQgYnV0IHJhdGhlcgo+IGFzc2lnbmVkIGR5
bmFtaWNhbGx5IGF0IHJ1bnRpbWUuIFRoaXMgYXBwcm9hY2ggYWxsb3dzIGZvciB1c2luZyB0aGlz
Cj4gZHJpdmVyIHdpdGggdmFyaW91cyBFeHlub3MgU29Dcy4KPiAKPiBGcmVxdWVuY2llcyByZXF1
ZXN0ZWQgdmlhIHRoZSBpbnRlcmNvbm5lY3QgQVBJIGZvciBhIGdpdmVuIG5vZGUgYXJlCj4gcHJv
cGFnYXRlZCB0byBkZXZmcmVxIHVzaW5nIGRldl9wbV9xb3NfdXBkYXRlX3JlcXVlc3QoKS4gUGxl
YXNlIG5vdGUKPiB0aGF0IGl0IGlzIG5vdCBhbiBlcnJvciB3aGVuIENPTkZJR19JTlRFUkNPTk5F
Q1QgaXMgJ24nLCBpbiB3aGljaAo+IGNhc2UgYWxsIGludGVyY29ubmVjdCBBUEkgZnVuY3Rpb25z
IGFyZSBuby1vcC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBcnR1ciDFmndpZ2/FhCA8YS5zd2lnb25A
c2Ftc3VuZy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogU3lsd2VzdGVyIE5hd3JvY2tpIDxzLm5hd3Jv
Y2tpQHNhbXN1bmcuY29tPgo+IAo+IENoYW5nZXMgZm9yIHY1Ogo+ICAtIGFkanVzdCB0byByZW5h
bWVkIGV4eW5vcyxpbnRlcmNvbm5lY3QtcGFyZW50LW5vZGUgcHJvcGVydHksCj4gIC0gdXNlIGF1
dG9tYXRpY2FsbHkgZ2VuZXJhdGVkIHBsYXRmb3JtIGRldmljZSBpZCBhcyB0aGUgaW50ZXJjb25l
Y3QKPiAgICBub2RlIGlkIGluc3RlYWQgb2YgYSBub3cgdW5hdmFpbGFibGUgZGV2ZnJlcS0+aWQg
ZmllbGQsCj4gIC0gYWRkIGljY18gcHJlZml4IHRvIHNvbWUgdmFyaWFibGVzIHRvIG1ha2UgdGhl
IGNvZGUgbW9yZSBzZWxmLWNvbW1lbnRpbmcsCj4gIC0gdXNlIGljY19ub2Rlc19yZW1vdmUoKSBp
bnN0ZWFkIG9mIGljY19ub2RlX2RlbCgpICsgaWNjX25vZGVfZGVzdHJveSgpLAo+ICAtIGFkanVz
dCB0byBleHlub3MsaW50ZXJjb25uZWN0LXBhcmVudC1ub2RlIHByb3BlcnR5IHJlbmFtZSB0bwo+
ICAgIHNhbXN1bmcsaW50ZXJjb25uZWN0LXBhcmVudCwKPiAgLSBjb252ZXJ0ZWQgdG8gYSBzZXBh
cmF0ZSBwbGF0Zm9ybSBkcml2ZXIgaW4gZHJpdmVycy9pbnRlcmNvbm5lY3QuCj4gLS0tCj4gIGRy
aXZlcnMvaW50ZXJjb25uZWN0L0tjb25maWcgICAgICAgICB8ICAgMSArCj4gIGRyaXZlcnMvaW50
ZXJjb25uZWN0L01ha2VmaWxlICAgICAgICB8ICAgMSArCj4gIGRyaXZlcnMvaW50ZXJjb25uZWN0
L2V4eW5vcy9LY29uZmlnICB8ICAgNiArKwo+ICBkcml2ZXJzL2ludGVyY29ubmVjdC9leHlub3Mv
TWFrZWZpbGUgfCAgIDQgKwo+ICBkcml2ZXJzL2ludGVyY29ubmVjdC9leHlub3MvZXh5bm9zLmMg
fCAxODUgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgNSBmaWxlcyBjaGFu
Z2VkLCAxOTcgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9pbnRl
cmNvbm5lY3QvZXh5bm9zL0tjb25maWcKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvaW50
ZXJjb25uZWN0L2V4eW5vcy9NYWtlZmlsZQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9p
bnRlcmNvbm5lY3QvZXh5bm9zL2V4eW5vcy5jCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW50
ZXJjb25uZWN0L0tjb25maWcgYi9kcml2ZXJzL2ludGVyY29ubmVjdC9LY29uZmlnCj4gaW5kZXgg
NWI3MjA0ZS4uZWNhNmVkYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2ludGVyY29ubmVjdC9LY29u
ZmlnCj4gKysrIGIvZHJpdmVycy9pbnRlcmNvbm5lY3QvS2NvbmZpZwo+IEBAIC0xMSw2ICsxMSw3
IEBAIG1lbnVjb25maWcgSU5URVJDT05ORUNUCj4gIAo+ICBpZiBJTlRFUkNPTk5FQ1QKPiAgCj4g
K3NvdXJjZSAiZHJpdmVycy9pbnRlcmNvbm5lY3QvZXh5bm9zL0tjb25maWciCj4gIHNvdXJjZSAi
ZHJpdmVycy9pbnRlcmNvbm5lY3QvaW14L0tjb25maWciCj4gIHNvdXJjZSAiZHJpdmVycy9pbnRl
cmNvbm5lY3QvcWNvbS9LY29uZmlnIgo+ICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pbnRlcmNv
bm5lY3QvTWFrZWZpbGUgYi9kcml2ZXJzL2ludGVyY29ubmVjdC9NYWtlZmlsZQo+IGluZGV4IDQ4
MjVjMjguLjJiYTFkZTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9pbnRlcmNvbm5lY3QvTWFrZWZp
bGUKPiArKysgYi9kcml2ZXJzL2ludGVyY29ubmVjdC9NYWtlZmlsZQo+IEBAIC00LDUgKzQsNiBA
QCBDRkxBR1NfY29yZS5vCQkJCTo9IC1JJChzcmMpCj4gIGljYy1jb3JlLW9ianMJCQkJOj0gY29y
ZS5vCj4gIAo+ICBvYmotJChDT05GSUdfSU5URVJDT05ORUNUKQkJKz0gaWNjLWNvcmUubwo+ICtv
YmotJChDT05GSUdfSU5URVJDT05ORUNUX0VYWU5PUykJKz0gZXh5bm9zLwo+ICBvYmotJChDT05G
SUdfSU5URVJDT05ORUNUX0lNWCkJCSs9IGlteC8KPiAgb2JqLSQoQ09ORklHX0lOVEVSQ09OTkVD
VF9RQ09NKQkJKz0gcWNvbS8KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pbnRlcmNvbm5lY3QvZXh5
bm9zL0tjb25maWcgYi9kcml2ZXJzL2ludGVyY29ubmVjdC9leHlub3MvS2NvbmZpZwo+IG5ldyBm
aWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMC4uZTUxZTUyZQo+IC0tLSAvZGV2L251bGwK
PiArKysgYi9kcml2ZXJzL2ludGVyY29ubmVjdC9leHlub3MvS2NvbmZpZwo+IEBAIC0wLDAgKzEs
NiBAQAo+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKPiArY29uZmln
IElOVEVSQ09OTkVDVF9FWFlOT1MKPiArCXRyaXN0YXRlICJFeHlub3MgZ2VuZXJpYyBpbnRlcmNv
bm5lY3QgZHJpdmVyIgo+ICsJZGVwZW5kcyBvbiBBUkNIX0VYWU5PUyB8fCBDT01QSUxFX1RFU1QK
PiArCWhlbHAKPiArCSAgR2VuZXJpYyBpbnRlcmNvbm5lY3QgZHJpdmVyIGZvciBFeHlub3MgU29D
cy4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pbnRlcmNvbm5lY3QvZXh5bm9zL01ha2VmaWxlIGIv
ZHJpdmVycy9pbnRlcmNvbm5lY3QvZXh5bm9zL01ha2VmaWxlCj4gbmV3IGZpbGUgbW9kZSAxMDA2
NDQKPiBpbmRleCAwMDAwMDAwLi5lMTlkMWRmCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZl
cnMvaW50ZXJjb25uZWN0L2V4eW5vcy9NYWtlZmlsZQo+IEBAIC0wLDAgKzEsNCBAQAo+ICsjIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gK2V4eW5vcy1pbnRlcmNvbm5lY3Qtb2Jq
cwkJOj0gZXh5bm9zLm8KPiArCj4gK29iai0kKENPTkZJR19JTlRFUkNPTk5FQ1RfRVhZTk9TKQkr
PSBleHlub3MtaW50ZXJjb25uZWN0Lm8KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pbnRlcmNvbm5l
Y3QvZXh5bm9zL2V4eW5vcy5jIGIvZHJpdmVycy9pbnRlcmNvbm5lY3QvZXh5bm9zL2V4eW5vcy5j
Cj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwLi44Mjc4MTk0Cj4gLS0tIC9k
ZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvaW50ZXJjb25uZWN0L2V4eW5vcy9leHlub3MuYwo+IEBA
IC0wLDAgKzEsMTg1IEBACj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9u
bHkKPiArLyoKPiArICogRXh5bm9zIGdlbmVyaWMgaW50ZXJjb25uZWN0IHByb3ZpZGVyIGRyaXZl
cgo+ICsgKgo+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMjAgU2Ftc3VuZyBFbGVjdHJvbmljcyBDby4s
IEx0ZC4KPiArICoKPiArICogQXV0aG9yczogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHNhbXN1
bmcuY29tPgo+ICsgKiAgICAgICAgICBTeWx3ZXN0ZXIgTmF3cm9ja2kgPHMubmF3cm9ja2lAc2Ft
c3VuZy5jb20+Cj4gKyAqLwo+ICsjaW5jbHVkZSA8bGludXgvZGV2aWNlLmg+Cj4gKyNpbmNsdWRl
IDxsaW51eC9pbnRlcmNvbm5lY3QtcHJvdmlkZXIuaD4KPiArI2luY2x1ZGUgPGxpbnV4L21vZHVs
ZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvb2YuaD4KPiArI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3Jt
X2RldmljZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvcG1fcW9zLmg+Cj4gKwo+ICsjZGVmaW5lIGti
cHNfdG9fa2h6KHgpICgoeCkgLyA4KQo+ICsKPiArc3RydWN0IGV4eW5vc19pY2NfcHJpdiB7Cj4g
KwlzdHJ1Y3QgZGV2aWNlICpkZXY7Cj4gKwo+ICsJLyogT25lIGludGVyY29ubmVjdCBub2RlIHBl
ciBwcm92aWRlciAqLwo+ICsJc3RydWN0IGljY19wcm92aWRlciBwcm92aWRlcjsKPiArCXN0cnVj
dCBpY2Nfbm9kZSAqbm9kZTsKPiArCj4gKwlzdHJ1Y3QgZGV2X3BtX3Fvc19yZXF1ZXN0IHFvc19y
ZXE7Cj4gK307Cj4gKwo+ICtzdGF0aWMgc3RydWN0IGljY19ub2RlICpleHlub3NfaWNjX2dldF9w
YXJlbnQoc3RydWN0IGRldmljZV9ub2RlICpucCkKPiArewo+ICsJc3RydWN0IG9mX3BoYW5kbGVf
YXJncyBhcmdzOwo+ICsJaW50IG51bSwgcmV0Owo+ICsKPiArCW51bSA9IG9mX2NvdW50X3BoYW5k
bGVfd2l0aF9hcmdzKG5wLCAic2Ftc3VuZyxpbnRlcmNvbm5lY3QtcGFyZW50IiwKPiArCQkJCQki
I2ludGVyY29ubmVjdC1jZWxscyIpOwo+ICsJaWYgKG51bSAhPSAxKQo+ICsJCXJldHVybiBOVUxM
OyAvKiBwYXJlbnQgbm9kZXMgYXJlIG9wdGlvbmFsICovCj4gKwo+ICsJcmV0ID0gb2ZfcGFyc2Vf
cGhhbmRsZV93aXRoX2FyZ3MobnAsICJzYW1zdW5nLGludGVyY29ubmVjdC1wYXJlbnQiLAo+ICsJ
CQkJCSIjaW50ZXJjb25uZWN0LWNlbGxzIiwgMCwgJmFyZ3MpOwo+ICsJaWYgKHJldCA8IDApCj4g
KwkJcmV0dXJuIEVSUl9QVFIocmV0KTsKPiArCj4gKwlvZl9ub2RlX3B1dChhcmdzLm5wKTsKPiAr
Cj4gKwlyZXR1cm4gb2ZfaWNjX2dldF9mcm9tX3Byb3ZpZGVyKCZhcmdzKTsKCkkgdGhpbmsgb2Zf
bm9kZV9wdXQoKSBzaG91bGQgaGFwcGVuIGFmdGVyIG9mX2ljY19nZXRfZnJvbV9wcm92aWRlcigp
LgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
