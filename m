Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A3CE1D58
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 15:51:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EV0lKtnsmr507d1/dx3CD2P5q1iI9wWATlj09xWRfYU=; b=KIx2962fyX2DMQ
	bk6wizq8omm8GKBca8xJLbUdYdk224ApvzAujMvWCgGtPmmc9AkYXL/0VYwQTCizxZ23chCtzjzNm
	4LYLb7Ww1L5uu5Udw4iAIJp9tBSRpKqpdRPEV28LWlnKh6655Or9HUiICueLhQbmFjRLWS5oxVL2X
	1p+KoD9xP3afqeIB6o8taXwKcNnW3Erse7Lxp2p4+j+4rr+YdKxPp8k7PoK6+PRFhsLLcUEpoMxsd
	HWxr7dFb7IbtPvBnbINOZWlW2o1qZxOaOseCo7S2tRFvoa2eB9acpRBPeg8Y6Y9sA6KK7VWBFU/Du
	hR6AowFY+MCBXLvou7/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNH2q-0005yN-Ln; Wed, 23 Oct 2019 13:51:24 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNH2e-0005xd-MS
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 13:51:14 +0000
Received: by mail-wr1-x442.google.com with SMTP id p4so22207014wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 06:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:from:to:cc:references:openpgp:message-id:date:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=2OzqeB6lct/4fO2u5biFD/hH4qN2HDn6dJHGOqFVmZI=;
 b=HxDBxkpt/TeXHVriMyGDqLhs0MthlNjNAeNVQezlsLSQGK5tb6zxiwSXKeqdzWC7M2
 SDbjsOENSXQOZ6vlfQ6Sd7bWNWdXml01yl4gGJkjjgS9rSzuaNUQEgYmERynar2gG9MB
 nCMyKy33R80dzElC4mKKGnIHMQoj94S59WbUtrnog2S1J09cumyqSoYNFnyw/KSIQgKF
 dzuESK/bbrY6UCLc9qFhJqAcyiBqrdWaioVM+iGIrGk7WZpNO7KXNa3LeB5BkBWPhyie
 yPZs/GpUej/2Y+Eg1NvBgrxbubRoDOYCS8IKitb+M1QGkwm1f1+gs568w4pasyj3XqEe
 Zwag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:openpgp:message-id
 :date:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2OzqeB6lct/4fO2u5biFD/hH4qN2HDn6dJHGOqFVmZI=;
 b=Q2Xyug0iqM1yUvPgBxmUBpU638PSYXJvsBjAdtBXlyGuJ2gHLB7dJ5kbZsKEpeVLUp
 5aNSo+avViVsjmbus6OYKC7btxgOSZ0DNWLUEI+xSMvLnjqLrg9V1EQ2Qf4N2eDpMq9/
 mlPXf+oNe8bZp6SuXKi1cKEHUY5S9dNQo0VO+Wbr+r+zrPz+JgwGeSmBuMpYaRvInmtq
 8xH0yOjFFkmjfQHOvBNp4kcvQJ13HVCMhKQ+TsWXlDvEoxRWoSuXT6jOMlwwc1bKayrP
 r9ysOCTC6lbokSVrSlenvr+rAwRjA+upiXR3glX9vRnCQ7sksFEEVuts/Z7D+U2DfdJD
 d/6Q==
X-Gm-Message-State: APjAAAWuL9bMgNge9CSKF2PnBhXoC7NNw1Snk+FDCAy6XsBcmG2j1l60
 WRGaNlXwhFa2sLoglbYSy823u9zaIkTZhA==
X-Google-Smtp-Source: APXvYqz38URZiwF3jYVFDirDMkOyKsDUee5Q74pCUjTu27Axp8SUi5Xd93x6B2Mphtf8iU4RtObptw==
X-Received: by 2002:a5d:6b0e:: with SMTP id v14mr8459368wrw.280.1571838670680; 
 Wed, 23 Oct 2019 06:51:10 -0700 (PDT)
Received: from [192.168.27.135] ([37.157.136.206])
 by smtp.googlemail.com with ESMTPSA id u68sm26145822wmu.12.2019.10.23.06.51.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 23 Oct 2019 06:51:10 -0700 (PDT)
