Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6C8126381
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 14:29:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KHkXpLCJYQHuEJXVEh5+qh7RagDxnUDMVR5ULL/FikI=; b=pT3z2XgQM8vkpj
	1hYu1s3THereOv5ESK8fRWYtpd4Q9x3VNm+UF6GDSCK15hR1IbJ3TfDi9UcHxuoJDFHd9v3btiSOc
	RNWCZc5w/30WPN/opOw0rvNxOQd5pnOlPuErzKd3BuzYmjP/Ck3GO+KI5XHPAjpc2x7oMFOPhNlIc
	LClyEswxpBECgY/npqKqjOJ5NUt42wBPb+nk/XAbvTFbL1bClSlIqCt2A9QTuzKo2jB+LxTDt3O90
	Dt4yTz8nleREsUrFg0H7xBLp9j9jNGzQqxNgqEWPcxoNrpS8iJgVmeWTDQTBBPnqTe1wyhaD7UWqb
	qpPut/pgop3HvH7uOs1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihvsE-0005ua-1q; Thu, 19 Dec 2019 13:29:50 +0000
Received: from mail-sender210.upb.ro ([141.85.13.210] helo=mx.upb.ro)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihvs3-0005tW-1r
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 13:29:40 +0000
Received: from localhost (localhost [127.0.0.1])
 by mx.upb.ro (Postfix) with ESMTP id 11E21B561CCE;
 Thu, 19 Dec 2019 15:29:36 +0200 (EET)
Received: from mx.upb.ro ([127.0.0.1])
 by localhost (mx.upb.ro [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id t9TArq6fxlRF; Thu, 19 Dec 2019 15:29:34 +0200 (EET)
Received: from localhost (localhost [127.0.0.1])
 by mx.upb.ro (Postfix) with ESMTP id 53944B561E4B;
 Thu, 19 Dec 2019 15:29:34 +0200 (EET)
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.upb.ro 53944B561E4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=upb.ro;
 s=96342B8A-77E4-11E5-BA93-D93D0963A2DF; t=1576762174;
 bh=5E2ub4lgVn1Y+WESvtSyxuhO9OUVpYxCqfwsPhkG4No=;
 h=Message-ID:From:To:Date:MIME-Version;
 b=SEa33hgLNAh3ZQ4qwSWozHnUBlNwAEA1fgNx9BXHD6UFNDX3juD9VZYUUG4L3PEV/
 W8K0oOa3HP+ohpyOS+kWPiGW/08PHnUxCp7Y1kYYUIObydWs9WznDO7qoAptV6ntXG
 Mk9ctB3U5LeJBfGabafvtnL8nkFnedFIYT9rnAlw=
X-Virus-Scanned: amavisd-new at upb.ro
Received: from mx.upb.ro ([127.0.0.1])
 by localhost (mx.upb.ro [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 0VemASvl5qg3; Thu, 19 Dec 2019 15:29:34 +0200 (EET)
Received: from nemo (unknown [90.69.82.201])
 by mx.upb.ro (Postfix) with ESMTPSA id A2CD3B561CCE;
 Thu, 19 Dec 2019 15:29:33 +0200 (EET)
Message-ID: <6504123809effc310ade02dbb8a63f10db6b6c92.camel@upb.ro>
Subject: Re: [PATCH] i2c: cadence: Added slave support
From: Radu Pirea <radu_nicolae.pirea@upb.ro>
To: Wolfram Sang <wsa@the-dreams.de>
Date: Thu, 19 Dec 2019 15:29:30 +0200
In-Reply-To: <20191219130501.GA958@kunai>
References: <20191219124120.53754-1-radu_nicolae.pirea@upb.ro>
 <20191219130501.GA958@kunai>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_052939_265053_25C7CC70 
X-CRM114-Status: UNSURE (   6.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.85.13.210 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Michal Simek <michal.simek@xilinx.com>,
 Chirag Parekh <chirag.parekh@xilinx.com>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-12-19 at 14:05 +0100, Wolfram Sang wrote:
> > +/**
> > + * enum cdns_i2c_mode - I2C Controller current operating mode
> > + *
> > + * @CDNS_I2C_MODE_SLAVE:       I2C controller operating in slave
> > mode
> > + * @CDNS_I2C_MODE_MASTER:      I2C Controller operating in master
> > mode
> > + */
> 
> Can't the hardware operate as master and slave at the same time?
> 

Of course, it can. If the driver has a slave registered wait and
listens and if the subsystem needs to use the controller as master, the
driver changes the state of the controller to master, sends and reads
data from the bus and after this change the state of the controller to
slave. In cdns_i2c_master_xfer is done all the magic.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
