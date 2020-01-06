Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7732C130EE1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 09:45:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8HCziMwGbuA9MCgJkrDp/xXZ62B6csp2mm5VQuABTWM=; b=s+nruMZhA7RRsk
	8NsHFrgvxDJpEPOpECZpmQ0CdA7TWD8xl2BMUa91ILRJ/xffWUkzFPFfgX04guMFHhF2Mb2kf6Ib8
	RNXT9VWnismHovtzAuVraOn7r2Qq9Ixp8TWGUlBZamSpqeyxhCXJZu/3K3HWNpUSnd5S63oiDF5mn
	/+4afSLh+2Vd/LpMmnFBLY1XD1ZsbBTe48SDdGeqqv0Z6r2FDoWuZenOrVXQplxiGtGYAJaFS/f0v
	ot82f+eBlQEd6siST9XNMhcAFIz2Qe8kd5QadJvJLaa0adDdRI6AFuwYBuMhb8QMxVxm1S1cVzFw5
	1idJF+u9AYUMT4CsBHWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioO1C-0004rh-IJ; Mon, 06 Jan 2020 08:45:46 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioO12-0004qn-S6
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 08:45:38 +0000
Received: by mail-wr1-x441.google.com with SMTP id c14so48706796wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 00:45:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=E+ZsR7Z6Or+Q9BNSYlv8m9k1i0fDEt4sNmLSr2qVLrE=;
 b=b6EoJUPx4omgCfCytDHI5M/8GKVGW1pS/Q0ukuUb7HkffVkKyEWFhHUwnA4PXQB1m5
 qAUBj9pMGqUSqG4+z/oaABcxhRaKjqTHoqlJkl1X/pWm++WDEUh6zRHoz2qPVNU28txW
 kyvLH3wU019LV43vRa1wHHGDYaMIpm0Xt2B1Z2u7WT0FnwzkeDDFea6m2Az5EuZ73VaY
 iHoRWNHfEGFXf3eWklrzVDg4SX4+I2OI74ZuTK4H7grXGv0dj19Pds60dYhLIqIQme9E
 zaIZfiYyscy0y1Y3a5N8RLfshXOorElBxVojEvb9ruo0GAXpDWGysJDhxOx6hInEaopG
 ZPnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=E+ZsR7Z6Or+Q9BNSYlv8m9k1i0fDEt4sNmLSr2qVLrE=;
 b=TwaczsfQOPxIrG8afD0esVqQQk5HJtVLutaDtT9NMKuVv5ZCn3kStoHPxVFgSuxogg
 gefD+CFFlBi6rdMGSyR0zFEh3d57iUznapltsrr8VKvaACgJ+BfrH/n/xhqNioO+qd4V
 g2MTXi+SAGjUHsqoChE7AFDcuGa9o1l9COSW1jybKzdNhQt2lQhtNlhDK3mFbAuuupMH
 7R9XsUKri/qpK5+qpHP0ybigBn5SXBnWGwobE9pE4SZTkiazt/Pka4YPtzwf2prMIcER
 YC/9kpWJyed44H3kIQq6eyVmsLXeoq+oYWjiXr9rHprngAIfk34nDy2sgfCavosnLDCd
 02zg==
X-Gm-Message-State: APjAAAV9Zfwtwb+gy7ektQE1nQbqG+vrV4wdvC7skDDLujhxcj1YZLqD
 l7wsYuJMRDfJE7eEflSd9HCsQQ==
X-Google-Smtp-Source: APXvYqwxcQQlcWtECdQoOFeMi0PnZaRKIl/UK7OQlM3noxtNGd+dNEVLfF5LUtq5jrb7KMBL2hK+Yg==
X-Received: by 2002:a05:6000:118e:: with SMTP id
 g14mr100885486wrx.39.1578300334744; 
 Mon, 06 Jan 2020 00:45:34 -0800 (PST)
Received: from dell ([2.27.35.135])
 by smtp.gmail.com with ESMTPSA id q6sm76176240wrx.72.2020.01.06.00.45.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 00:45:34 -0800 (PST)
