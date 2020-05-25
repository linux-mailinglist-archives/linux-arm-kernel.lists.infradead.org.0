Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D400C1E0C06
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 12:42:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7vZOmwNBAe0/CgrQOR2M8fqxXtmFlL+uAesu9k/8i3k=; b=PolwIRE3JjUqpSGka0spoVWXo
	E5iMPcuDmNouuF+Fxrxfc9mPStQ9bvFCJdeQRLcchvC8+Cq66+9qtt2D9MY/wKuyLsGR2v9R/cw+7
	TzNw7lsoQIzhv1qrVc9HC8rC4rc6YhTX3SRtXYw/VSRoQvbpxpzjKXDvS5M6xbi9Wnc3VBF66G4PJ
	/ccIJPfmrhlIUxdhvbBerVTQZ/BM1Gke/QACs3zWu6FvRIbBpvWXScLzE1zrVkVEehRegxKFCyL5p
	yn1NNyadq830cOgSNWOWsV6hyhFBRcLBEQPzgyW0r/p1meZNndvh+D2m5emhiIJBJhTkXfLB6LZ4a
	jzoyWv0dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdAYa-0002XK-D7; Mon, 25 May 2020 10:42:08 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdAYR-0002Wi-0U; Mon, 25 May 2020 10:42:00 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 45BB8AF0B;
 Mon, 25 May 2020 10:41:58 +0000 (UTC)
Subject: Re: [PATCH v5 2/3] dt-bindings: arm: actions: Document Caninos Loucos
 Labrador
To: Matheus Castello <matheus@castello.eng.br>,
 manivannan.sadhasivam@linaro.org, robh+dt@kernel.org
References: <20200525013008.108750-1-matheus@castello.eng.br>
 <20200525013008.108750-3-matheus@castello.eng.br>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <8fc7b0d0-6516-ecd4-ce9c-a63a3cba7e9a@suse.de>
Date: Mon, 25 May 2020 12:41:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200525013008.108750-3-matheus@castello.eng.br>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_034159_197830_F9A1A97D 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 Rob Herring <robh@kernel.org>, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, igor.lima@lsitec.org.br,
 edgar.righi@lsitec.org.br, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpBbSAyNS4wNS4yMCB1bSAwMzozMCBzY2hyaWViIE1hdGhldXMgQ2FzdGVsbG86Cj4gVXBk
YXRlIHRoZSBkb2N1bWVudGF0aW9uIHRvIGFkZCB0aGUgQ2FuaW5vcyBMb3Vjb3MgTGFicmFkb3Iu
IExhYnJhZG9yCj4gcHJvamVjdCBjb25zaXN0cyBvZiBhIGNvbXB1dGVyIG9uIG1vZHVsZSBiYXNl
ZCBvbiB0aGUgQWN0aW9ucyBTZW1pIFM1MDAKPiBwcm9jZXNzb3IgYW5kIHRoZSBMYWJyYWRvciBi
YXNlIGJvYXJkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1hdGhldXMgQ2FzdGVsbG8gPG1hdGhldXNA
Y2FzdGVsbG8uZW5nLmJyPgo+IEFja2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3Jn
Pgo+IC0tLQo+ICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9hY3Rpb25z
LnlhbWwgfCA1ICsrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4gCj4g
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vYWN0aW9u
cy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9hY3Rpb25zLnlh
bWwKPiBpbmRleCBhY2UzZmRhYTgzOTYuLjIxODdlMWM1YmM3MyAxMDA2NDQKPiAtLS0gYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2FjdGlvbnMueWFtbAo+ICsrKyBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vYWN0aW9ucy55YW1sCj4gQEAgLTE5
LDYgKzE5LDExIEBAIHByb3BlcnRpZXM6Cj4gICAgICAgICAgICAgICAgIC0gYWxsbyxzcGFya3kg
IyBBbGxvLmNvbSBTcGFya3kKPiAgICAgICAgICAgICAgICAgLSBjdWJpZXRlY2gsY3ViaWVib2Fy
ZDYgIyBDdWJpZXRlY2ggQ3ViaWVCb2FyZDYKPiAgICAgICAgICAgICAtIGNvbnN0OiBhY3Rpb25z
LHM1MDAKPiArICAgICAgLSBpdGVtczoKPiArICAgICAgICAgIC0gZW51bToKPiArICAgICAgICAg
ICAgICAtIGNhbmlub3MsbGFicmFkb3ItdjIgIyBMYWJyYWRvciBDb3JlIHYyCj4gKyAgICAgICAg
ICAgICAgLSBjYW5pbm9zLGxhYnJhZG9yLWJhc2UtbSAjIExhYnJhZG9yIEJhc2UgQm9hcmQgTSB2
MQoKVGhpcyBlbnVtIHN0aWxsIHN0cmlrZXMgbWUgYXMgd3JvbmcsIGl0IG1lYW5zIGVpdGhlci1v
ci4gKFdhcyBwbGFubmluZyAKdG8gbG9vayBpbnRvIGl0IG15c2VsZiwgYnV0IG5vIHRpbWUgeWV0
Li4uKSBjYW5pbm9zLGxhYnJhZG9yLXYyIHNob3VsZCAKYmUgYSBjb25zdCBvbmUgbGV2ZWwgZG93
bjogYm9hcmQsIFNvTSwgU29DIGZyb20gbW9zdCBzcGVjaWZpYyB0byBtb3N0IApnZW5lcmljLiBD
b21wYXJlIEd1aXRhciBiZWxvdy4KCj4gKyAgICAgICAgICAtIGNvbnN0OiBhY3Rpb25zLHM1MDAK
PiAgICAgICAgIC0gaXRlbXM6Cj4gICAgICAgICAgICAgLSBlbnVtOgo+ICAgICAgICAgICAgICAg
ICAtIGxlbWFrZXIsZ3VpdGFyLWJiLXJldi1iICMgTGVNYWtlciBHdWl0YXIgQmFzZSBCb2FyZCBy
ZXYuIEIKClJlZ2FyZHMsCkFuZHJlYXMKCi0tIApTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJt
YW55IEdtYkgKTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxp
eCBJbWVuZMO2cmZmZXIKSFJCIDM2ODA5IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
