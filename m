Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0431E0DA6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 13:47:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ERtTTBriS6BXbItgIL+sd9zjZjU10+jFw3EWNCSEn+k=; b=D7gTnip0WQx/UN
	CGcOqPgT5HV425yclIl58q+SF51qgZz6sldA9vmBLyUrFMDzets3CPIDRkJ6cKiFgTsqJ7qVagpU1
	iIIq0xUMSFPmTd9eFp5IZnflRXnlozzcfQ9Jwg7QRYY2bZLFlwNPi4ABDM48aVTFRUjBUm3PkuAjX
	poLnpJCKazbqt01f4DEr19OrmQdx7JjIiP9uTlUrSKndOWeOZnGd/FKafsM5pmlsbH/GZzZephqYR
	ggTX1Xh7LuiltiJdRLnbd6caIPkANaQ+Uo39zgw0hYzwo+Cyk3smJOGMTCagvmCr2z1C9sCjPaz6P
	LPWLTv171FDPXxmMTmwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdBZb-0005wF-Ce; Mon, 25 May 2020 11:47:15 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdBZI-0005qR-1o
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 11:47:00 +0000
Received: by mail-lj1-x243.google.com with SMTP id o14so20479942ljp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 04:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NtZVEMzdq38fu53lZDWzc8NBLCjAY5aGK/W4AvmImNs=;
 b=wntl+SwBMbjTVLSjCzfXL4lZBWDORiVo7jKBQtyuJNmBEa+JX+hFHc90oI5p93MmIw
 7Vku1Od56aWGJjM8UzLHBbWv+TBowntLoOoTlqUjBXHTYoXg8tMmLyEDUnwOnoM0B9VU
 dLG6zfe5wvjWBRaB0I32BcY9J6R2ZooI1C60ko4ij26+NS4CFS6ckhes3zzE6XgZ3ZjH
 59pLQE3IiKWc1IVka37TGUAnSPIlQ/zYfSW8rDeTmVQnrAaLT6cy7yvZeElaMEILicsd
 jJUmutQrVef6xE+GmQiC6z6zwASoOZP7gu1UkLOKiwWPimCbxlm4I61EXYqJPc0hZ7KG
 vNfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NtZVEMzdq38fu53lZDWzc8NBLCjAY5aGK/W4AvmImNs=;
 b=nuUuV2oYq8SHa8Na/Pi6ewQUkTmC4z63eDjpMEixauYr7uVjE+2Tg2jNgL5lYp9U1j
 h4jt8AA4JXGrLc2PhxZvKudSFdMKa59Al/iKzZAClWIPy99pfsljMp4ppZuWFCUa8q8L
 AkOD3Al9uwZum4UJ9SQdxClbBvGbZwdxAW+VpSVdFmUdmFp0WxnPP4Bt+Oycg9mRC9Dk
 vgqJKaHi2SPi2NnqbmDoJwC7NGoviHp0ApBhhnZutoW0Zri+UuxeugbTKI4lUTQ1t6Dq
 zJ3pmMQbgFzk2gP0KW41n5aRH7ATjUkAU/UCjb5u5W/TpbMaLcycC+X746BTut3ShIjv
 2CDQ==
X-Gm-Message-State: AOAM530lGlp7VENIowreUMv3ukw4naFfFjSHPyqPMvdlJ6k/dG1vvKfk
 cIslpZNcJUOQOrDcAHTWPC5+p8nkBn7XabaS8u7TJg==
X-Google-Smtp-Source: ABdhPJw5ECdRR0sT2j9LkRJkgjus2cyG5DJ9ePNpehKNpHs1eYNP0nQD76ry5+o8e6vYyTFN7E8BrPnW3RB52TR3RaY=
X-Received: by 2002:a2e:b5b0:: with SMTP id f16mr1271162ljn.100.1590407214125; 
 Mon, 25 May 2020 04:46:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200523170859.50003-1-sudeep.holla@arm.com>
 <20200523170859.50003-7-sudeep.holla@arm.com>
In-Reply-To: <20200523170859.50003-7-sudeep.holla@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 May 2020 13:46:43 +0200
Message-ID: <CACRpkdbfgqRTv6Cnt85Dao+xTqdcxUWmrzRBWo3VjfPEd21eXg@mail.gmail.com>
Subject: Re: [PATCH 6/8] soc: ux500: Use custom soc attribute group instead of
 device_create_file
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_044656_384792_EE7A37B4 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 23, 2020 at 7:09 PM Sudeep Holla <sudeep.holla@arm.com> wrote:

> Commit c31e73121f4c ("base: soc: Handle custom soc information sysfs
> entries") introduced custom soc attribute group in soc_device_attribute
> structure but there are no users treewide. While trying to understand
> the motivation and tried to use it, it was found lot of existing custom
> attributes can moved to use it instead of device_create_file.
>
> Though most of these never remove/cleanup the custom attribute as they
> never call soc_device_unregister, using these custom attribute group
> eliminate the need for any cleanup as the driver infrastructure will
> take care of that.
>
> Let us remove device_create_file and start using the custom attribute
> group in soc_device_attribute.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
