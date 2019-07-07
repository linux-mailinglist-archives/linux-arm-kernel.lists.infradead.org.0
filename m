Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87CDC615A9
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jul 2019 19:22:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BRD7mJhFR8JTCMe8NTZyivEwFrJO2v3Xs/ujAV5ZDYI=; b=ug+MuDjTsL8yFf
	hMssSeeCEjCyqmOW0lsNa9Q7/rDYP3esyyj5S95xgQMI+4LatGl6yJIUNI72HvhhGT2baHjAcO2L2
	AyBknqZvwA3zqMHYlQgjiE1izYJD0GJv3HFV6k6qB0T2Z4ywcv+ik4SRi47ekZVSZm13mQgO2QD8Q
	kBzRUAOveg73pp5tvH4k1hez/SRsFAR7cEMSvKFh0cuQ0wY5KjsJBrUeE6BU21z/wHvMwWwtLPca2
	+0DW6q4LklNFBTlSQGnjHgHfxaaLLWB2wzZqPfw8cilRsa/2ecCNZiLy1rtnExr5DAONtWYKnRFU4
	cNu1qkdvVi+Qzbh+lDkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkAs3-0004zY-UX; Sun, 07 Jul 2019 17:22:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkArr-0004yl-AZ
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jul 2019 17:22:29 +0000
Received: from localhost (unknown [49.207.58.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 123B62082F;
 Sun,  7 Jul 2019 17:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562520144;
 bh=2s2gE1E50GfJ/EeGP73+waB27rAFwSqJTvo/pyPbyTs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p8xhwKgCQQTlYyEcvQ9jYHJsRv0Z+cre4Dl/vakph1j//935NcoNxWlgYm9an0aBI
 tm8lVCX129aYQ1F7gtpxXixVR8/7M1hOdTo8Rd8T68DdyqUjfLMmNJoRRRYfkIRwdr
 hatgmaikvSFZLBe+cNlfc+FPBrhwAvaXzdjvaH4g=
Date: Sun, 7 Jul 2019 22:47:01 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Raag Jadav <raagjadav@gmail.com>
Subject: Re: [PATCH] dmaengine: at_xdmac: check for non-empty xfers_list
 before invoking callback
Message-ID: <20190707171701.GI2911@vkoul-mobl>
References: <1561796448-3321-1-git-send-email-raagjadav@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561796448-3321-1-git-send-email-raagjadav@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_102227_388411_31D96153 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dmaengine@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29-06-19, 13:50, Raag Jadav wrote:
> tx descriptor retrieved from an empty xfers_list may not have valid
> pointers to the callback functions.
> Avoid calling dmaengine_desc_get_callback_invoke if xfers_list is empty.

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
