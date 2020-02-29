Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F95174741
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 15:11:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sUXn16SK2P4RfwMwfZ+e/QSUz54PAuw6h+ww5Wa2Y8A=; b=giIrl1uFZDF3Ks
	RtV27pR7WB58BcYGOD3aXwwI4BizBQgBhjSTE99krgZdCOKUT29Hfo30hdC1XjIqH4CIX5O8oiVpL
	Bd373P3UC7UqlFhg3LI3xbbwAUnUUuNz9ds91Ou8SXSJpZ7tekqlL5tQ6o/eZu/sz/o8oPKT5iLly
	K4Br+pfheh0GKUeRkDueisBs15zjAYsfMHoCd+a8lE/fXsX3Hp5io/3j8fbl2aHny+zFOwKB9Wv1z
	+hPZr2GYeob8LQKWAusw0jL6Deb3u9pj+30m6pOOhUZiUjekUwvvq63twx+L1UQP7MaNseZFyx61N
	xUZ/dwh3yjYlvwvwfAXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j82px-000235-Om; Sat, 29 Feb 2020 14:11:25 +0000
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j82pQ-0001mR-CQ; Sat, 29 Feb 2020 14:10:55 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id B0E383940EB1;
 Sat, 29 Feb 2020 15:10:49 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aebFSxlRHPMc; Sat, 29 Feb 2020 15:10:47 +0100 (CET)
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add initial support for
 Pinebook Pro
To: Johan Jonker <jbx6244@gmail.com>, t.schramm@manjaro.org
References: <20200228203806.346299-3-t.schramm@manjaro.org>
 <68b8b201-d77a-7f91-fccd-8fec7eb15da5@gmail.com>
From: Tobias Schramm <t.schramm@manjaro.org>
Message-ID: <8b3a8591-4b2c-fc6b-1693-b31e28e10817@manjaro.org>
Date: Sat, 29 Feb 2020 15:05:35 +0100
MIME-Version: 1.0
In-Reply-To: <68b8b201-d77a-7f91-fccd-8fec7eb15da5@gmail.com>
Content-Language: en-US-large
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_061052_592075_4A6B495E 
X-CRM114-Status: UNSURE (   4.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, m.reichl@fivetechno.de,
 npcomplete13@gmail.com, heiko@sntech.de, katsuhiro@katsuster.net,
 linux-kernel@vger.kernel.org, dianders@chromium.org, robh+dt@kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 mka@chromium.org, jagan@amarulasolutions.com, nick@khadas.com,
 andy.yan@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 aballier@gentoo.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Johan,

thanks for the review. I'll include your fixes in v3.


Tobias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
