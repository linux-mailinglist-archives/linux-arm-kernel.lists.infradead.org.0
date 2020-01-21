Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1870A14363F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 05:37:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oer/+37vzDs8cK8roOMLo7wydsSAh1KwnygOzAoDiJw=; b=fsAd6ISzd2Lr07
	Qi6RalN5ozHkLv2BdooKqsYc979CAqtZwIvb5gsiVEIxa/qAK+RfblBIqeJSuGK2xScjyxMp/akxJ
	45ZLYNXHmbWkIwQHqoEkuoa9htHrfHbYL4cWlFmc8U7h8NBOIrD1qi8Q89tFHrJZdquiI+jchVqol
	VuwzSU5Ml0mhtnjH6e7xsJhAeibEefUaTpbxpm8gLnfIW6dnKlTCekldJpeJr7XtDlSYpBFsremKS
	ODEnO6/cXiLmTO189V/ZY3YrFzc8SorreM7+sPPjVdBOtXNUaAKrCN8VKqXsiIETIGnOK11hnthvh
	Bu6Kmn6xKzlvfT8CtD8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itlIL-0003a6-8Y; Tue, 21 Jan 2020 04:37:41 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itlIB-0003Z5-Gm
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 04:37:32 +0000
Received: by mail-qv1-xf43.google.com with SMTP id y8so850510qvk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Jan 2020 20:37:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tE6t4zYqaVXPST4AhwIQ9GsXTC/ddB8hjT5O44X4X2A=;
 b=Y437XdOv0Hto2lq+dzGstZ/dDsYcyHpK4I+DVf73M1v48j1EjilwkEp0HlSg8Iu9gL
 0tTOS38rUYrM9yCpro7VwAwprgAfaJvNt0icSyt0cimanM+SnEp2Xre2R1C/rtGm8iVZ
 lRVWu7xtrpg+9KP77O5tLZX+QnE1zQQIxeaZk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tE6t4zYqaVXPST4AhwIQ9GsXTC/ddB8hjT5O44X4X2A=;
 b=ZW+4PmqcX5ic77oWnzmyWgu3NA1umt8aMIBBOJyA2O9ZVZT0oo37jITH5RD4kdDmbQ
 Gv94BHohQMNoG5T2NzSglld3Qffp1FjCWt7OH+FpZKy5VHnKLN4c6mCTdPFy6q3rB0MX
 a6ZuernHvCD2P6arIwgPoVZg9UT7K9haTeu6p38TucuUS9oX6KoBVGSfd6kNiO/OZm/f
 sHd+WE2j8xerAZVIokiFneqQCHeG2j62c2DkbSfUqSr1ib5lFBE4k5XN0isMtSuDfMD8
 rJjW/ep0IYrVnPBaSuUqLQHdyYwhwly0PUcuIUjCW8oJsokOaRGbFEAsXB3waKZItszT
 xYdQ==
X-Gm-Message-State: APjAAAWbv5ItnQImAdxv0S+BPp3a1TPRkbBJTh7rvryFe98i6eIKJD2I
 4Fujw9mtsKatT0ZlkgFrRKqkgN56tM48Ar760blZpQ==
X-Google-Smtp-Source: APXvYqzdl4VdxIrAynyQuScJnrpT9ZczyRYljUJVkw1OCPfHpQClTp+aKVQtQGPPLLXXuyebvlkJ/h7fxsuCkIoPT4Y=
X-Received: by 2002:a0c:f703:: with SMTP id w3mr3120793qvn.6.1579581445521;
 Mon, 20 Jan 2020 20:37:25 -0800 (PST)
MIME-Version: 1.0
References: <20200114071602.47627-1-drinkcat@chromium.org>
 <20200114071602.47627-5-drinkcat@chromium.org>
 <20200114151643.GW3897@sirena.org.uk>
In-Reply-To: <20200114151643.GW3897@sirena.org.uk>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Tue, 21 Jan 2020 11:37:14 +0700
Message-ID: <CANMq1KC_-g45wdGgGiBmEyVXAJMkKwsJBJXGBHOMJk_=NyfpYw@mail.gmail.com>
Subject: Re: [PATCH v3 4/7] drm/panfrost: Add support for multiple regulators
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_203731_561801_AC04BD7E 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 10:16 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Tue, Jan 14, 2020 at 03:15:59PM +0800, Nicolas Boichat wrote:
>
> >  - I couldn't find a way to detect the number of regulators in the
> >    device tree, if we wanted to refuse to probe the device if there
> >    are too many regulators, which might be required for safety, see
> >    the thread on v2 [1].
>
> You'd need to enumerate all the properties of the device and look
> for things matching *-supply.

I see ,-) I was hoping for something slightly cleaner, or maybe an
existing function in the core.

Steven: How strongly do you feel about this? If so I can add that
check in the next revision.

Also, just a heads-up, I'm out for the next 2 weeks, I'll send v4 after that.

>
> Reviewed-by: Mark Brown <broonie@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
