Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35619129362
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 09:57:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=toT9QdJtDXGLu+su1l9IV+h7SCTo2Pt0v/rvT5cYw/k=; b=liKJp7fDWckd4N
	edbDfh4ru0GhysIz9u6MOIXkG5Vg0SJ0udWZ9avFOgYz6E2CB7ppxCFEq6xZTOD+639rwIJRtCWgq
	m8R6mXc5xaiZNct0qXMq4EKuQ78c8I7hIgUSjdbfcKuYruDCUW2/8yQxROjkmrbn5dt4wAUKxFAOk
	rmQpDRKVSMheTOpNtDN0I2aIP1xMd7DCw0B4VI2r6TInBKTMwBHc5QcEhO3uFvm3sshamnUcP5dbt
	9NbBDyi6E0uZUg48mIiDUgPw+Q6/3elaS0CUYPrCv2FjaKSuwVDUKZOrBTH+T8VWViw/FoW4wtT0c
	AtiID9bJIiD8QoWwOUXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijJWW-0005Sm-Pw; Mon, 23 Dec 2019 08:57:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijJWM-0005SS-Lb
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 08:56:59 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B8037206D3;
 Mon, 23 Dec 2019 08:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577091418;
 bh=ypit6fFI9oUctSo5WDN1Km0/4S80IqXJA2UkBSN0GHk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ULWCpoUYbRojCj4luOmDrs63MNkIBQEG1W/OQUa1rquLVXZcWhfEXbXuiVg53K5ai
 1gtiT2Ay/YPi3fOJ4C2ic5VHqlhCXnNkGeUFsUN1Yh/qudZCGlpTfFmgjwIWMqe3vp
 JGhTxnZz4dfCoLg3GjA690/L/vS821zbM03EgBjU=
Date: Mon, 23 Dec 2019 16:56:35 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: Re: [PATCH v2 1/2] arm64: dts: imx8mq-librem5-devkit: add
 accelerometer and gyro sensor
Message-ID: <20191223085634.GY11523@dragon>
References: <20191223081253.27516-1-martin.kepplinger@puri.sm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223081253.27516-1-martin.kepplinger@puri.sm>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_005658_724663_22857CCF 
X-CRM114-Status: UNSURE (   7.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, robh@kernel.org, kernel@puri.sm,
 devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 23, 2019 at 09:12:52AM +0100, Martin Kepplinger wrote:
> Now that there is driver support, describe the accel and gyro sensor parts
> of the LSM9DS1 IMU.
> =

> Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
> Reviewed-by: Guido G=FCnther <agx@sigxcpu.org>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
