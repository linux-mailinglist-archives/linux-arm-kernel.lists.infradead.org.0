Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A91A12E8B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 17:32:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jM1LxmwOvfWy1M3LJMhQhZ6zjyVbrtBpOjRcIXWm2ds=; b=Urkc1e3myfwWqH
	YgcUQ7swiU0l/rBcXe4sxwDotU0w/P8njRB1eUuq0HfFCOb1Jq4qQmJykLyFDCkk1JBO7hNP6E1B2
	0bXf44dqhz7R5F2taj3+xJZilDz0uDg/WtN4dwt6LOW7HxaKf6xk20hCcTf6rhGSEj34CNifiW/NX
	W6Te/gNCdDEGudas55sd1g0ej9JWchwsSgPhSDz3cxidGTITTz0Ey5bHZqTIzG8a8KiSAuU+0si5p
	XTH7R1iR5z9HJ7F/JCSSu+UpOgtTZ6wEArg7Rwnb/4PKJDCHrP5e2uBSEkXDWMy/khaQ06lIfy2Wt
	Vb+lu1B9bYYvh0lRPlAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in3Od-0005AO-Ay; Thu, 02 Jan 2020 16:32:27 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in3OW-0005A4-Vy
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 16:32:22 +0000
Received: by mail-ed1-x542.google.com with SMTP id m8so39526111edi.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 08:32:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=globallogic.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2Tko8occFlhTAmLh+pmq5km+IinxZOdXNCIFDK4BrgI=;
 b=Yxb2DtgByNnm2fvJC5grlaYIWQcduaEV1xN7bE+1BWv/5kIsEJGJzn9NPu60o6gEGk
 glSFoj0DxpmRKQ3KN+2OW667MMbrcOpFVILpvUMgzz25kWv5AmCq76nosJLB38Qy5t9/
 BaeF0w5f11a83pMJHTlEO8TUuLJSgrOKMAb2L6HMcgquZoDgGnW8O9Q2vMtV8OJrHB/X
 cRHSKwZKg1BAaOmUbpunrXdAFZOL17dgxP4hYHB95aM1oBz9s9BVJFfNU4Zjjy5JDmJ5
 n5917hecOxtC2Ntp4XqcebffaigCfGTiha5Qu2ErrHP+ZeTx+RWp8D4YFOJu7BpcnsGg
 ILFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=2Tko8occFlhTAmLh+pmq5km+IinxZOdXNCIFDK4BrgI=;
 b=nKNUWGBLVmFZHAlutu+qodZj7bfVzPq8H/a1VoGQ8YxkW9jd4+P+NfW9Gv9eyKZBoP
 6jRa4eScDXSZXUwFpseTmOURET9qCRElrzGXjLwIcr8+FS9erTwUtLrt9z/EyMi8/q0l
 Io1ZtlyYUxauBMsQcloB+6bdheHwJBzFJiNyYI1Ch0pe6sCUUii9KqfU1B1cWS7xejOF
 BadhmJsZRbCqVvucCvmucfZAwTv+nQtTpHSmDXEumPo6cbUumv/LYWeiJRObNe4vNbMD
 7Zrtd0X3zLVcp2iQqcrciZ+JVbjdwcMVf3fctE8NaKHwongPWMwFH0WbrmDtH1wTJqvb
 GwSg==
X-Gm-Message-State: APjAAAUpRE6Fh8FYWTGpTKkdPUviwUAyb0SGLuIwFBdWtIElCd5uWnPF
 jrhbj/R0pSrLDmVKgCUwOO3LXGWP4e5Kdt927x+4yw==
X-Google-Smtp-Source: APXvYqwOVsilnsl9v7DZx9xZbGwuN9vKn2FxzE+O5mvOq1IVT7wX95EXQ3BZUT6bjQZc4po8c435XGCjM9jRP1YMO2s=
X-Received: by 2002:a50:9f65:: with SMTP id b92mr87854876edf.275.1577982739378; 
 Thu, 02 Jan 2020 08:32:19 -0800 (PST)
MIME-Version: 1.0
References: <20200101204750.50541-1-roman.stratiienko@globallogic.com>
 <20200101204750.50541-2-roman.stratiienko@globallogic.com>
 <20200102100832.c5fc4imjdmr7otam@gilmour.lan>
In-Reply-To: <20200102100832.c5fc4imjdmr7otam@gilmour.lan>
From: Roman Stratiienko <roman.stratiienko@globallogic.com>
Date: Thu, 2 Jan 2020 18:32:07 +0200
Message-ID: <CAODwZ7uqf4v8XjOLCn=SoUQchst_b96VCNdaunzn9Q21zPcQ7w@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] drm/sun4i: Use CRTC size instead of PRIMARY plane
 size as mixer frame.
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_083221_031666_469F3A2F 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@siol.net>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

