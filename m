Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0646C9D1C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 13:23:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8AL6/g3fbaT+yPTn3P2a/jgMTVIcNZUEmrhrMBmMkIU=; b=mLd1kimy+2nbAH
	BZNk71BldxMmwobBv5CfRAGzs6oYOxLPEZCILss4SdVSdImCmK5zwql2L0Mm9bzSRWiFyPFtGA8Cu
	eJDjPXWUpLZwCridmPu/VuQU7RcSzkHm37C+Coz3MYXvsq5m2G3t3+w4yJhTmRLQRkOZiMptenRJN
	ca9WtMoIqgq6QATQ8vRDzCHPAI9qr9uxtVuvbZM9ryLr5TelbzqyRGL+WB6ZkQfKcsQjrkRPSuhSK
	7f9iFPc0BZGF+9OuwIb583+Vy9z+1pjI4EYQiI9uc0JHg4PX/g+44JJ61O8cZCPUKknGQK21fmmxz
	is9r9qWAjA6OttYifYDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFzCo-0003wY-Ft; Thu, 03 Oct 2019 11:23:34 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFzCd-0003w1-Tq
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 11:23:25 +0000
Received: by mail-lf1-x144.google.com with SMTP id r2so1520495lfn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 04:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YxgRbJvKRqdXZCKgx4otJFPYIVJvaWckk0e2/WgsOjc=;
 b=CqfXBRSaXxDre5rZG+6MS/6NUrFKX9khISEfHKxI88YJTBTJ/TvtsaqiLoMZgumVAz
 OxQlmshzwIaKNwT8+5FbKkC5gIu7SsHVKRfq6/dkfekwJQBh8El1hoNHBAJCSJBeIh4Y
 xv9hKgT6iV26BXMXtB75+y5ajZWur6BVq5fPhRXINVmubHjAgEO7IYCJfJdTqmKybwP0
 INTyYsBxGvJmNSWsfleI75jgX7XThcHfI97oDgA2XxemthrvvsVHpf0TJRhERkKX97ia
 AbR5iGbrvfwlI7quiE64pMUQkMBlCjov3ka/UNwh5yX9krYouzbE2sXni8horOEQtdoM
 uhUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YxgRbJvKRqdXZCKgx4otJFPYIVJvaWckk0e2/WgsOjc=;
 b=SKd/LIKazsOS4RyD3fduNsXYafBjJApKmygSIHJYjHPpYZjmuOxsD2Mg3f3n6B6kGr
 DB1m3n/QZ5Ack6x6NduGNCfOr35hrSjXdJkqFpK0PIW6IR3PLhMDoDBmstPptS7Z/TI1
 e3yWM8c4eaYsj+u/QzYmMeQba8i8h6LGG82/gsojOcXJaxKfaEN5LqNPM0oigFB+pyuV
 vu4pV8jEYm3m4rKE+OstQnvyc4ildZ6aE8KMppVWOQ4MkE7fp2ixC+hpUNrXln2/740R
 hblVtWNEldYQgdRzE999UkLr39N9KK1woPk0uCO2iei5w9XYuuZJ13qnviHdR2z/ycYj
 3cfQ==
X-Gm-Message-State: APjAAAWtm/mvlhASObpxUV0OAzpBhiMw0SD4/dCi1GiKsrqf7GNUFt+z
 QvdWHXh3jxBc7lDozgJ0oGFTyS/W
X-Google-Smtp-Source: APXvYqxw9T8acyhKN7toM+boOABCJRsj3U33cLAZP8AUTXsQQBL5YfgkbLNN1I8BxY63Q0K8D8uz9w==
X-Received: by 2002:ac2:51ce:: with SMTP id u14mr5022429lfm.72.1570101799169; 
 Thu, 03 Oct 2019 04:23:19 -0700 (PDT)
Received: from [192.168.2.145] ([94.29.34.231])
 by smtp.googlemail.com with ESMTPSA id h3sm484353ljf.12.2019.10.03.04.23.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Oct 2019 04:23:18 -0700 (PDT)
