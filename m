Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CF85AFA6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 30 Jun 2019 12:32:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0uosm2EK3ojzBMjkGsgSetT/rALf1KQbyncE8s2Y/l4=; b=Xg1SmHbakN0R4T
	Gkb2rW6r3A533C+Xh1IUQvcW6wmlxetxS8qHqmpxcclrZDVpGRi3GI5J0poDnPriIj/ewlhhvYjXz
	BnxQyageDMhMQ8Mm3hLsJl+ONRPcRlB0XIgQdOdTfAtmOjm7UL5k7KGWngr0f4lBwLtQJ2aQxHf2O
	S9XR2Ity7ljvSHrMOsMGcE6KcSB02EzgSd9G/5oxg8S21YmFkOzvdJs4isSoJoz3l1fJ8HfURquxW
	2IwkoqVeHeGjEwWKCLGUjZzaJBZtlemB48Uk2DP+TzaSFrJ48DQ9Ws+m5wp38y+evKX/zVIr3nBE2
	ZRtuKRGQIXf9LIcF1Duw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhX82-000687-9X; Sun, 30 Jun 2019 10:32:14 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhX7a-00067k-Jv
 for linux-arm-kernel@lists.infradead.org; Sun, 30 Jun 2019 10:31:48 +0000
Received: by mail-io1-xd43.google.com with SMTP id w25so22106715ioc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 30 Jun 2019 03:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2oqIz75KNESlOqUJhBPXcjPOp+quk31+qKsCBUMp1bY=;
 b=tlU1bOJpyygzlPoTZQyUZDvcfsOWRUcyVdyAFqatjxNKTiHCepSZfFygc01h99WQG9
 rpZketCL3kRNJ2lD9X0TFADuR+R5J/Xh9l+8wxe90yq5udZW3WDs9MyKpsSwOXFwWUSc
 1ugwmJ3EJ+m3d8u1lkWerGKlklTDpVdRzB6kdK82C8QmaPDQS9rN/eWskIZU//5TPtiy
 akxA5lp9guFiLdAXkRXAV5QvdsPy6Z25yuiIVNjxAjzadMhKK4fjtiHTC4mVxAhPPFJW
 S7Ch+ODlA8Nn7fCdG89NuAxganpscmqO/dMvs+kh8iAFf6WR79wiefaMCw/g+2KqrIwn
 SUKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=2oqIz75KNESlOqUJhBPXcjPOp+quk31+qKsCBUMp1bY=;
 b=Wig0A/wgklX9x9ebE1iAhFnKuixoXSpuVVt/sHToEP6PiCJCJ4tVhyuLSmw8YRJHxf
 lejYxGSmJfipKbfi7cgg86yP5ktTrEnibmlKwtNfLi5rEzdqDhYODxqHSHbwqMM85TPh
 /dmOnjP5P7ZSHcOjSxMqR/I31jvrdoKR14VgV1FqvRM90XsGPqrP9kHuIM/lb2cgUgDP
 G2Twb09zf1JS3JO61SziemKLwOf/nFHdQpi/gVbNCnaSjmhG2mIFZxzH+84ORed+BIJ5
 anlAKl8KfceljPsWwQmVHKPmaxVFvsElTMQX3D/aENDng5jPjAuP42P4K4xODj5ftllS
 ToAg==
X-Gm-Message-State: APjAAAXQvI4umJ+8Opg+82Tb8TQFo7pofsFMCtTHZlnIBUELzzJY0rUn
 V1e2rEIMWJ1nH8u2WZjg/6/QCDNUl3Q5A1icpKI=
X-Google-Smtp-Source: APXvYqzLtrrAb53eIs9wY6s+sNSZRXSfLxPUWK5FR9BnBkqBGhKdyZJzjY65DKBiSib9WSMIg5tmp/NCa4lbL2OGm5c=
X-Received: by 2002:a02:5502:: with SMTP id e2mr21875994jab.87.1561890701191; 
 Sun, 30 Jun 2019 03:31:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190626082512.7637-1-michonskikrzysztof@gmail.com>
 <VI1PR04MB53274E7E20C099F0F84B18198BFD0@VI1PR04MB5327.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB53274E7E20C099F0F84B18198BFD0@VI1PR04MB5327.eurprd04.prod.outlook.com>
