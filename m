Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FBF319B16
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 12:12:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=65OYOP+V+zAVC6yA+Go89x6Y81L0LldK/CzSkfUsS8M=; b=nunRe/ZlkyrxXp
	b/OggxcjJTlkiLUh1f9IoR0sd/1t0l8uz1z+0mqbUhKuSUC3ECZKLkuR2tbFbdMTVUxYLXm0KAtzE
	sH49Zaz4jIKxLLen7b+L1BNjMQ4l56IcZc7YIgLBKMppJ/YAMnB9FtDnlEq1iB41pDPbi4MSf79bP
	tbLlg9iSN0+NvpMNMp4Lyq48xUa00jfPtu2rAGLiJ7adB37SScaZk1r4M8COUfbrCtWHesZZ/tayF
	zrtb2zP+kGoJX1x0iJORZV+CFiucC1SibbLxPTIxrWhaHQfJYcWkanC1gW86O0RmZqRwPpHZQ6MdE
	FSRjudjQCTQTYL/7wHeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP2W2-0003RW-0L; Fri, 10 May 2019 10:12:34 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP2Vt-0003Ql-TF
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 10:12:27 +0000
Received: by mail-pl1-x642.google.com with SMTP id n8so2618872plp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 03:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=YEAAdnjFo5d+nFsQyBOaqPUBBRxUoX1ZF3WyvxMrBkU=;
 b=dl1ae2wHT+zVPYcECGFIgL/JB+F87tAIPyE5pOOUzeAWOS8WhEZFvYwWwvDt6dQfgl
 Sij0E5EcRupjwid6veCbXVlELd9V4px46nUA76L/Ai8p6ARnK8ST9zb5Ec8Pm85yVDbp
 7e9ecxLxiR7+VeJkkfIEvNeqH2Udtv6W0KSgIjZ3p82GQFvga5A51plKiGWCVJ9Ku9PS
 vaSndTfCi3RIhfoFOLxje1cSNTFWABYzd+t6143p8X2M48ByiV9Zr6hJdgDUO8KSnbOx
 /Q9xTOyATyexqP+H41AZg6czlsQXGWjTK4FwgW74IdyATyMZFQDa1CL6t3ACjeCQi3zO
 3q5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=YEAAdnjFo5d+nFsQyBOaqPUBBRxUoX1ZF3WyvxMrBkU=;
 b=sv3KuEB7Q4aT3FHSfoFHIp0zEq/ePzn6Teip/XaQE7cxwLIn7NpQnK44uZl8bvjbY2
 pLD0XzspiaSvNBpxMYHQWmk37idQGimlAedCpH+SiaCcWuNNuthEdkdfPGwegEQSZ43P
 Hjqw/dggnV0GYjLb0tX58YK/Sp+5OHM0agzTZ6LirW3SgPWvOu8XtU4jaxpMbaqPaLYR
 VPizvWxxwM5MsRDFE7t+WbyEI36+WenrG4obC5WRGMyuqBt0fAEatIgYRxg5B5m/QcgQ
 WVW1BYiU/Vp53bHofxXSIsCPEqU530MWmhn33ILMmR4z8ffQHNdevkKA/A1x+ar0cteB
 XhAA==
X-Gm-Message-State: APjAAAXDSnYrXtpytn8E1HQvHLCL37FtcA2izUHW0WuO+ukbLinRqAOX
 iqSbNTrcl4hvjvAlSm/EgSGB9/NtDtQ=
X-Google-Smtp-Source: APXvYqxKrnh807PzQYhRXIk7/R9rWTSh3mHRassJS1OSBIxgT137TWREOpor2e2oLQn4J3ONB28xVg==
X-Received: by 2002:a17:902:d24:: with SMTP id
 33mr11638563plu.148.1557483143830; 
 Fri, 10 May 2019 03:12:23 -0700 (PDT)
Received: from localhost ([122.172.118.99])
 by smtp.gmail.com with ESMTPSA id b14sm5970214pfi.92.2019.05.10.03.12.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 May 2019 03:12:21 -0700 (PDT)
Date: Fri, 10 May 2019 15:42:19 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Andy Tang <andy.tang@nxp.com>
Subject: Re: [EXT] Re: [PATCH v6] arm64: dts: ls1088a: add one more thermal
 zone node
