Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA41F3A91
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 22:32:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HkhiLfhgWNJHTxyRDC6x6cFdkmK9do09uhbrbQIavV0=; b=qEJ+HNPOg9Vbu/
	w5tk2uqzwfsNfxiIngOcPZEIQi+ckW2bIl+NMUMsG2hVGlBSLpiG7w0mwhduOHLZ/eT2OGDJwzlg9
	0M6Qx7nypjRi5yweMgvjKLnS+GVBb1M1EHpAsdWk9Xr67edCtz6jLU2QGoP6mRwgsJBPG0EOFSRyX
	wqK8ZXG5jnZLqqMaUl6t+2PkHpIkY9EwS/IU8OquAGvK3jT9WalIr/SS5zMNIAkKEgMF0kVhBt1VL
	TZEjFWT0rjE9s9Fg0jyYig81ln/YvFd15Sj7R07dz11uLK9fNg4iLVLYzZwN4ryhSaGxKM92fppdP
	8YKAPCbJnqQYm6eArEtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSpNq-0002Tr-Qd; Thu, 07 Nov 2019 21:32:02 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSpNi-0002TF-Or
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 21:31:56 +0000
Received: by mail-wm1-x344.google.com with SMTP id b11so4075592wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 13:31:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=hHsW+JRYhrDgl1RAw8hfUItw5fl0jUVBr6z/UEkwzB0=;
 b=Xs2bqevEHRfVM1V+5qFCFDQEEfo/IazXVNudvvz+F4iB6x/RBeo6QO4uwxK/Qanyxb
 QP/hjEVb+ji9jb7Nxyb3oRyMBt9K/OBerjM0dBoIdn4ihonzTJVqq2Dr5zkd1rW4vbk4
 Jw+YI/yZM14yPsxwW8QBIuE27EdkSEB/4kWTVlOdeEHZpiKQ5e0SlBtRO9HgYqrSkgPD
 MjD/ilFj/N3ZwtEDlfsyb/V0M0j9fGJDmme2MdjwCUyNh0Lg33Oz0w7hnspVAcLua0ta
 PlgzWLrAUtEgBmPRaVB1GuYTEPOCai4vd8SjkmmvUwvoh7hf1IakPkldAwl3kv79YQg/
 cqVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=hHsW+JRYhrDgl1RAw8hfUItw5fl0jUVBr6z/UEkwzB0=;
 b=Xsv1fdZyU42OHfJisMMHDJEuG8tw0E+jX+20mw1qB0hzEwDGuPhjQKhMhtuEs0XU8c
 mxi/EckpHFx766wplxuc5UbbRSGiBj4nkXoJkh5dWRFruk0/tLPXMIYRtzJRS+s6woVn
 Xutz3og0t9YdLjwGwVVzP6CCLQPIxDJDAgK8gNlNFJZ6iezkI1HDhFLW6gA1v/9E9yzl
 e2BF4xC76GA0dhs7jiztKJRXRqcfxr3FFbtEqHu36QlGa2o0b1FlFRzv4KnpZgV4brRA
 ZxxV+1GOyqlP+i4lkBtDXOUmx0881ItYAP0nJdkeJ1l8Ivfglc4SHPSajcl5citNJA2q
 DGiw==
X-Gm-Message-State: APjAAAXp5xA7QC4+sR1RH49Z0oulNW+9n99SHVHDm5kvnx4Uk1bafunY
 zO5j6FNEHxxcK+OvrN6ira3PBQ==
X-Google-Smtp-Source: APXvYqyjWb1v2kprZcT+WSTyR+FX54UKTZ42FdNHpkxdMxOMVN8EQOPzg06s5YSWmS9I6W92eGv9Dg==
X-Received: by 2002:a7b:c08c:: with SMTP id r12mr4948782wmh.67.1573162312776; 
 Thu, 07 Nov 2019 13:31:52 -0800 (PST)
Received: from dell ([95.147.198.88])
 by smtp.gmail.com with ESMTPSA id j66sm3280860wma.19.2019.11.07.13.31.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 13:31:51 -0800 (PST)
Date: Thu, 7 Nov 2019 21:31:48 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH] dt-bindings: Add syscon YAML description
Message-ID: <20191107213148.GA18902@dell>
References: <20191101141034.259906-1-maxime@cerno.tech>
 <20191104071554.GK5700@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104071554.GK5700@dell>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_133154_809702_E83DD3D1 
X-CRM114-Status: GOOD (  14.24  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAwNCBOb3YgMjAxOSwgTGVlIEpvbmVzIHdyb3RlOgoKPiBPbiBGcmksIDAxIE5vdiAy
MDE5LCBNYXhpbWUgUmlwYXJkIHdyb3RlOgo+IAo+ID4gVGhlIHN5c2NvbiBiaW5kaW5nIGlzIGEg
cHJldHR5IGxvb3NlIG9uZSwgd2l0aCBldmVyeW9uZSBoYXZpbmcgYSBidW5jaCBvZgo+ID4gdmVu
ZG9yIHNwZWNpZmljIGNvbXBhdGlibGVzLgo+ID4gCj4gPiBJbiBvcmRlciB0byBzdGFydCB0aGUg
ZWZmb3J0IHRvIGRlc2NyaWJlIHRoZW0gdXNpbmcgWUFNTCwgbGV0J3MgY3JlYXRlIGEKPiA+IGJp
bmRpbmcgdGhhdCB0b2xlcmF0ZXMgYWRkaXRpb25hbCwgbm90IGxpc3RlZCwgY29tcGF0aWJsZXMu
Cj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IE1heGltZSBSaXBhcmQgPG1heGltZUBjZXJuby50ZWNo
Pgo+ID4gLS0tCj4gPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3N5c2Nvbi50eHQgICAg
ICAgIHwgMzIgLS0tLS0tLS0KPiA+ICAuLi4vYmluZGluZ3MvbWlzYy9hbGx3aW5uZXIsc3lzY29u
LnR4dCAgICAgICAgfCAyMCAtLS0tLQo+ID4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL21pc2Mv
c3lzY29uLnlhbWwgICAgICB8IDc0ICsrKysrKysrKysrKysrKysrKysKPiAKPiBXaHkgYXJlIHlv
dSBtb3ZpbmcgdGhpcyB0byBkcml2ZXJzL21pc2M/CgpUaGF0J3MgYSBOQUNLIGJ5IHRoZSB3YXku
IDspCgo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgNzQgaW5zZXJ0aW9ucygrKSwgNTIgZGVsZXRpb25z
KC0pCj4gPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9tZmQvc3lzY29uLnR4dAo+ID4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbWlzYy9hbGx3aW5uZXIsc3lzY29uLnR4dAo+ID4gIGNyZWF0
ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWlzYy9zeXNj
b24ueWFtbAo+IAoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVj
aG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBT
b0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
