Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0099199DCD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 20:09:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rw0YgzM52GwhCR3QSJxOEO233pzyNIcn9U5YEMjDDbs=; b=uHzEubHJ8caMD6
	I1sMjByJar2eJb1fEnRugFcyzRwWpidUQOdbz/DOPMB0I35IwRngxY9nPij9cvx7J0NS8ClEPupmn
	jegrnr1wjAzCn/9bWTGC+DM9jbrEGYL1tqB5QI9DPlVMd3OF4s0tr5TVdUUDuy0Ai/xsJT26FSA5A
	/vmnvlRL2YV1afvjW2PkeWvQeoLnEMqOB2dvMWdLexWkXi3BHpJwYMbU0TAeG55DnfajrBZds1uc/
	1zVj30djxgFX55Bv8vohj/9u8zohaakQzl9DTSOA7av3rGZI3gbl34KbzGM8CUj4tE1oQMtTKmWNL
	q/vSbls4Ps/JMQfaIn4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJLKP-00054x-Gx; Tue, 31 Mar 2020 18:09:33 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLK9-00051P-8V
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 18:09:19 +0000
Received: by mail-vs1-xe43.google.com with SMTP id e138so14046755vsc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 11:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UPJq6ZlTzB31AHhJ/+QZLwm1iSTlBLnX9zVCEY1D9+4=;
 b=oDuAK8ri3s9l8SoVYBHbDcZwEw9KgiiYf/MpM8+3UdjLAqFIF662mmjXuIXNyb/ez8
 IzuHflTQWAUV2pof4NIUTD9JmBz2toCJIihOcdaBy8zPUmiQ+oeh/2rFJagHTursEWcs
 4V6VYEYBBIaTCKTChOoTfPtT/NRaR/3u3mYkaI2hWqB3jPcxJF0cbe059XBt0KU6tm+z
 MkNSk2yUyXCVvluLjfLYhYMIQgTHlVY8AL4imdlsUmenfrAaWURjFzltEvV3DcDd8qTZ
 Nj7HLfHutH0+ZGOLDQ33x4GiMmNVJ1ka/xcvL+e0pdHMAA2DCXooIm7NmWSnhY3gVmk5
 iaJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UPJq6ZlTzB31AHhJ/+QZLwm1iSTlBLnX9zVCEY1D9+4=;
 b=UI4D5UKQ7Th18laM4hlEAsCYOJwloBq55Tg/Uc75YWsBWoR2fP9PHRNQbL3d0jC3JA
 mVCmfOPF6Ae8B55oIk312wfRWvpcKThEXvfyvRYiz+fL2iRocyBoXo1TuyK+09Nd1W8l
 weImoxIFmdtjJpY0/lgkIeeNn5Lg5Q7Lrq6eSRdekdvd1Xa6NHmsZ87CF+zTtQgjz5m8
 xH6fhzxmhQk2+kqmEzp5caVFYVJAvx4jh7xSypsjclw3voL9eNa4OzihaNDb4ClxYQtG
 /LBm8fsb+sh1M09htCl/80an6JBnfx9u/EFwWPBClQfjbASEKS+ADxXCpkADLEuIybtD
 DPkA==
X-Gm-Message-State: AGi0Puae6Mt5X70DITO1ahDj393Iz7NWQPVWy+EuW6Rn1+mP1/MJNtcJ
 uFWP4sv2q68Pj54UAepcLJl8XnuuQYkiSdcZsgD+ZA==
X-Google-Smtp-Source: APiQypKHYbxkIBOvGCboXv205msSO49ApFYBvgXnNfouHIfGDbCAyape1yuky1eiv5St/SnqpuMkCL9RRVhFK5wt3fQ=
X-Received: by 2002:a05:6102:72d:: with SMTP id
 u13mr2964354vsg.35.1585678155840; 
 Tue, 31 Mar 2020 11:09:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200325113407.26996-1-ulf.hansson@linaro.org>
 <VI1PR04MB504097B40CE0B804FA60D67A90CF0@VI1PR04MB5040.eurprd04.prod.outlook.com>
 <VI1PR04MB5040FFADA4F780422E208AC390CC0@VI1PR04MB5040.eurprd04.prod.outlook.com>
 <CAPDyKFr_yOmZ2MMvp=1krHejCRDRfhC0B+1icYR5xuZfhKy_ag@mail.gmail.com>
 <2b2f1b1e-d186-e60f-baa9-3223ad4101f0@arm.com>
