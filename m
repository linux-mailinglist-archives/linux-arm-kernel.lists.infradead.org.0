Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86037C8C20
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 16:54:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WkuFt4kSK2L7Htm6VDe+lQoNCDBWT3H270U34kddmx0=; b=abnK/NlkgqcleX
	TsmXEnangIBC/ZUxnN2Loj5hBMctbasWl5MCbsK5m7OpwlMmk3jvtbWBLDrPM/KDkw82nlcENatXB
	6Eduz+Q/1xfgS9WZpf0yoEO83GuF77yTrEnaJDtp20iwA3/fozfXoP+M5TCxaurxGk46RWS656vdm
	WGoTy01azZhxoH/jA2JkALKPpfLAyYh/OjDp1WMCov3uyWSwNNonGmj2AGLL7c4GXMDFis/sGO5Wa
	dycl7GAFUxz3dY+oMQxHLILoSQ3upwPIYRTWaMfwyoeZJFahAPtR/wAN8ymP1HXTwusgXdm6UnPkN
	5YGaVG87RAkQEBfHWfdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFg0s-000595-TO; Wed, 02 Oct 2019 14:53:58 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFg0e-000518-Am
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 14:53:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570027987;
 bh=51Sd29DCKYAXaUWlFEJfRj+l41UwrIs1JX74yeC2ifg=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=eGO/GTXU76rDgAICREMwEX/TkRpVYd9ymRixLzDswWuw4gRFI8ZOD8rPM4E2Nigsn
 fxG3euEh8tYs4TW1BffO6iCYWm9Nqbavtww0Pgxm1c4wx4Vef0kLWePKTXmyr/cuA2
 PFQfEqFfEGwXm8yd8n/PaLbw0JR5CLAPRxRGeWqI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([109.90.233.87]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1N3bX1-1i7bDE2xKl-010c1P; Wed, 02
 Oct 2019 16:53:07 +0200
From: =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To: linux-omap@vger.kernel.org
Subject: [PATCH] ARM: OMAP1: ams-delta FIQ: Fix a typo ("Initiaize")
Date: Wed,  2 Oct 2019 16:53:00 +0200
Message-Id: <20191002145301.11332-1-j.neuschaefer@gmx.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:JYPZWN/GxGfD2Zob7XwPzNdaW8wOJ3rz+ji1lyCuLCH7QKVtti/
 MGFmD0gLOjy0Ua1xo7IKccQWtn7TCgXY2iEK1pX5S6lXIbBDag25F8PDyk7Wn06DJj93Xtx
 wNy4qxraBwTRLKgOsrbiRPtJ4u4DDaRRHzMFHMra1Bmsx586a60tttRt4RvoW06ohx6+Mza
 N/VLYdNh74j4vhtbcFLCQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tdTVvgG66qQ=:u6AgU0YGduHL8Z3UaiQ622
 wv/wVVVHkW3Anw1I+FJjIz7gor+YRx+7cGkhBnoZtE+5Wu8rbOvyk6/+9kWfwxRHGb+jizTnB
 dZ3RDmXWUMyZkXkyHDvLb8466ouLnWTQi67bW+j1PaGWVD00m7ymgUp0037qED+YdOOtBY11a
 p2E8CD2iyt6UI4GFoXIUYVvRO51AUr9K1XmO7E4p+uBm+PJ9uTereJMqB8IE+px2q0QRPLC7K
 HAckLZEz5pEGGJv+FsMrfYoURQmbxt1kzn07e2UFeDWOdVSRddhppZDwOPbR78Aga/7nT9RCy
 NVx5hIjWYDfkWW14tPGsL42wqQ4XX/Rvw8nHzJoHgJP3ADqk5r7Su5TKvnRQuMjcg/UlS8RnY
 +YvheJ8xVc8+/L+vj1aMeoYzkrs2YlDdssT9IICB2mvKHzTB3dd9gXNXRwTlbB8Mi6F9SP53t
 xLviBkVD+SIt79wRcfAyXbyOWjULeTA/j4KRzmiSNQS9n9144SZmCy+tEU/NPXT9ejGhTGLwG
 hJRvIw9NnLp68Sorj5GjieVrch0JNddPMRK9eGQkBxvj9oxykrrvXzC/5RvzsuQIWAHHUWJK3
 9anS6CPh7L9dRST8QtrLRnbZv5gbQUqTp0ziqe8s0LFZICgDFmRiU033AFEaFBv+pi/al5gbZ
 THAAdN7lgScO+ec2WW++1DiQbveJydqUwNXVhZ+3QG8rxt9o/aa0NyucY9ydXexvYY58KJ+wH
 QnJxlWDMvSV9QJebDe742JKoTZnMdVYCHR3/9lbh8NWu8N9vaGTjXbkXRS01Fjfq+qxhG0Xm+
 9QeFhmo5gFf4kSrzxsuss9RdgIj9afhlfiQjmfTa4bsbiAoOXIxKntnnIJQhL7Aiz/DWqP5EF
 Q9/W2oQe7c19RDJerBg8dPwgPflDjdRKsiWR1lcN/rt6kGY4VYtez3auBFRhn92YEWlCvcrY7
 xl62xYp6WugxI/eUW/Mn22Ltiy9MbIpYkrV4AaM2M8v+3k8r6X5A/M0/U89JOD4zhxBC1TfTJ
 1ztxk6kz6olpE/mbS4R2RSSOLF9RukbyNIVQRpFX4sw6nb+Q39S26Z03o0pWneTWJ7L9vzo+8
 PhQbNDnDaXW/9wxmTBrCjIM1SMnDdWrIvNjgkYaOlE7Ny1w9uH03F9RKPDG9b2e4eyg12s8O7
 wmAOm8oIE1GkBzDUWa5XwOuuq8mz60SNLNtwYbMgANe1ko31mjkZ7IFy5Z4pOf+zTeQg+gFhy
 j+/B9HvA3KQnMdPIXSQ7HmBF45JQ31LbktB61lGvtyvM73X/YO93zQcpf4jI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_075344_683926_6B410371 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.21 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (j.neuschaefer[at]gmx.net)
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
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, Tony Lindgren <tony@atomide.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2lnbmVkLW9mZi1ieTogSm9uYXRoYW4gTmV1c2Now6RmZXIgPGoubmV1c2NoYWVmZXJAZ214Lm5l
dD4KLS0tCiBhcmNoL2FybS9tYWNoLW9tYXAxL2Ftcy1kZWx0YS1maXEuYyB8IDIgKy0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtL21hY2gtb21hcDEvYW1zLWRlbHRhLWZpcS5jIGIvYXJjaC9hcm0vbWFjaC1vbWFwMS9h
bXMtZGVsdGEtZmlxLmMKaW5kZXggMDI1NGViOWNmOGM2Li40ZWVhM2UzOWU2MzMgMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtL21hY2gtb21hcDEvYW1zLWRlbHRhLWZpcS5jCisrKyBiL2FyY2gvYXJtL21h
Y2gtb21hcDEvYW1zLWRlbHRhLWZpcS5jCkBAIC0xMTAsNyArMTEwLDcgQEAgdm9pZCBfX2luaXQg
YW1zX2RlbHRhX2luaXRfZmlxKHN0cnVjdCBncGlvX2NoaXAgKmNoaXAsCgogCQkvKgogCQkgKiBG
SVEgaGFuZGxlciB0YWtlcyBmdWxsIGNvbnRyb2wgb3ZlciBzZXJpbyBkYXRhIGFuZCBjbGsgR1BJ
TwotCQkgKiBwaW5zLiAgSW5pdGlhaXplIHRoZW0gYW5kIGtlZXAgcmVxdWVzdGVkIHNvIG5vYm9k
eSBjYW4KKwkJICogcGlucy4gIEluaXRpYWxpemUgdGhlbSBhbmQga2VlcCByZXF1ZXN0ZWQgc28g
bm9ib2R5IGNhbgogCQkgKiBpbnRlcmZlcmUuICBGYWlsIGlmIGFueSBvZiB0aG9zZSB0d28gY291
bGRuJ3QgYmUgcmVxdWVzdGVkLgogCQkgKi8KIAkJc3dpdGNoIChpKSB7Ci0tCjIuMjAuMQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
