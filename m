Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D14D6790
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 18:43:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kHkIJ0LlSjDk9NID8Mmj8LM8IUiiUQm8fmgYT4pfFLs=; b=jyOML6ys1cyg9P
	DYu2jbzZn4QqPDx7lU/sZvumJg1GVGb2Nw5M8c/AC2NOueHb36nqZ/+Rj9zgNdbNkVFJnYAFpDr8V
	A8BiT3LcGopg2s13VVg/CSYiHc0+iYulQ81WnZxzISTCiQkgZNZwDVzz6OtCTpFLlpkB6d+0+cVBL
	Iv0U+SSenDwA3urKms8GKDpfOnFByzndC0H6bfXH/aKTf+pNRIOh7JLgltjKWYzyXm3a7xkSzo1gT
	e9zXYSCXADZvJAz5MPnm3zWVtOCiTsqO/QVILw6DvQ2JxkLrJZH9MdnMaY8pPEhyiXN+KNescF93C
	6HF+DMxLbMR2zPRV8bwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK3RO-0005eP-Oq; Mon, 14 Oct 2019 16:43:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK3RG-0005e3-LZ
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 16:43:20 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 198E020663;
 Mon, 14 Oct 2019 16:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571071398;
 bh=jUkpYa09cbg1NzerOrin8aZ7t3IhBLvxGwVjSWwxP/4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c/Zw+j9iow5A3WE1EqcqrrZM1mcChVGUdIlChBTLsWqihd5EbBNpKFtHUO82WI21j
 H1RdbzXkdW8CARvqTt7gJaoWHEVzeBtJ5MkhsI8TKYUS5uX1YydYJ8qjh5DMLV0351
 hvZ7PCqAJPZIY2Xl0EV7mknvJX2/l9RBzNySfwjY=
Date: Mon, 14 Oct 2019 17:43:14 +0100
From: Will Deacon <will@kernel.org>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [PATCH] arm64: cpufeature: Don't expose ZFR0 to userspace when
 SVE is not enabled
Message-ID: <20191014164313.hu2dnf5rokntzhhp@willie-the-truck>
References: <20191014102113.16546-1-julien.grall@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014102113.16546-1-julien.grall@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_094319_087611_9D808371 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: catalin.marinas@arm.com, Dave.Martin@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 11:21:13AM +0100, Julien Grall wrote:
> The kernel may not support SVE if CONFIG_ARM64_SVE is not set and
> will hide the feature from the from userspace.

I don't understand this sentence.

> Unfortunately, the fields of ID_AA64ZFR0_EL1 are still exposed and could
> lead to undefined behavior in userspace.

Undefined in what way? Generally, we can't stop exposing things that
we've exposed previously in case somebody has started relying on them, so
this needs better justification.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
