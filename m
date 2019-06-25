Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8127E55181
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 16:22:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TzL9cVucF+hEE88LLEV3jdb3SXrJmEJB5/BN1kDS/Fs=; b=n0kFA62rvSafTl
	tMfA8L4vYMWEPGwVBkxeK66UVhU2WqjjJBh9i+z2v0NS/N8/vmsuj68JuczlY4junHlhOkShyQRRp
	aZHR7xJONEeoFyh4pOwxVK7MSlMbSxA7vDwc/rNZasFgkKcAL/bUe0NmvgjDpDnoQvPod4vrzj3WL
	NXc2Z7QIL0OxOAoQyAX/s8qc3D0PrkDuE8PfFk7cJeRotXZu0pMvKM4XHdHs7UxdlyRPzxz9TIUPF
	4LNudoPx4ts8ZmnWW4r567J0npVQoc2/Qc4j/6/lspy5kt/9e56BI5pxW5tSUiF2zLxlsiO5Wbqx2
	GxN5Ia4wiB23/XXtkvXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmKm-0008VD-Hn; Tue, 25 Jun 2019 14:22:08 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfmKa-0008UD-1Y
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 14:21:57 +0000
Received: by mail-ed1-x543.google.com with SMTP id i11so27473401edq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 07:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=24gzO0A0maaezXLn4Sf+YkjPoPGU5cIzahsVUvGWJpM=;
 b=Y+iwXU//8GiwvhB5OdOIwFWmfTwBckBPRRYgH6kue66lsWyh9dCVA2FaKmL02xFKEp
 ZfANSgyGzfjQvccuoaiACu2E9hFGEvf3GDPGF1PFAIvlKZ7isxVSmuGTE6shmB2zXpAr
 IoDUAySoIuAmV09dUoCcTV15LJhra9BJbO9AQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=24gzO0A0maaezXLn4Sf+YkjPoPGU5cIzahsVUvGWJpM=;
 b=X0jRjUt+/O2ICOGlyGwYEzbIxnXHn+CfxgYfmVehpHmIKxsOLFVCCbDVNkgiCryhyb
 Cf9J+kbxzQejAqLp01Y08uxd4x0TOkqaGBNZWSjGkjNRv8mLAtGwDJIMooqVAWKConhT
 D7zX2faXDszST2siUHp2DaYu5VutjUlSo3k5edFfehaTIfhWtE0LjUe4DX077gZkfGxk
 mER76zwQOL5S23hYLc7zfgwTncQ3Es0YIxkpw849drfdjiYI34oueRwws9Ltzr75Hgxd
 e1+iO3/WdHtdjXi9mQGCn1CnvHE0AelIYfFuWm3vS7Gd+dB2RlH8bNFu6v9ubXNJ3MG+
 rTgw==
X-Gm-Message-State: APjAAAVHhRDyAgOTnu/moXl7b0tv9r+MOnZDjT2je6+qxOpOvjnpdbi2
 EgS2DAABqmv2DAFPkL/kN2WGfA==
X-Google-Smtp-Source: APXvYqxVUUONdezXsW7E9TNE+qfMGQMUrSmhwkxeITlCJQHWjHZ7M6mojDMZlCgAoAGW7zba80GVtw==
X-Received: by 2002:aa7:d30b:: with SMTP id p11mr133074273edq.23.1561472512705; 
 Tue, 25 Jun 2019 07:21:52 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id z2sm2477457ejp.73.2019.06.25.07.21.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 07:21:51 -0700 (PDT)
Date: Tue, 25 Jun 2019 16:21:49 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH v2 1/2] drm: Include ddc adapter pointer in struct
 drm_connector
Message-ID: <20190625142149.GW12905@phenom.ffwll.local>
Mail-Followup-To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 dri-devel@lists.freedesktop.org, kernel@collabora.com,
 m.szyprowski@samsung.com,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 Inki Dae <inki.dae@samsung.com>,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
