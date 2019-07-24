Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30518734D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 19:15:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dz//2eXZN3Qtb1XsohG1TTiH1Cikbj4Mx76VeKLi6K0=; b=JtC68STY5DyGWZ
	ctcHrrbU6lvBUMpYlC7T+81md4yJHrpqjK4VFV3SxyhdNAi3HRJjR+jL6GNGMFY1C7VKAdwq9Xd8S
	QHIIhmcPWpFOhrhC7k+q8yD4+Hfv3jKULPw42cdjVGsDON437Dhr9BL0S4nIqkBcaeW9UXSnn4AVP
	LGd/WUxHnAMUdlwedxl3W19MoOs5MpsmfMs8WKgdJ3pizDEa8jSliDX8iwShMeyBxvM3yufbi1Bo8
	OClA7/iT8mRf1n+O57dxChcfJ5V8ZS3aLkIG6X7Mf+juNRALgc00PihAUSQlqHBlkMTP0JauujdRS
	gfd6SxOhC5KF+rc00K5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqKrl-0008Du-1g; Wed, 24 Jul 2019 17:15:49 +0000
Received: from mx3.wp.pl ([212.77.101.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqKrR-0007v6-CU
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 17:15:31 +0000
Received: (wp-smtpd smtp.wp.pl 7512 invoked from network);
 24 Jul 2019 19:15:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1563988524; bh=gEkDwIuDO2Mlt47g7fHTqzHcSxdtZTDr5XQG+4+AvdU=;
 h=From:To:Cc:Subject;
 b=ntAPjIlLwGvOxgC2v+xm/bV3mQvMUDMExK5e9IszAZdswFVOM1CMFo9sCJ1pKqGLF
 kpQZCuccigvIcEx+x1AdexCezOy9xB+tz6O3Y7xqR2h9mmc1Ypn5frAT1xfDiD+D4g
 91q1Fzzc/O8xKBgRvC2r2763CVpjRIG6Mu7bIfb0=
Received: from 014.152-60-66-biz-static.surewest.net (HELO
 cakuba.netronome.com) (kubakici@wp.pl@[66.60.152.14])
 (envelope-sender <kubakici@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <navid.emamdoost@gmail.com>; 24 Jul 2019 19:15:23 +0200
Date: Wed, 24 Jul 2019 10:15:14 -0700
From: Jakub Kicinski <kubakici@wp.pl>
To: Navid Emamdoost <navid.emamdoost@gmail.com>
Subject: Re: [PATCH] mt76_init_sband_2g: null check the allocation
Message-ID: <20190724101514.29efc10a@cakuba.netronome.com>
In-Reply-To: <20190723221954.9233-1-navid.emamdoost@gmail.com>
References: <20190723221954.9233-1-navid.emamdoost@gmail.com>
MIME-Version: 1.0
X-WP-MailID: 3fa229c2b67e2a6425aaa1fc737c8941
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [EYOU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_101529_752795_13D7E1C1 
X-CRM114-Status: UNSURE (   4.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.10 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kubakici[at]wp.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: secalert@redhat.com, linux-wireless@vger.kernel.org, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, emamd001@umn.edu,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 smccaman@umn.edu, Matthias Brugger <matthias.bgg@gmail.com>,
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 23 Jul 2019 17:19:54 -0500, Navid Emamdoost wrote:
> devm_kzalloc may fail and return NULL. So the null check is needed.
> 
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>

Acked-by: Jakub Kicinski <kubakici@wp.pl>

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
