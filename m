Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5281D0300
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 01:25:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ubaGIM+Yqt+jvTxeZJCNZ/77MRYR/t78O6Kw/KzUfjU=; b=fzs+xeRx98E+jY
	IF+zk7IhJ11FT6qjzt5tjsKTHVaYS13ccQA8ISPwZLniEPyUMO5mpnrJoGq6I1K12M5uf3iO1MasR
	Gz39CP7bPFfqBR2h+4gh/QO+o7N9bTO+Zzkos0WnrSVMdaPnYLNUTJrwz0XWxvFNA8/BaAUm4rPIh
	1b+OLjZIxEFOLnYD+1r8N1aQnzdCoaCo8ChPGi9F2jJofpA0RYEDPUZeN1hhXtYjtBGf2tlHiuiuj
	dz0XYNYYlRZQrg08595l71KUtztBmpcAORAFXuDGeTCetgSEpBk3lU11a/PYU++apR1qX22K3uicP
	/fD/mHYrIKUc3BJyLwIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYeH1-0002sZ-Aq; Tue, 12 May 2020 23:25:19 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYeGr-0002BX-FJ
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 23:25:11 +0000
Received: by mail-pf1-x443.google.com with SMTP id y18so335047pfl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 16:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=FpcFfkc/yG9vq9eXWklG8CGjwtKug3YGgFN39WyeyGc=;
 b=pWipj/rYO4TE/WgccVGCKMhCO9dOQMqbFgFILxy9bPyfdAGU1AtXDDAPLFE5d8BWYI
 y8h0guWLroeHHFvshFPgfDBEmOBlBrNj/JhqWtissEv8GDGrkVAGwfcj/J+til5ld39Q
 thnBvYCXu26hayF9UigwA4E9gGpRbfhzbNfY/sY6qG4jAQD+dccELCfuxT/jEOuK3mGm
 elBCMpGuoEH9Rv6OALCkus/pHOOWd8KbSHckTf5EJDK0m38v+T6292Y/4FG6gZAmN3QS
 UamcfP8ImTECWAyv7V7C5ACDg9cHr4B4WH7xilGOx3JOD2eacTv87TnouwuuY5P6NUZ8
 sDtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=FpcFfkc/yG9vq9eXWklG8CGjwtKug3YGgFN39WyeyGc=;
 b=fVbPCML3YtnQjR8OYBHgW16Cgs+gyYYbsDDy4yRIWK8JrR4gxim8IJkVF/VVgbYyG2
 M5TmQwLPyu2c0Za4LSFjhs1H4+Cke5sbLbKTF+TIjiRDw7cHRSaWrCZTt7xIsxP/eOCy
 namyYOeydCviMyaoE8jcwLeNVVUNeFX76GySNCLx0BA9hthRfk8cru5S1ANpQhZop6m+
 atA5rJplIr+nEFk5G1gAJWi/s8yCuONLPS+ltP8Wf/iUZNueL0qRf5KCDKwdLtzl0iOj
 0shvbyYjPnb6vdV8VpORSm5i4QqIRrGTGxcGho2hJ4ag6V5ZMTD4shxglnLii6yok638
 fZdQ==
X-Gm-Message-State: AOAM533OYwXm6ZFXqOROmYdI8sr25ofIhI5Y/m+uT7coY+x8avuaVYGU
 Mkqk+TU9+BSIn96Oenmu45k=
X-Google-Smtp-Source: ABdhPJzLZlncWatTS+oNiA4vxd3oVeXcykQQb3eNLFClvMbGM8HbwrjGaxKq48Gne8Qhoh171ik1lA==
X-Received: by 2002:a63:77c6:: with SMTP id
 s189mr12368295pgc.267.1589325908104; 
 Tue, 12 May 2020 16:25:08 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3c2a:73a9:c2cf:7f45])
 by smtp.gmail.com with ESMTPSA id m4sm94819pje.47.2020.05.12.16.25.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 16:25:07 -0700 (PDT)
Date: Tue, 12 May 2020 16:25:05 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Luca Weiss <luca@z3ntu.xyz>, Tomas Novotny <tomas@novotny.cz>,
 linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 1/4] dt-bindings: input: gpio-vibrator: Don't require
 enable-gpios
