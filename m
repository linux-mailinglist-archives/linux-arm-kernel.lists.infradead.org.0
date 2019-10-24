Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F28E349A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 15:45:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LfEFvdiBUzygdgpCPMLKN39e6lU6y55ZwiwWJVMk6c4=; b=WQLOo6QPLmtl6M
	9UbMRi5+D1V0Kg33rx1qP7lWvftC2Wq1jDNkKWTj/yHN9Qgd2eMzOeY2kml3ahBGD6lJzamXVe8d1
	YUFPioUbbhfw+41nwTOt8CFG7m1LsPwPK95F39zafxyfVonpfqpFIkUtBL/tEUseshHGRbKRoNe8B
	kWU7iklHYgjdYTOwogU2WJDAPO386YDIwUc/hzUTaKCc3JYsUYeaz74qADDVdyrynbXMue85Nvso1
	qOAMMsMMzq7cmx7TU+Su/3pUf/nV1bzATi/hO2miNaxwj4Bc7jV9v5WnJ4t6OqXe/LAFTe4uD6XQL
	vdZ5jw2jL4cp8vPN58lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNdR8-0001Uh-3j; Thu, 24 Oct 2019 13:45:58 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNdQf-0001Iy-5k
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 13:45:31 +0000
Received: from zn.tnic (p200300EC2F0F6D006C14721BC32EDA46.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0f:6d00:6c14:721b:c32e:da46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 62C761EC0CB2;
 Thu, 24 Oct 2019 15:45:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1571924719;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=ZDDiIZV3N/1CCiWoHasK1HUYfVsvlhqlkoWiG1CA6ws=;
 b=Of9iK+JsmYNONFtkeLUj9egCEHJpdvzCfczMFWtS3SdEVJQxU8uZqj3e8xgaMRKMikxKsf
 SJ5k3neCBb/U7AEz9snyj06KhRrwswAPd2pZjSveI/Wend8ho72MXkzdeo/tLbKrb0AxL3
 DMbvcueT96ApYV6uTfXPCcXaflemDkE=
Date: Thu, 24 Oct 2019 15:45:11 +0200
From: Borislav Petkov <bp@alien8.de>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH] EDAC: Aspeed: Use devm_platform_ioremap_resource() in
 aspeed_probe()
Message-ID: <20191024134511.GA1942@zn.tnic>
References: <baabb9e9-a1b2-3a04-9fb6-aa632de5f722@web.de>
 <CACPK8XfUJ5VGpTS3gwxSVZbdWZKPH6PwT2JKGGJ2yzoXYKdtZg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPK8XfUJ5VGpTS3gwxSVZbdWZKPH6PwT2JKGGJ2yzoXYKdtZg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_064529_391942_AE39BBA9 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tony Luck <tony.luck@intel.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Stefan Schaeckeler <sschaeck@cisco.com>,
 Markus Elfring <Markus.Elfring@web.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 06:23:53AM +0000, Joel Stanley wrote:
> On Sat, 21 Sep 2019 at 16:47, Markus Elfring <Markus.Elfring@web.de> wrote:
> >
> > From: Markus Elfring <elfring@users.sourceforge.net>
> > Date: Sat, 21 Sep 2019 18:32:46 +0200
> >
> > Simplify this function implementation by using a known wrapper function.
> >
> > This issue was detected by using the Coccinelle software.
> >
> > Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
> 
> Acked-by: Joel Stanley <joel@jms.id.au>

Applied, thanks.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
