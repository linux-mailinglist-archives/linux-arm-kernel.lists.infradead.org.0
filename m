Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2A85CD4F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 12:07:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EMYzPylCVy3gOEkzkohmErBg4sIEs5mLKMw/hU4t70o=; b=KPFEzM0hDxw8fa
	44/5p59I3Ldqim9uakCJGXdxUZS+0osFQZWk0/orblmzfWbpqGpHkCGGDAiR6WOww1G+eg2oHXA8f
	nAx/kKTnwH5cTr2NtyZG/3PZHOIwzT4/sjC+JTF9n6RqAeicZVgCQztyEgwzBXsG+moAXbCVEK/UJ
	yycwBUcrnMKb5MkX5oV9PjqtwbzYcsUzmp0+xmjVSeJECE5KDp/1V3NDbjn2ZsA6JC4NhF7Sj+NYe
	mtpmweNlO52WCmUUfAfkGqtew6lEYlA5+xfznfuZN1hk7Rwm/l1ouXKpdNa9SxWWZWrCUKW+gQs0p
	DXfPeRatQpUCjm5c4hBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiFgk-0002pA-Lb; Tue, 02 Jul 2019 10:07:02 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiFgZ-0002oD-3a
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 10:06:52 +0000
Received: by mail-wm1-x344.google.com with SMTP id u8so316389wmm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 03:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=IPhxNdYQv1IO45V1N89WkeYw72yq7YkYbzXa74/qLm8=;
 b=TmcjfCcxp9A8p09QuoZGu11Tfov1i2w+va27tjKlP+UMLAP9yOMJJmoYEsh6iIKPXW
 msQS1R0Vph9Wj+ScXIqkevVlPoxzL1HHYEnL0H2gqmnJ7GS8yuphQVdojxjDby/fnzqh
 iIKFUsFtpKGPWwSUsSgmtl07V6KTaUluSQ5tQYCKwUwjc3Q5IQfEJBVH6DJYu/677awV
 IlHuPJslNPQamm0aYo9JmdAJhR+kyipkS/zZM93qGpMREddffT/vUybnRw+4iSTpjxOC
 8zyfIrQE+miGNfNstjUZCVlvoYaIGoEeAVlmi724OpGlxR6bdJYkAvraWA3+o22qkLzb
 LxBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=IPhxNdYQv1IO45V1N89WkeYw72yq7YkYbzXa74/qLm8=;
 b=Lp/ambJjKnUuWxb94XAMQza2ILk+D58V0DfOdtDDnj6SGXKEW4e1obVbLb8W6JJFWo
 kgBej6bKD7C1Z/gCPikLorzsxk5mw6qLo/9Cy14lUZLf5NOs9uTh0gVdAbtiLyybMohr
 soQ2qTdvQLZPKkWx8YuJkrcbZTYmChNYW0JaeywWC4AHcPQJydCJt3qeUdH2jp3r2ayl
 hVvnuT0Ja7LSjT7gihnFoyWQ9sOMqk5GN7hLw1u3t0wPYBGvtRXjJnH2Dw3brH4dHDuw
 Ev74hJBtP8BtY4c++ZXXJE6yZpOKaJKSBDlkI7fCcfxI0VLCeN0KFbJWFEqXouoRSrLl
 ODKA==
X-Gm-Message-State: APjAAAW24RpyUwrTGkkObnQkznFYMGhTaxKEQZaneP18IxLQx0JC/raN
 stX465vIEXL7TQlyBJ8FFGUS8Q==
X-Google-Smtp-Source: APXvYqwdjByD+ebiA2jaUAfMZ0F44rSTtYAIiX/eLfpUiDzg2avALCgxqEFC+Vkzsv/GOweWWbSJqA==
X-Received: by 2002:a1c:a654:: with SMTP id p81mr2771343wme.36.1562062008717; 
 Tue, 02 Jul 2019 03:06:48 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id m24sm2055652wmi.39.2019.07.02.03.06.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 03:06:48 -0700 (PDT)
Date: Tue, 2 Jul 2019 11:06:46 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 00/12] ARM: davinci: da850-evm: remove more legacy GPIO
 calls
Message-ID: <20190702100646.q3wgzgacvp67m6xv@holly.lan>
References: <20190625163434.13620-1-brgl@bgdev.pl>
 <fe42c0e1-2bfb-2b1c-2c38-0e176e88ec6e@ti.com>
 <20190702063653.GC4652@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702063653.GC4652@dell>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_030651_162434_7F9A4088 
