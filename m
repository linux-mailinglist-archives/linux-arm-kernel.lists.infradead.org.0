Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7FC1B163
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 09:44:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8d1W5abOwBrPIayaQ3IrvLXWxbqbrwmFdNqdzSgZfEc=; b=MR7I31hZHsSLZD
	S2L3R+rQxojIgh+9qY7J6kf/Yw6d2Uesd8tjiSpfwOqZs2XJV9kajzKf+71a2qmNy9+Hlk5LBhMc4
	CGP4SzOOzjHjj1WeIxniEZ+9+GKcOxNpvDCAn3gL/yJkFpEf+LGNk+NDnKWw1SAM3wEBgNq0bTfpN
	zrIlpbYgxXS5RCvTX8uKiiiIxdbjUtjvew3/Zfpo98PbqSgZdIGF/S7nRUms/QrTT9t3uk/DHJdaQ
	SMPEsXN+f8yZ7Gt0Etb85HOKtSh+l9BKDMCiGgvXNSea/bHGG49AicbHywqxS3QD/mfE5Dj7QXKaj
	n38d/qancmLEfcrTLdaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ5dj-0008Bd-B8; Mon, 13 May 2019 07:44:51 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ5db-0008BG-Ok
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 07:44:45 +0000
Received: by mail-wr1-x441.google.com with SMTP id w12so14025901wrp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 00:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=OT71EAwxl4wA6+YtX4rN0OJahyazfPvJiN7l6rKFsek=;
 b=Zyz0HHajuuueQ14dGBCAfnblxjKE63v6ovBq+xccC0TKAh0JGEjTZdmOOAyXfRourg
 Hkm3tNCyg6tFgqLZVzY7Cq/q84ISaM+vYaAjjbRWOvqHXWzvyV9AmjqMOA7dH2tuPk98
 b4vbcDt0GfpM9yfTGsQM5+ZlX9K2Vzj0irJIZoXo3WlwgGJcGaWEDv5zHknRy1fv2jLY
 qz2bxVbyfYssedNu5+e8xERXXgXfNfHaTrojeAfBfY5ziL70MWZwXQnFJ1fyPgszLCwq
 Q9QdMrBk0bb/0WlljPRgNAwCjGRVjSYDZ3lQinsYUf9o2PDsOCf7jhaB/7seBrb+GMsj
 NWTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=OT71EAwxl4wA6+YtX4rN0OJahyazfPvJiN7l6rKFsek=;
 b=LVavNyqWFpqeqxcvXjqXqOlb/oGwXK+9U8oBJszi7tpHjSn8kKuhFE5YpotccR0SzI
 dhzaqSR5Digd4wW5ogldocZKiwx1+v3w0++GvIJd2xOYx6qNe5dwUjGs45XVg6zHgJsq
 nrQFAOpDpUUrDCfgBj2/FMImnjz/3zA9aT3YIi3N5Pb8RUeYieUuVNdXVI+j2ViWBLyd
 Iv0WLPH1BnEw3AvrJZ9Oc8NfkMldFnaR1hHcw7L303t4JDFfG1REeaIdpNpONQXcrBxD
 a8DpxmbmYI3+Oxjq+DpCbxQx3ttNJwo5dLDo5Kb/8gUJ+7hffNMGB8M6bY9c4bFGo+6N
 fGaw==
X-Gm-Message-State: APjAAAUyslWGgN16UPRKe4qc4gs+7tw6hE/MOd3+uQ/c8LFyyA4NjN/B
 qluidW6J8hBDEea9CaPMxyOi2w==
X-Google-Smtp-Source: APXvYqxAXI43awYbJUlo3tZn1JOtkzPnPJ5Kpu6uf5DsvNl0ikrAa2gpF4ov4OG9hj0nfcDVurgUjA==
X-Received: by 2002:a5d:6cae:: with SMTP id a14mr1830626wra.214.1557733482420; 
 Mon, 13 May 2019 00:44:42 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id h12sm9258467wrq.95.2019.05.13.00.44.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 00:44:41 -0700 (PDT)
