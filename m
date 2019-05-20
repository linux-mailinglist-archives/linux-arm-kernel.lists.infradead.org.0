Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCA72420C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 22:21:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5xZ0/KbMrqB94vq/8sENjmUyfvRoWPRJYWJtwiyKjKw=; b=qSMbDiP4RGrQ7f
	T/R1y/LSQ4Phy6WGkW/lruSwOzxFThpOFY8UuMWBv4Tmy+tEIdd7I6vPt6iP40rj0aIv9SqhhCKYH
	Mtlnzt1CsEnV0H+QyjIpKQxU7N0i/qSs4gqMebZU9onAOLlv+yrb1supw7yRrthFloX/Ab4B9d81o
	68kjwPD4VCJzNAbQ680XHuXRty7tdDUJDe8MsGZj0kBk1nNtGiTLtBmEKFiJUg+QV3CcwGbqRUSeh
	DcXVjCG4DyAPCaUUE3KyL28aj/lE/6IfOxqX3Y+lKf0D4zu3wzcJFW2UK63pjFn5E3Z7VF2FpS+Bg
	7ymqbHzOQOfTWS++ODnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSonF-0001n1-50; Mon, 20 May 2019 20:21:57 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSon6-0001lJ-Ai
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 20:21:49 +0000
Received: by mail-vs1-xe43.google.com with SMTP id k187so2778223vsk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 13:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+cwBfmNJOYYnLoNWnVRRnVYNxdiZh0AA2x8O10NbLoM=;
 b=UUk3ytbRvoMJoCb1BDVV+bhMWyNCfP4VAtjMhf1lzGoGdYLBnk+w1DzR1J257pctAl
 Z1sIhOH/IrWFoh7qnyLcIMvuCkh8fkDTGFrKquN9TP9ipVXj2ksMpQf/2h+xNxqCH3K2
 oiIVhVB2Wc5K/vc4KJ88h0vfB7fgjFsM3M9kY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+cwBfmNJOYYnLoNWnVRRnVYNxdiZh0AA2x8O10NbLoM=;
 b=NQ7F04/HlYOKc+9BxBW6LKc1CO+vpwIbRC2uHZVGopqC4/0eHwvzzvfYFi5Ms72vwV
 2oJ0oNRxpw/iYaE+Hc6jGP4/RYUSLoi/YIBBx2Q/zgWyEt3I8MQd56tVSwIb9viTGFhx
 bvwAu5SunasEjZtN/t6nsidiubkfF5pUCF6QhSNVRsDeEM6j6LQpk5fe5PApzlEu7NfK
 jfG6EkDKQqbhVjfWBKZqEikyEUlV8c1pe1UHzyoboj5FAcnRL3jnY0/6iuXh6xMiURCR
 9ZBd2uOyDhiyNqYlewOKdtAvdrhWJwTdbZMnK/QXfB3flqLkTd39exYRuPiRfKIht0ju
 iOdg==
X-Gm-Message-State: APjAAAWpV7xMSGNrsgt2M49K1rsV3adMjv8LhhbFUJR0EszBbO6SJpP5
 PkVBHdePYfY9nyBEst/3mXo7nSEXa1w=
X-Google-Smtp-Source: APXvYqwlJJqenzNHcC61xq4oVIheNHULzBBY5kYatEnsWTgOk8Gppkqv7HrCwL6F44chayGAUN5a6Q==
X-Received: by 2002:a67:b30b:: with SMTP id a11mr31704286vsm.86.1558383707042; 
 Mon, 20 May 2019 13:21:47 -0700 (PDT)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com.
 [209.85.217.42])
 by smtp.gmail.com with ESMTPSA id d5sm6928385vka.34.2019.05.20.13.21.45
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 13:21:45 -0700 (PDT)
Received: by mail-vs1-f42.google.com with SMTP id k187so2778165vsk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 13:21:45 -0700 (PDT)
X-Received: by 2002:a67:dd8e:: with SMTP id i14mr31790963vsk.149.1558383705071; 
 Mon, 20 May 2019 13:21:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190520170132.91571-1-mka@chromium.org>
 <20190520170132.91571-2-mka@chromium.org>
