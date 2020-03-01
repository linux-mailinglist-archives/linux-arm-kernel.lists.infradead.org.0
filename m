Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A529174C61
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 10:03:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wj7K41dXzqMwweD2pArEF7I7r/Z64KFkTUNqsehTX3A=; b=cYgA4MC6QX/AFC
	wG5icin5uV/Zs1yykII3qoUwxUzvWL7/wzqd27c/xRMFztrgnYcCyGEgmRgU956SQI0l6NSLFZg0F
	a2Mf+RfS/exeYIkw9zIxpx9sCn71/93qa4C1WtSZiC5+qAJPthLChnlSLzlytGpq0N7l0F+zBC/YZ
	Z4iL5AfeBzMJoZxprZ0ebH8ROdiCp5flTRRumevP7epslobrpoudy0uQ+37XiF8NGE7xlUFc2fzt0
	4TPTDPH3nQDTEjAaHMwdjc6eg2BhqyQq3EsXp1DQW1lg6iKRny+3j4zhAi3CHin/Mv2vUoMdzKv2W
	HkTDQ/JUgwoa2OAR8vrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8KVM-00048f-Vb; Sun, 01 Mar 2020 09:03:21 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8KV3-00045X-V7
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 09:03:03 +0000
Received: by mail-wr1-x444.google.com with SMTP id v4so8606687wrs.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Mar 2020 01:03:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=slGxF9qjBPq+owUSM5HA+cWARavYP/l9u8125Kfep3Q=;
 b=ysXG6e0H6OQFTHDPORu3KqmtZFiQlM47kqdFx1B5YIYLXT2JjdB3lFv5ZvWuoc5Uf2
 2ExWooxYZxvazVD7HS0V/wsSLraVjM4T7MzY+X9H66arzNt5PF+6ekFF4NM/coFnhNnF
 CY6A4onQ8ripK7vv/LaV32Ev8sq/wZ/zMC5nbJOixLWMpH7F9ez0JyXdaLdB8bVtlfGY
 NB6yZlk3YykB8hgqRBM+BBI7zSIOASFF8cKkEE1sp0YGouJeRrqIJpQCpUk8hIj3/ZJZ
 u4Qw0RHCF5e1fG8jwW0izXtWOXYuiNTeIxEg7CKuPPIyM72JiYxDqViQOBpFcRI0tcro
 W9pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=slGxF9qjBPq+owUSM5HA+cWARavYP/l9u8125Kfep3Q=;
 b=BZ7vPlD/iEj3AFD9z7K/CuYWrOrPGRds749u7dyC7HxeFLlMz37X04aaii+5pF4mTM
 OccG+SP8PTqQQxNlF5rERcYHfxVEgXaIECtjVETFgw+XVpG9lXeuWIw7P0sUt3HVeITu
 X2J/iHNZvuIjxoFY1hal1ruskHAhOREmWxO230DS6DeSqba1T4LEBuLfDWvP+DgWhHB7
 WtsmPlgXwD/lyWt7hMxofFKRKrLvz5ghCUuVcXgahGM5HULT/4T1DkUZvYWWnIih66i1
 8GJJ2n0fsVTM6scI2VAqjnMwGeLVCZdhc9442REuGoanMt1dTQtyeaeU6NgnAalvH6HW
 /Vzw==
X-Gm-Message-State: APjAAAVmdyrIiVeCT5nGWU17tDcCWRM/yfJmKE/WvXriyvigR41TObCA
 DLL1c5oTTv3EI9WJEXkY3RdJpQ==
X-Google-Smtp-Source: APXvYqwtqzLgXYZckgw7NwmNvCx/NUB+nLWIm0ENVHSQDAr8KR8jLjFUPo6/biQfCdmVDAcJqc+snQ==
X-Received: by 2002:adf:a304:: with SMTP id c4mr14879111wrb.186.1583053379973; 
 Sun, 01 Mar 2020 01:02:59 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:41d5:595f:62f:a254?
 ([2a01:e34:ed2f:f020:41d5:595f:62f:a254])
 by smtp.googlemail.com with ESMTPSA id i8sm15585002wrq.10.2020.03.01.01.02.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 01 Mar 2020 01:02:59 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: rockchip: Add txpbl node for RK3399/RK3328
