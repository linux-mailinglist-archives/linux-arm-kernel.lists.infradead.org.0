Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C4DC260D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 20:38:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AiA4ZRaJb+8/+T6pFlwGo6jOrs+tCTY1rpZCgFamxpI=; b=cJYYv2RNVBjx5R
	lNum7fCPO8+FiYALrHk2O+EuApwUQEPCLVu6DhoW3m5ga0weGbDBydqyw6Sb8RBf94WXDaw0O05pw
	jA68bOvriSe2z/oNRlwvGVFR0TuJ9jV8iaH1xnHaO8UTrBD+EieI7Cw0VCzCJVFSuN88aLIbWyWtB
	ryR6ZAqPpy99v0QzyGljvk9rmlXIk+uxW8UyNk29F7b0oa6+7bAObvu6wlnXOBWt83cH222NmhJ48
	0HTG5FQzFEVPRWMTiiW9z9TDYLjjL2z8bbJSV4eHU0pBc4RpW5vKkWRN4RI1zAdD+pMlm1WxYIR9H
	COGTJZnZBuwjh1TRl+AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF0Yt-0004vI-8A; Mon, 30 Sep 2019 18:38:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF0XM-0003Yg-NG
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 18:36:46 +0000
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B700D224D7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 18:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569868603;
 bh=1tL/OZOkCQgzZnBFplZTU+ckRrS4/sDh6E9zhlDzq/c=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=y9r7bli47fVGj+4fjTYQ6PAXVa0UI+u3pZnzIoPcyL5ummMRbOrFM8Z8ezx0c9O9M
 OWWNIjwXkelXIdFKvH0eTzLFL3aK4P1ZUn6RPdwLnHsRpcYvtGERwjcypBmW+az2Ot
 OoolrSVYpG+lt/hn0Iww7kUj5dPAJgA21mXP8u00=
Received: by mail-qt1-f179.google.com with SMTP id n1so18293618qtp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 11:36:43 -0700 (PDT)
X-Gm-Message-State: APjAAAWgiNJ1p1bsp4T1QC+wkEV/lUtIbnGYQFsdO3I8t9HfsN++27Bu
 Pcu4sOuqRm3XNA6r8cRm66jY9URTHglkAvkFfg==
X-Google-Smtp-Source: APXvYqzrW8P34cQHwAL7kkHCPf/H7Il3VJU7gB5YH+0CDpc3kU87kepa13cpt99giygGkK5bkJVuq6phphJeVpRAcNg=
X-Received: by 2002:a05:6214:11b4:: with SMTP id
 u20mr19329160qvv.200.1569868602914; 
 Mon, 30 Sep 2019 11:36:42 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1569851517.git.robin.murphy@arm.com>
 <fd1f7700165b2e2679fe6d499ec38b91f4a432f4.1569851517.git.robin.murphy@arm.com>
In-Reply-To: <fd1f7700165b2e2679fe6d499ec38b91f4a432f4.1569851517.git.robin.murphy@arm.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 30 Sep 2019 13:36:32 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJD0DKZkDAOsAcJPM24opvRqKHB3jsHqjeyjQM2WV9BEw@mail.gmail.com>
Message-ID: <CAL_JsqJD0DKZkDAOsAcJPM24opvRqKHB3jsHqjeyjQM2WV9BEw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] iommu/io-pgtable-arm: Allow coherent walks for Mali
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_113644_815601_B0B78D09 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Joerg Roedel <joro@8bytes.org>,
 Steven Price <steven.price@arm.com>,
 Linux IOMMU <iommu@lists.linux-foundation.org>, Will Deacon <will@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 9:11 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> Midgard GPUs have ACE-Lite master interfaces which allows systems to
> integrate them in an I/O-coherent manner. It seems that from the GPU's
> viewpoint, the rest of the system is its outer shareable domain, and so
> even when snoop signals are wired up, they are only emitted for outer
> shareable accesses. As such, setting the TTBR_SHARE_OUTER bit does
> indeed get coherent pagetable walks working nicely for the coherent
> T620 in the Arm Juno SoC.
>
> Exploiting coherency for data accesses is more of a challenge, since
> not only do we need to get the GPU MMU attributes right but we'd also
> have to avoid pgprot_writecombine creating an attribute mismatch on
> the CPU side, so we won't try wiring that up just yet.
>
> Reviewed-by: Steven Price <steven.price@arm.com>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/io-pgtable-arm.c | 3 +++
>  1 file changed, 3 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
