Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E811B6E2D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 08:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QV4uRcjY7GH/QBuJEsubekpoFLYFgojBr24jwLVGW6s=; b=AtdMa28sqWAWQe
	BdiZr5EKuy9ofePnID9AvgyBT39vbDigpTLoolBm6mZpqSx/kIsn0JX6CWqGh3tDjhkOprD/KDvBS
	3MNNqyVpZcLqQ1x1Fll9uVR6DQrsD4OafuXpjwQGBjt2deOOZ4Cc9wBvv3TirdBQH2ay5zn7j6Ls8
	NLzkK/GcAnqcGcX/YyHmUqUGezf2SHoRI/1QaY0xRcvpAiQcyByvCzEgC87uOGSjFEUwl1abRpiQa
	fome6ESBp8AhdoWVgib/4hwY9aweq/t5tN/K2UMBKDhRrHtkbz9pvQYIcXGsPEx4kcfSfCLW/7mKh
	PVNy8gX7pPx4ACsLus+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRroR-0006sd-K4; Fri, 24 Apr 2020 06:27:47 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRroE-0006rM-8j
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 06:27:40 +0000
Received: by mail-wm1-x342.google.com with SMTP id u16so9360872wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 23:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=UG4zneR+b2HX1vUABd9tEJTmiup5w9fG3+R5EQZb+0w=;
 b=qBQDR3rE5Zj/ATnIxvJjzyRU6q2opvmNDRcRX86ol/sJus6g3Jj+CYkD4T/5gNdCWO
 JrVDy6gxhkTdOjmj74r+UlZF3rm/x3MEhEmkWveasJOryF+aiGi9+UjvgDHHiwUU28Av
 +1y6tjhB1pPBrogQpqOuWptMo+8I4d39bLmKpiG1pNmsyPZH2bVjvkpryhm7WfJkR148
 C6LrJeJ6GkimBmzuKgdvPg5ZcIc9EDFX4PsPgC0LpW6YKcj8U7tK/tDsAiTxHTPU7aDy
 qAa8Zv6MgDPFo3nByyWpC+0yrw8No80ruodXFWIH9xTfJ6ykgfXllYaOFEcTBxBV7BgK
 p3kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=UG4zneR+b2HX1vUABd9tEJTmiup5w9fG3+R5EQZb+0w=;
 b=X9vuaLYUACNyZF9IAKDhvFLr2nTL7w3o2wBx4F2yVuQHanEpihtNtC7PxlXD3pWxVC
 nCl80WJc1bpqeFDguYHKvLVBfqhNq5J4fde9+yotHw34TaxnP41XY8kUs0vDTpjOaFb2
 BkMfbXnKKtWZprXPx/aAnMvRrzoQ8NEgAXQCFEzW5+wRVvhB8I2wsKpFEQEwkYJJH0b5
 VSA1tR+b04RLZlwiiHetUt8QETepCh59PlX93UujyIq3ey94Q2DbL2IsNwieZ6BDKL0T
 n71vrPezs+Q5yLFs5XKm2SmrF/ELNnNNsZPTZcEpQY/gyU/21Ip2Cn1hrNmJZW2w6fAT
 67mA==
X-Gm-Message-State: AGi0PuacvsEVO/cnvwDuFILVm+YyvKloI8wYa2oFTweTpFzX2A/aDwPj
 CFCP3D1hoHOPbN50P7a8G+ZuOg==
X-Google-Smtp-Source: APiQypIm/Xjji5kQV2xW2buV/Rqqhd1gGi3AXANx2GMzwAiPHMVTVrnTO3qT8sfTAdAnbA3M9ll8eg==
X-Received: by 2002:a1c:4e15:: with SMTP id g21mr8007933wmh.29.1587709650747; 
 Thu, 23 Apr 2020 23:27:30 -0700 (PDT)
Received: from dell ([2.31.163.63])
 by smtp.gmail.com with ESMTPSA id j13sm6722742wro.51.2020.04.23.23.27.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 23:27:29 -0700 (PDT)