Date: Mon, 6 Jan 2020 08:45:49 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: LED backlight on Droid 4 and others
Message-ID: <20200106084549.GA14821@dell>
References: <20200105183202.GA17784@duo.ucw.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200105183202.GA17784@duo.ucw.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_004536_958130_3194BA0D 
X-CRM114-Status: GOOD (  24.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: daniel.thompson@linaro.org, mpartap@gmx.net, tony@atomide.com,
 jingoohan1@gmail.com, merlijn@wizzup.org, martin_rysavy@centrum.cz,
 kernel list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 sre@kernel.org, nekit1000@gmail.com, tomi.valkeinen@ti.com, jjhiblot@ti.com,
 linux-omap@vger.kernel.org, agx@sigxcpu.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCAwNSBKYW4gMjAyMCwgUGF2ZWwgTWFjaGVrIHdyb3RlOgoKPiBIaSEKPiAKPiBJdCB3
b3VsZCBiZSBnb29kIHRvIGdldCBMRUQgYmFja2xpZ2h0IHRvIHdvcmsgaW4gY2xlYW4gd2F5IGZv
ciA1LjYKPiBrZXJuZWwuCj4gCj4gQXMgZmFyIGFzIEkgY2FuIHNlZSwgdGhlc2UgYXJlIG5lY2Nl
c3NhcnkgKGJ1dCBub3QgZW5vdWdoOyBpdCBkb2VzIG5vdAo+IHdvcmsgZm9yIG1lKTogbG0zNTMy
IGNoYW5nZXMgdG8gcmVnaXN0ZXIgTEVEIHdpdGggb2Ygbm9kZSwgcGx1cyBkZXZpY2UKPiB0cmVl
IGNoYW5nZXMgZm9yIGRyb2lkIDQsIGFuZCB0aGVzZSBnZW5lcmljIGNoYW5nZXM6Cj4gCj4gY29t
bWl0IGQ0NTdkMGM5N2Q2ZDU1ZmUzZTYyNjMzNzkxYWMwNWQyODlhMzdkMmUKPiBBdXRob3I6IFRv
bWkgVmFsa2VpbmVuIDx0b21pLnZhbGtlaW5lbkB0aS5jb20+Cj4gRGF0ZTogICBUaHUgT2N0IDMg
MTA6Mjg6MTIgMjAxOSArMDIwMAo+IAo+ICAgICBiYWNrbGlnaHQ6IGFkZCBsZWQtYmFja2xpZ2h0
IGRyaXZlcgo+ICAgICAKPiAgICAgVGhpcyBwYXRjaCBhZGRzIGEgbGVkLWJhY2tsaWdodCBkcml2
ZXIgKGxlZF9ibCksIHdoaWNoIGlzIHNpbWlsYXIgdG8KPiAgICAgcHdtX2JsIGV4Y2VwdCB0aGUg
ZHJpdmVyIHVzZXMgYSBMRUQgY2xhc3MgZHJpdmVyIHRvIGFkanVzdCB0aGUKPiAgICAgYnJpZ2h0
bmVzcyBpbiB0aGUgSFcuIE11bHRpcGxlIExFRHMgY2FuIGJlIHVzZWQgZm9yIGEgc2luZ2xlIGJh
Y2tsaWdodC4KPiAgICAgCj4gICAgIFNpZ25lZC1vZmYtYnk6IFRvbWkgVmFsa2VpbmVuIDx0b21p
LnZhbGtlaW5lbkB0aS5jb20+Cj4gICAgIFNpZ25lZC1vZmYtYnk6IEplYW4tSmFjcXVlcyBIaWJs
b3QgPGpqaGlibG90QHRpLmNvbT4KPiAgICAgQWNrZWQtYnk6IFBhdmVsIE1hY2hlayA8cGF2ZWxA
dWN3LmN6Pgo+ICAgICBSZXZpZXdlZC1ieTogRGFuaWVsIFRob21wc29uIDxkYW5pZWwudGhvbXBz
b25AbGluYXJvLm9yZz4KPiAKPiBjb21taXQgNDRiN2FkYmYwYjA3OTA0ZTQxOThhZTFkMGE3NjM5
MTdkMWM2OGEyMwo+IEF1dGhvcjogSmVhbi1KYWNxdWVzIEhpYmxvdCA8ampoaWJsb3RAdGkuY29t
Pgo+IERhdGU6ICAgVGh1IE9jdCAzIDEwOjI4OjEwIDIwMTkgKzAyMDAKPiAKPiAgICAgbGVkczog
QWRkIG1hbmFnZWQgQVBJIHRvIGdldCBhIExFRCBmcm9tIGEgZGV2aWNlIGRyaXZlcgo+ICAgICAK
PiAgICAgSWYgdGhlIExFRCBpcyBhY3F1aXJlZCBieSBhIGNvbnN1bWVyIGRldmljZSB3aXRoIGRl
dm1fbGVkX2dldCgpLCBpdCBpcwo+ICAgICBhdXRvbWF0aWNhbGx5IHJlbGVhc2VkIHdoZW4gdGhl
IGRldmljZSBpcyBkZXRhY2hlZC4KPiAgICAgCj4gICAgIFNpZ25lZC1vZmYtYnk6IEplYW4tSmFj
cXVlcyBIaWJsb3QgPGpqaGlibG90QHRpLmNvbT4KPiAgICAgQWNrZWQtYnk6IFBhdmVsIE1hY2hl
ayA8cGF2ZWxAdWN3LmN6Pgo+ICAgICBTaWduZWQtb2ZmLWJ5OiBQYXZlbCA8cGF2ZWxAdWN3LmN6
Pgo+IAo+IGNvbW1pdCA5M2I5OGM1NzBkN2Y4OTgwNjNhYjYyMDRlMWIzOTUwYTMzMzVkZDEyCj4g
QXV0aG9yOiBUb21pIFZhbGtlaW5lbiA8dG9taS52YWxrZWluZW5AdGkuY29tPgo+IERhdGU6ICAg
VGh1IE9jdCAzIDEwOjI4OjA5IDIwMTkgKzAyMDAKPiAKPiAgICAgbGVkczogQWRkIG9mX2xlZF9n
ZXQoKSBhbmQgbGVkX3B1dCgpCj4gICAgIAo+ICAgICBUaGlzIHBhdGNoIGFkZHMgYmFzaWMgc3Vw
cG9ydCBmb3IgYSBrZXJuZWwgZHJpdmVyIHRvIGdldCBhIExFRCBkZXZpY2UuCj4gICAgIFRoaXMg
d2lsbCBiZSB1c2VkIGJ5IHRoZSBsZWQtYmFja2xpZ2h0IGRyaXZlci4KPiAgICAgCj4gICAgIE9u
bHkgT0YgdmVyc2lvbiBpcyBpbXBsZW1lbnRlZCBmb3Igbm93LCBhbmQgdGhlIGJlaGF2aW9yIGlz
IHNpbWlsYXIgdG8KPiAgICAgUFdNJ3Mgb2ZfcHdtX2dldCgpIGFuZCBwd21fcHV0KCkuCj4gICAg
IAo+ICAgICBTaWduZWQtb2ZmLWJ5OiBUb21pIFZhbGtlaW5lbiA8dG9taS52YWxrZWluZW5AdGku
Y29tPgo+ICAgICBTaWduZWQtb2ZmLWJ5OiBKZWFuLUphY3F1ZXMgSGlibG90IDxqamhpYmxvdEB0
aS5jb20+Cj4gICAgIEFja2VkLWJ5OiBQYXZlbCBNYWNoZWsgPHBhdmVsQHVjdy5jej4KPiAgICAg
U2lnbmVkLW9mZi1ieTogUGF2ZWwgPHBhdmVsQHVjdy5jej4KPiAKPiBbSWYgeW91IGhhdmUgYW4g
aWRlYSB3aGF0IGVsc2UgaXMgbmVlZGVkLCBpdCB3b3VsZCBiZSB3ZWxjb21lOyBpdAo+IHdvcmtz
IGZvciBtZSBpbiBkZXZlbG9wbWVudCB0cmVlIGJ1dCBub3QgaW4gdHJlZSBJJ2QgbGlrZSB0bwo+
IHVwc3RyZWFtLl0KPiAKPiBMZWUsIHdvdWxkIHlvdSBiZSB3aWxsaW5nIHRvIHRha2UgImJhY2ts
aWdodDogYWRkIGxlZC1iYWNrbGlnaHQKPiBkcml2ZXIiPyBXb3VsZCBpdCBoZWxwIGlmIEkgZ290
ICJsZWRzOiBBZGQgbWFuYWdlZCBBUEkgdG8gZ2V0IGEgTEVECj4gZnJvbSBhIGRldmljZSBkcml2
ZXIiIGFuZCAibGVkczogQWRkIG9mX2xlZF9nZXQoKSBhbmQgbGVkX3B1dCgpIiBpbnRvCj4gZm9y
X25leHQgdHJlZSBvZiB0aGUgTEVEIHN1YnN5c3RlbT8KCkl0IGxvb2tzIGxpa2UgeW91IGhhdmUg
YW4gb3BlbiBxdWVzdGlvbiBmcm9tIFRvbnkgb24gdjEwLgoKSXMgdGhhdCBwYXRjaCBvcnRob2dv
bmFsLCBvciBhcmUgdGhlcmUgZGVwZW5ke2FudHMsZW5jaWVzfT8KCj4gSXQgaXMga2luZCBvZiBp
bXBvcnRhbnQgYXMsIHdlbGwsIHBob25lIHdpdGhvdXQgc2NyZWVuIGxvb2tzIHByZXR0eQo+IG11
Y2ggZGVhZCwgYW5kIHNhbWUgaXNzdWUgaGl0cyBEcm9pZCA0IGFuZCBMaWJyZW0gNSBwaG9uZXMg
YXQgbGVhc3QuLi4KPiAKPiBCZXN0IHJlZ2FyZHMsCj4gCQkJCQkJCQkJUGF2ZWwKCgoKLS0gCkxl
ZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJv
Lm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86
IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
