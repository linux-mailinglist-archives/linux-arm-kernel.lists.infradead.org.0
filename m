Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D699C05A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 23:19:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+wBs5CDnW5AWA2sPUTydsAMT0Kbs8ScqtxDoxYuK0ww=; b=tZiZXwYtC0C0UL
	DdLrGkOuHO1THrszKDn+xCDOwJaqpi0oo9Fag3Oz0+Uwem1Gy+rhMyEMkFyJkKjxeY2J/0yCLtFzJ
	zWQ1CQdg9NU0VNt/ooJAdNPKEUVfMynKujmwneR9XAku1hDqFAEjMbju4og9xOCR0+6m6RmYe0bCn
	akKlTeaY3n5aVk7J8l7ZinKG5tchBSpiL82YQ3Qog4QAtAu/UQvh3mvZPn5UM0L4DL0m+bSBgdHZL
	qAbaM2AdeaY2msSghr+LCSD4Y38wXPP77qRmv7ZfmdK7kv/oxtv0nuLJOSl2QHDEuj6XRs69rPKLk
	AQemTpd5jlZYI4bWRNbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1dQu-0000XV-HN; Sat, 24 Aug 2019 21:18:48 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1dQK-0000WY-2o; Sat, 24 Aug 2019 21:18:13 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id C951915251CF9;
 Sat, 24 Aug 2019 14:18:05 -0700 (PDT)
Date: Sat, 24 Aug 2019 14:18:03 -0700 (PDT)
Message-Id: <20190824.141803.1656753287804303137.davem@davemloft.net>
To: andrew@lunn.ch
Subject: Re: [PATCH net-next v2 0/3] net: dsa: mt7530: Convert to PHYLINK
 and add support for port 5
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190823010928.GK13020@lunn.ch>
References: <20190821144547.15113-1-opensource@vdorst.com>
 <20190822.162047.1140525762795777800.davem@davemloft.net>
 <20190823010928.GK13020@lunn.ch>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 24 Aug 2019 14:18:06 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_141812_153332_F646A7A6 
X-CRM114-Status: UNSURE (   5.22  )
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
Cc: f.fainelli@gmail.com, frank-w@public-files.de, netdev@vger.kernel.org,
 sean.wang@mediatek.com, linux-mips@vger.kernel.org, opensource@vdorst.com,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 vivien.didelot@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Lunn <andrew@lunn.ch>
Date: Fri, 23 Aug 2019 03:09:28 +0200

> That would be Russell.
> 
> We should try to improve MAINTAINER so that Russell King gets picked
> by the get_maintainer script.

Shoule he be added to the mt7530 entry?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
