Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D656259F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 18:06:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hp3EhLFhEAuAV1g/vvzmQDi1oiNVJhMQgA6CbBMLvbo=; b=FXkya4hf11ciHX
	+2YrqQRKtaLOQz/hd2lDvFuTUqZYUVlHNeipiO9xm62En/fl6U3kizDUGlojg83EiB2DVn0O6jaUA
	D53c+8+iReanvWE1w5YHN3vEwDC6penPLVLATl4Rvq2jK8qYuyixUqck+cRRk+JKa+U5LtBLHb0ly
	aML+cvWVnSO6jhtY8jxP3pWFN2d6/ArLSXor5yh2vRyh5TJpAt7wI1TLFpfYtgn1tTLUEijp5I0zz
	hBzP6ROu3KqZc1OJVAo9ImTP4teO3Vt8NS/vlHhzVRMDGrIUHawkqmdgu79aVBDpDlx06ZEG8XM+R
	MXhyX3o9szLv/hWBQOhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkW9N-0006Mr-Sn; Mon, 08 Jul 2019 16:05:57 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkW8s-0006C5-Ja
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 16:05:28 +0000
Received: by mail-io1-xd44.google.com with SMTP id g20so15339245ioc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 09:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=tMCiFsRLDuW6geBulr3EjyW7t17T9yVxinnBG4xjmyE=;
 b=OXbjFpWmkvpDp2y6eTwPwQeZzYHFJ41RVnrCR/bBnbn3zmrcjD44kQV6AOejyYbCET
 Xw1BD5zUF87gnasL9QHVthJWk8/FVdH2b4ELdIR34m4lfjlZPKmCl70qe5p2QRmHi8nA
 uP0SYDtYKhdyMH1ZypI3iFmOV4Bcv5ysoSlXw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=tMCiFsRLDuW6geBulr3EjyW7t17T9yVxinnBG4xjmyE=;
 b=LUNCCxMga7zoPWqarZkhb21798/4tiP8lwpkPTOgEFPpVGAYGNJy54A0eLPRwtBVel
 VRCSYJjSsWt38Xnt+mLdwxttsXns4A0TUuYQdgwLC8UiJSStNka/b3n3jsEPoDl75brg
 zx9SD8Zhzaw/LlY+7RUyEyKuHPCqcww7xPVdhv+NmbG+zwI3JkDhWOI8BY3zTg0EiQHo
 5SERKGmVPJF44+xcthz4JeIVR46T6BFIxN9nQ0zuWHZ1PKhhCg+KMHFAmR4fykamkNrm
 Ju7TIWmyPuT+uxIHS6cOHiVeyc4/mz2F5VUzC8y1L/awXXhmRFu4rU+1XdQhlC7rRU3l
 VV9g==
X-Gm-Message-State: APjAAAUAN+41lSkCHrFr86qPVkygcGy+v5QTY/zFr2pPV46DG8JmjNLt
 leFbZ/8SWQd+0kE7CLrvsBRTj1TAYxg=
X-Google-Smtp-Source: APXvYqwAJMHOeVag8IEwo6X698fySiEa/QwZt5oDGWXYniggPxFFXGH2H4dSLusZ1GDZlmGEa+plTw==
X-Received: by 2002:a05:6602:1d2:: with SMTP id
 w18mr20162697iot.157.1562601925286; 
 Mon, 08 Jul 2019 09:05:25 -0700 (PDT)
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com.
 [209.85.166.44])
 by smtp.gmail.com with ESMTPSA id t14sm16474945ioi.60.2019.07.08.09.05.25
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jul 2019 09:05:25 -0700 (PDT)
Received: by mail-io1-f44.google.com with SMTP id j6so36469819ioa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 09:05:25 -0700 (PDT)
X-Received: by 2002:a5e:8f08:: with SMTP id c8mr20045788iok.52.1562601529525; 
 Mon, 08 Jul 2019 08:58:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190401171724.215780-1-dianders@chromium.org>
 <CAD=FV=Vi2C7s2oWBDD0n+HK=_SuBYhRM9saMK-y6Qa0+k-g17w@mail.gmail.com>
 <20190628171342.GA2238@ravnborg.org> <2169143.hEFa8b2HQR@diego>
