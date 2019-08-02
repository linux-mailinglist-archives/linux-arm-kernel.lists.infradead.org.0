Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5117EBC6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 07:00:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fsl58v5hyL6eNeNMr8shG9/k+K05OZTJMPUovykFVUQ=; b=adLOYTLhygF9TbsMWFYLIF0If
	1dLXXCrSomidh9bU1sagXyRtUaIyPfV/XRr9MruEOgtXdm6hJkHZoL+5wlpN58861jJ+FhJB2LQOz
	kBqqEGoHH8DwH63P2JJoX0gmyTYHZsBrilXuo7vJ52diz8t5WDztHaqqkDCrHK3uYSA4s3zCv6aiy
	Xw46huRDEBIjGg5qptT6vYdTID07HU8jyiAZ8m/FmcW8Edd9Ez8qfSPh9WdCGtwXau5qe6JL1lnR5
	J2mvK8kZkgmxBByK6QCYKJK9kspHssTJA0MEZ57XCNeYU0niZnSnrNFsx6nyD5EdJgVgUsuC6XRtX
	y2sDt4frg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htPfl-0006qg-LU; Fri, 02 Aug 2019 05:00:09 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htPfa-0006pn-R4
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 05:00:00 +0000
Received: by mail-pf1-x441.google.com with SMTP id 19so35355497pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 21:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=LoXCYNXDN/gY//rGffF67REslgzM9m+tejR6An12dGk=;
 b=TB4GdK7+IYXiZlY116tymxqfz5o1b6tHDJ46snBLAuKihW3/nlX8HMv0QWJxsxqcpd
 BYXluhbYMtwQgA+voDr/TKPMCXMp5tK+0AJupWjyxLC3vRxGCG0A5i+geMAV3qZ20lGn
 5SoqeycGW27o/gIi7Kvnt1KxrOUDF+OTz6Xn7mKHGfG9n79JjispqokJDU3W8i5S2a6o
 fVudWUgEnHJpu8GjR/hZ0zMPUXxsLlNWt1cd6Ozi/uVEpGgwxa8wzs5J3a6ElFXLHPzk
 Zu5tBHooHYXEq8anf0zC4nDqjm8pA7aTufi5wLbeQrUv3eb+2VPnT1QaPKY2eGqj6vL1
 0ptA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LoXCYNXDN/gY//rGffF67REslgzM9m+tejR6An12dGk=;
 b=Cexzucx/uQxR+iGHV4YppHNaha3H6KQzQg4+6Zh4YfCQJ1kSXz8y+qXbwt5uvb9PvN
 KOQRwCPE/eFyQ84VR9FNzZ/wcL+GRXYTxRHZqfMPAVteXd2wXqtIZHDHcC8CmtzE+BQO
 pK+egKsCjdoSGnZsBttn7at7fwC7PMHWpzR60RL/0CUHZ3BBf6ao4ezi9RlGRaeLnciV
 wX8x9RQFxDqaxQjvQFhDjreqlqSyj1XrvrOyukJSyKhXwqSyqdwy2teAr6ZxwbZMjX9N
 l0R1sytvN11GGMvXMb67O0jCRXb0a8yiSBHrTI6Gyba+X8dJQRjZ3p9euZUndGgdLg+D
 i42Q==
X-Gm-Message-State: APjAAAWdasA+S3vQnSzLFM8Y/JskYOFT/8o3HGeKH5KtoGTIOHs3A25S
 NI8EPdHCyfIDmrxKJHXb0PKZO3B9gH8=
X-Google-Smtp-Source: APXvYqx3fPzXaP91dhlBLUagvFtX3BfTYw6uPCF+dtSmNhbvs9db3cnYK+q+xcb3Q7RejHwVGG+uow==
X-Received: by 2002:a17:90a:36a7:: with SMTP id
 t36mr2415642pjb.34.1564721996554; 
 Thu, 01 Aug 2019 21:59:56 -0700 (PDT)
