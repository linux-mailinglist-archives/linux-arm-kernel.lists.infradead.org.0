Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5576114442
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 17:01:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9RYUzfFZ31JqGk3k5yNduf4smEPB2nP+VA1RHjl9hQg=; b=fDfoZz8sLQi6CX
	o0FmFSVQQZ19l8Hf6RlBi6gHcdP4FHUIM8KLhNL3j31sAGb8QH8W8WwBf/veEVJxldgT/sFoiFJ7U
	p9wJxUCzklQO3h3Vo7zSYg/5o5dM13Q7Nxhp1jDiEj3zg2ohxtycCFEuLyDujkZGOy6HiXd3CF2B8
	Gp64h3D3qHRN33OwMhSBJlW+n7j4pdK+028m8NqbLLOOehfZpUZMMIsChi2P8MN7uvE9f7C8b5BUR
	YTSZy9G80561IzAlD+SJU4/m/cp3XCnM+Cpfu1lgA7BXPuucDiOMeCfi5Lqg43a/0ASMWgWlUuUqG
	clAAKYgDVRktxeiJoVXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ictZE-0008R5-9N; Thu, 05 Dec 2019 16:01:24 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ictYF-0008Lx-V2
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 16:00:26 +0000
Received: by mail-wm1-x342.google.com with SMTP id p17so4249519wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 08:00:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YnnvnRu2PoYgPdq942eyS3Ax5hU9+AGDn/94VxefpYc=;
 b=dHvUrY3jJEMo8JkEfiNhbcY+Lgr/g3UgFCURKa2aMOznUXvBnj2msoM6Der6rMaZMC
 lYjNqKplHuaH612WbK/eIygcFkQqN5W4Mdseb1+aDEpJOvHitX70V8XwLcoEG+cHztiD
 qpL5RqB9xyIA0GxdYQqEH2I6HHD+YYMuHb5RwUnvCYE1tYCPVSd2Jzl9eCNg8hBjc3Gd
 pu5Mh+UhEonfyPSAauB/fdmHAf6fwImDkdBHQUuYt021rtORT6a/wyWM8Pzyq5zg0Gix
 24u/q2gQUkFSpKPdE4TS6YXIahB6CNZLCn8vCcCjZXXy/oGuViQxqn/EnXvbu+RuNLSW
 DxHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=YnnvnRu2PoYgPdq942eyS3Ax5hU9+AGDn/94VxefpYc=;
 b=USKAGi+cCz50xxeS15A2ukw6SrY0g9wr5ijbOK97+Mnq5N35tLnuI/PloAiWT2C7sI
 R+KoTGi0yDgcC+PR/dObXGb0vtZMTB7oL3zorgb/VpUS7N8lp3LPEQ6VdY5j2OMqXID2
 aYUXytr93lKroKa2/ByZ+Gl6/NxtkpLSw9yHMgLQWfIuBzUR1pEtEY/pvBG6sNWE1EEn
 4bx5cvAZGKzNFRhXiK0Gh9DJzlvQW8htVZfnbLLSQesm02KSRPTGXsPV7xAOWclwNFrx
 +Dpl7W9yrTWDvxV/duBiKA7HU/7b9JJMAp3FvQnebiLKxuLC+KKTxD0R+tNpL2qByGnx
 5jXQ==
X-Gm-Message-State: APjAAAUwpLOKnZmF0xbqo79tmAPqOrgatlUznqW4sCiGbSbWrFb9R8Ri
 4TFGiLcVmn9BOrah80MsxgZteQ==
X-Google-Smtp-Source: APXvYqzQmAMVggpcJ2Il7o1K/oNH2/lKa1KT/fPP47Pa4O6naGVAir4yMUZcakBlKewfYJgm2+dDdw==
X-Received: by 2002:a1c:8095:: with SMTP id b143mr6307851wmd.7.1575561622159; 
 Thu, 05 Dec 2019 08:00:22 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:24c3:ebb3:9dd5:81c6?
 ([2a01:e34:ed2f:f020:24c3:ebb3:9dd5:81c6])
 by smtp.googlemail.com with ESMTPSA id z189sm315498wmc.2.2019.12.05.08.00.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Dec 2019 08:00:21 -0800 (PST)
Subject: Re: [PATCH] [RESEND] arm64: dts: mt8173: Add dynamic power node.
To: michael.kao@mediatek.com, Zhang Rui <rui.zhang@intel.com>,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, hsinyi@chromium.org,
 linux-pm@vger.kernel.org
