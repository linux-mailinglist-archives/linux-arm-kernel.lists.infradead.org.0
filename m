Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BBE1290A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 02:24:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E/2W2w/OnlbGZ934LJGThBU2VPVryL/5nlE5/+PlrwY=; b=Jmnu39OMePEmXQ
	HG+An+RyEd99FkDSLz7jnSOTaG7LqoBbPCl6b5//e9i8f0wPYRYRQVS5gGJrhk6QlskC5+6WgU7rY
	3/Bkhgu0zIaHChuLjgg2ka4CtdRCEyHmygp6aKpygTnPKgYlQLDsKLk/tjaQMQQYr1cWF4LiNtFZa
	zBzKsav5315bga8habyXilmoqun11SSBbhHXj+9LBctjL4n2cHhjwwjSAyrkqCQiv4GZ40FbOMoZs
	T0gw3/gVQoRvWs3wp6I93hqsYsDMvlUSFiW71Oi97SZy5KYJKvBVpEmF404DJWlQsFwjCbmd8WlPP
	42vdf3PL6BSX7MHG7S/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijCSg-0000Ji-2I; Mon, 23 Dec 2019 01:24:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijCSY-0000JK-ST
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 01:24:36 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2F3AB206B7;
 Mon, 23 Dec 2019 01:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577064273;
 bh=OYtBCtERK1c+Z0HHfojthNOuVGjSoQylUd0S4oD3WSg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p3eTRRzU/YOvgJmWrwq0rD/t44iTfgMFhyeb3UHS3/t4gVWXu3YxV8aVROa9u4JJY
 elKFLaHzk5b72rdNuUGqS16HwcUBSVuWui/tRib5nuMjuY5WX4YNp8JPCqnHj0iQOc
 jD/Yi7Io4lVe6AEdmbsg0sbVlz1fMJJRy72s/hbc=
Date: Mon, 23 Dec 2019 09:24:11 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [PATCH 1/2] media: dt-bindings: media: fsl-pxp: add missing
 imx6sll
Message-ID: <20191223012410.GA11523@dragon>
References: <20191202204748.6718-1-andreas@kemnade.info>
 <20191202204748.6718-2-andreas@kemnade.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202204748.6718-2-andreas@kemnade.info>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_172434_939071_C6787319 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
 letux-kernel@openphoenux.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, mchehab@kernel.org, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 09:47:47PM +0100, Andreas Kemnade wrote:
> i.MX6SLL also has a pxp, so mention it among others in the bindings doc.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>

Applied both, thanks. 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
