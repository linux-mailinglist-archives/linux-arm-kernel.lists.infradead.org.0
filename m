Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC3E125458
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 22:11:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d5wqNz8E/PJtft0TUpH1mgM5HczELA5z94CMqUHVFm4=; b=WzTlma82f5YdM4
	W+sGwtKN2EiYuXz/ILdlxUrAexLAqkZD8TGtrkU49sHxC+PoCZVh231A3UpdkpRhaFERDb+H5J7Rt
	e/MkcJDcN7KWlq4Vck5L0CoH47emmTPBLPaLEwuByI1XlLW71OEcS9eemTmQr4epoN5Y+HgFcAfyX
	d43Eq1uwb/qxnuIb7Fil4yqy5gjzDInQQTIH/ZX4XWxwq6SR7RIQuIsmdJn+zwk2gC9CyM22QUxIr
	zBTfvn2o/zSPX4g9CyWk3n4hqljhm79+f1Lc8WZlqQ5mEgZaMHVHoW7wkyQct2Dp/MPvLVGWa6ekW
	mCRg7rvI/mWcub3+dsZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihgbL-0005YQ-Rq; Wed, 18 Dec 2019 21:11:23 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihgbD-0005Xu-AB
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 21:11:16 +0000
Received: by mail-ed1-x541.google.com with SMTP id t17so2828634eds.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 13:11:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hr7toINHw/iAnDrTVS41gqcv0IO9jGOGlaJRRX6HtRc=;
 b=Yc9HL4dmvuVtA1hqpH3w649GWiSriaIdkvI8nXwcp2OqH8ZA710XQUf7rzqbIvmvSs
 wIQ2X1WO0b68Wrbnx34fUtBQ4DUY9+cutDhxyPRLLXCzDzQgIlSmRi88M4J7y5OTFAdf
 utyUH6R7V4Wg6zCugkdFlYh+oiEMcrcthwzghhD8AeCnoCByKEw/uRG4Khy9wPOpXezo
 LVA1NJynvisLO8eCsjUz5L222tAGwjRM+e+BzIAeK379y0NcuXcnvHZ3PW8pguMmhDm5
 /oUXQ4+shDdOnc0H1rtFMsxegKAuoDq2jO7t51FvxpHfoVPyfJ96EjLF8IOi51I8dG3H
 sfEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hr7toINHw/iAnDrTVS41gqcv0IO9jGOGlaJRRX6HtRc=;
 b=nE6h93/tsY9K9DlSm79PNQvVKRELX/T8rDF+QOBaKApvo6EEIoAMKp1hSGE678ClhZ
 URkrRyFWRURGK5+HRnEIisBpEdk9R0o1beyBmeDVjOgMlTanalXbkfc2o4Bv8EVYu0ht
 2U7B/Zb5A6ACuK0eakUCEVjw1htH2qTarmKx9t1X3A8MuEJcSt1+AmY35O8ohvrUlEn9
 pith+r7ENsdK9GktrQ7ZiPWxjYtux4gJ6l58s7XGtMXAsah/cKWou4+yzC6+Qs9tcpqj
 zExIsDQCNpNLyq4JTKNproxPammNQZiWk7KxNNL0fetC/Znsg+7ApIs01npFX8luVcwR
 NsbQ==
X-Gm-Message-State: APjAAAUw4MkKRAvJmGKGW7qWPs/MFyyAJ7rEa0aCUXomfUaOfmNwhJ+a
 cWqYhsTJvfvmaei0Rmv9dAaPfHjA+AWONrwELd6viA==
X-Google-Smtp-Source: APXvYqxUveWYs+R5UGAvJL5Zp/Pe1Egw5UoWu7yq5s55Vn88PgYlF8axZ/QOJSQ2OANQC2UMBMt8bropFYpNPNkUfOs=
X-Received: by 2002:a05:6402:1cbb:: with SMTP id
 cz27mr4984720edb.227.1576703472972; 
 Wed, 18 Dec 2019 13:11:12 -0800 (PST)
MIME-Version: 1.0
References: <20191204232058.2500117-1-pasha.tatashin@soleen.com>
 <20191204232058.2500117-2-pasha.tatashin@soleen.com>
 <c5dcf342-90f4-beb5-d2b1-4a37ccedfe42@xen.org>
In-Reply-To: <c5dcf342-90f4-beb5-d2b1-4a37ccedfe42@xen.org>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 18 Dec 2019 16:11:02 -0500
Message-ID: <CA+CK2bDySpttFq1ro2QK9jPoRi5unXz6bx-6Qv1OpoNimMd6Ug@mail.gmail.com>
Subject: Re: [PATCH v4 1/6] arm/arm64/xen: hypercall.h add includes guards
To: Julien Grall <julien@xen.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_131115_530486_896D89CB 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Stefan Agner <stefan@agner.ch>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Will Deacon <will@kernel.org>,
 boris.ostrovsky@oracle.com, Sasha Levin <sashal@kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, Marc Zyngier <maz@kernel.org>,
 James Morris <jmorris@namei.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 xen-devel@lists.xenproject.org, Vladimir Murzin <vladimir.murzin@arm.com>,
 alexios.zavras@intel.com, Thomas Gleixner <tglx@linutronix.de>,
 allison@lohutok.net, jgross@suse.com, steve.capper@arm.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>,
 Andrew Cooper <andrew.cooper3@citrix.com>, info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> >       /*
> > -      * Whenever we re-enter userspace, the domains should always be
> > +      * Whenever we re-enter kernel, the domains should always be
>
> This feels unrelated from the rest of the patch and probably want an
> explanation. So I think this want to be in a separate patch.

I will simply remove this comment fix, since I do not change anything
else in this file anymore.

> The rest of the patch looks good to me.

Thank you Julien.

>
> Cheers,
>
> --
> Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
