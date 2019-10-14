Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D88DD5D08
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 10:02:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qVPKMQW9hOcgFlA3MLCcJ4HMgQQNE1CexSGguwHMr9Q=; b=pA1fP6o4BD41CP
	OAtZlWWHBJYu6oNl8q8iS579V5IoyWhYEzmR3GZV2FbdpolDMxe8frk5Af+Qm+xl71Jo4lFOZYhlJ
	5cQj6krqJr1IepKqKy6po6B1L5TKb/DPHXCUwa+KbYmYiAuCjj0fUnGa431FHR7xhhQMESCkLecZg
	P6Y6fynnlihpmpJLIfpH1C5SHk0A6dDS+sBoqQI1lzY1W3JdNeCXpABDnlWepYel/dTfyesHl4umJ
	VHlfu7LFWz29nvWP4c7mzORo0coVQCYcjSuRrwsWxla67Wo0we8dSuMEBs1hS/yKXZG5h/0gCiBXh
	T+Eel8KAqYMCGmJqJY3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJvJI-0004pq-1p; Mon, 14 Oct 2019 08:02:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJvJA-0004pG-12
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 08:02:25 +0000
Received: from localhost (unknown [122.167.124.160])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CCB2E20650;
 Mon, 14 Oct 2019 08:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571040143;
 bh=gjZ84eYSKyLRBQDVS9KkAvi+i1YmiBvyGp7N1fgos5s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KvNVoXYnE0Q/XbEnPebDW7zr35L3h2rMEjoshhFGj9G1vtitr68yRsxgzF774tF9v
 gHgeSDlq6C6KyhQsnW5FfGO2DdV4mB7KouXRCTwqOOcHXypFbfInX0bYAf5/XhCw2x
 QRKuqxaIJSz4+Zhoma8EH8FyaZ9z0wAbEWjERpzo=
Date: Mon, 14 Oct 2019 13:32:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v1] dmaengine: imx-sdma: fix kernel hangs with SLUB slab
 allocator
Message-ID: <20191014080215.GL2654@vkoul-mobl>
References: <1569347584-3478-1-git-send-email-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569347584-3478-1-git-send-email-yibin.gong@nxp.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_010224_094503_CB66259C 
X-CRM114-Status: UNSURE (   9.85  )
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
Cc: "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "J.Lambrecht@TELEVIC.com" <J.Lambrecht@televic.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24-09-19, 09:49, Robin Gong wrote:
> Illegal memory will be touch if SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V3
> (41) exceed the size of structure sdma_script_start_addrs(40),
> thus cause memory corrupt such as slob block header so that kernel
> trap into while() loop forever in slob_free(). Please refer to below
> code piece in imx-sdma.c:
> for (i = 0; i < sdma->script_number; i++)
> 	if (addr_arr[i] > 0)
> 		saddr_arr[i] = addr_arr[i]; /* memory corrupt here */
> That issue was brought by commit a572460be9cf ("dmaengine: imx-sdma: Add
> support for version 3 firmware") because SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V3
> (38->41 3 scripts added) not align with script number added in
> sdma_script_start_addrs(2 scripts).

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
