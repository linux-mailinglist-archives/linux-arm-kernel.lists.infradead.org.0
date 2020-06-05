Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ABD11EFC17
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 17:02:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GR2hILMMJi9VvVpNOP+6XdAykIIl4TXLQPwl3D8XHm8=; b=dqBBR6g6k898M+4/1TZDyww7x
	IoAka7JuIGmcLsf9Z6+yoTRPdh9XdH6XYz8AIopQPD7aiglx8pmfiJ3xpM8C+DwR/DXto1bCcBv+N
	TPyOnzRNCxeNZN7x/qEp7WKfNcuvhIW/rxUfRtQs5cZ9SpqaycCaLcNw5uFmiYq1KQSaRWf0d97I9
	EHYgNvwZyBGBy8VARmodgJWOZ0kY0+Dgf2FBWN6+/SyOsiv4VxR/YFLjyR1FjdlS+lUQ50w426wxT
	/9DEbO+RzPrL4mZaVSsnPdcUddwgCDb2LsLFWv9zZcJTkJwd/r0Pzyx5Lot02le2NcABf/6KF10dC
	bKKAwpuBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhDro-0000iA-1r; Fri, 05 Jun 2020 15:02:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhDqE-0000Fm-At
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 15:01:07 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 83F232065C;
 Fri,  5 Jun 2020 15:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591369266;
 bh=atSo0Qb+rMrsZv5QANKFcbcUcwoez30MfjPtT8ppNS8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iNOTh3GVfGr8Oi8u3jquG56gWGC7TwnPsXkrbsAbPb8no4OYQZMIe9uExtbQjaTy9
 gN0gj1O7xUzlW4M5FuRDzTu1MTHRk5b2MVEdO6hxErTu4/ctKjd4fisO4gD4RRctgv
 mk+YqE/s7yEhcLm0OsNy9zGIzVtS6bdm06fJsPTI=
Date: Fri, 5 Jun 2020 16:01:03 +0100
From: Mark Brown <broonie@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v9 05/14] spi: imx: fallback to PIO if dma setup failure
Message-ID: <20200605150103.GG5413@sirena.org.uk>
References: <1591392755-19136-1-git-send-email-yibin.gong@nxp.com>
 <1591392755-19136-6-git-send-email-yibin.gong@nxp.com>
MIME-Version: 1.0
In-Reply-To: <1591392755-19136-6-git-send-email-yibin.gong@nxp.com>
X-Cookie: Air is water with holes in it.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_080106_399076_6CE2B43C 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 matthias.schiffer@ew.tq-group.com, martin.fuzzey@flowbird.group,
 catalin.marinas@arm.com, s.hauer@pengutronix.de, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, vkoul@kernel.org,
 robh+dt@kernel.org, linux-imx@nxp.com, festevam@gmail.com,
 u.kleine-koenig@pengutronix.de, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, shawnguo@kernel.org, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6685301597669467143=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6685301597669467143==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+sHJum3is6Tsg7/J"
Content-Disposition: inline


--+sHJum3is6Tsg7/J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Jun 06, 2020 at 05:32:26AM +0800, Robin Gong wrote:
> Fallback to PIO in case dma setup failed. For example, sdma firmware not
> updated but ERR009165 workaroud added in kernel.

Please do not submit new versions of already applied patches, please
submit incremental updates to the existing code.  Modifying existing
commits creates problems for other users building on top of those
commits so it's best practice to only change pubished git commits if
absolutely essential.

--+sHJum3is6Tsg7/J
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7aXi8ACgkQJNaLcl1U
h9ACrwf/RD2Rv/jpt2YPaf64q5u9KvPJTvEmVU5U5Bntbxu4kMr9w/H6cT0QyhUg
pfOGftQDcUXm9x+HC0Q+xC3+bPmgzzzbjGZLxMfVfgvpyV6JJ+GhTVX/LjR6Jpi+
eyVMWffvIVKSZH8PO+nymh1/fcrOLbz3g+6D7fQJ+XNh7XmJJV0ysIpE/43KLvZs
X4netF+zcPwX2jBYdDpP0WRi+yzBDaJSNv3rV2AJgxO0Yug7d31On8HkRYxCoMaz
q0RJ/8s/ol2Pv0uT8GaVF7wJbDLA4XKhR53l4EeaBluFn9bh9lLYf9i3Mi53mbJQ
2XlQLzL/GxTo2szSSv9mBII/D6nXaA==
=LU0r
-----END PGP SIGNATURE-----

--+sHJum3is6Tsg7/J--


--===============6685301597669467143==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6685301597669467143==--

