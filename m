Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C35801AF5AF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 00:51:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UgO0awXDqISXWntSlhHpZwKlP5WSjEliizCKoixTRRc=; b=cacopGrMHxlj87
	1jMgyl2R++MvwK/U81pilziH6scbHECtfKEEtZhCe1Goee+H/gxeA6aR5aHpA7v0bXE1loOmKCAdY
	++BKv1l/46MODiq1mKnRDHG2/CmL45/ZZ3LPy9zPyaQNM2n0QZ1OCVYXCY3+h95TnNuNCT3W4kpYI
	JJ7N/XH3KlSLBAlCuG3x7vCwfFrPxWSBl6ggdewIX36PskrkTNGJwgRu9LmepjhPVRWyhSW3QtAcm
	Yf7u6ApR011rgKzD7BsoPDlHj7Zave/RSfNLkGJaT/MHUnuSy7jn7n2FrwmY8B0HmJ8VXM2EHawuu
	VS30H2kUZZ77gqQtwVTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPwIy-0006aZ-1P; Sat, 18 Apr 2020 22:51:20 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPwIp-0006YZ-NG
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 22:51:13 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 0F36C12783B21;
 Sat, 18 Apr 2020 15:51:00 -0700 (PDT)
Date: Sat, 18 Apr 2020 15:50:59 -0700 (PDT)
Message-Id: <20200418.155059.721554856201723571.davem@davemloft.net>
To: f.fainelli@gmail.com
Subject: Re: [PATCH net-next] net: phy: mdio-bcm-iproc: Do not show kernel
 pointer
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200417183420.8514-1-f.fainelli@gmail.com>
References: <20200417183420.8514-1-f.fainelli@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 18 Apr 2020 15:51:00 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_155111_757129_A8A32282 
X-CRM114-Status: UNSURE (   6.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: andrew@lunn.ch, sbranden@broadcom.com, netdev@vger.kernel.org,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, rjui@broadcom.com,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Florian Fainelli <f.fainelli@gmail.com>
Date: Fri, 17 Apr 2020 11:34:20 -0700

> Displaying the virtual address at which the MDIO base register address
> has been mapped is not useful and is not visible with pointer hashing in
> place, replace the message with something indicating successful
> registration instead.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
