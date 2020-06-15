Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C24C01F9F42
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 20:20:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KhEIE87Xh/IfAuFJ58tVNOQFqozNgpupBxMJpoJ412U=; b=A2llW22hXezqrE
	zNHdRps8zPFIK6Owv13Onndi+N/goUO4fkO0pdt9mBYbJhYDai1gVX+8p2CsS6d8s9OVPBl+MyE7R
	h9OoIZcZvnExWozYUWFR/XRJchDmvgZ7yJ6DUQSaksEIkcBzjllNg1QGsyc7vrZFLndKWDt0DzRC8
	qinMRlrCaysWiSVU58UO/HD/VTPKUTc2kJbiwTIIvT97pfPQt6QafMLkiuZdEG28bVq+cgpydXNrT
	IV6F6F44MYjcefAq+H1Z4FJsNqZRnaJfgtnK27TGVO+QiXBqvvERwB4ECPG0qmp+jTSJZzadnkjCF
	lMtMIJ1X2f4YIJyj8IDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jktiq-00076X-0y; Mon, 15 Jun 2020 18:20:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jktii-00075y-BY
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 18:20:33 +0000
Received: from gmail.com (unknown [104.132.1.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 549F4207DD;
 Mon, 15 Jun 2020 18:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592245231;
 bh=c0Nbm4zngEN1sy/wfi1WxfhlVFRANcYSd7wzR/K2LRg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kpceXcvsJ9sj5LJFKPg4v9M9aLRIUiWf1wEinECwiHE8Cqnpr9MJbUYsDbkZ1WhlR
 DAFGs/ZnT4WKhGqtLPj1PF/IyRpz7x5qtNRO+tbS1Gljt9Ovp5rl7kVQtclSO1CbK9
 FmQG0JL7VAdawx8/NBHIiqNGV5Wh+3//SKEZl/qM=
Date: Mon, 15 Jun 2020 11:20:29 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCHv4 0/7] crypto: sa2ul support for TI K3 SoCs
Message-ID: <20200615182029.GA85413@gmail.com>
References: <20200615071452.25141-1-t-kristo@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615071452.25141-1-t-kristo@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_112032_415482_33B4449B 
X-CRM114-Status: UNSURE (   8.90  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-crypto@vger.kernel.org, j-keerthy@ti.com, herbert@gondor.apana.org.au,
 linux-arm-kernel@lists.infradead.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 10:14:45AM +0300, Tero Kristo wrote:
> Hi,
> 
> This is basically just a rebase of v2 to 5.8-rc1, and application of
> Rob's Ack on the dt-binding patch. No other changes.
> 
> Only driver side + DT binding should be applied via the crypto tree, DTS
> patches should be queued separately via ARM SoC tree (I can take care of
> that myself assuming the driver side gets applied.)
> 
> -Tero

Does this driver pass all the crypto self-tests, including with
CONFIG_CRYPTO_MANAGER_EXTRA_TESTS=y?

Please include details about testing in your commits.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