In-Reply-To: <2169143.hEFa8b2HQR@diego>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 8 Jul 2019 08:58:41 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U3Wj8vaZcQLmkfX6zgjVFEra+GrHMH3OCs5QQ_-tM4hw@mail.gmail.com>
Message-ID: <CAD=FV=U3Wj8vaZcQLmkfX6zgjVFEra+GrHMH3OCs5QQ_-tM4hw@mail.gmail.com>
Subject: Re: [PATCH v5 0/7] drm/panel: simple: Add mode support to devicetree
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_090526_729452_45F8BA6C 
X-CRM114-Status: GOOD (  21.55  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>, David Airlie <airlied@linux.ie>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Thierry Reding <thierry.reding@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 =?UTF-8?Q?Enric_Balletb=C3=B2?= <enric.balletbo@collabora.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Sam Ravnborg <sam@ravnborg.org>, Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2FtLAoKT24gU2F0LCBKdW4gMjksIDIwMTkgYXQgNzowOSBBTSBIZWlrbyBTdMO8Ym5lciA8
aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPgo+IEhpIFNhbSwKPgo+IEFtIEZyZWl0YWcsIDI4LiBK
dW5pIDIwMTksIDE5OjEzOjQyIENFU1Qgc2NocmllYiBTYW0gUmF2bmJvcmc6Cj4gPiBIaSBEb3Vn
Lgo+ID4KPiA+ID4gU2FtOiBPaCEgIEkgaGFkbid0IG5vdGljZWQgdGhhdCB5b3UndmUgYmVlbiBh
ZGRlZCBhcyBhIHBhbmVsCj4gPiA+IG1haW50YWluZXIgaW4gY29tbWl0IGVmMGRiOTRmOTRhMCAo
Ik1BSU5UQUlORVJTOiBBZGQgU2FtIGFzIHJldmlld2VyCj4gPiA+IGZvciBkcm0vcGFuZWwiKS4g
IERvZXMgdGhhdCBtZWFuIHlvdSBhcmUgYWJsZSB0byBwcm92aWRlIHNvbWUgYWR2aWNlCj4gPiA+
IGZvciBob3cgdG8gbGFuZCB0aGlzIHNlcmllcz8KPiA+IFJldmlld2VyIG9ubHksIG5vdCBtYWlu
dGFpbmVyLi4uLgo+ID4KPiA+IEl0IGlzIG9uIG15IFRPRE8gbGlzdCBmb3IgdGhlIHdlZWtlbmQg
dG8gZ28gdGhyb3VnaCB0aGUgcGF0Y2ggc2V0IGluCj4gPiBkZXRhaWxzIGFuZCBwcm92aWRlIGZl
ZWRiYWNrLiBJIGhhdmUgcmVhZCB0aGVtIGJlZm9yZSwgYnV0IEkgbWlzcyB0byBkbwo+ID4gYSBt
b3JlIGRldGFpbGVkIHJlYWQgdGhyb3VnaC4KPiA+Cj4gPiBCdXQgSSBjYW5ub3QgYXBwbHkgdGhp
cyB1bmxlc3MgVGhpZXJyeSBvciBvbmUgb2YgdGhlIERSTSBtYWludGFpbmVycwo+ID4gYWNrIGl0
Lgo+ID4gV2Ugc2ltcGx5IG5lZWQgc29tZW9uZSB3aXRoIGEgYmV0dGVyIGdlbmVyYWwga25vd2xl
ZGdlIG9mIERSTSB0byBhY2sgaXQKPiA+IHRoYW4gSSBoYXZlLgo+Cj4gU28gVGhpZXJyeSB3YXMg
YWJsZSB0byBsb29rIGF0IHRoZSBwYXRjaGVzIHllc3RlcmRheSBpdCBzZWVtcyBhbmQgaGFzIEFj
a2VkCj4gYWxsIHRoZSByZWxldmFudCBvbmVzLiBBcyBhIGRybS1taXNjLWNvbnRyaWJ1dG9yIEkg
Y291bGQgYWxzbyBhcHBseSB0aGVtCj4gbXlzZWxmLCBidXQgbm93IGRvbid0IHdhbnQgdG8gcHJl
ZW1wdCBhbnkgYWRkaXRpb25hbCBjb21tZW50cyB5b3UgbWlnaHQKPiBoYXZlIDstKSAuIFNvIEkg
Z3Vlc3MgbXkgcXVlc3Rpb24gd291bGQgYmUgaWYgeW91IHN0aWxsIHdhbnQgdG8gZG8gYSByZXZp
ZXcKPiBvciBpZiBJIHNob3VsZCBhcHBseSB0aGVtLgoKSG9wZWZ1bGx5IHlvdSBzYXcsIGJ1dCBJ
IHJlc3BvbmRlZCB0byBhbGwgb2YgeW91ciByZXZpZXcgZmVlZGJhY2suICBJbgp0aGUgZW5kLCBJ
IHRob3VnaHQgaXQnZCBiZSBPSyB0byBsYW5kIHRoZSBzZXJpZXMgYXMtaXMgYW5kIEkgY2FuIGZp
eAp1cCBuaXRzIGluIGEgZm9sbG93LXVwIHNlcmllcywgdGhvdWdoIEknbSB3YWl0aW5nIGZvciB5
b3VyIHJlc3BvbnNlcwp0byBhIGNvdXBsZSBxdWVzdGlvbnMgZmlyc3QuCgpJdCB3b3VsZCBiZSBp
ZGVhbCBpZiB5b3UgY291bGQgY29uZmlybSB0aGF0IHlvdSdyZSBPSyB3aXRoIHRoaXMgcGxhbgpl
dmVuIGlmIHlvdSBkb24ndCBoYXZlIHRpbWUgdG8gcmVzcG9uZCBpbiBkZXRhaWwgdG8gbXkgZW1h
aWxzIHlldC4gIEkKdGhpbmsgSGVpa28gY2FuIGxhbmQgdGhlbSBhbGwgdGhyb3VnaCB0aGUgYXBw
cm9wcmlhdGUgY2hhbm5lbHMgc2luY2UKdGhlIHBhdGNoZXMgaGF2ZSBhbGwgdGhlIHByb3BlciBB
Y2tzLgoKVGhhbmtzIQoKLURvdWcKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
