Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E141151F5B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 18:24:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NfChAhA2NoDgzx/IXE8HjyDkMUiCmkfn4J5QpgiCosA=; b=dHjayu1n1kd3Ya
	TKazDY5wkuBJuCekHIgNbuFq5f48evDkAsWs4jgIfA5RioVdVL4e7vahs7gKdFwvrsAeRGOid62Hx
	+yCmsSoP66ypogF6tzdVlBaFas+mJLOnjjV5TNnV2Jr45rarG9nW3CEU8ya+PlFCIOT2tMi5d1eef
	510UPravUs+l6Rg8WAaeucwPW5cQuxkv7K+gnJhKMz/f9LX/EWLyXpL3zLQka5qbTuhYB3cJTe/Y6
	kuw/XHopUlccvk+rOe6TeSodE3wrLtC5/Uw3ez1UpVLhVEG3/crLTCL6xuJsyonww2auLOKPpyJ22
	g+F9q9OD44S2lW2LigdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz1vy-0002gZ-Jk; Tue, 04 Feb 2020 17:24:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz1vq-0002fj-Rd
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 17:24:16 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iz1vg-00062P-A3; Tue, 04 Feb 2020 18:24:04 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iz1vf-0003o0-C0; Tue, 04 Feb 2020 18:24:03 +0100
Date: Tue, 4 Feb 2020 18:24:03 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: Re: [PATCH] arm64: dts: librem5-devkit: add lsm9ds1 mount matrix
Message-ID: <20200204172403.jlb6zeqv2jdblkqb@pengutronix.de>
References: <20200120100722.30359-1-martin.kepplinger@puri.sm>
 <20200203110545.GB24291@pengutronix.de>
 <7298838b-b5ce-4e90-331a-4b62a6f91b95@puri.sm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7298838b-b5ce-4e90-331a-4b62a6f91b95@puri.sm>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 18:23:30 up 81 days,  8:42, 82 users,  load average: 0.01, 0.09, 0.04
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_092415_178433_BB913779 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, robh@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-02-03 12:31, Martin Kepplinger wrote:
> 
> 
> On 03.02.20 12:05, Marco Felsch wrote:
> > Hi Martin,
> > 
> > On 20-01-20 11:07, Martin Kepplinger wrote:
> >> The IMU chip on the librem5-devkit is not mounted at the "natural" place
> >> that would match normal phone orientation (see the documentation for the
> >> details about what that is).
> >>
> >> Since the lsm9ds1 driver supports providing a mount matrix, we can describe
> >> the orientation on the board in the dts:
> > 
> > I didn't found the patch which adds the iio_read_mount_matrix()
> > support. Appart of that your patch looks good so feel free to add my:
> > 
> > Reviewed-by: Marco Felsch <m.felsch@pengutronix.de> 
> > 
> > Regards,
> >   Marco
> > 
> 
> hi Marco, thanks for having a look. there it is:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=04e6fedb18f6899453e59a748fb95be56ef73836

I see =)

> thanks again, for now as long as I don't resend I leave adding the
> reviewed-by to maintainers,
> 
>                                martin
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