Message-ID: <20190510101219.oruzvzlk7mm6iahw@vireshk-i7>
References: <20190423022507.34969-1-andy.tang@nxp.com>
 <20190510031335.GD15856@dragon>
 <VI1PR04MB4333D24227603D1497BA3CB9F30C0@VI1PR04MB4333.eurprd04.prod.outlook.com>
 <9fb2e306-38c7-2af7-5470-ff5bc4e23370@linaro.org>
 <VI1PR04MB4333372C1DABD0E4C9DD7FE8F30C0@VI1PR04MB4333.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB4333372C1DABD0E4C9DD7FE8F30C0@VI1PR04MB4333.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_031225_944753_F4D9C229 
X-CRM114-Status: GOOD (  26.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "edubezval@gmail.com" <edubezval@gmail.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "rui.zhang@intel.com" <rui.zhang@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAtMDUtMTksIDA4OjQ3LCBBbmR5IFRhbmcgd3JvdGU6Cj4gKyBWaXJlc2ggZm9yIGhlbHAu
Cj4gCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogRGFuaWVsIExlemNh
bm8gPGRhbmllbC5sZXpjYW5vQGxpbmFyby5vcmc+Cj4gPiBTZW50OiAyMDE55bm0NeaciDEw5pel
IDE1OjE3Cj4gPiBUbzogQW5keSBUYW5nIDxhbmR5LnRhbmdAbnhwLmNvbT47IFNoYXduIEd1byA8
c2hhd25ndW9Aa2VybmVsLm9yZz4KPiA+IENjOiBMZW8gTGkgPGxlb3lhbmcubGlAbnhwLmNvbT47
IHJvYmgrZHRAa2VybmVsLm9yZzsKPiA+IG1hcmsucnV0bGFuZEBhcm0uY29tOyBsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7Cj4gPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9y
ZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsKPiA+IGxpbnV4LXBtQHZnZXIua2VybmVs
Lm9yZzsgcnVpLnpoYW5nQGludGVsLmNvbTsgZWR1YmV6dmFsQGdtYWlsLmNvbQo+ID4gU3ViamVj
dDogUmU6IFtFWFRdIFJlOiBbUEFUQ0ggdjZdIGFybTY0OiBkdHM6IGxzMTA4OGE6IGFkZCBvbmUg
bW9yZSB0aGVybWFsCj4gPiB6b25lIG5vZGUKPiA+IAo+ID4gQ2F1dGlvbjogRVhUIEVtYWlsCj4g
PiAKPiA+IE9uIDEwLzA1LzIwMTkgMDU6NDAsIEFuZHkgVGFuZyB3cm90ZToKPiA+ID4+IC0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiA+PiBGcm9tOiBTaGF3biBHdW8gPHNoYXduZ3VvQGtl
cm5lbC5vcmc+Cj4gPiA+PiBTZW50OiAyMDE55bm0NeaciDEw5pelIDExOjE0Cj4gPiA+PiBUbzog
QW5keSBUYW5nIDxhbmR5LnRhbmdAbnhwLmNvbT4KPiA+ID4+IENjOiBMZW8gTGkgPGxlb3lhbmcu
bGlAbnhwLmNvbT47IHJvYmgrZHRAa2VybmVsLm9yZzsKPiA+ID4+IG1hcmsucnV0bGFuZEBhcm0u
Y29tOyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7Cj4gPiA+PiBkZXZpY2V0
cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsKPiA+ID4+
IGxpbnV4LXBtQHZnZXIua2VybmVsLm9yZzsgZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZzsKPiA+
ID4+IHJ1aS56aGFuZ0BpbnRlbC5jb207IGVkdWJlenZhbEBnbWFpbC5jb20KPiA+ID4+IFN1Ympl
Y3Q6IFtFWFRdIFJlOiBbUEFUQ0ggdjZdIGFybTY0OiBkdHM6IGxzMTA4OGE6IGFkZCBvbmUgbW9y
ZQo+ID4gPj4gdGhlcm1hbCB6b25lIG5vZGUKPiA+ID4+Cj4gPiA+PiBDYXV0aW9uOiBFWFQgRW1h
aWwKPiA+ID4+Cj4gPiA+PiBPbiBUdWUsIEFwciAyMywgMjAxOSBhdCAxMDoyNTowN0FNICswODAw
LCBZdWFudGlhbiBUYW5nIHdyb3RlOgo+ID4gPj4+IExzMTA4OGEgaGFzIDIgdGhlcm1hbCBzZW5z
b3JzLCBjb3JlIGNsdXN0ZXIgYW5kIFNvQyBwbGF0Zm9ybS4gQ29yZQo+ID4gPj4+IGNsdXN0ZXIg
c2Vuc29yIGlzIHVzZWQgdG8gbW9uaXRvciB0aGUgdGVtcGVyYXR1cmUgb2YgY29yZSBhbmQgU29D
Cj4gPiA+Pj4gcGxhdGZvcm0gaXMgZm9yIHBsYXRmb3JtLiBUaGUgY3VycmVudCBkdHMgb25seSBz
dXBwb3J0IHRoZSBmaXJzdCBzZW5zb3IuCj4gPiA+Pj4gVGhpcyBwYXRjaCBhZGRzIHRoZSBzZWNv
bmQgc2Vuc29yIG5vZGUgdG8gZHRzIHRvIGVuYWJsZSBpdC4KPiA+ID4+Pgo+ID4gPj4+IFNpZ25l
ZC1vZmYtYnk6IFl1YW50aWFuIFRhbmcgPGFuZHkudGFuZ0BueHAuY29tPgo+ID4gPj4+IC0tLQo+
ID4gPj4+IHY2Ogo+ID4gPj4+ICAgICAgICAgLSBhZGQgY29vbGluZyBkZXZpY2UgbWFwIHRvIGNw
dTAtNyBpbiBwbGF0Zm9ybSBub2RlLgo+ID4gPiBJIGxpa2UgdG8gZXhwbGFpbiBhIGxpdHRsZS4g
SSB0aGluayBpdCBtYWtlcyBzZW5zZSB0aGF0IG11bHRpcGxlIHRoZXJtYWwgem9uZQo+ID4gbWFw
IHRvIHNhbWUgY29vbGluZyBkZXZpY2UuCj4gPiA+IEluIHRoaXMgd2F5LCBubyBtYXR0ZXIgd2hp
Y2ggdGhlcm1hbCB6b25lIHJhaXNlcyBhIHRlbXAgYWxhcm0sIGl0IGNhbiBjYWxsCj4gPiBjb29s
aW5nIGRldmljZSB0byBjaGlsbCBvdXQuCj4gPiA+IEkgYWxzbyBhc2tlZCBjcHVmcmVxIG1haW50
YWluZXIgYWJvdXQgdGhlIGNvb2xpbmcgbWFwIGlzc3VlLCBoZSB0aGluayBpdAo+ID4gd291bGQg
YmUgZmluZS4KClllcywgeW91IGFza2VkIG1lIGFuZCBJIHNhaWQgaXQgc2hvdWxkIGJlIG9rYXku
Cgo+ID4gPiBJIGhhdmUgdGVzdGVkIGFuZCBubyBpc3N1ZSBmb3VuZC4KPiA+ID4KPiA+ID4gRGFu
aWVsLCB3aGF0J3MgeW91ciB0aG91Z2h0Pwo+ID4gCj4gPiBJZiB0aGVyZSBhcmUgbXVsdGlwbGUg
dGhlcm1hbCB6b25lcywgdGhleSB3aWxsIGJlIG1hbmFnZWQgYnkgZGlmZmVyZW50Cj4gPiBpbnN0
YW5jZXMgb2YgYSB0aGVybWFsIGdvdmVybm9yLiBFYWNoIGluc3RhbmNlcyB3aWxsIGFjdCBvbiB0
aGUgc2hhcmVkIGNvb2xpbmcKPiA+IGRldmljZSBhbmQgd2lsbCBjb2xsaWRlIGluIHRoZWlyIGRl
Y2lzaW9uczoKPiA+IAo+ID4gIC0gSWYgdGhlIHNlbnNvcnMgYXJlIGNsb3NlZCwgdGhlaXIgYmVo
YXZpb3Igd2lsbCBiZSBzaW1pbGFyIHJlZ2FyZGluZyB0aGUKPiA+IHRlbXBlcmF0dXJlLiBUaGUg
Z292ZXJub3JzIG1heSB0YWtlIHRoZSBzYW1lIGRlY2lzaW9uIGZvciB0aGUgY29vbGluZwo+ID4g
ZGV2aWNlLiBCdXQgaW4gc3VjaCBjYXNlIGhhdmluZyBqdXN0IG9uZSB0aGVybWFsIHpvbmUgbWFu
YWdlZCBpcyBlbm91Z2guCj4gPiAKPiA+ICAtIElmIHRoZSBzZW5zb3JzIGFyZSBub3QgY2xvc2Vk
LCB0aGVpciBiZWhhdmlvciB3aWxsIGJlIGRpZmZlcmVudCByZWdhcmRpbmcgdGhlCj4gPiB0ZW1w
ZXJhdHVyZS4gVGhlIGdvdmVybm9ycyB3aWxsIHRha2UgZGlmZmVyZW50IGRlY2lzaW9uIHJlZ2Fy
ZGluZyB0aGUgY29vbGluZwo+ID4gZGV2aWNlIChvbmUgd2lsbCBkZWNyZWFzZSB0aGUgZnJlcSwg
b3RoZXIgd2lsbCBpbmNyZWFzZSB0aGUgZnJlcSkuCj4gPiAKPiA+IEFzIHRoZSB0aGVybWFsIGdv
dmVybm9ycyBhcmUgbm90IGFibGUgdG8gbWFuYWdlIHNldmVyYWwgdGhlcm1hbCB6b25lcyBhbmQK
PiA+IHRoZXJlIGlzIG9uZSBjb29saW5nIGRldmljZSAodGhlIGNwdSBjb29saW5nIGRldmljZSks
IHRoaXMgc2V0dXAgd29uJ3Qgd29yayBhcwo+ID4gZXhwZWN0ZWQgSU1PLgo+ID4gCj4gPiBUaGUg
c2V0dXAgbWFraW5nIHNlbnNlIGlzIGhhdmluZyBhIHRoZXJtYWwgem9uZSBwZXIgJ2NsdXN0ZXIn
IGFuZCBhIGNvb2xpbmcKPiA+IGRldmljZSBwZXIgJ2NsdXN0ZXInLiBUaGF0IG1lYW5zIHRoZSBw
bGF0Zm9ybSBoYXMgb25lIGNsb2NrIGxpbmUgcGVyICdjbHVzdGVyJy4KPiA+IFRoZSB0aGVybWFs
IG1hbmFnZW1lbnQgaGFwcGVucyBpbiBhIHNlbGYtY29udGFpbmVkIHRoZXJtYWwgem9uZSAob25l
Cj4gPiBjb29saW5nIGRldmljZSAtIG9uZSBnb3Zlcm5vciAtIG9uZSB0aGVybWFsIHpvbmUpLgo+
ID4gCj4gPiBJbiB0aGUgY2FzZSBvZiBITVAsIG90aGVyIGNvbWJpbmF0aW9ucyBhcmUgcG9zc2li
bGUgdG8gYmUgb3B0aW1hbC4KCkJ1dCBub3Qgc3VyZSBob3cgSSBtaXNzZWQgdGhlIG9idmlvdXMs
IHRob3VnaCBJIGRvIHJlbWVtYmVyIHRoaW5raW5nIGFib3V0IHRoaXMuCgpTbyB0aGUgcHJvYmxl
bSBpcyB0aGF0IHRoZSBjcHVfY29vbGluZyBkcml2ZXIgd2lsbCBnZXQgcmVxdWVzdHMgaW4gcGFy
YWxsZWwgdG8Kc2V0IGRpZmZlcmVudCBtYXggZnJlcXVlbmNpZXMgYW5kIHRoZSBsYXN0IGNhbGwg
d2lsbCBhbHdheXMgd2luIGFuZCBtYXkgcmVzdWx0CmluIHVuZGVzaXJlZCBvdXRjb21lLgoKU29y
cnkgYWJvdXQgY3JlYXRpbmcgdGhlIGNvbmZ1c2lvbi4KCi0tIAp2aXJlc2gKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
