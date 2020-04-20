Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBE61B0337
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 09:37:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=77EaW3BgCA5++8C2TaAnEvKyeaRODqSMa1c2QMqKz/s=; b=blWLDRJ0yxFMMV
	T9yky33x/agMme0gfw9YPXujX8tMUxqynD50KFZ2cZlG+dTAm6QWPnpMdmj5jDpBue38XZksNx6v9
	PtgKMREQt76mRnM9UdCublvvDY+5UXBC1U9FwtR1P3WkJhE1HuHvWecKawfGtZNQJ3hRFUUVMfOwD
	/hO5trmDkEYnm3+4HXwNvQUi8W30WvZo+VuhbkBWReq5j71j4KLN21sEx9VdQ/vAV9n1R2BBKTrCs
	AFnqM9G086xyCmgzKPuqnc7H8zcJ5DlQjfubuO/nQagwxWz7XWCovxd3O+93o0ug2p7zpY+63cotC
	Rjpq5L7mPwU+KR+6hySQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQQzp-0007mR-Co; Mon, 20 Apr 2020 07:37:37 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQQzY-0007km-Jd
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 07:37:22 +0000
Received: by mail-wm1-x342.google.com with SMTP id t63so8808668wmt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 00:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=x4d8njD2ChzZ2kuDWBQWJtIw3UQE6E7sHmhOoB5ezqs=;
 b=s9Ej0RPYb9lJkeS+N4KaZqRVDOm/SMTuNsIfiyVl/sCG8tzdLnNngYV+RVgyER1R3F
 VRzB6TNY6rn0cuPvz+jDOcsgEm6vB1iflYdPxH4S/bamY84eTcqa+4vtDy05GKDS4zS0
 Kmm16bHrfBNiQYXYskNt3fsMJzTC+pNl8kFLLFI9UFzWOxH8F7RfDCklTUfNpN0f2I44
 VR2D/sc2g96ROMto0j2Rr+t14rZ1StFnVNPpwNhsirhV/Pqwh8cGs84i9OzxMvWPinBI
 Lffym77ABv9sVKQAf5rNjW5F0P8/MHbhNn36a9zIpouhrv8SW+gc2OjC9ud+o76ZOm5t
 peAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=x4d8njD2ChzZ2kuDWBQWJtIw3UQE6E7sHmhOoB5ezqs=;
 b=J6kfiOs5RApv/Ib97iirQPCJXZZng8kcllnMjMY0IvZLUgaX/OVzwnxYwO/9Rxpxeh
 Is9gByyInoHLVyROcmVezlto3wpDvnq0MVeJzuDlG5aT4RES7ue7xqONKee4JtzX1wHp
 5VwY0wklYWdlx5GnCpNyUfOBtkOHHqEppTX1mKjU3sVjy48e/uYEnnCJxKwFGxiWaj7H
 IDBeaP9BTSPlBOVpbU/TLu/Hg+Mx4l/168IGw//H6AExZO4N5Ul56M/hOzuzHYGbcoQq
 MW198tz1iHp5+zcrK2UmFt5zTG235+Ap1/nWYWUK6+aTFaVm8N9SYZ3SJnQ6Fkxo0yKO
 a1Lw==
X-Gm-Message-State: AGi0PuY04LxomL1qElOQBx+0jlSFMKTGUsqbPjq4lInakiNUuLwn8Js1
 3nw1nKYGqtZ8ML3mno8F1utXyQ==
X-Google-Smtp-Source: APiQypI3JmmCDHjcMn3A1vzcEpxgsLlbI4LO3mEsYg5l0mrqs5au0PNliOvfe+fdVwtahiKITEMREQ==
X-Received: by 2002:a1c:6344:: with SMTP id x65mr16504650wmb.56.1587368238713; 
 Mon, 20 Apr 2020 00:37:18 -0700 (PDT)
Received: from dell ([95.149.164.107])
 by smtp.gmail.com with ESMTPSA id y40sm43875wrd.20.2020.04.20.00.37.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 00:37:18 -0700 (PDT)
Date: Mon, 20 Apr 2020 08:37:16 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Ran Bi <ran.bi@mediatek.com>
Subject: Re: [PATCH v12 5/6] rtc: mt6397: Add support for the MediaTek MT6358
 RTC
Message-ID: <20200420073716.GM3737@dell>
References: <1586333531-21641-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1586333531-21641-6-git-send-email-hsin-hsiung.wang@mediatek.com>
 <20200416091438.GA2167633@dell>
 <1587112169.12875.2.camel@mhfsdcap03>
 <1587113392.13323.3.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587113392.13323.3.camel@mhfsdcap03>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_003720_639182_7A322ACC 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, linux-rtc@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, Frank Wunderlich <frank-w@public-files.de>,
 Sean Wang <sean.wang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>, srv_heupstream@mediatek.com,
 Sebastian Reichel <sre@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAxNyBBcHIgMjAyMCwgUmFuIEJpIHdyb3RlOgoKPiBPbiBGcmksIDIwMjAtMDQtMTcg
