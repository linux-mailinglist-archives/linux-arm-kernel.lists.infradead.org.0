Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6FD0298D0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 15:21:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1s0Az29WqEw8KMUNLAJJAq2sEK8ZNxGnYPSNaCKGTBY=; b=r8ExsNibAddVgL
	5gyO8FeJGO/QPY27FWzBHOxRY8e6/tzStpETlarnxEVzyCopUDPhCg2N+1l5mVck9nkzUoXvW/ZSv
	bR/WY/Uy81kce5lRJAdkVoK037fX0k7s+NNHPsoleySE6GJT5giZHiWQGOyNRjKoF8kev6sYUeHhZ
	Y/jMgkrhQG/jpO0Dj9VLJFCCDopxbh1u7+4C9kE0lEhdLYzofpfJySmMGjvBBIrFez8AeDb6IBW9H
	uJDX/ZQuclAWM48jkCUt/9Psj7iKCmwivtsP5g6nzQebr+Ep/hmHM/j1y0N8pu2iT1iPPkupziKnb
	q7mvvw493/xlaA7+yPaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUA8x-0006wk-OY; Fri, 24 May 2019 13:21:55 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUA7O-0004Cy-MQ
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 13:20:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1558704005; x=1561296005;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NYdOw3xLCcJk9B4HDUN0mOmZh9/CEB4GcXXSIRBzQrg=;
 b=tzEzrm9I1zFijt2/5HBQjaeTgMuXFxomAsY6y3pgfVEycq0AjnSTu4Vxn61Fi5Tc
 eDFhNrsCq3wX58Rk8rc7AtwLpwycrIh4IDrHbbFlPQs+VlVHD156grhCGydORvcI
 6h7HFjlingF7S+tnIl/iOOLmw8+hFG7eu3UgrcxANtE=;
X-AuditID: c39127d2-6d5ff70000000df6-c1-5ce7ef859429
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 2D.81.03574.58FE7EC5;
 Fri, 24 May 2019 15:20:05 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.16.21.122])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019052415200491-20938 ;
 Fri, 24 May 2019 15:20:04 +0200 
From: Teresa Remmet <t.remmet@phytec.de>
To: linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/7] ARM: dts: am335x-pcm-953: Remove eth phy delay
Date: Fri, 24 May 2019 15:20:02 +0200
Message-Id: <1558704003-393769-7-git-send-email-t.remmet@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558704003-393769-1-git-send-email-t.remmet@phytec.de>
References: <1558704003-393769-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 24.05.2019 15:20:05,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 24.05.2019 15:20:05
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrOLMWRmVeSWpSXmKPExsWyRoCBS7f1/fMYg59r5C3uzP/LajH/yDlW
 i02Pr7FazF7Sz2Kx9PpFJovWvUfYLfZf8XJg91gzbw2jx7evk1g83t9oZffYtKqTzWPzknqP
 z5vkAtiiuGxSUnMyy1KL9O0SuDLm/z7HVrCXs2Lj7B7WBsYb7F2MnBwSAiYS23Z/Zuxi5OIQ
 EtjBKLH+fw87hHOBUeLprOcsIFVsAhoST1ecZupi5OAQEUiQuPVSCKSGWeAMo8Td/mVsIDXC
 As4SbdfegNksAqoSL09eBtvACxRvP38BapucxM1zncwgNqeAi8Tvw89YQWwhoJqn64+yQtQL
 Spyc+YQFZIGEwBVGif/X/zJCNAtJnF58lhnkCGYBdYn184RAwswC2hLLFr5mnsAoOAtJ+yyE
 qllIqhYwMq9iFMrNTM5OLcrM1ivIqCxJTdZLSd3ECAz+wxPVL+1g7JvjcYhRgINRiYc34fLz
 GCHWxLLiytxDjBIczEoivLH7n8UI8aYkVlalFuXHF5XmpBYfYpTmYFES593AWxImJJCeWJKa
 nZpakFoEk2Xi4JRqYDScHZWoXLPSq//ijd5XPdIfGLZcVDkkfeztTemmvyrHGlbXrZ36rcM8
 /OGJQvt1YTy1uvvn2jHnbmPRWSxrxv9J0EjQyrzg4RkJ0RWqDcINu5+tlTTs4Npw+f1FX+61
 AfI75J/x5/t/sJm59Pj5/ZL9rku+Tv/VqsR8542B7UIGnwOhj5jn1CuxFGckGmoxFxUnAgDg
 VvFIegIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_062019_154246_80E5F7DD 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: Tony Lindgren <tony@atomide.com>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Daniel Schultz <d.schultz@phytec.de>,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGVmYXVsdCB2YWx1ZXMgZml0IGJldHRlciB0aGFuIHRoZXNlIGhpc3RvcmljYWwgc2V0dGluZ3Mu
