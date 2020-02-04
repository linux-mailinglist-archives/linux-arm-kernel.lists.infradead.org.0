Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 839ED15191C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 11:58:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FdbEm6McgMdtSduX9kQsAhA6bUJnHoau6CHyuFav66U=; b=WWemUZA9wcrV5x
	UaqBectSA7my8h2eGbH/i5lfb3CXfXeKp0x8vYm9yWQyzeOYH5mcDWFaoovNfy2m71xNlm0/cbGov
	0re0dQMDkpuWZcKlEJDk59qSmz+1N+pdkrogdvGPLKiEt7niry+XlTmDQ1cROSiYChxwlC7Vy8s/r
	GgmWLqoJrtfl5rvU10liA71UB5vAoED6InNSRNo8K/omG0J3Mq60Q9zFlLtLktpr9RY2M57Pth/DQ
	KNKEz7YhPRCLsEn2Daj4h/FXGuQEdbuLQgQQTHE7JC4298y4q3OaRfMGH/szKVvABjd4PDV+fLCAl
	GRyLV6UX3g4bawrjA9Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyvuq-0001E3-2H; Tue, 04 Feb 2020 10:58:48 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyvuj-0001DY-UL
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 10:58:43 +0000
Received: by mail-qt1-x842.google.com with SMTP id d9so13910555qte.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 02:58:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=YL3TO9ZpKBY8+YOVx7GVmXHwa9ZG4OtIovpotqZSOvQ=;
 b=i0jtLvBBX8r5QFc0r7Hxo2IZOc6yvj9C31xPCO1shilPLnf2bgJo2m6Tz7Lgh3spwt
 tnKqB4gxkprzhxpFv6FFGHeXmydAtHjxmf0aefNbF9p+ihxiajkPn1gY17dmT1J4+vym
 SErflyV3b6IxZovmGu7nMrHcy8kBkMAgMvM5vZ8FZ+eZ8HDqAEEczfSp/WMNHoejJYfM
 lyLrVQTvEcYf2IES4Z3MPN+Vosc+DOGCjPIfkEGjJBPSMC+/zMLUNHbNahIE5qmE9J9a
 jZUN3yRHQOcgCFTynkHYZJp4g/5Q4fTQPU8VZy3I0/R/vlKdXcVL8w/muhJKDi58nv9Z
 vp3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=YL3TO9ZpKBY8+YOVx7GVmXHwa9ZG4OtIovpotqZSOvQ=;
 b=GmpnX+8xpxMTWyiWFlw5a5E52UBeofXSfkSGENh+aWsYXMBhkTJFtkMDbfYL+iVJtY
 wgigWTco7td3TfJind9HZnqAmigpGDLy8r3wJfazTmd2EZnnORpI+Fnluh3Bjm91lIBc
 g7B+yEly3y8PFUcCMHXDzEYZqJyxu+EpKfFLvttu+e7e9TXWg5efRPoeOkalCtNNriu9
 lWHKUEGMHBwlurDaiIm9cBIvlzqvyebzbD9DpLlHngYuxweaV6ysHwTyv5GpEczyltUe
 SvL2BQG/5bP5/TIexkR+c7lGusKM6/W6S8xg+ZzrZuGh65oXwTPw73I0sRxGx7JSU1WR
 gSJg==
X-Gm-Message-State: APjAAAU1TQGMdnUXEg/FeOb/csaXMFocJbJllDtYX/uFVAreRm/QmMVg
 Q9BxBkatmY3ki+G8QSdHO3R8NuZKzUY0wVOcmrhPkg==
X-Google-Smtp-Source: APXvYqyiwcSIqGmki9INgStVr+9p8LXvXFoIcE7YOnPCL2ZR5ORRWCr1pIBeEgRF46HUbHiAIYa9Vwxx/3iq0aPPtKQ=
X-Received: by 2002:aed:2bc2:: with SMTP id e60mr28271222qtd.115.1580813920706; 
 Tue, 04 Feb 2020 02:58:40 -0800 (PST)
MIME-Version: 1.0
References: <1579601650-7055-1-git-send-email-yannick.fertre@st.com>
 <f925ddf5-3265-638b-14b9-71b549b5a9ad@st.com>
