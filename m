Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 980CB1201D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 11:03:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/aRDKurfsutsE3C5CIbfNroQrYjKbmyaYS4NvhlR/aE=; b=FXYp1VycvurqKg
	OcdmvL7bjYgPECOuIEjvK1kZL8ulKL6GbJyHVDhoAU29oS3EtZ1QpHqbpDWhm6DiqHQxNTSx0gJJh
	bpkJyM4xbl3Dm3mPuP6wtp0dQ/FD0mg/7DNDGXM9D47/GT9sFvuqsbj0joW7X0qbpDHNKEWfGSapV
	IoaG14tIBQ3tPuWxhNSWbZDfyBgAGBDfnRFpZlh8WEl6I5GisJmdbXI2hAwnxxwjmeYlw+unVn+NT
	9R891USy+WMtaX0UJQ+RvCpx3n1Rar7xEf+3bx7peGJ13oINy4dBWM+CnFTRcYEIPxJVlSmGOR+Qh
	hGE0/e/jZ4Yp+FCOlYMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ignEC-0002Rq-Jb; Mon, 16 Dec 2019 10:03:48 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ignDz-0002RE-Ao
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 10:03:36 +0000
Received: by mail-wm1-x342.google.com with SMTP id p9so6046597wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 02:03:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=9P8jBTs9zw6Ol4dKdAPb/e2sHj445qXLj5Iw9i7C4Ps=;
 b=kfJP01GuFEZfr3N8JkWq0PmRACeIh6NhoqIAjnMoLtFOIlgzLjYt2RY2dfyY/LxBhV
 zzYy1qinUM3g/R+F1GCgcWcU0RDzR+9l9g7Sfvy2jxG45J4BsbJqPKyHoCwQE6+35ls4
 vbfRxvyMbZO2jSQPpSZtiVaBJajgqcveIMz8IGVn+Y6yKHhBCN+h4GcucUOHt+tQgLjc
 dcdAGf6GnkqJ1qZ0WMQwbUG4NyATltTiUarhQtHvLKmH/BmthkT1JssFzQojt3ImC3vn
 2C1fYUyywVcj6F54LhfBBZaFLJxFBt8d1nu5St8thR2zQE6s6ehmKb7kvE7U/hYq+c15
 ZhLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9P8jBTs9zw6Ol4dKdAPb/e2sHj445qXLj5Iw9i7C4Ps=;
 b=YKZc+Avmz35Xzaqf7MY+R3mISwOX81bjDu+Z66tkfSqb99WLgTsPyBPypsxqTS5KjQ
 nDXXcP35hYiT0nvyXB1Mw0m96460Z+OhjHMyMDAdLEU7/ay9jZSHHdueaVf9rVm9lGZ8
 S9avOlqeRtSgq70kjROv3ocecM66al8+LcnNQkL0TA8GHqxwh18q4p1j7gHwbmnYdWJ7
 LNwpdYjpu/3Y/DHhRZI6pGccDf4G2hQQe9DHEN4t/IFSyh7kgEk403NDzUSQtb/K3Lvk
 K5IdEQfOiBz+05U8ho4LAiakgRl56gcWXcOiAo/CHvITSt1BIzRV91880VYYYdlXRd/Y
 5eMQ==
X-Gm-Message-State: APjAAAUxT5SZ+2fnkjehiQ7TzYc7Cwsk2AjhSF01knFN2WDBAl0X9/Xg
 OR1QiuW0G/eCMEGNSL7yTmA=
X-Google-Smtp-Source: APXvYqwyyDlQJPuXpWd8PbXbRW62iyLDQsoAuPqc+9/ik9zLPdkwowIE1iaVHJr+B7Pq3O0ku0ZENA==
X-Received: by 2002:a05:600c:224a:: with SMTP id
 a10mr30059955wmm.143.1576490613116; 
 Mon, 16 Dec 2019 02:03:33 -0800 (PST)
Received: from [192.168.2.41] ([46.227.18.67])
 by smtp.gmail.com with ESMTPSA id x132sm22257813wmg.0.2019.12.16.02.03.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Dec 2019 02:03:32 -0800 (PST)
Subject: Re: [PATCH v3] tty/serial: atmel: fix out of range clock divider
 handling
To: David Engraf <david.engraf@sysgo.com>, gregkh@linuxfoundation.org,
 jslaby@suse.com, nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 ludovic.desroches@microchip.com
References: <39e4d1c7-20b0-a024-3a46-e4d4369eed8e@sysgo.com>
 <20191216085403.17050-1-david.engraf@sysgo.com>
