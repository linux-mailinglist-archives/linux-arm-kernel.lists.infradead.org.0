Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E497211A310
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 04:33:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Junk0k6xOZEQ27oBdxkZFg0oyKJ/lojRk/STyjCX3+s=; b=MktNpxLws1jwdI
	txKa9+2CPEO1hNypFdq3PgHCqX6gwndWJCltel4S7mIVSp6N6FACu78YaLarTZpV3OQ/ncOWcM/g4
	gHOhisaeOFYYcIR/RYHwOgmh3S3VYQ8We0+V1PFCaXwXWwkluq9CFPTG0+zyddLt13cSaZGjkRCHD
	rzEWA3cLOyyS5c80Q8F4eB8T7qqVfPjwZHEu6o3a7HFOFHMy289uCFIEHpewHGti/GPW5ce/gSdRD
	shEDlmMybOhvnITHubs1e1+NHKZq33dEnfY/ozCxfLgcQRPlqPOQQUleG28KLXXHjbCzdD+qjltA5
	282aDGg1yRMHQMe+L2qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieskY-0003ci-TE; Wed, 11 Dec 2019 03:33:18 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieskN-0003U3-Re
 for linux-arm-kernel@bombadil.infradead.org; Wed, 11 Dec 2019 03:33:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CmowkFBHH1PRIjvpm2xlPALWW45O1+xjZQBN/8bTv24=; b=1CrQY1MZlkh038zWw5urIMHfB
 CqTAPapew8t8BULe79iAVojShbXXDigcuOKYb5Dj+RAnKIjDLoy2JexNaPvNSOS7j9sm6mGUsI38k
 f0/yDrl0i2E69it5nZlc77HGg/Xb2zP0IaGHonzacDkUdLHTa3Q7T7MiHakEkwqjtRaldKVamuDJ4
 KZlWdw4vLA8nkOuzgq3HQlM0I/Tk1wohIiKg51YU9QQ4TN6YmmY3olfCKLhE3v/JLnznixux22DUj
 Eqo6lev2kmUxPJCbvMRIKKQZgQ0TeDLqxvDoyV0gbdIvnEFGMaXR1QHJgntwQn7zCUucbkgfEDYe9
 Hb2b5knXw==;
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ierrF-0004GH-0e
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 02:36:13 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E4F42073B;
 Wed, 11 Dec 2019 02:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576031766;
 bh=0tXca0CiA5frUVUX58kVbZQDz4EOCR7wEGkCvsWNHcc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M1QcCddxk29I5v8kJuhdxUZRVJeO53YjiTjksRy+dXDLlsv4EQ2IxdzUa9LnTqAJw
 m95vm0dAvw0q2n8UhsFsUJdPSKgsoPLGmklntCKLEZwQvQ6IkYPpqH0HQ7vIJp/I5e
 sh53/hhll4IuSstdKacG9w4c98tadKgFDNIXmgdY=
Date: Wed, 11 Dec 2019 10:35:58 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peter Chen <peter.chen@nxp.com>
Subject: Re: [PATCH 1/1] ARM: configs: imx_v6_v7_defconfig: enable USB ACM
Message-ID: <20191211023557.GD15858@dragon>
References: <1575338261-22056-1-git-send-email-peter.chen@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575338261-22056-1-git-send-email-peter.chen@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 09:57:41AM +0800, Peter Chen wrote:
> It is used for USB CDC ACM function.
> 
> Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
> Signed-off-by: Peter Chen <peter.chen@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
