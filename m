Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81CE011F6D2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 08:49:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JnMrWEa/wBJ/2sNDFcxbQZ+W4QZAZO87wa88oD60MKc=; b=EqSMxOgtaGb8Px
	lJNZzOub15BpCuEzr8AMMMd/Eey8nCtS68/MtSq8N9oOAvXAEfY1khckl+DeO8J1hsZHqA2w/mYdf
	pI0mECUM5BracMHzX0beAnMlotFY0zfXLBUxjNWZAI7M7+l7WmS5M6L+y8fATixRYv6MVgf6zjF++
	Oh4ou58ERw7nPgfJauxOm7+qCEaf+9j5qjT1330ViNTjUbiBZzRBUQCa611etRjT9ZlRTiZ6rMMzx
	y+oOfR7EwAxUotxxZgsE8ITEsEs6ixVdpTesUB5wP+AfQnBtjRypsp6/grDPk+2oRAFrDMvdFAkQD
	wyxwC5gmR2LN5H8w0dVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igOeT-0005l1-4H; Sun, 15 Dec 2019 07:49:17 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igOeJ-0005kA-OP; Sun, 15 Dec 2019 07:49:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1576396144;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=td8yBsthjIkGZm9vmnRS/XjA43oNBnSXyXWeFGiQQZw=;
 b=stegvmjlcCADEtMParVGxZBzFpP37/Zvt0cxcg86RDe5GEOrQ3n4+nLKQsWsubDaPD
 bxQixgrpgZst6tbiej340VBHbfv9VTKkAK1z/Bb0kB3mHx+jxVfZQW6Zj8q+EKqWN50L
 2WoQAh/MYiU/krn+pW/Sa6OsPGw28T7eEa1F1W9Q7K/n8kGaDmwrBO4yuITJH5na4ldn
 45K9UEJwdRaWcPv8dymocaJOwPaz9k7d0JepxmIG73SqnAT6uyNJc8XOjwSP5jlRmJs2
 0iGrTyTBmjdoQW/B26z/8BTp4ujNpn0ElO8F/ZBDLS7dyjDryZDfomkP4HEXFgMnURRc
 Q/Dg==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGH/PgwDGiVw=="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.0.7 DYNA|AUTH)
 with ESMTPSA id i03ca8vBF7moD4b
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Sun, 15 Dec 2019 08:48:50 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH v2] ARM: bcm: Fix support for BCM2711 SoC which breaks
 other ARM platforms
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <b209c3dd-0d20-05b1-6cbc-62f40623028c@gmail.com>
Date: Sun, 15 Dec 2019 08:48:50 +0100
Message-Id: <8330901D-84A6-4618-A509-477D04A93B7B@goldelico.com>
References: <0d7bef0622d69bd4f1129afe26b358669e639ae8.1576361067.git.hns@goldelico.com>
 <b209c3dd-0d20-05b1-6cbc-62f40623028c@gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_234908_388374_A9308E20 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:5 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: arm-soc <linux-arm-kernel@lists.infradead.org>,
 letux-kernel@openphoenux.org, Scott Branden <sbranden@broadcom.com>,
 Tony Lindgren <tony@atomide.com>, Ray Jui <rjui@broadcom.com>,
 linux@armlinux.org.uk,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 kernel@pyra-handheld.com, Linux-OMAP <linux-omap@vger.kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

> Am 14.12.2019 um 23:49 schrieb Florian Fainelli <f.fainelli@gmail.com>:
> 
> This looks fine, I would just rephrase the commit subject as:
> 
> ARM: bcm: Add missing sentinel to bcm2711_compat[]
> 
> instead of indicating the breakage but not so much the fix, if that is
> okay with you. 

Yes, is okay and indeed better.

> -- 
> Florian


BR and thanks,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