Message-ID: <20200512232505.GF89269@dtor-ws>
References: <20200512222205.1456300-1-megous@megous.com>
 <20200512222205.1456300-2-megous@megous.com>
 <20200512225212.GE89269@dtor-ws>
 <20200512230557.zvdgwhbqygc2fufv@core.my.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512230557.zvdgwhbqygc2fufv@core.my.home>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_162509_574082_E357E672 
X-CRM114-Status: GOOD (  18.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMTMsIDIwMjAgYXQgMDE6MDU6NTdBTSArMDIwMCwgT25kxZllaiBKaXJtYW4g
d3JvdGU6Cj4gT24gVHVlLCBNYXkgMTIsIDIwMjAgYXQgMDM6NTI6MTJQTSAtMDcwMCwgRG1pdHJ5
IFRvcm9raG92IHdyb3RlOgo+ID4gT24gV2VkLCBNYXkgMTMsIDIwMjAgYXQgMTI6MjI6MDJBTSAr
MDIwMCwgT25kcmVqIEppcm1hbiB3cm90ZToKPiA+ID4gSXQgaXMgcG9zc2libGUgdG8gdHVybiB0
aGUgbW90b3Igb24vb2ZmIGp1c3QgYnkgZW5hYmxpbmcvZGlzYWJsaW5nCj4gPiA+IHRoZSB2Y2Mt
c3VwcGx5Lgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogT25kcmVqIEppcm1hbiA8bWVnb3Vz
QG1lZ291cy5jb20+Cj4gPiA+IEFja2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3Jn
Pgo+ID4gPiAtLS0KPiA+ID4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pbnB1
dC9ncGlvLXZpYnJhdG9yLnlhbWwgfCAxIC0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0
aW9uKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2lucHV0L2dwaW8tdmlicmF0b3IueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9pbnB1dC9ncGlvLXZpYnJhdG9yLnlhbWwKPiA+ID4gaW5kZXggMjM4NDQ2
NWVhYTE5Li5jNzAwYjY0MGJkNTMgMTAwNjQ0Cj4gPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9pbnB1dC9ncGlvLXZpYnJhdG9yLnlhbWwKPiA+ID4gKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lucHV0L2dwaW8tdmlicmF0b3IueWFtbAo+
ID4gPiBAQCAtMjQsNyArMjQsNiBAQCBwcm9wZXJ0aWVzOgo+ID4gPiAgCj4gPiA+ICByZXF1aXJl
ZDoKPiA+ID4gICAgLSBjb21wYXRpYmxlCj4gPiA+IC0gIC0gZW5hYmxlLWdwaW9zCj4gPiAKPiA+
IEhtbSB3ZSBuZWVkIGF0IGxlYXN0IG9uZSBvZiB0aGUgMiAoZ3BpbyBhbmQgc3VwcGx5KS4gU2hv
dWxkIHdlIGVuY29kZSBpdAo+ID4gaW4gdGhlIGJpbmRpbmc/Cj4gCj4gTm90IHN1cmUgaG93IHRv
IGVuY29kZSBlaXRoZXIgb25lIG9yIHRoZSBvdGhlciBwcm9wZXJ0eSBiZWluZyByZXF1aXJlZCwg
YnV0Cj4gbm90IGJvdGggYXQgb25jZS4KPiAKPiBNYXliZSBJIGNhbiBhZGQgYSBzdXBwbHktdmli
cmF0b3IgY29tcGF0aWJsZSB0byB0aGUgZHJpdmVyIGFuZCBiaW5kaW5nIGFuZAo+IG1ha2UgcmVx
dWlyZW1lbnRzIGRlcGVuZGVudCBvbiB0aGUgY29tcGF0aWJsZT8KClJvYiBpcyBvdXIgYmluZGlu
Z3Mgb3ZlcmxvcmQuLi4gSSdsbCBkZWZlciB0byBoaW0gaGVyZS4KClRoYW5rcy4KCi0tIApEbWl0
cnkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
