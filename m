Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEE91B0624
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 12:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1r5H8Q8KvvsYQ7swP1oSJ57mEkR/UWEvyP3P3hsr0A=; b=SEnSTZ7Xx1HWR8
	TGmTe6tt1j/Sxiw/Kwsi+WUIwaFvJ1injYljLqitFt6V1GFDlT5JOkfLigj0T2UAQqrHz5mucPrXB
	skq5TPuHJAWLaKdVIJeatUtL8+QK0XhFsi2XtdWqZ6R65ixRC6200iF4S4yF1wPnFUCN1tfUbleGI
	Qg1kAHBM2bCDVk/bMJ/t1HIHbLHX2+T/i7Q+Jl+z3D2Uy6fyeflCSd6w1gMmhG23y+x7gAdYTwn6d
	Gw/oWpUlYcsI4EvyRiD7Um51o20hD52grK2uTNYLYTK0RJCjiwkKtchUEvqMUiaa2fiaB6T+EzG2D
	QeYjpdRd4BdFzNDxoq5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQTGk-0005Cd-OB; Mon, 20 Apr 2020 10:03:14 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQTGX-0005BI-Ad
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 10:03:03 +0000
Received: by mail-yb1-xb41.google.com with SMTP id i2so5078221ybk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 03:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=26qdYNs0ZF2q7UXN0Qkf8uFcKE4I8h/DrN7RiFR7f0Q=;
 b=LYSctVDkWp0nIyrGia+1VDbE4/E083SUM+o8hXwlsw4oiS5p6YWwSR5msfMMWoXp45
 VIGGOWMv2+elHSPoc1E2DsKjM/zG/LNT2AwEima6szpsJf9M+fPTj+FL06XW8OP0HU7q
 usxEbGOdnSYTRO5B4b0Wl7cuAcYVth7eiHVux8kTiHhzDhBnQpDLvhxB0bv1O3X7fC2t
 +HXw6nZfgzNZ4rjNZHFX52NMSksaKo+HZ2WjGPb59fcGsFEVoYJulQg8RK3Mj37lKEAF
 0aYdLW32bxOCpNcXRHq/Djlsz3LZZ33lPrH6wmkGhpByoBFfs7bRI0BARrISRb2dpLxl
 XI/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=26qdYNs0ZF2q7UXN0Qkf8uFcKE4I8h/DrN7RiFR7f0Q=;
 b=rTcXQIc23bSXV40BMX5ICcJUzQ5EtSdXJjSy9HE17JFA2AzHNzuENmMtThXvaJxBm3
 fHkvJ2BRxkOCl0jjz+2SFLQat7+R5hcbx7LqfJIzr2kKhOGQEvVdVS0/DRstKQnDhmG7
 whS9b+Yujc/aKM2xZXnUvHzCxfEYCq6pENQwUh6xQZLgeug+2dKn2eNXN7eREtbpCQAi
 UkkyfARULaU/2MQS5c0xtvO6sic1yKZEPRuetau4/ISBm8DZGiOGIlsNfTwizCnk4huD
 rtcmuekrAKLNVQLs3sTZp42g02qt/pXoMDabcY5iJ6ZcQ7c5VaeB1IiYHU8i4xNnZePW
 r5tA==
X-Gm-Message-State: AGi0PubS892UJvZoT98ozBMY9NwxUeYbg1rvKAwvkZhAnQGvQsZ2YBtx
 cipWRB3yz57yBmGSfGF0OZHgBX+h73JOTw8wWmHsjw==
X-Google-Smtp-Source: APiQypIdubJBOnT5/KYcmEjQk4EfRpLnI1xif2StvqfQ7T+NDg7Yq5em+mHVX2FSC3ewcJFl2xvG7ubbixLne/FiIFw=
X-Received: by 2002:a25:bd92:: with SMTP id f18mr7399106ybh.87.1587376980292; 
 Mon, 20 Apr 2020 03:03:00 -0700 (PDT)
