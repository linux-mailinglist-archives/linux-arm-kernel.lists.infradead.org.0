Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94615EEAB7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 22:03:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6EIjWEi9FyrbgloCtNI3dCWpBCEtgF6CnxjvRvVBjGI=; b=djAbAWaprW9MhO
	lO5xKlOgZ4KFm+OK+eaLnjlyU1JiBEnRn/PVKimM6Ek1zljixZ5U37UTv1XGcw2U98sWZWtYjDVW1
	OMw4jMIxg9BbXZK8A9COMzgQGyFV7XN5yyr4pEvsTE9bCwzgDU+OXCBgitFUiiOd/+yQm4i5j5aAk
	uhWibsz7/gdgX6rjufIN95MqzcPl6PLCOmhgC8UQ1AdmbKs/KO3yttFvcAH4/+lHfeXagsL7B/vdl
	0EKZtrIFfOjlr7wESH128YwV3ZwW0hMxImkA0lbGPV79bkME8iLAMaLDmczxk6gEzeh/XGncNAhWR
	wOcmuHpXBk5o/Pwbd/Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRjVv-0000xF-Jt; Mon, 04 Nov 2019 21:03:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRjVo-0000wd-Ls
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 21:03:45 +0000
Received: from localhost (6.204-14-84.ripe.coltfrance.com [84.14.204.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 321E720717;
 Mon,  4 Nov 2019 21:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572901423;
 bh=n3I/GXodjAc2ailEgazvTeiRrg2euShf1ziuoKHX/wk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tgl8ivGyx0ARu3aabpW+8Rb3YzpsH5Fs2BJItwTpzwpxlkxki2CsCMa/DmmEorEDO
 oqUno/dMmbRiHIst7H3QXmDufjlqNKZda+PVz9o09Zza4J+dMDI0P7ixXFiLb7UWWp
 TaUnj+I5rrNmBODqwzF8zdswHqJD89mG2oVKFUv4=
Date: Mon, 4 Nov 2019 22:03:25 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 00/14] coresight: next v5.4-rc6
Message-ID: <20191104210325.GA2454533@kroah.com>
References: <20191104181251.26732-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104181251.26732-1-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_130344_737709_B05DC3E7 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 11:12:37AM -0700, Mathieu Poirier wrote:
> Hi Greg,
> 
> I collected the following for inclusion in the v5.5 kernel cycle.  Please have a
> have a look when time permits.

Time permits now, looks good, all queued up, thanks.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
