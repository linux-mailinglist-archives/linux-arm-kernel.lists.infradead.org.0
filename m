Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D140FC9D3D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 13:28:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YnlCwm1gxjlfne00hthK7FMVVtTNvU05tRtlTzkkRaw=; b=q8yjU1Ema61Cx3
	lCivnTnp7JFGAiIqTRhK05OmSBKduZZVoAmwQuS1zRZkgAi5bu6AA9u0XxCCjfPW+zys3e+QKDM4/
	Gym9GJhPPAiIMByQD716xnWoJ0TssVgXpZkF9j/qpzrAngHi9uRrg6PnTF3BNX9Cles7UeDcQedDr
	2+++UGsjZkq4B2SwhsC6MggLLzDfawdjwvA5JkEWDMUKqK+77jhxrBSvBuM3flwrA6LUsVtuY3Rzv
	8qAWTu08YHOCqpPqOKnkDvI2141JNbJhm5VLHXvy0hIbfndfrHij9ksJS/FEJgc4RvyrJQoWHJy7T
	1c2iND9yqCHaDr4+JYfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFzHF-0005nc-MX; Thu, 03 Oct 2019 11:28:09 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFzH6-0005mx-Oi
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 11:28:02 +0000
Received: by mail-lf1-x144.google.com with SMTP id c195so1526823lfg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 04:28:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DX8a7Wlt/Jyh2iSwaP1Iud+IQGHxDyI7SdlcgZ9JV7Y=;
 b=pfqPTuJmFynvCqEI3kn+T5pWyCZffPTOYirFNHFp0FbLKRR+DK3QmmtLKlMpDrUPPd
 xDHTetajrPgm4b4CMV68RYsM8qSAC49VSKGhj1fydy3VhTMYDaVVOBfLgAg3wuEA6gfZ
 K0UD09GaX5UFcOr2cWAmRqirvAgq2N2mVTtby678jD4Hp9E8bSshqX2zEnBoIfL/bdPg
 xPV2gDDNbCOE8FVjwq/1rhKsa5fsGsbL/Vb9JQ0H4xtvy3oEX1d/cKvHUv0NF2SAUZiZ
 j4SvyvLd/8+fve1rVEtIW5nvsZesjmZi9KeYZdSRLx3nn6z0tnm1O7H+ElwoA+C/se4l
 4cUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DX8a7Wlt/Jyh2iSwaP1Iud+IQGHxDyI7SdlcgZ9JV7Y=;
 b=hEEzXl4yOAt+AFgeVlWy8tRx5+eDaIZV+fXBb5OvkZ4ZUIATq2DS14IWhxQaO7MMNk
 /R0xn1sT7I+ZS3Po3MDNS/nyUrMkUXOTGElaQpmOkN42cXkkDFX+4Jf15+vm2tf+WN/2
 mWUil4RUwCEbdxy5sNS1JQBGwtJc0Z6r508wW/zdV+n8Z5kgTE/9ZIBKyNfSITOnnCSy
 j9V6Fb2ndl/lZuwLBQW1VnbpUfYtZwyO5nlvTfeD+1jjt+BhDXbKrcFrtCXl2/8RKYzN
 Ax4XIkHIw4gPaNUgOmqAsp7wviWf9Y3eSAepELW5BA00yO2XkX2WAUWkaQq0Lolqibap
 5C0A==
X-Gm-Message-State: APjAAAUZRuJ1cRIBgZo07z4ZVAzlaJiE2BkbiYWeoj24M04yvRL0iiop
 VPJOfILpk0saHngFVLM/TZIlHBnQ
X-Google-Smtp-Source: APXvYqxCzTx3UVy7LuF2MGP2yfgdzHfJL60X+llcTt9cRqi0W6LnmbkFaXU0eI545HYjmvDNlGYALQ==
X-Received: by 2002:ac2:43b8:: with SMTP id t24mr3801098lfl.24.1570102079035; 
 Thu, 03 Oct 2019 04:27:59 -0700 (PDT)
Received: from [192.168.2.145] ([94.29.34.231])
 by smtp.googlemail.com with ESMTPSA id q19sm466598ljj.73.2019.10.03.04.27.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Oct 2019 04:27:58 -0700 (PDT)
