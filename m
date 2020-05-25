Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 136AA1E0C7F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 13:08:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yn1QvJV3Cr0VHNiE73r55VPSd+tM510KL2ASkh+lJFY=; b=q/IlEQ6cpjbPpm
	QMrC5wEyaQMdXVTXMSsxSq8iJFGTrnuaIyQ/bBPwtLPtZMz52Rc9/1X94LAM/jqvoTDOLo2nNh3Yq
	UQdxT95iZtWiSruV3NBdk3unqvQCMSoTmnBIFlgiV7C3dRvj6OHZf9bY6+8vB46Lw/S8o9msvIX2D
	y4g06j3gEXjPH58YAY+uzPUn14KqrFn6RHq/vbkFJn2tJG1hxTIhsBvoeW0Uid3kZ6T8gDekIrORL
	wCP2qTnG4kz19cEmQQwx6nytM0sQsuA67mKsQHcWWEMXc5RESZfbJ4An/6aMn136uHQCq1qNBwj1p
	/3gwJQ46/JjGtxsXUKtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdAxu-0002Dm-96; Mon, 25 May 2020 11:08:18 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdAxl-0002Ck-B1
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 11:08:10 +0000
Received: by mail-wm1-x343.google.com with SMTP id v19so9141946wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 04:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=lQKQDzeVK4Uf3YS6MYrDsg7Y/owjPxYU/XltSmblwvw=;
 b=vr2Gr68IKZOePnRH+JwTxvfjJw1QyyouKk1/zx+aPK2wkF44mQ2yS4xfQOkTqzjS8d
 HbCLeCVZ2eg/OD9jp0ttXs2SdyrkRuQhWYb940sDiSlrfJMDPslZn8rS7TzPlBfWSnR4
 So6x/vwQbujFsjO9x6GXTv9zCQ6ImvrfCLbkRUW7ii/vYovyq+X/FAdklWj4F5aSf45M
 I237KjxQhoZeF1zPOzFQSbBnfvey4A6aKytsUtNAEuEl3qxERx+WCF6DzHoZZ72AWXha
 j3amNUooVpvkT08oOppXeU+j0bI/gbIu8r+gppg6r16buLUCtBJcK77nzEzY6VD/agx8
 6+5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lQKQDzeVK4Uf3YS6MYrDsg7Y/owjPxYU/XltSmblwvw=;
 b=G/CxyAtRgkh5gmff5vevIyLNHnrYY0G/aXdMk/T9XToEg/Z/ZEnzYQ0UEeBtP5e9Jg
 m6qgtd2SegkLJc/G3mRT+laL5CHvAWdqJyiKYyQ1XJ0vdXWpAe0tBXRvz7mcOisrLqkU
 62yZPJGs3KUQC2LlOsViGCaqMLGVMgq1PEhApFF7MZ423vTG9tcp0anNDZP6aIjIE1zG
 Ts0GV2jfSs7k+hw1ZLe/3165YXQD1b5A+skSsDugdxkTlugzZvg57pNjyWlPo65PX9SY
 ASFeZ52o1FlrPAV8Y26G2D4lHY7kN89MAMwRh/W48jev6rnIYcmnA8OIPlIA+euQq/i8
 aC/w==
X-Gm-Message-State: AOAM532eevcaCbINQCd20Va3zIrVV6G/E+r/vblhPGosUZhFNqC08ciu
 nvSOO97vyV61zhbPPVMCs+39JQ==
X-Google-Smtp-Source: ABdhPJzplrooTMofH5YFdtdecp/U7nYLCb5HbCk36w+9QdWdZmeknbEFpXjnChpyI8OlDim1kRmqIw==
X-Received: by 2002:a1c:bb05:: with SMTP id l5mr10962772wmf.141.1590404887419; 
 Mon, 25 May 2020 04:08:07 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:f5b2:610d:e426:c0dd?
 ([2a01:e34:ed2f:f020:f5b2:610d:e426:c0dd])
 by smtp.googlemail.com with ESMTPSA id q1sm3445092wmj.9.2020.05.25.04.08.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 May 2020 04:08:06 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: ls1028a: add one more thermal zone support
To: Yuantian Tang <andy.tang@nxp.com>, shawnguo@kernel.org,
 robh+dt@kernel.org, mark.rutland@arm.com, catalin.marinas@arm.com,
 will.deacon@arm.com
