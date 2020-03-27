Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC921959FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 16:35:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qMTMf3iBFGHwp4NhVyzM74wLPwN4kUk8qsVQaj3QywM=; b=mv38UdOP7i+8s4
	hoC5WB64ZurgrLTRDcuuNwcxJ1DccLmm8fYSY1FNkZmxzDI9lZGxNKrv9X0GooBGD9CKoQ95Ilhlz
	4mGy/VFE9uonVdcBLV24lDTfSCQ6NmCNXuK6pocO61VEyqgQr8n0I4IRKiRQfqguRVGHFT7ThzIUS
	qJlx2Ib1NJWl0WPc2KNnMwt6CAtl+fIok7uZanBHs4krvtHK84XNXhBGyPHFjTqV0fWEEMChU96vG
	rw6ZtKPkL0YXZxoe1/LzHRN/TtHHcxsWMfKadmis5ItKWVyxXJyT/shcdMshteIKXOLklY7s9eSTi
	uMFYyfofjqcDykCrWjBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHr1O-00068z-MA; Fri, 27 Mar 2020 15:35:46 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHr1D-00068B-EA
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 15:35:37 +0000
Received: by mail-vk1-xa41.google.com with SMTP id v129so2445610vkf.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 08:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=O9dJ6ogh71Pb5Yhc0YsPgqXvzYYmHlI805Hcr0oRvnk=;
 b=WQmCcaJLCjH+Y/bk6cBwlM3vi2NSt+Eo1g09Ot+7fbNbJKYqBw6CjniZE7QcITNlPu
 Bs6dlOdjHVOANKB+yfblfYscMNRyrifpLf0MH5dVuzCVI8MgPcxBQabIUqL1fBCk58TR
 kpqgBgkEVlBTLhMSzoEnc6cL2KLN09JjGoH+mTCFxuuJa9ao12aXGjekqKJ6cSvs1jxV
 VlEPO1mWVkD5bC6h6kwp/4C81u+OAZV1FZ8ZyGcbGGR6C9R7QNVmLGqPX7RE2R9Aq/SW
 hGtXbdg6xyAJG9dDQrhv+GgzTS1QEYGxtrkzL02rWrEp85aIUjM3G5M6M8eDaJ1noWbc
 AL7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=O9dJ6ogh71Pb5Yhc0YsPgqXvzYYmHlI805Hcr0oRvnk=;
 b=XRNaPKCsaycTaF/ffnUv0bhJvu1Kk7B3Uu4wevhQXYBttPfLD7ZzreRQCrn6yvsy9h
 OW8FhYbPc8XL/MXVl3hpmy9cROxcB/xpQQqXkerLtaJcoSGsZUhLnxjLigv6uQY6e2z7
 S9yL6VRYVrsqEMZgyzGv6T1MiuUff5r8dh3NeSLKzdbDkfC/EsPcIDVovcAwItzvChkO
 u5NAjhbR1A9inF+y+DXQuUFQ2hhG8LwZUWe9Dm8NHlzgX0kAuVxVOXcZej9O9xqaJMX5
 clJ9XgGdfjO0dp1HbsLKtRW9jkLit8B0RgJis4Iacm/cprtj+S91vpSCtSmaVm5CZAr6
 yqxQ==
X-Gm-Message-State: ANhLgQ1pVX73n9Wp9ZhcRIrWljMP9XFfESf5Ad4698j5IdZXd0jgxQTy
 7/HykIcdv6h9RRVnLHgEplRxjSNdRkxtihF3GgtW/g==
X-Google-Smtp-Source: ADFU+vtKz15viEUk4xOXDGYZGMYE5SXgcDqR/iXSCAChXlh2gnOavOfVTolvTnJ/rkcoYXRFryMu5lJ34uXAd7dKr3Q=
X-Received: by 2002:a1f:2947:: with SMTP id p68mr11663597vkp.43.1585323330353; 
 Fri, 27 Mar 2020 08:35:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200325113407.26996-1-ulf.hansson@linaro.org>
 <VI1PR04MB504097B40CE0B804FA60D67A90CF0@VI1PR04MB5040.eurprd04.prod.outlook.com>
 <VI1PR04MB5040FFADA4F780422E208AC390CC0@VI1PR04MB5040.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB5040FFADA4F780422E208AC390CC0@VI1PR04MB5040.eurprd04.prod.outlook.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 27 Mar 2020 16:34:53 +0100
