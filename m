Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC23D45E22
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:28:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aZTD7tMUYisgLgcyE4pATswl7W6oK52E/QRsdA7t35g=; b=oMba0UbFPeXfPj
	zHnDFUQBdngE688LeklHoSnVKQVTbaPV4tGmlVidEEoHku/QH1PfNZoh3fzrEQ7x1d9NprSP63hgJ
	SUeq9muTqt5MiflRCbQAHPKDhnHBhdARFRSpcXM9chSUrXPF3YhZgKZ1XVBc9P41aAacV7K6Y6yDk
	7ObZO2kx49cxjeXdvfaskGYZ6A1tdt3HYsyfrD9teRVuoHjlzepuN/uiWTwlWyyRzO9fYx6WRbyiq
	KxEiT3cCDiTMeEEB8UN6j1tV5a5pYbPeO8Y3N/PE6JR6jzlaP5mN4zyrWMxsyiNn7zNWPf6xHUh/g
	XLugJy10G4NOh4lwmQYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmFv-0002Iy-Kk; Fri, 14 Jun 2019 13:28:35 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmFj-0002I9-1a
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 13:28:24 +0000
Received: by mail-lj1-x241.google.com with SMTP id m23so2372442lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 06:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version:content-transfer-encoding;
 bh=JP80xhJ18NHJTNjcJo/Bl2P17GO3TeYYX7NMTL4bldU=;
 b=jCVPuxQ4FkNfKFICCJ64CLjzX0+2/2H8B3cvdNjNlaHJN3AGvmifoDziGRvHPB3bgH
 UfFkggC1blN1qF45kN3uCp/vUPVwn+JV4CJZc85fSxWXq/Ti/faPBRxBI9rzkV2lXulY
 bJ/DEz6FhlV4wqqB5jVVt5vtfkhWvrounG0i//kCKtY/9kUN9ncnqCs9ADEwPjmi40rS
 Q0LG3UZxOuI90zQgTl++h0vly8VtJ6vZHm6v8Urc/cvAfgg8JQ0ARw0AEimXmuE+IJZA
 /zlPF3ikSVP0kAvJpudoTzNTQTi6cFN5858U8g8CKebCNEulNlXVHBPofwwTthcl0O4K
 c+Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version:content-transfer-encoding;
 bh=JP80xhJ18NHJTNjcJo/Bl2P17GO3TeYYX7NMTL4bldU=;
 b=EQwY17+0ynGEGQeYTtVqkDpflVtE0NwK7KOKppjeOyWnvPdmq3AjPxWWgoMFXlnMDp
 qcbsx6mrcu92s1kG6FdDp7ig43czUDRiCrFsK+wh2UgRjDMmnNW+1qwET4/0dooQuzsI
 skhaLz9xhEnwWjdwauUGqwO8g0S5zAUJIp7ZyhBJyxxBN0m8b2TVSAHiWBTqRrv9+pzO
 qKX0WxX1ghMSgWML8smuxZ17bGeqhk16R3Y432r4YqvM/OZKlgqmS+fd4AL3HqvPYQKh
 k97TIdOkqo9XDdUoEVR0PbELpkJ6ywA92Nj/y8CNbleEelGikY7U2YwXQ6XN5jeKGYfk
 EQvw==
X-Gm-Message-State: APjAAAVRFbIaB2EV4tdMpFoySAOQfHYS+qS8SXR+rB5ixQYgHS6GzTrn
 cd8XRxxCNJP3RumzW1u1QXk=
X-Google-Smtp-Source: APXvYqztMxGSY6Lx00111C1VMpGUt2o8MjP80aHxfw8oK8R/O4efjZgP55gdmTrXrRjqaACcbG3gIQ==
X-Received: by 2002:a2e:9e4c:: with SMTP id g12mr25744328ljk.3.1560518899979; 
 Fri, 14 Jun 2019 06:28:19 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id b11sm597852ljf.8.2019.06.14.06.28.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 06:28:18 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Lothar =?utf-8?Q?Wa=C3=9Fmann?= <LW@KARO-electronics.de>
