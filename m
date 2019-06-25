Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD1E55170
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 16:20:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HjTQeT0ccQGl7t9tT3pV/Py1MBHqgLpodzXnpRSYb+4=; b=rN3euY2+R7S7yZ
	ewgQsKvYT0j+ogLEbCkoFOF5r5Hecu0Kl6T2z2f4QvtGq7ANgdJTlcJM+ikYAH4N9JwmD4I8lN3Y8
	NgqAg1NLQAJWKh3BMpsx2Cn+UPdN+E3w10oBuMOLZrV7RCbNxgncXJhdPPzrt8SgiLqQfWIkDwkJd
	UtDyTKZvwhox+xtUJQmmVcdLV0dAJja9B+Ns+rAlDV/cxVfyVXiq4KI/SlKQxSkghPvcrWUetuVw9
	Tlbp8OvyhHR5B+QuQpP5oCnSpSFohBlby60SQXiF8/XhBeUcYkWPbPRel/TpYpenQHHxc4ohDGzM2
	mfqLgPZEAtd0b5z2MAbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmJT-00087K-Co; Tue, 25 Jun 2019 14:20:47 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfmJI-00086V-AP
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 14:20:37 +0000
Received: by mail-ed1-x544.google.com with SMTP id a14so27380985edv.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 07:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=G6JtZL8+U2ZkwL0/tzXXiHIEAOss9zM+ZL3Pgbc8Mpk=;
 b=PiKb0pq4SASNR7D3rZRPPn6hYPGCPxODqKLMDAnrrKgPg9InzXFNxhgfcjJ0osnNob
 vyTtVKNuYim6MRswZ9WjaRBlsW8RMJPiwWKoyq3uAyYbDouZ9ZJClJkEADyVHPrEnO5E
 2dv49ZPpK3sQqXzRaWmoTu0NM4VYZANoTUsRE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=G6JtZL8+U2ZkwL0/tzXXiHIEAOss9zM+ZL3Pgbc8Mpk=;
 b=XfRKX7SExxHLB5R1TRhHSPAGiMvD4Srk7ZqyuMW4HW+qfVMqKJxp/dLXAchWvjJNlt
 /K3J8nsZgwF6gQ5d2zmGmUQA9DvtnocUQ4fg1lRxAm9l99MWJMlWT2sDnzYL5UWp7bGV
 5KoaMInkd2UFA7PDcKNpHBWDSFNVbyVpoqhe+uoVrR6vD/Hwsrv+Px9OaICdj8ByY/he
 eGtiGKusJk4sAsOXpJNKVPag24aggXIzEVIwlikvdjwribl2oweKO213Lrh/XZlJkuUF
 zE1adadR71+2UIs0CIFE1XhF+LZGUW8OYbMK+l1eowz4FaoNJePOI2B4rwzeJaCuc7qw
 46DA==
X-Gm-Message-State: APjAAAVlggyJ79eMLxNtGWe3Lq8/Rbtzr9eyLwxNo5KJjW2koQvrIrgd
 B0/179HHraQgGcQH9duuZWJkyg==
X-Google-Smtp-Source: APXvYqzf+qJgnUeqQvG0q196yIL7BFlfF2ImhuXnDKq2Nc9RZ6ZHCnGm/JBXEdesWWdkz8OViVV3qw==
X-Received: by 2002:a05:6402:78c:: with SMTP id
 d12mr111470360edy.160.1561472434802; 
 Tue, 25 Jun 2019 07:20:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id n15sm4863868edd.49.2019.06.25.07.20.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 07:20:33 -0700 (PDT)
Date: Tue, 25 Jun 2019 16:20:31 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 0/2] Associate ddc adapters with connectors
Message-ID: <20190625142031.GV12905@phenom.ffwll.local>
Mail-Followup-To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Emil Velikov <emil.velikov@collabora.com>,
 linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Inki Dae <inki.dae@samsung.com>, David Airlie <airlied@linux.ie>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, dri-devel@lists.freedesktop.org,
 kernel@collabora.com, Sean Paul <sean@poorly.run>,
 linux-kernel@vger.kernel.org, m.szyprowski@samsung.com
References: <cover.1561452052.git.andrzej.p@collabora.com>
 <20190625100351.52ddptvb2gizaepi@shell.armlinux.org.uk>
 <817ccfba-754c-6a28-8d75-63f70605fd43@collabora.com>
 <20190625133639.GA16031@arch-x1c3>
 <20190625140755.GT12905@phenom.ffwll.local>
 <20190625141032.5jiy2oekb3olaejd@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625141032.5jiy2oekb3olaejd@shell.armlinux.org.uk>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_072036_385196_96FB3223 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Inki Dae <inki.dae@samsung.com>, David Airlie <airlied@linux.ie>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 m.szyprowski@samsung.com, kernel@collabora.com, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 03:10:32PM +0100, Russell King - ARM Linux admin wrote:
> On Tue, Jun 25, 2019 at 04:07:55PM +0200, Daniel Vetter wrote:
> > Otherwise I like this. Biggest problem I'm seeing here is rolling this out
> > everywhere, this is a lot of work. And without widespread adoptions it's
> > not terribly useful for userspace.
> 
> There will be cases where it's not possible, because the I2C bus is
> hidden behind a chip that doesn't give you direct access to the DDC
> bus.

Oh sure, plus lots of connectors where there's just not ddc bus at all.
But if we only roll this out for a handful of drivers it's also not great,
that's what I meant. Looking at

$ git grep drm_do_get_edid

there's only very few drivers where the ddc bus is hidden. There's a lot
more where it's not, and I think a big series to tackle those would serve
extremely well to make a case for this sysfs link.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
