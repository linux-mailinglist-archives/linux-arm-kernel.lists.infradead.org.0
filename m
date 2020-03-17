Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12505188060
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 12:09:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ju+HXojeR9UqR75uep5sPuj+OaxlyjZLRarlVy2gTfc=; b=nyiCVV6TB8cTC1
	KC5dRvLp3RSZ5EADWGscbfpD8JVhm0JvcrAiKaEFrGg+/ISBfUzWL3ofkJIDEPR3nrJH4zC1uIkTY
	SUQcTizEwtsKGz+ZFhhMcObq3fGMjlcTE+VeMHOtDHe7QK/0nZIz/dxqMz92uH8/snK1GsX0jPEOT
	gweDRLk+a3oOwb6oSeT8yBhmkX+J9DSPxM//vWujNRWlufZvxXDN0S9Jq4UbnXqinsA6E9lmcRbp4
	+AchhXGaMXN60ILukCzngKa9LrfYAv6uJ+pJlgkFeGwAIsmR4ctF4Hf4LofdaiplUvFAchGVoszNF
	IAQibaXM+mVupikt1qPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEA6K-0001HZ-UW; Tue, 17 Mar 2020 11:09:36 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEA5w-00015b-Ns
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 11:09:14 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 17 Mar 2020 20:09:12 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 56F3B60057;
 Tue, 17 Mar 2020 20:09:12 +0900 (JST)
Received: from 172.31.9.53 (172.31.9.53) by m-FILTER with ESMTP;
 Tue, 17 Mar 2020 20:09:12 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by iyokan.css.socionext.com (Postfix) with ESMTP id D553040357;
 Tue, 17 Mar 2020 20:09:11 +0900 (JST)
Received: from [10.213.132.48] (unknown [10.213.132.48])
 by yuzu.css.socionext.com (Postfix) with ESMTP id B5B4E120134;
 Tue, 17 Mar 2020 20:09:11 +0900 (JST)
Date: Tue, 17 Mar 2020 20:09:11 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH 06/10] ARM: dts: uniphier: Add ethernet aliases
In-Reply-To: <CAK7LNAR+73FGUC7NAaPM_5uyjccuxDXokmKaY2KJpxqskdyuVg@mail.gmail.com>
References: <1584061096-23686-7-git-send-email-hayashi.kunihiko@socionext.com>
 <CAK7LNAR+73FGUC7NAaPM_5uyjccuxDXokmKaY2KJpxqskdyuVg@mail.gmail.com>
Message-Id: <20200317200911.9789.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_040912_972221_F46073F6 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: DTML <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jassi Brar <jaswinder.singh@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Mar 2020 21:31:02 +0900 <masahiroy@kernel.org> wrote:

> On Fri, Mar 13, 2020 at 9:58 AM Kunihiko Hayashi
> <hayashi.kunihiko@socionext.com> wrote:
> >
> > Add an aliases property for ethernet to determine device name assignments.
> 
> 
> There is no call-site of of_alias_get_*() for this device.
> 
> Why don't you describe the reason correctly?

I thought that defining aliases automatically assigned the device name,
but I found the driver needed to manage the aliases.

In case of booting up the kernel from U-boot, the ethernet alias of
the devicetree is referred by U-boot, and mac-address in an aliased
ethernet node inherits that of U-boot.

I'll correctly rewriten the reason next.

Thank you,

---
Best Regards,
Kunihiko Hayashi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
