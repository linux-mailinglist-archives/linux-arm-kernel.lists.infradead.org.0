Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A90241CCF3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 18:29:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ALYV5XagvpJim8bhbqdM+7bZ/k+LSAJ2PV1lVMX1IFc=; b=OtiD5nYlBbFgHd
	zPxeHyNcToutXqL3eMzBwtCZc1nvrsIJx7JTveAz0FkORNmeD0IwfSIbVG5plqUZGuVS45MLS0LzI
	cYCUFZexLDq5dPg7H9K7Zjhf/j8sW+oWN6j9kIu+xv1IzkyqjorZh0bqij9tKbq/aljz3Hw671ji6
	eDBq6NmRzp5iVgaczhn/XJz+1PgQRmE7rs4x5mhdxywFMsah//kZrLs+IIkl3KSjDHAQsFpXb/rl7
	MS20+O5t0CMHDi8vj0svUTlcZIuGyFAN+Od6N1bbzhDN5+7yUJskVzU4/7OBpNonscG6nSCf5ZzpT
	z8MoRUHhYPv8l1zCZy6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQaIi-0003Bf-E5; Tue, 14 May 2019 16:29:12 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQaIb-0003BG-9N
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 16:29:06 +0000
Received: by mail-pl1-x643.google.com with SMTP id p15so8513972pll.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 09:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Yj7g1zX5VtWrwoZOWHxMk02AJw3vsxkG/HQMAspuC98=;
 b=i9AO/zddYqJtxhgFcoe8F5Na4bI9O43hctdsNe4kI3e3NDv++1q5htouXKw5MnRGxC
 GoGvfIHxsjQzjQNqM6tEjb78jquLfxl8kCUw7MBZV7/vv8+vTBHnoPqqZL6COLZFzq/p
 s6V+2+Bsit437yDuw7qHdOWZGXBcSZep+APajcggOS2RtZWhpHsLDVIwEO31wrhxguol
 x8prFK5E06I1cpLnjRjx4hupLjZk8dcEW30Dry3ddJhnxdVeGT/F/8u2oX03X7bV3f1S
 5Lm8rSUF3Xa1bIAlOFVfdxSi7BmruPqdtizbC8IvS0sA1KHUP3EZE5jHQ8xGr2p/yv9T
 4tfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Yj7g1zX5VtWrwoZOWHxMk02AJw3vsxkG/HQMAspuC98=;
 b=VLTObGTMSieZbd87MfYnJNR7mTPHWU5+ck5bLy+IWeWPvPoNPHucbNn6VsDjU3pi74
 ViYqOoZ4ddakBlqFKZSUf6dzPMsKrg889HaDjR7AViUFTj09Rdy29uRvy2JTQC/zgiGR
 eXYWCRtgCQeZFUkxnOC36UkQ6ytSYBLeV5+6hax8mtlKkmoo1U3rTIjMC0T3tVoO1cKe
 yXdZsjnrvprgelLOt59oIH7Xa91o9LFd9es9MEZArgvn5baQnjCse4u9r4ENSaaTtPfu
 xZYiqynGSVsD/90t+8EjkCKs3ydrBN5Zn4mWDIT8kWccK85girSDdQJA9EK9ocvds7aP
 TACA==
X-Gm-Message-State: APjAAAW+RljoDOctXC/48WI4644yrs781AW4AcL+mv6xJRMUJcZmRuge
 XgL7bSEYH+i31d5FCVJc8e859YoP
X-Google-Smtp-Source: APXvYqxeRPzrXEVpgMuRnDMSw53AxeQEtchI8snOYaBDxa/Ydc0vjRoHLmr7zl3AcQ3L5HFPxGcSNw==
X-Received: by 2002:a17:902:7002:: with SMTP id
 y2mr39331457plk.75.1557851344624; 
 Tue, 14 May 2019 09:29:04 -0700 (PDT)