Date: Mon, 13 May 2019 08:44:40 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Amelie Delaunay <amelie.delaunay@st.com>
Subject: Re: [PATCH] pinctrl: stmfx: Fix comparison of unsigned expression
 warnings
Message-ID: <20190513074440.GK4319@dell>
References: <1557732606-14662-1-git-send-email-amelie.delaunay@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557732606-14662-1-git-send-email-amelie.delaunay@st.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_004443_822374_372F4D7D 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Julia Lawall <julia.lawall@lip6.fr>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, kbuild-all@01.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAxMyBNYXkgMjAxOSwgQW1lbGllIERlbGF1bmF5IHdyb3RlOgoKPiBUaGlzIHBhdGNo
IGZpeGVzIHRoZSBmb2xsb3dpbmcgd2FybmluZ3M6Cj4gCj4gZHJpdmVycy9waW5jdHJsL3BpbmN0
cmwtc3RtZnguYzoyMjU6NS04OiBXQVJOSU5HOiBVbnNpZ25lZCBleHByZXNzaW9uCj4gY29tcGFy
ZWQgd2l0aCB6ZXJvOiBkaXIgPCAwCj4gZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtc3RtZnguYzoy
MzE6NS05OiBXQVJOSU5HOiBVbnNpZ25lZCBleHByZXNzaW9uCj4gY29tcGFyZWQgd2l0aCB6ZXJv
OiBwdXBkIDwgMAo+IGRyaXZlcnMvcGluY3RybC9waW5jdHJsLXN0bWZ4LmM6MjI4OjUtOTogV0FS
TklORzogVW5zaWduZWQgZXhwcmVzc2lvbgo+IGNvbXBhcmVkIHdpdGggemVybzogdHlwZSA8IDAK
PiAKPiBGaXhlczogMTQ5MGQ5Zjg0MWIxICgicGluY3RybDogQWRkIFNUTUZYIEdQSU8gZXhwYW5k
ZXIgUGluY3RybC9HUElPIGRyaXZlciIpCj4gUmVwb3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90
IDxsa3BAaW50ZWwuY29tPgo+IFJlcG9ydGVkLWJ5OiBKdWxpYSBMYXdhbGwgPGp1bGlhLmxhd2Fs
bEBsaXA2LmZyPgo+IFNpZ25lZC1vZmYtYnk6IEFtZWxpZSBEZWxhdW5heSA8YW1lbGllLmRlbGF1
bmF5QHN0LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtc3RtZnguYyB8IDIg
Ky0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpBbHJl
YWR5IGZpeGVkIHVwIGFuZCBwdXNoZWQuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BpbmN0cmwv
cGluY3RybC1zdG1meC5jIGIvZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtc3RtZnguYwo+IGluZGV4
IGJjZDgxMjYuLjNiZDVkNmYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waW5jdHJsL3BpbmN0cmwt
c3RtZnguYwo+ICsrKyBiL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLXN0bWZ4LmMKPiBAQCAtMjEz
LDcgKzIxMyw3IEBAIHN0YXRpYyBpbnQgc3RtZnhfcGluY29uZl9nZXQoc3RydWN0IHBpbmN0cmxf
ZGV2ICpwY3RsZGV2LAo+ICAJc3RydWN0IHN0bWZ4X3BpbmN0cmwgKnBjdGwgPSBwaW5jdHJsX2Rl
dl9nZXRfZHJ2ZGF0YShwY3RsZGV2KTsKPiAgCXUzMiBwYXJhbSA9IHBpbmNvbmZfdG9fY29uZmln
X3BhcmFtKCpjb25maWcpOwo+ICAJc3RydWN0IHBpbmN0cmxfZ3Bpb19yYW5nZSAqcmFuZ2U7Cj4g
LQl1MzIgZGlyLCB0eXBlLCBwdXBkOwo+ICsJaW50IGRpciwgdHlwZSwgcHVwZDsKPiAgCXUzMiBh
cmcgPSAwOwo+ICAJaW50IHJldDsKPiAgCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFy
byBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0
d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxv
ZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
