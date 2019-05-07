Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AA6166D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 17:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uFwN2HzUQY0oDo+zQ8iV5+yJmVjekeXckuDOIN6C9vg=; b=lABeAxKqo6dnO8
	7oxwejmSCT4Odgdq/7M3U87H8jfsVBwyf0XFuTDnakgrtAZG99XLIuKXR4Tzjgc6OGDjdTD7Cmz5g
	hB5xJJRifknRjnQ+dXhvcCfcZuHRgpLVmib6u3JaOZWMjI21I3WJ3YVDXkMV51eWNNbATbdpnjTtJ
	YIrwp6tt1kckjTeujRWgRmbdNBnTlzYVJtIqYIRvRpk2fAfTHwSaB1eI795JIl6SB5HOzFVptMzpq
	gkqIPGRgNtDay5WOc+eeRUiQrcs/b3RLy/7zl0FuyygPjOPyzjgyfAh2cBcVtSt+PnjSflV7OYRhb
	julD2tdW7qbVJ59ucd6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO27L-0007lt-4Z; Tue, 07 May 2019 15:34:55 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO27D-0007lY-GN
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 15:34:48 +0000
Received: by mail-lj1-x243.google.com with SMTP id k8so14738384lja.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 08:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zVPm+iA8UXfnyytWDD0bNAyKVw8r/B8z7jwx9A/Rbus=;
 b=OFC/zfgB3JVNqG9xBB4T7ZJLwevlNgQAhHLrrCGHo70ZSK1aA9+jvfeYxjsvax4RIp
 QFQWQ6MkBpKOu0oFf7EkN5Lxt1qt3OUnLqDa/E4XMHuhtCDQag13uZ+7fU+zZQaxTWRV
 3kb8VhUYCevaBOA1V+WzT2ygwHjHQKExj5iLc2oALlUOWpOriru0Iku4IW6dlNUXGFn5
 1Q8pFLTpxnCZB/JRNu2WvCSnntc4A3t83IkBmVBkRdR+0bfPjGhTLgKU7K1DmZ2e1uQ/
 Z98tnaxiU5wJ7E2zvyraa1dOZ1P0qVQ4iXNKNgeq5yZQAEXzAkjiJLHKRWD0hZOa6eZL
 DDpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zVPm+iA8UXfnyytWDD0bNAyKVw8r/B8z7jwx9A/Rbus=;
 b=Pwx2PSTpnHxTM7iG0y0fXl05Mt7HSRzaMWaUHlaGw535EFiT77U34wHMaMX9FvwSEh
 6+smXN8ogUDHea5s6Csd1VXxSXpoo5vOZSDm4y7wfXFArKAoDPSPjOybZEisWHpv2RcV
 c8pm8JybM9tQoKdl++Cq7DeZzMdkHqXNR/qvbzr+gyV0xoPFG2w7GDgYtaO5uyTJjcCo
 j8UqvaDwVrOoNno6Zng4PkoAJ3GE4YBwPuzzH5r+iIoCmhlXdBXkM8D/tAAhM//Y9LJ+
 5b6gAsVhWGSYsq8BoptdCoTO1wvJm+eP/zEEGRgBG6QRrA+X/g0VnqB1hW27ix/aeLe/
 WuzQ==
X-Gm-Message-State: APjAAAXJPatKWm/XlRDFbOgbnPlY4abeG35pm1hIScl4Hvo14AHin5Hp
 GlnR1ljX1p2xq/MbNeyjGCCeOyRrYTt4c1jWJ10=
X-Google-Smtp-Source: APXvYqxjikTtYXoUUvyDuWS3S+iQSmIeLX+KO7rhcOaHnuFa7qaK3eqAbOCl2ZZq/GAnYu4xaDb1G8ncZRoHtYmR3B4=
X-Received: by 2002:a2e:9188:: with SMTP id f8mr15331839ljg.100.1557243285680; 
 Tue, 07 May 2019 08:34:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190507152713.27494-1-sebastien.szymanski@armadeus.com>
 <20190507152713.27494-2-sebastien.szymanski@armadeus.com>
In-Reply-To: <20190507152713.27494-2-sebastien.szymanski@armadeus.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 7 May 2019 12:34:48 -0300
Message-ID: <CAOMZO5Ca7tZAb0vO8ZM1oKR2UXNV_KqcJ7oxeiV3kkb7=2jQBA@mail.gmail.com>
Subject: Re: [PATCH RE-RESEND 2/2] ARM: dts: opos6uldev: use OF graph to
 describe the display
To: =?UTF-8?Q?S=C3=A9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_083447_541595_BBAA3960 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 stable <stable@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU8OpYmFzdGllbiwKCk9uIFR1ZSwgTWF5IDcsIDIwMTkgYXQgMTI6MjcgUE0gU8OpYmFzdGll
biBTenltYW5za2kKPHNlYmFzdGllbi5zenltYW5za2lAYXJtYWRldXMuY29tPiB3cm90ZToKPgo+
IFRvIG1ha2UgdXNlIG9mIHRoZSBuZXcgZUxDRElGIERSTSBkcml2ZXIgT0YgZ3JhcGggZGVzY3Jp
cHRpb24gaXMKPiByZXF1aXJlZC4gRGVzY3JpYmUgdGhlIGRpc3BsYXkgdXNpbmcgT0YgZ3JhcGgg
bm9kZXMuCj4KPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZyAjIHY0LjE5CgpUaGUgQ2MgdG8g
c3RhYmxlIGFwcGxpZXMgdG8gYnVnZml4ZXMsIHdoaWNoIGlzIG5vdCB0aGUgY2FzZSBoZXJlLgoK
V2l0aCBzdWNoIHRhZyByZW1vdmVkOgoKUmV2aWV3ZWQtYnk6IEZhYmlvIEVzdGV2YW0gPGZlc3Rl
dmFtQGdtYWlsLmNvbT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