Date: Fri, 24 Apr 2020 07:27:27 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Aisheng Dong <aisheng.dong@nxp.com>
Subject: Re: [PATCH v3 01/13] mfd: Add i.MX generic mix support
Message-ID: <20200424062727.GI3612@dell>
References: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
 <1586937773-5836-2-git-send-email-abel.vesa@nxp.com>
 <20200417080747.GE2167633@dell>
 <20200422091854.rhtkcfrdptwofngs@fsr-ub1664-175>
 <AM6PR04MB4966B3527BF97918C1689A4580D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM6PR04MB4966B3527BF97918C1689A4580D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_232734_850890_6C8FFBCF 
X-CRM114-Status: GOOD (  27.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "arnd@arndb.de" <arnd@arndb.de>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAyMyBBcHIgMjAyMCwgQWlzaGVuZyBEb25nIHdyb3RlOgoKPiA+IEZyb206IEFiZWwg
VmVzYSA8YWJlbC52ZXNhQG54cC5jb20+Cj4gPiBTZW50OiBXZWRuZXNkYXksIEFwcmlsIDIyLCAy
MDIwIDU6MTkgUE0KPiA+IE9uIDIwLTA0LTE3IDA5OjA3OjQ3LCBMZWUgSm9uZXMgd3JvdGU6Cj4g
PiA+IE9uIFdlZCwgMTUgQXByIDIwMjAsIEFiZWwgVmVzYSB3cm90ZToKPiA+ID4KPiA+ID4gPiBT
b21lIG9mIHRoZSBpLk1YIFNvQ3MgaGF2ZSBhIElQIGZvciBpbnRlcmZhY2luZyB0aGUgZGVkaWNh
dGVkIElQcwo+ID4gPiA+IHdpdGggY2xvY2tzLCByZXNldHMgYW5kIGludGVycnVwdHMsIHBsdXMg
c29tZSBvdGhlciBzcGVjaWZpYyBjb250cm9sIHJlZ2lzdGVycy4KPiA+ID4gPiBUbyBhbGxvdyB0
aGUgZnVuY3Rpb25hbGl0eSB0byBiZSBzcGxpdCBiZXR3ZWVuIGRyaXZlcnMsIHRoaXMgTUZECj4g
PiA+ID4gZHJpdmVyIGlzIGFkZGVkIHRoYXQgaGFzIG9ubHkgdHdvIHB1cnBvc2VzOiByZWdpc3Rl
ciB0aGUgZGV2aWNlcyBhbmQKPiA+ID4gPiBtYXAgdGhlIGVudGlyZSByZWdpc3RlciBhZGRyZXNz
ZXMuIEV2ZXJ5dGhpbmcgZWxzZSBpcyBsZWZ0IHRvIHRoZQo+ID4gPiA+IGRlZGljYXRlZCBkcml2
ZXJzIHRoYXQgd2lsbCBiaW5kIHRvIHRoZSByZWdpc3RlcmVkIGRldmljZXMuCj4gPiA+ID4KPiA+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBBYmVsIFZlc2EgPGFiZWwudmVzYUBueHAuY29tPgo+ID4gPiA+
IC0tLQo+ID4gPiA+ICBkcml2ZXJzL21mZC9LY29uZmlnICAgfCAxMSArKysrKysrKysrKwo+ID4g
PiA+ICBkcml2ZXJzL21mZC9NYWtlZmlsZSAgfCAgMSArCj4gPiA+ID4gIGRyaXZlcnMvbWZkL2lt
eC1taXguYyB8IDQ4Cj4gPiA+ID4gKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrCj4gPiA+ID4gIDMgZmlsZXMgY2hhbmdlZCwgNjAgaW5zZXJ0aW9ucygrKQo+
ID4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tZmQvaW14LW1peC5jCj4gPiA+Cj4g
PiA+IEZvciBjb21wbGV0ZW5lc3MgLSBBcm5kJ3MgcmVwbHkgdG8gdGhpcyBwYXRjaDoKPiA+ID4K
PiA+IAo+ID4gSSdtIHJlcGx5aW5nIGhlcmUgdG8gQXJuZCdzIHJlcGx5Lgo+ID4gCj4gPiBJJ20g
dHJ5aW5nIHRvIGdpdmUgaGVyZSBhIHdob2xlIHBpY3R1cmUgb2YgdGhlIGVudGlyZSBwcm9ibGVt
IHdoaWxlIHRoZQo+ID4gZG9jdW1lbnRhdGlvbiBmb3IgaS5NWDhNUCBpcyBfbm90IHlldF8gcHVi
bGljLgo+ID4gCj4gPiBIaXN0b3JpY2FsbHksIGVhY2ggSVAgd291bGQgaGF2ZSBpdHMgb3duIGVu
Y2xvc3VyZSBmb3IgYWxsIHRoZSByZWxhdGVkIEdQUnMuCj4gPiBTdGFydGluZyB3aXRoIGkuTVg4
TVAgc29tZSBHUFJzIChhbmQgc29tZSBzdWJwYXJ0cykgZnJvbSB0aGUgSVAgd2VyZSBwbGFjZWQK
PiA+IGluc2lkZSB0aGVzZSBtaXhlcy4KPiA+IAo+ID4gQXVkaW9taXggZm9yIGV4YW1wbGUsIGhh
cyBtdWx0aXBsZSBTQUlzLCBhIFBMTCwgYW5kIHNvbWUgcmVzZXQgYml0cyBmb3IgRUFSQwo+ID4g
YW5kIHNvbWUgR1BScyBmb3IgQXVkaW9EU1AuIFRoaXMgbWVhbnMgdGhhdCBpLk1YOE1QIGhhcyA3
IFNBSXMsIDEgRUFSQyBhbmQKPiA+IDEgQXVkaW9EU1AuCj4gPiBGdXR1cmUgcGxhdGZvcm1zIG1p
Z2h0IGhhdmUgZGlmZmVyZW50IG51bWJlcnMgb2YgU0FJcywgRUFSQ3Mgb3IgQXVkaW9EU1BzLgo+
ID4gVGhlIFBMTCBjYW4ndCBiZSBwbGFjZWQgaW4gb25lIG9mIHRob3NlIFNBSXMgYW5kIGl0IHdh
cyBwbGFjZWQgaW4gYXVkaW9taXguCj4gPiBUaGUgaS5NWDhNUCBoYXMgYXQgbGVhc3QgNCBvZiB0
aGVzZSBtaXhlcy4KPiA+IAo+ID4gTm93LCB0aGUgY29tbW9uYWxpdGllcyBiZXR3ZWVuIGFsbCBt
aXhlcyBhcmU6Cj4gPiAgLSBoYXZlIHRoZWlyIG93biBwb3dlciBkb21haW5zCj4gPiAgLSBkcml2
ZW4gYnkgZGVkaWNhdGVkIGNsb2NrIHNsaWNlCj4gPiAgLSBjb250YWluIGNsb2NrcyBhbmQgcmVz
ZXRzCj4gPiAgLSBzb21lIHZlcnkgc3Vic3lzdGVtIHNwZWNpZmljIEdQUnMKPiA+IAo+ID4gS25v
d2luZyB0aGF0IGVhY2ggbWl4IGhhcyBpdHMgb3duIHBvd2VyIGRvbWFpbiwgQUZBSUNULCBpdCBu
ZWVkcyB0byBiZQo+ID4gcmVnaXN0ZXJlZCBhcyBhIHNpbmdsZSBkZXZpY2UuIENvbnNpZGVyaW5n
IHRoYXQgaXQgY2FuIGhhdmUgY2xvY2tzIChhdWRpb21peCBoYXMKPiA+IGdhdGVzLCBtdXhlcyBh
bmQgcGxscyksIEkgYmVsaWV2ZSB0aGF0IG5lZWRzIGEgY2xvY2sgZHJpdmVyLCBldmVuIG1vcmUg
c28gc2luY2UgdGhlCj4gPiBtdXhlcyBuZWVkIHRoZWlyIHBhcmVudHMgZnJvbSB0aGUgcGxhdGZv
cm0gY2xvY2sgZHJpdmVyLiBTYW1lIHByaW5jaXBsZSBhcHBsaWVzCj4gPiB0byByZXNldCBiaXRz
LiBUaGUgc3Vic3lzdGVtIHNwZWNpZmljIEdQUnMgY2FuIGJlIHJlZ2lzdGVyZWQgYXMgc3lzY29u
IGRldmljZXMKPiA+IGFuZCB0YWtlbiBjYXJlIG9mIGJ5IGl0cyBjb3VudGVycGFydCBJUCAoZS5n
LiB0aGUgQXVkaW9EU1Agc3BlY2lmaWMgcmVncyB3b3VsZCBiZQo+ID4gdGFrZW4gY2FyZSBvZiBi
eSB0aGUgRFNQIGRyaXZlciwgaWYgdGhlcmUgaXMgb25lKS4KPiA+IAo+ID4gTm93IGJhc2VkIG9u
IGFsbCBvZiB0aGUgYWJvdmUsIGJ5IHVzaW5nIE1GRCB3ZSB0YWtlIGNhcmUgb2YgdGhlIHBvd2Vy
IGRvbWFpbgo+ID4gY29udHJvbCBmb3IgdGhlIGVudGlyZSBtaXgsIHBsdXMsIHRoZSBNRkQgZG9l
c24ndCBoYXZlIGFueSBraW5kIG9mIGZ1bmN0aW9uYWxpdHkKPiA+IGJ5IGl0cyBvd24sIHJlbHlp
bmcgb24gaXRzIGNoaWxkcmVuIGRldmljZXMgdGhhdCBhcmUgcG9wdWxhdGVkIGJhc2VkIG9uIHdo
YXQgaXMgaW4KPiA+IHRoZSBtaXggTUZEIGRldmljZXRyZWUgbm9kZS4KPiA+IAo+IAo+IEhvdyBh
Ym91dCBkb2luZyBsaWtlIHRoaXMgd2hpY2ggbWF5YmUgY2FuIGFkZHJlc3MgQXJuZCdzIGNvbmNl
cm5zPwo+IGF1ZGlvbWl4OiBhdWRpb21peEAzMGUyMDAwMCB7Cj4gICAgICAgICBjb21wYXRpYmxl
ID0gImZzbCxpbXg4bXAtYXVkaW9taXgiLCAic3lzY29uIjsKPiAgICAgICAgIHJlZyA9IDwweDMw
ZTIwMDAwIHh4eD4sCj4gICAgICAgICAgICAgICA8MHgzMGUyMHh4eCB4eHg+Owo+ICAgICAgICAg
cmVnLW5hbWVzID0gImF1ZGlvIiwgInJlc2V0IiwgIi4uLiI7Cj4gICAgICAgICAjY2xvY2stY2Vs
bHMgPSA8MT47Cj4gICAgICAgICAjcmVzZXQtY2VsbHMgPSA8MT47Cj4gICAgICAgICBwb3dlci1k
b21haW5zID0gPCZhdWRpb21peF9wZD47Cj4gfQo+IAo+IFRoYXQgbWVhbnMgd2UgaGF2ZSBvbmUg
Y29tYm8gZHJpdmVyIHJlZ2lzdGVyaW5nIHR3byBjb250cm9sbGVycyAoY2xrL3Jlc2V0KSwgYm90
aCB1c2UKPiB0aGUgc2FtZSBwb3dlciBkb21haW4gYXMgYXVkaW9taXguCj4gQW5kIGl0IGNhbiBi
ZSBlYXNpbHkgZXh0ZW5kZWQgdG8gc3VwcG9ydCBtb3JlIHNlcnZpY2VzIHByb3ZpZGVkIGJ5IGF1
ZGlvbWl4IG92ZXIgc3lzY29uCj4gaWYgbmVlZGVkLgo+IFRoZW4gdGhlICdkdW1teScgTURGIGRy
aXZlciBpcyBub3QgbmVlZGVkIGFueW1vcmUuCj4gCj4gSm9uZXMgJiBBcm5kLAo+IEhvdyBkbyB5
b3UgdGhpbms/CgpTb3VuZHMgb2theSBpbiBwcmluY2lwbGUuICBBbnl0aGluZyB0aGF0IHByZXZl
bnRzIHRoZSBleGlzdGVuY2Ugb2YgYQpkdW1teSAoYS5rLmEuIHBvaW50bGVzcykgTUZEIG11c3Qg
YmUgc2VlbiBhcyBhIHBvc2l0aXZlIG1vdmUuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxp
bmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBz
b2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwg
QmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
