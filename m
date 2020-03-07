Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 241D617CE29
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 13:34:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+/9D16qXKwxErk5DegOwUQE3HZsPAun6tIzsF1gsvlU=; b=H/wknTEsJhpZ03jShM9xvItYR
	4Vs7d0XyIRUrxeNTpXeuPE2BAJoATetpRcNmc4j+/S1J/e7tUASW15ugHd1184kd2OrFqt9trwG00
	vwUVzkMIuOnrxmBkzUXv2/R976huKAIVQ6XwxCZSXgc84HXJoFC2p8OME37cojL4fhm7QrEV9i5q3
	rjjObF0EyGLbLYaJOX46NauOpjdii6nbJoN6abEFwEN+2C/V4pJGAzTiM57m5fIdyC84J0zpbWvyy
	QzarbQdkZ4FP9L9UzbtJ3sM7u31bSnmcgy+LD1CegYGhgzDgnnlgNDfONwmRcPuK+6Xf5qJfzk/zc
	O/R7kYhoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAYex-00027b-Es; Sat, 07 Mar 2020 12:34:27 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAYeo-00027I-Mh
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 12:34:20 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 7E2AFADD7;
 Sat,  7 Mar 2020 12:34:13 +0000 (UTC)
Subject: Re: [PATCH v2 1/3] dt-bindings: Add vendor prefix for Caninos Loucos
To: Matheus Castello <matheus@castello.eng.br>
References: <20200229104358.GB19610@mani>
 <20200307002453.350430-1-matheus@castello.eng.br>
 <20200307002453.350430-2-matheus@castello.eng.br>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <62e115af-9d8c-572a-a400-91bdef9d9292@suse.de>
Date: Sat, 7 Mar 2020 13:34:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200307002453.350430-2-matheus@castello.eng.br>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_043418_885918_5466F304 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 manivannan.sadhasivam@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF0aGV1cywKCkFtIDA3LjAzLjIwIHVtIDAxOjI0IHNjaHJpZWIgTWF0aGV1cyBDYXN0ZWxs
bzoKPiBUaGUgQ2FuaW5vcyBMb3Vjb3MgUHJvZ3JhbSBkZXZlbG9wcyBTaW5nbGUgQm9hcmQgQ29t
cHV0ZXJzIHdpdGggYW4gb3Blbgo+IHN0cnVjdHVyZS4gVGhlIFByb2dyYW0gd2FudHMgdG8gZm9y
bSBhIGNvbW11bml0eSBvZiBkZXZlbG9wZXJzIHRvIHVzZQo+IHRoZSBJb1QgdGVjaG5vbG9neSBh
bmQgZGlzc2VtaW5hdGUgdGhlIGxlYXJuaW5nIG9mIGVtYmVkZGVkIHN5c3RlbXMgaW4KCkkgd291
bGQgc3VnZ2VzdCAiSW9UIHRlY2hub2xvZ2llcyIgd2l0aG91dCAidGhlIi4KCj4gQnJhemlsLgo+
IAo+IFRoZSBib2FyZHMgYXJlIGRlc2lnbmVkIGFuZCBtYW51ZmFjdHVyZWQgYnkgTFNJLVRFQyBO
UE8uCj4gCj4gU2lnbmVkLW9mZi1ieTogTWF0aGV1cyBDYXN0ZWxsbyA8bWF0aGV1c0BjYXN0ZWxs
by5lbmcuYnI+Cj4gLS0tCj4gICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVu
ZG9yLXByZWZpeGVzLnlhbWwgfCAyICsrCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92
ZW5kb3ItcHJlZml4ZXMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92
ZW5kb3ItcHJlZml4ZXMueWFtbAo+IGluZGV4IDllNjc5NDRiZWM5Yy4uM2U5NzRkZDU2M2NmIDEw
MDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJl
Zml4ZXMueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5k
b3ItcHJlZml4ZXMueWFtbAo+IEBAIC0xNjcsNiArMTY3LDggQEAgcGF0dGVyblByb3BlcnRpZXM6
Cj4gICAgICAgZGVzY3JpcHRpb246IENhbHhlZGEKPiAgICAgIl5jYXBlbGxhLC4qIjoKPiAgICAg
ICBkZXNjcmlwdGlvbjogQ2FwZWxsYSBNaWNyb3N5c3RlbXMsIEluYwo+ICsgICJeY2FuaW5vcywu
KiI6Cj4gKyAgICBkZXNjcmlwdGlvbjogQ2FuaW5vcyBMb3Vjb3MgTFNJLVRFQyBOUE8KCkFscGhh
YmV0aWNhbCBvcmRlcjogbiBnb2VzIGJlZm9yZSBwLgoKSSdtIGNvbmZ1c2VkIGJ5IHRoZSBkZXNj
cmlwdGlvbi4uLiBFaXRoZXIgdGhpcyBDYW5pbm9zIExvdWNvcyBpcyBhbiAKaW5kZXBlbmRlbnQg
dmVuZG9yIGFuZCBnZXRzIGl0cyBvd24gcHJlZml4LCBvciBpdCdzIExTSS1UZWMgYW5kIHVzZXMg
CnNvbWV0aGluZyBsaWtlIGxzaS10ZWMsY2FuaW5vc2xvdWNvcy1mb28uIFBsZWFzZSBjbGFyaWZ5
IGNvbW1pdCBtZXNzYWdlIAphbmQvb3IgZGVzY3JpcHRpb24gbGluZSwgYXQgbGVhc3QgYnkgaW5z
ZXJ0aW5nIHNvbWV0aGluZyBsaWtlICJwcm9ncmFtIApieSIsICJicmFuZCBieSIgb3IgdGhlIGxp
a2UgcmF0aGVyIHRoYW4ganVzdCBjb25jYXRlbmF0aW5nIG5hbWVzLiBNYXliZSAKY29tcGFyZSBV
RE9PIGJ5IFNFQ08uIElzIGNhbmlub3MsZm9vIHVuaXF1ZSBlbm91Z2ggb3Igc2hvdWxkIGl0IGJl
IApjYW5pbm9zbG91Y29zLGZvbz8gKGNyYXp5IGNhbmluZXM/KQoKTm90ZSB0aGF0IEkgdXN1YWxs
eSBhdHRlbXB0IHRvIENDIHRoZSBvcmdhbml6YXRpb25zIEknbSBhc3NpZ25pbmcgYSAKdmVuZG9y
IHByZWZpeCBmb3IuIERvIHlvdSByZXByZXNlbnQgdGhlbSBvciBjb29yZGluYXRlZCB3aXRoIHRo
ZW0/CgpSZWdhcmRzLApBbmRyZWFzCgo+ICAgICAiXmNhc2NvZGEsLioiOgo+ICAgICAgIGRlc2Ny
aXB0aW9uOiBDYXNjb2RhLCBMdGQuCj4gICAgICJeY2F0YWx5c3QsLioiOgoKLS0gClNVU0UgU29m
dHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJl
cmcsIEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgpIUkIgMzY4MDkgKEFHIE7DvHJuYmVy
ZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