References: <20200525073827.13272-1-andy.tang@nxp.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <bdfd7018-aed8-ddbe-8bd2-2fa834013218@linaro.org>
Date: Mon, 25 May 2020 13:08:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200525073827.13272-1-andy.tang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_040809_387087_0A6011DF 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjUvMDUvMjAyMCAwOTozOCwgWXVhbnRpYW4gVGFuZyB3cm90ZToKPiBUaGVyZSBhcmUgMiB0
aGVybWFsIHpvbmVzIGluIGxzMTAyOGEgc29jLiBDdXJyZW50IGR0cyBvbmx5Cj4gaW5jbHVkZXMg
b25lLiBUaGlzIHBhdGNoIGFkZHMgdGhlIG90aGVyIHRoZXJtYWwgem9uZSBub2RlCj4gaW4gZHRz
IHRvIGVuYWJsZSBpdC4KCkZvciBteSBwZXJzb25hbCBpbmZvcm1hdGlvbiwgaXMgdGhlcmUgYSBj
b29saW5nIGRldmljZSBmb3IgdGhlIEREUj8KCj4gU2lnbmVkLW9mZi1ieTogWXVhbnRpYW4gVGFu
ZyA8YW5keS50YW5nQG54cC5jb20+Cj4gLS0tCj4gIC4uLi9hcm02NC9ib290L2R0cy9mcmVlc2Nh
bGUvZnNsLWxzMTAyOGEuZHRzaSB8IDIyICsrKysrKysrKysrKysrKysrKy0KPiAgMSBmaWxlIGNo
YW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTAyOGEuZHRzaSBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwMjhhLmR0c2kKPiBpbmRleCAwNTVmMTE0Y2Y4
NDguLmJjNmYwYzBmODVkYSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9mc2wtbHMxMDI4YS5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2Nh
bGUvZnNsLWxzMTAyOGEuZHRzaQo+IEBAIC0xMjksMTEgKzEyOSwzMSBAQAo+ICAJfTsKPiAgCj4g
IAl0aGVybWFsLXpvbmVzIHsKPiAtCQljb3JlLWNsdXN0ZXIgewo+ICsJCWRkci1jb250cm9sbGVy
IHsKPiAgCQkJcG9sbGluZy1kZWxheS1wYXNzaXZlID0gPDEwMDA+Owo+ICAJCQlwb2xsaW5nLWRl
bGF5ID0gPDUwMDA+Owo+ICAJCQl0aGVybWFsLXNlbnNvcnMgPSA8JnRtdSAwPjsKPiAgCj4gKwkJ
CXRyaXBzIHsKPiArCQkJCWRkci1jdHJsZXItYWxlcnQgewo+ICsJCQkJCXRlbXBlcmF0dXJlID0g
PDg1MDAwPjsKPiArCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+Owo+ICsJCQkJCXR5cGUgPSAicGFz
c2l2ZSI7Cj4gKwkJCQl9Owo+ICsKPiArCQkJCWRkci1jdHJsZXItY3JpdCB7Cj4gKwkJCQkJdGVt
cGVyYXR1cmUgPSA8OTUwMDA+Owo+ICsJCQkJCWh5c3RlcmVzaXMgPSA8MjAwMD47Cj4gKwkJCQkJ
dHlwZSA9ICJjcml0aWNhbCI7Cj4gKwkJCQl9Owo+ICsJCQl9Owo+ICsJCX07Cj4gKwo+ICsJCWNv
cmUtY2x1c3RlciB7Cj4gKwkJCXBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwxMDAwPjsKPiArCQkJ
cG9sbGluZy1kZWxheSA9IDw1MDAwPjsKPiArCQkJdGhlcm1hbC1zZW5zb3JzID0gPCZ0bXUgMT47
Cj4gKwo+ICAJCQl0cmlwcyB7Cj4gIAkJCQljb3JlX2NsdXN0ZXJfYWxlcnQ6IGNvcmUtY2x1c3Rl
ci1hbGVydCB7Cj4gIAkJCQkJdGVtcGVyYXR1cmUgPSA8ODUwMDA+Owo+IAoKCi0tIAo8aHR0cDov
L3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9y
IEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2Vz
L0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdp
dHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
