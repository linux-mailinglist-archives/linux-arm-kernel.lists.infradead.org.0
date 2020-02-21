Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCEE01689DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 23:15:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m3181k2+QoEMTlhBX5y3TnL5fiY2SO9rClIG7SScIRY=; b=hjRXZ/q4svRJwJ
	9mat9BsXEoW5fq3EIE+VqfJhgJhs1tWRP4tRr+fPEkzVEjIwnvUCuPGTfYOxqk4++fKgU1QZWPdSC
	6wQqNCwIlbr5G6s9ZXwLREzZxJzeWWXLHTF9WqbS/KlG4ZS1cgOgukq9vFaGCnm+xgyMxdtaWDd4G
	x+NCQ6MIfDOUlM/Ixx48LY1UH3qwuXuhHHUFtgH3e5EgwbbQzqRM5C9pMVbxVGZFdmZDjCv+bga9D
	g74sFzhYN3FOgZYyfe5p3XyE31sHCpVKQASGcaY/rmwbaV6cybCEowlAdwMBp3jhd9J2l9jQ44Djn
	JwNKSa6zAHiQBOyRbyxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5GZf-0003bZ-EO; Fri, 21 Feb 2020 22:15:07 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5GZQ-0003b0-AV
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 22:14:53 +0000
Received: by mail-pf1-x441.google.com with SMTP id j9so1980071pfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 14:14:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=W8KaZGmDosurwlNJD9BGtUyzNAa4jQOZ04o70/FjZgc=;
 b=kGkAs4Nbpvsh0LSiFUur6Wb/TbQ7PlbWJAOcbz65Qdv1Uw+Vl3ItNQQMcq77KAYZtJ
 m2urSGoIRXXmBgm7E9zWqbYRJ+5nnXrjCjuYwEMSV5irgIy80/nbHWZ2XU6OXDiBPYJv
 szqdDyeVflofbn6119zAg2Af45wfFrvegUCV58BoK/8EFrO8aWmVrRGB0AEm3jHvnZwq
 g1wiEIh+kkSJDiHR4tM7g/to6tuY6/ds7sh5OENeLGPrw7vXXN0mSnsFAVAAIUn5CXPR
 b8xb4ji8dTq0+IsQw7wVgeeGwqWP+aZc8EV+CmH2yRI8/SyKIhiNvK3/B5nUMCwO2jKu
 gxvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=W8KaZGmDosurwlNJD9BGtUyzNAa4jQOZ04o70/FjZgc=;
 b=RVyLW7WzbBSAF1A0admdU7rVlwiwqUmq8Z1VkDuqhciM5HbK0rtsrbneRetdGPNQsl
 XILjYZDihAXWHEcRHKpmbNBc6mzQpMUhxNHFpQwpi6GG1vQ9NwWR1QEto5UkSB5E1nmq
 3c7fSWrHHopsP9exSXR0ZytvonzsuhIHtpsuO8QdtciMW4rWvyi38xaypCQCUu4Sgq2T
 zzOsRiiSvxArKZmry7SbohL31BUvHcR/cxPTKA2VRtF/aa2ipKQdvsyBcj4lAjVIy9Ek
 peir36yXcW+a/xc6mbh1MyZmfk0zJ8LVEAC+T1fh3ovZt9gD3Hr9Fp+CXsFUzQ0qjWQi
 37WQ==
X-Gm-Message-State: APjAAAUvYkMbOwEBzOnzp6U7HY0WthY6wzq75WQ1EM2wgo73qi5qfl8l
 4F2Wbkf+CXH1PX0IUkwdJBU=
X-Google-Smtp-Source: APXvYqzuFzGOe6xFIcYN9MIIJZs1pHKUSIf83YFRjQMgSwSuWxPGqeqGheyj2Ocv0clngLUDLTvy9A==
X-Received: by 2002:aa7:8805:: with SMTP id c5mr17210828pfo.142.1582323291138; 
 Fri, 21 Feb 2020 14:14:51 -0800 (PST)
Received: from localhost (g183.222-224-185.ppp.wakwak.ne.jp. [222.224.185.183])
 by smtp.gmail.com with ESMTPSA id h3sm4051033pfr.15.2020.02.21.14.14.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 14:14:50 -0800 (PST)
Date: Sat, 22 Feb 2020 07:14:47 +0900
From: Stafford Horne <shorne@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 2/2] openrisc: use the generic in-place uncached DMA
 allocator
Message-ID: <20200221221447.GA7926@lianli.shorne-pla.net>
References: <20200220170139.387354-1-hch@lst.de>
 <20200220170139.387354-3-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220170139.387354-3-hch@lst.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_141452_364437_ABAF10D3 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shorne[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jonas Bonn <jonas@southpole.se>, Mark Rutland <mark.rutland@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 iommu@lists.linux-foundation.org, openrisc@lists.librecores.org,
 linux-arch@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 09:01:39AM -0800, Christoph Hellwig wrote:
> Switch openrisc to use the dma-direct allocator and just provide the
> hooks for setting memory uncached or cached.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Stafford Horne <shorne@gmail.com>

Also, I test booted openrisc with linux 5.5 + these patches.  Thanks for
continuing to shrink my code base.
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
