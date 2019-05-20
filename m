Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8BD2445C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 01:29:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MX3hemMLMYU4ShVf60vRXi8AmZRJyvPfC3lsdX6Y4lM=; b=XUKpXlagrEgwNQ
	BbnaCeOL2G4BmHYBqUwU/nCwRhFdfq6Ur3fSO5uVyluzQSkioQzo2AZP96H1W5vGEvgq2u6vfY5+2
	LRMEnX0CQitEyFeZOyTDhHm9gBYaBrF5yzD7V5t5+y5ZyQdl14Uu6nuctrXf6ZqN7vbPRSdxfdKXP
	TjCpcgPeONciUqKAjl5odyd0XIK3lKkirrHQYLKmuuI6jZRfxDKJHlvywT/9jmutUjoU0uvpenQra
	GHuyMX2TUavGHNi4F32YuJ2PSNZ7zMhXO/2+lq8410tiufPPes7rCEVwRbT0aLGvdTzcnNiVs3tXa
	MEUg1cEngzg0oZrQfvLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSriq-0003el-PG; Mon, 20 May 2019 23:29:36 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSrii-0003e6-UL
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 23:29:30 +0000
Received: by mail-vk1-xa43.google.com with SMTP id g194so2708113vke.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 16:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CQeZYzD9s3oOBXBqpcz3upzW+HnTQAvaSuAunctoyUw=;
 b=LKTBBoJnF7WkULGQxYRtktRyp16+r2Gr0GC86jOnsS5RT3Wx9ZuGBDEItu79R4p99p
 vAFX/U3chWHezKYIkoxL/MVdaASdEIItymbmrFUUVIacAs0Lnbhz+9Jj3d0vRx0zoZLH
 gTG72w3rwFRZVgtpgcRRnnrJYF5tIVag+zGCM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CQeZYzD9s3oOBXBqpcz3upzW+HnTQAvaSuAunctoyUw=;
 b=eMFGN6mifGT6oEw/ZoKx19V9n/LCFn+XT4khM9pMrF9rpjUN9ml0rrxRVt6K99axnF
 28WS5PEz7OwtX6LHdpXhkqlMRU17Ep25W2mvnXYGK3W4fKh3WKzrqalt973d9Hhr16V8
 43PlhOiWjlEA1jNyanSfLiEKyljjQQkcLR/YRVgt1bq+JzXUt4HcxUJc7L9zS8zfuiFl
 uMBH37jK4T++/bFjPh19hAx/tYRjgnQZRdA5MMZ8E6tv0xPq4alYtOC58/tJQ7tmakCU
 WJmlSf8SlWO55Ri4S24kk1uhR+8jfSmh9TJm3oLFrINeOaPSE5HcajPNLV0ID+3RVuTv
 wVvA==
X-Gm-Message-State: APjAAAUOGc2OOp6+13eiu1Fr+8U1UbjaWGuItIfT2V4ehu2sienD+WOe
 7edDZKQ5SYD6b+Tnzz8vcV+GxfmEGxo=
X-Google-Smtp-Source: APXvYqwPFwuEcOon2uSbGXla/SwEgRxzNEACQViTIcz6LZW0fkvbVYFV0sbgAxRuqP27twQPEklejQ==
X-Received: by 2002:a1f:30d4:: with SMTP id w203mr10621424vkw.0.1558394967898; 
 Mon, 20 May 2019 16:29:27 -0700 (PDT)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com.
 [209.85.217.41])
 by smtp.gmail.com with ESMTPSA id t189sm9272179vke.31.2019.05.20.16.29.27
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 16:29:27 -0700 (PDT)
Received: by mail-vs1-f41.google.com with SMTP id d128so10014597vsc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 16:29:27 -0700 (PDT)
X-Received: by 2002:a67:ebd6:: with SMTP id y22mr22498929vso.87.1558394966905; 
 Mon, 20 May 2019 16:29:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190520220051.54847-1-mka@chromium.org>
 <20190520220051.54847-3-mka@chromium.org>
