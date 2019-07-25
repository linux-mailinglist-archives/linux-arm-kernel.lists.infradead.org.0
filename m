Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CEEB74B15
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 12:06:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hANCySURrRGBJbCWXJHnP9WLAbko4uqHFcA/JOZZkCU=; b=skzchfJNCiNew1
	BwoaMTCUVqpda5rsug9tw/Md868aqrWVoOCUNEhPuT5at9F2/MtM1A3ygjSYq9d9F9PyjYaiAMupC
	lCsE3RspYGoQxMsckXHu0QCivgtlZeOywPM7glTRGN6Un0qRFMO6GbmXlRurKkT0vfnY/F+nhffwh
	Vv8TI0cPnyN0UX9Ds956KA28NqblQ9AxJbztovbM0Bu99bwwTQdiJF06thU3Pf1oQlXcHj2JgDwcP
	fb3Ui910Mi8EAOzA+XCEKGKTSV1E1BjEdTwf3XV8C1vScoxfHlqOPIkSlgIYPcO/lTa4GF5WhUo8m
	wRN/eAn4sDE4slRS94+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqaeI-00051a-9m; Thu, 25 Jul 2019 10:06:58 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqadN-0004sf-Hd
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 10:06:05 +0000
Received: by mail-qt1-x843.google.com with SMTP id d23so48505118qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 03:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dY1dpg/OHfGT/mutmAs25ca6whmcjcdibSv9ZWjkmsM=;
 b=Jfhn1IH6hkL03mon/JSCxCgfxtUbbHpAWLvoKakLq9+OvKHCgOwv54x4UYs6F+oQMn
 pYkQIJEg75i+hHconcv4V1/srr2zzQ2gLAF18fBF3ME7Lvqc9OSkQogjIIcoEHtIYzD7
 NNOk23BB7KD8mkF2N8cBwWxrirrIwIZ3Q64/Qs4CiRdRhGrXqGztvhuRIsUjCcx7OsNh
 1K2hL6DNo+hoWiB/V+VadwE/INHTA+S7S2oEyb+FW0F1AAaeEosEGU3YUvgpHt443Dvu
 NWKMDxuEbXYfUF6UQWng1gU1awRncLz4AvRJgscAlnEgrW9grqqxYPfBxrxKl2dxOCEc
 99bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dY1dpg/OHfGT/mutmAs25ca6whmcjcdibSv9ZWjkmsM=;
 b=ruitta+03Yi3KnzCqsa1ysjEqjNlO7I4cvl0U0KF6FppIxSMqUjRRJ3fRA/2aar+UG
 He6otWME7EcF2/uSIhfW0cU34GeNoF+o29yzaAb6LLiCYijTQafZEj+Cy3PYsw3C33eC
 8SVO1XJ6hEM3wnlscTjEHwJL8o2Pp71vVcbjQ8G1GZZmAeQj5VjE82NApgsEluVTb+23
 T1A3EVGXmBdnqdo9KnOFKvRMrHD+QMw9uApvMM+hWq0XWiiuxLrPkre514vWazYEZ6zW
 TPax3HvvAjmZUS7BTLLMz3DEVCPH7eeCJbOPjFuCmnobKl32P/1KuWxPpE4YVQghU+2Y
 +xWw==
X-Gm-Message-State: APjAAAXAn33K4yZ2ckOLjDAUBxkVwheSOIfqrkCU5Pvdu4e0W6LbFpHh
 VvnF2WNFwmS1Igkv9Lambl85aU8Qy5w5tzrxT9Eprg==
X-Google-Smtp-Source: APXvYqyNGztGQcRtMMJsWvdYYDKXUmMJH8KY8KYoJe4UVpVBo8GDSkeBtSiY93R7Znfd5M96vEy07a17By30LwrGnqE=
X-Received: by 2002:aed:36c5:: with SMTP id f63mr62620869qtb.239.1564049160250; 
 Thu, 25 Jul 2019 03:06:00 -0700 (PDT)
MIME-Version: 1.0
References: <1563811560-29589-1-git-send-email-olivier.moysan@st.com>
 <1563811560-29589-3-git-send-email-olivier.moysan@st.com>
In-Reply-To: <1563811560-29589-3-git-send-email-olivier.moysan@st.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Thu, 25 Jul 2019 12:05:49 +0200
Message-ID: <CA+M3ks6aA2YpHG3Kb+JxxECvdWYkgOVabYqL4-QTUDYkM6N67Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: display: sii902x: Change audio mclk
 binding