X-CRM114-Status: GOOD (  21.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: linux-fbdev@vger.kernel.org, David Lechner <david@lechnology.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Jingoo Han <jingoohan1@gmail.com>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Kevin Hilman <khilman@kernel.org>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgMDIsIDIwMTkgYXQgMDc6MzY6NTNBTSArMDEwMCwgTGVlIEpvbmVzIHdyb3Rl
Ogo+IE9uIE1vbiwgMDEgSnVsIDIwMTksIFNla2hhciBOb3JpIHdyb3RlOgo+IAo+ID4gSGkgTGVl
LCBEYW5pZWwsIEppbmdvbywKPiA+IAo+ID4gT24gMjUvMDYvMTkgMTA6MDQgUE0sIEJhcnRvc3og
R29sYXN6ZXdza2kgd3JvdGU6Cj4gPiA+IEZyb206IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJnb2xh
c3pld3NraUBiYXlsaWJyZS5jb20+Cj4gPiA+IAo+ID4gPiBUaGlzIGlzIGFub3RoZXIgc21hbGwg
c3RlcCBvbiB0aGUgcGF0aCB0byBsaWJlcmF0aW5nIGRhdmluY2kgZnJvbSBsZWdhY3kKPiA+ID4g
R1BJTyBBUEkgY2FsbHMgYW5kIHNocmlua2luZyB0aGUgZGF2aW5jaSBHUElPIGRyaXZlciBieSBu
b3QgaGF2aW5nIHRvCj4gPiA+IHN1cHBvcnQgdGhlIGJhc2UgR1BJTyBudW1iZXIgYW55bW9yZS4K
PiA+ID4gCj4gPiA+IFRoaXMgdGltZSB3ZSdyZSByZW1vdmluZyB0aGUgbGVnYWN5IGNhbGxzIHVz
ZWQgaW5kaXJlY3RseSBieSB0aGUgTENEQwo+ID4gPiBmYmRldiBkcml2ZXIuCj4gPiA+IAo+ID4g
PiBUaGUgZmlyc3QgdGhyZWUgcGF0Y2hlcyBtb2RpZnkgdGhlIEdQSU8gYmFja2xpZ2h0IGRyaXZl
ci4gVGhlIGZpcnN0Cj4gPiA+IG9mIHRoZW0gYWRkcyB0aGUgbmVjZXNzYXJ5IGZ1bmN0aW9uYWxp
dHksIHRoZSBvdGhlciB0d28gYXJlIGp1c3QKPiA+ID4gdHdlYWtzIGFuZCBjbGVhbnVwcy4KPiA+
IAo+ID4gQ2FuIHlvdSB0YWtlIHRoZSBmaXJzdCB0aHJlZSBwYXRjaGVzIGZvciB2NS4zIC0gaWYg
aXRzIG5vdCB0b28gbGF0ZT8gSQo+ID4gdGhpbmsgdGhhdCB3aWxsIG1ha2UgaXQgZWFzeSBmb3Ig
cmVzdCBvZiBwYXRjaGVzIHRvIG1ha2UgaW50byBzdWJzZXF1ZW50Cj4gPiBrZXJuZWwgcmVsZWFz
ZXMuCj4gCj4gSXQncyBhbHJlYWR5IHRvbyBsYXRlIGluIHRoZSBjeWNsZSAoLXJjNykgZm9yIHRo
YXQuICBJIHJlcXVpcmUgcGF0Y2hlcwo+IG9mIHRoaXMgbmF0dXJlIHRvIGhhdmUgYSBnb29kIHNv
YWsgaW4gLW5leHQgYmVmb3JlIGJlaW5nIG1lcmdlZC4gVGhlcmUKPiBzaG91bGRuJ3QgYmUgYW4g
aXNzdWUgd2l0aCBnZXR0aW5nIHRoZW0gaW50byB2NS40IHRob3VnaC4KCk9uIHRoZSBvdGhlciBo
YW5kIEkgdGhpbmsgd2UgZGlkIHRha2UgYSBwYXRjaCB0aGF0IGRpZCBtdWNoIHRoZSBzYW1lIAp0
aGluZyBhcyBwYXRjaCAxLzEyIGluIHRoaXMgc2VyaWVzOgpodHRwczovL2dpdC5rZXJuZWwub3Jn
L3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9sZWUvYmFja2xpZ2h0LmdpdC9jb21taXQvP2g9Zm9y
LWJhY2tsaWdodC1uZXh0JmlkPTk4Yjc0MDRlYjdkNjRlNTVmOGZkZDQxOWNiMzk2NWE4YWJmMGUy
MTcKCkknbSBub3QgMTAwJSBzdXJlIGJ1dCBJIHRoaW5rIHRoYXQgbWlnaHQgYWxsb3cgdGhlIHBh
dGNoc2V0IHRvIGJlIHNwbGl0CmludG8gdHdvIHRoYXQgYXJlIGluZGVwZW5kZW50IChvbmUgZm9y
IERhdmluY2kgYW5kIG9uZSBmb3IgZ3BpbwpiYWNrbGlnaHQgaW1wcm92ZW1lbnRzKS4KCgpEYW5p
ZWwuCgo+IAo+ID4gPiBOZXh0IHR3byBwYXRjaGVzIGVuYWJsZSB0aGUgR1BJTyBiYWNrbGlnaHQg
ZHJpdmVyIGluCj4gPiA+IGRhdmluY2lfYWxsX2RlZmNvbmZpZy4KPiA+ID4gCj4gPiA+IFBhdGNo
IDYvMTIgbW9kZWxzIHRoZSBiYWNrbGlnaHQgR1BJTyBhcyBhbiBhY3R1YWwgR1BJTyBiYWNrbGln
aHQgZGV2aWNlLgo+ID4gPiAKPiA+ID4gUGF0Y2hlcyA3LTkgZXh0ZW5kIHRoZSBmYmRldiBkcml2
ZXIgd2l0aCByZWd1bGF0b3Igc3VwcG9ydCBhbmQgY29udmVydAo+ID4gPiB0aGUgZGE4NTAtZXZt
IGJvYXJkIGZpbGUgdG8gdXNpbmcgaXQuCj4gPiA+IAo+ID4gPiBMYXN0IHRocmVlIHBhdGNoZXMg
YXJlIGltcHJvdmVtZW50cyB0byB0aGUgZGE4eHggZmJkZXYgZHJpdmVyIHNpbmNlCj4gPiA+IHdl
J3JlIGFscmVhZHkgdG91Y2hpbmcgaXQgaW4gdGhpcyBzZXJpZXMuCj4gPiAKPiA+IFRoYW5rcywK
PiA+IFNla2hhcgo+ID4gCj4gCj4gLS0gCj4gTGVlIEpvbmVzIFvmnY7nkLzmlq9dCj4gTGluYXJv
IFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCj4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29m
dHdhcmUgZm9yIEFSTSBTb0NzCj4gRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwg
QmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
