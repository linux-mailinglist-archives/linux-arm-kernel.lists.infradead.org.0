Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9060F5AC08
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 17:09:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFRe0dX3B+qDYVpgj66RrADGrNAMO/rc3cMRetnNnB8=; b=dTelJ5XDnPaZLE
	D+3Zvo5dCRfApz8OYgUE/wIDhOdU2OypxDFVwIqRlGdub8zsjUuc5BM8JPDh5+Ta9mWEGngj9NIU8
	tlJECCTqniNSgvMC2bas8ptKN4qFbFvhcu1pBX4tZtQCcW3y/UB2VBW+KD52CIGtBWatuOifk0Gkx
	4WCK982QAp9VF6/q+QRmbgmJUAaLXVjRpZ7P1n6qL7oKjPiwWZxK8IMzTYh9CakbaMqFs8gqWTG0n
	GUYjhw7NjRYeCKdkhGi6Z8a37xrGqc7VtjfiMDUs0Ym5Ia/C/je6hYqbgEXO5yoSGZ3CsLkbW2moz
	FRKEOzVQDAt1EzQZPdJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhEym-0005GY-PX; Sat, 29 Jun 2019 15:09:28 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhEyb-0005Fb-Uv; Sat, 29 Jun 2019 15:09:19 +0000
Received: by mail-pf1-x443.google.com with SMTP id c85so4418112pfc.1;
 Sat, 29 Jun 2019 08:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4PDRDSdPlik/3Dz2WUeVgJcUfwA9IGRhonB1MM/wefg=;
 b=G57SADTMggL8n0pIpOEwPt5rucFLcFzaP0n3oeowJewkuuCijNkliMNKU+dGOlJ2fq
 EgAKCtiA3mOadRCmiaX8mEmLoId9NM33CuXBJlIVjavZ/WnnrRH6vZHvEDKKT/5R/aNr
 Y5VefnWEapcSksrsGqA6l2yPB2FUYnOh6Vi+ec1DRkT7wk27vt4ez6cL1TsEWp+WmJJD
 9czSVDIssaRJU7VtpsTT4SisHJVQZCK2gJ5Zlmlmi/1yGLJ9FoIo0IwwGlCR0OXlLBsy
 u8gp3kAJF4pXyVF54QHX3ujHIFjdgstGjSggr8TMM7tCgzpMymyRIkW7A3k/oUiZp/ow
 4BnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=4PDRDSdPlik/3Dz2WUeVgJcUfwA9IGRhonB1MM/wefg=;
 b=bLgIfhhcabykJw4TPAv+jIR9z8tz/HWoiXQ3cATX6QtjS7fAl7FjU6ifkEwxiqFw+O
 yVPGN77S89+8hz3BPDEdUVDEXOJMNX2dfIkNmoBWgn6swZ+VrNwJm+ZvvaroNn9LzHa8
 tmCa9cOZbhDUUUMRAVmrgVPvRjC5pdiQLp+D2iX3W4RUyEt8Ci8W6GASIwm6BSkjbtSW
 yuH9vPZ3qi4x0xdp4H2l19Q/mU7anIJhBgFcR6Q27/KuTFL+i4/fH174V8N4YXIvqDmD
 GDDoXBzeZ2JqR8FOpfN87jwERWiALKk+v7TW/4+kMy072pZKb7WO0lXAMm4HtZBUk2f1
 xlDg==
X-Gm-Message-State: APjAAAXSvp+sIYK9Jd0qaVFfnO846A5aBUOj/UmnX9d9LJRW23sRoHVC
 Cy76UjqLXghnmjsRKBlO8XY=
X-Google-Smtp-Source: APXvYqyDBBSk+rR6gLpGBEL0OVOHp9fl5zjs/iRj+V1a6MYIR50eUUkJF3Dx9enR+JvisdUNTLheWg==
X-Received: by 2002:a17:90a:634a:: with SMTP id
 v10mr20203751pjs.16.1561820957173; 
 Sat, 29 Jun 2019 08:09:17 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id b3sm10519235pfp.65.2019.06.29.08.09.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Jun 2019 08:09:16 -0700 (PDT)
Date: Sat, 29 Jun 2019 08:09:15 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 6/7] dma-direct: handle DMA_ATTR_NO_KERNEL_MAPPING in
 common code
Message-ID: <20190629150915.GA817@roeck-us.net>
References: <20190614144431.21760-1-hch@lst.de>
 <20190614144431.21760-7-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614144431.21760-7-hch@lst.de>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_080918_026595_5CADF1F8 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Jonas Bonn <jonas@southpole.se>, linux-xtensa@linux-xtensa.org,
 Vladimir Murzin <vladimir.murzin@arm.com>, linux-parisc@vger.kernel.org,
 Vineet Gupta <vgupta@synopsys.com>, Helge Deller <deller@gmx.de>,
 linux-kernel@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 iommu@lists.linux-foundation.org, openrisc@lists.librecores.org,
 Stafford Horne <shorne@gmail.com>, linux-snps-arc@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 04:44:30PM +0200, Christoph Hellwig wrote:
> DMA_ATTR_NO_KERNEL_MAPPING is generally implemented by allocating
> normal cacheable pages or CMA memory, and then returning the page
> pointer as the opaque handle.  Lift that code from the xtensa and
> generic dma remapping implementations into the generic dma-direct
> code so that we don't even call arch_dma_alloc for these allocations.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

This patch results in build failures for mips:nlm_xlp_defconfig and
mips:cavium_octeon_defconfig.

kernel/dma/direct.c:144: undefined reference to `arch_dma_prep_coherent'

Reverting the patch fixes the problem.

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
