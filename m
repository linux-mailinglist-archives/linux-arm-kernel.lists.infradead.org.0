Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63968CCAB2
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 17:03:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:To:From:Subject:References:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T/tupNFbLCKX2CfwAkfKJfX795vS39SgEIrbBqnRCHw=; b=TJ/oXEoGFTunMZ
	OMW06+7amXissfTrHY3K9r46+/CpLctCYip+N8odPF9xN0woWtbfH5oMWbQLFMB/PWwtLh4k+mNnU
	RXNvhZU647r1QJZEIn0SMQoP/RMJHndW3XGpaN62qwJMIMzZ5cPJXap47qIMnt+aRUuAMqegv4D1i
	KpQr7umK1TAAHIiR9XlLyNO5By5Z2Ig3UPjZ401ws00gNffrn1/Rt8cIdICqHgaYbq35dXrvxnQIF
	mTp4aKzmwQ5YCxDnkMNkjhKlNYEQh1y1AhMGAbFNPVXkizQWjBiJB8LmpWKXSVRQjqX5YfaY2w1Wj
	tbbaq0UWOmegtUxvnvBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGlam-0003Qb-6u; Sat, 05 Oct 2019 15:03:32 +0000
Received: from mout.web.de ([212.227.15.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGlaf-0003Q7-3B
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 15:03:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1570287780;
 bh=nyYdbbFOVLBA5h5OHeTnZ5r7BtCXWWl3ElrsogOlzbQ=;
 h=X-UI-Sender-Class:Cc:References:Subject:From:To:Date:In-Reply-To;
 b=RAfjfK9t44dJR/c5J4bUNNHHA26rArZPFJX6zJbr8WrVZCC10OY08rSAfEn2pRe1r
 /9JDHc3+ukRDBQtA1SfAXDBdGDaBkWj5KoAFEyQSAjsAmEhynca877yiOW1d0carTU
 /mGmmVtYpmttuWY+GZ90NNGvcozM8RMqBa/Clc4E=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.135.178.111]) by smtp.web.de (mrweb002
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MD8VY-1iK1lo0u9k-00GdCf; Sat, 05
 Oct 2019 17:03:00 +0200
References: <20191004190938.15353-1-navid.emamdoost@gmail.com>
Subject: Re: [PATCH] drm/imx: fix memory leak in imx_pd_bind
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
To: Navid Emamdoost <navid.emamdoost@gmail.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-imx@nxp.com, kernel@pengutronix.de
Message-ID: <027fde47-86b3-35c8-85e6-ea7c191e772c@web.de>
Date: Sat, 5 Oct 2019 17:02:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191004190938.15353-1-navid.emamdoost@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:E1C7ZXn0sIkuGIHReU9/lVIcTt8hBkdC/Bp3sJ6tSh/0LrccdmX
 qJh3VHjQ04ml8iPbpXidujfenImPDZMGyw54HaqR+tZcWLGdpy20u/1KqQgLb4AX4VQU08O
 TCK4heuknQGbY+FUp9PP6m1+hQWg5yXIRKSe5m7LSdZegj7/Lc7lYeRnoTsxyBPFgbgY3EX
 34LLIjDb00xkaAdTfn75g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:LFzJ8fXGnDk=:elS2SnD1Bvlba4od2uwKrA
 K3zsanE8KpP/p7AnoMZccjRdWYN9F/OeeTITObKjUDg2mg4tIQvB6/d80HrlGvGHrossyiG+g
 EbpAWw101HOLqQKDSVdZ8zrYbSBWl8tB/v/ksWtD9Ou0pwIpyRmFc9dWihoEVC8UQRGo24RYZ
 pApz3h/B9TEtlb5IFSt6XzI7G7eEzDcCM+ETf06oJlGUMoWHb9j+1rRyjFvg9CT3NXQMy2L68
 CjHE0knGu4RLzfywKavfK29HD+5MOU3OMY6Da7L3lYZxqhR/OqpahTJW9x11nKzrg4HAGBJ8A
 5feIJEsEzsuZnzWCVm/mtvgVMNCjI772JiiJX9gH5awSonjtKXWlIL1IDCXUydm4wq+ossqRU
 xuBFW3Be197ruE8o0PpyYLSQrj+HSJRru0OpELTz/WeQFOLBQ9CiWUkpSutXySRhLh5gc8HmR
 DN4ZWV0F+SBz0zid5YirEQBJRYFlteZ9NdzILc9LwvzEMu770iimdS5OsabNcc2c1/mhBsniw
 3mo0DgN7ax39n38hIm3NRh3D4FmEyS9QqS8rot/mGXXBFrXS0hpHw1JqiuhcR9OcVqmFiFo1b
 i8SjHqJ/bT/HsnMh3219kYzax2EbLJMwKGacvbFB7aqNVr8Jtd07wptHRMyoGP1VHGZFvbcKR
 4zY/WjtI+AAjFHXiR5PzlLSFQuGSXJZhFvgi2lA7nhEc1qksrKGDTTikuqsPWORUGZT2SV4Wu
 rvBRpojj79tk+P9Mqof9fop/H3RIkVUysKEKPbx/vPz5bdbPCof4HKQaMEr9Q9Wf7nlyBVMcz
 9SPHcvn13QIHpJqABIYHZoVXMvA7cWUOMYtEzad4ZCMg6Swyh3RZIlj861MS9n9TW4n5LNV5y
 8jkSb0+7jPyoUJWVTURUbfkODQjFeK9+pCkzlLPBo0eTzRgefN9iisbtGgvE2Z3Go1Cu9WLQ/
 Zawc8uPYKeaHgI2o4gan963xxDh47q8ejXpDKtLjkwIzQM55NvANoFvknfZwpC+Qflj263Hxa
 kH2Uv6FVgecWsPCVNYO1kKNisCytVbfeTDxCWAM/sP2WIbWA9gilJnnF1tuxKtaR1CLWzn9aB
 mL+4gVAwUP97e2SuwaPh43wm8yclzpfIWFyQUhCcRskWU7R0YSZ+2Xymk8n2/nH5pKIX0Dn2E
 f0n9PndR3jJVdlvF6gT8M9X2Kc0OnLRv0ntil6Z/oVqpmm5zylplUi4/Aw9ov7rgOyDYT/GDz
 CgMCEnamLAqycsgeaA7gGFWb6gwwvXMYeBQjCcqEknJSXM2DKWS94jaMsULY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_080325_431630_D7719CF0 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.14 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kernel-janitors@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 David Airlie <airlied@linux.ie>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Kangjie Lu <kjlu@umn.edu>,
 linux-kernel@vger.kernel.org, Navid Emamdoost <emamd001@umn.edu>,
 Daniel Vetter <daniel@ffwll.ch>, Stephen McCamant <smccaman@umn.edu>,
 Fabio Estevam <festevam@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiBJbiBpbXhfcGRfYmluZCwgdGhlIGR1cGxpY2F0ZWQgbWVtb3J5IGZvciBpbXhwZC0+ZWRpZCB2
aWEga21lbWR1cCBzaG91bGQKPiBiZSByZWxlYXNlZCBpbiBkcm1fb2ZfZmluZF9wYW5lbF9vcl9i
cmlkZ2Ugb3IgaW14X3BkX3JlZ2lzdGVyIGZhaWwuCgpQbGVhc2UgaW1wcm92ZSB0aGlzIGNoYW5n
ZSBkZXNjcmlwdGlvbi4KCgo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pbXgvcGFyYWxsZWwtZGlz
cGxheS5jCj4gQEAgLTIyNywxNCArMjI3LDE4IEBAIHN0YXRpYyBpbnQgaW14X3BkX2JpbmQoc3Ry
dWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlICptYXN0ZXIsIHZvaWQgKmRhdGEpCj4KPiAg
CS8qIHBvcnRAMSBpcyB0aGUgb3V0cHV0IHBvcnQgKi8KPiAgCXJldCA9IGRybV9vZl9maW5kX3Bh
bmVsX29yX2JyaWRnZShucCwgMSwgMCwgJmlteHBkLT5wYW5lbCwgJmlteHBkLT5icmlkZ2UpOwo+
IC0JaWYgKHJldCAmJiByZXQgIT0gLUVOT0RFVikKPiArCWlmIChyZXQgJiYgcmV0ICE9IC1FTk9E
RVYpIHsKPiArCQlrZnJlZShpbXhwZC0+ZWRpZCk7Cj4gIAkJcmV0dXJuIHJldDsKPiArCX0KPgo+
ICAJaW14cGQtPmRldiA9IGRldjsKClBsZWFzZSB1c2UgYSBqdW1wIHRhcmdldCBoZXJlIGluc3Rl
YWQgb2YgYWRkaW5nIGR1cGxpY2F0ZSBzb3VyY2UgY29kZQpmb3IgdGhlIGNvbXBsZXRpb24gb2Yg
ZXhjZXB0aW9uIGhhbmRsaW5nLgoKIAlpZiAocmV0ICYmIHJldCAhPSAtRU5PREVWKQotCQlyZXR1
cm4gcmV0OworCQlnb3RvIGZyZWVfZWRpZDsKCuKApgoKK2ZyZWVfZWRpZDoKKyAJa2ZyZWUoaW14
cGQtPmVkaWQpOworIAlyZXR1cm4gcmV0OwoKClJlZ2FyZHMsCk1hcmt1cwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
