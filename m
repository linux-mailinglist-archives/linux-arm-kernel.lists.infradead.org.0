Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 984D4109317
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 18:48:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sgyq2XBnFAmO5buNx9MTjdGGnWlX61gHYkrdOskg9V8=; b=AfQFjd9du/T+7i
	FiHvf0xfh0V6HZpyFKDTC9lLnr+EdDVpQmYtbyMoJ8L+nEZ83Co525HqKISS0SVVYJHNNe7hpFHLP
	O1xJpdeEpVr/rRDAc2AXKPJ1rr1QKBUi/v9IhkWGM9Q2P0gONifxmPMd2sM70F5JzE86EJVUxEzFo
	5uCmpuNsX9TAypPU6n62CRvBUr0VysrDX+biWDKtG5/mDbEqn1DURu56VE75Q+Br2rxjLBKp5Ca3N
	OLY5UJm45EYWRcAYsHhPs081lrWnzJEYxBhZOAdCJ+gzav44xBvi1c7zNyvcJuI5t8Z9xXmin4ubf
	ZyOQZ2O6CIoEsdt6RhDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZITT-0003Z0-Dx; Mon, 25 Nov 2019 17:48:35 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZITI-0003Y7-HL
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 17:48:26 +0000
Received: by mail-wr1-x442.google.com with SMTP id z3so19219982wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 09:48:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BgkOCn6dEkaCecb5ZyLmsM0vtVrRc/X2TTNPZzp0BGs=;
 b=avnCZcmnWQYRn2ejXtbreBr+2fzx+QirQ6jMfKAMwEDo3jyctcQvSS6SM6aBRJCAeP
 kfDeyJNKwf8Ww1fdC45IB/7jKdswYHhGPaF1CAK1k/eHulj1Z8NDM4NLugYgnTl5DEOo
 YefFZFkbA6n3NhXip9hDUOr85MJpTQj4qNSE9VQlJPLdQNIY7YvpyPpEkKFXnyOnZTKk
 zxPRxvEFW8WTSxxiqEYBqSc/EW+pCq8OXdDzqUhlOxxL17HZqZAjCdkw8lFuH7Nliyrm
 MDDF0iP1wW7sCg4O3wkJdWYO3+EHez48clfhcdiT/8bJ80T/RuVV1xpWQm7lYwPafspo
 67oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BgkOCn6dEkaCecb5ZyLmsM0vtVrRc/X2TTNPZzp0BGs=;
 b=men2W8C+fZNP9+mmjY/vmlMgfTuGxSC4h83PSqcfEaSy5eGDVxHmqrUnrmuH73o1JV
 clzYnloOca0DyVjNu8pULnwWjOrp2VPnomGCXxd/4AAy6DIcboHuPhg1Aryq4LnKG1ZM
 is5/t+0Pwe86yiZGzJG6iChGhCsdudOHhJ59nlD2oWHaEzVqqM+rZo7uwPqJo3N1/jPu
 tSV9VXIDgDGKr65Eu9Fz+Yxr4MijymtAlliyE7lZQPHeoXDbgACPOo9lIqtK9Yh/5aeO
 X2kPrcmXNzkF3SqexWace1CT2j8tFBIXg/c40tFZHv76ws/h6sYjmZEcEVhFe7Ws7cLq
 Dq9A==
X-Gm-Message-State: APjAAAW0gIUVDqXocKegTicQ5MobGYoBHilt2l2iHGreOKFP9OukWmzT
 uFhepzGQ/CyyLS7T4+3j3Y8gcQ==
X-Google-Smtp-Source: APXvYqzTUYJqRjRrvNHNtPJwWI/KyemjW5baiqCvdsWHNGy9hgofkwoCe9NS+y/KmUwV3VIZ5E9NFQ==
X-Received: by 2002:a5d:4acb:: with SMTP id y11mr12150855wrs.106.1574704100857; 
 Mon, 25 Nov 2019 09:48:20 -0800 (PST)
Received: from lophozonia (xdsl-188-155-204-106.adslplus.ch. [188.155.204.106])
 by smtp.gmail.com with ESMTPSA id x7sm11127238wrq.41.2019.11.25.09.48.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 09:48:20 -0800 (PST)
Date: Mon, 25 Nov 2019 18:48:17 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: "Michael S. Tsirkin" <mst@redhat.com>
Subject: Re: [RFC 13/13] iommu/virtio: Add topology description to
Message-ID: <20191125174817.GB945122@lophozonia>
References: <20191122105000.800410-1-jean-philippe@linaro.org>
 <20191122105000.800410-14-jean-philippe@linaro.org>
 <20191122072753-mutt-send-email-mst@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122072753-mutt-send-email-mst@kernel.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_094824_706450_68F5ECF0 
X-CRM114-Status: GOOD (  19.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

On Fri, Nov 22, 2019 at 07:53:19AM -0500, Michael S. Tsirkin wrote:
> Overall this looks good to me. The only point is that
> I think the way the interface is designed makes writing
> the driver a bit too difficult. Idea: if instead we just
> have a length field and then an array of records
> (preferably unions so we don't need to work hard),
> we can shadow that into memory, then iterate over
> the unions.
> 
> Maybe add a uniform record length + number of records field.
> Then just skip types you do not know how to handle.
> This will also help make sure it's within bounds.
> 
> What do you think?

Sounds good, that should simplify the implementation a bit.

> You will need to do something to address the TODO I think.

Yes, I'll try to figure out a way to test platform devices.

> > +static void viommu_cwrite(struct pci_dev *dev, int cfg,
> > +			  struct viommu_cap_config *cap, u32 length, u32 offset,
> > +			  u32 val)
> 
> A single user with 4 byte parameter. Just open-code?

Ok

> > +		cap.head.type = viommu_cread(dev, pci_cfg, dev_cfg, 2, offset);
> > +		cap.head.next = viommu_cread(dev, pci_cfg, dev_cfg, 2, offset + 2);
> 
> All of this doesn't seem to be endian-clean. Try running sparse I think
> it will complain.

It does, I'll fix this

> > @@ -36,6 +37,31 @@ struct virtio_iommu_config {
> >  	struct virtio_iommu_range_32		domain_range;
> >  	/* Probe buffer size */
> >  	__le32					probe_size;
> > +	/* Offset to the beginning of the topology table */
> > +	__le16					topo_offset;
> 
> why do we need an offset?

I find it awkward to put a variable-size array in the middle of the
config. The virtio_iommu_config struct would be easier to extend later if
we keep the array at the end and only define small static fields here.

> 
> > +};
> > +
> > +struct virtio_iommu_topo_head {
> > +	__le16					type;
> > +	__le16					next;
> > +};
> 
> So this linked list makes things harder than necessary imho.
> It will be easier to just have a counter with # of records.
> Then make all records the same size.
> Then just read each record out into a buffer, and
> handle it there.

Yes, that should simplify things.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
