Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F085F3CCB8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 15:13:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qOCRwKVsOOv58KJDmyvssgnIpgsijdXCoQTy/ugqn74=; b=hQDeHBSAKRQv00
	FVmQgqYTd5XFGu+DrECCpx1VwPRYGrI1MFasfwKjh6YPpdmewk5aC7q07logAY+5DjxgGEVg/PhvO
	8NKrJ+/qF/iGrAXvN/LEpEPIxYK5MGBTVnY34yS3n2WkX0MUyoDUIuOBYkgInAERTd05EHk6v1c5W
	kJG+0BxFXy0sGZBDoklaPk9NWbqZ5FF0ydPXU4QWLrQISn0PTzoyOAKdHNKn7e1+vms71BAhQgdV7
	yLucDzDYq3sp/0K1H+CAKOWYzrz1C8dS5f2fMLRnJA2px7PTBiG6AVwTiFNsyfa11DRnc7HcRanoU
	CHxekLX12A0iJ2mfO12A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hagaB-0004C4-Fs; Tue, 11 Jun 2019 13:12:59 +0000
Received: from mail.skyhub.de ([2a01:4f8:190:11c2::b:1457])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hagZu-0004Aw-UL
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 13:12:44 +0000
Received: from zn.tnic (p200300EC2F0A6800DC92A88D55C2D513.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0a:6800:dc92:a88d:55c2:d513])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id E82661EC0911;
 Tue, 11 Jun 2019 15:12:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1560258755;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=EJ7VR9sUEWWF+ZecbxZGX04se8PAYDXjUb4dY5s/kD8=;
 b=KCHvj3ZYpkLfnoRKsXFvWYlmUSfvoaj1TEiKYWgNhqglSi/LYCDwov/V5k+8SIjqzvJoMI
 qIddH3YStkbgi4BPh7zrK+4/pIcOUOr/iFNHx27X3sBpwtEhkx8MCdrSE3yRUHWd8GXORE
 2cxFoWi7Lw3vA5Z/gUeITH0YYX8UOo0=
Date: Tue, 11 Jun 2019 15:12:29 +0200
From: Borislav Petkov <bp@alien8.de>
To: "Stefan Schaeckeler (sschaeck)" <sschaeck@cisco.com>
Subject: Re: [PATCH -next] EDAC: aspeed: Remove set but not used variable 'np'
Message-ID: <20190611131229.GF31772@zn.tnic>
References: <20190525144153.2028-1-yuehaibing@huawei.com>
 <04f103fb-54b1-4911-8164-44b20bfd1e72@www.fastmail.com>
 <960D5667-41E7-47F3-9C0A-726CA919B82D@cisco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <960D5667-41E7-47F3-9C0A-726CA919B82D@cisco.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_061243_138418_6BF082DE 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Andrew Jeffery <andrew@aj.id.au>, YueHaibing <yuehaibing@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "james.morse@arm.com" <james.morse@arm.com>, Joel Stanley <joel@jms.id.au>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 03:10:54AM +0000, Stefan Schaeckeler (sschaeck) wrote:
> On  Tuesday, May 28, 2019 at 6:27 PM, Andrew Jeffery wrote:
> > On Sun, 26 May 2019, at 00:12, YueHaibing wrote:
> > > Fixes gcc '-Wunused-but-set-variable' warning:
> > >
> > > drivers/edac/aspeed_edac.c: In function aspeed_probe:
> > > drivers/edac/aspeed_edac.c:284:22: warning: variable np set but not
> > > used [-Wunused-but-set-variable]
> > >
> > > It is never used and can be removed.
> > >
> > > Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> >
> > Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
> 
> Reviewed-by: Stefan Schaeckeler <sschaeck@cisco.com>

Applied, thanks.

-- 
Regards/Gruss,
    Boris.

Good mailing practices for 400: avoid top-posting and trim the reply.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
