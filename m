Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1EC9125B61
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 07:22:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2HOr1rb5CQm7/hoj0Ec7oUbywO/WrqTBezdZofbc3ZU=; b=jk/PEgGERsaAb6
	hora+AE6I6k+D4xrPGeH3n7OgNhUF0wsM8oDRioxGbjgDfeir+4d3BDdPR/mAFWaDygsssig1R+GC
	OJgose6+debW+ZxSjytsp59lGTLdWhuLlXhXlRVC12QcaAMRa5j7pPXEzCKi3Ej4lNYkuInepswxQ
	DFH2OmRAUHemrAHnDU+232x+fg6KqKHiN976W5TB4zAyEcPakkDd32KApahaqrDjkkYc7IcaoA5HW
	gkd5Q6PQIk8qb5Yfm7QO2VqMbX3V2ezXYiHx75iSKVAmTl/mq3KkNVZzQYanz1+L96wXEkmtFWz9Y
	qaJldJ1LpWa9EOHMAXlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihpC0-0002My-1a; Thu, 19 Dec 2019 06:21:48 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihpBm-0002Lh-Ax
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 06:21:39 +0000
Received: from zn.tnic (p200300EC2F0B1C00F1A577DA89A48CEF.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0b:1c00:f1a5:77da:89a4:8cef])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 12A111EC0591;
 Thu, 19 Dec 2019 07:21:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1576736483;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=steoryErl3lLrePbu9jWvjYCeP3FpAY53rDyYMrb8r8=;
 b=B1pvdwoLIo/ycXAo+zotyuEdABWv7Cyj8C1eOb62tARv8nZnZrRxzlXv94d3kt5KmRjgn/
 VfhYxGP4bLYWe0j/uy7+CFTrQ1vdoB8Bbs0eQG3gD6ViLTOamhGs7kJyj5FHPCYBoxMqaa
 hViiA1kbHG5UOB/hgA9TjOsRXrh1Zs4=
Date: Thu, 19 Dec 2019 07:21:22 +0100
From: Borislav Petkov <bp@alien8.de>
To: Ma Feng <mafeng.ma@huawei.com>
Subject: Re: [PATCH] EDAC/aspeed: Remove unneeded semicolon
Message-ID: <20191219062122.GB32039@zn.tnic>
References: <1576735835-114453-1-git-send-email-mafeng.ma@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576735835-114453-1-git-send-email-mafeng.ma@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_222134_527137_5AB24254 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tony Luck <tony.luck@intel.com>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Joel Stanley <joel@jms.id.au>, Stefan Schaeckeler <sschaeck@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 02:10:35PM +0800, Ma Feng wrote:
> Fixes coccicheck warning:
> 
> drivers/edac/aspeed_edac.c:246:2-3: Unneeded semicolon
> drivers/edac/aspeed_edac.c:255:2-3: Unneeded semicolon
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Ma Feng <mafeng.ma@huawei.com>
> ---
>  drivers/edac/aspeed_edac.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

https://lkml.kernel.org/r/1576648806-1114-1-git-send-email-vulab@iscas.ac.cn

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
