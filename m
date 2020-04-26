Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2831B91B0
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 18:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jqqjSwB4vmJB8tUfGcfoScvydSX3jRJCdXkXA+HeOeM=; b=iI387Rk92bbG7Gfi7ELWa0QzL
	f3gZSjlvanJ0GLf9XrmWIHNoj6hfSTBlunVFJDl6eVWHrk3fbff1BxZd/p2Jxk87paXOJBgibAO11
	j+kqSyYugosm31nEyNhgoJJ+M90ZyQQrx6ZnVP9fS7jDgflehASNen/Ap02VLBa7X7gPi0cVmsm3y
	ghsVMNiaTWI5B9JpzCMPY2i256jJn+c1dANJHvD/xZeGykLx0e4OUJ4Gf5MQzijtFlIwyB7EMnHGg
	OHGL0gRuU13KonyAir9Aqb2/TNy6Tvt+mhYd1pv6oBv5rXiqICh9DFGRaefU2vL+bn/StQRDh4srW
	gnD0gl9uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSk8K-0002wE-Ip; Sun, 26 Apr 2020 16:27:56 +0000
Received: from gateway30.websitewelcome.com ([192.185.194.16])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSk8B-0002u9-OX
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 16:27:50 +0000
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
 by gateway30.websitewelcome.com (Postfix) with ESMTP id 3606438E8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 11:27:33 -0500 (CDT)
Received: from br164.hostgator.com.br ([192.185.176.180]) by cmsmtp with SMTP
 id Sk7wj1m43VQh0Sk7wj9so3; Sun, 26 Apr 2020 11:27:33 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=castello.eng.br; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nOj2osYNQXr8K1shlwowWOqo3kkVH+1V33i1mSrzbOo=; b=hCd69Z0a5Rcuo1M10ME1Q2NPgW
 UF4Wfuj7T5NVxEK02KOESbe0ypBal3zFywClY6U8ETSSPA4oQ5BIC2ekU08ym/i06bW0ElDx206O4
 j6zpUiE13vw7p0IhEjrBXKkHdkTkQGDM2azno7fzsiC0qxEkn6tbkZ4vo9wDkCneWBdJSLN4nDu7L
 3LO+xkH3PZvRDuVQqyaA9R2t1aHlFr17/1lBa0UGjj4cOgr52e+GMJazf9FvgK2rp9jd9L4zWJK5J
 EjD7qvS1GerElJCgRF9I7v9ZcVgLjY5kI4Rb3mPMkW7PDSw2vpXLB33nwHxtE9t89exZffR0wLzyR
 ACzZpapQ==;
Received: from [191.31.197.205] (port=46284 helo=[192.168.15.9])
 by br164.hostgator.com.br with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <matheus@castello.eng.br>)
 id 1jSk7v-001MdU-Ou; Sun, 26 Apr 2020 13:27:31 -0300
Subject: Re: [PATCH v3 3/3] ARM: dts: Add Caninos Loucos Labrador
To: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
References: <20200229104358.GB19610@mani>
 <20200320035104.26139-1-matheus@castello.eng.br>
 <20200320035104.26139-4-matheus@castello.eng.br>
 <20200405065137.GC8912@Mani-XPS-13-9360>
 <df32c750-a097-9210-6e13-db7db49836b5@castello.eng.br>
 <2dca5a4e-933c-0a43-e86f-21b55d75a586@suse.de>
