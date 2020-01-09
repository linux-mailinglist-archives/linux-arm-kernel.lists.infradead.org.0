Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5252A135733
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 11:39:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8aQzKpX9jJfkuxCabuxwbZSCvLh5dAxuMfk9FcEw9Tc=; b=TICST2VmHeFiwp
	acgqNtQsaDuponVY0f4Dh6vQScUEtEjUU79Y2piJbJ/nAsPbpGrm0U+c6LegNQmH2GfQKXdrYeRyY
	CpK84XzMXho7MaA//LkY3htsa+x0r2UeLp1NWc13KqmW31UzLPh3hxuu78WUMl4a8WCOQwlQDf5Ue
	KTbye1J2veBCYL8onJlKTBWl62jJWx4n4xv2nSR9M8vWK8efTjNcucnXqZJV0N5GwzqtZhgLgbcan
	22HSB+SYyArxWFGq+TyMLIW9I9jpnYi8SnUyFRwu9nFrhDq+gvIyCYT1K1Xz1L94vkpQV6F+h2qOW
	LZSas/FPUugS8Ce0ArzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipVEB-0003Kr-VR; Thu, 09 Jan 2020 10:39:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipVE3-0003KQ-7P
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 10:39:40 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8978520673;
 Thu,  9 Jan 2020 10:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578566378;
 bh=4zBOYHX6eeVFAgflBYqbR1VmzzyGdmrN6kkQCLA9ZYE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2PNDEIdtYgnGmThcdeExByKs/hjypEDmN5Nm9AV5zYqSDgsPT5G3thzCYKUnG9moj
 Sc+DZkCaq2t9A1e1A2cdzHdYX7DcbK8nECEqm4QHUrYVQfpQLBVbWXDQFSRK3INveM
 fxDu3mPK2XuZrUeklhIzw8FtOZ/wN0KmzgAgJYTc=
Date: Thu, 9 Jan 2020 18:39:30 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2] ARM: dts: imx6: Remove incorrect power supply
 assignment
Message-ID: <20200109103929.GP4456@T480>
References: <1578562682-32548-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578562682-32548-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_023939_290529_12B12FBB 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.9 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 2.3 TVD_SUBJ_WIPE_DEBT     Spam advertising a way to eliminate debt
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, andreas@kemnade.info,
 Linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 05:38:02PM +0800, Anson Huang wrote:
> The vdd3p0 LDO's input should be from external USB VBUS directly, NOT
> PMIC's power supply, the vdd3p0 LDO's target output voltage can be
> controlled by SW, and it requires input voltage to be high enough, with
> incorrect power supply assigned, if the power supply's voltage is lower
> than the LDO target output voltage, it will return fail and skip the LDO
> voltage adjustment, so remove the power supply assignment for vdd3p0 to
> avoid such scenario.

I applied v1 patches with using this version of commit log.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
