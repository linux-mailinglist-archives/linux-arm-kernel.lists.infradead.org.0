Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8ABB24454
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 01:26:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=smyQTHznEwLv+ccRMw7PRmzlXUeZCUaND//Tjkn4xfo=; b=ZhTtxcHcZ+kNY1
	n07CgogH+8WgDki4SRe4kgbiaOVIEWbHhgTEAFIRzV9Zqm1OQmf327FDmFxRgdCdUGdV8XghF2sgh
	kD40DZJhsD4Ff9lzVFPgbpz4/UuFGaC1QgKiYrUsAgmMp07PwBivF9T/o1AXTcgjK9AV3P1hvwnly
	w+e3mQm/UoZDksr0onQJIGHye18cSl06d7FTQdWPKX4MmiBYZrF007VNjPIQFhQ5FRn1jLk9XkX5l
	+DXJpI+Oo5ts79FPtpDr9Fpn7b+6Sx0osv/Cm41stO5f6WgPiU2mmOxNL6gSRRBzJfsjt8Y5KjiYV
	qLidahNGalGPgwKfJHCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSrfs-0003K4-TZ; Mon, 20 May 2019 23:26:32 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSrfl-0003JO-Mk
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 23:26:27 +0000
Received: by mail-ua1-x943.google.com with SMTP id l14so1192126uah.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 16:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=v15ImxXPR82zUC1L9RntmNVljNfZ+KHeuqCJcdfthSU=;
 b=XldTkhejOHyY3VTVRV+hQCD0Mji5ZKkA81D54mqtww+D8rxW79ml/7uspfRba3bqbT
 O+/vJy6pNTe+sH5I3xUvVEIqt8GLD7yg6qfiixUrO0gR+1BEv+40KGwQEAOi6aaqEp6k
 fxsJozVSlGGmyVy+f4DJYp0UhgWTsBh/IBwG4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=v15ImxXPR82zUC1L9RntmNVljNfZ+KHeuqCJcdfthSU=;
 b=JUrwXi4XXbq8SK/TAgX+o6JrBEEzfWyUlGc6VJ0pArFJVHO5Vvysx29ZZx+c+1RDb9
 jQ+8QKsAPbIYe+mMmnS1VUTJ0sqdOlV6gUZm4OuyFQOM7ku9mRvJcAOvfm9/DqQsFR9L
 Mmg0rRSkIL737Coo09JoCdjM1LfefLClDA1XE923xGWuVIFmyFGEGkyQSYdlz60bZjLS
 UcekSLX4EsCJvaF4uzczNa9mYWGcqPB0Sa0WqVxxjejFFWvwHX4JCc9pneLhkD7V7CqJ
 LAEd8wN2xIV4CBHIcVxea48DHkimUlyrD+vcIPEDODh6j3kWdLhl2z6n5xEwvKx2wmCY
 ND0A==
X-Gm-Message-State: APjAAAXzcK/+VtBBdAX/lu1FkH6JFqR7T7gP+ic4nz2rJFBqJWUzSvQg
 sawXuM4g6wiHe3acGnxteXyJrDID4Hc=
X-Google-Smtp-Source: APXvYqw8IwZPEuJv6xbi2Pr8aPfqzrXTcE5CMS9p1A0LaYFloaxSadtnWwlSRLJPfdqKN1y0cBGXlQ==
X-Received: by 2002:ab0:c11:: with SMTP id a17mr9887110uak.3.1558394784449;
 Mon, 20 May 2019 16:26:24 -0700 (PDT)
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com.
 [209.85.222.52])
 by smtp.gmail.com with ESMTPSA id t189sm9267500vke.31.2019.05.20.16.26.23
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 16:26:23 -0700 (PDT)
Received: by mail-ua1-f52.google.com with SMTP id n7so5926005uap.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 16:26:23 -0700 (PDT)
X-Received: by 2002:ab0:4a97:: with SMTP id s23mr1167110uae.19.1558394783438; 
 Mon, 20 May 2019 16:26:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190520220051.54847-1-mka@chromium.org>
 <20190520220051.54847-2-mka@chromium.org>
In-Reply-To: <20190520220051.54847-2-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 20 May 2019 16:26:10 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UfVwGbraO91Rq2vKA5-H1uZhMPeoE4h+qWH39f0DqnXA@mail.gmail.com>
Message-ID: <CAD=FV=UfVwGbraO91Rq2vKA5-H1uZhMPeoE4h+qWH39f0DqnXA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] ARM: dts: rockchip: Use the GPU to cool CPU
 thermal zone of veyron mickey
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_162625_765284_DF7A5DA2 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
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

SGksCgpPbiBNb24sIE1heSAyMCwgMjAxOSBhdCAzOjAxIFBNIE1hdHRoaWFzIEthZWhsY2tlIDxt
a2FAY2hyb21pdW0ub3JnPiB3cm90ZToKPgo+IE9uIHJrMzI4OCB0aGUgQ1BVIGFuZCBHUFUgdGVt
cGVyYXR1cmVzIGFyZSBjb3JyZWxhdGVkLiBMaW1pdCB0aGUgR1BVCj4gZnJlcXVlbmN5IG9uIHZl
eXJvbiBtaWNrZXkgdG8gNDAwIE1IeiBmb3IgQ1BVIHRlbXBlcmF0dXJlcyA+PSA2NcKwQwo+IGFu
ZCB0byAzMDAgTUh6IGZvciBDUFUgdGVtcGVyYXR1cmVzID49IDg1wrBDLgo+Cj4gVGhpcyBtYXRj
aGVzIHRoZSBjb25maWd1cmF0aW9uIG9mIHRoZSBkb3duc3RyZWFtIENocm9tZSBPUyAzLjE0IGtl
cm5lbCwKPiB0aGUgJ29mZmljaWFsJyBrZXJuZWwgZm9yIG1pY2tleS4KPgo+IFNpZ25lZC1vZmYt
Ynk6IE1hdHRoaWFzIEthZWhsY2tlIDxta2FAY2hyb21pdW0ub3JnPgo+IC0tLQo+IENoYW5nZXMg
aW4gdjI6Cj4gLSBhZGRlZCAnY3B1X3dhcm1fbGltaXRfZ3B1JyB0byB0aHJvdHRsZSBHUFUgZm9y
IFQuY3B1ID49IDY1wrBDCj4gLSByZW1vdmVkIGNvbW1lbnQgc2F5aW5nIHRoYXQgR1BVIGlzbid0
IHRocm90dGxlZCBiZXlvbmQgNDAwIE1Iego+ICAgYmFzZWQgb24gQ1BVIHRlbXBlcmF0dXJlCj4g
LSB1cGRhdGVkIGNvbW1pdCBtZXNzYWdlCj4KPiBOb3RlOiB0aGlzIHBhdGNoIGRlcGVuZHMgb24g
IkFSTTogZHRzOiByb2NrY2hpcDogQWRkICNjb29saW5nLWNlbGxzCj4gZW50cnkgZm9yIHJrMzI4
OCBHUFUiIChodHRwczovL2xvcmUua2VybmVsLm9yZy9wYXRjaHdvcmsvcGF0Y2gvMTA3NTAwNS8p
Cj4gLS0tCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24tbWlja2V5LmR0cyB8IDE0
ICsrKysrKysrKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAzIGRl
bGV0aW9ucygtKQoKUmV2aWV3ZWQtYnk6IERvdWdsYXMgQW5kZXJzb24gPGRpYW5kZXJzQGNocm9t
aXVtLm9yZz4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
