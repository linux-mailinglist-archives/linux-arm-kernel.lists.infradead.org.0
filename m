Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DADBA8662
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 18:13:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3XFkYXQxbk+MsWahrg+ktOs3RccGZrzZeqjgMyqRoEk=; b=V5uarUR9NUeEAk
	CLW6BWznyKyDEOJEC6nlyaUwF2uYulogz8J25OOsCRsmQaTYEmG9Nn/I2lLHHPp+w4I25KlBXeCgJ
	LUQRe8xgEXf7h4nWjUPvWNxeEpXmSa8M4GAeeKpvBbklBu2TAA0xPLkuOIxkMeIDC4QZ/+V7jzNtb
	oRQsFaCl9eQ2I6qATG9C2yjTWZ2WKyee0v45v4ISUbhR68n+NfnJ2olWXWwEXgaBoCQ1UDPeh2IvB
	vPRxqr8MKwiqeL5WcLjXPlSmZnh01H+Ofe3OBVAZycaYXVrM9b4AqjsdBtCQeOnzhmRXzWciF94XX
	EUchdr7+Y1IaLILZ+1bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Xu5-0000PD-Ti; Wed, 04 Sep 2019 16:13:06 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Xtr-0000Om-PL
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 16:12:53 +0000
Received: by mail-wr1-x441.google.com with SMTP id l11so13089556wrx.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 09:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=q8pUvpVjKp1g5Qr8w2IVnrREUirRn/vuVmUWXmSYL4Q=;
 b=LTfKPX0N8u61M2wJ5sy42uTQ+BoMX6ermJhYqKH/Q9DtGM30IwZRVjEk1iEvZtxsFg
 jQGWkdRoBDp2evmwXeNcR4Jf89nZto3VO5zeJr9dneojF1ouo9VkWbE2ima2ckTz/TcK
 HUhJSSX0ZdT69PvDgc9MqPoNpwJNAMOvdEDZ8rgfjX8b6w+KYSLYv6oexA5UhJ9bgwjk
 xdzh+p3SgAql537WzCRStiL10eKM0SWalzasmaxAMDujB9HZfdyPziW4Os3qGGG5zIEj
 0qayE9Hgo+ALfLW3FOs/S7GpC4nmNRQVGtWL0kMqrLWlSOjpmVJQLLFEeObL1ztJmEU4
 3jtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=q8pUvpVjKp1g5Qr8w2IVnrREUirRn/vuVmUWXmSYL4Q=;
 b=bpIqAUXLzg3iJ1jdsr3qQh8N5i6qJHEazoS/vMbjRArRsweOlVtSkQectfkufchraT
 rxAmOZ4+ar5rC/e88R600/qovpaH/wzFqMxcECzDXLiiLFm+RDy0higqYIKVtOHTncF/
 lxeo3kBbvhROPnM0sDcoAzQzAkdTLLazqU5DJTX7JvsvN4FQkm9IzM++a6mGkwgfd4ts
 JLzRZ5RFu0rHeBsCVScVCXq54H7b8LFQMSVVim8f1VXP4+CNq74GYsRkfE/7efJOZ1By
 vWILMRRHHRiNusRUJRPRnlsb4WRkF995TN7QTJ1srvLwLH6V9E8r/bIQwTISfIGjpB4g
 OEdg==
X-Gm-Message-State: APjAAAUaERg3k/P43L5npXy/hCNN0V2YMI9yC8TrNA3B9ZwpQoprHsyb
 lVRtrDqUY2SaC2R58ErpuG4cJQ==
X-Google-Smtp-Source: APXvYqwdxIz1SPASSWDxK72taN7umX8eaGJ50gyjNa1JHwg+UjQz1fdTJ6rPguOhSqf3vQ64uuDm7w==
X-Received: by 2002:adf:f48e:: with SMTP id l14mr32359282wro.234.1567613569826; 
 Wed, 04 Sep 2019 09:12:49 -0700 (PDT)
Received: from dell ([95.147.198.36])
 by smtp.gmail.com with ESMTPSA id e6sm19269452wrr.14.2019.09.04.09.12.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 04 Sep 2019 09:12:49 -0700 (PDT)
