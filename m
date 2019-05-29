Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D15B2E6F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 23:01:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B4GKHNR8CGWY8DZYzjH9tA7kB1Q1k1d0QtEAf6QReuA=; b=n8fooaVK63lJY1EK4kM21gcmj
	+TVDEW2nfJh0lzNrSScoZLnY+kEFHJjIT05M+kB4XE0OM1EapTwhENUVSyRxP29NTfFiGIJTk20xI
	ECJvnmfU9GohKybyA0WNH79LtC8EVSaWa9ZwHMzM+gF61yia9MylFnuPLPvv+EbBfAUjt3TDeMlQV
	yufvoJ0tqnxotxMg+iXLNxuKmcBqXWlqBgoJ4kafofT8jd25OiU1SWZzlw7sFO+qOfZL2LyaSan3W
	gVgZJB57o7V2RWGCvxBKeI+NvyvFY0TXfMcRP6TslLPX6hQzIAGX9OVEMfri95IhFRs+udRiKtkvH
	eUpdCLXAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW5hd-0001r4-Hi; Wed, 29 May 2019 21:01:41 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW5hW-0001qL-7L
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 21:01:35 +0000
Received: by mail-qt1-x842.google.com with SMTP id z19so4327860qtz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 14:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding;
 bh=IqFTu1LTscqVcgDNBc6n7nyvkiZAcoSFBwufVwMCfYA=;
 b=eGarFcfCrXvNTDu5JN2TfWGZ3WiqhLAJLXCMADnnuIqD4K/GX2/VyfTo2QclV37Sl1
 uZol26oPFrEH42Dy4su9z9wTBH9a1EQnsp69Xgp9rK6f5glScC7QJfekJEmJYfgALxbl
 t4XWucS0p8oeTVOSOl/rAbZ2Qcc5ypgCdgLevdQ4w6rSSLe5NjcBluTYDrRd8NXy3AZu
 uHz6V/hKNwSKZVpCWbF6z49cCc+ArS7s8eNN5vGvkHpWskaHGVoSudALVfEAdXg537Ar
 5F6ckyV5PPqc/3FrJb4UQjEPmDGnIX/NxPbURGxXeHTkJjG8PpXVZ/DyOs/2fR6ycm3g
 pQaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=IqFTu1LTscqVcgDNBc6n7nyvkiZAcoSFBwufVwMCfYA=;
 b=C+H/ENNNFnmkTKZi4wmIvSE9mMT3hCeqz4Y82jTH5Xyo8xg95Zk7B7CQWqj+J2+T6t
 TplTVLywC/LiJ9gnLDA6++rgPtgUonYi28Y8re3z4k3n/2EwI8RTt5SoDDjnPDCLjJQj
 BAw2fdlUa0lgtLzqd3c3PPM3wGqMkZGlXAxua57nkkdF3w7VDPFhp2DkByV15BO08slY
 0luLoUHBJeIGYQc1CEA6lfFqWeSq8zp7eQKbIOSMsnv0eIMeTsinK/9kk7hVn16vpWrb
 8K2yZ5s4ZT18bYHQlI6bbDYa9+0Z2g6vgS/beUrfVT57D2JepU2oYpQaF1WkQJD06xiF
 NAlA==
X-Gm-Message-State: APjAAAWfT3i8C0hbGsIyOwJT1fN/nT3Kml/1oK8/GWNOIFrVp7cLeXzM
 vSV8QEUXnl0M/hOUIyZ2R8g=
X-Google-Smtp-Source: APXvYqy2FlZ7mbHoYCLu7hVom5grdbupVpBdf4SCgnveLJ/g5oAGABAjfqRJ4vryMr0T5KUols07dA==
X-Received: by 2002:a0c:d604:: with SMTP id c4mr74851qvj.27.1559163692354;
 Wed, 29 May 2019 14:01:32 -0700 (PDT)
Received: from ?IPv6:2001:470:1d:7b6::245? (dragonstone.xogium.me.
 [2001:470:1d:7b6::245])
 by smtp.googlemail.com with ESMTPSA id y18sm320524qtc.90.2019.05.29.14.01.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 14:01:31 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: armada-3720-espressobin: correct spi node