References: <cover.1561458051.git.andrzej.p@collabora.com>
 <ef88f682401ae863a91e6c885d83a2756ae20b85.1561458051.git.andrzej.p@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ef88f682401ae863a91e6c885d83a2756ae20b85.1561458051.git.andrzej.p@collabora.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_072156_090699_14B709B6 
X-CRM114-Status: GOOD (  23.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Inki Dae <inki.dae@samsung.com>, David Airlie <airlied@linux.ie>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 kernel@collabora.com, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 12:24:40PM +0200, Andrzej Pietrasiewicz wrote:
> Add generic code which creates symbolic links in sysfs, pointing to ddc
> interface used by a particular video output. For example:
> 
> ls -l /sys/class/drm/card0-HDMI-A-1/ddc
> lrwxrwxrwx 1 root root 0 Jun 24 10:42 /sys/class/drm/card0-HDMI-A-1/ddc \
> 	-> ../../../../soc/13880000.i2c/i2c-2
> 
> This makes it easy for user to associate a display with its ddc adapter
> and use e.g. ddcutil to control the chosen monitor.
> 
> This patch adds an i2c_adapter pointer to struct drm_connector. Particular
> drivers can then use it instead of using their own private instance. If a
> connector contains a ddc, then create a symbolic link in sysfs.
> 
> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

As mentioned in the other subthread, I think the important bit to sell
this is rolling it out to as many drivers as feasible and collecting all
the acks from driver maintainers.
-Daniel
> ---
>  drivers/gpu/drm/drm_sysfs.c |  7 +++++++
>  include/drm/drm_connector.h | 11 +++++++++++
>  2 files changed, 18 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_sysfs.c b/drivers/gpu/drm/drm_sysfs.c
> index ad10810bc972..26d359b39785 100644
> --- a/drivers/gpu/drm/drm_sysfs.c
> +++ b/drivers/gpu/drm/drm_sysfs.c
> @@ -294,6 +294,9 @@ int drm_sysfs_connector_add(struct drm_connector *connector)
>  	/* Let userspace know we have a new connector */
>  	drm_sysfs_hotplug_event(dev);
>  
> +	if (connector->ddc)
> +		return sysfs_create_link(&connector->kdev->kobj,
> +				 &connector->ddc->dev.kobj, "ddc");
>  	return 0;
>  }
>  
> @@ -301,6 +304,10 @@ void drm_sysfs_connector_remove(struct drm_connector *connector)
>  {
>  	if (!connector->kdev)
>  		return;
> +
> +	if (connector->ddc)
> +		sysfs_remove_link(&connector->kdev->kobj, "ddc");
> +
>  	DRM_DEBUG("removing \"%s\" from sysfs\n",
>  		  connector->name);
>  
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index ca745d9feaf5..1ad3d1d54ba7 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -23,6 +23,7 @@
>  #ifndef __DRM_CONNECTOR_H__
>  #define __DRM_CONNECTOR_H__
>  
> +#include <linux/i2c.h>
>  #include <linux/list.h>
>  #include <linux/llist.h>
>  #include <linux/ctype.h>
> @@ -1308,6 +1309,16 @@ struct drm_connector {
>  	 * [0]: progressive, [1]: interlaced
>  	 */
>  	int audio_latency[2];
> +
> +	/**
> +	 * @ddc: associated ddc adapter.
> +	 * A connector usually has its associated ddc adapter. If a driver uses
> +	 * this field, then an appropriate symbolic link is created in connector
> +	 * sysfs directory to make it easy for the user to tell which i2c
> +	 * adapter is for a particular display.
> +	 */
> +	struct i2c_adapter *ddc;
> +
>  	/**
>  	 * @null_edid_counter: track sinks that give us all zeros for the EDID.
>  	 * Needed to workaround some HW bugs where we get all 0s
> -- 
> 2.17.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
