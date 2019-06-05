Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 541CB358F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 10:49:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XySRhkc8RENd60Dw7I4b0aeSqgGYd3AULluTojwzl88=; b=RKvHTzd16q5y4/
	7ls3puvdM5GNNfS4+RSlRGra6L712LQvIWQgba0aGRob4Azf5mSKkwI5v0NduCggMtvYtLOchpJDy
	oHS9IoGBJwrNJpl8LdqjBvK30zNCzKXer1LBn9XbN758DCgC7dHFUZ7OLWefsAvuTI/m2xI4LHKGU
	PD1pRQeaRkG3m8nSKLPymr7JqYZSwLKzA9B+/CcF4JJUwRYGdydvv/WxaH1Brs/yxkLheFa42yhkG
	1FLRCi5pQRvSJABi/VOMQJVRcZ2I9+AGndPPo91CtC9kNnrd7NQz4X1ocv3Pg4YxyZvKcRrPWvgvS
	0sGLnCc8k7zTLDSiY/zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRby-000843-6r; Wed, 05 Jun 2019 08:49:34 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRbq-00082s-Eh
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 08:49:27 +0000
Received: by mail-wr1-x443.google.com with SMTP id f9so3848092wre.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 01:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=47X4zT30GaadHJDaOJJAh/DnRfU8HKGu6t7RX9pL/1E=;
 b=nRR+/O1w2hpos8U3WuMiH/3+BN6lTgWYnsbBoN6gkVLrZ1RHMizsu+4ZO9EuzH4TaB
 JaodAlZK3Kx2Q2WmB+EnEIN4wEJCqbyWdIq3GrjNrF/eMlNvvhbGv1T3/iQg83ufteRt
 Ty7tf9D0F1yh4O5vWOF1XlO7xgunN2POXJD12fUH+Orf9E4jk0Jg5oSY9sKLt7hLAeMU
 8vwQ3faYAIOoLM5uZ1OAR9oHHJzWu0gZIUKOZNV4CWV3ujufMGwZx8Gei7yNZu6lnFos
 xpv7J1856IHDdO5sl9kIutepdd1VmglvBLZeIjZyX1J4L0DgbnVEE6f9z8GHgItLDDJu
 Krrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=47X4zT30GaadHJDaOJJAh/DnRfU8HKGu6t7RX9pL/1E=;
 b=COfvFsae/OwRFWUScSWdX+ad880o2/q6/+JKAJFBkRzqIV6kM8bFCkt5Gv+UJLemIX
 zmFGPHwxeRXkOAXGjQSB7XRmGTGm7UO1bmboukHm4DugGLtDkGwEpSNqRGFpu8N9jL5B
 n2kUC/GDmgiskk+gLnDWZ/HdV83+sjICeE5Q+eOt8cQc2QvN9t9SEho8t9AHnnVbrwK3
 txvQcS66iGUDDFwHcaYF9Ok2b4f6dze4JaDnZ2EkF4ODnpm8Lzdmxlimj+lbXs6hbOgh
 Yik27obbtc34Vc1q8QPvK6ZCiRJAWFyfgWfYS8QmatVBkqn0uQlmYXve2l0eWxJOCtZ2
 sftw==
X-Gm-Message-State: APjAAAVHgG8MKjdSiJ56Xp++WE186bWTz6iLgdX/QjAzef28uJsVKd5y
 m+yU/NI3HJDqeI3whLPfLYUF1g==
X-Google-Smtp-Source: APXvYqxKnUroo208CFyjzxg0auBl2QoUOj9T6CN3+LaoIlDzgTwijaRuwxToGpm9u7DR/bSrMEMWdA==
X-Received: by 2002:adf:ab11:: with SMTP id q17mr10398482wrc.182.1559724563960; 
 Wed, 05 Jun 2019 01:49:23 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id y2sm32449365wra.58.2019.06.05.01.49.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 01:49:23 -0700 (PDT)
Date: Wed, 5 Jun 2019 09:49:21 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH 2/8] i2c: i2c-qcom-geni: Signify successful driver probe
Message-ID: <20190605084921.GQ4797@dell>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-2-lee.jones@linaro.org>
 <20190605062020.GL22737@tuxbook-pro> <20190605071625.GK4797@dell>
 <20190605075656.GC29637@localhost> <20190605082047.GM4797@dell>
 <20190605083353.GD29637@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605083353.GD29637@localhost>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_014926_538565_D5EF951F 
