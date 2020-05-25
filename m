Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6E91E0C6C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 13:05:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zpBoDbd3fufJBVWAYcgnxfx/fxHwI8//cMd14/rEJ6Q=; b=RLB+Ychtod3vL2
	mq0hO1dxbm7X94pyfHQxI4hIGY9oLXJa0+7EGf3elpJPMWnhveFotpPjR6K4h3iQ+HsqOB05sNYIf
	jDpC2nfGB8AUd0+PvFVE4H6wk1iNRo76TNyF6jg5G+RE2n2wA6t/iAvPXsQk4TMN9ufv100KvF8pb
	0Ln975fy7hEpeZYOdtxaC/Cq7a2oizOdkYnTZZR6QIT5bRD6iaNWUhUX0MbiCkaQjAGFuyvzw3er3
	vsWkCB7i60DIvGJprF2UpbCpENMiXM5mVHfSNJjW9m1ruXPn1ZYE/FLheBcJtmQ0qvDU//CcuUP9l
	gOL/+mytIMpW2jy8QzJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdAur-0007pe-HO; Mon, 25 May 2020 11:05:09 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdAub-0007oa-2p
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 11:04:55 +0000
Received: by mail-wr1-x443.google.com with SMTP id x14so11337495wrp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 04:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=mdW5TPC5pBwP0jwDwntViUNqGTKeQcBSi1CWOKkv90w=;
 b=xC4PyPOpMkD3gjHORr1MlsIaPoaoO3wxo7sLYizRTeva0cpblXPG3DxEkmPibw0pwZ
 RYhWtDKVifwl9eqTL0qayhhWFNcOarYklj0GaInqJob9rDfi8aJDVhT2fa9yWDFeKZry
 zrUXCOFEBzZTCx6Yd5R9FmkNzuyw2JWyK5SNiXb0MagQ8+MhTrKDX/k/u2XH2a8W3kaP
 ceIc1BJZoD0IjpJaf5YB7JQtzm7SY+30PEocdbxSSrIyV7F9/hweqITPLFBFbVubAqp5
 nn0cGCvZWmXdGWKuNT5KfZXJvIc3m0f488iAUVxhuTctIKgGerteTRLuPw69doFs3rW0
 XB5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mdW5TPC5pBwP0jwDwntViUNqGTKeQcBSi1CWOKkv90w=;
 b=FobmsRz3DK980yiy3eb7wWmCO65ZdJmOF10Hfo2GSieXwx7en8Mg5Yo8t1GuFSra4C
 2XIbQQzOyBAKDLepCQnlep0SZ4K5g+4xLZnYOKDS23isgjumvgtyf+EukxeCvnlxaSWF
 u10jmbjU8Eb3+1jT43pQpDsLI9Jgl7Z3IUa812JQ08fBkxkMbrsVcBdegMnxuMPyAj+P
 XoYHdxcFH0btClUCa2Tf2zKsHJO7zXFqp/yDbR4NTiZOdwGUy+Uk4UheOOHJIV04mq2y
 4v5gviDg6BzFKEuJjyJbMUXEWxBOBJVaKNbKJ84kVptv6dmrl9iWw+MbW2OFXUld1gHh
 gxcg==
X-Gm-Message-State: AOAM532JV1/VJbPZ0+1MY9tUabaqGUbIiE4Cv3j7T4qcyuzYVdZWLPf/
 qIHMi47VYeJi7Xy6+wjM/MHaFw==
X-Google-Smtp-Source: ABdhPJyfOYYJksdGU00xJHoz0dGb6Rf2rEJX7JV0GT0hLF7DPKsW04VY3gPpZ4LP6LDZUIHOVMIqwg==
X-Received: by 2002:a5d:4b45:: with SMTP id w5mr15497931wrs.358.1590404690512; 
 Mon, 25 May 2020 04:04:50 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:f5b2:610d:e426:c0dd?
 ([2a01:e34:ed2f:f020:f5b2:610d:e426:c0dd])
 by smtp.googlemail.com with ESMTPSA id b185sm437997wmd.3.2020.05.25.04.04.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 May 2020 04:04:49 -0700 (PDT)
Subject: Re: [PATCH] thermal: imx8mm: Add get_trend ops
To: Anson Huang <anson.huang@nxp.com>,
 "rui.zhang@intel.com" <rui.zhang@intel.com>,
 "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <1589338689-15700-1-git-send-email-Anson.Huang@nxp.com>
 <fccf4197-d0ca-f313-8f70-000ef4731033@linaro.org>
 <DB3PR0402MB3916B6D11328A036BD479D39F5B50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <6a4d31e4-8a24-2e9f-aa49-bec8258ead4c@linaro.org>
 <DB3PR0402MB39167D71ED6979FC33D3747DF5B20@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <DB3PR0402MB39162E6A876BA54A80B0DCE2F5B30@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <dadf94db-8aa5-d1a7-5818-c56032a44ea4@linaro.org>
