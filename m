Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3555C1230D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 16:50:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IhjIIlD+M9M5cnDKNev7aOR+e54VPKKDQT2xCfvOKiw=; b=Td8VRi4aymiRMw
	MlmlmX9X5NJcLxogPwxQrkinTrO9chZ8/dup2ToVcZAApzfo4zZINnt5VH8iE03XkkXGB71ZDChvJ
	BDSc52VUIwoom6RC9G6YqcgQcaUCIl5vmxBgKoiLI9pfmpVKM++9P6/tfc5y8WBAY4vXZW1+MzW1P
	8B9G0hXlPnh5uqqAfxmk/oG43JHMo11GD1ehCyfORfYmGUEDdod5WVgRWnPXDwn4wA3RNt11Z9L5w
	6p3IV+eie049i6ih5azVZz0l4TkixPx2qMy4IJaQS+CdVxCbfqyuRJ4Fp2KAicTuOJYAMk6VkXM90
	Kkv6EbY9o5lNOIKBzYIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihF6r-0005ea-LP; Tue, 17 Dec 2019 15:50:05 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihF6g-0005dX-8r
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 15:49:55 +0000
Received: by mail-pf1-x443.google.com with SMTP id q8so7760568pfh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 07:49:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kSrTvcjDG2rfeDj/DoUiqKIsmDe1I17BLAhzGf2Jm4s=;
 b=ck5P1R1EaASD/ERU56tf6luVfzFgK/8DfxUQ4I4JHl7sYKw8rIh1n4SGKasj88Wtvh
 8f3AN8UqbwgfHZfmVVXsqJNosqwUqvUf9X0fdOdObRXcAngL+ipReHFzgmx6EpALRcIF
 ah+CNb7sQMFM2ujnQbAFA7fB8Sg2uAHowOje4uYLYDyEQ8YA9xLVsE7el3m/xOwoRQC+
 TZ+KVp1TiaKeTBcCJKHrfHamTj9ar2kUCOoRpu9yc3OdFG6FhrlT8CDSPBn8kH3t25kY
 A/lfPqUILX/jrmkrlObvqXm03CdwPtREkGJ9oin6b/6yl3ZsOXuthnWZlQG5/hD/XyiF
 1a1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kSrTvcjDG2rfeDj/DoUiqKIsmDe1I17BLAhzGf2Jm4s=;
 b=PXZirb2+mEaoZKAhjmTBz4I3vO4EQcNogtOsFNWVZwWCvzUwog7KdBkW/WRpDpnuc0
 xPkP3pLDS/WglfmLnlWB5VDifJfdhVn48P9IwNE5YsF7l6R1gYh6CIr0QB0Fv5uUfM/l
 6VbJzqDkKy9u89Ih9ASDuIUiTLdKjoDCw95CXUkzPhykyR4Ocn3FVS8SIQR2xB7GA74g
 S56llcyGYSMQ102UjTl2zkhfujvdybT2nhzm4NGpuxkh34pX5rKmcbpSIisZDTJVyOn0
 Rx3JheCb2GDBbfHQiCkmbtE1nsA9Hg13jw4ttknjJbbEyzsHgvFOlEf/sQOAZSyrtWdH
 tP7g==
X-Gm-Message-State: APjAAAU42FW4vchJG0ezK0wOsXkL59rtAjFuLTRVUZyzZ+qD3il4kzg4
 trWiZBmXa9rnRBAgcUJZWtLurFgl
X-Google-Smtp-Source: APXvYqxAT+2R/DrvmX06LKH0oImnzJLf2V6f1mddgkR61EuGHJZAMszwBWQ6OpqKZ9vaIBN35oKDPg==
X-Received: by 2002:a63:4b48:: with SMTP id k8mr25732169pgl.362.1576597793355; 
 Tue, 17 Dec 2019 07:49:53 -0800 (PST)
Received: from localhost (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id u6sm2657561pjv.31.2019.12.17.07.49.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 07:49:52 -0800 (PST)
Date: Tue, 17 Dec 2019 07:49:50 -0800
From: Richard Cochran <richardcochran@gmail.com>
To: Radhey Shyam Pandey <radheys@xilinx.com>
Subject: Re: [PATCH net-next 1/3] net: axienet: Propagate registration errors
 during probe.
Message-ID: <20191217154950.GA8163@localhost>
References: <cover.1576520432.git.richardcochran@gmail.com>
 <42ed0fb7ef99101d6fd8b799bccb6e2d746939c2.1576520432.git.richardcochran@gmail.com>
 <CH2PR02MB70009FEE62CD2AB6B40911E5C7500@CH2PR02MB7000.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CH2PR02MB70009FEE62CD2AB6B40911E5C7500@CH2PR02MB7000.namprd02.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_074954_312781_3BC02AEE 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richardcochran[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Michal Simek <michals@xilinx.com>, David Miller <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 06:19:47AM +0000, Radhey Shyam Pandey wrote:
> > -----Original Message-----
> > From: Richard Cochran <richardcochran@gmail.com>
> > Sent: Tuesday, December 17, 2019 12:03 AM
> > To: netdev@vger.kernel.org
> > Cc: linux-arm-kernel@lists.infradead.org; David Miller
> > <davem@davemloft.net>; Michal Simek <michals@xilinx.com>; Radhey
> > Shyam Pandey <radheys@xilinx.com>
> > Subject: [PATCH net-next 1/3] net: axienet: Propagate registration errors
> > during probe.
> > 
> > The function, axienet_mdio_setup(), calls of_mdiobus_register() which
> > might return EDEFER_PROBE.  However, this error is not propagated to
> EPROBE_DEFER.  In which scenario we are hitting probe_defer?

Did you see the cover letter?  I am referring to this series:

 16.Dec'19  [PATCH V6 net-next 00/11] Peer to Peer One-Step time stamping

Thanks,
Richard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
