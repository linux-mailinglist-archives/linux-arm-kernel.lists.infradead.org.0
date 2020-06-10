Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 075A61F4DED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 08:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A8uF66Kc4YW/h5K3tJMWcimoqVwPeRCXbByBImIBBG4=; b=EJ6ToiXBbMjF/+
	kT5lV4jrFC7dvROOabPCAS0zeXBzRS1ud71t2nCcZl3n1wMS/BT9Bk5qpFlwKLpsEqFtWgUXdf6YH
	9nclgEB/vnuCnEH4WwaCk5il33bY1zJswbU0fYLnYxw4NAIBnAmgkqu1+4dQEn4byr2Y1i1OF4Tsw
	I7OQsoCLTY1CZ9rLOKIxB9qzXfqhwNqp05kqDa8uWta0dYU/n5PDfU260w2eiAo1Tc0Q1bSay1fRS
	Idj3g+VbB/oIkqy5UX5EuK7wuS9qNWT19JquqGtMIQoRWa7KZqLgKkNgzeMYUtwl4T+cONLniIlJE
	9aNdsLKkbhYOmUbwI4kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jityy-0008KO-Sp; Wed, 10 Jun 2020 06:13:04 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jityr-0008JV-3H
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 06:12:58 +0000
Received: by mail-wr1-x443.google.com with SMTP id x14so834954wrp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 23:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=YFS49LeAdYWsFkZB6toKPPYrtNxxXWg+HB/beR9uOGw=;
 b=cGLcspUr0IuodOqnZAQPSb34Uq+ZHE/hNdoknVPmWWB7jmgqzuNaU7PWQWWYNfhgXk
 CEFkpxamdRuISq5JD4vvNprtJGe83xuHdqOFQOWfQ0YIer42HjR84BsYlf5G5qq25v5a
 kOX9FgoUqJibf9kBYZegnueXdmWmXolWYMbN1LD4VcanomrIIhsBN9b6qOvEeOz9rGFT
 hloQkqMzQ6AqC9M4mJCC1quRpu+NZErUvft6B0s/8Uwe34y2zkErYnd1MioBcPpwOMrI
 +QjbtX6VkOyzTpl6cEBWHzormeWieFoGfd4FL/HvYjqSbeCj6OJhzxkCmae3RxljzDyF
 oexQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=YFS49LeAdYWsFkZB6toKPPYrtNxxXWg+HB/beR9uOGw=;
 b=GFRc3hKkeGTHkfxo3fZFUlmqyQ1E/a4A3TPKvaa+OMGihkCM3Jp88A026hF1vIiBeP
 AZ8tx2D7W36ugFKzQX7hEgCNzN2Jq1Sgx55wES1qMDVqn5d1vGkErQo75sCWrcdA4Nho
 AxnYr009wLzP8espFN+3MRpLMaf56Umd9dn8M8sF2PWFGAmHuuug6QWFba0DtVpJOKKv
 QsUMk9MngU969C6A5GEa2+DQE2ogFfxsV0ViKVatuMOgur7s7Uv1YJKn87H42BqyxfCy
 Xd2Imx1f4wI7TWldjQH+Ok2M4fDO/UZxiJF4YGXNAMF4ybKvyoIfTUVDTJcqy+SD0yZG
 j5lA==
X-Gm-Message-State: AOAM532Gmem1qkBOopZqYdR8bSkBqAbC33OvZbLrHfFqTYzTPuqBiPz3
 YIx1fH4gIRXx6ci0TwAY6CM=
X-Google-Smtp-Source: ABdhPJxgn9mt+j/iAy3c3Gf1zgcXhSDyAzwtE33TyE+1dpPQn3yHQl0MPpY1xCBc1tFtNvPNTzVwLQ==
X-Received: by 2002:adf:9795:: with SMTP id s21mr1831925wrb.166.1591769575644; 
 Tue, 09 Jun 2020 23:12:55 -0700 (PDT)
Received: from macbook-pro-alvaro.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id l2sm6425028wru.58.2020.06.09.23.12.54
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jun 2020 23:12:54 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [PATCH 2/2] clk: bcm63xx-gate: add BCM6318 support
From: =?utf-8?Q?=C3=81lvaro_Fern=C3=A1ndez_Rojas?= <noltari@gmail.com>
In-Reply-To: <1367fcf3-24ed-9106-a329-da5f8e168e17@gmail.com>
Date: Wed, 10 Jun 2020 08:12:53 +0200
Message-Id: <3E897527-55EB-47DB-99ED-C737725F0F9E@gmail.com>
References: <20200609113049.4035426-1-noltari@gmail.com>
 <20200609113049.4035426-3-noltari@gmail.com>
 <1367fcf3-24ed-9106-a329-da5f8e168e17@gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_231257_160065_516599CE 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, lkp@intel.com, sboyd@kernel.org,
 mturquette@baylibre.com, f4bug@amsat.org, linux-kernel@vger.kernel.org,
 julia.lawall@lip6.fr, robh+dt@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, jonas.gorski@gmail.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRmxvcmlhbiwKCj4gRWwgMTAganVuIDIwMjAsIGEgbGFzIDQ6MjcsIEZsb3JpYW4gRmFpbmVs
