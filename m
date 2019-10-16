Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35906D8CFF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 11:54:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+IsBYRhOExTrg379qf57vfymBKy78OSMScefp0QfH8=; b=RDghxxM2aPd+2d
	6NRQu9e52SwXfi2H0Ce0R39/LZGegSnaExUOKVZwtyCD03icNtPcv50vuVr53LorBKQuEr5U+6rRD
	MWwvHsYtpvJ+C+0w6Jw/xovmfJ3KOrh2Qp3Rx6IEbdToNNsyEYaewPa3pvdnDNQ38m7XgKOXiCzdE
	VOwufYhNv2KdMef10y2DrYAHohit/o2e5STBeFagI+s6XPqgVZs+rin5sQI5uFZ9USArl5rWty3Vs
	1HZTW/PYgWPoAPm6zD3AFgjVai4G7TJcTB7FabyHnFg9exNDGQF4+//1MW8hfZ3Z9GnFThEPjQFMw
	VxIjYCf9zDlW3DVDzWzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKg0D-00018T-9o; Wed, 16 Oct 2019 09:53:57 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKg00-00017T-I1
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 09:53:46 +0000
Received: by mail-wm1-x342.google.com with SMTP id r17so4276623wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 02:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=Kwit4G7LvIBlpjMFksUWZpjvME4pHOuEuRyY1aF5G6s=;
 b=Q/4lJtDIdRVDo6AbijTWkrkhxgBk+lTJgWFSycEa0BN78vdIUxg2fMx4KI9KvzRPNX
 y53Jh8ZidY1qmv89VYRIWWXFIAPYzUEdkJlIfaiXLiIZtOcFjSiIg7O64Qb3Xyqo/Bz5
 CNW3/Z+WyZjE3fC/d5nqM1haY6G0qr0Nwz6l0iCaxDvoXVu1KL/HGWs0suf0gtRkWRYv
 xSnCunnttl6QvtglzGXOFTwTTz98vgcgv/FwLuALECX3nPnqqk8DUKCbkLqd+EjZmZf4
 wSaBV7Dz+b1zPaTo3zfOcjuwty4DK1Fp14/1/1a/EAxxSBhoddv231SYzvPzTCf8A7+u
 XpMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=Kwit4G7LvIBlpjMFksUWZpjvME4pHOuEuRyY1aF5G6s=;
 b=EocpqkPi63v4LKRDp8P3vhF2PNVMiICahDLnUajo7AmE9Y/bDTCHVFWkIAB41LZtIf
 80uclPRMhDeQwL6sB0jU7n7JLdCAjA4m5kkjYXg9K5TelnjZDehs1FU8JXwgACcB0Kb3
 F+QkWFhepLJ26e9S+JaZzPgCSf846V5AvETsC8mx1KWtihcmJBXML5NItcsFU8L5TyMc
 a1bhSuT2BQ3dusVA/u0/Dqv3BAGrvglWOk76Wyq3yYhzeQkAuhaPsJExLkhb64bKaEmc
 Kt8mE7r3HzPfHcbAgwmklq5aF03NATpUJZ7aRsImxRsf2ZylebktQubLlQd0tvE48po3
 J/Eg==
X-Gm-Message-State: APjAAAW6MNXzoxsPPXMt7mxmtFiBZZYNMYRIjEYcPb3IISJcc3pLacTF
 ffq/1+sTHOFLg/So6mUg8zcFKQ==
X-Google-Smtp-Source: APXvYqxKdZ3eBlcd7GVcpsuMPVIZNQlRRyz6O8bf4SQ93Tj2YOu8T31DuQRmb/wFB5nTllHgQo71EQ==
X-Received: by 2002:a1c:5458:: with SMTP id p24mr2489286wmi.32.1571219622135; 
 Wed, 16 Oct 2019 02:53:42 -0700 (PDT)
Received: from dell ([95.149.164.86])
 by smtp.gmail.com with ESMTPSA id c4sm24024710wru.31.2019.10.16.02.53.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 16 Oct 2019 02:53:41 -0700 (PDT)
Date: Wed, 16 Oct 2019 10:53:38 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH] mfd: mt6397: fix probe after changing mt6397-core
Message-ID: <20191016095338.GD4365@dell>
References: <20191003185323.24646-1-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003185323.24646-1-frank-w@public-files.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_025344_596838_78D0A061 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAwMyBPY3QgMjAxOSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gUGFydCAzIGZy
b20gdGhpcyBzZXJpZXMgWzFdIHdhcyBub3QgbWVyZ2VkIGR1ZSB0byB3cm9uZyBzcGxpdHRpbmcK
PiBhbmQgYnJlYWtzIG10NjMyMyBwbWljIG9uIGJhbmFuYXBpLXIyCj4gCj4gZG1lc2cgcHJpbnRz
IHRoaXMgbGluZSBhbmQgYXQgbGVhc3Qgc3dpdGNoIGlzIG5vdCBpbml0aWFsaXplZCBvbiBiYW5h
bmFwaS1yMgo+IAo+IG10NjM5NyAxMDAwZDAwMC5wd3JhcDptdDYzMjM6IHVuc3VwcG9ydGVkIGNo
aXA6IDB4MAo+IAo+IHRoaXMgcGF0Y2ggY29udGFpbnMgb25seSB0aGUgcHJvYmUtY2hhbmdlcyBh
bmQgY2hpcF9kYXRhIHN0cnVjdHMKPiBmcm9tIG9yaWdpbmFsIHBhcnQgMyBieSBIc2luLUhzaXVu
ZyBXYW5nCj4gCj4gRml4ZXM6IGE0ODcyZTgwY2U3ZDJhMTg0NDMyODE3NmRiZjI3OWQwYTJiODli
ZGIgbWZkOiBtdDYzOTc6IEV4dHJhY3QgSVJRIHJlbGF0ZWQgY29kZSBmcm9tIGNvcmUgZHJpdmVy
CgpJJ3ZlIGZpeGVkIHRoaXMgbGluZSB0byB1c2UgdGhlIHN0YW5kYXJkIGZvcm1hdHRpbmcuCgo+
IFsxXSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtbWVkaWF0ZWsv
bGlzdC8/c2VyaWVzPTE2NDE1NQo+IAo+IFNpZ25lZC1vZmYtYnk6IEZyYW5rIFd1bmRlcmxpY2gg
PGZyYW5rLXdAcHVibGljLWZpbGVzLmRlPgo+IC0tLQo+ICBkcml2ZXJzL21mZC9tdDYzOTctY29y
ZS5jIHwgNjQgKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCA0MCBpbnNlcnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkKCkFwcGxpZWQsIHRo
YW5rcy4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNh
bCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpG
b2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