In-Reply-To: <2b2f1b1e-d186-e60f-baa9-3223ad4101f0@arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 31 Mar 2020 20:08:39 +0200
Message-ID: <CAPDyKFoSeXsNOW4Defc_nLzfd5G8UvsTWUNMJNW6tAZ0gMV4Kg@mail.gmail.com>
Subject: Re: [PATCH 0/2] amba/platform: Initialize dma_parms at the bus level
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_110917_884250_803FF6F8 
X-CRM114-Status: GOOD (  23.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, "Rafael J . Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 BOUGH CHEN <haibo.chen@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Ludovic Barre <ludovic.barre@st.com>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAyNyBNYXIgMjAyMCBhdCAyMDoxNSwgUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlA
YXJtLmNvbT4gd3JvdGU6Cj4KPiBPbiAyMDIwLTAzLTI3IDM6MzQgcG0sIFVsZiBIYW5zc29uIHdy
b3RlOgo+ID4gT24gRnJpLCAyNyBNYXIgMjAyMCBhdCAwNDowMiwgQk9VR0ggQ0hFTiA8aGFpYm8u
Y2hlbkBueHAuY29tPiB3cm90ZToKPiA+Pgo+ID4+Cj4gPj4+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tCj4gPj4+IEZyb206IEJPVUdIIENIRU4KPiA+Pj4gU2VudDogMjAyMOW5tDPmnIgyNuaX
pSAxMjo0MQo+ID4+PiBUbzogVWxmIEhhbnNzb24gPHVsZi5oYW5zc29uQGxpbmFyby5vcmc+OyBH
cmVnIEtyb2FoLUhhcnRtYW4KPiA+Pj4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPjsgUmFm
YWVsIEogLiBXeXNvY2tpIDxyYWZhZWxAa2VybmVsLm9yZz47Cj4gPj4+IGxpbnV4LWtlcm5lbEB2
Z2VyLmtlcm5lbC5vcmcKPiA+Pj4gQ2M6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+OyBD
aHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT47Cj4gPj4+IFJ1c3NlbGwgS2luZyA8bGludXhA
YXJtbGludXgub3JnLnVrPjsgTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3Jn
PjsKPiA+Pj4gVmlub2QgS291bCA8dmtvdWxAa2VybmVsLm9yZz47IEx1ZG92aWMgQmFycmUgPGx1
ZG92aWMuYmFycmVAc3QuY29tPjsKPiA+Pj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnOyBkbWFlbmdpbmVAdmdlci5rZXJuZWwub3JnCj4gPj4+IFN1YmplY3Q6IFJFOiBbUEFU
Q0ggMC8yXSBhbWJhL3BsYXRmb3JtOiBJbml0aWFsaXplIGRtYV9wYXJtcyBhdCB0aGUgYnVzIGxl
dmVsCj4gPj4+Cj4gPj4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4+Pj4gRnJvbTog
VWxmIEhhbnNzb24gPHVsZi5oYW5zc29uQGxpbmFyby5vcmc+Cj4gPj4+PiBTZW50OiAyMDIw5bm0
M+aciDI15pelIDE5OjM0Cj4gPj4+PiBUbzogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGlu
dXhmb3VuZGF0aW9uLm9yZz47IFJhZmFlbCBKIC4KPiA+Pj4+IFd5c29ja2kgPHJhZmFlbEBrZXJu
ZWwub3JnPjsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZwo+ID4+Pj4gQ2M6IEFybmQgQmVy
Z21hbm4gPGFybmRAYXJuZGIuZGU+OyBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT47Cj4g
Pj4+PiBSdXNzZWxsIEtpbmcgPGxpbnV4QGFybWxpbnV4Lm9yZy51az47IExpbnVzIFdhbGxlaWoK
PiA+Pj4+IDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+OyBWaW5vZCBLb3VsIDx2a291bEBrZXJu
ZWwub3JnPjsgQk9VR0ggQ0hFTgo+ID4+Pj4gPGhhaWJvLmNoZW5AbnhwLmNvbT47IEx1ZG92aWMg
QmFycmUgPGx1ZG92aWMuYmFycmVAc3QuY29tPjsKPiA+Pj4+IGxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZzsgZG1hZW5naW5lQHZnZXIua2VybmVsLm9yZzsgVWxmCj4gPj4+PiBI
YW5zc29uIDx1bGYuaGFuc3NvbkBsaW5hcm8ub3JnPgo+ID4+Pj4gU3ViamVjdDogW1BBVENIIDAv
Ml0gYW1iYS9wbGF0Zm9ybTogSW5pdGlhbGl6ZSBkbWFfcGFybXMgYXQgdGhlIGJ1cwo+ID4+Pj4g
bGV2ZWwKPiA+Pj4+Cj4gPj4+PiBJdCdzIGN1cnJlbnRseSB0aGUgYW1iYS9wbGF0Zm9ybSBkcml2
ZXIncyByZXNwb25zaWJpbGl0eSB0byBpbml0aWFsaXplCj4gPj4+PiB0aGUgcG9pbnRlciwgZG1h
X3Bhcm1zLCBmb3IgaXRzIGNvcnJlc3BvbmRpbmcgc3RydWN0IGRldmljZS4gVGhlCj4gPj4+PiBi
ZW5lZml0IHdpdGggdGhpcyBhcHByb2FjaCBhbGxvd3MgdXMgdG8gYXZvaWQgdGhlIGluaXRpYWxp
emF0aW9uIGFuZAo+ID4+Pj4gdG8gbm90IHdhc3RlIG1lbW9yeSBmb3IgdGhlIHN0cnVjdCBkZXZp
Y2VfZG1hX3BhcmFtZXRlcnMsIGFzIHRoaXMgY2FuCj4gPj4+PiBiZSBkZWNpZGVkIG9uIGEgY2Fz
ZSBieSBjYXNlIGJhc2lzLgo+ID4+Pj4KPiA+Pj4+IEhvd2V2ZXIsIGl0IGhhcyB0dXJuZWQgb3V0
IHRoYXQgdGhpcyBhcHByb2FjaCBpcyBub3QgdmVyeSBwcmFjdGljYWwuCj4gPj4+PiBOb3Qgb25s
eSBkb2VzIGl0IGxlYWQgdG8gb3BlbiBjb2RpbmcsIGJ1dCBhbHNvIHRvIHJlYWwgZXJyb3JzLiBJ
bgo+ID4+Pj4gcHJpbmNpcGxlIGNhbGxlcnMgb2YKPiA+Pj4+IGRtYV9zZXRfbWF4X3NlZ19zaXpl
KCkgZG9lc24ndCBjaGVjayB0aGUgZXJyb3IgY29kZSwgYnV0IGp1c3QgYXNzdW1lcwo+ID4+Pj4g
aXQgc3VjY2VlZHMuCj4gPj4+Pgo+ID4+Pj4gRm9yIHRoZXNlIHJlYXNvbnMsIHRoaXMgc2VyaWVz
IGluaXRpYWxpemVzIHRoZSBkbWFfcGFybXMgZnJvbSB0aGUKPiA+Pj4+IGFtYmEvcGxhdGZvcm0g
YnVzIGF0IHRoZSBkZXZpY2UgcmVnaXN0cmF0aW9uIHBvaW50LiBUaGlzIGFsc28gZm9sbG93cwo+
ID4+Pj4gdGhlIHdheSB0aGUgUENJIGRldmljZXMgYXJlIGJlaW5nIG1hbmFnZWQsIHNlZSBwY2lf
ZGV2aWNlX2FkZCgpLgo+ID4+Pj4KPiA+Pj4+IElmIGl0IHR1cm5zIG91dCB0aGF0IHRoaXMgaXMg
YW4gYWNjZXB0YWJsZSBzb2x1dGlvbiwgd2UgcHJvYmFibHkgYWxzbwo+ID4+Pj4gd2FudCB0aGUg
Y2hhbmdlcyBmb3Igc3RhYmxlLCBidXQgSSBhbSBub3Qgc3VyZSBpZiBpdCBhcHBsaWVzIHdpdGhv
dXQgY29uZmxpY3RzLgo+ID4+Pj4KPiA+Pj4+IFRoZSBzZXJpZXMgaXMgYmFzZWQgb24gdjUuNi1y
YzcuCj4gPj4+Pgo+ID4+Pgo+ID4+PiBIaSBVbGYsCj4gPj4+Cj4gPj4+IFNpbmNlIGkuTVhRTSBT
TU1VIHJlbGF0ZWQgY29kZSBzdGlsbCBub3QgdXBzdHJlYW0geWV0LCBzbyBJIGFwcGx5IHlvdXIK
PiA+Pj4gcGF0Y2hlcyBvbiBvdXIgaW50ZXJuYWwgTGludXggYnJhbmNoIGJhc2VkIG9uIHY1LjQu
MjQsIGFuZCBmaW5kIGl0IGRvIG5vdCB3b3JrCj4gPj4+IG9uIG15IHNpZGUuIE1heWJlIGZvciBw
bGF0Zm9ybSBjb3JlIGRyaXZlcnMsIHRoZXJlIGlzIGEgZ2FwIGJldHdlZW4gdjUuNC4yNAo+ID4+
PiBhbmQgdjUuNi1yYzcgd2hpY2ggaGFzIHRoZSBpbXBhY3QuCj4gPj4+IEkgd2lsbCB0cnkgdG8g
cHV0IG91ciBTTU1VIHJlbGF0ZWQgY29kZSBpbnRvIHY1LjYtcmM3LCB0aGVuIGRvIHRoZSB0ZXN0
IGFnYWluLgo+ID4+Pgo+ID4+Pgo+ID4+Cj4gPj4gSGkgVWxmLAo+ID4+Cj4gPj4gT24gdGhlIGxh
dGVzdCBMaW51eC1uZXh0IGJyYW5jaCwgdGhlIHRvcCBjb21taXQgODkyOTVjNTljMWYwNjNiNTMz
ZDA3MWNhNDlkMGZhMGMwNzgzY2E2ZiAodGFnOiBuZXh0LTIwMjAwMzI2KSwgYWZ0ZXIgYWRkIHlv
dXIgdHdvIHBhdGNoZXMsIEkganVzdCBhZGQgdGhlIHNpbXBsZSBkZWJ1ZyBjb2RlIGFzIGZvbGxv
d2luZyBpbiB0aGUgL2RyaXZlci9tbWMvY29yZS9xdWV1ZS5jLCBidXQgc2VlbXMgc3RpbGwgbm90
IHdvcmsgYXMgb3VyIGV4cGVjdCwgbG9naWNhbGx5LCBpdCBzaG91bGQgd29yaywgc28gY2FuIHlv
dSBvciBhbnlvbmUgdGVzdCBvbiBvdGhlciBwbGF0Zm9ybT8gVGhpcyBzZWVtcyB3ZWlyZC4KPiA+
Cj4gPiBZb3UgYXJlIHJpZ2h0LCB0aGlzIGRvZXNuJ3Qgd29yayBmb3IgcGxhdGZvcm0gZGV2aWNl
cyBiZWluZyBhZGRlZAo+ID4gdGhyb3VnaCB0aGUgT0YgcGF0aC4KPiA+Cj4gPiBJbiBvdGhlciB3
b3Jkcywgb2ZfcGxhdGZvcm1fZGV2aWNlX2NyZWF0ZV9wZGF0YSgpIG1hbnVhbGx5IGFsbG9jYXRl
cwo+ID4gdGhlIHBsYXRmb3JtIGRldmljZSBhbmQgYXNzaWducyBpdCB0aGUgJnBsYXRmb3JtX2J1
c190eXBlLCBidXQgd2l0aG91dAo+ID4gY2FsbGluZyBwbGF0Zm9ybV9kZXZpY2VfYWRkKCkuCj4g
Pgo+ID4gRm9yIGFtYmEsIGl0IHdvcmtzIGZpbmUsIGFzIGluIHRoYXQgT0YgcGF0aCwgYW1iYV9k
ZXZpY2VfYWRkKCkgaXMgY2FsbGVkLiBIbW0uCj4gPgo+ID4gSSByZS1zcGluIHRoaXMsIHRvIGFk
ZHJlc3MgdGhlIHByb2JsZW0uIFBlcmhhcHMgd2Ugc2ltcGx5IG5lZWQgdG8gdXNlCj4gPiB0aGUg
LT5wcm9iZSgpIHBhdGguCj4KPiBGV0lXIHdlIGFscmVhZHkgaGF2ZSBzZXR1cF9wZGV2X2RtYV9t
YXNrcygpLCBzbyBpdCBtaWdodCBiZSBsb2dpY2FsIHRvCj4gaW5jbHVkZSBkbWFfcGFybXMgaW4g
dGhlcmUgdG9vLgoKWWVwLCB0aGFua3MgZm9yIHRoZSBzdWdnZXN0aW9uLiBUaGlzIHdvcmsgZmlu
ZS4KClsuLi5dCgpLaW5kIHJlZ2FyZHMKVWZmZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