Subject: Re: [PATCH 1/4] clk: tegra: Enable fuse clock on Tegra124
To: Stephen Warren <swarren@wwwdotorg.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Prashant Gaikwad <pgaikwad@nvidia.com>
References: <20191001211346.104400-1-swarren@wwwdotorg.org>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <7f8934d9-8192-f88e-a329-630209d42a85@gmail.com>
Date: Thu, 3 Oct 2019 14:23:17 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191001211346.104400-1-swarren@wwwdotorg.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_042323_992172_87BE8A30 
X-CRM114-Status: GOOD (  20.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
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
Cc: Stephen Boyd <sboyd@kernel.org>, linux-tegra@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDIuMTAuMjAxOSAwMDoxMywgU3RlcGhlbiBXYXJyZW4g0L/QuNGI0LXRgjoKPiBGcm9tOiBTdGVw
aGVuIFdhcnJlbiA8c3dhcnJlbkBudmlkaWEuY29tPgo+IAo+IEZvciBhIGxpdHRsZSBvdmVyIGEg
eWVhciwgVS1Cb290IGhhcyBjb25maWd1cmVkIHRoZSBmbG93IGNvbnRyb2xsZXIgdG8KPiBwZXJm
b3JtIGF1dG9tYXRpYyBSQU0gcmUtcmVwYWlyIG9uIG9mZi0+b24gcG93ZXIgdHJhbnNpdGlvbnMg
b2YgdGhlIENQVQo+IHJhaWwxXS4gVGhpcyBpcyBtYW5kYXRvcnkgZm9yIGNvcnJlY3Qgb3BlcmF0
aW9uIG9mIFRlZ3JhMTI0LiBIb3dldmVyLCBSQU0KPiByZS1yZXBhaXIgcmVsaWVzIG9uIGNlcnRh
aW4gY2xvY2tzLCB3aGljaCB0aGUga2VybmVsIG11c3QgZW5hYmxlIGFuZAo+IGxlYXZlIHJ1bm5p
bmcuIFRoZSBmdXNlIGNsb2NrIGlzIG9uZSBvZiB0aG9zZSBjbG9ja3MuIEVuYWJsZSB0aGlzIGNs
b2NrCj4gc28gdGhhdCBMUDEgcG93ZXIgbW9kZSAoc3lzdGVtIHN1c3BlbmQpIG9wZXJhdGVzIGNv
cnJlY3RseS4KPiAKPiBbMV0gM2NjNzk0MmE0YWU1IEFSTTogdGVncmE6IGltcGxlbWVudCBSQU0g
cmVwYWlyCj4gCj4gUmVwb3J0ZWQtYnk6IEpvbmF0aGFuIEh1bnRlciA8am9uYXRoYW5oQG52aWRp
YS5jb20+Cj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBTdGVw
aGVuIFdhcnJlbiA8c3dhcnJlbkBudmlkaWEuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2Nsay90ZWdy
YS9jbGstdGVncmExMjQuYyB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvdGVncmEvY2xrLXRlZ3JhMTI0LmMgYi9kcml2
ZXJzL2Nsay90ZWdyYS9jbGstdGVncmExMjQuYwo+IGluZGV4IDAyMjRmZGM0NzY2Zi4uZjUzZjYz
MTVjNjQ2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY2xrL3RlZ3JhL2Nsay10ZWdyYTEyNC5jCj4g
KysrIGIvZHJpdmVycy9jbGsvdGVncmEvY2xrLXRlZ3JhMTI0LmMKPiBAQCAtMTI5MSw2ICsxMjkx
LDcgQEAgc3RhdGljIHN0cnVjdCB0ZWdyYV9jbGtfaW5pdF90YWJsZSBjb21tb25faW5pdF90YWJs
ZVtdIF9faW5pdGRhdGEgPSB7Cj4gIH07Cj4gIAo+ICBzdGF0aWMgc3RydWN0IHRlZ3JhX2Nsa19p
bml0X3RhYmxlIHRlZ3JhMTI0X2luaXRfdGFibGVbXSBfX2luaXRkYXRhID0gewo+ICsJeyBURUdS
QTEyNF9DTEtfRlVTRSwgLTEsIDAsIDEgfSwKPiAgCXsgVEVHUkExMjRfQ0xLX1NPQ19USEVSTSwg
VEVHUkExMjRfQ0xLX1BMTF9QLCA1MTAwMDAwMCwgMCB9LAo+ICAJeyBURUdSQTEyNF9DTEtfQ0NM
S19HLCBURUdSQTEyNF9DTEtfQ0xLX01BWCwgMCwgMSB9LAo+ICAJeyBURUdSQTEyNF9DTEtfSERB
LCBURUdSQTEyNF9DTEtfUExMX1AsIDEwMjAwMDAwMCwgMCB9LAo+IAoKSGVsbG8gU3RlcGhlbiwK
CkRvZXMgdGhpcyBtZWFuIHRoYXQgZGV2aWNlcyB3aGljaCBhcmUgdXNpbmcgb2xkZXIgVS1Cb290
IHZlcnNpb24gd2VyZSBhbHdheXMgaW4gYSB0cm91YmxlPwpJdCBzb3VuZHMgdG8gbWUgdGhhdCB0
aGUgUkFNIHJlLXJlcGFpciBzaG91bGQgYmUgYWxzbyBlbmFibGVkIGJ5IHRoZSBrZXJuZWwncyBm
bG93CmNvbnRyb2xsZXIgZHJpdmVyIGluIGEgY2FzZSBpZiBib290bG9hZGVyIGRpZCBub3QgZW5h
YmxlIGl0LgpJZiBlbmFibGluZyBSQU0gcmUtcmVwYWlyIGlzIGEgY2hhbmdlIHRoYXQgd29uJ3Qg
YmUgZWFzaWx5IGJhY2twb3J0YWJsZSB0byBzdGFibGUga2VybmVscywKdGhlbiBtYXkgYmUgaXQn
cyB3b3J0aCB0byBzaW1wbHkgZm9yY2UtZGlzYWJsZSBMUDEgb24gVDEyNCBmb3IgdGhlIG9sZGVy
IGtlcm5lbHMuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
