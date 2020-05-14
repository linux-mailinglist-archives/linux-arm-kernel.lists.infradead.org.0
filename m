Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B6D1D248C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 03:16:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zEIzJipgAtzCtHj8nn44kjiMMpCRbRq6EQ8/nJFvY7o=; b=nHIrC5BQS4lW7m
	rhihYEENe2GGD8OK2lgftTSzNmtXRzjmFbW58cqE8JNbGqb4OekUXd6KUjkMgoc2jiiD/13jYhFq+
	yNmpPT2bxyUdsuth2kgUh5UpfIH/bUmyMMXoGiIuER/CpxNwzT1me+ns6zJWLrV0nD4zbrkCleaPq
	fMUDnpx5nhBSotLoZl9ZpYml6tP6sfHj9byNTjpfS+HuVvUB4l3wLtbBorhqhrcSKvBCrhomX15r2
	V+KJrPrGH+N5mq0DjUIzQWTded3+lw20INzGvuhqmhzAwaFoolnVP2H7BCuNdTIP0WBpIi79n7PxQ
	JwGpREvJGImGG6TrrRfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ2US-0002dF-BT; Thu, 14 May 2020 01:16:48 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ2UF-0002bY-G9; Thu, 14 May 2020 01:16:36 +0000
X-UUID: dd104abef47d47b58c99678be06e72e2-20200513
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=zjMY/FI5QGNWlw3U1ijZ6qtahuUWrj4419TytCRSaxY=; 
 b=KQTYpgkmb5q5ycBXcY0piGxVCS/mYOvsireZQ7MPT+pBstfejaLe1ZJcxMz1u536QdGT0uQgqzhFU2g1VpqtDxPBaL4BJPiQDDrtyffSu9wmdmIxBeqP+uZCh8DmxPR1GN/Z1aYnR9teC0v0wVEardcFJjBuvypwRWbuCjWlmVc=;
X-UUID: dd104abef47d47b58c99678be06e72e2-20200513
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <qii.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 922265654; Wed, 13 May 2020 17:16:28 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 13 May 2020 18:16:26 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs07n1.mediatek.inc
 (172.21.101.16) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 14 May 2020 09:16:24 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 14 May 2020 09:16:23 +0800
Message-ID: <1589418905.25512.10.camel@mhfsdcap03>
Subject: Re: [PATCH] i2c: mediatek: Add i2c ac-timing adjust support
From: Qii Wang <qii.wang@mediatek.com>
To: Wolfram Sang <wsa@the-dreams.de>
Date: Thu, 14 May 2020 09:15:05 +0800
In-Reply-To: <20200512133852.GE13516@ninjato>
References: <1585223676-30809-1-git-send-email-qii.wang@mediatek.com>
 <20200512133852.GE13516@ninjato>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_181635_541885_89A72334 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: srv_heupstream@mediatek.com, linux-mediatek@lists.infradead.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-05-12 at 15:38 +0200, Wolfram Sang wrote:
> Hi Qii Wang,
> 
> On Thu, Mar 26, 2020 at 07:54:36PM +0800, qii.wang@mediatek.com wrote:
> > From: Qii Wang <qii.wang@mediatek.com>
> > 
> > This patch adds a algorithm to calculate some ac-timing parameters
> > which can fully meet I2C Spec.
> > 
> > Signed-off-by: Qii Wang <qii.wang@mediatek.com>
> 
> Could you rebase this on top of i2c/for-next or v5.7-rcX? Because of
> commit 90224e6468e1 ("i2c: drivers: Use generic definitions for bus
> frequencies") which was added two days before your patch was sent out.
> 
> Otherwise mostly minor nits.
> 
> > +static int mtk_i2c_max_step_cnt(unsigned int target_speed)
> > +{
> > +	if (target_speed > MAX_FS_MODE_SPEED)
> > +		return MAX_HS_STEP_CNT_DIV;
> > +	else
> > +		return MAX_STEP_CNT_DIV;
> > +}
> 
> Maybe ternary operator here? Your choice.
> 

Use ternary operator here will over 80 bytes, and need a line break,
Maybe this code looks simpler.

> And my code checkers complained:
> 
>     CPPCHECK
> drivers/i2c/busses/i2c-mt65xx.c:591:11: warning: Redundant assignment of 'sda_max' to itself. [selfAssignment]
>   sda_max = sda_max;
>           ^
> drivers/i2c/busses/i2c-mt65xx.c:597:11: warning: Redundant assignment of 'sda_min' to itself. [selfAssignment]
>   sda_min = sda_min;
> 
ok, I will modify it.

> Last question: You seem to be the one doing major updates to this
> driver. Thanks for that! Are you maybe interested in becoming the
> maintainer for this driver? I think there won't be much patches to
> review and reports to handle but it will speed up processing for me.
> 

Yes, It is my honor to be the maintainer for this driver.

> All the best,
> 
>    Wolfram
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
