Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 026C1A9672
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 00:28:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wRIErKgED5S4UAvrbUF4O24Jz9szDXA+qMi5r79a6us=; b=EVL7WyMEB+/joS
	352DBQNv8WX+AbwPcPtBCc+xpopjep8eSI0htvnCVuu1gwuOqthwR4I4G1xfmjdyzWB9WImB+T87h
	kifGjxNBXvmy84UbLG/ySwRXABTeZmQi9F2O+Nbw3WIANL823YtfmqlFjOTprBnK2uqEetm+y6Zyq
	01UmJZquiRf5DtV/ZpVLRqkbLwH/6ZapIjr+KjKzeavqSAJYKKNVeTcRdsvOLdu9urRiwD3sXwAhD
	nc1VtljHPXhIGYyXDeR5ClP1YqRw3obPen0xUe7Ys/7+llR8OOpIWss0wUq7j5DRibey7YnKt51XR
	s8d+B55sQYsF5r4BrMcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5dln-0000KA-KV; Wed, 04 Sep 2019 22:28:55 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5dla-0000Jn-6r; Wed, 04 Sep 2019 22:28:43 +0000
Received: from localhost (unknown [62.21.130.100])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 380CA15286012;
 Wed,  4 Sep 2019 15:28:38 -0700 (PDT)
Date: Wed, 04 Sep 2019 15:28:37 -0700 (PDT)
Message-Id: <20190904.152837.1289570584021077118.davem@davemloft.net>
To: opensource@vdorst.com
Subject: Re: [PATCH net-next v3 0/3] net: dsa: mt7530: Convert to PHYLINK
 and add support for port 5
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190902130226.26845-1-opensource@vdorst.com>
References: <20190902130226.26845-1-opensource@vdorst.com>
X-Mailer: Mew version 6.8 on Emacs 26.2
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 04 Sep 2019 15:28:41 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_152842_251426_2502E82F 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [62.21.130.100 listed in zen.spamhaus.org]
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, frank-w@public-files.de,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux@armlinux.org.uk,
 linux-mips@vger.kernel.org, linux-mediatek@lists.infradead.org,
 john@phrozen.org, matthias.bgg@gmail.com, vivien.didelot@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ren=E9 van Dorst <opensource@vdorst.com>
Date: Mon,  2 Sep 2019 15:02:23 +0200

> 1. net: dsa: mt7530: Convert to PHYLINK API
>    This patch converts mt7530 to PHYLINK API.
> 2. dt-bindings: net: dsa: mt7530: Add support for port 5
> 3. net: dsa: mt7530: Add support for port 5
>    These 2 patches adding support for port 5 of the switch.
> =

> v2->v3:
>  * Removed 'status =3D "okay"' lines in patch #2
>  * Change a port 5 setup message in a debug message in patch #3
>  * Added ack-by and tested-by tags
> v1->v2:
>  * Mostly phylink improvements after review.
> rfc -> v1:
>  * Mostly phylink improvements after review.
>  * Drop phy isolation patches. Adds no value for now.

Series applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
