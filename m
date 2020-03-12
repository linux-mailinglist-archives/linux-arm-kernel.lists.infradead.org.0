Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22385182E73
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 12:01:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSnkNUTTmphAaaNhvRtB2VY0erIdl63XGJtq5Sf6MrA=; b=eYxUrtUpbqSy8s
	2+QvnIq2cQT3YQ8C+MzvwwETcIdDMvCuNj/DkdeIczZi4wEQtsm0Rm5t23TddUsdy5Vn/5OvV6etI
	f89tR43QXXm+XF4nnreRr1BEsDE9oETvpRH6c0CRckwKkuWxBSRytx4kAV97Ika04C3kcnO5u2oD8
	zaWrJLG/f0pXMeSh60szEZUBXyfBWDS+Hp83B075UlnA01PJ9Wzk701W0JjYzL+2lmoHlpQwmVpFg
	Zl8yuWya7LWCgHvrRlyGuDMAbVWpxOJSHh8OGKaqh/RLpdppz+/oQM8VCxpbWCPs+t93+PBnbX6EW
	ghkqe2UMMtHxy60pHmCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCLaP-0005Uh-De; Thu, 12 Mar 2020 11:01:09 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCLaH-0005Qg-Ut
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 11:01:03 +0000
Received: by mail-wr1-x444.google.com with SMTP id z15so6850575wrl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 04:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=znqUGmDCxVbX3i83yv1LPKkL5/RdRLvb+vGnWoYei2g=;
 b=F6J5IOX10gQ+LPEoHCY9P8JthL7j1cvqIVpBooDuLjaqpX8C3kxx754ao3qX3ckd26
 +OpPRuNGvdMs2pKjk8jMYekoycMrIq+Ae/aDI9Q+Gub4CM8nRMSPDx1arLJdlnhOrcoL
 paibkbgcKDkh6DpALj/Tjq1qN+E7O9LfK1TQ01edE+KazSZCa/uorSg8PaIGgIB/HnDH
 Fac4r/pz9KjnhejmbS1pgQ1MU3A21N93VQEQ6EA8ub44/wxtkyW68a9LBCXIR9cpk2FV
 RZf2sOWvJuzE0xtURCMiWrfugXTAobFdNqmhfIfh/FiiaPq4aal9K8fcdxfxNl5F4ntN
 rWeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=znqUGmDCxVbX3i83yv1LPKkL5/RdRLvb+vGnWoYei2g=;
 b=CrMesPGbwFgmDoxlfMO7oGNZ1m038joa6v+DXXrBS4zf4f3l7MyY2m4wp5f/Hbxjjr
 FId/DrvHbs+hnBL+HCHylyzAYR9E3/itTXHQhE7lZHNvBjSveXvnPqFqickIkPxCwopl
 3nAIxlv1Af/J3Qki7G8lFiqmpODH1kCF/3dYRBVuLBTSaJHCCdUPOT0msDOZegNtjk01
 5O+hCJKzW/gD7plXLojqEzC5XaPI3FFAgcaUyeByhRSeM9OlxijhgdnZysco5Jh1wgy/
 HGnbaUjJ2H3N1XTEserx8Wr73dZJC+jo12ap2BEZ8qwdUIunkbFkfjB8YgKzv57eA+RF
 12JA==
X-Gm-Message-State: ANhLgQ2bfolvTDBBsa5BpTNG8GNbBNysD0eYsqlVXs8hPaBpuzEd1hjx
 MfNOduzqJLZDTmq/N9E2RY4XDw==
X-Google-Smtp-Source: ADFU+vteDdHWgx1gUzWThJKQSOprIOkNr41TK5/nvNI/6Ct+u/DwM4AX322iNtcez073YJYPm3Xt7g==
X-Received: by 2002:adf:b641:: with SMTP id i1mr10431365wre.18.1584010859471; 
 Thu, 12 Mar 2020 04:00:59 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:3880:fdc2:ef6b:879f?
 ([2a01:e34:ed2f:f020:3880:fdc2:ef6b:879f])
 by smtp.googlemail.com with ESMTPSA id i67sm53009872wri.50.2020.03.12.04.00.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Mar 2020 04:00:58 -0700 (PDT)
