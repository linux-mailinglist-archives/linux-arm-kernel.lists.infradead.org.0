Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B976C4F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 04:28:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HzuGI5FeyUXRXeA12BlnyJ5ir9vAaQcKCcxk3ja1hUM=; b=KmHgKJaxKv2Hym
	B+/uEydrBrR+pbElPUf028lOdkTKlTBGvEpc6TB+dmOCIbSI+D7eQjrYko7IZiu+mWvQqxiD2GrN3
	JG68YUIZPZuxR/dR+bDZQgWuX+MNzLhNzL9S76GCwT6MgR9zUaGja33nfcI2ewWDw3mmiP8xHS87W
	xzaX9e4wTHEKhIeBRvFFYqyrWcuV8vuPvRW8hO5SCCi6Vh/9JFeRuDrnE35MYgkZwdw7fIe06gx7e
	T4uWgR0FPVnDKqZwT8cbTyaEUqw/eC2eNQmfCSnjEgwACdmqyr/qgz+jOgB+XM4PTaDjZAK4JkbBo
	KJcSW4MdwWL3x1p6U2nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnw9h-0007E0-PU; Thu, 18 Jul 2019 02:28:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnw9V-0007DE-Sw
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 02:28:15 +0000
Received: from X250 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 96F2720665;
 Thu, 18 Jul 2019 02:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563416892;
 bh=7uF+16PHLQHJzGvyU3LH7QsLAWoecUrJYJRlCqppMZY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aP2ScQbNTUarll89m8VWM5DT8FNP43osyd6czm+PKuhyFBr1wljLWwYQsv1jyHnYv
 mKz+dAwclZ0abtEvVkv1rkspp8hIS+e8n5c2GCPFFuCwKr1kS7feeM0J+fYHarH6IJ
 Nl712nnmgDp5in/ozo2jKAJycLJ5n51+VHaO4MuM=
Date: Thu, 18 Jul 2019 10:28:05 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: imx7d-zii-rpu2: Remove unneeded
 snvs_pwrkey node
Message-ID: <20190718022804.GA11324@X250>
References: <20190624205432.16727-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624205432.16727-1-festevam@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_192813_958101_79BB1620 
X-CRM114-Status: UNSURE (   7.74  )
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
Cc: stefan@agner.ch, cphealy@gmail.com, Anson.Huang@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 05:54:31PM -0300, Fabio Estevam wrote:
> Since commit 4664179fe679 ("ARM: dts: imx7s: Enable SNVS power key
> according to board design") snvs_pwrkey is disabled by default, so there
> is no need for disabling it explicitly in the board dts anymore.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
