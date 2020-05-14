Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D231D3EEB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 22:21:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mzJQRS4gvGGUMPEY3ynTJ7cw9lEYGhyfyc94OUd3QQ4=; b=gWckd6ad1XX1g9
	CjWvH8Jw+RCr5+YgQV6c9s8mgHndc2XRI5z/R52TuF/fZ/Msj+4LfUkCWxa7mYe/zOJZ44idKCqu1
	iysjz8vPj25cHfn/KUoWJyVOS2T9xncetz9cyjaei86LDVKCX3ikDqylhYNi2u4UFlbB3loPIdS2d
	aw8abaaE58BXmxGuSKjM2GLpw/lKhLShxAVm2ZPEEtUIX/6kF+LK+hyXkwwlq8wYTnoIlxcmbjmRB
	U3E+1J6e466yHe/7B2y7iG7JeoRop3gLsAa9YQoOuFaPZiAB+Iq8CAj1YtDQNcu3pe1RZjoqm3po2
	XKvIzpR60S4lXX89w8jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZKLx-0001pi-Pb; Thu, 14 May 2020 20:21:13 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZKLg-0001n5-TZ
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 20:21:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1589487655;
 s=strato-dkim-0002; d=chronox.de;
 h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=t8MuLBhVs0CMy4EvOYJ57JJKkaJSMB56O8oh0kRWzwM=;
 b=GoxLVI3HiQ8P1Fxv522AZ4fqlRC5ifNI/DowZq/Z34nIIgl7UWJ7VruIEzLWpBMYfa
 bfJGxecd4WsZdQdV0wIrW3x6ttlPotOubHEU9l1YdezYGNpM8aaRg0Ek3fPsJhqfZrwY
 xcBz7Su4tlZ19yPmtYUun6IhnRGotonraNjVHmd2+xhL14fBRqA7+UA60CbUySQodeow
 14Zm2XvO8DEQfj8ACVwd8ze2TjwDnQBNM0scfhlYDyrbsIrCs0QwcqOfw6OtTUjMmsg/
 fzGXOEFBLZcNqhy1a0hDS5wtdsQSK6LSKejKeigbnM7OpuWPmrCl7V9a7tkcs3HfyMia
 WAWA==
X-RZG-AUTH: ":P2ERcEykfu11Y98lp/T7+hdri+uKZK8TKWEqNyiHySGSa9k9xmwdNnzGHXPaJfSc9C1S"
X-RZG-CLASS-ID: mo00
Received: from tauon.chronox.de by smtp.strato.de (RZmta 46.6.2 DYNA|AUTH)
 with ESMTPSA id u08bf3w4EKKsxtN
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Thu, 14 May 2020 22:20:54 +0200 (CEST)
From: Stephan Mueller <smueller@chronox.de>
To: =?utf-8?B?xYF1a2Fzeg==?= Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH 2/2] hwrng: exynos - Set the quality value
Date: Thu, 14 May 2020 22:20:54 +0200
Message-ID: <8196280.CLNGmrtAO5@tauon.chronox.de>
In-Reply-To: <20200514190734.32746-3-l.stelmach@samsung.com>
References: <20200514190734.32746-1-l.stelmach@samsung.com>
 <CGME20200514190740eucas1p293129b2ef3ba706652a9327e55db9649@eucas1p2.samsung.com>
 <20200514190734.32746-3-l.stelmach@samsung.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_132057_097168_E6EC2A78 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:9 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>, Matthias Brugger <mbrugger@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matt Mackall <mpm@selenic.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Stefan Wahren <wahrenst@gmx.net>, Ray Jui <rjui@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Markus Elfring <elfring@users.sourceforge.net>,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gRG9ubmVyc3RhZywgMTQuIE1haSAyMDIwLCAyMTowNzozNCBDRVNUIHNjaHJpZWIgxYF1a2Fz
eiBTdGVsbWFjaDoKCkhpIMWBdWthc3osCgo+IFRoZSB2YWx1ZSBoYXMgYmVlbiBlc3RpbWFkZWQg
Ynkgb2J0YWluaWcgMTAyNCBjaHVua3Mgb2YgZGF0YSAxMjggYnl0ZXMKPiAoMTAyNCBiaXRzKSBl
YWNoIGZyb20gdGhlIGdlbmVyYXRvciBhbmQgZmluZGluZyBjaHVuayB3aXRoIG1pbmltYWwKPiBl
bnRyb3B5IHVzaW5nIHRoZSBlbnQoMSkgdG9vbC4gVGhlIHZhbHVlIHdhcyA2LjMzMjkzNyBiaXRz
IG9mIGVudHJvcHkKPiBpbiBlYWNoIDggYml0cyBvZiBkYXRhLgoKRHRvIC0gc2VlIHRoZSBvdGhl
ciBjb21tZW50LgoKQ2lhbwpTdGVwaGFuCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
