Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D10B2109339
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 19:03:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1bpaz7DYGGWd6L0dCSsWP7eXCGRoiU7aGd1+o/Excfo=; b=dNmCpOA4IDX74R
	0qv3wKjuvZZCFuLyTvUsrEybsNMoG2XDb4cZEhEfFV8wQJBVG7NcFq0kOWh7Iczcw9lnlvmvlZl6O
	jvVOPqPn1kFe1RPHpQ/laPnimqwC43K9OAQp9HxEVlFsEhsTd5vEs7mwV2BF2LKOpiOelQVhXcgeN
	uFFemQGxYqwcEPecZzShUWWdLS9WA07FlZR/+iYtV591/SjNhe7hX829Rn0XJPv3MT4cj/QyRSTIq
	FLLOWgL5TugTZ+3R+hoDHf46AQlhHYxbDakPNFE2mShud3oJmyHZhSFCC1GaqJUBLpZ/xmxX9m+/b
	N7HMxK5+5L57+lsHkxow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZIhR-0000Ew-AR; Mon, 25 Nov 2019 18:03:01 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZIhH-0000EI-Rb
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 18:02:53 +0000
Received: by mail-wm1-x341.google.com with SMTP id u18so277323wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 10:02:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DsVFgOaoUnvqgpXrrfO/kuxApZChsstp982wmsPwKow=;
 b=BVZoTiVVWzkDa6J2Q2Qlyztkv9vYFsD8IQFSzj6F/veUx4CwkaYyPnMFRUYWaN8vy4
 FN/26iKAp68el7tDKgZOR8bbr3gZQ+IIjxSCIbCU3xYwtaRnVItBvJtOT5eD0zVON6uG
 /vdQ+r1fFJyFa5adDPjnZxlevY/yeOnNxUybX639YiR7WofyJKBI4nK48UtjD0iVidNm
 6GJ9ITcStA6id5xJFVLJHZv6Lax/OfEErhFa/2G/Ceczqd2xJ8z/NNb+5Zv+8SmMkZFv
 HaZyLOMDnD+07/EQFr1qxCxir+RJwAnSaMeHJgSUMK3rZ0osaPrGXBCwdtx82UlEbUCw
 EIRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DsVFgOaoUnvqgpXrrfO/kuxApZChsstp982wmsPwKow=;
 b=hK4v3gYxWf3m9zkWgUuFyyTytl4q0yxwzYyoO2MihFwFC+3XeR/lnlTjPbds61U392
 S20AOQ48hPYLfpI21scu61qL2yPqZjAIRXxZs91elkTGQQKpMgbDixY3wKAokS5hRE8K
 JGebbVRdO0lqCyYdrFkp7oUsCJZcOjel0INKkoBVRFMc0GtdlhcrwUJpLH1+wn+zFBVa
 diGhw1G5l065eS5saMa+RemGJxUgtUzsmO8UbZfUvhChKfyxQ6BV0v1jeCXA8GeZK/iO
 ZxnilyF2KS9oaE6Wg1k87LlGoMFAHH2/4nYGvlLtX0OQvpLFsPKHEGFahssyOqRMRb1V
 FPsg==
X-Gm-Message-State: APjAAAWltRNPFtjzvAKGMbO9wm5fJYTiE/qBtqZ3yNy6NvY7WqtAoAzC
 8Zv91nMtVS+EMvVEU8TObYcbfQ==
X-Google-Smtp-Source: APXvYqw9M5aeYuFnK4VC6ZcTBEX4VkbAMP2hH5YfKViShTZm/FHN5Dr4VO7dByhvs7N0wxzK+UaojA==
X-Received: by 2002:a7b:c1d3:: with SMTP id a19mr93685wmj.127.1574704970043;
 Mon, 25 Nov 2019 10:02:50 -0800 (PST)
Received: from lophozonia (xdsl-188-155-204-106.adslplus.ch. [188.155.204.106])
 by smtp.gmail.com with ESMTPSA id 72sm11785825wrl.73.2019.11.25.10.02.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 10:02:49 -0800 (PST)
Date: Mon, 25 Nov 2019 19:02:47 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: "Jacob Pan (Jun)" <jacob.jun.pan@intel.com>
Subject: Re: [RFC 00/13] virtio-iommu on non-devicetree platforms
Message-ID: <20191125180247.GD945122@lophozonia>
References: <20191122105000.800410-1-jean-philippe@linaro.org>
 <20191122160102.00004489@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122160102.00004489@intel.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_100251_906219_42F0864E 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
 sebastien.boeuf@intel.com, mst@redhat.com, eric.auger@redhat.com,
 guohanjun@huawei.com, bhelgaas@google.com, jasowang@redhat.com,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 04:01:02PM -0800, Jacob Pan (Jun) wrote:
> > (1) ACPI has one table per vendor (DMAR for Intel, IVRS for AMD and
> > IORT for Arm). From my point of view IORT is easier to extend, since
> > we just need to introduce a new node type. There are no dependencies
> > to Arm in the Linux IORT driver, so it works well with CONFIG_X86.
> > 
> From my limited understanding, IORT and VIOT is to solve device topology
> enumeration only? I am not sure how it can be expanded to cover
> information beyond device topology. e.g. DMAR has NUMA information and
> root port ATS, I guess they are not used today in the guest but might
> be additions in the future.

The PCI root-complex node of IORT has an ATS attribute, which we can
already use. However its scope is the root complex, not individual root
ports like with DMAR.

I'm not very familiar with NUMA, but it looks like we just need to specify
a proximity domain in relation to the SRAT table, for each viommu? The
SMMUv3 node in IORT has a 4-bytes "proximity domain" field for this. We
can add the same to the VIOT virtio-iommu nodes later, since the
structures are extensible.

But it might be better to keep the bare minimum information in the FW
descriptor, and put the rest in the virtio-iommu. So yes topology
enumeration is something the device cannot do itself (not fully that is,
see (2)) but for the rest, virtio-iommu's PROBE request can provide
details about each endpoint in relation to their physical IOMMU.

We could for example add a bit in a PROBE property saying that the whole
path between the IOMMU and the endpoint supports ATS. For NUMA it might
also be more interesting to have a finer granularity, since one viommu
could be managing endpoints that are behind different physical IOMMUs. If
in the future we want to allocate page tables close to the physical IOMMU
for example, we might need to describe multiple NUMA nodes per viommu,
using the PROBE request.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
