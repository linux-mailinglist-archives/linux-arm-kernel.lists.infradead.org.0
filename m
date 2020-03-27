Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D36719582C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 14:39:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/8sTHFcnPY+Jtj5GHVG4SrenmP81dc67gyyvSe1opw=; b=Hb3owOzR5HaPZ+
	dGWpEaMKWlYIJ5YMnFCQZhuO3D9EIbJQcaCh46mKgTvmN0fZakeXwxQmFz/kRjNQkYdYMlft6M0ns
	PFXG1R/zGmuArOE+zC2rW83tFKnYUMAhvVy+8RIfWblor6W4+0Me9B/MKoaEKzU9V8AWD5d4t9Aka
	doBH25kx+rsP5TgelHVrepnaerAe9bEa7LIuSjks/Wpo4Bvrqui+da5JkO+8cKNRYo6xIUCw3BudI
	XeDDzZDaSkioHjJqaa0HI/VDhKQim0gSbBTu4+cjSfolGTUVqYvpYmnw5NrluFJBJdpjUvYm26snJ
	+h4uWXJHq55Zju0Gh+sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHpCO-0006sb-4Y; Fri, 27 Mar 2020 13:39:00 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHpCF-0006s5-Ge
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 13:38:52 +0000
Received: by mail-lf1-x144.google.com with SMTP id j17so7865108lfe.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 06:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ktoFLTl+SiHjdeYjmUkpK9hrJY3+Oe8wkzBGOActYTk=;
 b=lx+q0lb0W+7S7Len7fPx6e9dWZYPM85R50lBsShJdN865A1XupzGURd9Y2MhQ4K9Zo
 nDf6zxAc3NIZVCgKzjA0xEs8h+nq3S6ED1SGZXr/pZGGJN2bgqcIQhDGqUSFxBi6dX54
 QIjPQEInhDGH1fNK5yF1tj6lhNTbTvs3I13pshFbKHSH0PFJ4scBDCtFbUxLlpPQUwUz
 Q6jOOd4RSSWGZtInSAbmdaVw4FMuPxSVPH2mVkOPyfwruEF9ppA52pwmylD9MoHXuQY3
 crS4dgFTjO0bua73nToPghR8zOkr7WPrZWXNmp3V6wPJNwl0wieLseFt9AOUln7p0kzI
 4sIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ktoFLTl+SiHjdeYjmUkpK9hrJY3+Oe8wkzBGOActYTk=;
 b=T9BJwW4XBB6xQBsjKbqE0b4li2PlQJbCuvQK36fZzyzz7IHuoA7iFvbSMaizBS5Kh7
 wqrLMSUfQVuMSu2t7UW1J5vAtkcHePku7JcJFS3YorJzS/M3Mtj/18BFeBzduBdr3dgr
 Oo64bAphfoHK8DCklcaVfvdj+PhGNaXkRZjqjoEMOT/mW4JH+ZWHM9Xw5GmFuhpeeuDK
 +sLx9TdqsANpgXk0GBYVuzUVqrlyV/O/mkz9HAteLSqSjTjauzy+sjIqtM5PquVvgYPt
 ucW4mPmnwnPBEFeawcOyD5CeYlYSje4VKFLKEDsbgIz8cpnjQIfpVynEE2/XDpCURYSV
 GtMQ==
X-Gm-Message-State: ANhLgQ2CT6UjFcrzpaIjqRg48aqeYARPz7rkkN93TQ+4jsCwWWq7uejF
 rCkTdSs9qPpjmdqIFNbB+o7IwMtNjYxK03n2oYE=
X-Google-Smtp-Source: ADFU+vt3o+uQeUmHt+vtY1/5JnCSgIhwCmkRGL4BdUacTzyIYJ+bmGtKTwbDk2d4g4HApzyL6V+qlEr3pksMzOGi6k0=
X-Received: by 2002:ac2:4c3b:: with SMTP id u27mr8702633lfq.7.1585316329737;
 Fri, 27 Mar 2020 06:38:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200326134956.21868-1-festevam@gmail.com>
 <OF4BB33AE9.0E2383E2-ONC1258538.0049F4E6-C1258538.0049F4F7@phytec.de>
In-Reply-To: <OF4BB33AE9.0E2383E2-ONC1258538.0049F4E6-C1258538.0049F4F7@phytec.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 27 Mar 2020 10:38:40 -0300
Message-ID: <CAOMZO5AjMwg2PEDxRYUCUwZe8meG-_u_xKAA+g27eQYW70L04g@mail.gmail.com>
Subject: Re: [RFC PATCH] ARM: dts: imx27-phytec-phycard-s-rdk: Fix the I2C1
 pinctrl entries
To: =?UTF-8?Q?Stefan_Riedm=C3=BCller?= <S.Riedmueller@phytec.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_063851_554652_CDC07E03 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Sascha Hauer <kernel@pengutronix.de>,
 Christian Hemp <C.Hemp@phytec.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3RlZmFuLAoKT24gRnJpLCBNYXIgMjcsIDIwMjAgYXQgMTA6MjcgQU0gU3RlZmFuIFJpZWRt
w7xsbGVyCjxTLlJpZWRtdWVsbGVyQHBoeXRlYy5kZT4gd3JvdGU6Cgo+IEkgZG9uJ3QgaGF2ZSBh
IGJvYXJkIGhlcmUgZWl0aGVyIGJ1dCBJIGNoZWNrZWQgdGhlIHNjaGVtYXRpY3MgYW5kIHlvdXIg
Zml4IGxvb2tzIGdvb2QuCgpUaGFua3MgZm9yIGNoZWNraW5nLgoKSSBoYXZlIGp1c3QgcmVzZW50
IGl0IHdpdGhvdXQgdGhlIFJGQyB0YWcsIGFkZGVkIHN0YWJsZSBvbiBDYyBhbmQgdGhlIEZpeGVz
IHRhZy4KClBsZWFzZSByZXBseSB3aXRoIHlvdXIgUmV2aWV3ZWQtYnkgaWYgcG9zc2libGUuCgpU
aGFua3MKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
