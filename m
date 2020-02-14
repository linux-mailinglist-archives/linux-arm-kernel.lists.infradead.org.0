Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B328A15D3AF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 09:20:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=thE7AdsamfkQ1osirJHbIIYc8A4tSvGvT3tfChKQGPo=; b=g4izHas9g1zUQV
	4A9/edw70vKe1UuXkvEe4NkNSJl5e+G2pLZNl+qXi/zgOkrAtFbr4FWIG++iZumpIn9DnevTPXcKW
	7QQ02mY0yZR4rr3yoI4P0pJGZ8X8BZy6En/JgtEpxZnA7297HqLx69X+SW0MqZHQy6gg+Rq0BbXx9
	hyy/1CB6yWdIj9tSGeQKnlTGsm+m9r1c4qnNKbf53fdzN8KU+1rtR/5Y3/G9vzJG8HcF/pawsz2St
	rjE2FFt4gyJOwhOzMgR1EBTC9LKAts4X8tDkVYk45o48G0wRw19g8vwpR+5FPA5KVrdH/BI6GqQlO
	2pCxdusJPsGJTVEQ1Geg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2WCu-0006kl-O0; Fri, 14 Feb 2020 08:20:16 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2WCi-0006JI-O1
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 08:20:06 +0000
Received: by mail-lj1-x244.google.com with SMTP id x14so9688039ljd.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 00:20:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=f0FNgLnPWTEeOMv1dtdFcuHjTdzn6pGg8x44ibkEQPE=;
 b=tThJYyFgqDr0xjywQZpcUPswh6u2cBZitMBXL5HlvwWA/mmVulnlTwrHfoBaVo/rKo
 HegUHvyXUcIl9tZABp8eAoWjbCinqMDkumrHTSwh/hwDCSxJE7dU85/SlSpaeWaFviEo
 MCph3+YOCwsF9NiqaZ71muLOPxYjDA4G35LCPXBdDX71CGCZYxXvjNmRmbYy5Sbw8g28
 SpuH5UvD8RzQJCbp7mnH1ASd/6s/6DU7hmsujYfjr2CvFLdnXdz0GOVUguSlUgyshdaU
 XXe/61A3srbpQgboc8XsEHzBe7oLOR3kkjLGa35CuTe9shFEjooOntG5UckFPdvD5TE8
 pVYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f0FNgLnPWTEeOMv1dtdFcuHjTdzn6pGg8x44ibkEQPE=;
 b=pqJyXNF/4rEt4WHHdesxgVnpDINKK18R5xTmy9cm9LnvV9jur7a3+Qqp3NTcpVGI7W
 y7OVmFp++lLY0/YoGCl5gBfUpz5WLlBhu4V50T4XlGt/5U0qxBHtMpyAWQo57ZPy81Us
 scoyMm01IZ4Z6rEHS3ABNq6eKndsfgwQ+tMB2xZjJsBi/tDAl9zmNUDS/26KBT0YnSZf
 hJ+rML3JSGGFltH8DfH9YkN0ccxpasLlLuYXSWnV09/I4PrO5LSH5xO2BlMbHAf7xjqp
 7b0sChMKG6sbsGt+uF5fTRXwydaqWX0SyArKN9Dy2kgc+AmXkGTmVAhkjxvNzgbbfy3b
 GwfA==
X-Gm-Message-State: APjAAAXcKGZCLNg1JoWgU+Q/tv2apORYW4va4xOptq+KXv7MzH74fP+r
 ac0hBc2I636C8L+USBfN25aLUWs3AwCTytkSzwy3Zg==
X-Google-Smtp-Source: APXvYqy/sFLvdsy8AbVPYR/LBprLucz97Uq/5AQ1kxvx6NdtxQvxfagBozm3o+gZIAbeNZthrmn2zyDwBKBcUSMB3mI=
X-Received: by 2002:a2e:81c3:: with SMTP id s3mr1292161ljg.168.1581668397598; 
 Fri, 14 Feb 2020 00:19:57 -0800 (PST)
MIME-Version: 1.0
References: <20200213124833.35545-1-linus.walleij@linaro.org>
 <CAKMK7uGDG7N1j53hPwNpnK+E=jiPDnEg3MofgC4fKmej_BUm2w@mail.gmail.com>
In-Reply-To: <CAKMK7uGDG7N1j53hPwNpnK+E=jiPDnEg3MofgC4fKmej_BUm2w@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Feb 2020 09:19:46 +0100
Message-ID: <CACRpkdbuOutb0t+rnkM6dauWnEnJ3HzmZ86FWqbDjpaDHFu+Mg@mail.gmail.com>
Subject: Re: [PATCH] drm/pl111: Support Integrator IM-PD1 module
To: Daniel Vetter <daniel@ffwll.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_002004_820701_37C85FA3 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sean Paul <sean@poorly.run>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 3:49 PM Daniel Vetter <daniel@ffwll.ch> wrote:

> Looking around in the arm/mach-integrator code this seems to match
> roughly :-) I noticed there's also two more outputs for two panels,
> but not here. Do we not care about these anymore?

I actually have that hardware too (Integrator/PP2) and it is trivial to
support using the existing code, one can just define the panel in the
device tree. It might need some new define in panel-simple.c as
well.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
