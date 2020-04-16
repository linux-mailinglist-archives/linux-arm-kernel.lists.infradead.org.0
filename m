Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 947831ABC37
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 11:10:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0O/bsQgjQvSwgZdAmRLAKRZwPwAmqY40Su78H4qfqg=; b=RF6+wfbKyl644f
	6KeOy7YBKqWs1E5i32AxswD0w0YsxaJW0vUbwey5VN1H5/xo6iJC00j3roakYxE6Ae2poHpH0CUQJ
	d4D35bZ1T4kqFmLL/U/FI3nR5E2KQanlVmDJ9cnblejg98bBWV0FEuFIU5Yp5EQYVZUHGyP6y3fo7
	aN8Es8w/WlD3Ahqdss/BezCLzAVlOnuEp/YpfVWjK2Q7PBb/OwbyB6/jJkNDwEW3bHcFaYbTX/oJi
	fRmJSycPMYc9IhC4mUle/MxDqBiU4oz/FiBwm06vUrWJI9reQK1xCkX/NV4aN8A7MVCXfpLhy2d7G
	D+2OGkntC+rJQs4or54g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP0XL-0007ZX-CG; Thu, 16 Apr 2020 09:10:19 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP0Wy-0007XM-M7
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 09:09:58 +0000
Received: by mail-wm1-x342.google.com with SMTP id r26so4000539wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 02:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=AkzX3Dcs3nD4u98CC4pQCRsVTQrys7ElI/8/pjZK+Ts=;
 b=wb/ou2IL7ZL03YQ8OAV+Os2euU0E17M9a0KwoQ3V3isxo7+xI1+LSfhg5vSw6QDiT5
 PsrEZIKgjxOmO31HznVmbOHJL0WiBxEdRrUVX8PGl+6aFMMKj+Ok3aE5PJnZLvTAR7uI
 vGLCAgXDlm9SWpL6LlhpelL2R0kMbpm8ccCFbNZs9pJWVok28OUT2dVDc0jLwk1ecNu2
 F3LojeUezoSXKQKiaoF94+HsBfCLyTeSTcf13SDqUTYKpELlLnEGHIWeaFAXVEXVx9Ze
 VdpFDYBagqARwZ2Txck/ZqK5qn1jwast8Gxgr8rEKOIaDNo6PJlLDAZamY6dNhxapVdn
 0hAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=AkzX3Dcs3nD4u98CC4pQCRsVTQrys7ElI/8/pjZK+Ts=;
 b=Nh6qkpzb3bALGpks732tyMiy8SkPJ9Gdc/WBOzcrXyBGiIJcYxIdeYLQGt7k9Ui64/
 G0DRHwiY7parHGRg3Y3YQDImI4FL0nFVR6VrwJLSQT+Vg+66qZxjFdrw9hgnLCTwpHK0
 4xJ/JExmyViPbgBuKx2g1qIOS8XdJfpu+jJ7NZyGwLOX9Tnxkb9VOPCu529LkT/YH+Bb
 he6pGUHEPOLpoeXd4GwnROD1Sczp3D5jSH0XbE4MBlmQhkxo8qqiPpjV8YMVXfAmOWOl
 zZqJDOb5jv6r1hb7KhoeCt6sAFSmOSB3zZSSDevnPAdkFLhYHvjr/0eRiABlq/YkK9RN
 2yXQ==
X-Gm-Message-State: AGi0PubZVXxKcKPzsfD4rnuz2KtFLmhTVOkYcnjJPuT4BitGQrfM0VVC
 tEGzlBfkr2LPagu64sZd44S9vw==
X-Google-Smtp-Source: APiQypJvFDcKODT9CxRfCRMCE4sQZDVimgniJ+YY4tbASMLPFOZ6+nm+DuXIWSzcnSgUjCRLXlPPcw==
X-Received: by 2002:a1c:99d3:: with SMTP id b202mr3989576wme.126.1587028194753; 
 Thu, 16 Apr 2020 02:09:54 -0700 (PDT)
Received: from dell ([95.149.164.124])
 by smtp.gmail.com with ESMTPSA id h5sm7933704wrp.97.2020.04.16.02.09.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 02:09:54 -0700 (PDT)
