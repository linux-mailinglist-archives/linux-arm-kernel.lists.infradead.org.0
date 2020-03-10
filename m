Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D84D180523
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 18:44:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=stngP/XflrOp5lgPD6FtPSty1hBbRUCqAvpDLr6ZDPI=; b=cSyTlSNu0PV3Bp
	NnLsaRrpLRSs3wpOC2+KPFBhyKn920FbHCovFQ7L60r7ffYdb5rQ0KPHlQlVwSESSs/P9se5Qyu3d
	b0Bhp1Nmsgad7KlINIvy8JR+grnwwB2SNnVkRxpPUE6UCwsfLbeLEUyvrXaOSdnlcFqmDHHsXyhjW
	+0osW55ytSwxZVgS2kzIX0KvKg/Z8ilfWxQqeNg4+wjYGPP2n0hUN9qdispG8j6bqSoqUslBMX1hQ
	Cn7no0lqyu3QsEP3x7Bfb8HyDjfMcOlgx72L0l3ZtjRHzaQ+JQBF63HSWmK6kRoQmS6x9ysQFk0v+
	iyrQqFjHZE5JIAGhPL1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBivx-0006KG-Ax; Tue, 10 Mar 2020 17:44:49 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBivq-0006Jl-HV
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 17:44:43 +0000
Received: by mail-lj1-x243.google.com with SMTP id f10so15181925ljn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 10:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=GHzaWg3f9PXj0XCOnlYVM0t9EpHANTjAH8lOSKib10g=;
 b=q4NR1a/xd5/emofZa/GJ+NEzpDE46eywiiRq/5MsLLapNO99t6/vZC+h7gS89a4Hqh
 QtPUnNujxuDr+I+BudWjJCbxxh7LrO0rtprfl2xW8ZyVPLyu1PFv5gGqwc8VecibsCsR
 gNMVkd5XYWtNH+c4KzlApP7+n2k0pTpCsVMnpOblFN9Rm9kRNpBKGkuoZiI9B1q+fljd
 +OqLDo6dbHEh1Jzu/ijKFo/F8PkDSTmmV2JX8dIC5sKpuyKwBJSnJMfP40KtlUa1inNY
 7oShBwFNSuV784d+0tZAHmFcmPP7PrBVzAITxiy7z1CD0Nz8Anco+FZ4YUbKlFM5sQJO
 B3CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GHzaWg3f9PXj0XCOnlYVM0t9EpHANTjAH8lOSKib10g=;
 b=jU2hCDl6CZC26cVS00HBG/YiEdcqSM9LBGLy1hKcSdKNJtGssy/g576WUtwTVBNRg3
 g7XwfBcQ0KJzwunVBNoLt/HD3nqB0ZlA9uVF4WWq8sQQsuqMOv6qPP8QzqpS4EDFnI9n
 EloEYtAb6ZpC6VDhlrgKs7trvsBu7lHrZ1fxsWu7KeU57a7SQ9j9anLd1NqvhJmobJqC
 Thx2GJ/jrjs43ucVHNuJCNCe9toR6nQzLJCrOUgfMcVxWUf7WoDmt3CMxtsREoCm5dL4
 ivPKSHPxM54TQp4BhxByMsMl8ixv+pyx5eEUiiu4m1KnlsyY3RmN9t6AnpI6MdYfPcHW
 LjJA==
X-Gm-Message-State: ANhLgQ0fJAJcz+gH7kTBRE+kHRw7/Ir9y0+1eH47VHZaYSTzCNscZKG6
 ubkLf988CZJmo3olgPXW+cwiu7j6
X-Google-Smtp-Source: ADFU+vtedvwOTK2i5hsjsLdZAGJefepqqYliPvSiQKHVCcPbuAjQSCqfBBO7fuz7yRotFfidXnpBjw==
X-Received: by 2002:a2e:330e:: with SMTP id d14mr3309081ljc.72.1583862280236; 
 Tue, 10 Mar 2020 10:44:40 -0700 (PDT)
Received: from [192.168.2.145] (94-29-39-224.dynamic.spd-mgts.ru.
 [94.29.39.224])
 by smtp.googlemail.com with ESMTPSA id c20sm16687727lfb.60.2020.03.10.10.44.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Mar 2020 10:44:39 -0700 (PDT)
Subject: Re: [PATCH v5 3/8] clk: tegra: Implement Tegra210 EMC clock
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-4-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <a5c9e3d6-2b65-ec93-d8f1-7c7680092e53@gmail.com>
Date: Tue, 10 Mar 2020 20:44:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200310152003.2945170-4-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_104442_584611_CF5FE96B 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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

