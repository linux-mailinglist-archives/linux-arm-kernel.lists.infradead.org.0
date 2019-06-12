Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9D841BD8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 07:57:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o+oG20ZTu9XTWmOo8WVfLk+1BY/ysyycDd4hjvbEKuw=; b=ZTc3co6OZhQwVF
	1wlis5P2ytG9B8CjFOpNMsOHN/HKYv2KOurPu+LwPCxjyhEyFLBxJsayUhBamYIj1BK8TQoAZqpWX
	oQXNNbW3/diATpOk4x5N0lPcpx2VIGyHZPCphWsA/3BUUkqBboYTexwYw5CEKap7w3YgKPgnysdZJ
	UESY/0p0jdLswGqCdyg8/jG7q+MJ/MlxfvODC9paIv4OqE/kxE7PSy7orcmfEnFQYgKhn+EhOj8Is
	wOigPYn+szOsZzIXUDoqt7mDr1/pXDqxgmAlQhY4PMuNRTl11FMf/k4aL2+JrlQcM0A5qAaN2H2bq
	e/85/EPj0q4aRDAzor/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hawGf-0004xz-78; Wed, 12 Jun 2019 05:57:53 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hawGS-0004xb-92
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 05:57:41 +0000
Received: by mail-wm1-x343.google.com with SMTP id 22so5131294wmg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 22:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=4of8ZiK34nF/APP+EeYx9XNCcGPU1AME2L4lrHVraeI=;
 b=SD79wLU+G6g5/2870hSYrojXo8hkeJYjHJvuJMFUl4pMujwbM+t0i5yVvfgSuJzikK
 bbMaoLkZRFq9lrBAnxGgMo7Wrr3d03cr+rLois8ec1U2UplLC+1ye25jxyNICqFESQ5B
 Z66rCwLwDivfh9dprT0lI7za4JpauGVpOJWxSxSx+OJWj3EzbmXNdqlx95XsQbICUZJX
 3L0/4zj64CDQ4DesKqgZ9NfDR0/VRLD0FvtnAiITdNaN0fu3aqCoN0iUa/CtBHkT0bTO
 +u/BKQPj4AeOLK8Za3+5h9ls2FpC9zM1dwf42W5Sz8wh5DPuzSUqyYJHW62NKDW4ttYo
 jmdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=4of8ZiK34nF/APP+EeYx9XNCcGPU1AME2L4lrHVraeI=;
 b=MrHiTe6bOyDRhxraC0fCZNbK/41n90bqgzaE4EOlur8dg0M8Hz+H/pRYHt8JA+49y5
 rMG5SiYfhPcUcx3nciqVEG9JtggyvVK3LWOt7SZWXzgInunhGWLGXfCFZw/u9iRWMlcS
 Rn5lzfcYXLSSpx+gPXEV3+jt867ez92brrykOU+XjTG78S3kmifuRNABhypLiY8WJSGj
 +5oUXVg+8oQpYrIl0FWBrANcvhVGv3He2hneGh6jz0eG+xtHBuRSkqqdp23kNhdho2mJ
 2TQktZp7+GphsPYDvoLQrdRtYh0P/7oxIGatSoL2arpy2UcxGwC0nEa0D09i1Gr7bu2R
 XJ8Q==
X-Gm-Message-State: APjAAAUtXZVfabdK7BrylGyZLb6CwRcuAMJFP1fIM89gX88zsjYTO/Ui
 FdHX68yvYQJ3TduwXpVpGiaSbA==
X-Google-Smtp-Source: APXvYqzJvBNZQtwmkeMKOpNbBz81+iFkqBs/75CCe2ORqE04JpIzCx+Il2rit2gE1lFSlYBsiUOwtA==
X-Received: by 2002:a1c:618a:: with SMTP id v132mr20248396wmb.17.1560319058242; 
 Tue, 11 Jun 2019 22:57:38 -0700 (PDT)
