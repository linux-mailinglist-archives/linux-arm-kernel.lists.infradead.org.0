Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1932E117BEE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 00:56:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h3GXWufNPc1vEF2EhRSrXIXYDUuZ/Ar7hdMzQAfqNdg=; b=qwhdait+hmjP1+
	U9xBdKvewajs8mvVbOs+gnYaTfbNk0ZAGIi03xnqd9h8FRuX1BuY445+5Ats18ZZvzJz/ZrVXIvlV
	4R/4wbxZedhWOE1XjFfnPhjQqazlq0AE5LsL6MNq2OlDU95oZbXy/vzRwuZ9PFhd9LCpEr6qho3A7
	gov+mKvf2sNQXt76mxDcRtBPwA/p10nZjPlEksVeROiMlT31tO8C+SysnNuQYjZZ4xvF+9L/Me9uA
	/5D3cHf4MNkQxw+cMr1ola288HvruWR+lG132O2dLqQOe2Lo3r7S6PLUPgcASxlt7Mx96yrfDiqpA
	lL0yZBA0B6dVAYqTxlZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieStL-0006gn-T9; Mon, 09 Dec 2019 23:56:39 +0000
Received: from mail-io1-xd2b.google.com ([2607:f8b0:4864:20::d2b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieStC-0006fC-PR
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 23:56:32 +0000
Received: by mail-io1-xd2b.google.com with SMTP id s2so16800535iog.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 15:56:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=5xRbxJUmG9u2zPKNV0wb+TxQmojaTwS4/EUMaO1UzD8=;
 b=LuuGud3C8MCUTplOzoRNjf6hnez96tj0dG4LkB1JiT+45E0dlfoc/Fa7iF+PjC4Uy5
 NmAE2JgXiJun6pokQ6AwQ90fW2d3nZM7T3W3cyj5PdRI4AlFeum1nUfoCtSElJ4re5sg
 1bv6ZUnssIZzuSRcUlTm1qjm1CfjHNoiTz0ZE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5xRbxJUmG9u2zPKNV0wb+TxQmojaTwS4/EUMaO1UzD8=;
 b=g6L8nqt+cESUJgVYSXYzBOSFSKuW8EyCzui1zcfxGxnGQUX2YKK4X4RRwWpSZF+t3w
 xEFi6wi3NH+kfJuIeAhpVlWT+GqqVsxGVAC6KHZwP+pmkeCEKRtt7KztrUZ5VGrTQ4c4
 H+zesdZ8psE6pRQwbsYjPXqt50bkp3cAqXWjliWZ6X/GJd2SX/zrGPoDyq1sNlxPhyWX
 gxyw1ByurtbbwZkNjQYJOdKbqR5UW36LnOyR/u1NIbf+qFc8l2MKDGHOEjg3ylPQ1GzI
 /in5YUhT5JXSxl/Ee4SBRQ19+WAAySVxPrZbfH0L2hmaXDbuGSml23BkGOY55mTWhPS4
 Iiew==
X-Gm-Message-State: APjAAAUKDyhNZfvw9POeY74c28vlgL70R2Z17WRIdwft4zNwhmsJEpkT
 yU9jzLXXO4xoLlzw8ocb+Evd7+MNDr8=
X-Google-Smtp-Source: APXvYqxP1ninE1958FpHXU5k1j2PEX/W3IPUSy7K81uHenNzFKQWpufFZCH01jjZeFXuoOPdvTywfw==
X-Received: by 2002:a6b:7618:: with SMTP id g24mr23502687iom.31.1575935787956; 
 Mon, 09 Dec 2019 15:56:27 -0800 (PST)
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com.
 [209.85.166.173])
 by smtp.gmail.com with ESMTPSA id c10sm253930iod.32.2019.12.09.15.56.26
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Dec 2019 15:56:27 -0800 (PST)
Received: by mail-il1-f173.google.com with SMTP id t17so14406129ilm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 15:56:26 -0800 (PST)
X-Received: by 2002:a92:1547:: with SMTP id v68mr29151553ilk.58.1575935786525; 
 Mon, 09 Dec 2019 15:56:26 -0800 (PST)
MIME-Version: 1.0
References: <20191127223909.253873-1-abhishekpandit@chromium.org>
 <20191127223909.253873-2-abhishekpandit@chromium.org>
 <61639BAF-5AA0-4264-906F-E24E2A30088D@holtmann.org>
 <1788857.Va9C3Z3akr@diego>
In-Reply-To: <1788857.Va9C3Z3akr@diego>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 9 Dec 2019 15:56:14 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Xdrw1FC=DktQ8HjdEJcCKvdA3sx78gg-rn8=bBq=WrEw@mail.gmail.com>
Message-ID: <CAD=FV=Xdrw1FC=DktQ8HjdEJcCKvdA3sx78gg-rn8=bBq=WrEw@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] ARM: dts: rockchip: Add brcm bluetooth for
 rk3288-veyron
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_155630_828066_B23E8675 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 devicetree <devicetree@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Marcel Holtmann <marcel@holtmann.org>, LKML <linux-kernel@vger.kernel.org>,
 BlueZ <linux-bluetooth@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBTdW4sIERlYyA4LCAyMDE5IGF0IDQ6MDMgUE0gSGVpa28gU3TDvGJuZXIgPGhlaWtv