Subject: Re: [PATCH 2/4] ARM: tegra: Enable PLLP bypass during Tegra124 LP1
To: Stephen Warren <swarren@wwwdotorg.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Prashant Gaikwad <pgaikwad@nvidia.com>
References: <20191001211346.104400-1-swarren@wwwdotorg.org>
 <20191001211346.104400-2-swarren@wwwdotorg.org>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <437f030b-9e20-43e5-42ce-f98430d2149b@gmail.com>
Date: Thu, 3 Oct 2019 14:27:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191001211346.104400-2-swarren@wwwdotorg.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_042800_805682_74B7ECCF 
X-CRM114-Status: GOOD (  21.78  )
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
bmcuIFBMTFAgaXMgb25lIG9mIHRob3NlIGNsb2Nrcy4gVGhpcyBjbG9jayBpcyBzaHV0IGRvd24K
PiBkdXJpbmcgTFAxIGluIG9yZGVyIHRvIHNhdmUgcG93ZXIuIEVuYWJsZSBieXBhc3MgKHdoaWNo
IEkgYmVsaWV2ZSByb3V0ZXMKPiBvc2NfZGl2X2NsaywgZXNzZW50aWFsbHkgdGhlIGNyeXN0YWwg
Y2xvY2ssIHRvIHRoZSBQTEwgb3V0cHV0KSBzbyB0aGF0Cj4gdGhpcyBjbG9jayBzaWduYWwgdG9n
Z2xlcyBldmVuIHRob3VnaCB0aGUgUExMIGlzIG5vdCBhY3RpdmUuIFRoaXMgaXMKPiByZXF1aXJl
ZCBzbyB0aGF0IExQMSBwb3dlciBtb2RlIChzeXN0ZW0gc3VzcGVuZCkgb3BlcmF0ZXMgY29ycmVj
dGx5Lgo+IAo+IFRoZSBieXBhc3MgY29uZmlndXJhdGlvbiBtdXN0IHRoZW4gYmUgdW5kb25lIHdo
ZW4gcmVzdW1pbmcgZnJvbSBMUDEsIHNvCj4gdGhhdCBhbGwgcGVyaXBoZXJhbCBjbG9ja3MgcnVu
IGF0IHRoZSBleHBlY3RlZCByYXRlLiBXaXRob3V0IHRoaXMsIG1hbnkKPiBwZXJpcGhlcmFscyB3
b24ndCB3b3JrIGNvcnJlY3RseTsgZm9yIGV4YW1wbGUsIHRoZSBVQVJUIGJhdWQgcmF0ZSB3b3Vs
ZAo+IGJlIGluY29ycmVjdC4KPiAKPiBOVklESUEncyBkb3duc3RyZWFtIGtlcm5lbCBjb2RlIG9u
bHkgZG9lcyB0aGlzIGlmIG5vdCBjb21waWxlZCBmb3IKPiBUZWdyYTMwLCBzbyB0aGUgYWRkZWQg
Y29kZSBpcyBtYWRlIGNvbmRpdGlvbmFsIHVwb24gdGhlIGNoaXAgSUQuIE5WSURJQSdzCj4gZG93
bnN0cmVhbSBjb2RlIG1ha2VzIHRoaXMgY2hhbmdlIGNvbmRpdGlvbmFsIHVwb24gdGhlIGFjdGl2
ZSBDUFUKPiBjbHVzdGVyLiBUaGUgdXBzdHJlYW0ga2VybmVsIGN1cnJlbnRseSBkb2Vzbid0IHN1
cHBvcnQgY2x1c3RlciBzd2l0Y2hpbmcsCj4gc28gdGhpcyBwYXRjaCBkb2Vzbid0IHRlc3QgdGhl
IGFjdGl2ZSBDUFUgY2x1c3RlciBJRC4KPiAKPiBbMV0gM2NjNzk0MmE0YWU1IEFSTTogdGVncmE6
IGltcGxlbWVudCBSQU0gcmVwYWlyCj4gCj4gUmVwb3J0ZWQtYnk6IEpvbmF0aGFuIEh1bnRlciA8
am9uYXRoYW5oQG52aWRpYS5jb20+Cj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiBTaWdu
ZWQtb2ZmLWJ5OiBTdGVwaGVuIFdhcnJlbiA8c3dhcnJlbkBudmlkaWEuY29tPgo+IC0tLQo+ICBh
cmNoL2FybS9tYWNoLXRlZ3JhL3NsZWVwLXRlZ3JhMzAuUyB8IDExICsrKysrKysrKysrCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
L21hY2gtdGVncmEvc2xlZXAtdGVncmEzMC5TIGIvYXJjaC9hcm0vbWFjaC10ZWdyYS9zbGVlcC10
ZWdyYTMwLlMKPiBpbmRleCBiNDA4ZmE1NmViODkuLjY5MjJkZDhkM2UyZCAxMDA2NDQKPiAtLS0g
YS9hcmNoL2FybS9tYWNoLXRlZ3JhL3NsZWVwLXRlZ3JhMzAuUwo+ICsrKyBiL2FyY2gvYXJtL21h
Y2gtdGVncmEvc2xlZXAtdGVncmEzMC5TCj4gQEAgLTM3MCw2ICszNzAsMTQgQEAgX3BsbF9tX2Nf
eF9kb25lOgo+ICAJcGxsX2xvY2tlZCByMSwgcjAsIENMS19SRVNFVF9QTExDX0JBU0UKPiAgCXBs
bF9sb2NrZWQgcjEsIHIwLCBDTEtfUkVTRVRfUExMWF9CQVNFCj4gIAo+ICsJdGVncmFfZ2V0X3Nv
Y19pZCBURUdSQV9BUEJfTUlTQ19CQVNFLCByMQo+ICsJY21wCXIxLCAjVEVHUkEzMAo+ICsJYmVx
CTFmCgpXaGF0IGFib3V0IFQxMTQsIG9yIGRvZXMgaXQgbmVlZCBlbmFibGVkIFBMTFAgYXMgd2Vs
bD8KCj4gKwlsZHIJcjEsIFtyMCwgI0NMS19SRVNFVF9QTExQX0JBU0VdCj4gKwliaWMJcjEsIHIx
LCAjKDE8PDMxKQlAIGRpc2FibGUgUGxsUCBieXBhc3MKPiArCXN0cglyMSwgW3IwLCAjQ0xLX1JF
U0VUX1BMTFBfQkFTRV0KPiArMToKPiArCj4gIAltb3YzMglyNywgVEVHUkFfVE1SVVNfQkFTRQo+
ICAJbGRyCXIxLCBbcjddCj4gIAlhZGQJcjEsIHIxLCAjTE9DS19ERUxBWQo+IEBAIC02MzAsNyAr
NjM4LDEwIEBAIHRlZ3JhMzBfc3dpdGNoX2NwdV90b19jbGszMms6Cj4gIAlzdHIJcjAsIFtyNCwg
I1BNQ19QTExQX1dCMF9PVkVSUklERV0KPiAgCj4gIAkvKiBkaXNhYmxlIFBMTFAsIFBMTEEsIFBM
TEMgYW5kIFBMTFggKi8KPiArCXRlZ3JhX2dldF9zb2NfaWQgVEVHUkFfQVBCX01JU0NfQkFTRSwg
cjEKPiArCWNtcAlyMSwgI1RFR1JBMzAKPiAgCWxkcglyMCwgW3I1LCAjQ0xLX1JFU0VUX1BMTFBf
QkFTRV0KPiArCW9ycm5lCXIwLCByMCwgIygxIDw8IDMxKQlAIGVuYWJsZSBQbGxQIGJ5cGFzcyBv
biBmYXN0IGNsdXN0ZXIKPiAgCWJpYwlyMCwgcjAsICMoMSA8PCAzMCkKPiAgCXN0cglyMCwgW3I1
LCAjQ0xLX1JFU0VUX1BMTFBfQkFTRV0KPiAgCWxkcglyMCwgW3I1LCAjQ0xLX1JFU0VUX1BMTEFf
QkFTRV0KPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
