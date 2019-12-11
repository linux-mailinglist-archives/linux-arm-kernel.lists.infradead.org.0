Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4321711A679
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:08:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=td4iCnsOQKqLfWc0qr0n1aUOJSTJWuy/y8DGdOA+J24=; b=tY6nYcK2oRhnTo
	7TguufGgO18M9zsNjX+IMn5JwRSHwHA93hpDNmuJMJYYQ2BI0ho/SHIVKUFpc1RTSam/VA7U55NnJ
	Co46rqctMsvIvv+YEgtogfPumdl4y5wM6zRzkoBIyX9dYj3azpAt1rTGXF/A/ZXGkjLrSgDnIRsqR
	jgshXHI41G55ZzGzPQxhhvZDZ6vYJmYYPDkudTYoJK1ZUZ3eMaWn25PLrkS9bidrGSgys6/KO+HaN
	/HqE1o6dyHsE43OBfv5Hjpl0jtOv8cje3eQ8Zk5ZjcUavsdEfF0tNkWNlzsKUzjXo6YmIYVf2opNa
	XPlZvHsHtXh77b7iKQmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iexyb-00073e-Qm; Wed, 11 Dec 2019 09:08:09 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iexyT-00072l-5V
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 09:08:02 +0000
Received: by mail-qk1-x741.google.com with SMTP id w127so7228185qkb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 01:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+1+2OzonF8JaI5zb2TCQGTWjY1hWFqWalCfMdztL7bw=;
 b=S60wH1RHuXQ8mOnPL0RhPKzQIGXltV0Cv9h00AH+VYro56n5frUBSr4jG3994daVvT
 V+vThx0M+M5TKEPRP7rKgYkWR9SLOxLfctebgbS4/teJyPdNqlqYK9Sqae4OYe3pOZfj
 RbOKuXYBl+rwcuW9scJiI3DZUILjSRdRChb2cUjEMEG/J6gALdSSdCrSN73Zs+Oaq7Ld
 ncsVZLJRCCbXDi37Bkc0aQABg2eiqLVtoela5xrLAMI6eSLhlktSHK/xO5UF2xLQLYer
 yMxhiSsTvhVSoG04ZT4mwPZHx/2a+Y7mdi6v2EwwgKDOC/A2904us+0B2fJX/ZY9l4Bm
 hO1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+1+2OzonF8JaI5zb2TCQGTWjY1hWFqWalCfMdztL7bw=;
 b=VC3P8XXEPjVxHd+9nEIr1jH2pLOYrbSTsRY/zuplS7Fv91X3do9ZDyiZJIpGXZOb8i
 nfiP3AEMcpNjudPCuLgRTU1+W9XBFcGhFI/euOywrmtj9ZkanbgUY3s6wIjGjWC0ke+A
 rPsRELrfO8ooZZus9EUCqpDAn9q26e5BIypBenM1d2XTzEoZdX2IKqSFra7NvkKChrRP
 ufCeqwmcW9fXmMFGhxKeT56ksW1o6WEr0TPSnphsQw8NM9mDmS5SmEXo5AHeTYgKq9JC
 uXYBgxBWIopBKEV9dy4TUOrHqXmM3J5+h5BYUFUas3LyivHhM3EbE353+PszVoa8Uz/N
 MOOg==
X-Gm-Message-State: APjAAAXyBjDHTLWEmZoiGD48QhCkBAEs1lR7FEhI4Fv7zMbwm6AriKn+
 ye/9z2do/bQUUuikaC4MlD+soKCCwuWLvtt8aAdJ1A==
X-Google-Smtp-Source: APXvYqxo51nvYaIkggIMq8ITtXp9gbKNulM8Wmtc5DRGjuFLLqvLJhg/1ssY8su+0/x7Vipo/ClbnBGeVsB5uoQ3mKs=
X-Received: by 2002:a37:6255:: with SMTP id w82mr1919216qkb.330.1576055278589; 
 Wed, 11 Dec 2019 01:07:58 -0800 (PST)
MIME-Version: 1.0
References: <20191210202842.2546758-1-arnd@arndb.de>
 <f6a514d1-44cb-4577-af07-fd2f3fefc974@www.fastmail.com>
In-Reply-To: <f6a514d1-44cb-4577-af07-fd2f3fefc974@www.fastmail.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Wed, 11 Dec 2019 10:07:47 +0100
Message-ID: <CAMpxmJUD8A1qtmZmOxAq3XojFG5LHu_DS94LC7orinz_O9zY=A@mail.gmail.com>
Subject: Re: [PATCH] gpio: aspeed: avoid return type warning
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_010801_207567_6F9F053B 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-aspeed@lists.ozlabs.org, Arnd Bergmann <arnd@arndb.de>,
 Linus Walleij <linus.walleij@linaro.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, Joel Stanley <joel@jms.id.au>,
 Hongwei Zhang <hongweiz@ami.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

d3QuLCAxMCBncnUgMjAxOSBvIDIzOjEwIEFuZHJldyBKZWZmZXJ5IDxhbmRyZXdAYWouaWQuYXU+
IG5hcGlzYcWCKGEpOgo+Cj4KPgo+IE9uIFdlZCwgMTEgRGVjIDIwMTksIGF0IDA2OjU4LCBBcm5k
IEJlcmdtYW5uIHdyb3RlOgo+ID4gZ2NjIGhhcyBhIGhhcmQgdGltZSB0cmFja2luZyB3aGV0aGVy
IEJVR19PTigxKSBlbmRzCj4gPiBleGVjdXRpb24gb3Igbm90Ogo+ID4KPiA+IGRyaXZlcnMvZ3Bp
by9ncGlvLWFzcGVlZC1zZ3Bpby5jOiBJbiBmdW5jdGlvbiAnYmFua19yZWcnOgo+ID4gZHJpdmVy
cy9ncGlvL2dwaW8tYXNwZWVkLXNncGlvLmM6MTEyOjE6IGVycm9yOiBjb250cm9sIHJlYWNoZXMg
ZW5kIG9mCj4gPiBub24tdm9pZCBmdW5jdGlvbiBbLVdlcnJvcj1yZXR1cm4tdHlwZV0KPiA+Cj4g
PiBVc2UgdGhlIHNpbXBsZXIgQlVHKCkgdGhhdCBnY2Mga25vd3MgY2Fubm90IGNvbnRpbnVlLgo+
ID4KPiA+IEZpeGVzOiBmOGI0MTBlMzY5NWEgKCJncGlvOiBhc3BlZWQtc2dwaW86IFJlbmFtZSBh
bmQgYWRkIEtjb25maWcvTWFrZWZpbGUiKQo+ID4gU2lnbmVkLW9mZi1ieTogQXJuZCBCZXJnbWFu
biA8YXJuZEBhcm5kYi5kZT4KPgo+IEFja2VkLWJ5OiBBbmRyZXcgSmVmZmVyeSA8YW5kcmV3QGFq
LmlkLmF1PgoKQXBwbGllZCBmb3IgZml4ZXMuCgpCYXJ0b3N6CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
