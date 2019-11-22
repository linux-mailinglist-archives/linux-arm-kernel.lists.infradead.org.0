Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B16B41073E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 15:10:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vXNO1mI4EAvCnrcnntaPInziYGlEjpX+3P6MmBKTfVA=; b=mb1FsL09hup1ZB
	LSEPJ2I6+W7vnuDOIPbVnNPvUlAjBq9ywxR6Ns4cnjCOxauI9rzvKbm/MyDGdvdDahkbLbkPrgv/Z
	aQbV+ZOVAY6ikcd2onrOBWpdirdmwesCCa/JwN27CInMNuxCyiKDpVyyuws7MmHY8H4I6QlOx3okh
	ZIDK+hJBAzWIxhiCwbUCo9+I1zC2lVvYzLBvVwdqq1qeiHdc7RAKz9wxBqRPBMAM/qjlhTvV1FHFz
	BEhBQU9JHEATvKHSKCkGS5YE+YIAWHVRic+cbyb10WVpm6xNRG7Js4DdH3QGPKEI6+YMCpR+xqVXY
	7Utvl5b8QlxMtEXAQReQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY9dy-0007uM-Sf; Fri, 22 Nov 2019 14:10:42 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::8])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY9dq-0007tY-9B
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 14:10:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574431830;
 s=strato-dkim-0002; d=gerhold.net;
 h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=EJSl3iRJcanzg159K/qfpdsrnAGlP/ValPtgHthr2To=;
 b=SfPXcsQ4bQrqdMXILam+DvrhAJ5+sVfChJpfgq7UbqPyGuh1ESRX8/49JKGedH3qWb
 zkxQlYKJwCbMdNZS8ro1IkMXBnX5qZ0DXM3hD3gWU36fYnzzcIsF4owTF4bPHroQaKTw
 8ss+WnrP7u8r2jNPlim+FUqGtCHvnKYHn3i2HnKayt+yybR1ImXaQh4MgBjIFAVoI/Cn
 S2aFrPHVVMomcjgJpfBL5sQJ9vb+hHDdWvhs77UM1O4Dac6FcmIQClePnMe/sPOYyPze
 /HrbFv+d1PfKFNkFBk8uouc8WiObVT4vX7o+VEf2DeVDHZ8PZ2EZmDqpwWJLYJflmgBC
 p/CQ==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u26zEodhPgRDZ8fxIc6p"
X-RZG-CLASS-ID: mo00
Received: from gerhold.net by smtp.strato.de (RZmta 44.29.0 DYNA|AUTH)
 with ESMTPSA id e07688vAMEAN4rh
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Fri, 22 Nov 2019 15:10:23 +0100 (CET)
Date: Fri, 22 Nov 2019 15:10:09 +0100
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2 4/4] dt-bindings: arm: Document compatibles for Ux500
 boards
Message-ID: <20191122140944.GA2872@gerhold.net>
References: <20191120181857.97174-1-stephan@gerhold.net>
 <20191120181857.97174-4-stephan@gerhold.net>
 <CACRpkda-rm=1hz_p2YCqBVgxsM9cmKYJVUg+T91MyBrgmtDP-w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkda-rm=1hz_p2YCqBVgxsM9cmKYJVUg+T91MyBrgmtDP-w@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_061034_905219_70D9C8F5 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:8 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 09:22:19PM +0100, Linus Walleij wrote:
> On Wed, Nov 20, 2019 at 7:20 PM Stephan Gerhold <stephan@gerhold.net> wrote:
> 
> > The device-specific compatible values used by the Ux500 boards
> > were not documented so far. Add a new simple schema to document them.
> >
> > Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> 
> Nice, thanks!
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> 
> I expect Rob to merge these patches as they are bindings-only,
> alternatively I can take them in the Ux500 DTS pull request
> for the next kernel cycle.
> 

For this patch it would be easier if you take it through the Ux500 tree,
as I have another patch series that adds a new board to it.

The vendor-prefix patches are independent, so Rob can merge them if that
is easier?

Thanks,
Stephan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