From: Richard Genoud <richard.genoud@gmail.com>
Message-ID: <035748de-1265-b2ba-9832-898782bcccf3@gmail.com>
Date: Mon, 16 Dec 2019 11:03:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191216085403.17050-1-david.engraf@sysgo.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_020335_372669_3B0EBC12 
X-CRM114-Status: GOOD (  20.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.genoud[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgMTYvMTIvMjAxOSDDoCAwOTo1NCwgRGF2aWQgRW5ncmFmIGEgw6ljcml0wqA6Cj4gVXNlIE1D
S19ESVY4IHdoZW4gdGhlIGNsb2NrIGRpdmlkZXIgaXMgPiA2NTUzNS4gVW5mb3J0dW5hdGVseSB0
aGUgbW9kZQo+IHJlZ2lzdGVyIHdhcyBhbHJlYWR5IHdyaXR0ZW4gdGh1cyB0aGUgY2xvY2sgc2Vs
ZWN0aW9uIGlzIGlnbm9yZWQuCj4gCj4gRml4IGJ5IGRvaW5nIHRoZSBiYXVkIHJhdGUgY2FsdWxh
dGlvbiBiZWZvcmUgc2V0dGluZyB0aGUgbW9kZS4KPiAKPiBGaXhlczogNWJmNTYzNWFjMTcwICgi
dHR5L3NlcmlhbDogYXRtZWw6IGFkZCBmcmFjdGlvbmFsIGJhdWQgcmF0ZSBzdXBwb3J0IikKPiBT
aWduZWQtb2ZmLWJ5OiBEYXZpZCBFbmdyYWYgPGRhdmlkLmVuZ3JhZkBzeXNnby5jb20+CgpBY2tl
ZC1ieTogUmljaGFyZCBHZW5vdWQgPHJpY2hhcmQuZ2Vub3VkQGdtYWlsLmNvbT4KCgo+IC0tLQo+
IENoYW5nZXMgc2luY2UgdjE6IAo+ICAtIG1vdmVzIHNldCBiYXVkIHJhdGUgYmxvY2sgYmVmb3Jl
IHNldHRpbmcgdGhlIG1vZGUgcmVnaXN0ZXIgYmVjYXVzZQo+ICAgIEFUTUVMX1VTX1JUU0RJUyBh
bmQgQVRNRUxfVVNfUlRTRU4gZGVwZW5kIG9uIEFUTUVMX1VTX01SLm1vZGUKPiAKPiAtLS0KPiAg
ZHJpdmVycy90dHkvc2VyaWFsL2F0bWVsX3NlcmlhbC5jIHwgNDMgKysrKysrKysrKysrKysrKy0t
LS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMjEgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdHR5L3NlcmlhbC9hdG1lbF9zZXJp
YWwuYyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9hdG1lbF9zZXJpYWwuYwo+IGluZGV4IGE4ZGM4YWY4
M2YzOS4uMWJhOWJjNjY3ZTEzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdHR5L3NlcmlhbC9hdG1l
bF9zZXJpYWwuYwo+ICsrKyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9hdG1lbF9zZXJpYWwuYwo+IEBA
IC0yMjcwLDI3ICsyMjcwLDYgQEAgc3RhdGljIHZvaWQgYXRtZWxfc2V0X3Rlcm1pb3Moc3RydWN0
IHVhcnRfcG9ydCAqcG9ydCwgc3RydWN0IGt0ZXJtaW9zICp0ZXJtaW9zLAo+ICAJCW1vZGUgfD0g
QVRNRUxfVVNfVVNNT0RFX05PUk1BTDsKPiAgCX0KPiAgCj4gLQkvKiBzZXQgdGhlIG1vZGUsIGNs
b2NrIGRpdmlzb3IsIHBhcml0eSwgc3RvcCBiaXRzIGFuZCBkYXRhIHNpemUgKi8KPiAtCWF0bWVs
X3VhcnRfd3JpdGVsKHBvcnQsIEFUTUVMX1VTX01SLCBtb2RlKTsKPiAtCj4gLQkvKgo+IC0JICog
d2hlbiBzd2l0Y2hpbmcgdGhlIG1vZGUsIHNldCB0aGUgUlRTIGxpbmUgc3RhdGUgYWNjb3JkaW5n
IHRvIHRoZQo+IC0JICogbmV3IG1vZGUsIG90aGVyd2lzZSBrZWVwIHRoZSBmb3JtZXIgc3RhdGUK
PiAtCSAqLwo+IC0JaWYgKChvbGRfbW9kZSAmIEFUTUVMX1VTX1VTTU9ERSkgIT0gKG1vZGUgJiBB
VE1FTF9VU19VU01PREUpKSB7Cj4gLQkJdW5zaWduZWQgaW50IHJ0c19zdGF0ZTsKPiAtCj4gLQkJ
aWYgKChtb2RlICYgQVRNRUxfVVNfVVNNT0RFKSA9PSBBVE1FTF9VU19VU01PREVfSFdIUykgewo+
IC0JCQkvKiBsZXQgdGhlIGhhcmR3YXJlIGNvbnRyb2wgdGhlIFJUUyBsaW5lICovCj4gLQkJCXJ0
c19zdGF0ZSA9IEFUTUVMX1VTX1JUU0RJUzsKPiAtCQl9IGVsc2Ugewo+IC0JCQkvKiBmb3JjZSBS
VFMgbGluZSB0byBsb3cgbGV2ZWwgKi8KPiAtCQkJcnRzX3N0YXRlID0gQVRNRUxfVVNfUlRTRU47
Cj4gLQkJfQo+IC0KPiAtCQlhdG1lbF91YXJ0X3dyaXRlbChwb3J0LCBBVE1FTF9VU19DUiwgcnRz
X3N0YXRlKTsKPiAtCX0KPiAtCj4gIAkvKgo+ICAJICogU2V0IHRoZSBiYXVkIHJhdGU6Cj4gIAkg
KiBGcmFjdGlvbmFsIGJhdWRyYXRlIGFsbG93cyB0byBzZXR1cCBvdXRwdXQgZnJlcXVlbmN5IG1v
cmUKPiBAQCAtMjMxNyw2ICsyMjk2LDI4IEBAIHN0YXRpYyB2b2lkIGF0bWVsX3NldF90ZXJtaW9z
KHN0cnVjdCB1YXJ0X3BvcnQgKnBvcnQsIHN0cnVjdCBrdGVybWlvcyAqdGVybWlvcywKPiAgCj4g
IAlpZiAoIShwb3J0LT5pc283ODE2LmZsYWdzICYgU0VSX0lTTzc4MTZfRU5BQkxFRCkpCj4gIAkJ
YXRtZWxfdWFydF93cml0ZWwocG9ydCwgQVRNRUxfVVNfQlJHUiwgcXVvdCk7Cj4gKwo+ICsJLyog
c2V0IHRoZSBtb2RlLCBjbG9jayBkaXZpc29yLCBwYXJpdHksIHN0b3AgYml0cyBhbmQgZGF0YSBz
aXplICovCj4gKwlhdG1lbF91YXJ0X3dyaXRlbChwb3J0LCBBVE1FTF9VU19NUiwgbW9kZSk7Cj4g
Kwo+ICsJLyoKPiArCSAqIHdoZW4gc3dpdGNoaW5nIHRoZSBtb2RlLCBzZXQgdGhlIFJUUyBsaW5l
IHN0YXRlIGFjY29yZGluZyB0byB0aGUKPiArCSAqIG5ldyBtb2RlLCBvdGhlcndpc2Uga2VlcCB0
aGUgZm9ybWVyIHN0YXRlCj4gKwkgKi8KPiArCWlmICgob2xkX21vZGUgJiBBVE1FTF9VU19VU01P
REUpICE9IChtb2RlICYgQVRNRUxfVVNfVVNNT0RFKSkgewo+ICsJCXVuc2lnbmVkIGludCBydHNf
c3RhdGU7Cj4gKwo+ICsJCWlmICgobW9kZSAmIEFUTUVMX1VTX1VTTU9ERSkgPT0gQVRNRUxfVVNf
VVNNT0RFX0hXSFMpIHsKPiArCQkJLyogbGV0IHRoZSBoYXJkd2FyZSBjb250cm9sIHRoZSBSVFMg
bGluZSAqLwo+ICsJCQlydHNfc3RhdGUgPSBBVE1FTF9VU19SVFNESVM7Cj4gKwkJfSBlbHNlIHsK
PiArCQkJLyogZm9yY2UgUlRTIGxpbmUgdG8gbG93IGxldmVsICovCj4gKwkJCXJ0c19zdGF0ZSA9
IEFUTUVMX1VTX1JUU0VOOwo+ICsJCX0KPiArCj4gKwkJYXRtZWxfdWFydF93cml0ZWwocG9ydCwg
QVRNRUxfVVNfQ1IsIHJ0c19zdGF0ZSk7Cj4gKwl9Cj4gKwo+ICAJYXRtZWxfdWFydF93cml0ZWwo
cG9ydCwgQVRNRUxfVVNfQ1IsIEFUTUVMX1VTX1JTVFNUQSB8IEFUTUVMX1VTX1JTVFJYKTsKPiAg
CWF0bWVsX3VhcnRfd3JpdGVsKHBvcnQsIEFUTUVMX1VTX0NSLCBBVE1FTF9VU19UWEVOIHwgQVRN
RUxfVVNfUlhFTik7Cj4gIAlhdG1lbF9wb3J0LT50eF9zdG9wcGVkID0gZmFsc2U7Cj4gCgpUaGFu
a3MgIQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
