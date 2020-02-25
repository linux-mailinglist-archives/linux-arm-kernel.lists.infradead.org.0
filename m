Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F158716BE55
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 11:10:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KHnxhH1VADrSjbaHZ+R5gHEbs3SDv6yEMTJbC+nJBEY=; b=tWJbqb3StpnNFG
	pVKppdC9/j0HhRvQS8CexAgJScInxhiVPSgcRhIaPX2x04X/3hO77u+JMz7J5ZdEgtoniyWLIAGPS
	7m9hb1XglFdCC9aPRWy7E2QlK4snLcgyttGT+8i/ce5hUxA8z4g2FVShtou2/JD4PdnUq+8JO33lm
	dw7elJmLfiHpKl0EUNi6/V2BeDDCBJ6WF9thCJuULkYJDJepW/kWFtNpye9+Aew2VTGIero2SORh7
	+UBO2bH4UjP7wKideDMaqwYfbZGdNGuY3Oau0ERLdVkPDBEYOByiAAh/HZpJwcGCs2KEiM8jOsAu4
	Cl9XDGVrlIgqivhOvmRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6XAg-0006qX-NZ; Tue, 25 Feb 2020 10:10:34 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6XAM-0006p4-VD
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 10:10:23 +0000
Received: by mail-pg1-x544.google.com with SMTP id u12so6632674pgb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 02:10:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DyMpEJKs+8inuT3JzdxHRTYW4XbPRxYmHFS7rJcMiTo=;
 b=FxNo9rOoXFWu5407FfbtyWpGIRbj9KKxjTY8RxTKLZ/mRamBivEBBBF8o7iguYZCS8
 o7FmpgVAUMoOvpOlaV53Ni+rnyeUxpEmSlCDQzAgq3EMp5LZgTchDOR4Rtbjchc0ShZA
 xPmjexB8VS+oFN3Szxr7y2OW1DzelczMzVdBWqwUAnW9cqWia+40vQjvQcPpzoTafSwj
 w2kkhPlcAJE/2wVnad5TQ6WRXyttnLoLu3HSQjyg4YU5qRw4xBJMHDlPb6lt1f80TGTK
 EF8lLM32t+LGLvX18eHSOWak+36hGKwbYTMWsfqp7yTAuT5LIeNmjg2MjynP5A+0ch8j
 3Sjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DyMpEJKs+8inuT3JzdxHRTYW4XbPRxYmHFS7rJcMiTo=;
 b=P5IE77OfZeoPPX2QZ23O3hMDJIIBHCqD3Kr8cSwidFvrUSbLBKs2PZC18XSOMuTWRM
 IxE1A8057iQo5mFm3S9apTHJIw3JMHwvEdNR/0sPYTIsXpqJ+oA4sLirr9dt8S8Frfq4
 1umuZC2kcSaCTCV77gi2RACQqNGSDBO2U3UoGpWiRCO+DbkIRMP46eqN7kfASfQWsbxo
 QosGdfcimpDfrweVh+l2nJT7W5J7T6N+Q73CEeYt+EurZbak7Ni6CVIUUrCr4XeQHTYP
 Py9vk/7CajdtvENcLJBgMin3JlSYa2zC/zt1sfZtpGeYhaRpQb1S7x0iMTbBGgUewHj/
 6mxg==
X-Gm-Message-State: APjAAAUyNepbUcJQzuG1XPpE6Eh6i+Jh67SfQWpnkzH31EkHZ36uhqOw
 KBh3GzTylZA6XsHcNxhKMU0=
X-Google-Smtp-Source: APXvYqz0j531hOiU4KYMfzFOo5zoLMaozISOegwSY9/l8Sa7mBFi1nfsYrnWAhTfioijX7BIKX/e5g==
X-Received: by 2002:aa7:946b:: with SMTP id t11mr55120817pfq.57.1582625414317; 
 Tue, 25 Feb 2020 02:10:14 -0800 (PST)
Received: from localhost (g183.222-224-185.ppp.wakwak.ne.jp. [222.224.185.183])
 by smtp.gmail.com with ESMTPSA id r7sm17083740pfg.34.2020.02.25.02.10.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 02:10:13 -0800 (PST)
Date: Tue, 25 Feb 2020 19:10:10 +0900
From: Stafford Horne <shorne@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 2/2] openrisc: use the generic in-place uncached DMA
 allocator
Message-ID: <20200225101010.GC7926@lianli.shorne-pla.net>
References: <20200220170139.387354-1-hch@lst.de>
 <20200220170139.387354-3-hch@lst.de>
 <20200221221447.GA7926@lianli.shorne-pla.net>
 <20200224194528.GA10155@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224194528.GA10155@lst.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_021019_902831_79867853 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shorne[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, Feb 24, 2020 at 08:45:28PM +0100, Christoph Hellwig wrote:
> On Sat, Feb 22, 2020 at 07:14:47AM +0900, Stafford Horne wrote:
> > On Thu, Feb 20, 2020 at 09:01:39AM -0800, Christoph Hellwig wrote:
> > > Switch openrisc to use the dma-direct allocator and just provide the
> > > hooks for setting memory uncached or cached.
> > > 
> > > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > 
> > Reviewed-by: Stafford Horne <shorne@gmail.com>
> > 
> > Also, I test booted openrisc with linux 5.5 + these patches.  Thanks for
> > continuing to shrink my code base.
> 
> I just resent a new version that changes how the hooks work based on
> feedback from Robin.  Everything should work as-is, but if you have
> some time to retest that would be great.

No problem.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