0YfRgiwgMiDRj9C90LIuIDIwMjAg0LMuLCAxMjowOCBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtl
cm5lbC5vcmc+Ogo+Cj4gSGksCj4KPiBPbiBXZWQsIEphbiAwMSwgMjAyMCBhdCAxMDo0Nzo1MFBN
ICswMjAwLCByb21hbi5zdHJhdGlpZW5rb0BnbG9iYWxsb2dpYy5jb20gd3JvdGU6Cj4gPiBGcm9t
OiBSb21hbiBTdHJhdGlpZW5rbyA8cm9tYW4uc3RyYXRpaWVua29AZ2xvYmFsbG9naWMuY29tPgo+
ID4KPiA+IEFjY29yZGluZyB0byBEUk0gZG9jdW1lbnRhdGlvbiB0aGUgb25seSBkaWZmZXJlbmNl
IGJldHdlZW4gUFJJTUFSWQo+ID4gYW5kIE9WRVJMQVkgcGxhbmUgaXMgdGhhdCBlYWNoIENSVEMg
bXVzdCBoYXZlIFBSSU1BUlkgcGxhbmUgYW5kCj4gPiBPVkVSTEFZIGFyZSBvcHRpb25hbC4KPiA+
Cj4gPiBBbGxvdyBQUklNQVJZIHBsYW5lIHRvIGhhdmUgZGltZW5zaW9uIGRpZmZlcmVudCBmcm9t
IGZ1bGwtc2NyZWVuLgo+ID4KPiA+IEZpeGVzOiA1YmI1ZjVkYWZhMWEgKCJkcm0vc3VuNGk6IFJl
b3JnYW5pemUgVUkgbGF5ZXIgY29kZSBpbiBERTIiKQo+ID4gU2lnbmVkLW9mZi1ieTogUm9tYW4g
U3RyYXRpaWVua28gPHJvbWFuLnN0cmF0aWllbmtvQGdsb2JhbGxvZ2ljLmNvbT4KPgo+IFNvIGl0
IGFwcGxpZXMgdG8gYWxsIHRoZSA0IHBhdGNoZXMgeW91J3ZlIHNlbnQsIGJ1dCB0aGlzIGxhY2tz
IHNvbWUKPiBjb250ZXh0Lgo+Cj4gVGhlcmUncyBhIGZldyBxdWVzdGlvbnMgdGhhdCBzaG91bGQg
YmUgYW5zd2VyZWQgaGVyZToKPiAgIC0gV2hpY2ggc2l0dWF0aW9uIGlzIGl0IGZpeGluZz8KClNl
dHRpbmcgcHJpbWFyeSBwbGFuZSBzaXplIGxlc3MgdGhhbiBjcnRjIGJyZWFrcyBjb21wb3NpdGlv
bi4gQWxzbwpzaGlmdGluZyB0b3AgbGVmdCBjb3JuZXIgYWxzbyBicmVha3MgaXQuCgo+ICAgLSBX
aGF0IHRvb2wgLyB1c2Vyc3BhY2Ugc3RhY2sgaXMgaXQgZml4aW5nPwoKSSBhbSB1c2luZyBBbmRy
b2lkIHVzZXJzcGFjZSBhbmQgZHJtX2h3Y29tcG9zZXIgSEFMLgoKQEplcm5laiwgeW91J3ZlIHNh
aWQgdGhhdCB5b3Ugb2JzZXJ2ZWQgc2ltaWxhciBpc3N1ZS4gQ291bGQgeW91IHNoYXJlCndoYXQg
dXNlcnNwYWNlIGhhdmUgeW91IHVzZWQ/Cgo+ICAgLSBXaGF0IGhhcHBlbnMgd2l0aCB5b3VyIGZp
eD8gRG8geW91IHNldCB0aGUgcGxhbmUgYXQgY29vcmRpbmF0ZXMKPiAgICAgMCwwIChtZWFuaW5n
IHlvdSdsbCBjcm9wIHRoZSB0b3AtbGVmIGNvcm5lciksIGRvIHlvdSBjZW50ZXIgaXQ/IElmCj4g
ICAgIHRoZSBwbGFuZSBpcyBzbWFsbGVyIHRoYW4gdGhlIENUUkMgc2l6ZSwgd2hhdCBpcyBzZXQg
b24gdGhlIGVkZ2VzPwoKWW91IGNhbiBwdXQgcHJpbWFyeSBwbGFuZSB0byBhbnkgcGFydCBvZiB0
aGUgc2NyZWVuIGFuZCBtYWtlIGl0IGFzCnNtYWxsIGFzIDh4OCAoYWNjb3JkaW5nIHRvIHRoZSBk
YXRhc2hlZXQpIC4gQmFja2dyb3VuZCB3b3VsZCBiZSBmaWxsZWQKd2l0aCBibGFjayBjb2xvciwg
dGhhdCBpcyBkZWZhdWx0LCBidXQgaXQgYWxzbyBjb3VsZCBiZSBvdmVycmlkZGVuIGJ5CnNldHRp
bmcgY29ycmVzcG9uZGluZyByZWdpc3RlcnMuCgo+Cj4KPiBUaGFua3MhCj4gTWF4aW1lCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
