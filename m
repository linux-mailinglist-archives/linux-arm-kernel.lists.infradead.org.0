Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4CE163CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 14:36:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4CmMA7QPdTYP53sKbTwoPLHssKvr0KCMt30StPPPPfs=; b=lJj1PZMN/voMBQ
	MVNG+a7GbMCwtNuLAUfYSgTHAgBqO5sJ1/SCXBhecQhLFZOsBl56cQO8svDtS4hgGdl0HEPEDvfTI
	DkQ668afscoax/DkDVWFncsd2WH6aHW3Iekdskc19hwhRFDMapegqOTzBd88oaNfSZYvGk9/K3Axm
	JH1ftltbX63eIFrJvcWYKJtkhgEASAnZiBWIJos8FEIgVHZEXx5ufoMiirNBnKadufOBS0WniG0az
	WIkA2kNDPKtCnoLIiKuJBemxeQQOz3hz9VWDiQOhPTK8kJHjfPWYUjL/nytP79c/aGBrCPXpibrxs
	jXCBNhBU92PMsApo5ZUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNzKx-0006Be-Hv; Tue, 07 May 2019 12:36:47 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNzKq-0006BI-JH
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 12:36:41 +0000
Received: by mail-lf1-x142.google.com with SMTP id w23so11714669lfc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 05:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2QMsP51GQACmtSTjn3d4Yv5Tnwl2yyG/XAn8zzEXf5c=;
 b=mc1D3X1KInB7JcrGhQd+NlqaS2jzHg0GfF1A3qxxZwbxNNBquSMcfEwoE2t3Gy3AzD
 D8ShLGIASOvtZhAkDUjFVHcf5YzxMRiBJ87jYqvSQheE/NegjdM1Uffd0qHqZ4J8VLBZ
 /o+Sl+bxHRhrs8HCFyHmGZlvZDLd3Sb7mQgZtLfrS8gdt1dW1VAqLY7xovp8fGhe7gUH
 fGcohRkq9G00mgh/CYNTBESlt4O1dQh6p4/ds14l07yyW6RVC5VgkdvKzDCmeG9Gvlqh
 un6irFt7mdhC5nnFx7kJfDwMaQQqgnmobpUE/kM9GZv1RZjNcIXnpZYmS6k1aoqUs6Cx
 51/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2QMsP51GQACmtSTjn3d4Yv5Tnwl2yyG/XAn8zzEXf5c=;
 b=Jfm/oZWJ+GgZBjmy3S6UgLUG2DRXT5+MBp0ICLfebS4DaWMLW947321uXldaFymEDz
 TatMY614PFoGiq2xtiMWUESeBPDvOZoEQB5kw1C4XTlvYVfg0W2V0JEBsaGdDQvQI71B
 Xakwtkh73mQv//L29GMMCNQvyaWiA/zAf3u8aYOZGYFup2zJZltfctOqaQyJv6OQYSKf
 uAmXOHAQWpWJKaJcA76WzX2h+m7rTP6ITVIzWpJk0jL1EeMGn240lZv8+HxKDVQqJHUg
 jeBxUsODVBM32VXf3Xxv91Li7SF5qZ4RZMG7IcIEMfIWjXFS87fpkHEUXmA/+i8EKQtP
 SR+Q==
X-Gm-Message-State: APjAAAWOzAj/CdWrjcN0KpGuY+KaKuq/zd5GXgr/zwvcqXG2PBkLR3nd
 OjQX2hv7de231HUJNyVva09L5tmcttdyfAT3ozo=
X-Google-Smtp-Source: APXvYqwUkYFyuv3p2dkNZC1BwjSLllqVypWXae4hK9TdUvlqGmmKRfnsKY9LzLpDQJPnSgZoHZb8iIBUTSwrzu1oIq0=
X-Received: by 2002:a19:c7c3:: with SMTP id
 x186mr17803205lff.107.1557232598699; 
 Tue, 07 May 2019 05:36:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190507034734.20622-1-leo.yan@linaro.org>
 <20190507034734.20622-5-leo.yan@linaro.org>
 <CAOMZO5D-8o25Wg1JW2rmWQepAKKGr5XTtpJm7J_qHJ8vLb-RKw@mail.gmail.com>
 <20190507123413.GF21730@leoy-ThinkPad-X240s>
In-Reply-To: <20190507123413.GF21730@leoy-ThinkPad-X240s>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 7 May 2019 09:36:43 -0300
Message-ID: <CAOMZO5DdmLaaz0+puaHPvpT=FSZPBb9Ok4Y7axb3mMSOZ5vWag@mail.gmail.com>
Subject: Re: [PATCH v1 04/17] ARM: dts: imx7s: Update coresight bindings for
 funnel
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_053640_659028_1C1FD5F2 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Chris Healy <cphealy@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leo,

On Tue, May 7, 2019 at 9:34 AM Leo Yan <leo.yan@linaro.org> wrote:

> The main reason for changing the compatible string is: the old binding
> strings are obsolete (the old bindings are still supported for backwards
> compatibility) and the drivers will report warning if DTS uses these
> obsolete strings; so this patch tries to update bindings with latest
> compatible strings and thus can dismiss warning during CoreSight
> driver's initialization.
>
> Please let me know if anything is not clear for you.

What I am saying is that the patch should have such explanation in the
commit log.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