Received: from [10.0.2.15] ([122.163.105.8])
 by smtp.gmail.com with ESMTPSA id 81sm117483655pfx.111.2019.08.01.21.59.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 21:59:56 -0700 (PDT)
Subject: Re: [PATCH] mailbox: zynqmp-ipi-mailbox: Add of_node_put() before goto
To: Michal Simek <michal.simek@xilinx.com>, jassisinghbrar@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20190709172841.13769-1-nishkadg.linux@gmail.com>
 <eaf1fcbe-615e-0fec-d330-ae94e8f3c102@xilinx.com>
 <6a5306bd-946d-383f-0b42-f17675c24218@gmail.com>
 <c0be80c9-16ef-fe03-ae3b-a7d3d1a2ede8@xilinx.com>
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
Message-ID: <ab6db31d-ff16-5a32-f097-347daa6b98fc@gmail.com>
Date: Fri, 2 Aug 2019 10:29:49 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <c0be80c9-16ef-fe03-ae3b-a7d3d1a2ede8@xilinx.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_215958_905678_0E3AD259 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [122.163.105.8 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMzEvMDcvMTkgNzo1MSBQTSwgTWljaGFsIFNpbWVrIHdyb3RlOgo+IE9uIDMxLiAwNy4gMTkg
MTU6MDYsIE5pc2hrYSBEYXNndXB0YSB3cm90ZToKPj4gT24gMzEvMDcvMTkgMjowMSBQTSwgTWlj
aGFsIFNpbWVrIHdyb3RlOgo+Pj4gT24gMDkuIDA3LiAxOSAxOToyOCwgTmlzaGthIERhc2d1cHRh
IHdyb3RlOgo+Pj4+IEVhY2ggaXRlcmF0aW9uIG9mIGZvcl9lYWNoX2F2YWlsYWJsZV9jaGlsZF9v
Zl9ub2RlIHB1dHMgdGhlIHByZXZpb3VzCj4+Pj4gbm9kZSwgYnV0IGluIHRoZSBjYXNlIG9mIGEg
Z290byBmcm9tIHRoZSBtaWRkbGUgb2YgdGhlIGxvb3AsIHRoZXJlIGlzCj4+Pj4gbm8gcHV0LCB0
aHVzIGNhdXNpbmcgYSBtZW1vcnkgbGVhay4gSGVuY2UgYWRkIGFuIG9mX25vZGVfcHV0IGJlZm9y
ZSB0aGUKPj4+PiBnb3RvLgo+Pj4+IElzc3VlIGZvdW5kIHdpdGggQ29jY2luZWxsZS4KPj4+Pgo+
Pj4+IFNpZ25lZC1vZmYtYnk6IE5pc2hrYSBEYXNndXB0YSA8bmlzaGthZGcubGludXhAZ21haWwu
Y29tPgo+Pj4+IC0tLQo+Pj4+ICDCoCBkcml2ZXJzL21haWxib3gvenlucW1wLWlwaS1tYWlsYm94
LmMgfCAxICsKPj4+PiAgwqAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4+Pj4KPj4+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tYWlsYm94L3p5bnFtcC1pcGktbWFpbGJveC5jCj4+Pj4g
Yi9kcml2ZXJzL21haWxib3gvenlucW1wLWlwaS1tYWlsYm94LmMKPj4+PiBpbmRleCA4Njg4N2M5
YTM0OWEuLmJkODBkNGMxMGVjMiAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL21haWxib3gvenlu
cW1wLWlwaS1tYWlsYm94LmMKPj4+PiArKysgYi9kcml2ZXJzL21haWxib3gvenlucW1wLWlwaS1t
YWlsYm94LmMKPj4+PiBAQCAtNjYxLDYgKzY2MSw3IEBAIHN0YXRpYyBpbnQgenlucW1wX2lwaV9w
cm9iZShzdHJ1Y3QKPj4+PiBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+Pj4gIMKgwqDCoMKgwqDC
oMKgwqDCoCBpZiAocmV0KSB7Cj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRldl9l
cnIoZGV2LCAiZmFpbGVkIHRvIHByb2JlIHN1YmRldi5cbiIpOwo+Pj4+ICDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCByZXQgPSAtRUlOVkFMOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IG9mX25vZGVfcHV0KG5jKTsKPj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBm
cmVlX21ib3hfZGV2Owo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+Pj4+ICDCoMKgwqDCoMKg
wqDCoMKgwqAgbWJveCsrOwo+Pj4+Cj4+Pgo+Pj4gUGF0Y2ggaXMgZ29vZCBidXQgd2hlbiB5b3Ug
YXJlIHNheWluZyB0aGF0IHRoaXMgd2FzIGZvdW5kIGJ5IENvY2NpbmVsbGUKPj4+IHRoZW4gaXQg
c2hvdWxkIGJlIGFkZGVkIGFzIHNjcmlwdCB0byBrZXJuZWwgdG8gZGV0ZWN0IGl0Lgo+Pgo+PiBU
aGlzIHBhcnRpY3VsYXIgcGF0Y2ggd2FzIHN1Z2dlc3RlZCBieSBhIHNjcmlwdCBJIGRpZCBub3Qg
d3JpdGUgbXlzZWxmOwo+PiBzb21lb25lIGVsc2Ugd3JvdGUgaXQgYW5kIHNlbnQgaXQgdG8gbWUu
IEhvdyBzaG91bGQgSSBwcm9jZWVkIGluIHRoaXMgY2FzZT8KPiAKPiBZb3UgY2FuIGFzayBoaW0g
dG8gc3VibWl0IGl0IHRvIGtlcm5lbC4KPiBPciB5b3UgY2FuIHRha2UgaXQsIGtlZXAgaGlzIGF1
dGhvcnNoaXAgYW5kIHNlbmQgaXQgdG86CgpJIGhhdmUgYXNrZWQgaGVyIHRvIHN1Ym1pdCB0aGlz
IHNjcmlwdCwgdGhhbmsgeW91LiBXaWxsIEkgbmVlZCB0byAKcmVzdWJtaXQgdGhpcyBwYXRjaCwg
aG93ZXZlcj8KClJlZ2FyZHMsCk5pc2hrYQoKPiAuL3NjcmlwdHMvZ2V0X21haW50YWluZXIucGwg
LWYgc2NyaXB0cy9jb2NjaW5lbGxlLwo+IEp1bGlhIExhd2FsbCA8SnVsaWEuTGF3YWxsQGxpcDYu
ZnI+IChzdXBwb3J0ZXI6Q09DQ0lORUxMRS9TZW1hbnRpYwo+IFBhdGNoZXMgKFNtUEwpKQo+IEdp
bGxlcyBNdWxsZXIgPEdpbGxlcy5NdWxsZXJAbGlwNi5mcj4gKHN1cHBvcnRlcjpDT0NDSU5FTExF
L1NlbWFudGljCj4gUGF0Y2hlcyAoU21QTCkpCj4gTmljb2xhcyBQYWxpeCA8bmljb2xhcy5wYWxp
eEBpbWFnLmZyPiAoc3VwcG9ydGVyOkNPQ0NJTkVMTEUvU2VtYW50aWMKPiBQYXRjaGVzIChTbVBM
KSkKPiBNaWNoYWwgTWFyZWsgPG1pY2hhbC5sa21sQG1hcmtvdmkubmV0PiAoc3VwcG9ydGVyOkNP
Q0NJTkVMTEUvU2VtYW50aWMKPiBQYXRjaGVzIChTbVBMKSkKPiBjb2NjaUBzeXN0ZW1lLmxpcDYu
ZnIgKG1vZGVyYXRlZCBsaXN0OkNPQ0NJTkVMTEUvU2VtYW50aWMgUGF0Y2hlcyAoU21QTCkpCj4g
bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZyAob3BlbiBsaXN0KQo+IAo+IFRoYW5rcywKPiBN
aWNoYWwKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
