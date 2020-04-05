Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5239C19EB08
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 13:53:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CnjAGz7fc+DOT+tnmBMbMBJkAOcuUfgDZcN5X7yCl8I=; b=VWasM8v5Zjh5Ox
	l70fpxDicbbVmZhMuM03GLUUcZ0AKYeVAbNcHmJd6snv1ub/VDYO2uC10HTgQWGVtPK3kOhajHEen
	333QEXxMEUGsXWYnbWfFy4OY+31hw324HSBjbhMAv5Uqz7inEPn0+xdnczRtafYkeSt6g7zRPhfWi
	0ZrqQveZj2vV2OBhLsgZXrNLqO/ErCsjgm/HynR8ouLkDo4IY2350UTeE/2xFitfzNya48xKGaCQV
	CsV8YHsEbYBIWSEgflkfZNQZNRGKWAp+Telsi9auI4y8jH1QOwNZUts7/bQIYBPxysYJg0v80/XW8
	0WWG3Pzc9CJDx4F5uxww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL3qI-0001pY-W5; Sun, 05 Apr 2020 11:53:35 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL3qB-0001p8-Be
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 11:53:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1586087587;
 bh=Hf4QxDJCmHNBC6qlSFJzT9L1HKYEOwOMt1vEf6j5cJw=;
 h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
 b=pIRrSGvHQcfnjtElTYwW1zasDm+Urd5HgsRN78o3ClwwHheLSmpdLn2aDeWAnrrqa
 +vsyb3S6G1vG9O8G/4lzkyayt0BxeGEWCz+S8bvInWH0hjWU2Qzdq1OWROuAW5tz/C
 FrFn1T4rGFspd8DtlZ/Hfb1rnl4E8A9ULmlQgUR0=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.3] ([93.131.99.70]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0LyUsk-1jI9Kv2HRu-015rIK; Sun, 05
 Apr 2020 13:53:07 +0200
To: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Maxime Ripard <mripard@kernel.org>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] drm/sun4i: tcon: Delete an error message in
 sun4i_tcon_init_irq()
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <5a6cf5a7-3f27-5425-4d6a-550a17bc51e3@web.de>
Date: Sun, 5 Apr 2020 13:53:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:fRn43AcuPne3w02+4J5nGpQ+T+/hv1B5xzV9Kf7jxpytGr5Ec0U
 HYjgiJaebLmqmwzT8SprLl882GW95mkMbmSYkymx17hmNYoWlWqpRzsz0k33MMHrsnR7ro+
 6z2vpmbxYywrRv23IRXno7QE6k4fJL042z5wbUgXlzW+VYWDIHrvvnkToKTF/5swvrorQ/s
 xbOIABzeZnCvI85fIsauA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pMH/DhgRn9g=:66FP+HvR5j6VW2hmFwM7Ot
 QRSvi93K/sbowoUi+T9hr9P8K/1JlQjSjJZNc1B9jEMZjJ+83ItEIsNwLSN2ly3hDYrN0m8oK
 wKhUK6uRWPtALKs0kkHBGlW0fz4d0m/xNe09HHnlB32KiW1VXKWfJ9cV20hUf5Iav01Chqt3+
 QohXdvHSA5cWe31mj9/ISb+iYs1isjeNWSRTg/OT9bhEAS1bTYO17ZsLHhf23SBoDwV0CDIDM
 N7+gYDM2+IoFEY/1BjDJalJrC6wxTFy5hA5O/sSrvgDQqc7bEXbcNRwWpuJFW0Rlrvbm1AUyg
 s6M41duQ9RPU6f2FTgm7GN0HAXosF776F1izeRupAPFRt9Pj5JEPLhtapx0brwiEwAoKOUpDe
 RkilvZ7PMespS8FfQiqU7LFEQx26TWTfp405b/zuyA9/MK8eaRDVOtxOQF0eX1p68vNX8cRY5
 iuj9wwHOvJqTu/n5SMv8PfG6XMtgisq8R0x47qdOx2XHEpAQ/ANNb03ESSrwc7Xqa/GXLcMG9
 ANjuxQ98xq4PpxbH2YeTUiCRHFwlVKJWZfcZAszqJPdHFBJ42q9JdxF4lG2JHV5p/I+quJlG4
 QozyzId5W8bZKmUxJztGrcYUSTDz4cCoChUk2Qj7QhUHBX0DSrsYCN+Km3TCASodGnMffcA1C
 yMRPrE125xGP6OYoUrWRVOi3iqTtQ6l1ra+f8qf/o1ukxr1biYfqZ9dkEjrt0XGfd4QhBCqi5
 VfkD7zljgT43p6RRFGb/U3ESqmurds8sbYKsNqykAhkEulDsNhvTTEMj3T28rCWFInrYOEtlN
 1XXLiAjh+mhElTP1zaVd2YMWojqFBjFg4xTA1y62ArpsqDnQ7+fSAN2c2pPL1zBOa0wegT4SD
 cwLsu4m4bLiQl/APUEV699P4d3KbE9k3TFG35M5TRSuI23CF093QcMh4SWWn6pVbZHv19344s
 Ld1MG7y1Fz1si8ocRcCiwhydQWT4gbXAWKx8W1HzWIr3LFCCrU1a6ORfMLBXz8K7JgEH3NUC9
 qRPwelRILsjOxDjqtZReP9HYF2X4KbI8mftROYt1MlOMcgIv9acjMzzFUF+tsoY9JmcbwhQ3Y
 A7J7P5chX30gCSkST35Lq99tNZAq/zTcwJgpum3uE8RpfK3OPtja6/2YRVE19oLS5SlfuGE8Q
 TG613XLKR01QZU6Dwf5zNwMHCyKxMYikc8jHDtV7j62dixWj7eIFpSlm+9Y7jwOHPco1KoiWq
 ioWs55lKV4KsOGx8Z
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_045327_697831_515CDBED 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.12 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [markus.elfring[at]web.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.17.12 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Tang Bin <tangbin@cmss.chinamobile.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFya3VzIEVsZnJpbmcgPGVsZnJpbmdAdXNlcnMuc291cmNlZm9yZ2UubmV0PgpEYXRl
OiBTdW4sIDUgQXByIDIwMjAgMTM6NDU6NTMgKzAyMDAKClRoZSBmdW5jdGlvbiDigJxwbGF0Zm9y
bV9nZXRfaXJx4oCdIGNhbiBsb2cgYW4gZXJyb3IgYWxyZWFkeS4KVGh1cyBvbWl0IGEgcmVkdW5k
YW50IG1lc3NhZ2UgZm9yIHRoZSBleGNlcHRpb24gaGFuZGxpbmcgaW4gdGhlCmNhbGxpbmcgZnVu
Y3Rpb24uCgpUaGlzIGlzc3VlIHdhcyBkZXRlY3RlZCBieSB1c2luZyB0aGUgQ29jY2luZWxsZSBz
b2Z0d2FyZS4KClNpZ25lZC1vZmYtYnk6IE1hcmt1cyBFbGZyaW5nIDxlbGZyaW5nQHVzZXJzLnNv
dXJjZWZvcmdlLm5ldD4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuNGlfdGNvbi5jIHwg
NCArLS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDMgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjRpX3Rjb24uYyBiL2RyaXZlcnMv
Z3B1L2RybS9zdW40aS9zdW40aV90Y29uLmMKaW5kZXggNjI0NDM3YjI3Y2RjLi4zNTliNTZlNDNi
ODMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW40aV90Y29uLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjRpX3Rjb24uYwpAQCAtODEyLDEwICs4MTIsOCBAQCBz
dGF0aWMgaW50IHN1bjRpX3Rjb25faW5pdF9pcnEoc3RydWN0IGRldmljZSAqZGV2LAogCWludCBp
cnEsIHJldDsKCiAJaXJxID0gcGxhdGZvcm1fZ2V0X2lycShwZGV2LCAwKTsKLQlpZiAoaXJxIDwg
MCkgewotCQlkZXZfZXJyKGRldiwgIkNvdWxkbid0IHJldHJpZXZlIHRoZSBUQ09OIGludGVycnVw
dFxuIik7CisJaWYgKGlycSA8IDApCiAJCXJldHVybiBpcnE7Ci0JfQoKIAlyZXQgPSBkZXZtX3Jl
cXVlc3RfaXJxKGRldiwgaXJxLCBzdW40aV90Y29uX2hhbmRsZXIsIDAsCiAJCQkgICAgICAgZGV2
X25hbWUoZGV2KSwgdGNvbik7Ci0tCjIuMjYuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
