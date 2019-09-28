Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9C9C10C2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Sep 2019 14:09:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kex4+Bx5E6/8n9kZ3a3/eY2b6Uaw5EfHAkEb+pEiQFU=; b=QA1lURt09HPYgunHnNtqo+6GHW
	73im9DkIPVs0uXrvGL27hR/j4e9Z3994g4i69DMRoAfV8UcnlLLs8uNhBQ0uy+nl0sL/JJkOXv4s6
	pJ1GwPvruDrTQis8LRQZ8bJZK804G0uJsAmD9JJDHxQpMvqROULLtd82rZKCRi/mk2DIl73UIm3rL
	YDEwgOmW+UEcJ8Fd8JKyquRNaENmPneDTVbCdhOAinN5PU73rykQGpJ4Aoe3TWvXbvQc9cVUWt+c7
	GfJTrxFqfwF3EBAzpxeoELHXUyJh5FTTqr6z385bjv+cXXw91u6MZNxpn9wP0DtUDlJU3z5C+sNAw
	HCkUmkRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEBXC-0007Xh-6h; Sat, 28 Sep 2019 12:09:10 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEBVv-0006ZG-0b
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Sep 2019 12:07:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1569672460;
 bh=ZImZAahcnUC+FQfe8Me4GQOgCgge3ZbsQMf5FxCzQ74=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=FbaHs9o3otier+ijkio2Bedmml36n9mNyP8wScF6sb8Ve2ec2JaPWCyMZYJDDaKqA
 o6PcZD73tGM8rJXRwbgcyr4nrFJ1Cdnv54/cidm84ZmRGDcbKLMypKa7lRv/bCOtR6
 B9WwOYY6ZwrGiORtF8TB6N73KGntlY+1/0d+IGDw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.130]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1Mk0Ne-1hlkaR2tWS-00kMD7; Sat, 28 Sep 2019 14:07:39 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Subject: [PATCH V3 8/8] MAINTAINERS: Add BCM2711 to BCM2835 ARCH
Date: Sat, 28 Sep 2019 14:07:14 +0200
Message-Id: <1569672435-19823-9-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:UDpTJAU1MPUAlXMwedv/m4gEGTFPk9iDRiXEq9EnoWkZdvoZuAB
 TBUNbk+gDwBhHG7w35+Rsf6Xp6ykaXCGjqmAlZqCmSYPSO7kjnqF55P5uRz+ygNVMqs5Nh9
 4Ff6ZUIkPn3FrpWBSsn8nCiaf1IqzanJRaFWsfI3xXYWsWvLZI486jLXkim1u3dlZKXc4a0
 HTpp9Q9xpmHZ0/UDsYz2g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CdBwK5UlnAs=:lvdrA/NfApj+bc7ICAMkEu
 JSc2MetLb+48zGJrgpIJm25h4t41M4QO+6n/vc+gc6KV71yja9VLysXs7Tr/dwHo7Tep4iZhb
 sX9vra5jP38MfpT993ZrmaJBnWu1q11SF3f5vvWWxvacJ49JxtFmyoxBChGSnxSRGic4jTZwQ
 L8hAQVSJIoEx1Nbfz94genL/S9wh2d5vc2lE2eebL84DFWjYONxQ+cinRJCyFTKgncXPGJCNY
 iBqGVlNaMJ2c5zTIeHSERspZEwtUm4S/IyAAOE6yT2IItpzlJHb2AGnuMZbk0CilI8IeSXWIq
 7RchQOjmOJ1tm9uU0fxMX02m52Oc4XSlBd/vW0ls3iP7+OZ1sobt3M24rGwv6GN6ZWbQ5E8dX
 bl48mjXGD48J+ndoc4ev+kd2cGPbpgbEvlwFmrSQXUhwI7Z7GUsNPiZyHe+5IcW3RjPwOrYJN
 hkRk3pGV1eNKkJs3f22OJgg7avCuOwsUu/4RPVZ5kFPPU0CWzjw89uZ9sKCksIIDahtQSnKcn
 61YeP9nZ3p456ouh8xueGeWWf6EWELggfOWj6jViGnf6Vxa0W+xhrvzi0BULcE9cxtrWOeiQf
 Lvv7N6ztnLedjz/Jz6mo03y+J+xgZZi6ITx980pzR7k5fCwI88YFirfEpDYapA4jfazPdLkCC
 nfnAGMsqaVE4iKEm3A4M+crO494k4BD54RlpKclwy7MaoylTtU2sDJneNmRb0ZkpJlQxNOomr
 vzqHFwr/t/wGwaosD7JgFvO7EmwoqWVK3lo9uZBi8lDr/AeoRVB4YJbuRkCiooFNpbron70qF
 k1ql8/ZQICBhp1aGEYkSueQfwlPIZqEZuYGS/mqtl1mdOq8aGm90kFURCrhuDtAygWS2pPb5V
 hCuqHuD6s7GoL2pOJtVdms3sgVMyYV2lgOESXe9fi4+Fr6IyBt8Pfv4OvEa0yP7K5eo3YnvD8
 XSiy/NN/3aRUdVp/2Zde2J2zO/jiszneo2tyz/n4xf6+GbAZd5BqfkkW74YD7qqLVJYs7sH8S
 5xYUE+9KCG4IAftC5rvTOKV/fOp+OyMWdM5K5ermrHnjbcDBfn+mu78iknre1950KMkoJerOO
 ocYlHCtZdU22IS/lSJAM0bIhZ4vbpQ8McIFFz8pFIQ8n6NAG1Js4jQA6DskAFkc5Gtunyh92w
 O/qj7cBgVNPHN7V+udMhDpkwEqP60z6VXYKk3y0/OdwVVqM1r5w3SU1itmghaCs2WzBLLH6/x
 oAc2tV+OwiVqnRquSntGAZvy2P3l0nbIfuuMOVg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_050751_368665_D192E514 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.19 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Clarify that BCM2711 belongs to the BCM2835 ARCH.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Eric Anholt <eric@anholt.net>
---
 MAINTAINERS | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 857611c..49420e0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3186,7 +3186,7 @@ N:	bcm216*
 N:	kona
 F:	arch/arm/mach-bcm/

-BROADCOM BCM2835 ARM ARCHITECTURE
+BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE
 M:	Eric Anholt <eric@anholt.net>
 M:	Stefan Wahren <wahrenst@gmx.net>
 L:	bcm-kernel-feedback-list@broadcom.com
@@ -3194,6 +3194,7 @@ L:	linux-rpi-kernel@lists.infradead.org (moderated for non-subscribers)
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 T:	git git://github.com/anholt/linux
 S:	Maintained
+N:	bcm2711
 N:	bcm2835
 F:	drivers/staging/vc04_services

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