From: =?UTF-8?Q?Krzysztof_Micho=C5=84ski?= <michonskikrzysztof@gmail.com>
Date: Sun, 30 Jun 2019 12:31:30 +0200
Message-ID: <CAOiNxGDs9Ki7_y_=Mv1tnSsqObv9EYzkdmo+yLCO6gMPBLNwYA@mail.gmail.com>
Subject: Re: [PATCH] imx: usb: get pinctrl if it's not yet initialized
To: Peter Chen <peter.chen@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_033146_681252_8AFD720A 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michonskikrzysztof[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "afenkart@gmail.com" <afenkart@gmail.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUGV0ZXIsClllcyB5b3UgYXJlIHJpZ2h0ISBUaGlzIGZpbGUncyBiZWVuIHBhdGNoZWQgcHJl
dmlvdXNseSBpbiBteSBmb3JrLgpTb3JyeSBhYm91dCB0aGF0LgoKUmVnYXJkcywKS3J6eXN6dG9m
IE1pY2hvxYRza2kKCmN6dy4sIDI3IGN6ZSAyMDE5IG8gMDU6MjIgUGV0ZXIgQ2hlbiA8cGV0ZXIu
Y2hlbkBueHAuY29tPiBuYXBpc2HFgihhKToKPgo+Cj4gPiBJbiBjYXNlIHVzYiBwaHkgbW9kZSBp
cyBvdGhlciB0aGFuIFVTQlBIWV9JTlRFUkZBQ0VfTU9ERV9IU0lDIHRoZSBwaW5jdHJsCj4gPiBm
b3IgZGV2aWNlIGlzIG5vdCBhY3F1aXJlZC4gSXQgaXMgaG93ZXZlciB1c2VkIGxhdGVyIHJlZ2Fy
ZGxlc3Mgb2YgdGhlIG1vZGUsIGhlbmNlCj4gPiBsZWFkcyB0byByZXF1ZXN0aW5nIGFjY2VzcyB0
byB1bmluaXRpYWxpemVkIGRhdGEuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIE1p
Y2hvbnNraSA8bWljaG9uc2tpa3J6eXN6dG9mQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZl
cnMvdXNiL2NoaXBpZGVhL2NpX2hkcmNfaW14LmMgfCAzICsrKwo+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2IvY2hpcGlk
ZWEvY2lfaGRyY19pbXguYyBiL2RyaXZlcnMvdXNiL2NoaXBpZGVhL2NpX2hkcmNfaW14LmMKPiA+
IGluZGV4IGE0YjQ4MmMzZGM2NS4uMmYwMmIzNWM0MGI2IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVy
cy91c2IvY2hpcGlkZWEvY2lfaGRyY19pbXguYwo+ID4gKysrIGIvZHJpdmVycy91c2IvY2hpcGlk
ZWEvY2lfaGRyY19pbXguYwo+ID4gQEAgLTQyOCw2ICs0MjgsOSBAQCBzdGF0aWMgaW50IGNpX2hk
cmNfaW14X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiAgICAgICAgICAg
ICAgIHBtX3J1bnRpbWVfZW5hYmxlKGRldik7Cj4gPiAgICAgICB9Cj4gPgo+ID4gKyAgICAgaWYg
KCFkYXRhLT5waW5jdHJsKQo+ID4gKyAgICAgICAgICAgICBkYXRhLT5waW5jdHJsID0gZGV2bV9w
aW5jdHJsX2dldChkZXYpOwo+ID4gKwo+ID4gICAgICAgaWYgKCFJU19FUlIoZGF0YS0+cGluY3Ry
bCkpIHsKPiA+ICAgICAgICAgICAgICAgc3RydWN0IHBpbmN0cmxfc3RhdGUgKnN0YXRlOwo+ID4K
Pgo+IFNvcnJ5LCB3aGF0IGtlcm5lbCB2ZXJzaW9uIHlvdSBhcmUgdXNpbmc/IFRoZSByZWNlbnQg
a2VybmVsIGlzIGRpZmZlcmVudCB3aXRoIHRoZSBwYXRjaCB5b3UgcG9zdGVkLgo+Cj4gUGV0ZXIK
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