YXQgMTY6MjkgKzA4MDAsIFJhbiBCaSB3cm90ZToKPiA+IE9uIFRodSwgMjAyMC0wNC0xNiBhdCAx
MDoxNCArMDEwMCwgTGVlIEpvbmVzIHdyb3RlOgo+ID4gPiBPbiBXZWQsIDA4IEFwciAyMDIwLCBI
c2luLUhzaXVuZyBXYW5nIHdyb3RlOgo+ID4gPiAKPiA+ID4gPiBGcm9tOiBSYW4gQmkgPHJhbi5i
aUBtZWRpYXRlay5jb20+Cj4gPiA+ID4gCj4gPiA+ID4gVGhpcyBhZGQgc3VwcG9ydCBmb3IgdGhl
IE1lZGlhVGVrIE1UNjM1OCBSVEMuIERyaXZlciB1c2luZwo+ID4gPiA+IGNvbXBhdGlibGUgZGF0
YSB0byBzdG9yZSBkaWZmZXJlbnQgUlRDX1dSVEdSIGFkZHJlc3Mgb2Zmc2V0Lgo+ID4gPiA+IFRo
aXMgcmVwbGFjZSBSVENfV1JUR1IgdG8gUlRDX1dSVEdSX01UNjMyMyBpbiBtdDYzMjMtcG93ZXJv
ZmYKPiA+ID4gPiBkcml2ZXIgd2hpY2ggb25seSBuZWVkZWQgYnkgYXJtdjcgQ1BVIHdpdGhvdXQg
QVRGLgo+ID4gPiA+IAo+ID4gPiA+IFJldmlld2VkLWJ5OiBOaWNvbGFzIEJvaWNoYXQgPGRyaW5r
Y2F0QGNocm9taXVtLm9yZz4KPiA+ID4gPiBSZXZpZXdlZC1ieTogWWluZ2pvZSBDaGVuIDx5aW5n
am9lLmNoZW5AbWVkaWF0ZWsuY29tPgo+ID4gPiA+IEFja2VkLWJ5OiBBbGV4YW5kcmUgQmVsbG9u
aSA8YWxleGFuZHJlLmJlbGxvbmlAYm9vdGxpbi5jb20+Cj4gPiA+ID4gQWNrZWQtYnk6IFNlYmFz
dGlhbiBSZWljaGVsIDxzcmVAa2VybmVsLm9yZz4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBSYW4g
QmkgPHJhbi5iaUBtZWRpYXRlay5jb20+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSHNpbi1Ic2l1
bmcgV2FuZyA8aHNpbi1oc2l1bmcud2FuZ0BtZWRpYXRlay5jb20+Cj4gPiA+IAo+ID4gPiBQbGVh
c2UgcGxhY2UgdGhlc2UgaW4gY2hyb25vbG9naWNhbCBvcmRlci4gIFRoZXkgc2hvdWxkIHByb3Zp
ZGUgc29tZQo+ID4gPiBoaXN0b3J5LCByYXRoZXIgdGhhbiBhIHVub3JkZXJlZCBzbGFiIGxpc3Qg
b2YgcmFuZG9tIHNpZ24tb2Zmcy4KPiA+ID4gCj4gPiAKPiA+IEkgc3VwcG9zZSB0aGF0IHlvdSBt
ZWFuIHRoZSBvcmRlciBzaG91bGQgYmUgbGlrZSBiZWxvdywgcmlnaHQ/Cj4gPiBSZXZpZXdlZC1i
eTogWWluZ2pvZSBDaGVuIDx5aW5nam9lLmNoZW5AbWVkaWF0ZWsuY29tPgo+ID4gQWNrZWQtYnk6
IFNlYmFzdGlhbiBSZWljaGVsIDxzcmVAa2VybmVsLm9yZz4KPiA+IEFja2VkLWJ5OiBBbGV4YW5k
cmUgQmVsbG9uaSA8YWxleGFuZHJlLmJlbGxvbmlAYm9vdGxpbi5jb20+Cj4gPiBSZXZpZXdlZC1i
eTogTmljb2xhcyBCb2ljaGF0IDxkcmlua2NhdEBjaHJvbWl1bS5vcmc+Cj4gPiBTaWduZWQtb2Zm
LWJ5OiBIc2luLUhzaXVuZyBXYW5nIDxoc2luLWhzaXVuZy53YW5nQG1lZGlhdGVrLmNvbT4KPiA+
IFNpZ25lZC1vZmYtYnk6IFJhbiBCaSA8cmFuLmJpQG1lZGlhdGVrLmNvbT4KPiA+IAo+IAo+IENv
cnJlY3Rpb24sIEkgdGhpbmsgZm9sbG93aW5nIGlzIHRoZSBjb3JyZWN0IGNocm9ub2xvZ2ljYWwg
b3JkZXI6Cj4gU2lnbmVkLW9mZi1ieTogUmFuIEJpIDxyYW4uYmlAbWVkaWF0ZWsuY29tPgo+IFNp
Z25lZC1vZmYtYnk6IEhzaW4tSHNpdW5nIFdhbmcgPGhzaW4taHNpdW5nLndhbmdAbWVkaWF0ZWsu
Y29tPgo+IFJldmlld2VkLWJ5OiBOaWNvbGFzIEJvaWNoYXQgPGRyaW5rY2F0QGNocm9taXVtLm9y
Zz4KPiBBY2tlZC1ieTogQWxleGFuZHJlIEJlbGxvbmkgPGFsZXhhbmRyZS5iZWxsb25pQGJvb3Rs
aW4uY29tPgo+IEFja2VkLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c3JlQGtlcm5lbC5vcmc+Cj4g
UmV2aWV3ZWQtYnk6IFlpbmdqb2UgQ2hlbiA8eWluZ2pvZS5jaGVuQG1lZGlhdGVrLmNvbT4KClRo
aXMgbG9va3MgYmV0dGVyLCB5ZXMuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBT
ZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2Fy
ZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