MTAuMDMuMjAyMCAxODoxOSwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPiBGcm9tOiBKb3Nl
cGggTG8gPGpvc2VwaGxAbnZpZGlhLmNvbT4KPiAKPiBUaGUgRU1DIGNsb2NrIG5lZWRzIHRvIGNh
cmVmdWxseSBjb29yZGluYXRlIHdpdGggdGhlIEVNQyBjb250cm9sbGVyCj4gcHJvZ3JhbW1pbmcg
dG8gbWFrZSBzdXJlIGV4dGVybmFsIG1lbW9yeSBjYW4gYmUgcHJvcGVybHkgY2xvY2tlZC4gRG8g
c28KPiBieSBob29raW5nIHVwIHRoZSBFTUMgY2xvY2sgd2l0aCBhbiBFTUMgcHJvdmlkZXIgdGhh
dCB3aWxsIHNwZWNpZnkgd2hpY2gKPiByYXRlcyBhcmUgc3VwcG9ydGVkIGJ5IHRoZSBFTUMgYW5k
IHByb3ZpZGUgYSBjYWxsYmFjayB0byB1c2UgZm9yIHNldHRpbmcKPiB0aGUgY2xvY2sgcmF0ZSBh
dCB0aGUgRU1DLgo+IAo+IEJhc2VkIG9uIHdvcmsgYnkgUGV0ZXIgRGUgU2NocmlqdmVyIDxwZGVz
Y2hyaWp2ZXJAbnZpZGlhLmNvbT4uCj4gCj4gU2lnbmVkLW9mZi1ieTogSm9zZXBoIExvIDxqb3Nl
cGhsQG52aWRpYS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVGhpZXJyeSBSZWRpbmcgPHRyZWRpbmdA
bnZpZGlhLmNvbT4KPiAtLS0KPiBDaGFuZ2VzIGluIHY1Ogo+IC0gbWFqb3IgcmV3b3JrIGFuZCBj
bGVhbnVwCgouLi4KPiArc3RhdGljIHU4IHRlZ3JhMjEwX2Nsa19lbWNfZ2V0X3BhcmVudChzdHJ1
Y3QgY2xrX2h3ICpodykKPiArewo+ICsJc3RydWN0IHRlZ3JhMjEwX2Nsa19lbWMgKmVtYyA9IHRv
X3RlZ3JhMjEwX2Nsa19lbWMoaHcpOwo+ICsJdTMyIHZhbHVlOwo+ICsJdTggc3JjOwo+ICsKPiAr
CXZhbHVlID0gcmVhZGxfcmVsYXhlZChlbWMtPnJlZ3MgKyBDTEtfU09VUkNFX0VNQyk7Cj4gKwlz
cmMgPSAodmFsdWUgPj4gQ0xLX1NPVVJDRV9FTUNfMlhfQ0xLX1NSQ19TSElGVCkgJgo+ICsJCQlD
TEtfU09VUkNFX0VNQ18yWF9DTEtfU1JDX01BU0s7CgpXaGF0IGFib3V0IHRvIHVzZSBhIGdlbmVy
aWMgRklFTERfR0VUL1BSRVAoKT8KCj4gK3N0YXRpYyBpbnQgdGVncmEyMTBfY2xrX2VtY19zZXRf
cmF0ZShzdHJ1Y3QgY2xrX2h3ICpodywgdW5zaWduZWQgbG9uZyByYXRlLAo+ICsJCQkJICAgICB1
bnNpZ25lZCBsb25nIHBhcmVudF9yYXRlKQo+ICt7Cj4gKwlzdHJ1Y3QgdGVncmEyMTBfY2xrX2Vt
YyAqZW1jID0gdG9fdGVncmEyMTBfY2xrX2VtYyhodyk7Cj4gKwlzdHJ1Y3QgdGVncmEyMTBfY2xr
X2VtY19wcm92aWRlciAqcHJvdmlkZXIgPSBlbWMtPnByb3ZpZGVyOwo+ICsJc3RydWN0IHRlZ3Jh
MjEwX2Nsa19lbWNfY29uZmlnICpjb25maWc7Cj4gKwlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBwcm92
aWRlci0+ZGV2Owo+ICsJc3RydWN0IGNsa19odyAqb2xkLCAqbmV3LCAqcGFyZW50Owo+ICsJdTgg
b2xkX2lkeCwgbmV3X2lkeCwgaW5kZXg7Cj4gKwlzdHJ1Y3QgY2xrICpjbGs7Cj4gKwl1bnNpZ25l
ZCBpbnQgaTsKPiArCWludCBlcnI7Cj4gKwo+ICsJaWYgKCFwcm92aWRlciB8fCAhcHJvdmlkZXIt
PmNvbmZpZ3MgfHwgcHJvdmlkZXItPm51bV9jb25maWdzID09IDApCj4gKwkJcmV0dXJuIC1FSU5W
QUw7CgpXaHkgYWxsIHRoZXNlIGNoZWNrcyBhcmUgbmVlZGVkPyBJIGRvbid0IHRoaW5rIGl0IGV2
ZXIgY291bGQgZmFpbCwKY291bGRuJ3QgaXQ/Cgo+ICtzdGF0aWMgaW50IGVtY190YWJsZV9sb29r
dXAoc3RydWN0IHRlZ3JhX2VtYyAqZW1jLCB1bnNpZ25lZCBsb25nIHJhdGUpCj4gK3sKPiArCWlu
dCBpOwoKdW5zaWduZWQgaW50CgpTYW1lIGZvciBhbGwgb3RoZXIgb2NjdXJyZW5jZXMgaW4gdGhl
IGNvZGUuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
