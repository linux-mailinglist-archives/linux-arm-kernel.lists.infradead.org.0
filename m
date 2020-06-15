Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F54F1F9FCB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 20:58:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gkqfEEuuyS8qD7yaRTZEM/fhhDlpoXZ6WFgRwOnhUNo=; b=gtFZ7o986Y5/Mc
	vMPzw8uTavdYD0s3/YQF1ewa8c2eVk2ukhrYC5xK/y6V9bvHZodIjXNue2L3EmAMSrOEhiq0MKvhN
	P+069DIodfTZM4vp2AwXR8/lnA01aL8GkNbDKNh0Z4L5DpDXnI6fVqrqqPO+CjvcMJXuEGBumNGXG
	VnhJpyjRaCVJulib5/uvnpW0yYOt6XAjG7uecuZIMZO3w8PdVaiiMroDOeDWcLDHtRA4rgUPrtL0Y
	C3oYwUDmq8kqcrhez7vuavayPk36Y2daMql6rePIpq2xVEIQdBmRRA6nbZ5pDlHPij+YOhmRhAuIG
	sa+AqmwlKpLkd96P6qxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkuJb-0004ZX-1e; Mon, 15 Jun 2020 18:58:39 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkuJO-0004Wh-KZ
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 18:58:28 +0000
Received: by mail-qk1-x743.google.com with SMTP id g28so16826363qkl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 11:58:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ogzWVexVKpi+yf06GApbiQKLooA3A6vya/Qu53dz5sI=;
 b=B79KaIJ0c/ww8HMtAlyFH2XjxV7yynKBJIWwJHZ+zW3YLHuCCz9Bbiwsd2WzFuQLPj
 AFf5Hg0Lqd/XvxHRpc9Uh/4vnlvXaITDgihFpq8wunarv4UVftdSwWHlY7Zs6O9gurGh
 IE5GaopbWKe7DlaPUx/EPeh0He+mTIL/wqUz367myp2ljsairUj+5vVlWMjYvyLYdFxp
 yylSrzx5rdvX7s5Lrdyjcy+vzWB+YunSNoTcuzE3AgfFM4I5Skeao2I26rxVl1af8CRx
 y19r67M7mx7zcJG+Kyz2nHe2SegGgVU7ADSwtl1Rh91OJTnONTAEuipSUQQypIEpgb9A
 T36g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ogzWVexVKpi+yf06GApbiQKLooA3A6vya/Qu53dz5sI=;
 b=T9YMGvPC78cJrJXjz6Hday1S690waqHvncDMmXazGFzq3CHm2arIoyHnmPbakfla4U
 25zMJiAQJaHkb1d5UCMiFE10IY+A10K9gcFqxLq9nxpL5ws+ApVjs1cdt4P2aLR6C0l9
 i/+uf24zvK2MKf/G0Glx262CNU9DSAeEffWhpIcobJWntDJe1d0YxmS0jJ8LU8jMkxd7
 5Ezu2lhYlS+j0i/DOczSfXGfEoRDX9M3rp7odm05WGBdWFFBiBW9ELzflziXWzLdll/y
 D+CdltVo0HZxAQy5/9uZ1LlrwVmlx453BXUk9Lj3Dvdyq9QAVrFSuIxuHRWOj0hyOO8G
 +nwQ==
X-Gm-Message-State: AOAM530Amu+vv0ENeofBP4AhskNE7A1Ft6GrQkRUDRYm9JapZmbcwg3Y
 9ef5WhVXEzkkEx2jE/f8YnWpQg==
X-Google-Smtp-Source: ABdhPJygSobk4Dm93WtmDBaO2t3cPn7PZD+tDnBnapk86ninzx0O9WOhG6qnekVgX9A+5fj3vrdD7Q==
X-Received: by 2002:a37:812:: with SMTP id 18mr17402635qki.296.1592247503264; 
 Mon, 15 Jun 2020 11:58:23 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id m13sm13228785qta.90.2020.06.15.11.58.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 11:58:22 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.93) (envelope-from <jgg@ziepe.ca>)
 id 1jkuJK-008kGo-AN; Mon, 15 Jun 2020 15:58:22 -0300
Date: Mon, 15 Jun 2020 15:58:22 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Subject: Re: [PATCH 00/17] spelling.txt: /decriptors/descriptors/
Message-ID: <20200615185822.GA2084429@ziepe.ca>
References: <20200609124610.3445662-1-kieran.bingham+renesas@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609124610.3445662-1-kieran.bingham+renesas@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_115826_682357_DCB158F2 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
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
Cc: linux-scsi@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-rdma@vger.kernel.org, netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-mtd@lists.infradead.org, ath10k@lists.infradead.org,
 linux-input@vger.kernel.org, virtualization@lists.linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org, linux-mm@kvack.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 09, 2020 at 01:45:53PM +0100, Kieran Bingham wrote:
> I wouldn't normally go through spelling fixes, but I caught sight of
> this typo twice, and then foolishly grepped the tree for it, and saw how
> pervasive it was.
> 
> so here I am ... fixing a typo globally... but with an addition in
> scripts/spelling.txt so it shouldn't re-appear ;-)
> 
> Cc: linux-arm-kernel@lists.infradead.org (moderated list:TI DAVINCI MACHINE SUPPORT)
> Cc: linux-kernel@vger.kernel.org (open list)
> Cc: linux-pm@vger.kernel.org (open list:DEVICE FREQUENCY EVENT (DEVFREQ-EVENT))
> Cc: linux-gpio@vger.kernel.org (open list:GPIO SUBSYSTEM)
> Cc: dri-devel@lists.freedesktop.org (open list:DRM DRIVERS)
> Cc: linux-rdma@vger.kernel.org (open list:HFI1 DRIVER)
> Cc: linux-input@vger.kernel.org (open list:INPUT (KEYBOARD, MOUSE, JOYSTICK, TOUCHSCREEN)...)
> Cc: linux-mtd@lists.infradead.org (open list:NAND FLASH SUBSYSTEM)
> Cc: netdev@vger.kernel.org (open list:NETWORKING DRIVERS)
> Cc: ath10k@lists.infradead.org (open list:QUALCOMM ATHEROS ATH10K WIRELESS DRIVER)
> Cc: linux-wireless@vger.kernel.org (open list:NETWORKING DRIVERS (WIRELESS))
> Cc: linux-scsi@vger.kernel.org (open list:IBM Power Virtual FC Device Drivers)
> Cc: linuxppc-dev@lists.ozlabs.org (open list:LINUX FOR POWERPC (32-BIT AND 64-BIT))
> Cc: linux-usb@vger.kernel.org (open list:USB SUBSYSTEM)
> Cc: virtualization@lists.linux-foundation.org (open list:VIRTIO CORE AND NET DRIVERS)
> Cc: linux-mm@kvack.org (open list:MEMORY MANAGEMENT)
> 
> 
> Kieran Bingham (17):
>   arch: arm: mach-davinci: Fix trivial spelling
>   drivers: infiniband: Fix trivial spelling
>   drivers: infiniband: Fix trivial spelling

I took these two RDMA patches and merged them, thanks

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