Message-ID: <CAPDyKFr_yOmZ2MMvp=1krHejCRDRfhC0B+1icYR5xuZfhKy_ag@mail.gmail.com>
Subject: Re: [PATCH 0/2] amba/platform: Initialize dma_parms at the bus level
To: BOUGH CHEN <haibo.chen@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_083536_064577_971EB5EA 
X-CRM114-Status: GOOD (  32.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>, Ludovic Barre <ludovic.barre@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAyNyBNYXIgMjAyMCBhdCAwNDowMiwgQk9VR0ggQ0hFTiA8aGFpYm8uY2hlbkBueHAu
Y29tPiB3cm90ZToKPgo+Cj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTog
Qk9VR0ggQ0hFTgo+ID4gU2VudDogMjAyMOW5tDPmnIgyNuaXpSAxMjo0MQo+ID4gVG86IFVsZiBI
YW5zc29uIDx1bGYuaGFuc3NvbkBsaW5hcm8ub3JnPjsgR3JlZyBLcm9haC1IYXJ0bWFuCj4gPiA8
Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+OyBSYWZhZWwgSiAuIFd5c29ja2kgPHJhZmFlbEBr
ZXJuZWwub3JnPjsKPiA+IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKPiA+IENjOiBBcm5k
IEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPjsgQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+
Owo+ID4gUnVzc2VsbCBLaW5nIDxsaW51eEBhcm1saW51eC5vcmcudWs+OyBMaW51cyBXYWxsZWlq
IDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+Owo+ID4gVmlub2QgS291bCA8dmtvdWxAa2VybmVs
Lm9yZz47IEx1ZG92aWMgQmFycmUgPGx1ZG92aWMuYmFycmVAc3QuY29tPjsKPiA+IGxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgZG1hZW5naW5lQHZnZXIua2VybmVsLm9yZwo+
ID4gU3ViamVjdDogUkU6IFtQQVRDSCAwLzJdIGFtYmEvcGxhdGZvcm06IEluaXRpYWxpemUgZG1h
X3Bhcm1zIGF0IHRoZSBidXMgbGV2ZWwKPiA+Cj4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tCj4gPiA+IEZyb206IFVsZiBIYW5zc29uIDx1bGYuaGFuc3NvbkBsaW5hcm8ub3JnPgo+ID4g
PiBTZW50OiAyMDIw5bm0M+aciDI15pelIDE5OjM0Cj4gPiA+IFRvOiBHcmVnIEtyb2FoLUhhcnRt
YW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPjsgUmFmYWVsIEogLgo+ID4gPiBXeXNvY2tp
IDxyYWZhZWxAa2VybmVsLm9yZz47IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKPiA+ID4g
Q2M6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+OyBDaHJpc3RvcGggSGVsbHdpZyA8aGNo
QGxzdC5kZT47Cj4gPiA+IFJ1c3NlbGwgS2luZyA8bGludXhAYXJtbGludXgub3JnLnVrPjsgTGlu
dXMgV2FsbGVpago+ID4gPiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPjsgVmlub2QgS291bCA8
dmtvdWxAa2VybmVsLm9yZz47IEJPVUdIIENIRU4KPiA+ID4gPGhhaWJvLmNoZW5AbnhwLmNvbT47
IEx1ZG92aWMgQmFycmUgPGx1ZG92aWMuYmFycmVAc3QuY29tPjsKPiA+ID4gbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBkbWFlbmdpbmVAdmdlci5rZXJuZWwub3JnOyBVbGYK
PiA+ID4gSGFuc3NvbiA8dWxmLmhhbnNzb25AbGluYXJvLm9yZz4KPiA+ID4gU3ViamVjdDogW1BB
VENIIDAvMl0gYW1iYS9wbGF0Zm9ybTogSW5pdGlhbGl6ZSBkbWFfcGFybXMgYXQgdGhlIGJ1cwo+
ID4gPiBsZXZlbAo+ID4gPgo+ID4gPiBJdCdzIGN1cnJlbnRseSB0aGUgYW1iYS9wbGF0Zm9ybSBk
cml2ZXIncyByZXNwb25zaWJpbGl0eSB0byBpbml0aWFsaXplCj4gPiA+IHRoZSBwb2ludGVyLCBk
bWFfcGFybXMsIGZvciBpdHMgY29ycmVzcG9uZGluZyBzdHJ1Y3QgZGV2aWNlLiBUaGUKPiA+ID4g
YmVuZWZpdCB3aXRoIHRoaXMgYXBwcm9hY2ggYWxsb3dzIHVzIHRvIGF2b2lkIHRoZSBpbml0aWFs
aXphdGlvbiBhbmQKPiA+ID4gdG8gbm90IHdhc3RlIG1lbW9yeSBmb3IgdGhlIHN0cnVjdCBkZXZp
Y2VfZG1hX3BhcmFtZXRlcnMsIGFzIHRoaXMgY2FuCj4gPiA+IGJlIGRlY2lkZWQgb24gYSBjYXNl
IGJ5IGNhc2UgYmFzaXMuCj4gPiA+Cj4gPiA+IEhvd2V2ZXIsIGl0IGhhcyB0dXJuZWQgb3V0IHRo
YXQgdGhpcyBhcHByb2FjaCBpcyBub3QgdmVyeSBwcmFjdGljYWwuCj4gPiA+IE5vdCBvbmx5IGRv
ZXMgaXQgbGVhZCB0byBvcGVuIGNvZGluZywgYnV0IGFsc28gdG8gcmVhbCBlcnJvcnMuIEluCj4g
PiA+IHByaW5jaXBsZSBjYWxsZXJzIG9mCj4gPiA+IGRtYV9zZXRfbWF4X3NlZ19zaXplKCkgZG9l
c24ndCBjaGVjayB0aGUgZXJyb3IgY29kZSwgYnV0IGp1c3QgYXNzdW1lcwo+ID4gPiBpdCBzdWNj
ZWVkcy4KPiA+ID4KPiA+ID4gRm9yIHRoZXNlIHJlYXNvbnMsIHRoaXMgc2VyaWVzIGluaXRpYWxp
emVzIHRoZSBkbWFfcGFybXMgZnJvbSB0aGUKPiA+ID4gYW1iYS9wbGF0Zm9ybSBidXMgYXQgdGhl
IGRldmljZSByZWdpc3RyYXRpb24gcG9pbnQuIFRoaXMgYWxzbyBmb2xsb3dzCj4gPiA+IHRoZSB3
YXkgdGhlIFBDSSBkZXZpY2VzIGFyZSBiZWluZyBtYW5hZ2VkLCBzZWUgcGNpX2RldmljZV9hZGQo
KS4KPiA+ID4KPiA+ID4gSWYgaXQgdHVybnMgb3V0IHRoYXQgdGhpcyBpcyBhbiBhY2NlcHRhYmxl
IHNvbHV0aW9uLCB3ZSBwcm9iYWJseSBhbHNvCj4gPiA+IHdhbnQgdGhlIGNoYW5nZXMgZm9yIHN0
YWJsZSwgYnV0IEkgYW0gbm90IHN1cmUgaWYgaXQgYXBwbGllcyB3aXRob3V0IGNvbmZsaWN0cy4K
PiA+ID4KPiA+ID4gVGhlIHNlcmllcyBpcyBiYXNlZCBvbiB2NS42LXJjNy4KPiA+ID4KPiA+Cj4g
PiBIaSBVbGYsCj4gPgo+ID4gU2luY2UgaS5NWFFNIFNNTVUgcmVsYXRlZCBjb2RlIHN0aWxsIG5v
dCB1cHN0cmVhbSB5ZXQsIHNvIEkgYXBwbHkgeW91cgo+ID4gcGF0Y2hlcyBvbiBvdXIgaW50ZXJu
YWwgTGludXggYnJhbmNoIGJhc2VkIG9uIHY1LjQuMjQsIGFuZCBmaW5kIGl0IGRvIG5vdCB3b3Jr
Cj4gPiBvbiBteSBzaWRlLiBNYXliZSBmb3IgcGxhdGZvcm0gY29yZSBkcml2ZXJzLCB0aGVyZSBp
cyBhIGdhcCBiZXR3ZWVuIHY1LjQuMjQKPiA+IGFuZCB2NS42LXJjNyB3aGljaCBoYXMgdGhlIGlt
cGFjdC4KPiA+IEkgd2lsbCB0cnkgdG8gcHV0IG91ciBTTU1VIHJlbGF0ZWQgY29kZSBpbnRvIHY1
LjYtcmM3LCB0aGVuIGRvIHRoZSB0ZXN0IGFnYWluLgo+ID4KPiA+Cj4KPiBIaSBVbGYsCj4KPiBP
biB0aGUgbGF0ZXN0IExpbnV4LW5leHQgYnJhbmNoLCB0aGUgdG9wIGNvbW1pdCA4OTI5NWM1OWMx
ZjA2M2I1MzNkMDcxY2E0OWQwZmEwYzA3ODNjYTZmICh0YWc6IG5leHQtMjAyMDAzMjYpLCBhZnRl
ciBhZGQgeW91ciB0d28gcGF0Y2hlcywgSSBqdXN0IGFkZCB0aGUgc2ltcGxlIGRlYnVnIGNvZGUg
YXMgZm9sbG93aW5nIGluIHRoZSAvZHJpdmVyL21tYy9jb3JlL3F1ZXVlLmMsIGJ1dCBzZWVtcyBz
dGlsbCBub3Qgd29yayBhcyBvdXIgZXhwZWN0LCBsb2dpY2FsbHksIGl0IHNob3VsZCB3b3JrLCBz
byBjYW4geW91IG9yIGFueW9uZSB0ZXN0IG9uIG90aGVyIHBsYXRmb3JtPyBUaGlzIHNlZW1zIHdl
aXJkLgoKWW91IGFyZSByaWdodCwgdGhpcyBkb2Vzbid0IHdvcmsgZm9yIHBsYXRmb3JtIGRldmlj
ZXMgYmVpbmcgYWRkZWQKdGhyb3VnaCB0aGUgT0YgcGF0aC4KCkluIG90aGVyIHdvcmRzLCBvZl9w
bGF0Zm9ybV9kZXZpY2VfY3JlYXRlX3BkYXRhKCkgbWFudWFsbHkgYWxsb2NhdGVzCnRoZSBwbGF0
Zm9ybSBkZXZpY2UgYW5kIGFzc2lnbnMgaXQgdGhlICZwbGF0Zm9ybV9idXNfdHlwZSwgYnV0IHdp
dGhvdXQKY2FsbGluZyBwbGF0Zm9ybV9kZXZpY2VfYWRkKCkuCgpGb3IgYW1iYSwgaXQgd29ya3Mg
ZmluZSwgYXMgaW4gdGhhdCBPRiBwYXRoLCBhbWJhX2RldmljZV9hZGQoKSBpcyBjYWxsZWQuIEht
bS4KCkkgcmUtc3BpbiB0aGlzLCB0byBhZGRyZXNzIHRoZSBwcm9ibGVtLiBQZXJoYXBzIHdlIHNp
bXBseSBuZWVkIHRvIHVzZQp0aGUgLT5wcm9iZSgpIHBhdGguCgpLaW5kIHJlZ2FyZHMKVWZmZQoK
Pgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21tYy9jb3JlL3F1ZXVlLmMgYi9kcml2ZXJzL21tYy9j
b3JlL3F1ZXVlLmMKPiBpbmRleCAyNWJlZTNkYWY5ZTIuLmYwOTEyODBmN2ZmYiAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL21tYy9jb3JlL3F1ZXVlLmMKPiArKysgYi9kcml2ZXJzL21tYy9jb3JlL3F1
ZXVlLmMKPiBAQCAtNDAzLDYgKzQwMywxMyBAQCBzdGF0aWMgdm9pZCBtbWNfc2V0dXBfcXVldWUo
c3RydWN0IG1tY19xdWV1ZSAqbXEsIHN0cnVjdCBtbWNfY2FyZCAqY2FyZCkKPiAgICAgICAgICAg
ICAgICAgYmxrX3F1ZXVlX21heF9zZWdtZW50X3NpemUobXEtPnF1ZXVlLAo+ICAgICAgICAgICAg
ICAgICAgICAgICAgIHJvdW5kX2Rvd24oaG9zdC0+bWF4X3NlZ19zaXplLCBibG9ja19zaXplKSk7
Cj4KPiArICAgICAgIHByX2VycigiIyMjIyMjIHRoZSBtYXggc2VnbWVudCBzaXplIGlzICVkXG4i
LCBxdWV1ZV9tYXhfc2VnbWVudF9zaXplKG1xLT5xdWV1ZSkpOwo+ICsgICAgICAgaWYgKGhvc3Qt
PnBhcmVudC0+ZG1hX3Bhcm1zKSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICBwcl9lcnIoIiMj
IyMjIyMjIyB0aGUgZG1hIHBhcm1zIGhhcyB2YWx1ZVxuIik7Cj4gKyAgICAgICB9IGVsc2UgaWYg
KCEoaG9zdC0+cGFyZW50LT5kbWFfcGFybXMpKSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICBw
cl9lcnIoIiMjIyMjIyMjIHRoZSBkbWEgcGFybXMgaXMgemVybyEhXG4iKTsKPiArICAgICAgIH0K
PiArCj4gICAgICAgICBkbWFfc2V0X21heF9zZWdfc2l6ZShtbWNfZGV2KGhvc3QpLCBxdWV1ZV9t
YXhfc2VnbWVudF9zaXplKG1xLT5xdWV1ZSkpOwo+Cj4gICAgICAgICBJTklUX1dPUksoJm1xLT5y
ZWNvdmVyeV93b3JrLCBtbWNfbXFfcmVjb3ZlcnlfaGFuZGxlcik7Cj4KPiBIZXJlIGlzIHRoZSBs
b2cgSSBnb3Qgd2hlbiBzeXN0ZW0gcnVuLCBldmVuIGFmdGVyIHlvdXIgcGF0Y2gsIHRoZSBkZXYt
PmRtYV9wYXJtcyBpcyBzdGlsbCBOVUxMLgo+IFsgICAgMC45ODk4NTNdIG1tYzA6IG5ldyBIUzQw
MCBNTUMgY2FyZCBhdCBhZGRyZXNzIDAwMDEKPiBbICAgIDAuOTk1NzA4XSBzZGhjaS1lc2RoYy1p
bXggMzBiNTAwMDAubW1jOiBHb3QgQ0QgR1BJTwo+IFsgICAgMC45OTkzNzRdICMjIyMjIyB0aGUg
bWF4IHNlZ21lbnQgc2l6ZSBpcyA2NTAyNAo+IFsgICAgMS4wMDg1OTRdICMjIyMjIyMjIHRoZSBk
bWEgcGFybXMgaXMgemVybyEhCj4gWyAgICAxLjAxMjg3NV0gbW1jYmxrMDogbW1jMDowMDAxIElC
MjkzMiAyOS4yIEdpQgo+IFsgICAgMS4wMTc1NjldICMjIyMjIyB0aGUgbWF4IHNlZ21lbnQgc2l6
ZSBpcyA2NTAyNAo+IFsgICAgMS4wMjIxOTVdICMjIyMjIyMjIHRoZSBkbWEgcGFybXMgaXMgemVy
byEhCj4gWyAgICAxLjAyNjQ3OV0gbW1jYmxrMGJvb3QwOiBtbWMwOjAwMDEgSUIyOTMyIHBhcnRp
dGlvbiAxIDQuMDAgTWlCCj4gWyAgICAxLjAzMjU0MV0gIyMjIyMjIHRoZSBtYXggc2VnbWVudCBz
aXplIGlzIDY1MDI0Cj4gWyAgICAxLjAzNTE5OF0gbW1jMTogU0RIQ0kgY29udHJvbGxlciBvbiAz
MGI1MDAwMC5tbWMgWzMwYjUwMDAwLm1tY10gdXNpbmcgQURNQQo+IFsgICAgMS4wMzcxNjldICMj
IyMjIyMjIHRoZSBkbWEgcGFybXMgaXMgemVybyEhCj4gWyAgICAxLjA0ODQ5M10gbW1jYmxrMGJv
b3QxOiBtbWMwOjAwMDEgSUIyOTMyIHBhcnRpdGlvbiAyIDQuMDAgTWlCCj4gWyAgICAxLjA1NDUz
MV0gbW1jYmxrMHJwbWI6IG1tYzA6MDAwMSBJQjI5MzIgcGFydGl0aW9uIDMgNC4wMCBNaUIsIGNo
YXJkZXYgKDIzNDowKQo+Cj4KPiBSZWdhcmRzCj4gSGFpYm8gQ2hlbgo+ID4gQmVzdCBSZWdhcmRz
Cj4gPiBIYWlibyBDaGVuCj4gPgo+ID4gPiBLaW5kIHJlZ2FyZHMKPiA+ID4gVWxmIEhhbnNzb24K
PiA+ID4KPiA+ID4gVWxmIEhhbnNzb24gKDIpOgo+ID4gPiAgIGRyaXZlciBjb3JlOiBwbGF0Zm9y
bTogSW5pdGlhbGl6ZSBkbWFfcGFybXMgZm9yIHBsYXRmb3JtIGRldmljZXMKPiA+ID4gICBhbWJh
OiBJbml0aWFsaXplIGRtYV9wYXJtcyBmb3IgYW1iYSBkZXZpY2VzCj4gPiA+Cj4gPiA+ICBkcml2
ZXJzL2FtYmEvYnVzLmMgICAgICAgICAgICAgIHwgMiArKwo+ID4gPiAgZHJpdmVycy9iYXNlL3Bs
YXRmb3JtLmMgICAgICAgICB8IDEgKwo+ID4gPiAgaW5jbHVkZS9saW51eC9hbWJhL2J1cy5oICAg
ICAgICB8IDEgKwo+ID4gPiAgaW5jbHVkZS9saW51eC9wbGF0Zm9ybV9kZXZpY2UuaCB8IDEgKwo+
ID4gPiAgNCBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPiA+ID4KPiA+ID4gLS0KPiA+
ID4gMi4yMC4xCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
