Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB18311A156
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 03:28:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=di/Jll1KSfti9r6Gp25HEIrv5c393Ic/DeaEMiQvQiw=; b=C/qjN2O2zcOsYr
	O3WhzkG5KvM0hzmEq5QrJ6ksB75Yp6TEddybGf5IBw2otjw4RsIAKjeP203nzW2eQjXF9pzPBHfkS
	Rym91aQ0/2M7JT9QrZGFKM9h5SbE4DoifxiBx5gMsiDPjfsLwQ3/Sc5M4EkLa0AwWrfNQ2N+6qn9F
	TH0xBIQg2BsWbz+q8Rr76HgYmi4kHcqDqsrGYo+tI9LAZJRMYB/3kVylF2sB6H9odJ6y8973OiLLU
	UD4gWlIKIIPXNhi0Mldx2vjR64uGS+arIryKNJx5lATuKNQF68D/yXlwj56YblqDo+8ekF0jUefaq
	m/B7t6sZIpg+JRpYJtEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ierjx-0002C8-Cv; Wed, 11 Dec 2019 02:28:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ierjm-0002Bp-KP
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 02:28:27 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B336F2073B;
 Wed, 11 Dec 2019 02:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576031306;
 bh=za59pLFinS7rtLJntJHisKNyAYiERsXuncY6HbDLGHw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k0cumAfEeUIhC+G+9XSYx79EB7KwJjCmIbDAWB4Jis20SzQw0QrFXFrLYX2xZh7OW
 uLX0s4Oo84fdLh1j/6dOtRIwq5sZsfJ3iPnnabo3dzuT1tdtCDydv4ne4beX0sGCc2
 0RDkpl3VzEnHq6hP+kW+0aVoc+AduOr0fwJ3vSH0=
Date: Wed, 11 Dec 2019 10:28:18 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v2 RESEND 1/2] dt-bindings: arm: fsl: Document i.MX7ULP
 Embedded Artists COM board
Message-ID: <20191211022817.GB15858@dragon>
References: <20191202131318.11404-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202131318.11404-1-festevam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_182826_691228_19EBD67E 
X-CRM114-Status: UNSURE (   5.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 10:13:17AM -0300, Fabio Estevam wrote:
> Add an entry for the Embedded Artists i.MX7ULP COM board.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