X-CRM114-Status: GOOD (  18.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: balbi@kernel.org, david.brown@linaro.org, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 wsa+renesas@sang-engineering.com, alokc@codeaurora.org,
 kramasub@codeaurora.org, linux-i2c@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, andy.gross@linaro.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwNSBKdW4gMjAxOSwgSm9oYW4gSG92b2xkIHdyb3RlOgoKPiBPbiBXZWQsIEp1biAw
NSwgMjAxOSBhdCAwOToyMDo0N0FNICswMTAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiBPbiBXZWQs
IDA1IEp1biAyMDE5LCBKb2hhbiBIb3ZvbGQgd3JvdGU6Cj4gCj4gPiA+IE5vLCB3ZSBkb24ndCBh
ZGQgbm9pc2UgbGlrZSB0aGlzIHRvIHRoZSBsb2dzIGp1c3QgYmVjYXVzZSBpdCBtYXkgYmUKPiA+
ID4gdXNlZnVsIHdoaWxlIGRlYnVnZ2luZy4gRXZlbiBvbmUtbGluZXJzIGFkZCB1cC4KPiA+IAo+
ID4gT25lIGxpbmUgcGVyIGRldmljZSBpcyBzaG91bGQgbm90IGNhdXNlIGFuIGlzc3VlLgo+ID4g
Cj4gPiBQcm9ibGVtcyBvY2N1ciB3aGVuIGRldmVsb3BlcnMgdHJ5IHRvIHByaW50IGFsbCBraW5k
cyBvZiBkZXZpY2UKPiA+IHNwZWNpZmljcyB0byB0aGUgYm9vdCBsb2cuICBBIHNpbXBsZSwgc2lu
Z2xlIGxpbmUgZm9yIHN1Y2ggYW4KPiA+IGltcG9ydGFudCBkZXZpY2UvY29udHJvbGxlciBoYXMg
bW9yZSBiZW5lZml0cyB0aGFuIGRyYXdiYWNrcy4KPiAKPiBXaGF0IGFib3V0IHRoZSB0aG91c2Fu
ZHMgb2YgcHJvYmUgZnVuY3Rpb25zIHdoaWNoIGRvIG5vdCBjdXJyZW50bHkgc3BhbQo+IHRoZSBs
b2dzPyBJZiB5b3Ugd2FudCB0byBzZWUgYWxsIHN1Y2Nlc3NmdWwgcHJvYmVzIHJlbGlhYmx5LCB5
b3UgdGVsbAo+IGRyaXZlciBjb3JlIHRvIHByaW50IGl0Lgo+IAo+ID4gPiBUaGVyZSBhcmUgcGxl
bnR5IG9mIG9wdGlvbnMgZm9yIGRlYnVnZ2luZyBhbHJlYWR5IHJhbmdpbmcgZnJvbSBhZGRpbmcg
YQo+ID4gPiB0ZW1wb3JhcnkgZGV2X2luZm8oKSB0byB0aGUgcHJvYmUgZnVuY3Rpb24gaW4gcXVl
c3Rpb24gdG8gdXNpbmcgZHluYW1pYwo+ID4gPiBkZWJ1Z2dpbmcgdG8gaGF2ZSBkcml2ZXIgY29y
ZSBsb2cgZXZlcnkgc3VjY2Vzc2Z1bCBwcm9iZS4KPiA+IAo+ID4gVGhpcyBpcyB3aGF0IEkgZW5k
ZWQgdXAgZG9pbmcuICBJdCB3YXMgdGltZSBjb25zdW1pbmcgdG8gcGFyc2UgdGhvdWdoCj4gPiBh
IGxvZyBvZiB0aGF0IHNpemUgd2hlbiB5b3UgaGF2ZSBubyBwYWdpbmcgb3Iga2V5Ym9hcmQuCj4g
Cj4gV2l0aCB0aGUgcmlnaHQgY29tbWFuZC1saW5lIG9wdGlvbiB0byBlbmFibGUgZHluYW1pYyBk
ZWJ1Z2dpbmcgeW91IGdldAo+IG9uZSBsaW5lIHBlciBzdWNjZXNzZnVsIHByb2JlLCBqdXN0IGxp
a2UgeW91IHdhbnRlZC4gT3IgYXJlIHlvdSBub3cKPiBzYXlpbmcgdGhhdCBvbmUtbGluZSBwZXIg
ZGV2aWNlIGlzIHRvbyBtdWNoIGFmdGVyIGFsbD8gOykKCldoaWNoIGNvbW1hbmQgbGluZSBvcHRp
b24gYXJlIHlvdSBwZXJ0YWluaW5nIHRvPwoKPiA+ID4gQW5kIGluIHRoaXMgY2FzZSB5b3Ugc2F5
IHRoZSBkcml2ZXIgd2FzIGluIGZhY3QgYWxyZWFkeSBib3VuZDsgdGhhdCBjYW4KPiA+ID4gZWFz
aWx5IGJlIHZlcmlmaWVkIHRocm91Z2ggc3lzZnMgdG9vIGluIGNhc2UgdGhpbmdzIGFyZW4ndCBi
ZWhhdmluZyB0aGUKPiA+ID4gd2F5IHlvdSBleHBlY3QuCj4gPiAKPiA+IE5vdCBpbiBhIG5vbi1i
b290aW5nIHN5c3RlbSB3aXRoIG5vIGtleWJvYXJkIHlvdSBjYW4ndC4gOykKPiAKPiBGYWlyIGVu
b3VnaCwgYnV0IHRoZSBhYm92ZSB3b3VsZCBzdGlsbCB3b3JrLgoKLS0gCkxlZSBKb25lcyBb5p2O
55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3Bl
biBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwg
VHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