To: Carlos de Paula <me@carlosedp.com>
References: <20200218221040.10955-1-me@carlosedp.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <92930c13-3538-32a7-b016-4150bcbc0e56@linaro.org>
Date: Sun, 1 Mar 2020 10:02:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200218221040.10955-1-me@carlosedp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_010302_074044_3DBF0FC9 
X-CRM114-Status: GOOD (  21.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: jose.abreu@synopsys.com, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Peter Geis <pgwipeout@gmail.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Johan Jonker <jbx6244@gmail.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Robin Murphy <robin.murphy@arm.com>, papadakospan@gmail.com,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTgvMDIvMjAyMCAyMzoxMCwgQ2FybG9zIGRlIFBhdWxhIHdyb3RlOgo+IFNvbWUgcm9ja2No
aXAgU29DcyBsaWtlIHRoZSBSSzMzOTkgYW5kIFJLMzMyOCBleGhpYml0IGFuIGlzc3VlCj4gd2hl
cmUgdHggY2hlY2tzdW1taW5nIGRvZXMgbm90IHdvcmsgd2l0aCBwYWNrZXRzIGxhcmdlciB0aGFu
IDE0OTguCj4gCj4gVGhlIGRlZmF1bHQgUHJvZ3JhbW1hYmxlIEJ1ZmZlciBMZW5ndGggZm9yIFRY
IGluIHRoZXNlIEdNQUMncyBpcwo+IG5vdCBzdWl0YWJsZSBmb3IgTVRVcyBoaWdoZXIgdGhhbiAx
NDk4LiBUaGUgd29ya2Fyb3VuZCBpcyB0byBkaXNhYmxlCj4gVFggb2ZmbG9hZGluZyB3aXRoICdl
dGh0b29sIC1LIGV0aDAgdHggb2ZmIHJ4IG9mZicgY2F1c2luZyBwZXJmb3JtYW5jZQo+IGltcGFj
dHMgYXMgaXQgZGlzYWJsZXMgaGFyZHdhcmUgY2hlY2tzdW1taW5nLgo+IAo+IFRoaXMgcGF0Y2gg
c2V0cyBzbnBzLHR4cGJsIHRvIDB4NCB3aGljaCBpcyBhIHNhZmUgbnVtYmVyIHRlc3RlZCBvayBm
b3IKPiB0aGUgbW9zdCBwb3B1bGFyIE1UVSB2YWx1ZSBvZiAxNTAwLgoKV2hhdCBhYm91dCB1c2lu
ZyBzb21ldGhpbmcgbGlrZToKCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9r
ZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9uZXQvbWFydmVsbC1hcm1hZGEtMzcwLW5ldGEudHh0I24xNgoKb3IKCmh0dHBz
Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4
LmdpdC90cmVlL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvZXRoZXJuZXQt
Y29udHJvbGxlci55YW1sI24zNwoKPwoKPiBGb3IgcmVmZXJlbmNlLCBzZWUgaHR0cHM6Ly9sa21s
Lm9yZy9sa21sLzIwMTkvNC8xLzEzODIuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2FybG9zIGRlIFBh
dWxhIDxtZUBjYXJsb3NlZHAuY29tPgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzMyOC5kdHNpIHwgMiArKwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS5kdHNpIHwgMSArCj4gIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4gCj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LmR0c2kgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC5kdHNpCj4gaW5kZXggMWY1M2VhZDUy
YzdmLi5iN2YxZGU0YjdmZDAgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzMjguZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
MzI4LmR0c2kKPiBAQCAtOTA2LDYgKzkwNiw3IEBACj4gIAkJcmVzZXRzID0gPCZjcnUgU1JTVF9H
TUFDMklPX0E+Owo+ICAJCXJlc2V0LW5hbWVzID0gInN0bW1hY2V0aCI7Cj4gIAkJcm9ja2NoaXAs
Z3JmID0gPCZncmY+Owo+ICsJCXNucHMsdHhwYmwgPSA8MHg0PjsKPiAgCQlzdGF0dXMgPSAiZGlz
YWJsZWQiOwo+ICAJfTsKPiAgCj4gQEAgLTkxMyw2ICs5MTQsNyBAQAo+ICAJCWNvbXBhdGlibGUg
PSAicm9ja2NoaXAscmszMzI4LWdtYWMiOwo+ICAJCXJlZyA9IDwweDAgMHhmZjU1MDAwMCAweDAg
MHgxMDAwMD47Cj4gIAkJcm9ja2NoaXAsZ3JmID0gPCZncmY+Owo+ICsJCXNucHMsdHhwYmwgPSA8
MHg0PjsKPiAgCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMjEgSVJRX1RZUEVfTEVWRUxfSElHSD47
Cj4gIAkJaW50ZXJydXB0LW5hbWVzID0gIm1hY2lycSI7Cj4gIAkJY2xvY2tzID0gPCZjcnUgU0NM
S19NQUMyUEhZX1NSQz4sIDwmY3J1IFNDTEtfTUFDMlBIWV9SWFRYPiwKPiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaSBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kKPiBpbmRleCAzM2NjMjFmY2Y0YzEuLmNkNTQxNWQ3
ZTU1OSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5k
dHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaQo+IEBA
IC0yODgsNiArMjg4LDcgQEAKPiAgCQlyZXNldHMgPSA8JmNydSBTUlNUX0FfR01BQz47Cj4gIAkJ
cmVzZXQtbmFtZXMgPSAic3RtbWFjZXRoIjsKPiAgCQlyb2NrY2hpcCxncmYgPSA8JmdyZj47Cj4g
KwkJc25wcyx0eHBibCA9IDwweDQ+Owo+ICAJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gIAl9Owo+
ICAKPiAKCgotLSAKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVu
IHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3
dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5j
b20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8t
YmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
