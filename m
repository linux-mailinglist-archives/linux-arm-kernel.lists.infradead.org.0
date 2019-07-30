Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1777AF65
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 19:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pli5QXwCcdp3zRCD0jVv7fEt7xuT5ubz4DzetKp5aQ8=; b=ZCw5B6L/9anfR9
	Ntqkmu8dwlrnxljPPmseM21dHf9A9DGlyNvQ+d3w+7Hx4AFK5zw6WcCA7e1twGnzD2uS2qN5cVVdG
	EPGjzHOyBoR4DhBxHg30tWTjm5RzIB+LzfdnAwUd5aGArTMyTTKAIpOxjHRymmbcyidGBp09ED4jN
	k39xF/lmF20FiQy/lW1s3OZuOpazTMbZuYKCmBOJBDCuL6gyQJP/I1tw4/RxjxxJftt7U4trAzmTx
	rmm59QudhUdRt2dMdeb/lCHzJfBoIbjabtEMUYG6LvGJjLMaMt0CdX4/ZPPt0kwjU7ilpeFQZ8i9x
	3xbpxVkn+6b4Jg4Otu1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsVhd-0007ju-U9; Tue, 30 Jul 2019 17:14:22 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsVg0-0006N9-Nw
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 17:12:42 +0000
Received: by mail-io1-xd44.google.com with SMTP id j5so125721669ioj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 10:12:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uuAqgyT6yUGUSgvAqjMSwXgUBYtT9/ywKvmMd+QhrUc=;
 b=DYsUPdWeuQrPbbz9oLqVvUmGB+DaxrosWoXWRGuCdXj+qtefg3ZZspGjqhJTixu63l
 rkrIUmmRWFN399cgEvl/4HAUWOL8XRFBm8sulgIyl6opVRvEBVud8kS6Ru7IhTB8yFP/
 Y7fkABV2R0pcejAjxhiUnk55iWM07b6H6XPR7PloZWZUSuxfyoH09p1pH/fQY8UvI1L4
 NHG4JghhOEzWWouLO9eBzrWUG2OU0UtrbGMbxJBPzp20mMXyNrPo3my1rmD3Bi2zXLON
 vbmefLdM/DyIPZKkqV5y5TTN5/kG7wsOSiRADjHifnjunaB6ro+Ww1c3pbzTi/pWpj7I
 6iUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uuAqgyT6yUGUSgvAqjMSwXgUBYtT9/ywKvmMd+QhrUc=;
 b=MsVUHhsjJw9ImeCGHQlcsEDgpw71ZnrfTAhteHkgkRPPn/ZlkrZzp43mB/tugRX1Zv
 3WMVQs4wv11UAQR5z3pKhhOYdnHSqYNLPmeVmI4Hxc/84xJ/NSkG5jhLtHqlmyaGJbh0
 9MOY94IfMqU27G5oIip34DD+Ldzg0oHXtsQFYmk9oIADD3+qfrEQHqkgWupDQNpl8Djv
 G7uDxq07mxcHBNKKBadyIpXYZQceZ6vvyUHWkSv/HKo36Nyzh6bMfnW1+c/XLdpV9TkZ
 A8pwZ7tiEbZZ9GhdB8PfQR6Q3zKhJBpKXFosAFbdr9aRRql1eXoX1dHK5Geej3b3nJq9
 iMWA==
X-Gm-Message-State: APjAAAVcAaEv0xL6PY/aKDN8pXj0U3IdDMo3gVT/MX/hqkKCh32aHoNh
 1llGDWL7FTZ89qtZ2BOBUO6ej47axmxahpwb+uUYJTyP
X-Google-Smtp-Source: APXvYqy58T24UQZphReS7BNOZhjEUh5NvaXraVCRspRWDO98XJTHfekYk3nbBfMR4/vvpVuKc0QKQ4XDhBmtNHGd1K4=
X-Received: by 2002:a6b:2c96:: with SMTP id
 s144mr106481800ios.57.1564506759148; 
 Tue, 30 Jul 2019 10:12:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190729170035.GB26214@xps15>
 <20190730093733.31861-1-suzuki.poulose@arm.com>
In-Reply-To: <20190730093733.31861-1-suzuki.poulose@arm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 30 Jul 2019 11:12:28 -0600
Message-ID: <CANLsYkxN+SqZwEueL06agr1ppASKsf94fsU9Mw0LwOK1qOwh5Q@mail.gmail.com>
Subject: Re: [PATCH 2/5] [UPDATED] coresight: Convert pr_warn to dev_warn for
 obsolete bindings
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_101240_804002_62D23FF0 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 30 Jul 2019 at 03:37, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> We warn the users of obsolete bindings in the DT for coresight replicator
> and funnel drivers. However we use pr_warn_once() which doesn't give a clue
> about which device it is bound to. Let us use dev_warn_once() to give the
> context.
>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>
> Changes since previous version:
>  - Update replicator driver too.
> ---
>  drivers/hwtracing/coresight/coresight-funnel.c     | 2 +-
>  drivers/hwtracing/coresight/coresight-replicator.c | 3 ++-
>  2 files changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
> index fa97cb9ab4f9..84ca30f4e5ec 100644
> --- a/drivers/hwtracing/coresight/coresight-funnel.c
> +++ b/drivers/hwtracing/coresight/coresight-funnel.c
> @@ -192,7 +192,7 @@ static int funnel_probe(struct device *dev, struct resource *res)
>
>         if (is_of_node(dev_fwnode(dev)) &&
>             of_device_is_compatible(dev->of_node, "arm,coresight-funnel"))
> -               pr_warn_once("Uses OBSOLETE CoreSight funnel binding\n");
> +               dev_warn_once(dev, "Uses OBSOLETE CoreSight funnel binding\n");
>
>         desc.name = coresight_alloc_device_name(&funnel_devs, dev);
>         if (!desc.name)
> diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
> index b7d6d59d56db..b29ba640eb25 100644
> --- a/drivers/hwtracing/coresight/coresight-replicator.c
> +++ b/drivers/hwtracing/coresight/coresight-replicator.c
> @@ -184,7 +184,8 @@ static int replicator_probe(struct device *dev, struct resource *res)
>
>         if (is_of_node(dev_fwnode(dev)) &&
>             of_device_is_compatible(dev->of_node, "arm,coresight-replicator"))
> -               pr_warn_once("Uses OBSOLETE CoreSight replicator binding\n");
> +               dev_warn_once(dev,
> +                             "Uses OBSOLETE CoreSight replicator binding\n");

Applied - thanks
Mathieu

>
>         desc.name = coresight_alloc_device_name(&replicator_devs, dev);
>         if (!desc.name)
> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