In-Reply-To: <20190520220051.54847-3-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 20 May 2019 16:29:14 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WOpBWapjiz7zq-X7JUG3AaZOcN3Q-Z5XG9md4ZvMCtBw@mail.gmail.com>
Message-ID: <CAD=FV=WOpBWapjiz7zq-X7JUG3AaZOcN3Q-Z5XG9md4ZvMCtBw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] ARM: dts: rockchip: Configure the GPU thermal zone
 for mickey
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_162928_986704_163E2ECA 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
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
a2FAY2hyb21pdW0ub3JnPiB3cm90ZToKPgo+IG1pY2tleSBjcmFtcyBhIGxvdCBvZiBoYXJkd2Fy
ZSBpbnRvIGEgdGlueSBwYWNrYWdlLCB3aGljaCByZXF1aXJlcwo+IG1vcmUgYWdncmVzc2l2ZSB0
aGVybWFsIHRocm90dGxpbmcgdGhhbiBmb3IgZGV2aWNlcyB3aXRoIGEgbGFyZ2VyCj4gZm9vdHBy
aW50LiBDb25maWd1cmUgdGhlIEdQVSB0aGVybWFsIHpvbmUgdG8gdGhyb3R0bGUgdGhlIEdQVQo+
IHByb2dyZXNzaXZlbHkgYXQgdGVtcGVyYXR1cmVzID49IDYwwrBDLiBIZWF0IGRpc3NpcGF0ZWQg
YnkgdGhlCj4gQ1BVcyBhbHNvIGFmZmVjdHMgdGhlIEdQVSB0ZW1wZXJhdHVyZSwgaGVuY2Ugd2Ug
Y2FwIHRoZSBDUFUKPiBmcmVxdWVuY3kgdG8gMS40IEdIeiBmb3IgdGVtcGVyYXR1cmVzIGFib3Zl
IDY1wrBDLiBGdXJ0aGVyIHRocm90dGxpbmcKPiBvZiB0aGUgQ1BVcyBtYXkgYmUgcGVyZm9ybWVk
IGJ5IHRoZSBDUFUgdGhlcm1hbCB6b25lLgo+Cj4gVGhlIGNvbmZpZ3VyYXRpb24gbWF0Y2hlcyB0
aGF0IG9mIHRoZSBkb3duc3RyZWFtIENocm9tZSBPUyAzLjE0Cj4ga2VybmVsLCB0aGUgJ29mZmlj
aWFsJyBrZXJuZWwgZm9yIG1pY2tleS4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoaWFzIEthZWhs
Y2tlIDxta2FAY2hyb21pdW0ub3JnPgo+IC0tLQo+IENoYW5nZXMgaW4gdjI6Cj4gLSBzcGVjaWZ5
IGFsbCBDUFVzIGFzIGNvb2xpbmcgZGV2aWNlcwo+IC0gcy9kb3duc3RyYW0vZG93bnN0cmVhbS8g
aW4gY29tbWl0IG1lc3NhZ2UKPgo+IE5vdGU6IHRoaXMgcGF0Y2ggZGVwZW5kcyBvbiAiQVJNOiBk
dHM6IHJvY2tjaGlwOiBBZGQgI2Nvb2xpbmctY2VsbHMKPiBlbnRyeSBmb3IgcmszMjg4IEdQVSIg
KGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3BhdGNod29yay9wYXRjaC8xMDc1MDA1LykKPiAtLS0K
PiAgYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1taWNrZXkuZHRzIHwgNjcgKysrKysr
KysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNjcgaW5zZXJ0aW9ucygrKQoKUmV2
aWV3ZWQtYnk6IERvdWdsYXMgQW5kZXJzb24gPGRpYW5kZXJzQGNocm9taXVtLm9yZz4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
