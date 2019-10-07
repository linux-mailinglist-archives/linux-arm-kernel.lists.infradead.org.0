Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13944CDB17
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 06:26:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vxf/mZDJ6bsEGfkNcCH2KzBtPeqrjzZDWGCtlcQbHH8=; b=XmkauNMXl710vH
	3iW3Sc/gFts7Er1tQvZ8RgpFtVTE6yZ1kwJafpQAH2dWOHFoCXx4XWNOECdzRjfhFFFbp2qsBK/91
	ZyniduYMobpetKoN7XZ3cOip5bcwJKftc/BL526GbwyJS/hkONcnGuGDfPqog7TsZagPF1dnf7m2l
	zubyfAGtyXyQJLlhKj4yntyXdtwqOGzqgjMVqvCkFZCggQsB/D8afaUaHy+7PgIngOUokfiqNTW9i
	LDJU8dGOwiDd9JXkqIeZZL+LB+IodleTDAW4Iw9HxrQXdcbkuqpJs5OxEafiu1lNz7clT3rChCZ21
	ifjSeCTmOE+kyZnNbWjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHKbO-0006JC-ID; Mon, 07 Oct 2019 04:26:30 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHKbJ-0006Ig-Fr
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 04:26:26 +0000
Received: by mail-io1-xd44.google.com with SMTP id c6so25535784ioo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 06 Oct 2019 21:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=9cn7hWNDSYfp5yXqFFW958D3/KZM4oLb6q2uNhX0rvU=;
 b=SUkPcE54QuOqWOsnTUJ9OupBTtoc/62vjs+pcRhRlW91ahBSnrBEF2wJljxoPdk46O
 GQNGPESN0Ff1RrPM/aD2eDoqVXb+yyUkqzRTseS2sSq2nQQwQqXYcdkqHqgpVj9DePe8
 tM9olm3uxcRFSegXNDygnKTMAuMofJXZ3P2N1WakZ6wdpqOh3yfXAI14bWRts8LxVczv
 XF8H7QDA1WLazodSRkecb3uBVrzIfNoErB7x0n+nImaKizevHEHlyp7pcZAZcbrqPrl2
 Jqe1KFZLSRNlUOZ2kuG5LaDeSZ4tMyZAc8YmsHCc2YMoeJY0aERGwrVx0T75kbkLfzFI
 +vgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=9cn7hWNDSYfp5yXqFFW958D3/KZM4oLb6q2uNhX0rvU=;
 b=m3otPKRZq+RQG4v5vtw2kkK/yK18BcvMTnWZkxrLYVZrtUw+hqyJc0B51gzzYsyqIA
 vQWcPTSkfiOF1t5ST1TaaTsK1QXWFoQsRzLRdk20N4UKzkrsayQqfvOsTKEIhH0bYa4Y
 ZlkXtfuMwTroJj3jJJwvnEVkQbUlKEQTDDJLxAgLVZ2OSammky+Th1yBzTDmyW9hbR/d
 VZGOJdW2npmu+nWIbW1111OB0b2FTIodhblybSOACklCuuEem1D3orOb6atdPiL+NvpM
 V4giccJf7iTd4WE2Hn/GXpruZXS0nWnqgq3GA0Ak1vsMYl1XjiSZD/KzBs44O/fNuI5p
 5HuQ==
X-Gm-Message-State: APjAAAUazyJBNWEczlrP1UJSsm2G25NyGdYMIUTkAN/CLo/E1Ah3E8ZJ
 R6LMTuBwrxx5njc/QneWUMex65F6HtDHXQX2FN0=
X-Google-Smtp-Source: APXvYqwNpG0DnS9E7tcNclPV8jO9ELB64ac4Ds2ETF8/Q67RH1TZJg0YKP6QP0J6Ls8/KN4ciXE8HHJrZwThDIB7Zh8=
X-Received: by 2002:a92:a80c:: with SMTP id o12mr25789967ilh.190.1570422383586; 
 Sun, 06 Oct 2019 21:26:23 -0700 (PDT)
MIME-Version: 1.0
References: <20191004190938.15353-1-navid.emamdoost@gmail.com>
 <540321eb-7699-1d51-59d5-dde5ffcb8fc4@web.de>
In-Reply-To: <540321eb-7699-1d51-59d5-dde5ffcb8fc4@web.de>
From: Navid Emamdoost <navid.emamdoost@gmail.com>
Date: Sun, 6 Oct 2019 23:26:12 -0500
Message-ID: <CAEkB2ETtVwtmkpup65D3wqyLn=84ZHt0QRo0dJK5GsV=-L=qVw@mail.gmail.com>
Subject: Re: drm/imx: Checking a kmemdup() call in imx_pd_bind()
To: Markus Elfring <Markus.Elfring@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_212625_555327_BE6A07A6 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (navid.emamdoost[at]gmail.com)
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
Cc: kernel-janitors@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Kangjie Lu <kjlu@umn.edu>,
 LKML <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Navid Emamdoost <emamd001@umn.edu>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Stephen McCamant <smccaman@umn.edu>, Philipp Zabel <p.zabel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFya3VzLAoKSSBhZ3JlZSB3aXRoIHlvdSwga21lbWR1cCBtYXkgZmFpbCBzbyBhIG51bGwg
Y2hlY2sgc2VlbXMgbmVjZXNzYXJ5IHRoZXJlLgoKT24gU3VuLCBPY3QgNiwgMjAxOSBhdCA0OjMz
IEFNIE1hcmt1cyBFbGZyaW5nIDxNYXJrdXMuRWxmcmluZ0B3ZWIuZGU+IHdyb3RlOgo+Cj4gSSBo
YXZlIHRha2VuIGFub3RoZXIgbG9vayBhbHNvIGF0IHRoZSBpbXBsZW1lbnRhdGlvbiBvZiB0aGUg
ZnVuY3Rpb24g4oCcaW14X3BkX2JpbmTigJ0uCj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIv
c2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvZHJpdmVycy9ncHUv
ZHJtL2lteC9wYXJhbGxlbC1kaXNwbGF5LmM/aWQ9NDNiODE1YzZhOGU3ZGJjY2I1YjhiZDljNGIw
OTljMjRiYzIyZDEzNSNuMTk3Cj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUu
NC1yYzEvc291cmNlL2RyaXZlcnMvZ3B1L2RybS9pbXgvcGFyYWxsZWwtZGlzcGxheS5jI0wxOTcK
Pgo+IE5vdyBJIGZpbmQgYW4gdW5jaGVja2VkIGNhbGwgb2YgdGhlIGZ1bmN0aW9uIOKAnGttZW1k
dXDigJ0gc3VzcGljaW91cy4KPiBXaWxsIHRoaXMgZGV0YWlsIHRyaWdnZXIgZnVydGhlciBzb2Z0
d2FyZSBkZXZlbG9wbWVudCBjb25zaWRlcmF0aW9ucz8KPgo+IFJlZ2FyZHMsCj4gTWFya3VzCgoK
Ci0tIApOYXZpZC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