Received: from [192.168.2.145] (ppp94-29-35-107.pppoe.spdop.ru. [94.29.35.107])
 by smtp.googlemail.com with ESMTPSA id t7sm29751782pfa.42.2019.05.14.09.28.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 09:29:03 -0700 (PDT)
Subject: Re: [PATCH V3 1/8] dt-bindings: memory: tegra: Add external memory
 controller binding for Tegra210
To: Joseph Lo <josephl@nvidia.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
References: <20190510084719.18902-1-josephl@nvidia.com>
 <20190510084719.18902-2-josephl@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <fd68f906-79b4-6eda-b1fa-abaf3b4c6a12@gmail.com>
Date: Tue, 14 May 2019 19:28:16 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190510084719.18902-2-josephl@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_092905_326515_9EEDAB6E 
X-CRM114-Status: GOOD (  20.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTAuMDUuMjAxOSAxMTo0NywgSm9zZXBoIExvINC/0LjRiNC10YI6Cj4gQWRkIHRoZSBiaW5kaW5n
IGRvY3VtZW50IGZvciB0aGUgZXh0ZXJuYWwgbWVtb3J5IGNvbnRyb2xsZXIgKEVNQykgd2hpY2gK
PiBjb21tdW5pY2F0ZXMgd2l0aCBleHRlcm5hbCBMUEREUjQgZGV2aWNlcy4gSXQgaW5jbHVkZXMg
dGhlIGJpbmRpbmdzIG9mCj4gdGhlIEVNQyBub2RlIGFuZCBhIHN1Yi1ub2RlIG9mIEVNQyB0YWJs
ZSB3aGljaCB1bmRlciB0aGUgcmVzZXJ2ZWQgbWVtb3J5Cj4gbm9kZS4gVGhlIEVNQyB0YWJsZSBj
b250YWlucyB0aGUgZGF0YSBvZiB0aGUgcmF0ZXMgdGhhdCBFTUMgc3VwcG9ydGVkLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IEpvc2VwaCBMbyA8am9zZXBobEBudmlkaWEuY29tPgo+IC0tLQo+IHYzOgo+
IC0gZHJvcCB0aGUgYmluZGluZ3Mgb2YgRU1DIHRhYmxlCj4gLSBhZGQgbWVtb3J5LXJlZ2lvbiBh
bmQgcmVzZXJ2ZWQtbWVtb3J5IG5vZGUgZm9yIEVNQyB0YWJsZQo+IC0tLQo+ICAuLi4vbnZpZGlh
LHRlZ3JhMjEwLWVtYy50eHQgICAgICAgICAgICAgICAgICAgfCA1NSArKysrKysrKysrKysrKysr
KysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA1NSBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEw
MDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVtb3J5LWNvbnRyb2xsZXJz
L252aWRpYSx0ZWdyYTIxMC1lbWMudHh0Cj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tZW1vcnktY29udHJvbGxlcnMvbnZpZGlhLHRlZ3JhMjEwLWVt
Yy50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVtb3J5LWNvbnRyb2xs
ZXJzL252aWRpYSx0ZWdyYTIxMC1lbWMudHh0Cj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRl
eCAwMDAwMDAwMDAwMDAuLmQ2NWFlZWYyMzI5Ywo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVtb3J5LWNvbnRyb2xsZXJzL252aWRpYSx0
ZWdyYTIxMC1lbWMudHh0Cj4gQEAgLTAsMCArMSw1NSBAQAo+ICtOVklESUEgVGVncmEyMTAgU29D
IEVNQyAoZXh0ZXJuYWwgbWVtb3J5IGNvbnRyb2xsZXIpCj4gKz09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiArCj4gK0RldmljZSBub2RlCj4gKz09
PT09PT09PT09Cj4gK1JlcXVpcmVkIHByb3BlcnRpZXMgOgo+ICstIGNvbXBhdGlibGUgOiBzaG91
bGQgYmUgIm52aWRpYSx0ZWdyYTIxMC1lbWMiLgo+ICstIHJlZyA6IHBoeXNpY2FsIGJhc2UgYWRk
cmVzcyBhbmQgbGVuZ3RoIG9mIHRoZSBjb250cm9sbGVyJ3MgcmVnaXN0ZXJzLgo+ICstIGNsb2Nr
cyA6IHBoYW5kbGVzIG9mIHRoZSBwb3NzaWJsZSBzb3VyY2UgY2xvY2tzLgo+ICstIGNsb2NrLW5h
bWVzIDogbmFtZXMgb2YgdGhlIHBvc3NpYmxlIHNvdXJjZSBjbG9ja3MuCj4gKy0gaW50ZXJydXB0
cyA6IFNob3VsZCBjb250YWluIHRoZSBFTUMgZ2VuZXJhbCBpbnRlcnJ1cHQuCj4gKy0gbWVtb3J5
LXJlZ2lvbiA6IHBoYW5kbGUgdG8gdGhlIHJlc2VydmVkIG1lbW9yeSAoc2VlCj4gKyAgRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2VydmVkLW1lbW9yeS9yZXNlcnZlZC1tZW1v
cnkudHh0KSB3aGljaAo+ICsgIGNvbnRhaW5zIGEgc3ViLW5vZGUgb2YgRU1DIHRhYmxlLgo+ICst
IG52aWRpYSxtZW1vcnktY29udHJvbGxlciA6IHBoYW5kbGUgb2YgdGhlIG1lbW9yeSBjb250cm9s
bGVyLgo+ICsKPiArUmVzZXJ2ZWQgbWVtb3J5IG5vZGUKPiArPT09PT09PT09PT09PT09PT09PT0K
PiArU2hvdWxkIGNvbnRhaW4gYSBzdWItbm9kZSBvZiBFTUMgdGFibGUgd2l0aCByZXF1aXJlZCBw
cm9wZXJ0aWVzOgo+ICstIGNvbXBhdGlibGUgOiBzaG91bGQgYmUgIm52aWRpYSx0ZWdyYTIxMC1l
bWMtdGFibGUiLgo+ICstIHJlZyA6IHBoeXNpY2FsIGFkZHJlc3MgYW5kIGxlbmd0aCBvZiB0aGUg
bG9jYXRpb24gb2YgRU1DIHRhYmxlLgo+ICsKPiArRXhhbXBsZToKPiArCXJlc2VydmVkLW1lbW9y
eSB7Cj4gKwkJI2FkZHJlc3MtY2VsbHMgPSA8Mj47Cj4gKwkJI3NpemUtY2VsbHMgPSA8Mj47Cj4g
KwkJcmFuZ2VzOwo+ICsKPiArCQllbWNfdGFibGU6IGVtYy10YWJsZUA4YmUwMDAwMCB7Cj4gKwkJ
CWNvbXBhdGlibGUgPSAibnZpZGlhLHRlZ3JhMjEwLWVtYy10YWJsZSI7Cj4gKwkJCXJlZyA9IDww
eDAgMHg4YmUwMDAwMCAweDAgMHgxMDAwMD47Cj4gKwkJCXN0YXR1cyA9ICJva2F5IjsKPiArCQl9
OwoKWW91IGVzc2VudGlhbGx5IG1vdmVkIHRoZSB2MSBiaW5kaW5nIGludG8gb2JzY3VyZSBhbmQg
dW5kb2N1bWVudGVkIGJsb2IsCmlnbm9yaW5nIHByZXZpb3VzIHJldmlldyBjb21tZW50cy4gVGhp
cyBpcyBhIHZlcnkgb2RkIG1vdmUuLi4gcGxlYXNlCmV4cGxhaW4gd2hhdCBpcyBnb2luZyBvbi4K
Ci0tIApEbWl0cnkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
