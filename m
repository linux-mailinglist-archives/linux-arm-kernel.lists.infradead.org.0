Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A61113133
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 18:55:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N2wVoUXliJhHhyQTAuI36NAO284kDSj39CA+lJkSBYg=; b=TSyVDntOU4kK9p
	isICg/aaH/UpNAn30QkzSrDEmBqxjYBIiv3KaAcxdxe6iEhfwBCagvk/nF4vwX+q1yNzkGbKc6UcX
	v3r6nu7bJAONpYv643euWWtNOzuF9gsiyjhnmDnSsj8pXUGRw8J4zcMhL/Ldp8RN408qY+NfUTJzQ
	DbKZ102WQ3ba+OW5/qMD1rqgvsbDlSIb5/hySHYzvcCyBcOJO1nPLCC+Me9hdEq7VuKyDmPA29Zdi
	1kuvyhtlcHUE1nybCaGOsXRBwcqvYPgQgWJd87nQNzFOGCN/0YnsXauhqJthzeDMrekCzlCQf7W4Y
	VkpGXOGtaTqum5AUC12g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icYsR-0001ZV-HY; Wed, 04 Dec 2019 17:55:51 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icYsK-0001Z5-Ff
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 17:55:45 +0000
Received: by mail-ed1-x541.google.com with SMTP id e10so126142edv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 09:55:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/QBiOCr7c4l7fZjKklo3yZ4ZIuYTkAcsgsNgIGBN47E=;
 b=CmqYRADbzr0G4HWvjRmoRSG65lHFiqcXXzx9WbxdkJJtwwFPkv6L6uhvSr8NbL8H00
 3ezARPSmbB3svk8QCSrCaesCNvwd3cCxpBYJrVUau6Y/wlyJqh4o0Q61o4n/Vfy08utU
 rk0ZgwPE6al6bX+5S8CbsYWWOIQm0TFRdeFGOXwPBKse5ivL13zdlezYWKuVzPkN9uth
 L9C3RaP8eZOybLz1t2XIHf9h1vtWINA35xwdU/D152hAFrl/3hd7BxjnxP8o466XkLlX
 QUO4JYN8wnAWLeM4QY3xtEPmN3f51q8sFeXANuD1LkDioIr9xfYxmX1myGmWjpW/iUdR
 5UIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/QBiOCr7c4l7fZjKklo3yZ4ZIuYTkAcsgsNgIGBN47E=;
 b=KzfHuZ56YJuO4Kc6/EMexpqzR19mB9HleyC3x0YniXVH1pib5ZVdCMtzXDbsGaew9S
 LaJUXdadIhtkv0tellgbYMc/2pSZWVt+AyxpaSnil9YbURU67z84iPVYedU7JD+DQgZb
 qEKVr4xR4EXFIXdSrZkawwsZ6zOmcMMSEdEcw++5Cw9uRKCQcso5eGY8nN4u5ciFnRSQ
 rqzjMifggJmoZKm/m4Av0ot0UfnjDpGYpNZc7Eck4WpCBLAsITG5VTi2lueaSyuLgSPx
 EvfoHkq0VhQWtGz0EfGqLCk+j/qhIINFXXH2HwvqLEn+e7VlzxATplS9EmDHcDygOkrV
 nISw==
X-Gm-Message-State: APjAAAUK5HvzxFqbdb0UXZHt+On2bPKfpgqPxCFcAzCJcvHvNkovGe+0
 pCj5BDBUzB4koh6dm8NrIFixRiOtHadEeIk8gkE+VQ==
X-Google-Smtp-Source: APXvYqx7i07mE15LTmdSADtpXZLOKFffb5f4NXu7AgyOJ73gnljvL0fH/4Msr28AHfBKwp3ckEATIvL1W63kFa6ISew=
X-Received: by 2002:a50:84ab:: with SMTP id 40mr5637114edq.14.1575482142681;
 Wed, 04 Dec 2019 09:55:42 -0800 (PST)
MIME-Version: 1.0
References: <20191127184453.229321-1-pasha.tatashin@soleen.com>
 <20191127184453.229321-2-pasha.tatashin@soleen.com>
 <957930d0-8317-9086-c7a1-8de857f358c2@xen.org>
 <e785a585-8b71-8a49-285e-2bcb1437500b@citrix.com>
In-Reply-To: <e785a585-8b71-8a49-285e-2bcb1437500b@citrix.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 4 Dec 2019 12:55:31 -0500
Message-ID: <CA+CK2bDV5pUYb5c-mkA9heE-CMg1MZdC=zz6zkDJDUZuuUpOmA@mail.gmail.com>
Subject: Re: [Xen-devel] [PATCH 1/3] arm/arm64/xen: use C inlines for
 privcmd_call
To: Andrew Cooper <andrew.cooper3@citrix.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_095544_704232_4E2D4F57 
X-CRM114-Status: GOOD (  16.02  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Stefano Stabellini <sstabellini@kernel.org>, James Morris <jmorris@namei.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 xen-devel@lists.xenproject.org, Vladimir Murzin <vladimir.murzin@arm.com>,
 Julien Grall <julien@xen.org>, Marc Zyngier <marc.zyngier@arm.com>,
 alexios.zavras@intel.com, Thomas Gleixner <tglx@linutronix.de>,
 allison@lohutok.net, jgross@suse.com, steve.capper@arm.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>,
 info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 29, 2019 at 10:10 AM Andrew Cooper
<andrew.cooper3@citrix.com> wrote:
>
> On 29/11/2019 15:05, Julien Grall wrote:
> > Hi,
> >
> > On 27/11/2019 18:44, Pavel Tatashin wrote:
> >> diff --git a/arch/arm64/include/asm/xen/hypercall.h
> >> b/arch/arm64/include/asm/xen/hypercall.h
> >> index 3522cbaed316..1a74fb28607f 100644
> >> --- a/arch/arm64/include/asm/xen/hypercall.h
> >> +++ b/arch/arm64/include/asm/xen/hypercall.h
> >> @@ -1 +1,29 @@
> >> +#ifndef _ASM_ARM64_XEN_HYPERCALL_H
> >> +#define _ASM_ARM64_XEN_HYPERCALL_H
> >>   #include <xen/arm/hypercall.h>
> >> +#include <linux/uaccess.h>
> >> +
> >> +static inline long privcmd_call(unsigned int call, unsigned long a1,
> >> +                unsigned long a2, unsigned long a3,
> >> +                unsigned long a4, unsigned long a5)
> >
> > I realize that privcmd_call is the only hypercall using Software PAN
> > at the moment. However, dm_op needs the same as hypercall will be
> > issued from userspace as well.
>
> And dm_op() won't be the only example as we continue in cleaning up the
> gaping hole that is privcmd.
>
> > So I was wondering whether we should create a generic function (e.g.
> > do_xen_hypercall() or do_xen_user_hypercall()) to cover the two
> > hypercalls?
>
> Probably a good idea.

It sounds good to me, but let's keep it outside of this series.

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
