Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91793701C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8AldM3aO9FwqZe0oiiJfPxHWSPSIRXfCre9ynzt0/wE=; b=R6/EHE6Bq5DTNw
	eDFnbbLXUV5sTFjHpO88FiCCgfTnjU8Sp1GVdvp+F4c5svJrov+hlg8pjdUfpHA7KFySs4TcZotwf
	2GtvnipsBOBh6Z1WYkoJeRMxcxZARl0I0WXJaeDG5y5N5pjwFgYL7/1O9tsHJemLqSQpIrmstYkco
	hvxvw/j17N9vUVWc66BcZ3Cw7MQ9pCQoKHxzkrwA4lsfOyYaDZ5fZn6HP9DEryaLw/7AiOsbyXw4G
	GuzMsYORguZkKIJOxvwjRORoozWhO6ugcQu8WFK+Phw+hbx8tsDzqek3pyW86XUMmINqIi11dwiex
	evougmChN+sE4YhqSV7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYm9-0000pd-Qq; Mon, 22 Jul 2019 13:54:49 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYls-0000ol-6K
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:54:33 +0000
Received: by mail-lf1-x141.google.com with SMTP id v85so26668042lfa.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version:content-transfer-encoding;
 bh=IyqojxqChGkw/GcKxMEI9e3tzWqrG58fbzo7AnaUOE0=;
 b=m43luR1TpWhKq+bdQeQ98P8f0+hPwN5AAjuMDdZ1Y9/NPtlBJQKe43GbKRAoKQERN0
 rzlI2BGwYccqu0U1pqI0WDpSH3dMY1UsZCwhZUqDV+i8/ddIvBFx3rpHGMVa3WOKBnak
 jrFCL1zmUCjy/l0LO15SgZwfQC+lufhBXgRhzli7CDUomZA+kMrSBatW1Whh7dX6Kfb5
 LTwdOtgXhS2YAyK1OS6GKFsOyA7wu8ezI9nObBFIqtTovRFV92RSfsvZ39Dw+Fi0Gex5
 SJESW8psCmGFtOM72z9obGqYI2oeLTuyChCBwcuac3bRLSMFNNwhjY3OCIy4kaLGuSe4
 fCvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version:content-transfer-encoding;
 bh=IyqojxqChGkw/GcKxMEI9e3tzWqrG58fbzo7AnaUOE0=;
 b=PqHyjqgER7/EeelrwwRxNliGm+I86kG2xzaHAew46wAKxrBo7QiV0H25dXwxtkqzen
 gEB47GdBxKfIPp2Dv63K4P7B41gyJMeFzgU+YqWY9lNHggaXGhbTBzYRtONZ2NbqlvrI
 J6CQ9IhDabyJt1OZpNf841f8Z9BwYEw4F/WAor5cJ2mMEw/+wSmI+3vEcx3iRPLPnL7H
 e6uY/xUi8ELOHUQd38qwSLZ7Hgawuybc5NvJoP02wV/se+Yr+DjKxO51kUo0cQ59SMTc
 2pU5kJqxBgBYm5wyFe1K6b3zAR3CyCDJDBTg0cFmEhMiDJR+9i/meJ2RLqipi92JG/Zt
 6pLA==
X-Gm-Message-State: APjAAAXoQRRi09aUI4Rh4VEzuWK8D1dJt3y97Wkw25Qr/bbuJgw9c1VV
 tsM2C12MD4hO1lBFrqq6Zt5b74OA
X-Google-Smtp-Source: APXvYqzj3s65gxrBM8IWekNUucCGABMcLU7uxRFVnL7DWOZdiAdgt1TGJ9U0kvNMeqYu2TggNKv2Ww==
X-Received: by 2002:ac2:414d:: with SMTP id c13mr14037459lfi.47.1563803670478; 
 Mon, 22 Jul 2019 06:54:30 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id e87sm8595894ljf.54.2019.07.22.06.54.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 06:54:29 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v4 1/3] serial: imx: set_termios(): do not enable autoRTS
 if RTS is unset
