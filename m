Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9798F1FC6A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 23:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3OEo9dYpBp4YNdgjwm8ct31OjVrs0vWYvCMSttn+h0Y=; b=fPwe6TbtM/oUgF
	1jJIz5HQbBYoVAppjK+UvywFXLl5yb3VNVSeJAK37RXKop7Nl/7Uv06JSIiKPuCI1oKYvfzNoujWa
	kiFhSzD+Z3ZuXGFxC/RLBwk+SSFm4fY90hVx+ZkI7oFoQLNMR0m06tLKkaF46slX2vKNrBIFq8BA7
	44jto99GvVSGqPqqXx62omNmLUuExmdG7O0dJEUy1dYGHgS3XrOSMngduil1XjZ+e06CcjcReG2kr
	TFEXta+01UfBTYvA1pYMUNO81hf3bC59eHg7TvioJzG2QlOa0czgCBOueq00K8WlkAtvNwY1mTV7e
	IhMSj/slb/hsnshpoLfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR1ky-0002y7-S8; Wed, 15 May 2019 21:48:12 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR1kp-0002wj-JA
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 21:48:04 +0000
Received: by mail-io1-xd43.google.com with SMTP id s20so857248ioj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 14:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=sWbpZHBe6YpRVe1pQMe2dJ3Y9vgwQ34ZV5GLEWuVB0U=;
 b=A0HkQWrQJKaLnNmrfgjL/E9/qPkQ5KNszllhY23b3Pf7LUv30duqOeqydt2saWLPj2
 5cmD3znaPpqshHiIWvtIn+5m9v5HZsPoVO5T0FXibljEZ1/7Us+Pd+VZQF1Rzjzdu4iu
 uUBiTlXqo+RQIYOCi+GZNkubLOExpLqSVQ5hA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=sWbpZHBe6YpRVe1pQMe2dJ3Y9vgwQ34ZV5GLEWuVB0U=;
 b=bBfkynqArnypSD+NenKklY+7g04jWAo2HDg4g+Joa75QnfcXBDviymFUB4dFo8nJzu
 vF1m0+Bm+XfDcTe4LXoZ6f6M10avNB2BP0TBDwCDRlTVvQ7xIFLZeI2oj5aGNXgQfpAV
 rUCT/9md/gcYVs2rmoYkC6Jl4LM7AIIqM948PpQ/EA+pit3D2e2jY7YdBJu5rmu8ZVZo
 aoxtSWyeVVnbp2hcIi5Hr7Uh3kFmbtjFS909SjGvc+A1ov5dKj79W5ghuATn+tS02sME
 J3IDCEkfxtNF4gvv+oYucOjLX70C0OrPDjYuDyrDg48eszVwaF1s852NhYjc+XVsTE1V
 4Y3A==
X-Gm-Message-State: APjAAAXpJdZEydcS8sJtY4YMCOk0XcRar6nrBaW/JBm/8lk8BYn+RbVI
 4APCtRH4/h8pgrsT+ojcVEUDCQ==
X-Google-Smtp-Source: APXvYqy6zgaN1FSUR13WOZV+36r1jayIO6EfLBjhuM3DJf4NRj+SG1E4CLAkVBleShYTPo7hLzcRmQ==
X-Received: by 2002:a6b:e20d:: with SMTP id z13mr24726706ioc.92.1557956880412; 
 Wed, 15 May 2019 14:48:00 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id 1sm702105ity.9.2019.05.15.14.47.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 14:47:59 -0700 (PDT)
Date: Wed, 15 May 2019 14:47:59 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 2/2] ARM: dts: raise GPU trip point temperature for
 speedy to 80 degC
Message-ID: <20190515214759.GF40515@google.com>
References: <20190515153127.24626-1-mka@chromium.org>
 <20190515153127.24626-2-mka@chromium.org>
 <CAD=FV=XgoG5hiT=vAhNtUF4iVj1-Lmj7S5tvk86ehxB1uUZyxw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=XgoG5hiT=vAhNtUF4iVj1-Lmj7S5tvk86ehxB1uUZyxw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_144803_629358_C75626B0 
