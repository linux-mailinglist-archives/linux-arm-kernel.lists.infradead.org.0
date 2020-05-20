Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 149F91DAFE3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 12:16:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K3CSceyCqLL7JFagURPqTDdOOE2VzS1RbxTe8Dcroes=; b=IS5tO24wVtnIBP
	ydNpoqqJh9En1fm05sfN4JS5NILE+dwxydYJhoWTwfMjboZ8HkkzvXYlDo+hnmruDXY51+Sirflxd
	idcHEsYqwY8t52s3hU4LFHFnFUdsxQECjkp2wsvtvSSspAHPNK4QwNy0K3M21N9QmjreCVjkHtLYI
	rcZ3uQJQhe/JOFhIAjYcbIk5CRWLjIVmwEZhPWiWSYtkXgnlhOJAPX7UCyAbm9GE3Tyu4yWji3j2E
	CaLUnyLYCgVW1kL5R92At39Or+mlxZfXuNzyQGmkFcCOjyblXTWjYkuEGnGQAUTglFne5hAt3uiQ+
	GdVTBeMFZEf3jUSXUK9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbLla-0000mb-9Z; Wed, 20 May 2020 10:16:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbLks-0000NY-Ap; Wed, 20 May 2020 10:15:21 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E04CD207D3;
 Wed, 20 May 2020 10:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589969718;
 bh=S7tsdwkiGlZosauRkq6IW1mxdJPbcPef9De8p/Neb20=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=0pCyb1zyk19jmdxxCos7K6R4uS9ZhotAg1FK+1rPLCS327W7CHj4A15YEKyGnwD+F
 Q9mldUZkjoWWMK+BaW0Kmxzgsvl0goWt+sU+iJvaCtfAQAYDith20wuTcSEqFsesNK
 bs1AKPoD5s/CrTs5grp91Qs5pdVw0zxr6gofPOyk=
MIME-Version: 1.0
In-Reply-To: <20200518113156.25009-3-matthias.bgg@kernel.org>
References: <20200518113156.25009-1-matthias.bgg@kernel.org>
 <20200518113156.25009-3-matthias.bgg@kernel.org>
Subject: Re: [PATCH 3/4] clk/soc: mediatek: mt6779: Bind clock driver from
 platform device
From: Stephen Boyd <sboyd@kernel.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 matthias.bgg@kernel.org
Date: Wed, 20 May 2020 03:15:17 -0700
Message-ID: <158996971719.215346.12802870863066637932@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_031519_983998_D8146EAA 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 mtk01761 <wendell.lin@mediatek.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk@vger.kernel.org, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting matthias.bgg@kernel.org (2020-05-18 04:31:55)
> From: Matthias Brugger <matthias.bgg@gmail.com>
> 
> The mmsys driver is now the top level entry point for the multimedia
> system (mmsys), we bind the clock driver by creating a platform device.
> We also bind the MediaTek DRM driver which is not yet implement and
> therefor will errror out for now.
> 
> Signed-off-by: Matthias Brugger <matthias.bgg@gmail.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
