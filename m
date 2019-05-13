Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB7A1B59D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 14:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pNM8SJm6fQ+OzybkOoAG+7CGDHiofmGJq5YLWx7NRus=; b=DY8WNFuetghEoC
	n5HvLNnwHgic4dwxMVw7+dtcrVyDFWlanF9NlxaYkdpaqCdRXupl9IjuuEaEGHuHL36sA+qhbq2cS
	UzjJ6lKi8UrYzO3xWwDJkHbF11AmJCI5cxKlGrQwAiJhajKIjyT5xXJtjaBAnV5pPfDkFaFXOSM0A
	NrtQyeIGlLMQFAQ48bH8SiU3Tjfa6GYDZriCnnTOJhGEJa/QnUBVlHfWvZxgZnHl++Gct92KurMJH
	3/ZxbMMAwbgYLe00fMS7MdruW3g3iwVhhXHCg5eXEDb+rZzAqfROVQfIVPeo5ooYIPBV4dXf/K/sg
	+m1m6dSKeNuy5RYIgXMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ9rX-0001Cq-OH; Mon, 13 May 2019 12:15:23 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ9rM-0000gO-GC
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 12:15:16 +0000
Received: by mail-lj1-x242.google.com with SMTP id 188so10707002ljf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 05:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=rOr3Gsm0mGb0WDhqm48mOPhgHOZnryd/bgzELt3x9Zw=;
 b=rL6VWfhYLeCehu+qqHfXaxlLofb6OIzVuacutGXxmBDVxcTJLbAxLzCkyfg+dzVnXT
 Yn3r+z6YtjDmiHRyVfhDJUUfhLy+mHI245UAy5ckCz6MxawNAISUWGLVppEKZQHxo68C
 rJ9RnEhFuQ1lVl0z0xUMpHyFN8XwYS/1yEG592yqm+P6x935Qys5OvObBxQwpZz2pFyP
 BltkTnBwFYbDsgsa32gqF66ot32DkXNTw+IETeecxZMZVr6CR7eSfdip7s+DVRX1LmEN
 hwm6FXZox2QXVjeai8RV5sUfrNVWXtfzrb/DnhGy84qJMNnCjXoIJt+6W8KqnUfuE/6V
 oCIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=rOr3Gsm0mGb0WDhqm48mOPhgHOZnryd/bgzELt3x9Zw=;
 b=Kr9hoS3g7Ukz3/Ik5uqFVn74Ek1gtJZSymiSjP6i5rthJW0FexJc4uuusB/23qukUN
 FUXI7zEt3Hl80Y66LE976SUxZbvJP1xD7eX8Dv2UT55MK+eH7ltkwMZiZQQZVP+rYp3t
 l2pl0cImMVBeEYdpOPMLT9QROinJ8Bx9stN620LLCV3wLz0oj/BMJVRTXgF0u6U/1OIE
 uRRueVXAHSmr9FA5TRQOcjA8/ukeYuOaFzPp5A/TxAdfxCOA9xvT3vp7y1FLrwaxN5iU
 pSV3B0oLZE2YYuvYvc40R2ta4erSoQborOCjV4FcF6jlgRqUOtI8JeUasmsUKU6JtMzJ
 I3sg==
X-Gm-Message-State: APjAAAVBIdz+n1IcSDfzFLDfcYf9Ub9E9mDo+HyoFfqwAvQ4+4TNBmpx
 H/EGZSn6z8vOsgEh9mUw/2KSOxrcJ/zcnTRN9lk=
X-Google-Smtp-Source: APXvYqzp3sCYD8FYbrq+GHcnJ3/WobHowbkpbM/6uE98nh/hVVi05mnNbb26eUlPIVGuL87m2aTILeIqG1+5k4AAfqI=
X-Received: by 2002:a2e:994:: with SMTP id 142mr5345716ljj.192.1557749710047; 
 Mon, 13 May 2019 05:15:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190513035909.30460-1-andrew.smirnov@gmail.com>
 <20190513035909.30460-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190513035909.30460-2-andrew.smirnov@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 13 May 2019 09:15:05 -0300
Message-ID: <CAOMZO5Dkv_g-+GjYfrRP8h0bmRMws1iETRJiGmTBx7tfM_HwyA@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: vf610-zii-dev: Add QSPI node
To: Andrey Smirnov <andrew.smirnov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_051512_853627_28F9D0D4 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Chris Healy <cphealy@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmV5LAoKT24gTW9uLCBNYXkgMTMsIDIwMTkgYXQgMTI6NTkgQU0gQW5kcmV5IFNtaXJu
b3YKPGFuZHJldy5zbWlybm92QGdtYWlsLmNvbT4gd3JvdGU6Cgo+ICsmcXNwaTAgewo+ICsgICAg
ICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiArICAgICAgIHBpbmN0cmwtMCA9IDwmcGlu
Y3RybF9xc3BpMD47Cj4gKyAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gKwo+ICsgICAgICAgLyoK
PiArICAgICAgICAqIEF0dGFjaGVkIE1UMjVRTDAyIGNhbiBnbyB1cCB0byA5ME1oeiBpbiBEVFIg
YW5kIDE2NiBpbiBTRFIKPiArICAgICAgICAqIG1vZGVzLCBzbyB3ZSBsaW1pdCBzcGktbWF4LWZy
ZXF1ZW5jeSB0byA5ME1oegoKTml0OiBJdCBpcyBNSHosIG5vdCBNaHouCgpNVDI1UUwwMiBkYXRh
c2hlZXQgcmVmZXJzIHRvIERUUiBhbmQgU1RSIChub3QgU0RSKS4KCkFsc28sIHRoZSBwdWJsaWMg
ZGF0YXNoZWV0IEkgY2FuIHNlZSBvbmxpbmUgbGlzdHMgdGhlc2UgbGltaXRzIGRpZmZlcmVudGx5
OgoKIuKAoiBDbG9jayBmcmVxdWVuY3kg4oCTIDEzMyBNSHogKE1BWCkgZm9yIGFsbCBwcm90b2Nv
bHMgaW4gU1RSIOKAkyA2NiBNSHoKKE1BWCkgZm9yIGFsbCBwcm90b2NvbHMgaW4gRFRSIgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