To: Olivier Moysan <olivier.moysan@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_030601_700452_4C8E152A 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 jernej.skrabec@siol.net, Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 Jonas Karlman <jonas@kwiboo.se>, David Airlie <airlied@linux.ie>,
 Neil Armstrong <narmstrong@baylibre.com>, Jyri Sarha <jsarha@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgbHVuLiAyMiBqdWlsLiAyMDE5IMOgIDE4OjA2LCBPbGl2aWVyIE1veXNhbiA8b2xpdmllci5t
b3lzYW5Ac3QuY29tPiBhIMOpY3JpdCA6Cj4KPiBBcyBzdGF0ZWQgaW4gU2lMOTAyMi8yNCBkYXRh
c2hlZXQsIG1hc3RlciBjbG9jayBpcyBub3QgcmVxdWlyZWQgZm9yIEkyUy4KPiBNYWtlIG1jbGsg
cHJvcGVydHkgb3B0aW9uYWwgaW4gRFQgYmluZGluZ3MuCj4KPiBGaXhlczogM2YxODAyMWY0M2Ez
ICgiZHQtYmluZGluZ3M6IGRpc3BsYXk6IHNpaTkwMng6IEFkZCBIRE1JIGF1ZGlvIGJpbmRpbmdz
IikKPgpBcHBsaWVkIG9uIGRybS1taXNjLW5leHQuClRoYW5rcywKQmVuamFtaW4KCj4gU2lnbmVk
LW9mZi1ieTogT2xpdmllciBNb3lzYW4gPG9saXZpZXIubW95c2FuQHN0LmNvbT4KPiBSZXZpZXdl
ZC1ieTogSnlyaSBTYXJoYSA8anNhcmhhQHRpLmNvbT4KPiBBY2tlZC1ieTogQW5kcnplaiBIYWpk
YSA8YS5oYWpkYUBzYW1zdW5nLmNvbT4KPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL3NpaTkwMngudHh0IHwgNSArKy0tLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9zaWk5MDJ4
LnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9z
aWk5MDJ4LnR4dAo+IGluZGV4IDJkZjQ0YjdkMzgyMS4uNmUxNGUwODdjMGQwIDEwMDY0NAo+IC0t
LSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9zaWk5
MDJ4LnR4dAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5
L2JyaWRnZS9zaWk5MDJ4LnR4dAo+IEBAIC0yNiw5ICsyNiw4IEBAIE9wdGlvbmFsIHByb3BlcnRp
ZXM6Cj4gICAgICAgICAtIGNsb2NrczogcGhhbmRsZSBhbmQgY2xvY2sgc3BlY2lmaWVyIGZvciBl
YWNoIGNsb2NrIGxpc3RlZCBpbgo+ICAgICAgICAgICAgIHRoZSBjbG9jay1uYW1lcyBwcm9wZXJ0
eQo+ICAgICAgICAgLSBjbG9jay1uYW1lczogIm1jbGsiCj4gLSAgICAgICAgICBEZXNjcmliZXMg
U0lJOTAyeCBNQ0xLIGlucHV0LiBNQ0xLIGlzIHVzZWQgdG8gcHJvZHVjZQo+IC0gICAgICAgICAg
SERNSSBhdWRpbyBDVFMgdmFsdWVzLiBUaGlzIHByb3BlcnR5IGlzIHJlcXVpcmVkIGlmCj4gLSAg
ICAgICAgICAiI3NvdW5kLWRhaS1jZWxscyItcHJvcGVydHkgaXMgcHJlc2VudC4gVGhpcyBwcm9w
ZXJ0eSBmb2xsb3dzCj4gKyAgICAgICAgICBEZXNjcmliZXMgU0lJOTAyeCBNQ0xLIGlucHV0LiBN
Q0xLIGNhbiBiZSB1c2VkIHRvIHByb2R1Y2UKPiArICAgICAgICAgIEhETUkgYXVkaW8gQ1RTIHZh
bHVlcy4gVGhpcyBwcm9wZXJ0eSBmb2xsb3dzCj4gICAgICAgICAgICBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvY2xvY2svY2xvY2stYmluZGluZ3MudHh0Cj4gICAgICAgICAgICBj
b25zdW1lciBiaW5kaW5nLgo+Cj4gLS0KPiAyLjcuNAo+Cj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJp
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
