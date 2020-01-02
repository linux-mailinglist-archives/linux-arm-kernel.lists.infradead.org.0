Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9685912E868
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 17:05:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gR/GTD05IeXwVWKZt/pYePx/xwUHVKqtRKZx3VEQoWY=; b=rA8qL0SR0LSuOu
	m6b4Q0aR9eQJ5sJh7iPpL8XaUlbRFfZ0g3n82fQPqTvyJUEA8nlCJzgWJWvoYEfjvfpZKwuvfxg3L
	oZtLxYjy+QZMUSwmhSj5gMBvTGkOBxWMK++UxoqgNnNBqW3Cy3cbE4sk9ioUNTwNoxKVn4SqqmPZN
	oaN+0EC3D6QGAwi4Fi2W6TxKO0kprPnDQ87BOqtPEac/oOTpnPe2VUOTVExQgE+7fxsPepTWcgNW3
	vFoHv5iFeJnDRnEY95jHmqLvwfPGndhc+aQyXQHX+a/Pi61vSEQWpKlszp3MoSpYjNWKRHOC8IqSq
	lDbmJTfOmPcoj9NHBRog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in2yd-0003X3-T4; Thu, 02 Jan 2020 16:05:35 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in2yW-0003WA-Lc
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 16:05:30 +0000
Received: by mail-wm1-x343.google.com with SMTP id p9so5996452wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 08:05:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=INDmQoNk/tJLRjiqxNPsW2gTLEyOqRnXAOa6Y+CM3Pw=;
 b=JhmzFIJCwdx9ggVuJa79e18cPxwtou1gcE2KkF73nX52YP4KJfuBKD6A9MvYxQTB58
 ZnhIgjy+uRa72LkOh/wX8AHmX1zPfwDvM2hpfzsCbUIZi/ccsvGD6ONponzCPHA2/406
 9BHfB01Fm+tcSETuQixDIKAzq+WpXxLcKg2vOMEkC+DZLT53n1NWMUGolQQu0tQSxIdd
 zr6eTSmrAxXpOS/Q/51yb93kLZsvvbmjVOyiQYQj4lClGK8OPiMQyfY2m6+7z8H9KeDK
 XBpF6baVTfB61xHzqc3d/ze4fNF2Upt6T/lijlv5QSLL6V1VZumqs/lvEFGwT5OKOT+w
 6K6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=INDmQoNk/tJLRjiqxNPsW2gTLEyOqRnXAOa6Y+CM3Pw=;
 b=LdQ6KAu3217uHd6J85YGC94hEQiWZFCgBlzWzl68VJ09FoSkgahBXO/Kz5tR8ZTFQc
 Iq55yczkMD/R5jP3xS12jucHfHRvlJjZgA5UeOEYWlU2QTfKEz3waP6nSGPqEEilXZMe
 pEc+qgAEeFOEH/V/tEs2Qcpy8cNBvX8T9X2oXviLNhXTJdopdLs6oIaCjZEmNMHJtP9r
 aXOESQnnF3irIfjJKIlFtJNe0/eRT7r5jWzmusI6kUHYg0Cly/4lFjwV2Y/quwqPX20I
 SiIbn+/X2O5q9f0uATv8+ZUCvHnatDRxovOHKfRCODEvedkgFeq3MVZ2puQZIOoTrl29
 3uQQ==
X-Gm-Message-State: APjAAAWKZP3Cf58N+r8p26R6zp/b/hVt47N7t+nDCYfhRqaoztlTFzMe
 4/MU4+M3Z+7t9a0kGd+OyAUjkw==
X-Google-Smtp-Source: APXvYqyEivYwaP2ns3ILcszz/Grz4Of7NPSptL4+RXbkbFEpLOYTTlIS/61sIXEmkPh/gB/NCcDmKQ==
X-Received: by 2002:a05:600c:d7:: with SMTP id
 u23mr14220226wmm.145.1577981123996; 
 Thu, 02 Jan 2020 08:05:23 -0800 (PST)
Received: from dell ([2.27.35.135])
 by smtp.gmail.com with ESMTPSA id t125sm9077685wmf.17.2020.01.02.08.05.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jan 2020 08:05:22 -0800 (PST)