CkhhcmR3YXJlIGxheW91dCBoYWQgYmVlbiBhZGFwdGVkIGFjY29yZGluZ2x5IGFscmVhZHkgaW4K
YWxwaGEgc3RhZ2UuIFRoZXkgZGlkIG5vdCBjYXVzZSBwcm9ibGVtcyBmb3IgYSBsb25nIHRpbWUu
ClJlbW92ZWQgdmFsdWVzIG5vdy4KClNpZ25lZC1vZmYtYnk6IFRlcmVzYSBSZW1tZXQgPHQucmVt
bWV0QHBoeXRlYy5kZT4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9hbTMzNXgtcGNtLTk1My5kdHNp
IHwgMTYgLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE2IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2FtMzM1eC1wY20tOTUzLmR0c2kgYi9hcmNo
L2FybS9ib290L2R0cy9hbTMzNXgtcGNtLTk1My5kdHNpCmluZGV4IDcwZmI0YTE1Y2FkOS4uZGQ3
OGRiNzZjODc3IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9hbTMzNXgtcGNtLTk1My5k
dHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2FtMzM1eC1wY20tOTUzLmR0c2kKQEAgLTEzNiwy
MiArMTM2LDYgQEAKICZkYXZpbmNpX21kaW8gewogCXBoeTE6IGV0aGVybmV0LXBoeUAyIHsKIAkJ
cmVnID0gPDI+OwotCi0JCS8qIFJlZ2lzdGVyIDI2MCAoMTA0aCkg4oCTIFJHTUlJIENsb2NrIGFu
ZCBDb250cm9sIFBhZCBTa2V3ICovCi0JCXJ4Yy1za2V3LXBzID0gPDE0MDA+OwotCQlyeGR2LXNr
ZXctcHMgPSA8MD47Ci0JCXR4Yy1za2V3LXBzID0gPDE0MDA+OwotCQl0eGVuLXNrZXctcHMgPSA8
MD47Ci0JCS8qIFJlZ2lzdGVyIDI2MSAoMTA1aCkg4oCTIFJHTUlJIFJYIERhdGEgUGFkIFNrZXcg
Ki8KLQkJcnhkMy1za2V3LXBzID0gPDA+OwotCQlyeGQyLXNrZXctcHMgPSA8MD47Ci0JCXJ4ZDEt
c2tldy1wcyA9IDwwPjsKLQkJcnhkMC1za2V3LXBzID0gPDA+OwotCQkvKiBSZWdpc3RlciAyNjIg
KDEwNmgpIOKAkyBSR01JSSBUWCBEYXRhIFBhZCBTa2V3ICovCi0JCXR4ZDMtc2tldy1wcyA9IDww
PjsKLQkJdHhkMi1za2V3LXBzID0gPDA+OwotCQl0eGQxLXNrZXctcHMgPSA8MD47Ci0JCXR4ZDAt
c2tldy1wcyA9IDwwPjsKIAl9OwogfTsKIAotLSAKMi43LjQKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
