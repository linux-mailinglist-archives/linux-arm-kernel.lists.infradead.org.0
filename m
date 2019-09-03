Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0723A6148
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 08:22:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJNadEhz0nuiiw9KF5zG6o5q5MttJWMmSCYwvi3cJfo=; b=t0jS2DJVJ2jraC
	fOpOUw9nGrA9/0Tkt+P7wOEWIGPyeHK6CqnSDSJFlQjYweHbjwwx+usaG3GdeqEQUD55lcmPAKZem
	yVuQINQMcjFbVzRx5PZhBlOQBnCltw/POrPj+BQBgHQZ8L8fA/pzMsn/Kx3KRUdjU1YfhO6hoJF7P
	QdjemlG9MD/jnyt410/wSaDXtj0JllID7xhR3GnSv4Km9EZChDhARd58IECoS+BMKPvFz8/bP/XYq
	EUxWc+xYXimqC6CnO0UU5qkvRbh2VVxGYzSsCh70mA4vXrMdqa2xlIw3KLAmglSLuJMMBoaSlghvq
	Zoc5j/FbshqikqtWPhUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i52Cl-0001kd-Kv; Tue, 03 Sep 2019 06:22:15 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i52CT-0001jV-0X
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 06:21:58 +0000
Received: by mail-wm1-x343.google.com with SMTP id n2so15288078wmk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 23:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=yGyIrrLARg5qwoC8MjSZ4CSFbPrX3vElTlOaYxFgRnQ=;
 b=WECgJvE2QdLRhFj3i4AxCxgR1vpUfhF1VNqwGZrLdkOacFB3XcpZNKbAF3NPedfZ/9
 NBL/hguADRwjl3TUHJEJH0iVlHeLIR4wEQwX2cSmF6t8kcuSlI4rmHAOymYXKvv3tYY2
 w0Wt4JwGqayHRUygZM/OOR7JTKFcpDZ745eZFw2fInD7Z0RvyY0IqhSWczFLRF3LEOyq
 6QKJzl3cJs5W83haW4N35dmVvoJWgr0cK4u5ldys+zILBsGfeAIJS5o7Yg70dH+Mw/eH
 tHzP7IJmd7dBNszmnvjZvVfwOEWtD9w0hV2ZrcLP2P/xH2smB/BG3P1QGDaGfyLNV0vB
 hUQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=yGyIrrLARg5qwoC8MjSZ4CSFbPrX3vElTlOaYxFgRnQ=;
 b=KKfKsiGCShU7oGOg6G10dNYz5TqxU1pLVzd+3pq37+S0lvSE/zFtUO3+xBScqZp09d
 UpOGQMskjVW545mThzcxcqdCW12MP44N26dEHEEDvOTgzbVSmMIUIgtw7/N81PLLNdTw
 CTe0vBNkbtRyUjWi1dkPgWHFeKWFuPOlMs/k5wVCXu8n5mn4D5HAVmbk7OU2YUgB0v1v
 GlwiCs6ghd0bfcuqGBHOLEX6a+a3knUa/2QxOPNKK8eOpXAWCQdeL9RuhAZoD52L+oVx
 3CAm+f+jyeiBMJdqQ2WjU9OLOTM2NwL8RqzzwNgiWU8oi8e6Wy/iizPvWZBN5XYQXKVG
 fakQ==
X-Gm-Message-State: APjAAAXD2xgWg8wX53oqYzo4CQN19psvmA2IdsdIPbUc0c8F0GF/2qZp
 VSp2a2DTD/SprLgVjK2UpCBXPg==
X-Google-Smtp-Source: APXvYqzO8/MDChhFJYV9n2Mdiniy4ia5sEDZAcYL4Cu8Zn76jxIlVNCV1TBkQZbX2z2LJb8KuGs6CQ==
X-Received: by 2002:a7b:c5d6:: with SMTP id n22mr23766517wmk.65.1567491715654; 
 Mon, 02 Sep 2019 23:21:55 -0700 (PDT)
Received: from dell ([95.147.198.93])
 by smtp.gmail.com with ESMTPSA id c132sm21978999wme.27.2019.09.02.23.21.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Sep 2019 23:21:55 -0700 (PDT)
Date: Tue, 3 Sep 2019 07:21:53 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 1/1] arm64: dts: qcom: Add Lenovo Yoga C630
Message-ID: <20190903062153.GD26880@dell>
References: <20190902132400.14084-1-lee.jones@linaro.org>
 <20190903054451.GV6167@minitux> <20190903062040.GC26880@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903062040.GC26880@dell>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_232157_084712_1C031DC2 