Date: Thu, 2 Jan 2020 16:05:34 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v3 0/6] fixes for atmel-hlcdc
Message-ID: <20200102160534.GJ22390@dell>
References: <1576672109-22707-1-git-send-email-claudiu.beznea@microchip.com>
 <20200102090554.GB29446@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200102090554.GB29446@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_080528_841788_A6D9181F 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexandre.belloni@bootlin.com, airlied@linux.ie,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, peda@axentia.se,
 boris.brezillon@bootlin.com, Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAwMiBKYW4gMjAyMCwgU2FtIFJhdm5ib3JnIHdyb3RlOgoKPiBIaSBMZWUuCj4gCj4g
SG93IGRvIGRlIGhhbmRsZSB0aGUgdHdvIG1mZCByZWxhdGVkIHBhdGNoZXM/Cj4gCj4gPiBJIGhh
dmUgZmV3IGZpeGVzIGZvciBhdG1lbC1obGNkYyBkcml2ZXIgaW4gdGhpcyBzZXJpZXMgYXMgd2Vs
bAo+ID4gYXMgdHdvIHJldmVydHMuCj4gPiBSZXZlcnQgImRybTogYXRtZWwtaGxjZGM6IGVuYWJs
ZSBzeXNfY2xrIGR1cmluZyBpbml0YWxpemF0aW9uLiIgaXMKPiA+IGR1ZSB0byB0aGUgZml4IGlu
IGluIHBhdGNoIDIvNS4KPiA+IAo+ID4gVGhhbmsgeW91LAo+ID4gQ2xhdWRpdSBCZXpuZWEKPiA+
IAo+ID4gQ2hhbmdlcyBpbiB2MzoKPiA+IC0gY2hhbmdlcyBkZXZfZXJyKCkgbWVzc2FnZSBpbiBw
YXRjaCA0LzYKPiA+IC0gY29sbGVjdCBBY2tlZC1ieSB0YWdzCj4gPiAKPiA+IENoYW5nZXMgaW4g
djI6Cj4gPiAtIGludHJvZHVjZSBwYXRjaCAzLzYKPiA+IC0gdXNlIGRldl9lcnIoKSBpbnBhdGNo
IDQvNgo+ID4gLSBpbnRyb2R1Y2UgcGF0Y2ggNS82IGluc3RlYWQgb2YgcmV2ZXJ0aW5nIGNvbW1p
dCBmNmY3YWQzMjM0NjEKPiA+ICAgKCJkcm0vYXRtZWwtaGxjZGM6IGFsbG93IHNlbGVjdGluZyBh
IGhpZ2hlciBwaXhlbC1jbG9jayB0aGFuIHJlcXVlc3RlZCIpCj4gPiAKPiA+IENsYXVkaXUgQmV6
bmVhICg1KToKPiA+ICAgZHJtOiBhdG1lbC1obGNkYzogdXNlIGRvdWJsZSByYXRlIGZvciBwaXhl
bCBjbG9jayBvbmx5IGlmIHN1cHBvcnRlZAo+ID4gICBkcm06IGF0bWVsLWhsY2RjOiBlbmFibGUg
Y2xvY2sgYmVmb3JlIGNvbmZpZ3VyaW5nIHRpbWluZyBlbmdpbmUKPiAKPiA+ICAgbWZkOiBhdG1l
bC1obGNkYzogYWRkIHN0cnVjdCBkZXZpY2UgbWVtYmVyIHRvIHN0cnVjdAo+ID4gICAgIGF0bWVs
X2hsY2RjX3JlZ21hcAo+ID4gICBtZmQ6IGF0bWVsLWhsY2RjOiByZXR1cm4gaW4gY2FzZSBvZiBl
cnJvcgo+IAo+IFdvdWxkIGl0IGJlIE9LIHRvIGFwcGx5IHRoZSB0byBkcm0tbWlzYy1uZXh0LCBv
ciBzaGFsIHRoZXkgZ28gaW4gdmlhCj4geW91ciBtZmQgdHJlZT8KCkhvdyBhcmUgdGhleSByZWxh
dGVkIHRvIHRoZSBvdGhlciBwYXRjaGVzPyAgRG8gdGhleSBoYXZlIGJ1aWxkLXRpbWUKZGVwZW5k
ZW5jaWVzIG9uIGFueSBvZiB0aGUgb3RoZXIgcGF0Y2hlcywgb3IgdmljZSB2ZXJzYT8gCgotLSAK
TGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5h
cm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFy
bzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