Date: Mon, 25 May 2020 13:04:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <DB3PR0402MB39162E6A876BA54A80B0DCE2F5B30@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_040453_251391_A2B5CF31 
X-CRM114-Status: GOOD (  23.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjUvMDUvMjAyMCAwNDo0NiwgQW5zb24gSHVhbmcgd3JvdGU6Cj4gSGksIERhbmllbAoKWyAu
Li4gXQoKPiBJIHRyaWVkIG1vZGlmeWluZyB0aGUgbWluL21heCB0byAnMicgaW4gY29vbGluZyBt
YXAsIGl0IHdvcmtzIHRoYXQKPiB3aGVuZXZlciBjb29saW5nIGFjdGlvbiBpcyBuZWVkZWQsIHRo
ZSBtYXggY29vbGluZyBhY3Rpb24gd2lsbCBiZQo+IGFwcGxpZWQuIEJ1dCBJIGFsc28gbm90aWNl
ZCBzb21lIGJlaGF2aW9ycyB3aGljaCBOT1QgYXMgZXhwZWN0ZWQ6Cj4gCj4gMS4gdG8gZWFzeSB0
aGUgdGVzdCwgSSBlbmFibGUgdGhlICIgQ09ORklHX1RIRVJNQUxfV1JJVEFCTEVfVFJJUFMiLAo+
IGFuZCBqdXN0IG1vZGlmeSB0aGUgcGFzc2l2ZSB0cmlwIHRocmVzaG9sZCB0byB0cmlnZ2VyIHRo
ZSBjb29saW5nCj4gYWN0aW9uLCB0aGlzIGlzIG11Y2ggbW9yZSBlYXN5IHRoZW4gcHV0dGluZyB0
aGUgYm9hcmQgaW50byBhbiBvdmVuIHRvCj4gaW5jcmVhc2UgdGhlIFNvQyB0ZW1wZXJhdHVyZSBv
ciBydW5uaW5nIG1hbnkgaGlnaCBsb2FkaW5nIHRlc3QgdG8KPiBpbmNyZWFzZSB0aGUgdGVtcGVy
YXR1cmUsIGJ1dCB3aGVuIEkgbW9kaWZ5IHRoZSBwYXNzaXZlIHRyaXAKPiB0aHJlc2hvbGQgdG8g
YmUgbG93ZXIgdGhhbiBjdXJyZW50IHRlbXBlcmF0dXJlLCB0aGUgY29vbGluZyBhY3Rpb24gaXMK
PiBOT1QgdHJpZ2dlcmVkIGltbWVkaWF0ZWx5LCBpdCBpcyBiZWNhdXNlIHRoZSBkZWZhdWx0IHN0
ZXBfd2lzZQo+IGdvdmVybm9yIHdpbGwgTk9UIHRyaWdnZXIgdGhlIGNvb2xpbmcgYWN0aW9uIHdo
ZW4gdGhlIHRyZW5kIGlzCj4gVEhFUk1BTF9UUkVORF9TVEFCTEUuIEJ1dCB3aGF0IGV4cGVjdGVk
IGlzLCB3aGVuIHRoZSB0ZW1wZXJhdHVyZSBpcwo+IGV4Y2VlZCB0aGUgcGFzc2l2ZSB0cmlwIHRo
cmVzaG9sZCwgdGhlIGNvb2xpbmcgYWN0aW9uIGNhbiBiZSAKPiB0cmlnZ2VyZWQgaW1tZWRpYXRl
bHkgbm8gbWF0dGVyIHRoZSB0cmVuZCBpcyBzdGFibGUgb3IgcmFpc2luZy4KCllvdSBhcmUgcmln
aHQsIHdoYXQgaXMgZXhwZWN0ZWQgaXMsIHdoZW4gdGhlIHRlbXBlcmF0dXJlIGV4Y2VlZHMgdGhl
CnBhc3NpdmUgdHJpcCB0aHJlc2hvbGQsIGEgY29vbGluZyBhY3Rpb24gaGFwcGVucywgdGhlIHRy
ZW5kIGlzIHJhaXNpbmcKaW4gdGhpcyBjYXNlLgoKQnV0IGluIHlvdXIgdGVzdCwgaXQgaXMgbm90
IHdoYXQgaXMgaGFwcGVuaW5nOiB0aGUgdHJpcCBwb2ludCBpcwpjaGFuZ2luZywgbm90IHRoZSB0
ZW1wZXJhdHVyZS4KClByb2JhYmx5LCB0aGUgY3B1ZnJlcSBkcml2ZXIgaXMgYXQgaXRzIGxvd2Vz
dCBPUFAsIHNvIHRoZXJlIGlzIG5vIHJvb20KZm9yIG1vcmUgY29vbGluZyBlZmZlY3Qgd2hlbiBj
aGFuZ2luZyB0aGUgdHJpcCBwb2ludC4KCklNTywgdGhlIHRlc3QgaXMgbm90IHJpZ2h0IGFzIHRo
ZSB0cmlwIHBvaW50IGlzIGRlY3JlYXNlZCB0byBhCnRlbXBlcmF0dXJlIHdoZXJlIGFjdHVhbGx5
IHRoZSBTb0MgaXMgbm90IGhvdC4KCklmIHlvdSB3YW50IHRvIHRlc3QgaXQgZWFzaWx5LCBJIHJl
Y29tbWVuZCB0byB1c2UgZGhyeXN0b25lLCBzb21ldGhpbmcgbGlrZToKCiBkaHJ5c3RvbmUgLXQg
NiAtbCAxMDAwMAoKVGhhdCB3aWxsIG1ha2UgeW91ciBib2FyZCB0byBoZWF0IGltbWVkaWF0ZWx5
LgoKPiBUaGF0Cj4gbWVhbnMgd2UgaGF2ZSB0byBpbXBsZW1lbnQgb3VyIG93biAuZ2V0X3RyZW5k
IGNhbGxiYWNrPwoKRnJvbSBteSBQT1YgaXQgbXVzdCBkaXNhcHBlYXIsIGJlY2F1c2UgaXQgaGFz
IGxpdHRsZSBtZWFuaW5nLiBUaGUKZ292ZXJub3IgaXMgdGhlIG9uZSB3aGljaCBzaG91bGQgYmUg
ZGVhbGluZyB3aXRoIHRoYXQgYW5kIGNhbGwgdGhlCmNvcnJlc3BvbmRpbmcgY29vbGluZyBpbmRl
eC4KCj4gMi4gTm8gbWFyZ2luIGZvciByZWxlYXNpbmcgdGhlIGNvb2xpbmcgYWN0aW9uLCBmb3Ig
ZXhhbXBsZSwgaWYKPiBjb29saW5nIGFjdGlvbiBpcyB0cmlnZ2VyZWQsIHdoZW4gdGhlIHRlbXBl
cmF0dXJlIGRyb3BzIGJlbG93IHRoZQo+IHBhc3NpdmUgdHJpcCB0aHJlc2hvbGQsIHRoZSBjb29s
aW5nIGFjdGlvbiB3aWxsIGJlIGNhbmNlbGxlZAo+IGltbWVkaWF0ZWx5LCBpZiBTb0Mga2VlcHMg
cnVubmluZyBhdCBmdWxsIHBlcmZvcm1hbmNlLCB0aGUKPiB0ZW1wZXJhdHVyZSB3aWxsIGluY3Jl
YXNlIHZlcnkgc29vbiwgd2hpY2ggbWF5IGNhdXNlIHRoZSBTb0Mga2VlcAo+IHRyaWdnZXJpbmcv
Y2FuY2VsbGluZyB0aGUgY29vbGluZyBhY3Rpb24gYXJvdW5kIHRoZSBwYXNzaXZlIHRyaXAKPiB0
aHJlc2hvbGQuIElmIHRoZXJlIGlzIGEgbWFyZ2luLCB0aGUgc2l0dWF0aW9uIHdpbGwgYmUgbXVj
aCBiZXR0ZXIuCj4gCj4gRG8geW91IGhhdmUgYW55IGlkZWEvY29tbWVudCBhYm91dCB0aGVtPwoK
WWVzLCB0aGF0IGlzIGEgZ29vZCBwb2ludC4gVGhlIGh5c3RlcmVzaXMgaXMgc3VwcG9zZWQgdG8g
ZG8gdGhhdC4gVGhlcmUKaXMgYSB3b3JrIGRvbmUgYnkgQW5kcnplaiBQaWV0cmFzaWV3aWN6IHRv
IGRpc2FibGUgLyBlbmFibGUgdGhlIHRoZXJtYWwKem9uZXMgWzFdLiBJIHRoaW5rIHdlIHNob3Vs
ZCBiZSBhYmxlIHRvIGZpeCB0aGF0IGFmdGVyIHRoZSBjaGFuZ2VzIGFyZSBkb25lLgoKICAtLSBE
YW5pZWwKClsxXSBodHRwczovL3d3dy5zcGluaWNzLm5ldC9saXN0cy9uZXRkZXYvbXNnNjQ0NzYy
Lmh0bWwKCgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4g
c291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3
LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNv
bS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1i
bG9nLz4gQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
