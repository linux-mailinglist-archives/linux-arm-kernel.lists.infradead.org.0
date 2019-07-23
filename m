Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CFE71403
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 10:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jUPcjnLlhF4M7Xk4giauWKuIa2HVk3c4mB2h1x6EMJQ=; b=eK5QlFjLqpqHV7
	5QBYbFK48fsvmnpqoMzt2IXznMjSQvWGacCj8kEjcqADLThoPjh1jGUYoHu8gr0V2Kslq0m6VkkHA
	CVpf6JAFjHZn//RU3GBJvQM/uUKsL6v2AUIRS+cf6i7fZCgulWI/n3kE3lrbmK8bgKwDgA0cx8UFv
	U43n4ejfcjh7cpi1XnCr2rSXYONtxWU3k6u8eNI7IeDq/kZYDeXwLoXlPcm5RyQ56JRFs3tkGlqz+
	w8e6eA+yB+NdS+mk0UhuCDL59dg1ms1ZWEXLYpO8yesk5J2f8ioFJ4pqHR0Q/pFTCIGHnDdjfaOCr
	xKnCIgl1pKpVUsEGA0Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpqBs-00026V-Pr; Tue, 23 Jul 2019 08:30:32 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpqBc-00025U-NH
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 08:30:17 +0000
Received: by mail-lf1-x142.google.com with SMTP id x3so28803931lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 01:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=syBlnIr3lotOltOc/vZkYQKICHGTlfmAJxr6rc/TPFI=;
 b=IDHd3BlllDzmuMywX3W/Mwaxf9SUAC1ITQAYxVe3EdpVLn9P7ox/KvicZW0H2rn0VZ
 XYMuUIDtUmUgSakwnZqRD1wQNi33jFkVfQ++7gqN+S1bYzcoiZEpYsIYDg+s8PtPW9+K
 MSur3qtEyMptDyPfThqGYsTkPwZI82uma6RJmI3Z3uNyWTSnvQnDub5P482J9AI4exHZ
 MibyDiZFASkBdczzlG82BC7XX9iF5uOdeBkbJ8eNZKBp1/DlcJfWf8owTiKuBkS9Gdhk
 9wVcvG5Pfqbu1AVShyl1gXG5TMkTM9JLUFH0Wfp9eDgJ8oepkWepG/LEbP9vk/XxLltc
 Gs+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=syBlnIr3lotOltOc/vZkYQKICHGTlfmAJxr6rc/TPFI=;
 b=MHQN2lUoiM77IIuttvtwVTdosOp7TL/jpRtXHAdsb/IzaSIrsaT+PWxVZ7n6HMmAJs
 +LeVV1pVSUkdZaaDTaEImQWD3yBPb5qfrFfPhh/ydZq5Lj9Bx0kJ+LDXe5VF3wTrECCs
 +XfvhuWPTn0+53mAdWv6lvBB0VGPJhKzVHW5MIe/dd95L7io1u5e6YFHto9IfMJbYpZN
 +soGLXUhrp8B9BJtnf07lgjZ7SncuvmH6B8QtI4mBhrZV9O9hYq/SbdJ+Y5FCgrfMsSc
 PBqCChnpuGjn9v0RahUmL07py/reb7jJJz2JJQKAwJbnILbYytDS1/q8ULi+n2Gn7Slo
 qXlQ==
X-Gm-Message-State: APjAAAXepiZspBZuMnHST0qksUeC/jpjBaTqcZgYOa7S2QvUmsu3yNVL
 LpMteszuCbExYTVT079RPRn9Yi+fc9lqOoqqK0JK4w==
X-Google-Smtp-Source: APXvYqwWGxao/28Kz2zbNijiOv5Hz8uDmZYEJmaa8ZR+sLnSu5xitdAQqA8b5w1+jLpRJZce7gmX18s/KwwTbJI3EQI=
X-Received: by 2002:ac2:4891:: with SMTP id x17mr35514625lfc.60.1563870614049; 
 Tue, 23 Jul 2019 01:30:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190722172623.4166-1-wsa+renesas@sang-engineering.com>
 <20190722172623.4166-4-wsa+renesas@sang-engineering.com>
In-Reply-To: <20190722172623.4166-4-wsa+renesas@sang-engineering.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 23 Jul 2019 10:30:02 +0200
Message-ID: <CACRpkdb4CtiiYbSwHEcC4godbRBA3DmABCHpx5_OKUCfxgcUSg@mail.gmail.com>
Subject: Re: [PATCH 03/14] mfd: ab3100-core: convert to i2c_new_dummy_device
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_013016_763165_F2DD8052 
X-CRM114-Status: UNSURE (   6.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-i2c <linux-i2c@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 7:26 PM Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:

> Move from i2c_new_dummy() to i2c_new_dummy_device(), so we now get an
> ERRPTR which we use in error handling.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
