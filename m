Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BC016C197
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 14:02:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K/N1X5f5d8Y3WDrI95LwIug1NIqo10FpHyqJXRu4wxk=; b=a3VOM7nyZgZ2jxyVdlYjGRUHV
	qQ5Ni17IpLETm7CTykdpOUCmuJIj0s4kAbiafoVnOIdnacKEE+UBBy+PRwlJCKbYef6wbn77fYeNp
	47zW6ICSlFPEqM8JgCw9HfXvuJKpP6Tb+93FpxzB6j8JbrO1Sv6EnnbyG0+rV5bHypd6kRMFWqK/O
	AjarAbSK1IyGWmd5WmN2df4V4oHwMZ7GE4SbCGXH/DGtFHleaJSvNhUPXU84QF/DiU1Dr542E6pAI
	UC2OyY3myAHrEnGPoIwtnIVjk0fcTkfEX0VtNoVADlmTOXBOE+ZpFW+ZpCvnatfVXKVatfO7Fk67j
	nhJIjtgUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Zqp-0002O8-Ub; Tue, 25 Feb 2020 13:02:15 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Zqd-0002IW-2m
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 13:02:04 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01PD1pN4052659;
 Tue, 25 Feb 2020 07:01:51 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582635711;
 bh=oXx7cuB8ADrmQ3vOUgyN9ou7IhxwTR3y4ztgLQsmi6c=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ByaN7ylnnHP1DrKCw/8xkcyNg8CLYK2IQXegD0Klr8ETbKC/0oU1LFFJX/9mGFS3J
 Q5rQVBPXdvAcP5/RWgJTkIm/J4D0StamwNuvv6JfSWV/5G0qrZSeXfUuO3pHk30T/8
 ZsbbhuU1ABVMArXDiDH//ZijNO9MIHEgTEpkFhZg=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01PD1pB2107735
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 25 Feb 2020 07:01:51 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 25
 Feb 2020 07:01:50 -0600
Received: from localhost.localdomain (10.64.41.19) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 25 Feb 2020 07:01:50 -0600
Received: from [10.250.65.13] (ileax41-snat.itg.ti.com [10.172.224.153])
 by localhost.localdomain (8.15.2/8.15.2) with ESMTP id 01PD1o78075900;
 Tue, 25 Feb 2020 07:01:50 -0600
Subject: Re: [PATCH 3/4] ARM: dts: axp813: Add charger LED
To: Ondrej Jirman <megous@megous.com>, <linux-sunxi@googlegroups.com>, Jacek
 Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>, Rob
 Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Maxime Ripard
 <mripard@kernel.org>
References: <20200223131435.681620-1-megous@megous.com>
 <20200223131435.681620-4-megous@megous.com>
From: Dan Murphy <dmurphy@ti.com>
Message-ID: <3d7c078b-362d-6eab-0915-8079768a729e@ti.com>
Date: Tue, 25 Feb 2020 06:56:39 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200223131435.681620-4-megous@megous.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_050203_212547_ECD95020 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Lee Jones <lee.jones@linaro.org>, linux-leds@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T25kcmVqCgpPbiAyLzIzLzIwIDc6MTQgQU0sIE9uZHJlaiBKaXJtYW4gd3JvdGU6Cj4gUE1JQyBz
dXBwb3J0cyBjaGFyZ2luZyBzdGF0dXMgaW5kaWNhdGlvbiB2aWEgYSBMRUQuIEFkZCBzdXBwb3J0
Cj4gZm9yIGl0Lgo+Cj4gU2lnbmVkLW9mZi1ieTogT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291
cy5jb20+Cj4gLS0tCj4gICBhcmNoL2FybS9ib290L2R0cy9heHA4MXguZHRzaSB8IDUgKysrKysK
PiAgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9hcmNo
L2FybS9ib290L2R0cy9heHA4MXguZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2F4cDgxeC5kdHNp
Cj4gaW5kZXggMWRmZWVjZWFiZjRjMy4uMDBiMDkyZjk0NDMzZCAxMDA2NDQKPiAtLS0gYS9hcmNo
L2FybS9ib290L2R0cy9heHA4MXguZHRzaQo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2F4cDgx
eC5kdHNpCj4gQEAgLTE3NSw0ICsxNzUsOSBAQCByZWdfZHJpdmV2YnVzOiBkcml2ZXZidXMgewo+
ICAgCXVzYl9wb3dlcl9zdXBwbHk6IHVzYi1wb3dlci1zdXBwbHkgewo+ICAgCQljb21wYXRpYmxl
ID0gIngtcG93ZXJzLGF4cDgxMy11c2ItcG93ZXItc3VwcGx5IjsKPiAgIAl9Owo+ICsKPiArCWNo
YXJnZXJfbGVkOiBjaGFyZ2VyLWxlZCB7Cj4gKwkJY29tcGF0aWJsZSA9ICJ4LXBvd2VycyxheHA4
MTMtY2hhcmdlci1sZWQiOwo+ICsJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CgpBcyBJIGNvbW1lbnRl
ZCBiZWZvcmUgeW91IG5lZWQgdG8gYWRkIGZ1bmN0aW9uIGFuZCBjb2xvciB0byB0aGlzIG5vZGUg
CmFuZCByZWFkIGl0IGZyb20gdGhlIGRyaXZlci7CoCBPciB5b3UgY2FuIGFkZCB0aGVtIHRvIHRo
ZSBvdmVyIHJpZGUgZm9yIAp0aGUgc3BlY2lmaWMgdXNlIGNhc2UuCgpBbm90aGVyIHF1ZXN0aW9u
IGlzIGlzIHRoaXMgTEVEIG9ubHkgdXNlZCBmb3IgY2hhcmdpbmcgb3IgY2FuIGl0IGJlIAptdWx0
aSBwdXJwb3NlPwoKRGFuCgoKPiArCX07Cj4gICB9OwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