QHNudGVjaC5kZT4gd3JvdGU6Cj4KPiBBbSBNb250YWcsIDkuIERlemVtYmVyIDIwMTksIDAwOjQ4
OjMxIENFVCBzY2hyaWViIE1hcmNlbCBIb2x0bWFubjoKPiA+ID4gVGhpcyBlbmFibGVzIHRoZSBC
cm9hZGNvbSB1YXJ0IGJsdWV0b290aCBkcml2ZXIgb24gdWFydDAgYW5kIGdpdmVzIGl0Cj4gPiA+
IG93bmVyc2hpcCBvZiBpdHMgZ3Bpb3MuIEluIG9yZGVyIHRvIHVzZSB0aGlzLCB5b3UgbXVzdCBl
bmFibGUgdGhlCj4gPiA+IGZvbGxvd2luZyBrY29uZmlnIG9wdGlvbnM6Cj4gPiA+IC0gQ09ORklH
X0JUX0hDSVVBUlRfQkNNCj4gPiA+IC0gQ09ORklHX1NFUklBTF9ERVYKPiA+ID4KPiA+ID4gVGhp
cyBpcyBhcHBsaWNhYmxlIHRvIHJrMzI4OC12ZXlyb24gc2VyaWVzIGJvYXJkcyB0aGF0IHVzZSB0
aGUgYmNtNDM1NDAKPiA+ID4gd2lmaStidCBjaGlwcy4KPiA+ID4KPiA+ID4gQXMgcGFydCBvZiB0
aGlzIGNoYW5nZSwgYWxzbyByZWZhY3RvciB0aGUgcGluY3RybCBhY3Jvc3MgdGhlIHZhcmlvdXMK
PiA+ID4gYm9hcmRzLiBBbGwgdGhlIGJvYXJkcyB1c2luZyBicm9hZGNvbSBibHVldG9vdGggc2hv
dWxkbid0IHRvdWNoIHRoZQo+ID4gPiBidF9kZXZfd2FrZSBwaW4uCj4gPgo+ID4gc28gaGF2ZSB0
aGVzZSBjaGFuZ2VzIGJlaW5nIG1lcmdlZD8KPgo+IG5vdCB5ZXQKPgo+IERvdWcgd2FudGVkIHRv
IGdpdmUgYSBSZXZpZXdlZC1ieSwgb25jZSB0aGUgdW5kZXJseWluZyBibHVldG9vdGgKPiBjaGFu
Z2VzIGdvdCBtZXJnZWQgLSBub3Qgc3VyZSB3aGF0IHRoZSBzdGF0dXMgaXMgdGhvdWdoLgoKSSBo
YXZlIGJlZW4gb3V0IGZvciB0aGUgbGFzdCB3ZWVrIGFuZCBhbSBhIGJpdCBiYWNrbG9nZ2VkLgoK
SSBub3RpY2UgdGhhdCB0aGlzIGxhbmRlZCBpbiBvdXIgNC4xOSBrZXJuZWwgd2l0aCArTWF0dGhp
YXMncwpSZXZpZXdlZC1ieSBhdCA8aHR0cHM6Ly9jcnJldi5jb20vYy8xNzcyMjYxPi4gIEkgZG9u
J3QgZmVlbCBhbnkgbmVlZAp0byByZS1yZXZpZXcgdGhpcyBteXNlbGYgaWYgTWF0dGhpYXMgaGFz
IHRha2VuIGEgZmluYWwgbG9vayBvbiBpdCwgc28KdW5sZXNzIGhlIGtub3dzIGEgcmVhc29uIHdo
eSBpdCBzaG91bGRuJ3QgbGFuZCB0aGVuIEknZCBzYXkgZ28gYWhlYWQKYW5kIGxhbmQgaXQuCgot
RG91ZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