In-Reply-To: <20190520170132.91571-2-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 20 May 2019 13:21:33 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vr2thgHYTH_khqka27_SdGcSEShpSRp+u2E=O5eyxLMQ@mail.gmail.com>
Message-ID: <CAD=FV=Vr2thgHYTH_khqka27_SdGcSEShpSRp+u2E=O5eyxLMQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Configure the GPU thermal zone
 for mickey
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_132148_364331_7FC95791 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBNb24sIE1heSAyMCwgMjAxOSBhdCAxMDowMSBBTSBNYXR0aGlhcyBLYWVobGNrZSA8
bWthQGNocm9taXVtLm9yZz4gd3JvdGU6Cj4KPiBtaWNrZXkgY3JhbXMgYSBsb3Qgb2YgaGFyZHdh
cmUgaW50byBhIHRpbnkgcGFja2FnZSwgd2hpY2ggcmVxdWlyZXMKPiBtb3JlIGFnZ3Jlc3NpdmUg
dGhlcm1hbCB0aHJvdHRsaW5nIHRoYW4gZm9yIGRldmljZXMgd2l0aCBhIGxhcmdlcgo+IGZvb3Rw
cmludC4gQ29uZmlndXJlIHRoZSBHUFUgdGhlcm1hbCB6b25lIHRvIHRocm90dGxlIHRoZSBHUFUK
PiBwcm9ncmVzc2l2ZWx5IGF0IHRlbXBlcmF0dXJlcyA+PSA2MMKwQy4gSGVhdCBkaXNzaXBhdGVk
IGJ5IHRoZQo+IENQVXMgYWxzbyBhZmZlY3RzIHRoZSBHUFUgdGVtcGVyYXR1cmUsIGhlbmNlIHdl
IGNhcCB0aGUgQ1BVCj4gZnJlcXVlbmN5IHRvIDEuNCBHSHogZm9yIHRlbXBlcmF0dXJlcyBhYm92
ZSA2NcKwQy4gRnVydGhlciB0aHJvdHRsaW5nCj4gb2YgdGhlIENQVXMgbWF5IGJlIHBlcmZvcm1l
ZCBieSB0aGUgQ1BVIHRoZXJtYWwgem9uZS4KPgo+IFRoZSBjb25maWd1cmF0aW9uIG1hdGNoZXMg
dGhhdCBvZiB0aGUgZG93bnN0cmFtIENocm9tZSBPUyAzLjE0CgpzL2Rvd25zdHJhbS9kb3duc3Ry
ZWFtCgoKPiArICAgICAgIGNvb2xpbmctbWFwcyB7Cj4gKyAgICAgICAgICAgICAgIC8qIEFmdGVy
IDFzdCBsZXZlbCB0aHJvdHRsZSB0aGUgR1BVIGRvd24gdG8gYXMgbG93IGFzIDQwMCBNSHogKi8K
PiArICAgICAgICAgICAgICAgZ3B1X3dhcm1pc2hfbGltaXRfZ3B1IHsKPiArICAgICAgICAgICAg
ICAgICAgICAgICB0cmlwID0gPCZncHVfYWxlcnRfd2FybWlzaD47Cj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgY29vbGluZy1kZXZpY2UgPSA8JmdwdSBUSEVSTUFMX05PX0xJTUlUIDE+OwoKQXMg
cGVyIG15IGNvbW1lbnQgaW4gcGF0Y2ggIzEsIHlvdSBhcmUgcHJvYmFibHkgZW5kaW5nIHVwIHRo
cm90dGxpbmcKdG8gNTAwIE1Ieiwgbm90IDQwMCBNSHouICBCZWxvdyB3aWxsIGFsbCBoYXZlIHNp
bWlsYXIgcHJvYmxlbXMgdW5sZXNzCndlIGFjdHVhbGx5IGRlbGV0ZSB0aGUgNTAwIE1IeiBvcGVy
YXRpbmcgcG9pbnQuCgoKPiArICAgICAgICAgICAgICAgfTsKPiArCj4gKyAgICAgICAgICAgICAg
IC8qCj4gKyAgICAgICAgICAgICAgICAqIFNsaWdodGx5IGFmdGVyIHdlIHRocm90dGxlIHRoZSBH
UFUsIHdlJ2xsIGFsc28gbWFrZSBzdXJlIHRoYXQKPiArICAgICAgICAgICAgICAgICogdGhlIENQ
VSBjYW4ndCBnbyBmYXN0ZXIgdGhhbiAxLjQgR0h6LiAgTm90ZSB0aGF0IHdlIHdvbid0Cj4gKyAg
ICAgICAgICAgICAgICAqIHRocm90dGxlIHRoZSBDUFUgbG93ZXIgdGhhbiAxLjQgR0h6IGR1ZSB0
byBHUFUgaGVhdC0td2UnbGwKPiArICAgICAgICAgICAgICAgICogbGV0IHRoZSBDUFUgZG8gdGhl
IHJlc3QgaXRzZWxmLgo+ICsgICAgICAgICAgICAgICAgKi8KPiArICAgICAgICAgICAgICAgZ3B1
X3dhcm1fbGltaXRfY3B1IHsKPiArICAgICAgICAgICAgICAgICAgICAgICB0cmlwID0gPCZncHVf
YWxlcnRfd2FybT47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgY29vbGluZy1kZXZpY2UgPSA8
JmNwdTAgNCA0PjsKClNob3VsZG4ndCB5b3UgbGlzdCBjcHUxLCBjcHUyLCBhbmQgY3B1MyB0b28/
ICBUaGF0J2QgbWF0Y2ggd2hhdAp1cHN0cmVhbSBkaWQgZWxzZXdoZXJlIGluIHRoaXMgZmlsZT8K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
