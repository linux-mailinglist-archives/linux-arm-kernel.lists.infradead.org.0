Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D72109323
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 18:53:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iGEpWmrxP1Xo9tYjnKCzQWdYaZDh5xuSs0no5HZH94s=; b=El/sur8EO9Yv9f
	x5aQ0I7LwlPNcStN29gPVsUTwokQTYwDJyWcQHIUwrs+4GlkQd5Cj2p56m/JtKuCfQQLoR3NXhXu3
	qMfymH0stCT3UVh7YKh5Ug+3FJoX+hW3dQ3Cs61P+jf/o+AlHkXE8RuND5Wcx8M6dGMHqAWOGyNCI
	YpA8eTrxQeNNp4/wKi8wIaCoyQXaTc+kQ7nHjUKg7qL79bjff7CZs72WgAaHrz9i6f8rhFzHmO9QU
	nWoc5D/1JA9t6Se1SH3IkS74zZm6Nu6v0qSmUW6WfEzQKVV3WTGZdAgD7+wY8jYH/pGOyFpbL6p69
	TDAGsdQ0e6PpSkTjqaMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZIYD-0005bQ-NN; Mon, 25 Nov 2019 17:53:29 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZIY4-0005aN-TG
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 17:53:22 +0000
Received: by mail-wm1-x342.google.com with SMTP id n5so273482wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 09:53:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=w762PFi0VU3n3eQDHHvKOAEXrmJ/fz15F0VMqWwRKbE=;
 b=ucHw3iITUddgxmI0WaTeJ03oRUG5uF8HifGtGA0su/1oL8KAd8AZXtYGuQKcpbum8e
 d6QnTIGwff7BVf7S6toPsGifytN5SktOO+ePb6YqXPtb6gYo3YNY4PxId/vuZoubQL3B
 HZEwCDCJkQy+orvI6z5xFNqQfTmQLH9SdLq2Q9e4wsRNaJ0SGNOa+RCVpbB12Hl8Og9f
 CXY6WHbjQ2/65OtfFrYy/fCeDjmmeVA24mCcyFcYoKY1qa9FXUzoMG82gzImz8jhXo5w
 bHyegwRNLGNDIEyqqMjAAXkzFtDrFlkTpk8MwFyhHzyAPZmSpbf+F2CL2BoPmWn8fWWF
 u01g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=w762PFi0VU3n3eQDHHvKOAEXrmJ/fz15F0VMqWwRKbE=;
 b=GGYFsSkWKQTmSQm1hvR+mhvQf3VrYuTyZ3jAo3V0lQZiA4JInMuXhVAIn76OHHoEvY
 bYIkYyFRjqJsLcX3oCXDln632KmQBzz2y4bSv+RzymPxYrAGB3KEM5SOkCsDGFUYgxTy
 f7r80PRYaHcH8HiYM1ZosTZzKb8cphHh5dGG+kkNtSPS4ymf/5xmKT/+Zzx8iGYg/7KA
 RrP7h+P5b46QVk0QI6BSQJda3O1LiHi/GuTpN5FhAQF0ufVDDUwULBXQ3oxYWdqQ/SPR
 fDqRE5J6YnGn4Mi0OGdRlMB3Zm2Lrfb6+30dHSl7KJ55kzy3BTyBo2FcmXXDJxjsp1sI
 5L/w==
X-Gm-Message-State: APjAAAVWnom2eMCOPWowUQUqqrWVjmq0UKqLOaBsgHeeEZG7DdbadipF
 ksvc7+0HCVIhTPcnnzKwpyOy/w==
X-Google-Smtp-Source: APXvYqzAZYIvQKGmfaQYD5lQJqrthSCPdfwYB+f4khqntbOAs2pzi4zET6f0XPBxuKoaB6N7z3djFQ==
X-Received: by 2002:a7b:c959:: with SMTP id i25mr98865wml.100.1574704399261;
 Mon, 25 Nov 2019 09:53:19 -0800 (PST)
Received: from lophozonia (xdsl-188-155-204-106.adslplus.ch. [188.155.204.106])
 by smtp.gmail.com with ESMTPSA id p1sm26490wmc.38.2019.11.25.09.53.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 09:53:18 -0800 (PST)
Date: Mon, 25 Nov 2019 18:53:16 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: "Michael S. Tsirkin" <mst@redhat.com>
Subject: Re: [RFC 00/13] virtio-iommu on non-devicetree platforms
Message-ID: <20191125175316.GC945122@lophozonia>
References: <20191122105000.800410-1-jean-philippe@linaro.org>
 <20191122075438-mutt-send-email-mst@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122075438-mutt-send-email-mst@kernel.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_095320_970923_84339A1B 
X-CRM114-Status: GOOD (  18.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: virtio-dev@lists.oasis-open.org, kevin.tian@intel.com,
 lorenzo.pieralisi@arm.com, gregkh@linuxfoundation.org,
 linux-pci@vger.kernel.org, joro@8bytes.org, sudeep.holla@arm.com,
 rjw@rjwysocki.net, virtualization@lists.linux-foundation.org,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org,
 sebastien.boeuf@intel.com, jacob.jun.pan@intel.com, eric.auger@redhat.com,
 guohanjun@huawei.com, bhelgaas@google.com, jasowang@redhat.com,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 08:00:46AM -0500, Michael S. Tsirkin wrote:
> > (2) In addition, there are some concerns about having virtio depend on
> >     ACPI or DT. Some hypervisors (Firecracker, QEMU microvm, kvmtool x86
> >     [1])
> 
> power?

In kvmtool it boot with device tree. It also doesn't need virtio-iommu I
think, since it has its own paravirtualized interface.

> > don't currently implement those methods.
> > 
> >     It was suggested to embed the topology description into the device.
> >     It can work, as demonstrated at the end of this RFC, with the
> >     following limitations:
> > 
> >     - The topology description must be read before any endpoint managed
> >       by the IOMMU is probed, and even before the virtio module is
> >       loaded. This RFC uses a PCI quirk to manually parse the virtio
> >       configuration. It assumes that all endpoints managed by the IOMMU
> >       are under this same PCI host.
> > 
> >     - I don't have a solution for the virtio-mmio transport at the
> >       moment, because I haven't had time to modify a host to test it. I
> >       think it could either use a notifier on the platform bus, or
> >       better, a new 'iommu' command-line argument to the virtio-mmio
> >       driver.
> 
> 	A notifier seems easier for users. What are the disadvantages of
> 	that?

For each device we have to check if it's virtio-mmio, then map the MMIO
resource and check the device type. Having a dedicated command-line
argument would be more efficient.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