X-CRM114-Status: GOOD (  19.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, agross@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAwMyBTZXAgMjAxOSwgTGVlIEpvbmVzIHdyb3RlOgoKPiBPbiBNb24sIDAyIFNlcCAy
MDE5LCBCam9ybiBBbmRlcnNzb24gd3JvdGU6Cj4gCj4gPiBPbiBNb24gMDIgU2VwIDA2OjI0IFBE
VCAyMDE5LCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiAKPiA+ID4gRnJvbTogQmpvcm4gQW5kZXJzc29u
IDxiam9ybi5hbmRlcnNzb25AbGluYXJvLm9yZz4KPiA+ID4gCj4gPiA+IFRoZSBMZW5vdm8gWW9n
YSBDNjMwIGlzIGJ1aWx0IG9uIHRoZSBTRE04NTAgZnJvbSBRdWFsY29tbSwgYnV0IHRoaXMgc2Vl
bQo+ID4gPiB0byBiZSBzaW1pbGFyIGVub3VnaCB0byB0aGUgU0RNODQ1IHRoYXQgd2UgY2FuIHJl
dXNlIHRoZSBzZG04NDUuZHRzaS4KPiA+ID4gCj4gPiA+IFN1cHBvcnRlZCBieSB0aGlzIHBhdGNo
IGlzOiBrZXlib2FyZCwgYmF0dGVyeSBtb25pdG9yaW5nLCBVRlMgc3RvcmFnZSwKPiA+ID4gVVNC
IGhvc3QgYW5kIEJsdWV0b290aC4KPiA+IAo+ID4gQXBwbGllZCB0aGlzIHRvIG5leHQtMjAxOTA4
MjkgYW5kIGJvb3RlZCBpdCwgZ290IGEgbGl0dGxlIGJpdCBvZiBFRkkgRkIsCj4gPiB0aGVuIHRo
ZSBzY3JlZW4gZ29lcyBibGFuayBhbmQgYWZ0ZXIgYSB3aGlsZSBJJ20gYmFjayBpbiBHUlVCLgo+
ID4gCj4gPiBJJ3ZlIG5vdCBiZWVuIGFibGUgdG8gZmlndXJlIG91dCB3aGF0J3MgY2F1c2luZyB0
aGlzIHRob3VnaC4KPiAKPiBQcm9iYWJseSBETUEuICBUaGVyZSBpcyBzdGlsbCBhbiBpc3N1ZSBp
biB0aGUgQ09NIEdFTkkgU2VyaWFsIEVuZ2luZQo+IERyaXZlciB3aGljaCByZWJvb3RzIHRoZSBz
eXN0ZW0gd2hlbiBhIERNQSB0cmFuc2FjdGlvbiBpcyBpbml0aWF0ZWQuCj4gCj4gSG93ZXZlciwg
d2l0aCBhIHdvcmthcm91bmQgcGF0Y2ggYXBwbGllZCB0byB0aGUgU2VyaWFsIEVuZ2luZSBkcml2
ZXIKPiAoZHJpdmVycy9zb2MvcWNvbS9xY29tLWdlbmktc2UuYykgdGhpcyBEVFMgaGFzIG5vIGlz
c3VlIGJvb3RpbmcgdGhlCj4gc3lzdGVtLgo+IAo+IFdlIGhhdmUgfjEyIHdlZWtzIHRvIGVpdGhl
ciBmaXggb3IgZWxlZ2FudGx5IHdvcmsgYXJvdW5kIHRoZSBTZXJpYWwKPiBFbmdpbmUgaXNzdWUu
ICBJTUhPIGlzIG1ha2VzIG5vIHNlbnNlIHRvIGhvbGQgYmFjayB0aGlzIGVuYWJsZW1lbnQKPiBw
YXRjaCAod2hpY2ggY2Fubm90IGdvIGluIHZpYSB0aGUgLXJjcykgZm9yIHNvbWV0aGluZyB3aGlj
aCBpcyBsaWtlbHkKPiB0byBiZSBmaXhlZCBhbmQgYXBwbGllZCBkdXJpbmcgdjMuNC1yY1guCgpO
QjogSWYgeW91J3JlIHdvcnJpZWQgYWJvdXQgb3RoZXIgZW50aXRpZXMgdGhpbmtpbmcgdGhlIHBs
YXRmb3JtIGJvb3RzCmZhdWx0IGZyZWUgZHVlIHRvIHRoaXMgRFRTIHBhdGNoIGJlaW5nIGFwcGxp
ZWQsIEkgd291bGQgc3VnZ2VzdCB3ZQpwbGFjZSBhIGxpdHRsZSAiTkI6IiBub3RlIGluIHRoZSBj
aGFuZ2Vsb2cgdG8gZXhwbGFpbiB0aGUgc2l0dWF0aW9uLgoKLS0gCkxlZSBKb25lcyBb5p2O55C8
5pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBz
b3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdp
dHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
