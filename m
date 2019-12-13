Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 415A011EA56
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 19:31:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OosBlCJDYWpOpWTRfOM8+OQ/u3uzx6eeYVjK8hz4rKo=; b=NkO3x/LtKtb6lD
	M1HrZaT1siFb65twJKd13+oYZAdAxydX0VUN84QM40dnrNXLCqrtk6jOzK+IIkbUs7CC6zZnjOYPW
	B46jXHwkZ/R13gSwnJF8WJlTpcj77jDXGQjwsikEHbwO2isrVaVI4Z5UmkDnHazpF3S0pVCzod7mF
	1ub+puMvzC+ZBwz4bJNd4gVfL+lV4RpjSFya0OAlD5Z7KYgf60q+68liAeD6rXjd9v5O9orqoOJQI
	NHKGuFRgOjCKv0tZjzgPlHuESxb4gIUb7BGe7cQIaXIli+HZPeeUxi5DGYFONoyrrlZ5TGKOmbHx5
	JHSMdZvGlL3Zu18mlQ3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifpjJ-0004TQ-2C; Fri, 13 Dec 2019 18:31:57 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpj6-0004Sk-UZ
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 18:31:46 +0000
Received: by mail-il1-x141.google.com with SMTP id t17so183059ilm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 10:31:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tpB/xeUDM1+yO8SMRMjK9hxdyXvy8qn++zhfg+M4I6Q=;
 b=NnxJs1r1KqtlMmXaKnm83wZSyJ65551miQeW3U3EvBC1r1sQrTLC+QIbM050I8w2r/
 vgTCCNig/abM137ibwuQw+92bAx1Sfh3A+DspSFTewAoheB3YfSKANcubKFg6zVLAFu9
 u0NO1SaGNb4GEsOWy5T7umHFtXhDaqCUBW5tub+wE/L+9mVw9wPsgoPejjGa9Z0VsHDz
 boHMaxoYdmjrKEUHUd5ziYLGbTDJXe8CCDdbV3CbOi728N93DApHwWAGb78JDsRu3vOb
 xIH5CzdSOY2lVnqCWyGYfNjOcQ+8uonNmPNy0WHLvNH+8R9FlFpCtxeX61Q8OZBiL+2H
 OGwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tpB/xeUDM1+yO8SMRMjK9hxdyXvy8qn++zhfg+M4I6Q=;
 b=PNwJ8UnlBOFtrNeytQL0xVoUl8HQQNt5IB/Yv2r3y1s4dM4ofcU3eMgz21QILqnqYd
 QHT4jE3RvTbOKzFinOujmteYJQTxgAeZWj6KzyKYvWMJXGDtnFfRucyCylJvR7YhUdFF
 fDsDtBCdbtCAb/eSNeawQH/IiKXaZF0lifL3T9ykSgg/g2brqmsJ3c9P+e6yJfRg7dHO
 /VB+Ky8H7cWIYvDBIEMHe3t9D6pXdXe6m3IpxRA2WwVEpgeohJYACCStzg8WChWqpJPu
 Cz/+QKIROLqBjScxUCP4hEDgOJsg7qhyhjk57f5wZnrgCreFSsSLlJDyP6UWEPBOG8Xv
 /+6g==
X-Gm-Message-State: APjAAAXxhLIA0ypyDkUuWhIWLkeEHugSFUDyjhO3eQ78dFSVtuHrLYqh
 XjN+Q1fc7Y5FUVEvW1qbba8y9gANxykZu1j2Kbxa+g==
X-Google-Smtp-Source: APXvYqwqKI1k9m7CKtca2pmdvVz5aHQxyrvRxqEo2nHabNcDV3oy5nCgJHZVFEPpvds+l9dkkylLJBJz+HgYesKXjvA=
X-Received: by 2002:a92:1655:: with SMTP id r82mr707357ill.72.1576261903292;
 Fri, 13 Dec 2019 10:31:43 -0800 (PST)
MIME-Version: 1.0
References: <20191210203409.2875880-1-arnd@arndb.de>
 <71a8139e603f697c734134faedfb3ce87067918f.camel@v3.sk>
In-Reply-To: <71a8139e603f697c734134faedfb3ce87067918f.camel@v3.sk>
From: Olof Johansson <olof@lixom.net>
Date: Fri, 13 Dec 2019 10:31:32 -0800
Message-ID: <CAOesGMgVcoHp7W5QPu=ZXTMe1BcPOXOS+6vQOasXAZRyj_nC9g@mail.gmail.com>
Subject: Re: [PATCH] ARM: mmp: include the correct cputype.h
To: Lubomir Rintel <lkundrak@v3.sk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_103145_007365_4A3ACC69 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: SoC Team <soc@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 12:41 AM Lubomir Rintel <lkundrak@v3.sk> wrote:
>
> On Tue, 2019-12-10 at 21:34 +0100, Arnd Bergmann wrote:
> > The file was moved, causing a build error:
> >
> > In file included from /git/arm-soc/arch/arm/mach-mmp/pxa168.c:28:
> > arch/arm/mach-mmp/pxa168.h:22:10: fatal error: cputype.h: No such file or directory
> >
> > Include it from the new location.
> >
> > Fixes: 32adcaa010fa ("ARM: mmp: move cputype.h to include/linux/soc/")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> Acked-by: Lubomir Rintel <lkundrak@v3.sk>

For some reason patchwork didn't reply to this, but I applied it a
couple of days ago.


Thanks!

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
