Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 993BA13F73D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 20:10:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I7CUPUeeYcddChVVaClljJnIMEO/JNWMofqKrGGJxBg=; b=Otiitj+ZioTq+I
	Dtx3oJAsYIxYq02gZSR+oBwiKRKalS+22g5XTCqFq4rt9bjQsCVpKjpZKKUt2tG8LEPtJQrI7SJsm
	boRRkG2h9rFgEW6b3Eef+mdfOlxkRML+NmUjBRSbfWaZ37BW+xN/jNbKRlPNh4QDLDiPXSG+wmaFh
	2iN/3ZyoeIPqjWC75fNqrU6Hhts5NNpovRX1YyornoSA52Mj7dAuMVmNoQ+N4+zL8I70OxCSMMN+Z
	Uui+akcurcxwuo+gr5E6C6Y3rcwfl8SPhwtA14jx+95sYZxuTa0jwWq5UfCwbCOoyvLm1mvzoqk3S
	YjMHwEhh0EKt0JDLjSaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isAWp-0006F7-Qh; Thu, 16 Jan 2020 19:10:03 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isAWc-0006DQ-8U
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 19:09:54 +0000
Received: by mail-wm1-x341.google.com with SMTP id u2so4985324wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 11:09:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pA5x5rCHRqnyrPUFdP9H5ClriX9XtAneXnWS+Abk1oY=;
 b=GN6RI3FPxPwipzwi6J7CHP4jMFdKlQFlIVZsPin19jUntmyWDLNvCFlP+5AcaphHex
 bRhJKiSFbZt3EGzRArfGu3gvfmX0841/JmWW5nHKDriFEq4jZt8kQ7wLQtLOMGyocohq
 oWWYaRE+KyYVYZg1yzwKncdcxJnU2sOXVZ6JfbQ/WXQXrqfe14IkhhIxa1qqrTckipHH
 5IC8LcoTfO1RHK9z/cmuaP9qFqALcL3OCLeMvLfO2IKuFbpnB5pPQHP0DycuzBpyQdmD
 IA9uY3h3/SV6SQpXeETuevAp8Tkz4+kmNQEbooHazd6CtaY6tBHUaTlIvhOZqyk7X4H1
 p+8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=pA5x5rCHRqnyrPUFdP9H5ClriX9XtAneXnWS+Abk1oY=;
 b=dq0jub7JLFLVhtOXoW6QAaCAqjcG9RdnJ/uH93sIEewXdib8/h9uhOClBK7SEe1NKj
 I2CTD+TzUHcWQMlRiKkiczuCE80FSHmJzRWDgUq5a2dvWp0FuuqINLch+RluJkJml5hB
 QZZQ5gQXRa3FuV1C5sL/kcylwG0pEmn3UJt8AmHluUDmvKbLeRBMzvaorVj4+KKP8qx4
 cOAqUodox9fURjhav3kdxmOPc6Nrksqqo2Eu1OPAB+3/3yISQuYSMQChmThV49c1GXhF
 FPB+Noq7VSMlBwyzZMBXH8EkYkB8zr+bSQEgGnwn4ba7XjxNGDBbzpXbnIyb+/YMVgVv
 FUuw==
X-Gm-Message-State: APjAAAWATM6qb/5Qza5vTkL/fdYG0VgbqRqAMOZ50H16jS7lZtyJidKw
 4V8jOe2543hOQH95rMBjfAVRSA==
X-Google-Smtp-Source: APXvYqyKKyRw81FWwBKEr1ZLNVMa6GV3IdqUv6YWUjfJeU9iSUxJuplbMPsvqpv+uk+f0dudGzQxdg==
X-Received: by 2002:a7b:cb91:: with SMTP id m17mr504588wmi.146.1579201788528; 
 Thu, 16 Jan 2020 11:09:48 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:6c63:1b50:1156:7f0f?
 ([2a01:e34:ed2f:f020:6c63:1b50:1156:7f0f])
 by smtp.googlemail.com with ESMTPSA id q6sm31898621wrx.72.2020.01.16.11.09.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Jan 2020 11:09:47 -0800 (PST)
Subject: Re: [PATCH] dt-bindings: brcm,avs-ro-thermal: Fix binding check issues
To: Stefan Wahren <stefan.wahren@i2se.com>, Zhang Rui <rui.zhang@intel.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
References: <1579200077-17496-1-git-send-email-stefan.wahren@i2se.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <1a3791ea-4cf6-96bf-b2d3-1526f0b351ed@linaro.org>
Date: Thu, 16 Jan 2020 20:09:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1579200077-17496-1-git-send-email-stefan.wahren@i2se.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_110950_310717_28F16348 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTYvMDEvMjAyMCAxOTo0MSwgU3RlZmFuIFdhaHJlbiB3cm90ZToKPiBEcm9wIHRoZSByZWcg
cHJvcGVydHkgc2luY2UgdGhpcyBvbmx5IG5lY2Vzc2FyeSBmb3IgdGhlIHBhcmVudCBhbmQKPiBh
ZGQgdGhlIG1pc3NpbmcgdGhlcm1hbC1zZW5zb3ItY2VsbHMgcHJvcGVydHkgZGVzY3JpcHRpb24u
Cj4gCj4gU2lnbmVkLW9mZi1ieTogU3RlZmFuIFdhaHJlbiA8c3RlZmFuLndhaHJlbkBpMnNlLmNv
bT4KPiBGaXhlczogM2Q0ODQ5ODk3NjkxICgiZHQtYmluZGluZ3M6IEFkZCBCcm9hZGNvbSBBVlMg
Uk8gdGhlcm1hbCIpCj4gLS0tCgpBcHBsaWVkLCB0aGFua3MKCj4gIC4uLi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3RoZXJtYWwvYnJjbSxhdnMtcm8tdGhlcm1hbC55YW1sICAgICAgICAgfCA5ICsrKysr
Ky0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+
IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGhlcm1h
bC9icmNtLGF2cy1yby10aGVybWFsLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvdGhlcm1hbC9icmNtLGF2cy1yby10aGVybWFsLnlhbWwKPiBpbmRleCA5OGU3YjU3Li5k
OWZkZjQ4IDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90
aGVybWFsL2JyY20sYXZzLXJvLXRoZXJtYWwueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL2JyY20sYXZzLXJvLXRoZXJtYWwueWFtbAo+IEBAIC0y
MywxMiArMjMsMTUgQEAgcHJvcGVydGllczoKPiAgICBjb21wYXRpYmxlOgo+ICAgICAgY29uc3Q6
IGJyY20sYmNtMjcxMS10aGVybWFsCj4gIAo+IC0gIHJlZzoKPiAtICAgIG1heEl0ZW1zOiAxCj4g
KyAgIyBTZWUgLi90aGVybWFsLnR4dCBmb3IgZGV0YWlscwo+ICsgICIjdGhlcm1hbC1zZW5zb3It
Y2VsbHMiOgo+ICsgICAgY29uc3Q6IDAKPiAgCj4gIHJlcXVpcmVkOgo+ICAgIC0gY29tcGF0aWJs
ZQo+IC0gIC0gcmVnCj4gKyAgLSAnI3RoZXJtYWwtc2Vuc29yLWNlbGxzJwo+ICsKPiArYWRkaXRp
b25hbFByb3BlcnRpZXM6IGZhbHNlCj4gIAo+ICBleGFtcGxlczoKPiAgICAtIHwKPiAKCgotLSAK
IDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0
d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5j
b20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJv
b3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
