Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7681ACEA1D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 19:08:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=afvdKA9yYe3BMrxMeKBToHj3PvafQWv1kMbaQRKiEUU=; b=mSrYuBen+CW3OT
	rlfrTbtsBsLQ46c4m7Q6h9VbzllaCVhdrEpQfZ+k3bacWBi87GGI4m/TNjTcz72iwtnU39wYq/y3M
	ysNt4f72P6p6E1lperMdwBtdnYex9WGD9WAxVo4Sdi3JjjA5nGUJVCuQ1EDzNk4VcjU664FtXCBSk
	qkNOIDjoWMavfE3PuV3a3KN9uY6w8b6gDfVsb3Mf9JprZa2vxjxeGqr3YLGQaeQ2MGK1E5NcdFiNH
	BYy2ai2SfB5qEIz4L+wzDNsT/scasknX2xsQ8Jl9Etkx9rUWBaVzxgnr64AonJtrD10v15uTNFEcl
	0tRQe1/GBDkq72F4v9RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHWUJ-0004nP-VF; Mon, 07 Oct 2019 17:07:59 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHWU9-0004md-PG
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 17:07:51 +0000
Received: by mail-qt1-x842.google.com with SMTP id m15so20293476qtq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 10:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2K7rXlp5X/h8ftzby/KietV7LryoE7u4vg9KSTfQIbs=;
 b=CKT9ySkTfIiYroy6J96o8UPUxe9+acVcRANOXINUzq+2CkAZkvPJeGXo+CBDeO9dI0
 oddOFvsguco+H0TeBx3nmOp2HP5Rc3r7TdyB9Mt00WmgxI91B54LmDA7j+ZRXUfE62cY
 wvWoVdMCX6jS0MV+TAbmr6AEy4++UXAcPsnEI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2K7rXlp5X/h8ftzby/KietV7LryoE7u4vg9KSTfQIbs=;
 b=dPCLHkv43E8dq9rVg9EgK3RXNwLj/kuT10tNFTMxorasM91I2bs616XTbxciGZk5/k
 VhU6EvIAUV7IWNEh9MJHQrwHFqYLA9FJrl6AaZYLomLLnSQ4FEtgU1p+WVUt0v98Bf/k
 qfOH3nHazjDaVypxGrythuecrOH9rLLSquF228RXXM+SeYsKGYQoRinWVN2Rqw6EVk1l
 XUFD9N1sKHkRcEysI/3WebBwVW/oS3RuAEibkcOifnPrXpOGrSU23yzxvRJm0LJE17/c
 aZy+bAo0uMXh7cTF+E1LpD9iqgI9AoWfmFnHHYHL04Pkwy4DjCy8SH8JhmvNQYptBY9O
 9/Iw==
X-Gm-Message-State: APjAAAXnH1rLLcxNUCJBPBvOPLqAqkHOUt2/xWChLT1jjWmMj8s8Kzys
 E83XoHWDT92ba4ezw5EDWL6fZ8/K2F1IFf1Wj5U91g==
X-Google-Smtp-Source: APXvYqyZ2JVdHT9qz9I8PsmKucNM8Is44BfBqxJCxK98WAy+0lfyTExVu/81vESxndFenTE4mepOqqFvEjRyGUIa0aY=
X-Received: by 2002:a0c:edc2:: with SMTP id i2mr27888828qvr.229.1570468068020; 
 Mon, 07 Oct 2019 10:07:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190910075907.132200-1-hsinyi@chromium.org>
In-Reply-To: <20190910075907.132200-1-hsinyi@chromium.org>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Mon, 7 Oct 2019 10:07:22 -0700
Message-ID: <CAJMQK-jawP2+Ba0AkquqU16vVnq_yGJN=Bepk7kLRusp_zdq2A@mail.gmail.com>
Subject: Re: [PATCH] thermal-generic-adc: Silent error message for EPROBE_DEFER
To: Eduardo Valentin <edubezval@gmail.com>,
 Laxman Dewangan <ldewangan@nvidia.com>, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_100749_843386_51344432 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
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
Cc: Zhang Rui <rui.zhang@intel.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 lkml <linux-kernel@vger.kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 12:59 AM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> If devm_iio_channel_get() or devm_thermal_zone_of_sensor_register()
> fail with EPROBE_DEFER, we shouldn't print an error message, as the
> device will be probed again later.
>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---

Ping on the thread. Any suggestion for this patch?
Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
