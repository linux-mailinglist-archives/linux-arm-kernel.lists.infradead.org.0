Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FDC1F9042
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 09:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0veGj4t/YuIEPqGPOPKCJzPeYEz/Cl9JP7li9dFx00g=; b=pp0/uwe9yRHriY
	gFZIA2RTlk7QCtULlU8gAixHwhj3OUSPKbRyt/nr8fu00kmuHszTvE9/aaRnvXVXGdm2kMBM21vX1
	cMcSASVpukqK/aYCQcPz0FuoCksDE0te04ulUraGzcc/u72JJm3Xtid363JfbLpH3BuscTLCOCINn
	az9sbl4NgbBlALpd7tfboLSjxyTddZ9xyYqBNX9v2nVrDzrB/RC88Sv1Cc0zpUuKg9NbipCaSAc5v
	93YTekWuUfcOI/2LNakV4qI6kGPFjBk8O4UF5fYHajGA+MDsZaNhmQukwrKTJKzW9CrJw0sG4vET/
	NwRfm961WMpax/XWysww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkjqV-00068d-0p; Mon, 15 Jun 2020 07:47:55 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkjpq-0005aW-Ht
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 07:47:16 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05F7lBsP016324;
 Mon, 15 Jun 2020 02:47:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592207231;
 bh=Ef11p/NIErwu7Zja6hoZoc9WK3zg6NXxXuzepAV2x8A=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Tk6mZtCdP83acUfOMQ/xepnJquIYfZv+DOtBInH3MkiGFLl+4J9WLm02ppSs76to8
 Oan6/9fALxXd9fblPXWVekNBsmFrEeZpQLzsxnS8GYQIVzGA2m1TF0b6TSKKWZpu9u
 MnQOpCRpMEm2kvIdwebuv7NJy2/A8Id8Zx/RIVhY=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05F7lBa5107325
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 15 Jun 2020 02:47:11 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 15
 Jun 2020 02:47:10 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 15 Jun 2020 02:47:10 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05F7l8eF119410;
 Mon, 15 Jun 2020 02:47:09 -0500
Subject: Re: [PATCH 0/2] arm64: dts: ti: k3: add platforms chipid module nodes
To: Grygorii Strashko <grygorii.strashko@ti.com>, Tero Kristo
 <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
References: <20200613164346.28852-1-grygorii.strashko@ti.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
X-Pep-Version: 2.0
Message-ID: <8b8f7f92-571d-4a44-4858-7d79676a6375@ti.com>
Date: Mon, 15 Jun 2020 10:47:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200613164346.28852-1-grygorii.strashko@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_004714_706266_BC8AB08F 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [198.47.23.249 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, Santosh Shilimkar <ssantosh@kernel.org>,
 Dave Gerlach <d-gerlach@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3J5Z29yaWksCgpPbiAxMy8wNi8yMDIwIDE5LjQzLCBHcnlnb3JpaSBTdHJhc2hrbyB3cm90
ZToKPiBIaSBUZXJvLAo+IAo+IEhlbmNlIGszIHBsYXRmb3JtcyBjaGlwaWQgbW9kdWxlIGRyaXZl
ciB3YXMgbWVyZ2VkLCB0aGVyZSBpcyBmb2xsb3cgdXAgc2VyaWVzCj4gdG8gYWRkIGNvcnJlc3Bv
bmRpbmcgRFQgY2hpcGlkIG5vZGVzLiAKPiAKPiBbMV0gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIw
MjAvNS8yOS85NzkKPiAKPiBHcnlnb3JpaSBTdHJhc2hrbyAoMik6Cj4gICBhcm02NDogZHRzOiB0
aTogazMtYW02NS13YWtldXA6IGFkZCBrMyBwbGF0Zm9ybXMgY2hpcGlkIG1vZHVsZSBub2RlCj4g
ICBhcm02NDogZHRzOiB0aTogazMtajcyMWUtbWN1LXdha2V1cDogYWRkIGszIHBsYXRmb3JtcyBj
aGlwaWQgbW9kdWxlIG5vZGUKCkNhbiB5b3UgYWxzbyBzZW5kIGEgcGF0Y2ggdG8gZW5hYmxlIHRo
ZSBzb2NpbmZvIGJ1aWxkPwoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvS2NvbmZpZy5wbGF0Zm9y
bXMgYi9hcmNoL2FybTY0L0tjb25maWcucGxhdGZvcm1zCmluZGV4IDhkZDA1YjJhOTI1Yy4uMWQz
NzEwZTM2MjZhIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L0tjb25maWcucGxhdGZvcm1zCisrKyBi
L2FyY2gvYXJtNjQvS2NvbmZpZy5wbGF0Zm9ybXMKQEAgLTk4LDYgKzk4LDcgQEAgY29uZmlnIEFS
Q0hfSzMKIAlzZWxlY3QgVElfU0NJX1BST1RPQ09MCiAJc2VsZWN0IFRJX1NDSV9JTlRSX0lSUUNI
SVAKIAlzZWxlY3QgVElfU0NJX0lOVEFfSVJRQ0hJUAorCXNlbGVjdCBUSV9LM19TT0NJTkZPCiAJ
aGVscAogCSAgVGhpcyBlbmFibGVzIHN1cHBvcnQgZm9yIFRleGFzIEluc3RydW1lbnRzJyBLMyBt
dWx0aWNvcmUgU29DCiAJICBhcmNoaXRlY3R1cmUuCgpXaXRoIHRoaXMgYWRkZWQ6ClRlc3RlZC1i
eTogUGV0ZXIgVWpmYWx1c2kgPHBldGVyLnVqZmFsdXNpQHRpLmNvbT4KCj4gCj4gIGFyY2gvYXJt
NjQvYm9vdC9kdHMvdGkvazMtYW02NS13YWtldXAuZHRzaSAgICAgIHwgNSArKysrKwo+ICBhcmNo
L2FybTY0L2Jvb3QvZHRzL3RpL2szLWo3MjFlLW1jdS13YWtldXAuZHRzaSB8IDUgKysrKysKPiAg
MiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCj4gCgotIFDDqXRlcgoKVGV4YXMgSW5z
dHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2kuClkt
dHVubnVzL0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNp
bmtpCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