Date: Wed, 4 Sep 2019 17:12:47 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v3 1/1] arm64: dts: qcom: Add Lenovo Yoga C630
Message-ID: <20190904161247.GP26880@dell>
References: <20190904121606.17474-1-lee.jones@linaro.org>
 <20190904141257.GB6144@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904141257.GB6144@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_091251_829395_45085FD4 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, bjorn.andersson@linaro.org, agross@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwNCBTZXAgMjAxOSwgU3VkZWVwIEhvbGxhIHdyb3RlOgoKPiBPbiBXZWQsIFNlcCAw
NCwgMjAxOSBhdCAwMToxNjowNlBNICswMTAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiBGcm9tOiBC
am9ybiBBbmRlcnNzb24gPGJqb3JuLmFuZGVyc3NvbkBsaW5hcm8ub3JnPgo+ID4KPiA+IFRoZSBM
ZW5vdm8gWW9nYSBDNjMwIGlzIGJ1aWx0IG9uIHRoZSBTRE04NTAgZnJvbSBRdWFsY29tbSwgYnV0
IHRoaXMgc2VlbQo+ID4gdG8gYmUgc2ltaWxhciBlbm91Z2ggdG8gdGhlIFNETTg0NSB0aGF0IHdl
IGNhbiByZXVzZSB0aGUgc2RtODQ1LmR0c2kuCj4gPgo+ID4gU3VwcG9ydGVkIGJ5IHRoaXMgcGF0
Y2ggaXM6IGtleWJvYXJkLCBiYXR0ZXJ5IG1vbml0b3JpbmcsIFVGUyBzdG9yYWdlLAo+ID4gVVNC
IGhvc3QgYW5kIEJsdWV0b290aC4KPiA+Cj4gCj4gSnVzdCBjdXJpb3VzIHRvIGtub3cgaWYgdGhl
IGlkZWEgb2YgYm9vdGluZyB1c2luZyBBQ1BJIGlzIGNvbXBsZXRlbHkKPiBkcm9wcGVkIGFzIGl0
J3MgZXh0cmVtZWx5IGRpZmZpY3VsdChiZWNhdXNlIHRoZSBmaXJtd2FyZSBpcyBzbyBoYWNrZWQK
PiB1cCBhbmQgbWF5IHZpb2xhdGUgc3BlYywganVzdCBteSBvcGluaW9uKSBmb3Igd2hhdGV2ZXIg
cmVhc29ucy4KCk9uY2UgWzBdIGlzIGFwcGxpZWQsIHdlIGNhbiBib290IE1haW5saW5lIHVzaW5n
IEFDUEkuCgo+IFdlIGp1c3QgbWFkZSBBQ1BJIHRhYmxlIHZlcnNpb24gY2hlY2tpbmcgbW9yZSBs
ZW5pZW50IGZvciB0aGlzIHBsYXRmb3JtCj4gYW5kIHdvdWxkIGJlIGdvb2QgdG8ga25vdyBpZiB3
ZSBjb250aW51ZSB0byBydW4gQUNQSSBvbiB0aGF0IG9yIHdpbGwKPiBhYmFuZG9uIGFuZCBqdXN0
IHVzZSBEVC4KCldoaWNoIHBhdGNoIGFyZSB5b3UgcmVmZXJyaW5nIHRvPyAgSWYgeW91IG1lYW4g
dGhlIEFDUEkgdjUuMCB2cyB2NS4xCnBhdGNoIGF1dGhvcmVkIGJ5IEFyZCwgdGhlbiB5ZXMgSSBr
bm93LCBJIGluc3RpZ2F0ZWQgaXQncyBleGlzdGVuY2UKZHVlIHRvIHRoZXNlIGRldmljZXMuCgpE
VCB3aWxsICphbHdheXMqIGJlIG1vcmUgZW5hYmxlZCB0aGFuIEFDUEksIHNvIGl0J3MgYWR2aXNl
ZCB0aGF0IHlvdQp1c2UgRFQgZm9yIGFueXRoaW5nIHVzZWZ1bC4gIEFDUEkgYm9vdGluZyBpcyBp
ZGVhbCBmb3IgdGhpbmdzIGxpa2UKaW5zdGFsbGluZyBkaXN0cm9zIGhvd2V2ZXIsIHNpbmNlIHRo
ZXkgZG8gbm90IHRlbmQgdG8gcHJvdmlkZSBEVEJzIGluCnRoZWlyIGluc3RhbGxlcnMuCgpbMF0g
aHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvOS8zLzU4MAoKLS0gCkxlZSBKb25lcyBb5p2O55C8
5pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBz
b3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdp
dHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