In-Reply-To: <f925ddf5-3265-638b-14b9-71b549b5a9ad@st.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Tue, 4 Feb 2020 11:58:30 +0100
Message-ID: <CA+M3ks7jCHzOuHnOO=v5AgsqSRbMVxYhkMY332u5qec=jJtHsw@mail.gmail.com>
Subject: Re: [PATCH] drm/stm: ltdc: check crtc state before enabling LIE
To: Philippe CORNU <philippe.cornu@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_025841_976563_36C397C1 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Yannick FERTRE <yannick.fertre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgamV1LiAyMyBqYW52LiAyMDIwIMOgIDEwOjUwLCBQaGlsaXBwZSBDT1JOVSA8cGhpbGlwcGUu
Y29ybnVAc3QuY29tPiBhIMOpY3JpdCA6Cj4KPiBEZWFyIFlhbm5pY2ssCj4gVGhhbmsgeW91IGZv
ciB5b3VyIHBhdGNoLAo+Cj4gQWNrZWQtYnk6IFBoaWxpcHBlIENvcm51IDxwaGlsaXBwZS5jb3Ju
dUBzdC5jb20+Cj4KPiBQaGlsaXBwZSA6LSkKPgo+IE9uIDEvMjEvMjAgMTE6MTQgQU0sIFlhbm5p
Y2sgRmVydHJlIHdyb3RlOgo+ID4gRm9sbG93aW5nIGludmVzdGlnYXRpb25zIG9mIGEgaGFyZHdh
cmUgYnVnLCB0aGUgTElFIGludGVycnVwdAo+ID4gY2FuIG9jY3VyIHdoaWxlIHRoZSBkaXNwbGF5
IGNvbnRyb2xsZXIgaXMgbm90IGFjdGl2YXRlZC4KPiA+IExJRSBpbnRlcnJ1cHQgKHZibGFuaykg
ZG9uJ3QgaGF2ZSB0byBiZSBzZXQgaWYgdGhlIENSVEMgaXMgbm90Cj4gPiBlbmFibGVkLgo+ID4K
CkFwcGxpZWQgb24gZHJtLW1pc2MtbmV4dC4KClRoYW5rcwpCZW5qYW1pbgoKPiA+IFNpZ25lZC1v
ZmYtYnk6IFlhbm5pY2sgRmVydHJlIDx5YW5uaWNrLmZlcnRyZUBzdC5jb20+Cj4gPiAtLS0KPiA+
ICAgZHJpdmVycy9ncHUvZHJtL3N0bS9sdGRjLmMgfCA3ICsrKysrKy0KPiA+ICAgMSBmaWxlIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5j
Cj4gPiBpbmRleCBjMjgxNWU4Li5lYTY1NGM3IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL3N0bS9sdGRjLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jCj4gPiBA
QCAtNjQ4LDkgKzY0OCwxNCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9jcnRjX2hlbHBlcl9m
dW5jcyBsdGRjX2NydGNfaGVscGVyX2Z1bmNzID0gewo+ID4gICBzdGF0aWMgaW50IGx0ZGNfY3J0
Y19lbmFibGVfdmJsYW5rKHN0cnVjdCBkcm1fY3J0YyAqY3J0YykKPiA+ICAgewo+ID4gICAgICAg
c3RydWN0IGx0ZGNfZGV2aWNlICpsZGV2ID0gY3J0Y190b19sdGRjKGNydGMpOwo+ID4gKyAgICAg
c3RydWN0IGRybV9jcnRjX3N0YXRlICpzdGF0ZSA9IGNydGMtPnN0YXRlOwo+ID4KPiA+ICAgICAg
IERSTV9ERUJVR19EUklWRVIoIlxuIik7Cj4gPiAtICAgICByZWdfc2V0KGxkZXYtPnJlZ3MsIExU
RENfSUVSLCBJRVJfTElFKTsKPiA+ICsKPiA+ICsgICAgIGlmIChzdGF0ZS0+ZW5hYmxlKQo+ID4g
KyAgICAgICAgICAgICByZWdfc2V0KGxkZXYtPnJlZ3MsIExURENfSUVSLCBJRVJfTElFKTsKPiA+
ICsgICAgIGVsc2UKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIC1FUEVSTTsKPiA+Cj4gPiAgICAg
ICByZXR1cm4gMDsKPiA+ICAgfQo+ID4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
