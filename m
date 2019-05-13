Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5871AF14
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 05:15:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AiPy0F1tjh2qnk/zDQdHBn5hYWU9UTseSyl28CE4EQk=; b=LWvs3bxv8IiztD
	HHu4H1lJnNM5V6RVWgamcw4ZPy3puwWh2gTzfV45wTKsf4JtGHY/0gnbJp+3ueMWDzuZodBJC8AsG
	7UT+ejnaNLLMDo/vDjGeRs5VPxqbu3DuEVzHvumzBPCxevYCR5gqXrU6oG4iTZNPXchv+mNKdqBE+
	vet/QGp3VIX5sz5virMY9aAdJx55a1SyQV3Xauk9Ee4gAIyHAfRnBq8jGtCMFMQxV5/CSNiRbw2Fm
	77cW4mU5YuF0wT7aqkZftaZEC46IDKqSZ5G6bAfJMwvUYFW8dfPb5cqdg2EoZERjlph3GpZQVadc6
	oF0mjDfhI/E38WvkyN0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ1RK-0007Qu-4W; Mon, 13 May 2019 03:15:46 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ1RD-0007QY-90
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 03:15:40 +0000
Received: by mail-qk1-x744.google.com with SMTP id z6so6301678qkl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 20:15:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Yd+HZMnsQ+5FsKeVzZLsE5zVu4hg4LnZqbae8xAM8eo=;
 b=X3JFlnTwX/NwbobzTjxupzz+FIc38NZWiimvaWfsTPwpogMtIMzPp2gxpMEFsSZMxT
 AtESXV2aBu4DC0RXIuz2dKlvXtjdjpbw6Znn0yCgkfC60DOSOtKfn4s8Doa6cN9Jj7Xk
 IF+OB6POOZMgw/TKhWizMAkUBbXV5wAXHzAS8a6VAodwOggWW8JeEoNmQvqaNs2PJMGo
 VwnivdC3KT4JIOCMKAS2NrzXYma94cZaXf2UUT7RL533tHn1OnfyqSmOr8laHWNfcK73
 ByXnmlpNjGR1EG9nCoImLTT6vnM7NlmrenoAKG/Va4iC5WPGc/p5xLSmyObXHiZYkNBH
 dcLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Yd+HZMnsQ+5FsKeVzZLsE5zVu4hg4LnZqbae8xAM8eo=;
 b=qhKqq3xChAKBsjVC9O9T16kiG6/3/7bXPYe9l8ilHfvGQ+ejiuBlyeflg310SQw0Db
 FmRfB6Fi5AAQn+xNje0vAiXMG1z7ox1OFzaD+AsV+Vz49EzsVAem1cMvVKq6p+bq5clr
 +CCA6/C2vExZ6utgnpH7O+g4JaQInBaNvnJvm+XU7oDuKJKfY7oGtN9mKxg2dK+HXtuQ
 neZLToTUSZ65vR5lY2+jhDgj9IG0p510C2PCmcZyASOzop1EgDPaE8tOJ0e8mpM5/s/R
 K4ovyaG7/ZbYg8VWXlJm5w90u6Aqu3HsWd5b6VooiygDjwQW7A8hsl7MU8uw9oqEtATo
 c8RQ==
X-Gm-Message-State: APjAAAWFFVdb3xGFzcOWGpsj6Ltgzo96yxxwvFMTJLD7F+G7NIe5/+v6
 kVA1XjSIp8PXwfDDwT7hCSk=
X-Google-Smtp-Source: APXvYqxlHSnuR40HD3WfHtCo8IyjnkzIu1nDKB3/VgfCw1ensYkYXwWlMXVkLTgynfwc29N6Bdv1kQ==
X-Received: by 2002:a37:ba44:: with SMTP id k65mr20420998qkf.209.1557717336791; 
 Sun, 12 May 2019 20:15:36 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:482:3c8:56cb:1049:60d2:137b])
 by smtp.gmail.com with ESMTPSA id
 h16sm4257104qtk.1.2019.05.12.20.15.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 20:15:35 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v2] ARM: imx: cpuidle-imx6sx: Restrict the SW2ISO increase to
 i.MX6SX
Date: Mon, 13 May 2019 00:15:31 -0300
Message-Id: <20190513031531.7879-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_201539_343977_DD7940BD 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: cniedermaier@dh-electronics.com, anson.huang@nxp.com,
 stable@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2luY2UgY29tbWl0IDFlNDM0YjcwMzI0OCAoIkFSTTogaW14OiB1cGRhdGUgdGhlIGNwdSBwb3dl
