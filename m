Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F781C1459
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 13:22:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3kI4Ov3pdK2Zg8E2jpqoh6G2XhZf6qaAXAXEYAI4pSY=; b=mQvsJeGL9WFj559KM5HfcbJRQ
	eUcciJ+tf4u20I9EMiQRQ53Uf1govQ6slXUU2W6av3cX7umfazwMoimhZwSvUoX9FOElD1iDBqzj8
	NgCDPQ0FCbXrk/j5XKFBkdMVNDCzX3K1eNpOar6p93cw+ntd6/+IDCqfvxsd7wCuk0SEegxyA63mk
	npvSXWAcRaSuh2A6sWfzfn/7cynSnblm0N0a/Kq27rt1JEXHZ0Wqw3NSf3EA6Cj6BM4jo8XI6ZppK
	8wTvEw7I4tLEcEIB4z0wCwXlE2zb+aqLKVl8dalMn/7e/s5sygA6Kl/jNgqBvZL43XHBpIuh7EdlH
	CDo5vsCZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEXHe-0001op-64; Sun, 29 Sep 2019 11:22:34 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEXHT-0001oN-NC; Sun, 29 Sep 2019 11:22:25 +0000
Received: by mail-wm1-x344.google.com with SMTP id i16so10262928wmd.3;
 Sun, 29 Sep 2019 04:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=+5mJbdKNBA+m8vppAhdI++7fky2Q3/YXSRQyiXoFCLc=;
 b=TezKHyJE5Sh4r/up5iuLlLvtQlnGcW+cP3IjZjdyn5mNmGmckP4YUZ8u37UQI5CyR1
 m1FoANAti7h7OpC1dgvPkyokVmeCFCBzhLGkHcypq17mEOUhfDO6m6kiacC4AkHBcS/V
 pB4fPiz8qqNc6npdgyAYdUAobBrUunE99yOU1yTCva+DlTDmV9EBtEujS5NOcTPlL6/n
 RXCs/THrVHusCcxQTTp54XhPw+EbTD3N2Cg01ICIIVWHrPwYb5egg6bbzc9eicSROIT5
 5Zy74W/86zXdQ4K6YH3DvUskoFg2xs0U3sVBuP7AAUvTyAYYQ/AbzHr4zPoJHpbM2PP5
 //Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=+5mJbdKNBA+m8vppAhdI++7fky2Q3/YXSRQyiXoFCLc=;
 b=Pj00V4C1mFukbMDreLedfyitdICM5J/yYrigE7vzJUlkieTLU6oDTqmHtU9jEuhu8U
 et6WGYzV+ouU8/3pvolJNc4mJi0/m+g5tVeLpAeB2RDIHhpgCxD2y2nV3c/G6xVHWhuN
 dVq8X6KwLwhK6QYD0a0jEWp33M8hkMCy6we5WCSledTSrdTtKAP84bIBgyBohfmSfv/G
 WJN9ooCnaLfoAKkXgtFZEYKGMEAcISx/d6Kb/IJO2nEV5ck1yaJSN8R+FDcP1A3NZFUM
 O71ppuBttwivZEedHLXImIjjKz6lKu/k3xhdI0Ei1Gn+xnSM9enrnneUjIMnY/NLHwhU
 NIMQ==
X-Gm-Message-State: APjAAAXkfDM7JCk2geVf8+XdMxLG46uzwKLgrHqhIeKl6Gv0OLQYpuhO
 2Lym+Gg3jH0QkipXlgYTgEE=
X-Google-Smtp-Source: APXvYqwYBuT58Y/Ro1CA1xclbEevvBfYgIFxMJg2pEEKp5Se24KdjkrFWsiKF4sAjXe2yJ4wuhzJrw==
X-Received: by 2002:a7b:c764:: with SMTP id x4mr13222224wmk.62.1569756141017; 
 Sun, 29 Sep 2019 04:22:21 -0700 (PDT)
