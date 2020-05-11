Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 209A41CD7E6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:22:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UYdnRhlBAm3DtmdAfg8oo4YgRYbMlRSrAZfGNPatrpI=; b=gSoNVM2Gi/Wc0L
	ppe7Q4QbiMbsvpT/S8QmSkF7COl8yW/WF/Tcis2jsemV84wMbQ/8Z58QyRuK+Qvy96b+ZgkQn0LAQ
	h0s5gaeshK2a/C0yrLGbPwJ+eji3utPsWMy1d9Hf45emgsh5c4TivZum1roXMqLKI1RyqdG+kTgNe
	2LFat41oie8DMSwfcGP0Y84agfMJUc2ZD6rE3isJXVPra07hRPsMpANbOF3uv1tacCSKHPpex77vn
	RK6t1NbDrjydnq3o3s5HN2MhSFdZR4G6npenisXHCnmxe+Pncbiu3M8N1YyVFvD2lW7zV1Va1NWVC
	t0lpWpS+g2NVdc6TOxHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6VY-00006o-5c; Mon, 11 May 2020 11:22:04 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6Tx-0007Kg-G5
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:20:31 +0000
Received: by mail-pg1-x542.google.com with SMTP id u35so1432435pgk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 04:20:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RBLnOLN/xGupOJlKhwFOgTtzNiWbEGxrtVsrReg29dM=;
 b=jjww4EQkPVY9N3ZIUCFMHngB3WtP4NTudbcC4nittAotkKcqrHTEBizhEfBsxYUmFp
 sNA5OHHUNLHs2a2RttvGx65LSCdYrGYl6ethzKoz8j8fE5Po003olVGgStHQ697Zm7Wr
 LklK7WR5a62Ndx8vRIAud1MkwuNyAD8OVmQ09PdbAHSBYOIIyGZk5J0wPY/bb14KeOtM
 DXXnQZBCpeYJCJ+7H7Vrf5oI/yFMAwzbXvlA+yJbIjP4fPj2+HQR91dx/fr8c5WVvIiy
 9P/4I1QpbAGK6XG2RjsJUMGO6HOt01jVYQ/SzvxkQuHl9FUPtbyMF6AYC1E5vYV6INeB
 EC/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RBLnOLN/xGupOJlKhwFOgTtzNiWbEGxrtVsrReg29dM=;
 b=kZuHY2Gc75alIws1JM2eC8roNDoESZlzePpYJQFlDl9Mwaz42B4pGPWnGex0hnp7Gr
 MICISVs5X1gbhWf4mbrRWEESXwQDW8xfi1r/Tnctv4fOCPBrDaXkiMq6iP+qBRWe1VIn
 YmjTWKtODF/QOIPHzcjLL6yJcqESNapRxGanL+SlYRBk+HldfnRZoYB+X46d8mx1hWat
 K95NR+scRAAp8BUki/+G0nL2Idova94nH8mq00m33oqdWTadm/8/ksprUbp2Cxug8i7U
 fn3dMP+LslZTdiVq3Jl/sJBxsSEzxSew/yX4IUMkASfvU0ZOQD2FAx+biBwMXA24qKWk
 IJow==
X-Gm-Message-State: AGi0PuYbZMN/XhqmqT3weqynSMKJmzvGqzRhHVm/8lZ4p1CV2If/Rrt+
 S2fWFDX/i2B93g/Jew8wGSRs
X-Google-Smtp-Source: APiQypL8r6gRZ4l8eCnXJA+pCEdbAsE/7V+4j2AYFLeau2y3pPOdAUkE7gI7rV/xyf134iuSWun9zQ==
X-Received: by 2002:aa7:819a:: with SMTP id g26mr15560891pfi.193.1589196023626; 
 Mon, 11 May 2020 04:20:23 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([103.59.133.81])
 by smtp.gmail.com with ESMTPSA id 188sm5350690pfx.141.2020.05.11.04.20.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 11 May 2020 04:20:22 -0700 (PDT)
Date: Mon, 11 May 2020 16:50:14 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Amit Tomer <amittomer25@gmail.com>
Subject: Re: [PATCH RFC 1/8] dmaengine: Actions: get rid of bit fields from
 dma descriptor
Message-ID: <20200511112014.GA3322@Mani-XPS-13-9360>
References: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
 <1588761371-9078-2-git-send-email-amittomer25@gmail.com>
 <20200510155159.GA27924@Mani-XPS-13-9360>
 <CABHD4K_h7wc1gc3wvya1PRTRjMRkDPW==yrAWSk7cCF9ghkUjg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABHD4K_h7wc1gc3wvya1PRTRjMRkDPW==yrAWSk7cCF9ghkUjg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_042025_566233_00D69A86 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andre Przywara <andre.przywara@arm.com>, linux-actions@lists.infradead.org,
 cristian.ciocaltea@gmail.com, vkoul@kernel.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 04:15:57PM +0530, Amit Tomer wrote:
> Hi
> 
> Thanks for the reply.
> 
> > I'm in favor of getting rid of bitfields due to its not so defined way of
> > working (and forgive me for using it in first place) but I don't quite like
> > the current approach.
> 
> Because , its less readable the way we are writing to those different fields ?
> But this can be made more verbose by adding some comments around .
> 

I don't like the way the hw linked lists are accessed (using an array with
enums).

> > Rather I'd like to have custom bitmasks (S900/S700/S500?) for writing to those
> > fields.
> >
> I think S900 and S500 are same as pointed out by Cristian. and I didn't get by
> creating custom bitmasks for it ?
> 
> Did you mean function like:
> 
> lli->hw[OWL_DMADESC_FLEN]= llc_hw_FLEN(len, FCNT_VALUE, FCNT_SHIFT);
> 

I meant to keep using old struct for accessing the linked list and replacing
bitfields with masks as below:

struct owl_dma_lli_hw {
	...
        u32     flen;
        u32     fcnt;
	...
};

hw->flen = len & OWL_S900_DMA_FLEN_MASK;
hw->fcnt = 1 & OWL_S900_DMA_FCNT_MASK;

Then you can use different masks for S700/S900 based on the compatible.

Thanks,
Mani

> Thanks
> -Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