ciB1cCB0aW1pbmcKc2V0dGluZyBvbiBpLm14NnN4Iikgc29tZSBjaGFyYWN0ZXJzIGxvc3MgaXMg
bm90aWNlZCBvbiBpLk1YNlVMTCBVQVJUCmFzIHJlcG9ydGVkIGJ5IENocmlzdG9waCBOaWVkZXJt
YWllci4KClRoZSBpbnRlbnRpb24gb2Ygc3VjaCBjb21taXQgd2FzIHRvIGluY3JlYXNlIHRoZSBT
VzJJU08gZmllbGQgZm9yIGkuTVg2U1gKb25seSwgYnV0IHNpbmNlIGNwdWlkbGUtaW14NnN4IGlz
IGFsc28gdXNlZCBvbiBpLk1YNlVML2kuTVg2VUxMIHRoaXMgY2F1c2VkCnVuaW50ZW5kZWQgc2lk
ZSBlZmZlY3RzIG9uIG90aGVyIFNvQ3MuCgpGaXggdGhpcyBwcm9ibGVtIGJ5IGtlZXBpbmcgdGhl
IG9yaWdpbmFsIFNXMklTTyB2YWx1ZSBmb3IgaS5NWDZVTC9pLk1YNlVMTAphbmQgb25seSBpbmNy
ZWFzZSBTVzJJU08gaW4gdGhlIGkuTVg2U1ggY2FzZS4KCkNjOiBzdGFibGVAdmdlci5rZXJuZWwu
b3JnCkZpeGVzOiAxZTQzNGI3MDMyNDggKCJBUk06IGlteDogdXBkYXRlIHRoZSBjcHUgcG93ZXIg
dXAgdGltaW5nIHNldHRpbmcgb24gaS5teDZzeCIpClJlcG9ydGVkLWJ5OiBDaHJpc3RvcGggTmll
ZGVybWFpZXIgPGNuaWVkZXJtYWllckBkaC1lbGVjdHJvbmljcy5jb20+ClNpZ25lZC1vZmYtYnk6
IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4KVGVzdGVkLWJ5OiBTw6liYXN0aWVu
IFN6eW1hbnNraSA8c2ViYXN0aWVuLnN6eW1hbnNraUBhcm1hZGV1cy5jb20+ClRlc3RlZC1ieTog
Q2hyaXN0b3BoIE5pZWRlcm1haWVyIDxjbmllZGVybWFpZXJAZGgtZWxlY3Ryb25pY3MuY29tPgot
LS0KQ2hhbmdlcyBzaW5jZSB2MToKLSBTaW1wbGlmeSB0aGUgY29kZSBieSB1c2luZyB0aGUgQyB0
ZXJuYXJ5IG9wZXJhdG9yIHNvIHRoYXQgdGhlCnBhdGNoIGNhbiBiZSBiYWNrcG9ydGVkIGFsbCB0
aGUgd2F5IHRvIGtlcm5lbCA0LjQKCiBhcmNoL2FybS9tYWNoLWlteC9jcHVpZGxlLWlteDZzeC5j
IHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLWlteC9jcHVpZGxlLWlteDZzeC5jIGIvYXJjaC9h
cm0vbWFjaC1pbXgvY3B1aWRsZS1pbXg2c3guYwppbmRleCBmZDAwNTNlNDdhMTUuLjQwMTZiNzE3
ZGExYiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vbWFjaC1pbXgvY3B1aWRsZS1pbXg2c3guYworKysg
Yi9hcmNoL2FybS9tYWNoLWlteC9jcHVpZGxlLWlteDZzeC5jCkBAIC0xNSw2ICsxNSw3IEBACiAK
ICNpbmNsdWRlICJjb21tb24uaCIKICNpbmNsdWRlICJjcHVpZGxlLmgiCisjaW5jbHVkZSAiaGFy
ZHdhcmUuaCIKIAogc3RhdGljIGludCBpbXg2c3hfaWRsZV9maW5pc2godW5zaWduZWQgbG9uZyB2
YWwpCiB7CkBAIC0xMTAsNyArMTExLDcgQEAgaW50IF9faW5pdCBpbXg2c3hfY3B1aWRsZV9pbml0
KHZvaWQpCiAJICogZXhjZXB0IGZvciBwb3dlciB1cCBzdzJpc28gd2hpY2ggbmVlZCB0byBiZQog
CSAqIGxhcmdlciB0aGFuIExETyByYW1wIHVwIHRpbWUuCiAJICovCi0JaW14X2dwY19zZXRfYXJt
X3Bvd2VyX3VwX3RpbWluZygweGYsIDEpOworCWlteF9ncGNfc2V0X2FybV9wb3dlcl91cF90aW1p
bmcoY3B1X2lzX2lteDZzeCgpID8gMHhmIDogMHgyLCAxKTsKIAlpbXhfZ3BjX3NldF9hcm1fcG93
ZXJfZG93bl90aW1pbmcoMSwgMSk7CiAKIAlyZXR1cm4gY3B1aWRsZV9yZWdpc3RlcigmaW14NnN4
X2NwdWlkbGVfZHJpdmVyLCBOVUxMKTsKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