Received: from localhost ([94.73.41.211])
 by smtp.gmail.com with ESMTPSA id m62sm13230613wmm.35.2019.09.29.04.22.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Sep 2019 04:22:18 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Vivek Unune <npcomplete13@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix usb-c on Hugsun X99 TV Box
Date: Sun, 29 Sep 2019 13:22:17 +0200
MIME-Version: 1.0
Message-ID: <54c67ca8-8428-48ee-9a96-e1216ba02839@gmail.com>
In-Reply-To: <20190929032230.24628-1-npcomplete13@gmail.com>
References: <20190929032230.24628-1-npcomplete13@gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_042223_781663_8137CEEC 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 Felipe Balbi <felipe.balbi@linux.intel.com>, Felipe Balbi <balbi@kernel.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, akash@openedev.com, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuZGF5LCBTZXB0ZW1iZXIgMjksIDIwMTkgNToyMjozMCBBTSBDRVNULCBWaXZlayBVbnVu
ZSB3cm90ZToKPiBGaXggdXNiLWMgb24gWDk5IFRWIEJveC4gVGVzdGVkIHdpdGggYXJtYmlhbiB3
LyBrZXJuZWwgNS4zCj4KPiBTaWduZWQtb2ZmLWJ5OiBWaXZlayBVbnVuZSA8bnBjb21wbGV0ZTEz
QGdtYWlsLmNvbT4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkt
aHVnc3VuLXg5OS5kdHMgfCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzM5OS1odWdzdW4teDk5LmR0cyAKPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzk5LWh1Z3N1bi14OTkuZHRzCj4gaW5kZXggMGQxZjVmOWEwZGU5Li5jMTMzZThk
NjRiMmEgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkt
aHVnc3VuLXg5OS5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS1odWdzdW4teDk5LmR0cwo+IEBAIC02NDQsNyArNjQ0LDcgQEAKPiAgCXN0YXR1cyA9ICJva2F5
IjsKPiAgCj4gIAl1MnBoeTBfaG9zdDogaG9zdC1wb3J0IHsKPiAtCQlwaHktc3VwcGx5ID0gPCZ2
Y2M1djBfaG9zdD47Cj4gKwkJcGh5LXN1cHBseSA9IDwmdmNjNXYwX3R5cGVjPjsKPiAgCQlzdGF0
dXMgPSAib2theSI7Cj4gIAl9Owo+ICAKPiBAQCAtNzEyLDcgKzcxMiw3IEBACj4gIAo+ICAmdXNi
ZHJkX2R3YzNfMCB7Cj4gIAlzdGF0dXMgPSAib2theSI7Cj4gLQlkcl9tb2RlID0gIm90ZyI7Cj4g
Kwlkcl9tb2RlID0gImhvc3QiOwo+ICB9Owo+ICAKPiAgJnVzYmRyZDNfMSB7CgpIaSBWaXZlaywK
CndoaWNoIGlzIHRoZSByZWxhdGlvbnNoaXAgb2YgeW91ciBwYXRjaCBhbmQgdGhpcyBjb21taXQ6
CgplMWQ5MTQ5ZTgzODlmMTY5MGNkZDRlNDA1Njc2NmRkMjY0ODhhMGZlCmFybTY0OiBkdHM6IHJv
Y2tjaGlwOiBGaXggVVNCMyBUeXBlLUMgb24gcmszMzk5LXNhcHBoaXJlCgp3aXRoIHJlc3BlY3Qg
dG8gdGhpcyBvdGhlciBjb21taXQ6CgpjMDliNzNjZmFjMmE5MzE3ZjExMDQxNjkwNDVjNTE5YzYw
MjFhYTFkCnVzYjogZHdjMzogZG9uJ3Qgc2V0IGdhZGdldC0+aXNfb3RnIGZsYWcKCj8KCkkgZGlk
IG5vdCB0ZXN0IHJldmVydGluZyBlMWQ5MTQ5ZSBzaW5jZSBjMDliNzNjZiB3YXMgYXBwbGllZC4K
ClJlZ2FyZHMsCiAgVmljZW7Dpy4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