Received: from dell ([2.27.35.243])
 by smtp.gmail.com with ESMTPSA id r3sm20726946wrr.61.2019.06.11.22.57.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 11 Jun 2019 22:57:37 -0700 (PDT)
Date: Wed, 12 Jun 2019 06:57:36 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH v3 7/8] usb: dwc3: qcom: Start USB in 'host mode' on the
 SDM845
Message-ID: <20190612055736.GO4797@dell>
References: <20190610084213.1052-1-lee.jones@linaro.org>
 <20190610084213.1052-7-lee.jones@linaro.org>
 <20190611223349.GS4814@minitux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611223349.GS4814@minitux>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_225740_397841_2AEF709D 
X-CRM114-Status: GOOD (  25.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: balbi@kernel.org, linux-usb@vger.kernel.org,
 wsa+renesas@sang-engineering.com, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, ard.biesheuvel@linaro.org,
 linux-kernel@vger.kernel.org, david.brown@linaro.org, alokc@codeaurora.org,
 linux-i2c@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, andy.gross@linaro.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxMSBKdW4gMjAxOSwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOgoKPiBPbiBNb24gMTAg
SnVuIDAxOjQyIFBEVCAyMDE5LCBMZWUgSm9uZXMgd3JvdGU6Cj4gCj4gPiBXaGVuIGJvb3Rpbmcg
d2l0aCBEZXZpY2UgVHJlZSwgdGhlIGN1cnJlbnQgZGVmYXVsdCBib290IGNvbmZpZ3VyYXRpb24K
PiA+IHRhYmxlIG9wdGlvbiwgdGhlIHJlcXVlc3QgdG8gYm9vdCB2aWEgJ2hvc3QgbW9kZScgY29t
ZXMgZnJvbSB0aGUKPiA+ICdkcl9tb2RlJyBwcm9wZXJ0eS4KPiAKPiBBcyBJIHNhaWQgaW4gbXkg
cHJldmlvdXMgcmV2aWV3LCB0aGUgZGVmYXVsdCBtb2RlIGZvciBTRE04NDUgaXMgT1RHLiBGb3IK
PiB0aGUgTVRQIHNwZWNpZmljYWxseSB3ZSBzcGVjaWZ5IHRoZSBkZWZhdWx0IG1vZGUgdG8gYmUg
cGVyaXBoZXJhbCAod2FzCj4gaG9zdCkuCj4gCj4gCj4gVGhlIHJlbWFpbmluZyB0aGluZyB0aGF0
IHdvcnJpZXMgbWUgd2l0aCB0aGlzIHBhdGNoIGlzIHRoYXQgSSBkbyBleHBlY3QKPiB0aGF0IGF0
IGxlYXN0IG9uZSBvZiB0aGUgVVNCLUMgcG9ydHMgaXMgT1RHLiBCdXQgSSBhbSBub3QgYWJsZSB0
bwo+IGNvbmNsdWRlIGFueXRoaW5nIHJlZ2FyZGluZyB0aGlzIGFuZCBob3N0LW9ubHkgaXMgYSBn
b29kIGRlZmF1bHQgZm9yCj4gdGhpcyB0eXBlIG9mIGRldmljZSwgc28gSSBzdWdnZXN0IHRoYXQg
d2UgbWVyZ2UgdGhpcy4KClJpZ2h0LiAgU28gb25lIHRoaW5nIHRvIGNvbnNpZGVyIGlzIHRoYXQg
UXVhbGNvbW0gTW9iaWxlIERlcHQuIGRvIG5vdAp1c2UgQUNQSSBmb3IgTGludXgsIHNvIHRoaXMg
cGF0Y2gtc2V0IG9ubHkgYWZmZWN0cyB0aGUgTGFwdG9wCmZvcm0gZmFjdG9yIGRldmljZXMsIHdo
ZXJlICdob3N0JyBpcyB0aGUgZXhwZWN0ZWQgbW9kZS4KCj4gUmV2aWV3ZWQtYnk6IEJqb3JuIEFu
ZGVyc3NvbiA8Ympvcm4uYW5kZXJzc29uQGxpbmFyby5vcmc+CgpUaGFua3MgZm9yIHRha2luZyB0
aGUgdGltZSB0byByZXZpZXcgdGhpcyBCam9ybi4KCkhvcGVmdWxseSB3ZSBjYW4gZ2V0IEZlbGlw
ZSdzIGF0dGVudGlvbiBzb29uLgoKRmVsaXBlLAoKT25lIHRoaW5nIHRvIHRoaW5rIGFib3V0IHdo
ZW4gdGFraW5nIEJqb3JuJ3MgUmV2aWV3ZWQtYnkgaW50bwpjb25zaWRlcmF0aW9uOyBhbHRob3Vn
aCB3ZSBib3RoIHdvcmsgZm9yIExpbmFybywgd2UgYWN0dWFsbHkgb3BlcmF0ZQppbiBkaWZmZXJl
bnQgdGVhbXMuICBCam9ybiBpcyBvbiB0aGUgUXVhbGNvbW0gTGFuZGluZyBUZWFtLCBhbmQgYXMg
YW4KZXgtUXVhbGNvbW0gZW1wbG95ZWUgaGUgaXMgaW4gYW4gZXhjZWxsZW50IHBvc2l0aW9uIHRv
IHJldmlldyB0aGVzZQpwYXRjaGVzLCB0aHVzIGhpcyBSZXZpZXcgc2hvdWxkIGNhcnJ5IG1vcmUg
d2VpZ2h0IHRoYW4gdGhlIHVzdWFsCmNvLXdvcmtlciByZXZpZXcgSU1ITy4KClRJQS4KCj4gPiBB
IHByb3BlcnR5IG9mIHRoZSBzYW1lIG5hbWUgY2FuIGJlIHVzZWQgaW5zaWRlCj4gPiBBQ1BJIHRh
YmxlcyB0b28uICBIb3dldmVyIGl0IGlzIG1pc3NpbmcgZnJvbSB0aGUgU0RNODQ1J3MgQUNQSSB0
YWJsZXMKPiA+IHNvIHdlIGhhdmUgdG8gc3VwcGx5IHRoaXMgaW5mb3JtYXRpb24gdXNpbmcgUGxh
dGZvcm0gRGV2aWNlIFByb3BlcnRpZXMKPiA+IGluc3RlYWQuCj4gPiAKPiA+IFRoaXMgZG9lcyBu
b3QgY2hhbmdlIHRoZSBiZWhhdmlvdXIgb2YgYW55IGN1cnJlbnRseSBzdXBwb3J0ZWQgZGV2aWNl
cy4KPiA+IFRoZSBwcm9wZXJ0eSBpcyBvbmx5IHNldCBvbiBBQ1BJIGVuYWJsZWQgcGxhdGZvcm1z
LCB0aHVzIGZvciBIL1cKPiA+IGJvb3RpbmcgRFQsIHVubGVzcyBhICdkcl9tb2RlJyBwcm9wZXJ0
eSBpcyBwcmVzZW50LCB0aGUgZGVmYXVsdCBpcwo+ID4gc3RpbGwgT1RHIChPbi1UaGUtR28pIGFz
IHBlciBbMF0uICBBbnkgbmV3IEFDUEkgZGV2aWNlcyBhZGRlZCB3aWxsCj4gPiBhbHNvIGJlIGFi
bGUgdG8gb3Zlci1yaWRlIHRoaXMgaW1wbGVtZW50YXRpb24gYnkgcHJvdmlkaW5nIGEgJ2RyX21v
ZGUnCj4gPiBwcm9wZXJ0eSBpbiB0aGVpciBBQ1BJIHRhYmxlcy4gIEluIGNhc2VzIHdoZXJlICdk
cl9tb2RlJyBpcyBvbWl0dGVkCj4gPiBmcm9tIHRoZSB0YWJsZXMgQU5EICdob3N0IG1vZGUnIHNo
b3VsZCBub3QgYmUgdGhlIGRlZmF1bHQgKHZlcnkKPiA+IHVubGlrZWx5KSwgdGhlbiB3ZSB3aWxs
IGhhdmUgdG8gYWRkIHNvbWUgd2F5IG9mIGNob29zaW5nIGJldHdlZW4gdGhlbQo+ID4gYXQgcnVu
IHRpbWUgLSBtb3N0IGxpa2VseSBieSBBQ1BJIEhJRC4KPiA+IAo+ID4gWzBdIERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvZ2VuZXJpYy50eHQKPiA+IAo+ID4gU2lnbmVkLW9m
Zi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiA+IC0tLQo+ID4gIGRyaXZl
cnMvdXNiL2R3YzMvZHdjMy1xY29tLmMgfCAxMiArKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hh
bmdlZCwgMTIgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2Iv
ZHdjMy9kd2MzLXFjb20uYyBiL2RyaXZlcnMvdXNiL2R3YzMvZHdjMy1xY29tLmMKPiA+IGluZGV4
IDFlMWYxMmI3OTkxZC4uNTViYTA0MjU0ZTM4IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy91c2Iv
ZHdjMy9kd2MzLXFjb20uYwo+ID4gKysrIGIvZHJpdmVycy91c2IvZHdjMy9kd2MzLXFjb20uYwo+
ID4gQEAgLTQ0NCw2ICs0NDQsMTEgQEAgc3RhdGljIGludCBkd2MzX3Fjb21fY2xrX2luaXQoc3Ry
dWN0IGR3YzNfcWNvbSAqcWNvbSwgaW50IGNvdW50KQo+ID4gIAlyZXR1cm4gMDsKPiA+ICB9Cj4g
PiAgCj4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBwcm9wZXJ0eV9lbnRyeSBkd2MzX3Fjb21fYWNw
aV9wcm9wZXJ0aWVzW10gPSB7Cj4gPiArCVBST1BFUlRZX0VOVFJZX1NUUklORygiZHJfbW9kZSIs
ICJob3N0IiksCj4gPiArCXt9Cj4gPiArfTsKPiA+ICsKPiA+ICBzdGF0aWMgaW50IGR3YzNfcWNv
bV9hY3BpX3JlZ2lzdGVyX2NvcmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ICB7
Cj4gPiAgCXN0cnVjdCBkd2MzX3Fjb20gCSpxY29tID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRl
dik7Cj4gPiBAQCAtNDg4LDYgKzQ5MywxMyBAQCBzdGF0aWMgaW50IGR3YzNfcWNvbV9hY3BpX3Jl
Z2lzdGVyX2NvcmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ICAJCWdvdG8gb3V0
Owo+ID4gIAl9Cj4gPiAgCj4gPiArCXJldCA9IHBsYXRmb3JtX2RldmljZV9hZGRfcHJvcGVydGll
cyhxY29tLT5kd2MzLAo+ID4gKwkJCQkJICAgICBkd2MzX3Fjb21fYWNwaV9wcm9wZXJ0aWVzKTsK
PiA+ICsJaWYgKHJldCA8IDApIHsKPiA+ICsJCWRldl9lcnIoJnBkZXYtPmRldiwgImZhaWxlZCB0
byBhZGQgcHJvcGVydGllc1xuIik7Cj4gPiArCQlnb3RvIG91dDsKPiA+ICsJfQo+ID4gKwo+ID4g
IAlyZXQgPSBwbGF0Zm9ybV9kZXZpY2VfYWRkKHFjb20tPmR3YzMpOwo+ID4gIAlpZiAocmV0KQo+
ID4gIAkJZGV2X2VycigmcGRldi0+ZGV2LCAiZmFpbGVkIHRvIGFkZCBkZXZpY2VcbiIpOwoKLS0g
CkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGlu
YXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5h
cm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
