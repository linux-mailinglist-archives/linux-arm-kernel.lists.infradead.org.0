Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E38150949
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 16:12:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eCUb8PktgBllyizpO7yPdmWD4J5LzFNOA3dudS41qHI=; b=hjyjtBRGAxE2iU
	iwfi/VbDQNpbMF5m2BeT4G3wnJWNhi9EpEAghMP4YVLetscgQht9aYFHihBqc705AflOqfPeWfNzg
	uYd6wByB5eNxqA/vFRTPibY9SqxidloaytGaDbd0WSVr9C6TxcstDX+nXyT+W0NTekKdZ2tes9Gx8
	Hu9MuT3Ex9AjAGstFKSwaE2QNTAAlydafeYpMjK45UNIpbNKU5d+0LENpamlwcHWmpyAl5SXEVlPV
	xWtNkJ6xqPiT34IyEKsfrgD7uGcQMARZkrL8hi/bSa1Wrf32Ig/OIOvgSjpVEaMhq4goGH3+84XAC
	gLkPZjm89DY+jZ6SyOlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iydOO-0002uU-Gv; Mon, 03 Feb 2020 15:12:04 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iydOI-0002tT-9i
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 15:11:59 +0000
Received: by mail-wm1-x344.google.com with SMTP id b17so17601071wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 07:11:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=10knLupHMqEpgP8COf2Z7ZaOZSp04mKff+ekSwBxxho=;
 b=m1TPVvGc4/0Di91loBU1fx40PngrXZV3RmtMXQwng7gbLrcFo5pER+2Devadv35vE5
 SNdw9CG6c9hGdyik3GPRkLlqgKjcZLx7S+XNsZKOVN9jWtzH48cFriI+z7mbfLzYfQNn
 2Lgb0v0Kh2OPa4AIifYG7ixaH1xp33A+vKguI/QnHMNpsWmz0McsrgV3Rp+xQdmw023H
 ohpaX8T9l5uUZIRwGQdc5lDxaJIZnr8dgoDdimqykuHIo0AYieViOkVjeSJZPB67trSx
 HwmjSIuSC2dBgDvZB3rR7wAqkRNunzUAzurqrWGWp2+zDeitVBeqdXoP5gA8BYi6OS/b
 Hefg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=10knLupHMqEpgP8COf2Z7ZaOZSp04mKff+ekSwBxxho=;
 b=mY3e5WAavEvcM8G2WJ8MWJJvltlCGzuPjo3xi/a99p+5Ya3cPvGa3vVxY+u3uH4TyM
 JMnDLhI6y9ypYvhhlyxMnG2fQrL3vkYzHpgi9T+KuT+higAdhDhIpCs/lEtDDIxt1K9r
 Lrg2aMbQYCf/Wdej4Nc3g2hQA4b+fTRzaw//k9LjAnp+r1l2qjqLug4AHPhpPZnWTAEU
 fLocPewOVvSOwUiBHsNh6A759dFW+FNFE4QCh+J9hPC9tfkrk78blvOfYq6h90Md5ndO
 1063nG6m0CjHMc9CcrxbzSNy519cL4le4KU0SJHYqVLTV1KW1812X2VItWnrI9cWSFc0
 RmKQ==
X-Gm-Message-State: APjAAAWSVbTmwQ8MfDsLnlWuO8i11f9cuF5c1ank9ygTyFhtO/LHyIhM
 EIqgFY+euXQFUEVuarBJ9W6F8w==
X-Google-Smtp-Source: APXvYqxY1XGUX6kA63UZ+k9EtOdPU9xCyzWL2gtWssT8Uoj5LsIGIEcm4B0qCnQvGZmzL8O3nZlqTg==
X-Received: by 2002:a7b:c1d6:: with SMTP id a22mr29207137wmj.134.1580742714891; 
 Mon, 03 Feb 2020 07:11:54 -0800 (PST)
Received: from dell ([2.27.35.227])
 by smtp.gmail.com with ESMTPSA id z133sm24980737wmb.7.2020.02.03.07.11.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 07:11:54 -0800 (PST)