From: Matheus Castello <matheus@castello.eng.br>
Message-ID: <f9e48fba-0da8-7ba9-d44a-7909067a1df1@castello.eng.br>
Date: Sun, 26 Apr 2020 13:27:27 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <2dca5a4e-933c-0a43-e86f-21b55d75a586@suse.de>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.197.205
X-Source-L: No
X-Exim-ID: 1jSk7v-001MdU-Ou
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.15.9]) [191.31.197.205]:46284
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 8
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_092748_773022_A6AD8B21 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.194.16 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 igor.lima@lsitec.org.br, edgar.righi@lsitec.org.br,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcywKCnRoYW5rcyBmb3IgdGhlIHJldmlldy4KCkVtIDQvMjYvMjAgODo1OCBBTSwg
QW5kcmVhcyBGw6RyYmVyIGVzY3JldmV1Ogo+IEhpIE1hdGhldXMsCj4gCj4gQW0gMjMuMDQuMjAg
dW0gMTc6MjAgc2NocmllYiBNYXRoZXVzIENhc3RlbGxvOgo+PiBFbSA0LzUvMjAgMzo1MSBBTSwg
TWFuaXZhbm5hbiBTYWRoYXNpdmFtIGVzY3JldmV1Ogo+Pj4gT24gRnJpLCBNYXIgMjAsIDIwMjAg
YXQgMTI6NTE6MDRBTSAtMDMwMCwgTWF0aGV1cyBDYXN0ZWxsbyB3cm90ZToKPj4+PiBBZGQgRGV2
aWNlIFRyZWVzIGZvciBDYW5pbm9zIExvdWNvcyBMYWJyYWRvciBDb00gYW5kIGJhc2UgYm9hcmQu
Cj4+Pj4gQmFzZWQgb24gdGhlIHdvcmsgb2YgQW5kcmVhcyBGw6RyYmVyIG9uIExlbWFrZXIgR3Vp
dGFyIGRldmljZSB0cmVlLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogTWF0aGV1cyBDYXN0ZWxs
byA8bWF0aGV1c0BjYXN0ZWxsby5lbmcuYnI+Cj4+Pgo+Pj4gUmV2aWV3ZWQtYnk6IE1hbml2YW5u
YW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+Cj4+Pgo+Pj4g
V2lsbCBxdWV1ZSB0aGUgc2VyaWVzIGZvciB2NS44IG9uY2UgQW5kcmVhcyBpcyBoYXBweSB3aXRo
IGl0Lgo+Pgo+PiBkbyB5b3UgaGF2ZSBhbnkgbW9yZSBjb25jZXJucyBhYm91dCB0aGVzZSBwYXRj
aGVzPyBMZXQgbWUga25vdy4KPiAKPiBJJ3ZlIHJldmlld2VkIHRoZSBwcmVjZWRpbmcgdHdvIHBh
dGNoZXMuIFRoaXMgb25lIGhlcmUgbG9va3Mgb2theSwKPiAKPiBSZXZpZXdlZC1ieTogQW5kcmVh
cyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgo+IAo+IGJ1dCBzZWUgMi8zIC0gbW9kZWwgaGVy
ZSBkb2VzIGNvbnRhaW4gTSBhbmQgeW91ciAuZHRzaSBpcyBuYW1lZCAtdjIgLSAKPiB3aGF0J3Mg
dGhlIGRpZmZlcmVuY2UgdG8gdjE/IElmIGl0J3MgYmlnIGVub3VnaCB0byB3YXJyYW50IGEgc2Vw
YXJhdGUgCj4gLmR0c2ksIHlvdSBzaG91bGQgY29uc2lkZXIgd2hldGhlciBhIHZlcnNpb25lZCBj
b21wYXRpYmxlIHN0cmluZyBtYXkgYmUgCj4gbmVlZGVkLCB0b28gKGxpa2VseSBpbiBhZGRpdGlv
biB0bywgbm90IGluc3RlYWQgb2YgYSBnZW5lcmljIG9uZSkuIE5vIHYxIAo+IGluZm8gb24gdGhl
IHdlYnNpdGUuCj4gCgpUaGUgZGlmZmVyZW5jZSBiZXR3ZWVuIHYxIGFuZCB2MiBpcyB0aGUgbW9k
ZWwgYW5kIHZlbmRvciBvZiB0aGUgRFJBTSBhbmQgCnN0b3JhZ2UgZU1NQy4gQnV0IHRoYXQgaGFk
IG5vIGltcGFjdCBvbiB0aGUgc29mdHdhcmUuCgpDaGVja2luZyBleGFtcGxlcyBvbiAiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vIiBJIHNhdyAKdGhhdCBzb21lIGFkZCBl
bnVtIGRlc2NyaXB0aW9ucyBmb3IgYm90aCB0aGUgYmFzZSBib2FyZCBhbmQgc3lzdGVtIG9uIApt
b2R1bGUsIGtlZXBpbmcgaW4gY29uc3Qgb25seSB0aGUgdmVuZG9yIHByZWZpeCBvZiB0aGUgU29D
LiBBbmQgaW4gdGhlIApkZXZpY2UgdHJlZSBib3RoIGhhdmUgdGhlIG1vZGVsIHByb3BlcnR5IGRl
c2NyaXB0aW9uLiBJIGxpa2VkIHRoaXMgCmV4YW1wbGUsIEkgdGhpbmsgSSB3aWxsIGZvbGxvdyBp
dCBpbiB2NC4KCkFib3V0ICItYmItIiBpbiB0aGUgZmlsZSBuYW1lIGFuZCBkZXNjcmlwdGlvbjog
b24gUENCIGlzIHdyaXR0ZW4gCiJMYWJyYWRvciBCYXNlLU0gdjEuMGEiLCBzbyB3aXRoIHRoYXQg
SSB0aGluayBpdCBpcyBiZXR0ZXIgdG8gbGVhdmUgb25seSAKYmFzZSBvbiB0aGUgbmFtZS4KCkkg
d2lsbCBzZW5kIHRoZSB2NCwgdGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgdGhlIHJldmlldy4KCkJS
LApNYXRoZXVzIENhc3RlbGxvCgo+IFRoYW5rcywKPiBBbmRyZWFzCj4gCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