Subject: Re: [PATCH 5/5] ARM: dts: qcom: msm8974: add interconnect nodes
From: Georgi Djakov <georgi.djakov@linaro.org>
To: Brian Masney <masneyb@onstation.org>
References: <20191013080804.10231-1-masneyb@onstation.org>
 <20191013080804.10231-6-masneyb@onstation.org>
 <d154b0c6-fc39-bebc-d1b5-cc179fb6055d@linaro.org>
 <20191023124753.GA14218@onstation.org>
 <c26159f5-e6fe-07f1-51b3-50b72b258846@linaro.org>
Openpgp: preference=signencrypt
Message-ID: <94f957c6-c26b-b1f5-4d0f-6c9aff0a03cd@linaro.org>
Date: Wed, 23 Oct 2019 16:51:09 +0300
MIME-Version: 1.0
In-Reply-To: <c26159f5-e6fe-07f1-51b3-50b72b258846@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_065112_757803_A81BD556 
X-CRM114-Status: GOOD (  18.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, bjorn.andersson@linaro.org, agross@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjMuMTAuMTkg0LMuIDE2OjM5INGHLiwgR2VvcmdpIERqYWtvdiB3cm90ZToKPiBPbiAyMy4x
MC4xOSDQsy4gMTU6NDcg0YcuLCBCcmlhbiBNYXNuZXkgd3JvdGU6Cj4+IE9uIFdlZCwgT2N0IDIz
LCAyMDE5IGF0IDAyOjUwOjE5UE0gKzAzMDAsIEdlb3JnaSBEamFrb3Ygd3JvdGU6Cj4+PiBPbiAx
My4xMC4xOSDQsy4gMTE6MDgg0YcuLCBCcmlhbiBNYXNuZXkgd3JvdGU6Cj4+Pj4gQWRkIGludGVy
Y29ubmVjdCBub2RlcyB0aGF0J3MgbmVlZGVkIHRvIHN1cHBvcnQgYnVzIHNjYWxpbmcuCj4+Pj4K
Pj4+PiBTaWduZWQtb2ZmLWJ5OiBCcmlhbiBNYXNuZXkgPG1hc25leWJAb25zdGF0aW9uLm9yZz4K
Pj4+PiAtLS0KPj4+PiAgYXJjaC9hcm0vYm9vdC9kdHMvcWNvbS1tc204OTc0LmR0c2kgfCA2MCAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgNjAgaW5z
ZXJ0aW9ucygrKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3Fjb20t
bXNtODk3NC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvcWNvbS1tc204OTc0LmR0c2kKPj4+PiBA
QCAtMTE1Miw2ICsxMjA3LDExIEBACj4+Pj4gIAkJCQkgICAgICAgICAgICAgICJjb3JlIiwKPj4+
PiAgCQkJCSAgICAgICAgICAgICAgInZzeW5jIjsKPj4+PiAgCj4+Pj4gKwkJCQlpbnRlcmNvbm5l
Y3RzID0gPCZtbXNzbm9jIE1OT0NfTUFTX0dSQVBISUNTXzNEICZiaW1jIEJJTUNfU0xWX0VCSV9D
SDA+LAo+Pj4+ICsJCQkJICAgICAgICAgICAgICAgIDwmb2NtZW1ub2MgT0NNRU1fVk5PQ19NQVNf
R0ZYM0QgJm9jbWVtbm9jIE9DTUVNX1NMVl9PQ01FTT47Cj4+Pgo+Pj4gV2hvIHdpbGwgYmUgdGhl
IHJlcXVlc3RpbmcgYmFuZHdpZHRoIHRvIEREUiBhbmQgb2NtZW0/IElzIGl0IHRoZSBkaXNwbGF5
IG9yIEdQVQo+Pj4gb3IgYm90aD8gVGhlIGFib3ZlIHNlZW0gbGlrZSBHUFUtcmVsYXRlZCBpbnRl
cmNvbm5lY3RzLCBzbyBtYXliZSB0aGVzZQo+Pj4gcHJvcGVydGllcyBzaG91bGQgYmUgaW4gdGhl
IEdQVSBEVCBub2RlLgo+Pgo+PiBUaGUgZGlzcGxheSBpcyB3aGF0IGN1cnJlbnRseSByZXF1ZXN0
cyB0aGUgaW50ZXJjb25uZWN0IHBhdGgsCj4+IHNwZWNpZmljYWxseSBtZHA1X3NldHVwX2ludGVy
Y29ubmVjdCgpIGluCj4+IGRyaXZlcnMvZ3B1L2RybS9tc20vZGlzcC9tZHA1L21kcDVfa21zLmMu
IFRoZSBGcmVlZHJlbm8gR1BVIGJpbmRpbmdzCj4+IGN1cnJlbnRseSBkb24ndCBoYXZlIGludGVy
Y29ubmVjdCBzdXBwb3J0LiBNYXliZSB0aGlzIGlzIHNvbWV0aGluZyB0aGF0Cj4+IEkgc2hvdWxk
IGFkZCB0byB0aGF0IGRyaXZlciBhcyB3ZWxsPwo+IAo+IFRoZSAibWRwMC1tZW0iIGFuZCAibWRw
MS1tZW0iIHBhdGhzIG1lbnRpb25lZCBpbiB0aGUgbWRwNV9rbXMuYyBhcmUgdGhlIHR3bwo+IGlu
dGVyY29ubmVjdHMgYmV0d2VlbiB0aGUgZGlzcGxheSBhbmQgRERSIG1lbW9yeS4gVGhlcmUgaXMg
YWN0dWFsbHkgYSBwYXRjaCBbMV0KPiB0byBhZGQgdG8gR1BVIGJpbmRpbmdzLCBidXQgaXQgc2Vl
bXMgdGhhdCB3ZSBtaXNzZWQgdG8gcGljayBpdCB1cC4KCkl0IHdhcyBhY3R1YWxseSBtZXJnZWQg
aW4gdjUuMi4KCkJSLApHZW9yZ2kKCj4+Pj4gKwkJCQlpbnRlcmNvbm5lY3QtbmFtZXMgPSAibWRw
MC1tZW0iLAo+Pj4+ICsJCQkJICAgICAgICAgICAgICAgICAgICAgIm1kcDEtbWVtIjsKPj4+Cj4+
PiBBcyB0aGUgc2Vjb25kIHBhdGggaXMgbm90IHRvIEREUiwgYnV0IHRvIG9jbWVtLCBpdCBtaWdo
dCBiZSBiZXR0ZXIgdG8gY2FsbCBpdAo+Pj4gc29tZXRoaW5nIGxpa2UgImdwdS1vY21lbSIuCj4+
Cj4+IEkgdXNlZCB3aGF0IG1kcDVfa21zLmMgZXhwZWN0ZWQuCj4gCj4gVGhpcyBpcyBmb3IgdGhl
IGRpc3BsYXkgYW5kIGhlcmUgWzJdIGFyZSBzb21lIHBhdGNoZXMgZm9yIHRoZSBHUFUuIE5vdCBz
dXJlIGhvdwo+IHRoZSBOb0NzIGFyZSBjb25maWd1cmVkIG9uIDg5NzQgYnkgZGVmYXVsdCwgYnV0
IGlmIHlvdSBub3RpY2UgYW55IGJsdWUvYmxhY2sKPiBzY3JlZW5zLCB5b3UgbWF5IG5lZWQgdG8g
cmVxdWVzdCBiYW5kd2lkdGggZm9yIGRpc3BsYXkgdG9vLgo+IAo+IFRoYW5rcywKPiBHZW9yZ2kK
PiAKPiBbMV0KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzE1NTU3MDM3ODctMTA4OTctMS1n
aXQtc2VuZC1lbWFpbC1qY3JvdXNlQGNvZGVhdXJvcmEub3JnCj4gWzJdIGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL3IvMjAxODEyMjAxNzMwMjYuMzg1Ny0xLWpjcm91c2VAY29kZWF1cm9yYS5vcmcK
PiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