To: Tomasz Maciej Nowak <tmn505@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
References: <20190527111614.3694-1-tmn505@gmail.com>
From: Ellie Reeves <ellierevves@gmail.com>
Message-ID: <ee0c69a8-d4fe-7a13-f193-0703dab543d1@gmail.com>
Date: Wed, 29 May 2019 17:01:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Firefox/52.0 SeaMonkey/2.49.4
MIME-Version: 1.0
In-Reply-To: <20190527111614.3694-1-tmn505@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_140134_263343_90BA1024 
X-CRM114-Status: GOOD (  22.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ellierevves[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCnllcywgSSBhZ3JlZSBvbiB0aGlzIHBlcnNvbmFsbHkuIEkgbWVhbnQgdG8gY29ycmVjdCB0
aGlzIG15c2VsZiBvciBhdCAKbGVhc3QgdHJ5IHRvLCBidXQgSSBkaWRuJ3QgaGF2ZSB0aW1lLCBh
cyBJIHdhcyB0aGUgb25lIHRoYXQgZm91bmQgb3V0IApob3cgdGhleSBkaWQgdGhlaXIgcGFydGl0
aW9uIGxheW91dCBwcmV2aW91c2x5LCB0aGlzIHVzZWQgdG8gYmUgZ29vZCBzbyAKSSBhc2tlZCBV
d2UgS2xlaW5lLUvDtm5pZyBpZiBoZSBjb3VsZCBnZXQgdGhpcyBwYXRjaCB1cHN0cmVhbWVkLCBi
dXQgYXMgCml0IGlzIEkgbXlzZWxmIHVwZ3JhZGVkIFUtQm9vdCBhbmQgY2Fubm90IG1ha2UgdXNl
IG9mIGl0IGFueW1vcmUuClRoYW5rcwoKVG9tYXN6IE1hY2llaiBOb3dhayBhIMOpY3JpdMKgOgo+
IFRoZSBtYW51ZmFjdHVyZXIgb2YgdGhpcyBib2FyZCwgc2hpcHMgaXQgd2l0aCB2YXJpb3VzIFNQ
SSBOT1IgY2hpcHMgYW5kCj4gaW5jcmVtZW50cyBVLUJvb3QgYm9vdGxvYWRlciB2ZXJzaW9uIGFs
b25nIHRoZSB0aW1lLiBUaGVyZSBpcyBubyB3YXkgdG8KPiB0ZWxsIHdoaWNoIGlzIHBsYWNlZCBv
biB0aGUgYm9hcmQgc2luY2Ugbm8gcmV2aXNpb24gYnVtcCB0YWtlcyBwbGFjZS4KPiBUaGlzIGNy
ZWF0ZXMgdHdvIGlzc3Vlcy4KPiAKPiBUaGUgZmlyc3QsIGNvc21ldGljLiBTaW5jZSB0aGUgTk9S
IGNoaXAgbWF5IGRpZmZlciwgdGhlcmUncyBtZXNzYWdlIG9uCj4gYm9vdCBzdGF0aW5nIHRoYXQg
a2VybmVsIGV4cGVjdGVkIHcyNXEzMmR3IGFuZCBmb3VuZCBkaWZmZXJlbnQgb25lLiBUbwo+IGNv
cnJlY3QgdGhpcywgcmVtb3ZlIG9wdGlvbmFsIGRldmljZS1zcGVjaWZpYyBjb21wYXRpYmxlIHN0
cmluZy4gQmVpbmcKPiBoZXJlIGxldHMgcmVwbGFjZSBib2d1cyAic3BpLWZsYXNoIiBjb21wYXRp
YmxlIHN0cmluZyB3aXRoIHByb3BlciBvbmUuCj4gCj4gVGhlIHNlY29uZCBpcyBsaW5rZWQgdG8g
cGFydGl0aW9ucyBsYXlvdXQsIGl0IGNoYW5nZWQgYWZ0ZXIgY29tbWl0Ogo+IDgxZTcyNTEyNTIg
KCJhcm02NDogbXZlYnU6IGNvbmZpZzogbW92ZSBlbnYgdG8gdGhlIGVuZCBvZiB0aGUgNE1CIGJv
b3QKPiBkZXZpY2UiKSBpbiBNYXJ2ZWxscyBkb3duc3RyZWFtIFUtQm9vdCBmb3JrIFsxXSwgc2hp
ZnRpbmcgZW52aXJvbm1lbnQKPiBsb2NhdGlvbiB0byB0aGUgZW5kIG9mIGJvb3QgZGV2aWNlLiBT
aW5jZSB0aGUgbmV3IGJvYXJkcyB3aWxsIGhhdmUgVS1Cb290Cj4gd2l0aCB0aGlzIGNoYW5nZSwg
aXQnbGwgbGVhZCB0byBpbXByb3BlciByZXN1bHRzIHdyaXRpbmcgb3IgcmVhZGluZyBmcm9tCj4g
dGhlc2UgcGFydGl0aW9ucy4gV2UgY2FuJ3QgdGVsbCBpZiB1c2VycyB3aWxsIHVwZGF0ZSBib290
bG9hZGVyIHRvIHJlY2VudAo+IHZlcnNpb24gcHJvdmlkZWQgb24gbWFudWZhY3R1cmVyIHdlYnNp
dGUsIHNvIGxldHMgZHJvcCBwYXJ0aXRvbnMgbGF5b3V0Lgo+IAo+IDEuIGh0dHBzOi8vZ2l0aHVi
LmNvbS9NYXJ2ZWxsRW1iZWRkZWRQcm9jZXNzb3JzL3UtYm9vdC1tYXJ2ZWxsLmdpdAo+IAo+IFNp
Z25lZC1vZmYtYnk6IFRvbWFzeiBNYWNpZWogTm93YWsgPHRtbjUwNUBnbWFpbC5jb20+Cj4gLS0t
Cj4gICAuLi4vZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtZXNwcmVzc29iaW4uZHRzICAgIHwgMTgg
Ky0tLS0tLS0tLS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDE3
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZl
bGwvYXJtYWRhLTM3MjAtZXNwcmVzc29iaW4uZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2
ZWxsL2FybWFkYS0zNzIwLWVzcHJlc3NvYmluLmR0cwo+IGluZGV4IDZiZTAxOWUxODg4ZS4uZmJj
ZjAzZjg2Yzk2IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1h
ZGEtMzcyMC1lc3ByZXNzb2Jpbi5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZl
bGwvYXJtYWRhLTM3MjAtZXNwcmVzc29iaW4uZHRzCj4gQEAgLTk1LDI1ICs5NSw5IEBACj4gICAK
PiAgIAlmbGFzaEAwIHsKPiAgIAkJcmVnID0gPDA+Owo+IC0JCWNvbXBhdGlibGUgPSAid2luYm9u
ZCx3MjVxMzJkdyIsICJqZWRlYyxzcGktZmxhc2giOwo+ICsJCWNvbXBhdGlibGUgPSAiamVkZWMs
c3BpLW5vciI7Cj4gICAJCXNwaS1tYXgtZnJlcXVlbmN5ID0gPDEwNDAwMDAwMD47Cj4gICAJCW0y
NXAsZmFzdC1yZWFkOwo+IC0KPiAtCQlwYXJ0aXRpb25zIHsKPiAtCQkJY29tcGF0aWJsZSA9ICJm
aXhlZC1wYXJ0aXRpb25zIjsKPiAtCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gLQkJCSNzaXpl
LWNlbGxzID0gPDE+Owo+IC0KPiAtCQkJcGFydGl0aW9uQDAgewo+IC0JCQkJbGFiZWwgPSAidWJv
b3QiOwo+IC0JCQkJcmVnID0gPDAgMHgxODAwMDA+Owo+IC0JCQl9Owo+IC0KPiAtCQkJcGFydGl0
aW9uQDE4MDAwMCB7Cj4gLQkJCQlsYWJlbCA9ICJ1Ym9vdGVudiI7Cj4gLQkJCQlyZWcgPSA8MHgx
ODAwMDAgMHgxMDAwMD47Cj4gLQkJCX07Cj4gLQkJfTsKPiAgIAl9Owo+ICAgfTsKPiAgIAo+IAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
