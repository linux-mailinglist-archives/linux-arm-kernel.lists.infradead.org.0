Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDE31466D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 12:35:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1sCP0HPSHFD/36IBxzDfXmg/TuD7emnJAWXkKt8bw7M=; b=h/wUQD6prKZsEp
	Xaf61CpvzifPXunmxyHkEZYwJez6yN3O7h+agCgvykVLahBlX/m14BtHMkvsiC2FS+blLi4rT/ne8
	L2A+YsGXXbF9/BQDy5PoL0E1v9Lx5/z3bwbWLl76IM1y7cEvQsDmUC/I94u4n0hLlZ0OGp9DZzqj4
	OKgNmJ8dqZKvC7I5798wF5Oh0k5BbiQMx1qNXFkn8dxwrWer95eT3GCfFDrr8fPzA0mor4GSmMVAt
	YqexASXTQGbNZVuIN/5EpCMfE1gUYjAPUjup88Cqb0JO07PXuKQQFm4Ja592ahg0wVPzrW0Hn01Kn
	XZ6HzTB0h/qkJ9DATL7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iualt-0005bx-22; Thu, 23 Jan 2020 11:35:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iualj-0005bM-BP
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 11:35:28 +0000
Received: from localhost (unknown [106.200.244.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C9BF24125;
 Thu, 23 Jan 2020 11:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579779327;
 bh=izvZuwImB3GgfCiGqIjOGun3WeYdSpQvEwdBkmy0m/U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2qH3LgwDIP17Bj3NnZYz9WhRdGYZN/Cg6wLQ16qKQj6ZoVLcofKlD39gvGT0ChX/g
 vdU9FKReNNCbZRx6stcAxVKYS6HvOniAxpHd+ImpVAyr/g/iDlvygTpxGyoa4ee3RE
 iXMOkDy9uEQFnBPurv2owJQFVUZrKUcvxalFu4IQ=
Date: Thu, 23 Jan 2020 17:05:22 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] dmaengine: fix spelling mistake "to" -> "too"
Message-ID: <20200123113522.GY2841@vkoul-mobl>
References: <20200123092359.10714-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123092359.10714-1-colin.king@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_033527_415337_50699AC3 
X-CRM114-Status: UNSURE (   7.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23-01-20, 09:23, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There is a spelling mistake in a dev_err message. Fix it.

You had sent this earlier, I have picked that one already!

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
