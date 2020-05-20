Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F571DAA96
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 08:24:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7v3Tvigu0TnxYYwMhPbbto1FkLcoaIq9w00q1Lg2A1o=; b=lDnQYOcc3GsxEO
	WTJHp/IX8N6yZZABVT30/9fe0eSDb89H79d/7urBIlLsfYdUakOwxlHBPA6BanYb5F3JzGsVJUNXt
	XkSZs85K/LUYU69jYM9i/7NksP0agqeIf4ocscbBzdNc4vrsiZU3bGGtMBRCSMYwxfkZom+jxg2WK
	HQYtPsCdJYP9ZwPmMRhvk8uWYjUIak9/jL+uV+Y3uHdtdQkJ3Z/vnVVoRdasFW+tqt4V4rrHn97Sq
	nh6ppgGbq+BQHPQ3TdgVuvaSLZ3foeTRCEmFtiUtSYQ4BfH7cb2/krUH2kme18bezc6CxEzZw3zv9
	N+iwnTh3rwk/m50YWonA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbI9O-0003gZ-AC; Wed, 20 May 2020 06:24:22 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbI9C-0003bW-Gt
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 06:24:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1589955844;
 s=strato-dkim-0002; d=chronox.de;
 h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=Z4L+tBCvVk7qL7s3FzIU5Gn5ddNv0VVuMlfTJxRK4xo=;
 b=Iqq7OfBHmkTZ4IAQY7Ay4ptDliWQ9IGo/VLNXi2Xicw+og9mxHRw9fMQ42NuJiqbG/
 067ZwqUEc6LHvUG3Um/83uaKfBqt3FrgsW7GgT37mhZBRMqi2jG4UuyaNL+xLczrWVcW
 X6munew+HRD5WxX7CSqlmHVqaJpk38R9nkL5S/tMNDTZroFtmPu9JYlSdpDKZrBznXD8
 t/+Njs/9Cb6DoWw0NAqT9R/HY+lsE9FrZBMUTMLchGAAi6d1QqD95PuhDGoYIM6CgAxZ
 DgyaHyIa0mzmdG/+kpHpEHt+0K14jk0GZ8K5BVoae05teaVl8UE4VSrs9gJ1K9WoSMo1
 rmUA==
X-RZG-AUTH: ":P2ERcEykfu11Y98lp/T7+hdri+uKZK8TKWEqNyiHySGSa9k9xmwdNnzGHXPbI/Sc5g=="
X-RZG-CLASS-ID: mo00
Received: from tauon.chronox.de by smtp.strato.de (RZmta 46.7.0 DYNA|AUTH)
 with ESMTPSA id k09005w4K6Nx34M
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Wed, 20 May 2020 08:23:59 +0200 (CEST)
From: Stephan Mueller <smueller@chronox.de>
To: =?utf-8?B?xYF1a2Fzeg==?= Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH v2 1/2] hwrng: iproc-rng200 - Set the quality value
Date: Wed, 20 May 2020 08:23:59 +0200
Message-ID: <1748331.j7eDFAdTc1@tauon.chronox.de>
In-Reply-To: <20200519212552.11671-2-l.stelmach@samsung.com>
References: <20200514190734.32746-1-l.stelmach@samsung.com>
 <CGME20200519212619eucas1p22fa5d3db2521096dc4b79f6e53016d17@eucas1p2.samsung.com>
 <20200519212552.11671-2-l.stelmach@samsung.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_232411_155104_12003888 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

QW0gRGllbnN0YWcsIDE5LiBNYWkgMjAyMCwgMjM6MjU6NTEgQ0VTVCBzY2hyaWViIMWBdWthc3og
U3RlbG1hY2g6CgpIaSDFgXVrYXN6LAoKPiBUaGUgdmFsdWUgd2FzIGVzdGltYWRlZCB3aXRoIGVh
X2lpZFsxXSB1c2luZyBvbiAxMDQ4NTc2MCBieXRlcyByZWFkIGZyb20KPiB0aGUgUk5HIHZpYSAv
ZGV2L2h3cm5nLiBUaGUgbWluLWVudHJvcHkgdmFsdWUgY2FsY3VsYXRlZCB1c2luZyB0aGUgbW9z
dAo+IGNvbW1vbiB2YWx1ZSBlc3RpbWF0ZSAoTklTVCBTUCA4MDAtOTBQWzJdLCBzZWN0aW9uIDYu
My4xKSB3YXMgNy45NjQ0NjQuCgpJIGFtIHNvcnJ5LCBidXQgSSB0aGluayBJIGRpZCBub3QgbWFr
ZSBteXNlbGYgY2xlYXI6IHRlc3RpbmcgcmFuZG9tIG51bWJlcnMgCnBvc3QtcHJvY2Vzc2luZyB3
aXRoIHRoZSBzdGF0aXN0aWNhbCB0b29scyBkb2VzIE5PVCBnaXZlIGFueSBpZGVhIGFib3V0IHRo
ZSAKZW50cm9weSByYXRlLiBUaHVzLCBhbGwgdGhhdCB3YXMgY2FsY3VsYXRlZCBpcyB0aGUgcHJv
cGVyIGltcGxlbWVudGF0aW9uIG9mIAp0aGUgcG9zdC1wcm9jZXNzaW5nIG9wZXJhdGlvbiBhbmQg
bm90IHRoZSBhY3R1YWwgbm9pc2Ugc291cmNlLgoKV2hhdCBuZWVkcyB0byBoYXBwZW4gaXMgdGhh
dCB3ZSBuZWVkIGFjY2VzcyB0byByYXcsIHVuY29uZGl0aW9uZWQgZGF0YSBmcm9tIAp0aGUgbm9p
c2Ugc291cmNlIHRoYXQgaXMgYW5hbHl6ZWQgd2l0aCB0aGUgc3RhdGlzdGljYWwgbWV0aG9kcy4K
CkNpYW8KU3RlcGhhbgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
