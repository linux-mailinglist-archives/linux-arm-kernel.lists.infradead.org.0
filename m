Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 142161C1986
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 17:29:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pvGlMXUPSq+0y9LTKRvxJpc51Dggt5Acm7qHsSpeKxk=; b=UP6D5j82eC/Ymt
	d1ww2dbq9p3GQv93P9rUobQVmjlM/ULJdxbjo5nmbtbhQYj9J6cd8iKiVpF2qEMWyAVbt2r2lt4Y+
	az1Ap2LbTXrzVcvB9qDUHHLme03+OLz04ZbdzywWQzgNlQCumBjZ4sigmsU9CeWj4LgRtLjlxcJov
	ETA9A99nAXu8ZsUywiMEkdajvePcrfxMik6FzbQ82GZ5F59QW9HRUI0ZvZsbWCiEvrW5lfozHE7Ie
	Oa/kkXNn9cCfo5mTZMTyd7QvnH6Oy5RzrJ9y1R92eZBfO22fFXBpiyF07DHR7M3xyLngjotO2avry
	8bwVHoI3gPVEFS7Dupkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUXbH-0007yt-2R; Fri, 01 May 2020 15:29:15 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUXb4-0007xT-Lm; Fri, 01 May 2020 15:29:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=g87l+dQPat6RISHmb/M+c0r+YR6nZMVGy4jXDg/BT5Y=; b=P6PpYSUIF0qaq/BE82nIHPuExZ
 oz4MO4IxBlfZiIOqksQmOxpu61b4C1+2I9DCYthnN+6zEx14OUppsEropI5s74zCRnfYEqUsP5XbV
 oZuRUQWXYdXom6Ft2YPceKMwcxm4Rf5SFFjmPuumyDsRCaBf5YHANqEk24vp4hUy/Aak=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jUXay-000YD8-Cv; Fri, 01 May 2020 17:28:56 +0200
Date: Fri, 1 May 2020 17:28:56 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH RFC v2 03/11] net: stmmac: dwmac-meson8b: use FIELD_PREP
 instead of open-coding it
Message-ID: <20200501152856.GC128733@lunn.ch>
References: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
 <20200429201644.1144546-4-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429201644.1144546-4-martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_082902_710935_CF00A8E0 
X-CRM114-Status: UNSURE (   6.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, jianxin.pan@amlogic.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 10:16:36PM +0200, Martin Blumenstingl wrote:
> Use FIELD_PREP() to shift a value to the correct offset based on a
> bitmask instead of open-coding the logic.
> No functional changes.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
