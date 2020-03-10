Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC221803C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 17:43:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wwrgTxmn7ZpszNgfoR6L/7WyKMwtDAfPo1pz1SZAPJ4=; b=PtWQobpqw+Aegn
	mLdpcvlUAb28evMFYOBf6UY+X+v0WT3mfOZYeptV7UbwCTr2QAUnG1SfHWzUEvpm9OLbFGU56BiYU
	VVi8Gy1x2qKIDk+vGg6nVJ6utZFQuanuTBggC4NUXY3qE1naKmGuZ4FKGP+G96iRc4vCxqGDO2c0T
	qd5cQHjatiJab+FZ33pC0iDqp6WjgK8BgIolzyaPgEfAu/rKo51feEQzvGU/+ffDY9F40M5axb5W8
	recUXblELpjMfJwtxXOTMywiKqXMiWme1FDgO2RTl5D3cIOzpE0kutH1SNcxlNzmNpnUJ1As2Z0wW
	J7wulMQ6WE403rdsXCZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBhyU-0004U8-QT; Tue, 10 Mar 2020 16:43:22 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBhyO-0004Su-L9
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 16:43:17 +0000
Received: by mail-lj1-x242.google.com with SMTP id r7so14918835ljp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 09:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=FBFL+5WGT9Pn8Ub5SVAAk9yDdcFa+JUtYWb2994ZtrY=;
 b=dAyamb3JokRz1DfXE4yVA/mcSxyzcMgQBPsAtXgJLlua4/bsokmjNlLMQxJCMimd4o
 jfwzuynXDbP2bU9fPV6Gub2HrDDV+H2v5k7+eCm3CjK1DIHrGNIynI7UKjN3wJL2qO8g
 o9B9sP6schKllDoJhGamTIJyRodsoT0oFJTgR4R2qIeUM6yoMwRwM7DT/3CKWw50TE0A
 Tu3jvL1A5ujrgPB8ZQ888/hQe++2HdieScga7ro3/MAxLeiSsXhQmVPL98lpJ15v4aiQ
 UGFxRJwQh0zIzxt2kxFzUjzs+rK8lkKvJ3RHMwMOP5iBW+A/msl+JHeqqdAwhJSfp+Qy
 wTGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FBFL+5WGT9Pn8Ub5SVAAk9yDdcFa+JUtYWb2994ZtrY=;
 b=OvzMG9RH3tztOSaNHvp9ml/Bn+O06JjAGLHOd5xOUosigLL7m/Oh4FTI0X+KyFYh0K
 BKIuNCrlyx8KeEMFm46FBB/pWairfU91lYdm4ky3eQeyvZppPOoYiOdFYQR4EEqWVjEB
 Cya/wabOgpPvMMPeErZH8S5yYzyWkHr2wM+jPaBkW7v0cmsNZwo9fhI0W74b8XD9yAFG
 6X/ijd6G1xhxSSKsgRZ3cXJBJ3kzzFtRKG73ohDRqUQZgZ52kBxbZ72zZjhgShdkXLWI
 nPexzB60Yib4rNfKXdPejr9Zck+mlP22zhuxhEuqLlRnNV2MCiwRpPa/EbHETn/APobc
 q1xg==
X-Gm-Message-State: ANhLgQ2cUct5ysb7mwtXJMdeJBoLjyT6f/uxJxseiNWD/ovi0Cjl7sDs
 u37xn88TK9DOSdSsevuPIa+m1c3d
X-Google-Smtp-Source: ADFU+vtVfSMWLo7FnYwj+Zjtq1hRYyuXQCUbHBjXUeoVZzyjnreoimdN8AX1D6ndztQ4bQVPkXhj0w==
X-Received: by 2002:a2e:b6d3:: with SMTP id m19mr5230286ljo.68.1583858594597; 
 Tue, 10 Mar 2020 09:43:14 -0700 (PDT)
Received: from [192.168.2.145] (94-29-39-224.dynamic.spd-mgts.ru.
 [94.29.39.224])
 by smtp.googlemail.com with ESMTPSA id e4sm16288858ljl.27.2020.03.10.09.43.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Mar 2020 09:43:13 -0700 (PDT)