MIME-Version: 1.0
References: <158735030084.17831.6159788305648251972.stgit@localhost>
 <20200420121403.aff9fb209ee0da7f20ed3ae2@linaro.org>
 <CAK7LNAT9y2A-dX2Z-2pAsbRvKReoypmoP0hdbWiCGR0G8CuK0w@mail.gmail.com>
 <CAA93ih3X46k7F0Mzv=-H0RRAVMemXmHFDc+trAKn2c1tLOQNHA@mail.gmail.com>
 <CAK7LNATYy_tpGT5+veqVwsa9x0e4sYZPmzba5vYvvLRtNYpamA@mail.gmail.com>
In-Reply-To: <CAK7LNATYy_tpGT5+veqVwsa9x0e4sYZPmzba5vYvvLRtNYpamA@mail.gmail.com>
From: Masami Hiramatsu <masami.hiramatsu@linaro.org>
Date: Mon, 20 Apr 2020 19:02:49 +0900
Message-ID: <CAA93ih2OfhjWJz=G6Q05vN5qTJRnEj-+MtvwpT9SmV=9R91cuA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: Add Akebi96 board support
To: Masahiro Yamada <masahiroy@kernel.org>,
 Rob Herring <rob.herring@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_030301_541870_18C9EC50 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: DTML <devicetree@vger.kernel.org>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Jassi Brar <jaswinder.singh@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWWFtYWRhLXNhbiwKCjIwMjDlubQ05pyIMjDml6Uo5pyIKSAxODo0OCBNYXNhaGlybyBZYW1h
ZGEgPG1hc2FoaXJveUBrZXJuZWwub3JnPjoKPgo+IEhpcmFtYXRzdS1zYW4KPgo+IE9uIE1vbiwg
QXByIDIwLCAyMDIwIGF0IDY6MzEgUE0gTWFzYW1pIEhpcmFtYXRzdQo+ID4gPiBZb3VyIHBhdGNo
IHN1Ym1pc3Npb24gaXMgc3RpbGwgc3RyYW5nZS4KPiA+ID4KPiA+ID4gaHR0cHM6Ly9wYXRjaHdv
cmsua2VybmVsLm9yZy9wYXRjaC8xMTQ5ODAyNS8KPiA+ID4KPiA+ID4gVGhpcyBwYXRjaCBpcyBi
cm9rZW4uCj4gPiA+Cj4gPiA+IFBsZWFzZSBtYWtlIHN1cmUgaXQgY2FuIGFwcGx5IHRvIHRoZSBt
YWlubGluZSBjb2RlLgo+ID4KPiA+IEFoLCBzaW5jZSBpdCBpcyBiYXNlZCBvbiB0aGUgbGludXgt
bmV4Lgo+ID4gT0ssIEknbGwgdXBkYXRlIGl0IHRvIHRoZSBtYWlubGluZSBrZXJuZWwuCj4KPgo+
IE9oLCBJIGRpZCBub3Qgbm90aWNlIHRoZSBpbnZhc2l2ZSByZWZvcm1hdGluZy4KPgo+IEFub3Ro
ZXIgd2F5IHRvIG1lcmdlIHRoaXMgY2xlYW5seSBpcyB0byBhc2sgdGhpcyB0byBSb2IgSGVycmlu
Zy4KPiBFaXRoZXIgaXMgT0sgdG8gbWUuCgpPaCwgbGV0IG1lIHVwZGF0ZSB0aGUgc2VyaWVzIHRv
IGZpeCB0aGUgc2lsbHkgYXV0aG9yIGxpbmUgOigKQW5kIGFueXdheSwgSSd2ZSBwcmVwYXJlZCB0
aGUgbWFpbmxpbmUga2VybmVsIHBhdGNoLgpTaW5jZSBpdCBpcyBhIG1pbm9yIG1lcmdlIGNvbmZs
aWN0LCBJIHdvdWxkIGxpa2UgdG8gc2VuZCB2MiBmb3IgdGhlCm1haW5saW5lIGtlcm5lbC4KUm9i
LCBpZiB5b3Ugd2FudCBhIG5ldyB2ZXJzaW9uLCBwbGVhc2UgbGV0IG1lIGtub3cuIEkgY2FuIHJl
cG9zdCBpdCA6KQoKVGhhbmsgeW91LAoKLS0gCk1hc2FtaSBIaXJhbWF0c3UKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