References: <20191122090610.17015-1-michael.kao@mediatek.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <4aaf8cee-eaa2-5de4-37f0-094b9bc8da22@linaro.org>
Date: Thu, 5 Dec 2019 17:00:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191122090610.17015-1-michael.kao@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_080024_014034_39BEBE15 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Dawei Chien <dawei.chien@mediatek.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIE1pY2hhZWwsCgoKT24gMjIvMTEvMjAxOSAxMDowNiwgbWljaGFlbC5rYW9AbWVkaWF0ZWsu
Y29tIHdyb3RlOgo+IEZyb206ICJtaWNoYWVsLmthbyIgPG1pY2hhZWwua2FvQG1lZGlhdGVrLmNv
bT4KPiAKPiBUaGlzIGRldmljZSBub2RlIGlzIGZvciBjYWxjdWxhdGluZyBkeW5hbWljIHBvd2Vy
IGluIG1XLgo+IFNpbmNlIG10ODE3MyBoYXMgdHdvIGNsdXN0ZXJzLCB0aGVyZSBhcmUgdHdvIGR5
bmFtaWMgcG93ZXIKPiBjb2VmZmljaWVudCBhcyB3ZWxsLgoKQXJlIHlvdSBzdXJlIGFib3V0IHRo
ZSB2YWx1ZXM/IFVzdWFsbHksIEJpZyBpcyB+eDQgbGl0dGxlLCBoZXJlIGl0IGlzIH54Mi4KCgo+
IFNpZ25lZC1vZmYtYnk6IERhd2VpIENoaWVuIDxkYXdlaS5jaGllbkBtZWRpYXRlay5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogTWljaGFlbC5LYW8gPG1pY2hhZWwua2FvQG1lZGlhdGVrLmNvbT4KPiAK
PiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxNzMuZHRzaSB8IDQgKysr
Kwo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTczLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL21lZGlhdGVrL210ODE3My5kdHNpCj4gaW5kZXggMTVmMTg0MmY2ZGYzLi5iMDNjYTVhNzEz
MzggMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxNzMuZHRz
aQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTczLmR0c2kKPiBAQCAt
MTU3LDYgKzE1Nyw3IEBACj4gIAkJCWVuYWJsZS1tZXRob2QgPSAicHNjaSI7Cj4gIAkJCWNwdS1p
ZGxlLXN0YXRlcyA9IDwmQ1BVX1NMRUVQXzA+Owo+ICAJCQkjY29vbGluZy1jZWxscyA9IDwyPjsK
PiArCQkJZHluYW1pYy1wb3dlci1jb2VmZmljaWVudCA9IDwyNjM+Owo+ICAJCQljbG9ja3MgPSA8
JmluZnJhY2ZnIENMS19JTkZSQV9DQTUzU0VMPiwKPiAgCQkJCSA8JmFwbWl4ZWRzeXMgQ0xLX0FQ
TUlYRURfTUFJTlBMTD47Cj4gIAkJCWNsb2NrLW5hbWVzID0gImNwdSIsICJpbnRlcm1lZGlhdGUi
Owo+IEBAIC0xNzAsNiArMTcxLDcgQEAKPiAgCQkJZW5hYmxlLW1ldGhvZCA9ICJwc2NpIjsKPiAg
CQkJY3B1LWlkbGUtc3RhdGVzID0gPCZDUFVfU0xFRVBfMD47Cj4gIAkJCSNjb29saW5nLWNlbGxz
ID0gPDI+Owo+ICsJCQlkeW5hbWljLXBvd2VyLWNvZWZmaWNpZW50ID0gPDI2Mz47Cj4gIAkJCWNs
b2NrcyA9IDwmaW5mcmFjZmcgQ0xLX0lORlJBX0NBNTNTRUw+LAo+ICAJCQkJIDwmYXBtaXhlZHN5
cyBDTEtfQVBNSVhFRF9NQUlOUExMPjsKPiAgCQkJY2xvY2stbmFtZXMgPSAiY3B1IiwgImludGVy
bWVkaWF0ZSI7Cj4gQEAgLTE4Myw2ICsxODUsNyBAQAo+ICAJCQllbmFibGUtbWV0aG9kID0gInBz
Y2kiOwo+ICAJCQljcHUtaWRsZS1zdGF0ZXMgPSA8JkNQVV9TTEVFUF8wPjsKPiAgCQkJI2Nvb2xp
bmctY2VsbHMgPSA8Mj47Cj4gKwkJCWR5bmFtaWMtcG93ZXItY29lZmZpY2llbnQgPSA8NTMwPjsK
PiAgCQkJY2xvY2tzID0gPCZpbmZyYWNmZyBDTEtfSU5GUkFfQ0E3MlNFTD4sCj4gIAkJCQkgPCZh
cG1peGVkc3lzIENMS19BUE1JWEVEX01BSU5QTEw+Owo+ICAJCQljbG9jay1uYW1lcyA9ICJjcHUi
LCAiaW50ZXJtZWRpYXRlIjsKPiBAQCAtMTk2LDYgKzE5OSw3IEBACj4gIAkJCWVuYWJsZS1tZXRo
b2QgPSAicHNjaSI7Cj4gIAkJCWNwdS1pZGxlLXN0YXRlcyA9IDwmQ1BVX1NMRUVQXzA+Owo+ICAJ
CQkjY29vbGluZy1jZWxscyA9IDwyPjsKPiArCQkJZHluYW1pYy1wb3dlci1jb2VmZmljaWVudCA9
IDw1MzA+Owo+ICAJCQljbG9ja3MgPSA8JmluZnJhY2ZnIENMS19JTkZSQV9DQTcyU0VMPiwKPiAg
CQkJCSA8JmFwbWl4ZWRzeXMgQ0xLX0FQTUlYRURfTUFJTlBMTD47Cj4gIAkJCWNsb2NrLW5hbWVz
ID0gImNwdSIsICJpbnRlcm1lZGlhdGUiOwo+IAoKCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9y
Zy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9s
bG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vi
b29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDov
L3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
