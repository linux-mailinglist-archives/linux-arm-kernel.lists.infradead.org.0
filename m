Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D4F9C0F3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 01:19:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rqIzi62BZvhW2F0VgthGTV6op9Eibkrx+Gq1saX49Qk=; b=pGvvcNkfghFY/H
	NN+/f82UmHIt4vshLqr2dLx1nUkuNr7Rh7JN8PgAgAiVQu3DCzy6XNjT5ekiA7VogD91k03zV5XUC
	MST2QiGHGLwCgOQ33JHHEM+v/t3a4eF85YJoyhrv61nsMIYlV4VLUt87ARX9u6ifFb9KB7QyjU0+9
	VjUNrkCvWjZc6yx9BMEtHaJ1Bcjob1vlP12wvp85Jhhs55GEspjDPGulei2p6u4BpSfU32TAzJUt2
	x1ETrcSLpZ9jyct2SSYcl0BuiZRzttK9Vhr4fs4VTiSZ+O0awjfNxPyUHeUT4MP2/dtMZS2y/WGn5
	eOAUOdwrL0tVBEf2p6LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1fJl-0005RX-Bi; Sat, 24 Aug 2019 23:19:34 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1fJU-0005RA-3G; Sat, 24 Aug 2019 23:19:17 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 1E0F91525F715;
 Sat, 24 Aug 2019 16:19:14 -0700 (PDT)
Date: Sat, 24 Aug 2019 16:19:12 -0700 (PDT)
Message-Id: <20190824.161912.1377369658338940538.davem@davemloft.net>
To: opensource@vdorst.com
Subject: Re: [PATCH net-next v2 3/3] net: dsa: mt7530: Add support for port 5
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190821144547.15113-4-opensource@vdorst.com>
References: <20190821144547.15113-1-opensource@vdorst.com>
 <20190821144547.15113-4-opensource@vdorst.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 24 Aug 2019 16:19:14 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_161916_141125_0ED0E650 
X-CRM114-Status: UNSURE (   4.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, frank-w@public-files.de,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux-mips@vger.kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 vivien.didelot@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ren=E9 van Dorst <opensource@vdorst.com>
Date: Wed, 21 Aug 2019 16:45:47 +0200

> +	dev_info(ds->dev, "Setup P5, HWTRAP=3D0x%x, intf_sel=3D%s, phy-mode=3D%=
s\n",
> +		 val, p5_intf_modes(priv->p5_intf_sel), phy_modes(interface));

This is debugging, at best.  Please make this a debugging message or
remove it entirely.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