Subject: Re: [PATCH V2 RESEND 1/4] dt-bindings: thermal: imx8mm-thermal: Add
 binding doc for i.MX8MM
To: Anson Huang <Anson.Huang@nxp.com>, rui.zhang@intel.com,
 amit.kucheria@verdurent.com, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, catalin.marinas@arm.com, will@kernel.org,
 leonard.crestez@nxp.com, daniel.baluta@nxp.com, peng.fan@nxp.com,
 aford173@gmail.com, ping.bai@nxp.com, jun.li@nxp.com, shengjiu.wang@nxp.com,
 bjorn.andersson@linaro.org, olof@lixom.net, vkoul@kernel.org,
 dinguyen@kernel.org, marcin.juszkiewicz@linaro.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1582947862-11073-1-git-send-email-Anson.Huang@nxp.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <cac20a14-a8ec-e7af-9c6e-be62fb29db89@linaro.org>
Date: Thu, 12 Mar 2020 12:00:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1582947862-11073-1-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_040101_999031_4CD64540 
X-CRM114-Status: GOOD (  16.94  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjkvMDIvMjAyMCAwNDo0NCwgQW5zb24gSHVhbmcgd3JvdGU6Cj4gQWRkIHRoZXJtYWwgYmlu
ZGluZyBkb2MgZm9yIEZyZWVzY2FsZSdzIGkuTVg4TU0gVGhlcm1hbCBNb25pdG9yaW5nIFVuaXQu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogQW5zb24gSHVhbmcgPEFuc29uLkh1YW5nQG54cC5jb20+Cj4g
UmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+CgpBcHBsaWVkIDEvNCBh
bmQgMi80LgoKVGhhbmtzCgoKIC0tLQo+IE5vIGNoYW5nZS4KPiAtLS0KPiAgLi4uL2RldmljZXRy
ZWUvYmluZGluZ3MvdGhlcm1hbC9pbXg4bW0tdGhlcm1hbC50eHQgICAgICAgIHwgMTUgKysrKysr
KysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGhlcm1hbC9pbXg4
bW0tdGhlcm1hbC50eHQKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3RoZXJtYWwvaW14OG1tLXRoZXJtYWwudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwvaW14OG1tLXRoZXJtYWwudHh0Cj4gbmV3IGZpbGUgbW9k
ZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwLi5kMDlhZTgyCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL2lteDhtbS10aGVybWFs
LnR4dAo+IEBAIC0wLDAgKzEsMTUgQEAKPiArKiBUaGVybWFsIE1vbml0b3JpbmcgVW5pdCAoVE1V
KSBvbiBGcmVlc2NhbGUgaS5NWDhNTSBTb0MKPiArCj4gK1JlcXVpcmVkIHByb3BlcnRpZXM6Cj4g
Ky0gY29tcGF0aWJsZSA6IE11c3QgYmUgImZzbCxpbXg4bW0tdG11Ii4KPiArLSByZWcgOiBBZGRy
ZXNzIHJhbmdlIG9mIFRNVSByZWdpc3RlcnMuCj4gKy0gY2xvY2tzIDogVE1VJ3MgY2xvY2sgc291
cmNlLgo+ICstICN0aGVybWFsLXNlbnNvci1jZWxscyA6IFNob3VsZCBiZSAwLiBTZWUgLi90aGVy
bWFsLnR4dCBmb3IgYSBkZXNjcmlwdGlvbi4KPiArCj4gK0V4YW1wbGU6Cj4gK3RtdTogdG11QDMw
MjYwMDAwIHsKPiArCWNvbXBhdGlibGUgPSAiZnNsLGlteDhtbS10bXUiOwo+ICsJcmVnID0gPDB4
MzAyNjAwMDAgMHgxMDAwMD47Cj4gKwljbG9ja3MgPSA8JmNsayBJTVg4TU1fQ0xLX1RNVV9ST09U
PjsKPiArCSN0aGVybWFsLXNlbnNvci1jZWxscyA9IDwwPjsKPiArfTsKPiAKCgotLSAKIDxodHRw
Oi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBm
b3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFn
ZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBU
d2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