X-CRM114-Status: GOOD (  20.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

T24gV2VkLCBNYXkgMTUsIDIwMTkgYXQgMTE6MzA6MTJBTSAtMDcwMCwgRG91ZyBBbmRlcnNvbiB3
cm90ZToKPiBIaSwKPiAKPiBPbiBXZWQsIE1heSAxNSwgMjAxOSBhdCA4OjMxIEFNIE1hdHRoaWFz
IEthZWhsY2tlIDxta2FAY2hyb21pdW0ub3JnPiB3cm90ZToKPiAKPiA+IFJhaXNlIHRoZSB0ZW1w
ZXJhdHVyZSBvZiB0aGUgR1BVIHRoZXJtYWwgdHJpcCBwb2ludCBmb3Igc3BlZWR5Cj4gPiB0byA4
MMKwQy4gVGhpcyBpcyB0aGUgdmFsdWUgdXNlZCBieSB0aGUgZG93bnN0cmVhbSBDaHJvbWUgT1Mg
My4xNAo+ID4ga2VybmVsLCB0aGUgJ29mZmljaWFsJyBrZXJuZWwgZm9yIHNwZWVkeS4KPiA+Cj4g
PiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGlhcyBLYWVobGNrZSA8bWthQGNocm9taXVtLm9yZz4KPiA+
IC0tLQo+ID4gIGFyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24tc3BlZWR5LmR0cyB8IDQg
KysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1zcGVlZHkuZHRzIGIvYXJjaC9h
cm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1zcGVlZHkuZHRzCj4gPiBpbmRleCAyYWM4NzQ4YTNh
MGMuLjM5NGE5NjQ4ZmFlZSAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4
OC12ZXlyb24tc3BlZWR5LmR0cwo+ID4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZl
eXJvbi1zcGVlZHkuZHRzCj4gPiBAQCAtNjQsNiArNjQsMTAgQEAKPiA+ICAgICAgICAgdGVtcGVy
YXR1cmUgPSA8NzAwMDA+Owo+ID4gIH07Cj4gPgo+ID4gKyZncHVfYWxlcnQwIHsKPiA+ICsgICAg
ICAgdGVtcGVyYXR1cmUgPSA8ODAwMDA+Owo+ID4gK307Cj4gPiArCj4gPiAgJmVkcCB7Cj4gCj4g
U2ltaWxhciBjb21tZW50cyB0byBwYXRjaCBzZXQgIzEgYWJvdXQgc29ydCBvcmRlcmluZy4KCmFj
awoKPiAuLi5JJ2xsIGFsc28gbm90aWNlIHRoYXQgaWYgd2UgZG8gZW5kIHVwIHNldHRpbmcgdGhl
ICJjcml0aWNhbCIgdG8gMTAwCj4gQyBmb3IgbW9zdCBvZiB2ZXlyb24gdGhlbiBJIGd1ZXNzIHdl
J2xsIGhhdmUgdG8gc3dpdGNoIGl0IGJhY2sgdG8gOTAgQwo+IGhlcmUgZm9yIHNwZWVkeSB0byBt
YXRjaCBkb3duc3RyZWFtPwoKeWVzCgo+IE1heWJlIHRoYXQncyBhbiBhcmd1bWVudCBmb3IgZG9p
bmcgaXQgaW4gdGhpcyBwYXRjaHNldCBzbyB3ZSBkb24ndAo+IGZvcmdldD8KCnNvdW5kcyBnb29k
IHRvIG1lCgo+IEknbSBzb21ld2hhdCBhbWF6ZWQgdGhhdCBkb3duc3RyZWFtIGhhcyBvbmx5IDEw
IEMgYmV0d2VlbiAiYWxlcnQiCj4gYW5kICdjcml0aWNhbCIgZm9yIEdQVSBmb3Igc3BlZWR5LCBi
dXQgSSBndWVzcyBpdCdzIE9LPwoKSW4gdGVzdHMgb24gb3RoZXIgdmV5cm9uIGRldmljZXMgSSBv
YnNlcnZlZCBncmFkdWFsIHRlbXBlcmF0dXJlCmluIHJlc3BvbnNlIHRvIENQVSBvciBHUFUgbG9h
ZCwgc28gdW5sZXNzIHRoZXJlJ3MgYSBzdWRkZW4gc3Bpa2UgaW4KdGhlIGFtYmllbnQgdGVtcGVy
YXR1cmUgSSB0aGluayB0aGUgMTDCsEMgZGVsdGEgc2hvdWxkIGJlIGZpbmUgd2l0aCB0aGUKY3Vy
cmVudCBwb2xsaW5nIGludGVydmFsIG9mIDEwMG1zLgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