References: <1563526074-20399-1-git-send-email-sorganov@gmail.com>
 <1563526074-20399-2-git-send-email-sorganov@gmail.com>
 <20190719091143.uhjxeibtolgswq2l@pengutronix.de>
 <87h87idxq2.fsf@osv.gnss.ru>
 <20190719143151.gx43ndn2oy35h247@pengutronix.de>
 <87woge9hvz.fsf@osv.gnss.ru>
 <20190719201949.ldqlcwjhcmt7wwhg@pengutronix.de>
 <87ftmy8qgu.fsf@osv.gnss.ru>
 <20190722075107.cc3tvf6gmxhaeh5m@pengutronix.de>
 <87lfwq77el.fsf@osv.gnss.ru>
 <20190722094614.o5tqgmn3wql2apdz@pengutronix.de>
Date: Mon, 22 Jul 2019 16:54:28 +0300
In-Reply-To: <20190722094614.o5tqgmn3wql2apdz@pengutronix.de> ("Uwe
 \=\?utf-8\?Q\?Kleine-K\=C3\=B6nig\=22's\?\= message of "Mon,
 22 Jul 2019 11:46:14 +0200")
Message-ID: <87ef2i5g4r.fsf@osv.gnss.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_065432_341430_CAD37BB6 
X-CRM114-Status: GOOD (  26.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
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
Cc: linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JpdGVz
OgoKPiBPbiBNb24sIEp1bCAyMiwgMjAxOSBhdCAxMjoyMDowMlBNICswMzAwLCBTZXJnZXkgT3Jn
YW5vdiB3cm90ZToKPj4gVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4gd3JpdGVzOgo+PiAKPj4gPiBPbiBNb24sIEp1bCAyMiwgMjAxOSBhdCAxMDo0Mjo1
N0FNICswMzAwLCBTZXJnZXkgT3JnYW5vdiB3cm90ZToKPj4gPj4gVXdlIEtsZWluZS1Lw7ZuaWcg
PHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JpdGVzOgo+PiA+PiAKPj4gPj4gPiBP
biBGcmksIEp1bCAxOSwgMjAxOSBhdCAwNjoxMzo1MlBNICswMzAwLCBTZXJnZXkgT3JnYW5vdiB3
cm90ZToKPj4gPj4gPj4gSGVsbG8gVXdlLAo+PiA+PiA+PiAKPj4gPj4gPj4gVXdlIEtsZWluZS1L
w7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JpdGVzOgo+PiA+PiA+PiA+
IEhlbGxvIFNlcmdleSwKPj4gPj4gPj4gPgo+PiA+PiA+PiA+IE9uIEZyaSwgSnVsIDE5LCAyMDE5
IGF0IDAzOjE4OjEzUE0gKzAzMDAsIFNlcmdleSBPcmdhbm92IHdyb3RlOgo+PiA+PiA+PiA+PiBV
d2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cml0ZXM6
Cj4+ID4+ID4+ID4+ID4gT24gRnJpLCBKdWwgMTksIDIwMTkgYXQgMTE6NDc6NTJBTSArMDMwMCwg
U2VyZ2V5IE9yZ2Fub3Ygd3JvdGU6Cj4+ID4+ID4+ID4+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3R0eS9zZXJpYWwvaW14LmMgYi9kcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMKPj4gPj4gPj4gPj4g
Pj4gaW5kZXggNTdkNmU2Yi4uOTVkNzk4NCAxMDA2NDQKPj4gPj4gPj4gPj4gPj4gLS0tIGEvZHJp
dmVycy90dHkvc2VyaWFsL2lteC5jCj4+ID4+ID4+ID4+ID4+ICsrKyBiL2RyaXZlcnMvdHR5L3Nl
cmlhbC9pbXguYwo+PiA+PiA+PiA+PiA+PiBAQCAtNDA1LDcgKzQwNSw4IEBAIHN0YXRpYyB2b2lk
IGlteF91YXJ0X3J0c19pbmFjdGl2ZShzdHJ1Y3QgaW14X3BvcnQgKnNwb3J0LCB1MzIgKnVjcjIp
Cj4+ID4+ID4+ID4+ID4+ICAvKiBjYWxsZWQgd2l0aCBwb3J0LmxvY2sgdGFrZW4gYW5kIGlycXMg
Y2FsbGVyIGRlcGVuZGVudCAqLwo+PiA+PiA+PiA+PiA+PiAgc3RhdGljIHZvaWQgaW14X3VhcnRf
cnRzX2F1dG8oc3RydWN0IGlteF9wb3J0ICpzcG9ydCwgdTMyICp1Y3IyKQo+PiA+PiA+PiA+PiA+
PiAgewo+PiA+PiA+PiA+PiA+PiAtCSp1Y3IyIHw9IFVDUjJfQ1RTQzsKPj4gPj4gPj4gPj4gPj4g
KwlpZiAoKnVjcjIgJiBVQ1IyX0NUUykKPj4gPj4gPj4gPj4gPj4gKwkJKnVjcjIgfD0gVUNSMl9D
VFNDOwo+PiA+PiA+PiA+PiA+Cj4+ID4+ID4+ID4+ID4gSSB0aGluayB0aGlzIHBhdGNoIGlzIHdy
b25nIG9yIHRoZSBjb21taXQgbG9nIGlzIGluc3VmZmljaWVudC4KPj4gPj4gPj4gPj4gPiBpbXhf
dWFydF9ydHNfYXV0bygpIGhhcyBvbmx5IGEgc2luZ2xlIGNhbGxlciBhbmQgdGhlcmUgdWNyMiAm
IFVDUjJfQ1RTIGlzCj4+ID4+ID4+ID4+ID4gbmV2ZXIgdHJ1ZS4gQW5kIENUU0MgaXNuJ3QgcmVz
dG9yZWQgYW55d2hlcmUsIGlzIGl0Pwo+PiA+PiA+PiA+PiAKPj4gPj4gPj4gPj4gVGhpcyBpcyBy
ZWJhc2UgdG8gJ3R0eS1uZXh0JyBicmFuY2gsIGFuZCB5b3UgbmVlZCB0byBsb29rIGF0IGl0IGlu
IHRoYXQKPj4gPj4gPj4gPj4gY29udGV4dC4gVGhlcmUsIHVjcjIgJiBVQ1IyX0NUUyBkb2VzIGFs
cmVhZHkgbWFrZSBzZW5zZSwgZHVlIHRvIHByZXZpb3VzCj4+ID4+ID4+ID4+IGZpeCB0aGF0IGlz
IGFscmVhZHkgdGhlcmUuCj4+ID4+ID4+ID4KPj4gPj4gPj4gPiBJIGxvb2tlZCBhdCA1N2Q2ZTZi
IHdoaWNoIGlzIHRoZSBmaWxlIHlvdSBwYXRjaGVkLiBBbmQgdGhlcmUKPj4gPj4gPj4gPiBpbXhf
dWFydF9ydHNfYXV0byBpcyBvbmx5IGV2ZXIgY2FsbGVkIHdpdGggKnVjcjIgbm90IGhhdmluZyBV
Q1IyX0NUUy4KPj4gPj4gPj4gPgo+PiA+PiA+PiA+IElmIHlvdSBzdGlsbCB0aGluayBJJ20gd3Jv
bmcsIHBsZWFzZSBpbXByb3ZlIHRoZSBjb21taXQgbG9nCj4+ID4+ID4+ID4gYWNjb3JkaW5nbHku
Cj4+ID4+ID4+IAo+PiA+PiA+PiBJIHN0aWxsIHRoaW5rIHlvdSBhcmUgd3JvbmcsIGJ1dCBJIGRv
bid0IGtub3cgaG93IHRvIGltcHJvdmUgY29tbWl0IGxvZy4KPj4gPj4gPj4gCj4+ID4+ID4+IFRv
IGNoZWNrIGl0IG9uY2UgYWdhaW4sIEkganVzdCBkaWQ6Cj4+ID4+ID4+IAo+PiA+PiA+PiAkIGdp
dCBzaG93IDU3ZDZlNmIgPiBpbXguYwo+PiA+PiA+PiAKPj4gPj4gPj4gVGhlcmUsIGluIGlteF91
YXJ0X3NldF90ZXJtaW9zKCksIEkgc2VlOgo+PiA+PiA+PiAKPj4gPj4gPj4gMTU2OToJb2xkX3Vj
cjIgPSBpbXhfdWFydF9yZWFkbChzcG9ydCwgVUNSMik7Cj4+ID4+ID4+IDE1NzA6CXVjcjIgPSBv
bGRfdWNyMiAmIChVQ1IyX1RYRU4gfCBVQ1IyX1JYRU4gfCBVQ1IyX0FURU4gfCBVQ1IyX0NUUyk7
Cj4+ID4+ID4+IAo+PiA+PiA+PiBIZXJlLCBjdXJyZW50IFVDUjIgdmFsdWUgaXMgcmVhZCBpbnRv
ICdvbGRfdWNyMicgYW5kIHRoZW4gaXRzIC9jdXJyZW50Lwo+PiA+PiA+PiBVQ1IyX0NUUyBiaXQg
aXMgY29waWVkIGludG8gJ3VjcjInIChhbG9uZyB3aXRoIDMgb3RoZXIgYml0cykuCj4+ID4+ID4+
IAo+PiA+PiA+PiBUaGVuLCBsYXRlciBpbiB0aGUgc2FtZSBmdW5jdGlvbjoKPj4gPj4gPj4gCj4+
ID4+ID4+IDE1OTE6CQlpbXhfdWFydF9ydHNfYXV0byhzcG9ydCwgJnVjcjIpOwo+PiA+PiA+PiAK
Pj4gPj4gPj4gaXMgY2FsbGVkIHRoYXQgY2FuIGNoZWNrIC9jdXJyZW50LyBzdGF0ZSBvZiBVQ1Iy
X0NUUyBiaXQgaW4gJyp1Y3IyJy4KPj4gPj4gPj4gCj4+ID4+ID4+IFRoYXQncyB3aGF0IHRoZSBw
YXRjaCBkb2VzLCBjaGVja3MgdGhpcyBiaXQuCj4+ID4+ID4+IAo+PiA+PiA+PiBTb3JyeSwgSSBm
YWlsIHRvIHNlZSBob3cgeW91IGNhbWUgdG8gY29uY2x1c2lvbiB0aGF0ICIqdWNyMiBub3QgaGF2
aW5nCj4+ID4+ID4+IFVDUjJfQ1RTIi4gRG8gd2UgbWF5YmUgc3RpbGwgcmVhZCBkaWZmZXJlbnQg
dmVyc2lvbnMgb2YgdGhlIGZpbGU/Cj4+ID4+ID4KPj4gPj4gPiBObywgaXQncyBqdXN0IHRoYXQg
SSBmYWlsZWQgdG8gc2VlIHRoYXQgVUNSMl9DVFMgaXMgaW4gdGhlIHNldCBvZiBiaXRzCj4+ID4+
ID4gdGhhdCBhcmUgcmV0YWluZWQgZXZlbiB3aGVuIGxvb2tpbmcgdHdpY2UgOi18Cj4+ID4+IAo+
PiA+PiBBaCwgdGhhdCBvbmUuLi4gSG93IGZhbWlsaWFyIDotKQo+PiA+Cj4+ID4gSSB0aG91Z2h0
IGFnYWluIGEgYml0IG92ZXIgdGhlIHdlZWtlbmQgYWJvdXQgdGhpcy4gSSB3b25kZXIgaWYgaXQn
cwo+PiA+IGNvcnJlY3QgdG8ga2VlcCBSVFMgYWN0aXZlIHdoaWxlIGdvaW5nIHRocm91Z2ggLnNl
dF90ZXJtaW9zLiBTaG91bGRuJ3QKPj4gPiBpdCBtYXliZSBhbHdheXMgYmUgaW5hY3RpdmUgdG8g
cHJldmVudCB0aGUgb3RoZXIgc2lkZSBzZW5kaW5nIGRhdGEgd2hpbGUKPj4gPiB3ZSBhcmUgY2hh
bmdpbmcgdGhlIGJhdWQgcmF0ZT8KPj4gCj4+IEkgZG9uJ3QgdGhpbmsgaXQncyBhIGdvb2QgaWRl
YSB0byBjaGFuZ2UgUlRTIHN0YXRlIG92ZXIgLnNldF90ZXJpbWlvcywKPj4gYXMgaXQgZG9lc24n
dCBpbiBmYWN0IHNvbHZlIGFueXRoaW5nIChub3RpY2UgdGhhdCB0aGUgb3RoZXIgZW5kIHNob3Vs
ZAo+PiBhbHNvIGNoYW5nZSBiYXVkIHJhdGUgYWNjb3JkaW5nbHkpLCBhbmQgY2hhbmdlcyB2aXNp
YmxlIHN0YXRlIChldmVuIGlmCj4+IHRlbXBvcmFyaWx5KSB0aGF0IGl0IHdhcyBub3QgYXNrZWQg
dG8gY2hhbmdlLCB0aGF0IGNvdWxkIGluIHR1cm4gbGVhZCB0bwo+PiB1dHRlciBzdXJwcmlzZXMu
Cj4KPiBJdCBzaG91bGQgZm9yIHN1cmUgbm90IGJlIGRvbmUgaW4gaW14LXVhcnQgc3BlY2lmaWMg
Y29kZS4gQnV0IEkgdGhpbmsKPiB0aGF0IGRlYXNzZXJ0aW5nIFJUUyBiZWZvcmUgY2FsbGluZyAu
c2V0X3Rlcm1pb3MgKGlmZiBydHNjdHMgaXMgZW5hYmxlZCkKPiBpcyBhIHNhbmUgdGhpbmcgdG8g
ZG8gZm9yIGdlbmVyaWMgY29kZS4gSSBkb24ndCB3YW50IHRvIG1vdGl2YXRlIHRoZQo+IG90aGVy
IHNpZGUgdG8gc2VuZCBkYXRhIHdoaWxlIEkgcmVjb25maWd1cmUgbXkgcmVjZWl2ZXIuIFllcywg
dGhpcyBpcyBhCj4gdmlzaWJsZSBjaGFuZ2UsIGJ1dCBJTUhPIGEgZ29vZCBvbmUuCj4KPj4gQ29y
cmVjdCBjaGFuZ2luZyBvZiBiYXVkIHJhdGVzLCBiaXRzLCBldGMuLCBjb3VsZCBvbmx5IGJlIGlt
cGxlbWVudGVkIGF0Cj4+IGNvbW11bmljYXRpb24gcHJvdG9jb2wgbGV2ZWwgKHJlYWQ6IGFwcGxp
Y2F0aW9uIGxldmVsKSwgYW5kIHRoZXJlIGFyZQo+PiBhbGwgdGhlIHRvb2xzIGluIHRoZSBrZXJu
ZWwgdG8gZG8gaXQgcmlnaHQsIHByb3ZpZGVkIGRyaXZlciBkb2VzIG5vdCBkbwo+PiB3aGF0IGl0
IHdhcyBub3QgYXNrZWQgdG8gZG8uCj4KPiBIbW0sIGRlYXNzZXJ0aW5nIFJUUyB3aGlsZSBub3Qg
YmVpbmcgcmVhZHkgaGVscHMgaGVyZS4gT3RoZXJ3aXNlIHRoZQo+IGNvbW11bmljYXRpb24gcGFy
dG5lciB0aGF0IHNlbmRzIGZpcnN0IGFmdGVyIGJvdGggYWdyZWVkIHRvIGNoYW5nZSB0aGUKPiBi
YXVkIHJhdGUgbWlnaHQgc3RhcnQgZG9pbmcgdGhhdCBiZWZvcmUgdGhlIHJlY2VpdmVyIG9uIHRo
ZSBvdGhlciBlbmQgaXMKPiBkb25lLiBXaGVuIFJUUyBpcyBkZWFzc2VydGVkIHRoaXMgcmFjZSB3
aW5kb3cgaXMgYXQgbGVhc3Qgc21hbGxlci4KCkluIGdlbmVyYWwsIGl0J3MgYSB3cm9uZyBpZGVh
IHRvIGRvIGluIHRoZSBrZXJuZWwgd2hhdCBjb3VsZCBiZSBkb25lIGFzCmVmZmljaWVudGx5IGF0
IGFwcGxpY2F0aW9uIGxldmVsLgoKSW4gdGhpcyBwYXJ0aWN1bGFyIGNhc2UsIGFwcGxpY2F0aW9u
IGlzIGZyZWUgdG8gZGVhc3NlcnQgUlRTIGJlZm9yZSBpdApkZWNpZGVzIHRvIGNoYW5nZSBjb21t
dW5pY2F0aW9uIHBhcmFtZXRlcnMsIGlmIGl0IGFjdHVhbGx5IG5lZWRzIHRvLCBhbmQKdGh1cyBr
ZXJuZWwgaXMgd3JvbmcgbGV2ZWwgZm9yIGRvaW5nIHRoaXMuCgpCZXN0IFJlZ2FyZHMsCgotLSBT
ZXJnZXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