Subject: Re: [PATCH RFC 5/7] serial: imx: set_termios(): preserve RTS state
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1560514294-29111-1-git-send-email-sorganov@gmail.com>
 <1560514294-29111-6-git-send-email-sorganov@gmail.com>
 <20190614150551.1472b154@karo-electronics.de>
Date: Fri, 14 Jun 2019 16:28:17 +0300
In-Reply-To: <20190614150551.1472b154@karo-electronics.de> ("Lothar
 \=\?utf-8\?Q\?Wa\=C3\=9Fmann\=22's\?\=
 message of "Fri, 14 Jun 2019 15:05:51 +0200")
Message-ID: <87blz09tzi.fsf@osv.gnss.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_062823_120325_DAACE360 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-serial@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TG90aGFyIFdhw59tYW5uIDxMV0BLQVJPLWVsZWN0cm9uaWNzLmRlPiB3cml0ZXM6Cj4gSGksCj4K
PiBPbiBGcmksIDE0IEp1biAyMDE5IDE1OjExOjMyICswMzAwIFNlcmdleSBPcmdhbm92IHdyb3Rl
Ogo+PiBpbXhfc2V0X3Rlcm1pb3MoKSBjbGVhcmVkIFJUUyBvbiBldmVyeSBjYWxsLCBub3cgZml4
ZWQuCj4+IAo+PiBTaWduZWQtb2ZmLWJ5OiBTZXJnZXkgT3JnYW5vdiA8c29yZ2Fub3ZAZ21haWwu
Y29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvdHR5L3NlcmlhbC9pbXguYyB8IDEyICsrKysrKysrLS0t
LQo+PiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPj4g
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMgYi9kcml2ZXJzL3R0eS9z
ZXJpYWwvaW14LmMKPj4gaW5kZXggOGVlOTEwZi4uZGUyMzA2OCAxMDA2NDQKPj4gLS0tIGEvZHJp
dmVycy90dHkvc2VyaWFsL2lteC5jCj4+ICsrKyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9pbXguYwo+
PiBAQCAtMTU2NCw2ICsxNTY0LDEzIEBAIGlteF91YXJ0X3NldF90ZXJtaW9zKHN0cnVjdCB1YXJ0
X3BvcnQgKnBvcnQsIHN0cnVjdCBrdGVybWlvcyAqdGVybWlvcywKPj4gIAo+PiAgCXNwaW5fbG9j
a19pcnFzYXZlKCZzcG9ydC0+cG9ydC5sb2NrLCBmbGFncyk7Cj4+ICAKPj4gKwkvKgo+PiArCSAq
IFJlYWQgY3VycmVudCBVQ1IyIGFuZCBzYXZlIGl0IGZvciBmdXR1cmUgdXNlLCB0aGVuIGNsZWFy
IGFsbCB0aGUgYml0cwo+PiArCSAqIGV4Y2VwdCB0aG9zZSB3ZSB3aWxsIG9yIG1heSBuZWVkIHRv
IHByZXNlcnZlLgo+PiArCSAqLwo+PiArCW9sZF91Y3IyID0gaW14X3VhcnRfcmVhZGwoc3BvcnQs
IFVDUjIpOwo+PiArCXVjcjIgPSBvbGRfdWNyMiAmIChVQ1IyX1RYRU4gfCBVQ1IyX1JYRU4gfCBV
Q1IyX0FURU4gfCBVQ1IyX0NUU0MpOwo+PiArCj4+ICAJdWNyMiA9IFVDUjJfU1JTVCB8IFVDUjJf
SVJUUzsKPiBzLz0vfD0vCgpOaWNlIGNhdGNoIQoKVGhhbmtzLAoKLS0gU2VyZ2V5IE9yZ2Fub3YK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