Date: Mon, 3 Feb 2020 15:12:08 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Greg KH <greg@kroah.com>
Subject: Re: [PATCH 1/1] media: si470x-i2c: Move free() past last use of
 'radio'
Message-ID: <20200203151208.GD15069@dell>
References: <20200203132130.12748-1-lee.jones@linaro.org>
 <20200203143245.GA3220000@kroah.com>
 <20200203145831.GA3238182@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203145831.GA3238182@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_071158_343066_238D26F0 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAwMyBGZWIgMjAyMCwgR3JlZyBLSCB3cm90ZToKCj4gT24gTW9uLCBGZWIgMDMsIDIw
MjAgYXQgMDI6MzI6NDVQTSArMDAwMCwgR3JlZyBLSCB3cm90ZToKPiA+IE9uIE1vbiwgRmViIDAz
LCAyMDIwIGF0IDAxOjIxOjMwUE0gKzAwMDAsIExlZSBKb25lcyB3cm90ZToKPiA+ID4gQSBwb2lu
dGVyIHRvICdzdHJ1Y3Qgc2k0NzB4X2RldmljZScgaXMgY3VycmVudGx5IHVzZWQgYWZ0ZXIgZnJl
ZToKPiA+ID4gCj4gPiA+ICAgZHJpdmVycy9tZWRpYS9yYWRpby9zaTQ3MHgvcmFkaW8tc2k0NzB4
LWkyYy5jOjQ2MjoyNS0zMDogRVJST1I6IHJlZmVyZW5jZQo+ID4gPiAgICAgcHJlY2VkZWQgYnkg
ZnJlZSBvbiBsaW5lIDQ2MAo+ID4gPiAKPiA+ID4gU2hpZnQgdGhlIGNhbGwgdG8gZnJlZSgpIGRv
d24gcGFzdCBpdHMgZmluYWwgdXNlLgo+ID4gPiAKPiA+ID4gTkI6IE5vdCBzZW5kaW5nIHRvIE1h
aW5saW5lLCBzaW5jZSB0aGUgcHJvYmxlbSBkb2VzIG5vdCBleGlzdCB0aGVyZS4KPiA+IAo+ID4g
SXQgZG9lc24ndCBleGlzdCB0aGVyZSBiZWNhdXNlIG9mIGEgYmFkIG1lcmdlPyAgV2hhdCBjb21t
aXQgY2F1c2VkIHRoZQo+ID4gcHJvYmxlbT8KPiAKPiBBaCwgZm91bmQgaXQsIGl0IHdhcyAyZGYy
MDBhYjIzNGEgKCJtZWRpYTogc2k0NzB4LWkyYzogYWRkIG1pc3NlZAo+IG9wZXJhdGlvbnMgaW4g
cmVtb3ZlIikKCkkgd2FzIGFib3V0IHRvIGZvbGxvdyB1cCB3aXRoIGEgdjI6CgogICJOQjogQ2F1
YXNlZCBkdXJpbmcgdGhlIGJhY2twb3J0aW5nIG9mIHVwc3RyZWFtIGNvbW1pdCAyZGYyMDBhYjIz
NGEKICAgKCJtZWRpYTogc2k0NzB4LWkyYzogYWRkIG1pc3NlZCBvcGVyYXRpb25zIGluIHJlbW92
ZSIpLiAgVGhpcyBpc3N1ZSBkb2VzCiAgIG5vdCBleGlzdCBpbiBNYWlubGluZSBzaW5jZSB0aGUg
a2ZyZWUoKSB3YXMgcmVtb3ZlZCBpbiB2NS4wIGFzIHBhcnQgb2YKICAgY29tbWl0IGY4NmM1MWI2
NmJmNiAoIm1lZGlhOiBzaTQ3MHgtaTJjOiBVc2UgbWFuYWdlZCByZXNvdXJjZSBoZWxwZXJzIiku
IgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExl
YWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxv
dyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
