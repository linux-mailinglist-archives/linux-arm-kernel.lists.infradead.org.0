Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FA946B33
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:44:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Es25qlIQXHqAglE8KuHZ8ggCHls/Q9PNtwrBMcoKv6k=; b=FjhEtp41P6zlPE
	hHQXThORjH+29ZADWfvOXQpopAzrA9Gw+AiFLApNtEOl5AfNRrW34RThuajCR5K7RknVuncf/EcYj
	d8NGYLMByYNj63P5/OfIBtOxE+V7Jt/57cte6Ia4gPTYPLaO2evbAJSlmiwVwswDaWS4CYFCFDjoF
	ZlWjowyJJMTFdonTwCYIOxbFkmnaQejkF/aBa7GbLx+wzFpzY5dMiET9Yq6M7PtCXlZ5Ef0Rj4kFo
	CYDOyc03Wiv7vjXB1XKaioS3U3mTlOvPX5m15EDVQGnASTCY6w2v+YhKY0ojPOrMsy8omqO1+RM6l
	st/HWjbiqnwgJth9ycrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbt3a-0003Fq-8c; Fri, 14 Jun 2019 20:44:18 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbt34-0002yG-4f
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:43:47 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id ABBEB740;
 Fri, 14 Jun 2019 20:43:45 +0000 (UTC)
Date: Fri, 14 Jun 2019 14:43:44 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v2] Documentation: coresight: Update the generic device
 names
Message-ID: <20190614144344.24604b27@lwn.net>
In-Reply-To: <CANLsYkzEz6RvDQT-ua+NmV=H3y08TZUJ2RqutQCEXxpL+75_=g@mail.gmail.com>
References: <1560189762-5267-1-git-send-email-suzuki.poulose@arm.com>
 <CANLsYkzEz6RvDQT-ua+NmV=H3y08TZUJ2RqutQCEXxpL+75_=g@mail.gmail.com>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_134346_196680_6270E1F6 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [45.79.88.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Leo Yan <leo.yan@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 11 Jun 2019 09:57:57 -0600
Mathieu Poirier <mathieu.poirier@linaro.org> wrote:

> This looks goo do me.  Jonathan, if you prefer to handle this via your tree:
> 
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> 
> Otherwise I'll pick it up.

I've applied it, thanks.

jon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
