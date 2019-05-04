Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 119B213859
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 11:00:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ON9DHHKawvPloUmYYuijtfk5yjE61rIqc8/s7ocers8=; b=mbDOBvze1nH7hn
	+A2H2w3mX1kX0gBLcvBHyvCQP4b/9ZIniuZbPwKHZOq3vjOEWm9ecrrP0c7kFKdZjxE0XQqaG9spe
	lkaEVbcpc/hj10Q4SOS3tXv2wAXLAyuJqrX4CnmluoiaEl/431jfv7Fi6bN9GdBpvatxbsyvPUJxp
	fQ6eVQzJfaXeYXxG8rhCb9u97d+qNeEYhueVUFsd3aN/3M3clftnaYqReIzhIbTjPuErxkZHZqzhJ
	ECC3J13QsIGlv+A3GZp/CQqZCM3HMOBGQY+qpmMrCXI2V5Hr9EDUhgVxdyMi/NSBb2IMYb7SeuuFG
	MTp62jh/3+gwJIAmh/jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMqX6-0002HB-2n; Sat, 04 May 2019 09:00:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMqWz-0002Gk-Bq
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 09:00:31 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ADD44206BB;
 Sat,  4 May 2019 09:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556960428;
 bh=7HXqKzpxUiSs04dSG1RdKuXbafCjffLyeVJkF8NBEOg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=puUuzFkkzwwSmbdSjWHix07/cvUiyDGyk0+FIz9i4YcJ7oA6H7JhGuDTt7y30D2zN
 eCdZKfgo7WOKsnlgmcJ93LF816InzU+PNYuJpGhQOM+HiUwVpwCiZstZvYR2idVS9/
 YWJc88yVVZkIVYsvxgD8/JipbwxoZNuKsOaMrxW0=
Date: Sat, 4 May 2019 11:00:25 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dragan Cvetic <draganc@xilinx.com>
Subject: Re: [PATCH V3 07/12] misc: xilinx_sdfec: Add ability to configure LDPC
Message-ID: <20190504090025.GB13840@kroah.com>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
 <1556402706-176271-8-git-send-email-dragan.cvetic@xilinx.com>
 <20190502172713.GD1874@kroah.com>
 <BL0PR02MB5681D386363988CB2CA4D040CB350@BL0PR02MB5681.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BL0PR02MB5681D386363988CB2CA4D040CB350@BL0PR02MB5681.namprd02.prod.outlook.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_020029_427472_EB0ED586 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 Derek Kiernan <dkiernan@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 04:49:19PM +0000, Dragan Cvetic wrote:
> Hi Greg,
> 
> Please find inline comments below.

As they should be, no need to mention it :)

> > -----Original Message-----
> > From: Greg KH [mailto:gregkh@linuxfoundation.org]
> > Sent: Thursday 2 May 2019 18:27
> > To: Dragan Cvetic <draganc@xilinx.com>
> > Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> > mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> > Subject: Re: [PATCH V3 07/12] misc: xilinx_sdfec: Add ability to configure LDPC
> > 
> > On Sat, Apr 27, 2019 at 11:05:01PM +0100, Dragan Cvetic wrote:
> > > --- a/include/uapi/misc/xilinx_sdfec.h
> > > +++ b/include/uapi/misc/xilinx_sdfec.h
> > 
> > <snip>
> > 
> > > +/**
> > > + * xsdfec_calculate_shared_ldpc_table_entry_size - Calculates shared code
> > > + * table sizes.
> > > + * @ldpc: Pointer to the LPDC Code Parameters
> > > + * @table_sizes: Pointer to structure containing the calculated table sizes
> > > + *
> > > + * Calculates the size of shared LDPC code tables used for a specified LPDC code
> > > + * parameters.
> > > + */
> > > +inline void
> > > +xsdfec_calculate_shared_ldpc_table_entry_size(struct xsdfec_ldpc_params *ldpc,
> > > +	struct xsdfec_ldpc_param_table_sizes *table_sizes)
> > > +{
> > > +	/* Calculate the sc_size in 32 bit words */
> > > +	table_sizes->sc_size = (ldpc->nlayers + 3) >> 2;
> > > +	/* Calculate the la_size in 256 bit words */
> > > +	table_sizes->la_size = ((ldpc->nlayers << 2) + 15) >> 4;
> > > +	/* Calculate the qc_size in 256 bit words */
> > > +	table_sizes->qc_size = ((ldpc->nqc << 2) + 15) >> 4;
> > > +}
> > 
> > Why do you have an inline function in a user api .h file?  That's really
> > not a good idea.
> 
> This is just a Helper function for users aligning the calculations.
> Please advise, is this acceptable?

Not really, just have actual api functions in a uapi .h file, why would
userspace care about this type of thing?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