bGkgPGYuZmFpbmVsbGlAZ21haWwuY29tPiBlc2NyaWJpw7M6Cj4gCj4gCj4gCj4gT24gNi85LzIw
MjAgNDozMCBBTSwgw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+PiArc3RhdGljIGNv
bnN0IHN0cnVjdCBjbGtfYmNtNjN4eF90YWJsZV9lbnRyeSBiY202MzE4X2Nsb2Nrc1tdID0gewo+
PiArCXsgLm5hbWUgPSAiYWRzbF9hc2IiLCAuYml0ID0gMCwgfSwKPj4gKwl7IC5uYW1lID0gInVz
Yl9hc2IiLCAuYml0ID0gMSwgfSwKPj4gKwl7IC5uYW1lID0gIm1pcHNfYXNiIiwgLmJpdCA9IDIs
IH0sCj4+ICsJeyAubmFtZSA9ICJwY2llX2FzYiIsIC5iaXQgPSAzLCB9LAo+PiArCXsgLm5hbWUg
PSAicGh5bWlwc19hc2IiLCAuYml0ID0gNCwgfSwKPj4gKwl7IC5uYW1lID0gInJvYm9zd19hc2Ii
LCAuYml0ID0gNSwgfSwKPj4gKwl7IC5uYW1lID0gInNhcl9hc2IiLCAuYml0ID0gNiwgfSwKPj4g
Kwl7IC5uYW1lID0gInNkcl9hc2IiLCAuYml0ID0gNywgfSwKPj4gKwl7IC5uYW1lID0gInN3cmVn
X2FzYiIsIC5iaXQgPSA4LCB9LAo+PiArCXsgLm5hbWUgPSAicGVyaXBoX2FzYiIsIC5iaXQgPSA5
LCB9LAo+PiArCXsgLm5hbWUgPSAiY3B1YnVzMTYwIiwgLmJpdCA9IDEwLCB9LAo+PiArCXsgLm5h
bWUgPSAiYWRzbCIsIC5iaXQgPSAxMSwgfSwKPj4gKwl7IC5uYW1lID0gInNhcjEyNCIsIC5iaXQg
PSAxMiwgfSwKPiAKPiBOaXQ6IHRoaXMgc2hvdWxkIGJlIHNhcjEyNQoKTmljZSBjYXRjaCwgSSB3
aWxsIGZpeCB0aGlzIGluIHYyLgoKPiAKPj4gKwl7IC5uYW1lID0gIm1pcHMiLCAuYml0ID0gMTMs
IC5mbGFncyA9IENMS19JU19DUklUSUNBTCwgfSwKPj4gKwl7IC5uYW1lID0gInBjaWUiLCAuYml0
ID0gMTQsIH0sCj4+ICsJeyAubmFtZSA9ICJyb2Jvc3cyNTAiLCAuYml0ID0gMTYsIH0sCj4+ICsJ
eyAubmFtZSA9ICJyb2Jvc3cwMjUiLCAuYml0ID0gMTcsIH0sCj4+ICsJeyAubmFtZSA9ICJzZHIi
LCAuYml0ID0gMTksIC5mbGFncyA9IENMS19JU19DUklUSUNBTCwgfSwKPj4gKwl7IC5uYW1lID0g
InVzYiIsIC5iaXQgPSAyMCwgfSwKPiAKPiBUaGlzIHNob3VsZCBwcm9iYWJseSBiZSAidXNiZCIg
dG8gaW5kaWNhdGUgdGhpcyBpcyB0aGUgVVNCIGRldmljZSBjbG9jawo+IChub3QgaG9zdCkKCk9r
LCBJIHdpbGwgY2hhbmdlIGl0LiBJIGdvdCBjb25mdXNlZCBieSB0aGUgZmFjdCB0aGF0IGJvdGgg
KHVzYmQgYW5kIHVzYmgpIHdlcmUgcHJlc2VudCBvbiA2MzE4X21hcF9wYXJ0Lmg6CiNkZWZpbmUg
VVNCRF9DTEtfRU4gICAgICAgICAoMSA8PCAyMCkKI2RlZmluZSBVU0JIX0NMS19FTiAgICAgICAg
ICgxIDw8IDIwKQoKPiAKPiBXaXRoIHRoYXQgZml4ZWQ6Cj4gCj4gUmV2aWV3ZWQtYnk6IEZsb3Jp
YW4gRmFpbmVsbGkgPGYuZmFpbmVsbGlAZ21haWwuY29tPgo+IC0tIAo+IEZsb3JpYW4KCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