Date: Thu, 16 Apr 2020 10:10:54 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: Re: [PATCH v12 4/6] mfd: Add support for the MediaTek MT6358 PMIC
Message-ID: <20200416091054.GZ2167633@dell>
References: <1586333531-21641-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1586333531-21641-5-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586333531-21641-5-git-send-email-hsin-hsiung.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_020956_737072_CE596410 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 linux-rtc@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 Frank Wunderlich <frank-w@public-files.de>, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>, srv_heupstream@mediatek.com,
 Sebastian Reichel <sre@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwOCBBcHIgMjAyMCwgSHNpbi1Ic2l1bmcgV2FuZyB3cm90ZToKCj4gVGhpcyBhZGRz
IHN1cHBvcnQgZm9yIHRoZSBNZWRpYVRlayBNVDYzNTggUE1JQy4gVGhpcyBpcyBhCj4gbXVsdGlm
dW5jdGlvbiBkZXZpY2Ugd2l0aCB0aGUgZm9sbG93aW5nIHN1YiBtb2R1bGVzOgo+IAo+IC0gUmVn
dWxhdG9yCj4gLSBSVEMKPiAtIENvZGVjCj4gLSBJbnRlcnJ1cHQKPiAKPiBJdCBpcyBpbnRlcmZh
Y2VkIHRvIHRoZSBob3N0IGNvbnRyb2xsZXIgdXNpbmcgU1BJIGludGVyZmFjZQo+IGJ5IGEgcHJv
cHJpZXRhcnkgaGFyZHdhcmUgY2FsbGVkIFBNSUMgd3JhcHBlciBvciBwd3JhcC4KPiBNVDYzNTgg
TUZEIGlzIGEgY2hpbGQgZGV2aWNlIG9mIHRoZSBwd3JhcC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBI
c2luLUhzaXVuZyBXYW5nIDxoc2luLWhzaXVuZy53YW5nQG1lZGlhdGVrLmNvbT4KPiAtLS0KPiAg
ZHJpdmVycy9tZmQvTWFrZWZpbGUgICAgICAgICAgICAgICAgIHwgICAyICstCj4gIGRyaXZlcnMv
bWZkL210NjM1OC1pcnEuYyAgICAgICAgICAgICB8IDIzNSArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwo+ICBkcml2ZXJzL21mZC9tdDYzOTctY29yZS5jICAgICAgICAgICAgfCAgMzYgKysr
KysKPiAgaW5jbHVkZS9saW51eC9tZmQvbXQ2MzU4L2NvcmUuaCAgICAgIHwgMTU4ICsrKysrKysr
KysrKysrKysrKysrCj4gIGluY2x1ZGUvbGludXgvbWZkL210NjM1OC9yZWdpc3RlcnMuaCB8IDI4
MiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICBpbmNsdWRlL2xpbnV4L21m
ZC9tdDYzOTcvY29yZS5oICAgICAgfCAgIDMgKwo+ICA2IGZpbGVzIGNoYW5nZWQsIDcxNSBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21m
ZC9tdDYzNTgtaXJxLmMKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvbWZkL210
NjM1OC9jb3JlLmgKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvbWZkL210NjM1
OC9yZWdpc3RlcnMuaAoKWy4uLl0KCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvbWZkL210
NjM1OC9jb3JlLmggYi9pbmNsdWRlL2xpbnV4L21mZC9tdDYzNTgvY29yZS5oCj4gbmV3IGZpbGUg
bW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwLi5hMzA0YWFlCj4gLS0tIC9kZXYvbnVsbAo+ICsr
KyBiL2luY2x1ZGUvbGludXgvbWZkL210NjM1OC9jb3JlLmgKPiBAQCAtMCwwICsxLDE1OCBAQAo+
ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCAqLwo+ICsvKgo+ICsgKiBDb3B5
cmlnaHQgKGMpIDIwMTkgTWVkaWFUZWsgSW5jLgoKTml0OiBUaGlzIG5lZWRzIHVwZGF0aW5nLgoK
T25jZSB1cGRhdGVkLCBwbGVhc2UgYXBwbHkgbXk6CgpGb3IgbXkgb3duIHJlZmVyZW5jZSAoYXBw
bHkgdGhpcyBhcy1pcyB0byB5b3VyIHNpZ24tb2ZmIGJsb2NrKToKCiAgQWNrZWQtZm9yLU1GRC1i
eTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KCi0tIApMZWUgSm9uZXMgW+adjueQ
vOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4g
c291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3
aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