Subject: Re: [PATCH v5 5/8] memory: tegra: Add EMC scaling support code for
 Tegra210
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-6-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <4ea3a96f-52cb-4eab-cf92-932f6882ad85@gmail.com>
Date: Tue, 10 Mar 2020 19:43:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200310152003.2945170-6-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_094316_695258_92202B24 
X-CRM114-Status: GOOD (  23.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTAuMDMuMjAyMCAxODoyMCwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPiBGcm9tOiBKb3Nl
cGggTG8gPGpvc2VwaGxAbnZpZGlhLmNvbT4KPiAKPiBUaGlzIGlzIHRoZSBpbml0aWFsIHBhdGNo
IGZvciBUZWdyYTIxMCBFTUMgZnJlcXVlbmN5IHNjYWxpbmcuIEl0IGhhcyB0aGUKPiBjb2RlIHRv
IHByb2dyYW0gdmFyaW91cyBhc3BlY3RzIG9mIHRoZSBFTUMgdGhhdCBhcmUgc3RhbmRhcmRpemVk
LCBidXQgaXQKPiBkb2VzIG5vdCB5ZXQgaW5jbHVkZSB0aGUgc3BlY2lmaWMgcHJvZ3JhbW1pbmcg
c2VxdWVuY2UgbmVlZGVkIGZvciBjbG9jawo+IHNjYWxpbmcuCj4gCj4gVGhlIGRyaXZlciBpcyBk
ZXNpZ25lZCB0byBzdXBwb3J0IExQRERSNCBTRFJBTS4gRGV2aWNlcyB0aGF0IHVzZSBMUEREUjQK
PiBuZWVkIHRvIHBlcmZvcm0gdHJhaW5pbmcgb2YgdGhlIFJBTSBiZWZvcmUgaXQgY2FuIGJlIHVz
ZWQuIEZpcm13YXJlIHdpbGwKPiBwZXJmb3JtIHRoaXMgdHJhaW5pbmcgZHVyaW5nIGVhcmx5IGJv
b3QgYW5kIHBhc3MgYSB0YWJsZSBvZiBzdXBwb3J0ZWQKPiBmcmVxdWVuY2llcyB0byB0aGUga2Vy
bmVsIHZpYSBkZXZpY2UgdHJlZS4KPiAKPiBGb3IgdGhlIGZyZXF1ZW5jaWVzIGFib3ZlIDgwMCBN
SHosIHBlcmlvZGljIHJldHJhaW5pbmcgaXMgbmVlZGVkIHRvCj4gY29tcGVuc2F0ZSBmb3IgY2hh
bmdlcyBpbiB0aW1pbmcuIFRoaXMgcGVyaW9kaWMgdHJhaW5pbmcgd2lsbCBoYXZlIHRvIGJlCj4g
cGVyZm9ybWVkIHVudGlsIHRoZSBmcmVxdWVuY3kgZHJvcHMgYmFjayB0byBvciBiZWxvdyA4MDAg
TUh6Lgo+IAo+IFRoaXMgZHJpdmVyIHByb3ZpZGVzIGhlbHBlcnMgdXNlZCBkdXJpbmcgdGhpcyBy
dW50aW1lIHJldHJhaW5pbmcgdGhhdAo+IHdpbGwgYmUgdXNlZCBieSB0aGUgc2VxdWVuY2Ugc3Bl
Y2lmaWMgY29kZSBpbiBhIGZvbGxvdy11cCBwYXRjaC4KPiAKPiBCYXNlZCBvbiB3b3JrIGJ5IFBl
dGVyIERlIFNjaHJpanZlciA8cGRlc2NocmlqdmVyQG52aWRpYS5jb20+Lgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IEpvc2VwaCBMbyA8am9zZXBobEBudmlkaWEuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFRo
aWVycnkgUmVkaW5nIDx0cmVkaW5nQG52aWRpYS5jb20+Cj4gLS0tCj4gQ2hhbmdlcyBpbiB2NToK
PiAtIG1ham9yIHJld29yayBhbmQgY2xlYW51cAo+IAo+ICBkcml2ZXJzL21lbW9yeS90ZWdyYS90
ZWdyYTIxMC1lbWMuYyB8IDE5NTIgKysrKysrKysrKysrKysrKysrKysrLS0tLS0tCj4gIGRyaXZl
cnMvbWVtb3J5L3RlZ3JhL3RlZ3JhMjEwLWVtYy5oIHwgIDg5MyArKysrKysrKysrKy0KPiAgMiBm
aWxlcyBjaGFuZ2VkLCAyMzkwIGluc2VydGlvbnMoKyksIDQ1NSBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9tZW1vcnkvdGVncmEvdGVncmEyMTAtZW1jLmMgYi9kcml2ZXJz
L21lbW9yeS90ZWdyYS90ZWdyYTIxMC1lbWMuYwo+IGluZGV4IDgwZWExNGQxZTZjZS4uNGVhOGZi
NzBhNGZkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVtb3J5L3RlZ3JhL3RlZ3JhMjEwLWVtYy5j
Cj4gKysrIGIvZHJpdmVycy9tZW1vcnkvdGVncmEvdGVncmEyMTAtZW1jLmMKPiBAQCAtMSw2ICsx
LDYgQEAKPiAgLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiAgLyoKPiAtICog
Q29weXJpZ2h0IChjKSAyMDE1LTIwMTksIE5WSURJQSBDT1JQT1JBVElPTi4gIEFsbCByaWdodHMg
cmVzZXJ2ZWQuCj4gKyAqIENvcHlyaWdodCAoYykgMjAxNS0yMDIwLCBOVklESUEgQ09SUE9SQVRJ
T04uICBBbGwgcmlnaHRzIHJlc2VydmVkLgo+ICAgKi8KCldvdWxkIGJlIG5pY2UgdG8gYXZvaWQg
YWxsIHRoZSB1bm5lY2Vzc2FyeSBjaGFuZ2VzLCBsaWtlIHRoZSBvbmUgYWJvdmUKYW5kIHRoZW4g
YWxsIHRoZSBjb2RlJ3MgcmVtb3ZhbHMvcmVzaHVmZmxpbmcuCgpTdWNoIHRoYXQgYSBuZXcgcGF0
Y2ggd2FzIGEgY2xlYW4gYWRkaXRpb24gdG8gYSBwcmV2aW91cyBwYXRjaCwgaW5zdGVhZApvZiBh
IHJlLXdyaXRlLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
