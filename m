Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7134112A6E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 12:45:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YKJxCX4D9cBBbE+qfwE4GhT8p9ZwSekfntc1E4EHGrI=; b=RrHF7no9eT4q19
	64fM7sk6OgfOkMTauyFdbXF3e05PzYZWEyDDHsmjibmL9V0c3cI32aiz5TqaB45ZTnaVoay3sK75W
	Lzr1qM1WirZ9vj1nYYuWM+XLt2sKJgg3Tnem5GmyR55X+YUWUfnzDn5SLF+SCwzfr3AksWG87Ug/3
	5L0rWnK59sNr35UYzY/0l2egLyOmydiPiG5clDDNUhBAu6uf2rVOEpVWNeyd/yH4+u2NWjY2YbsHL
	v9CEwzNLWYmvNaZK2Bj7ENsyurtseEK6nDrLt7WBZ0OKkQWtAN0scG6jMX7k0f3ux8RKHdSxza+9W
	5VGqPFcQ0+w0yWnr2XVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icT65-0003uE-Eb; Wed, 04 Dec 2019 11:45:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icT5v-0003sr-Fx
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 11:45:24 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 507DB20659;
 Wed,  4 Dec 2019 11:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575459923;
 bh=27KM2SxAZ9hUxzDgOTHr4NSFhH5djy57lv/89UAP9sI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1xYykGuPZeHThxa2b1Dp9yaEYc7zbpMoaE6Z9F7kRdtX1p/dr2+ZBkWVNfXX3+wPl
 XljNY72L7k9bxFul+zL+J8k3uoFW+DVe8O8OZorP17c7gpFa3K7ZZ4XLjbu3eTIq8R
 /B2RnvNRyIBRqgURUxpkVOmx/Aw6poAJOESvieCI=
Date: Wed, 4 Dec 2019 19:45:11 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [PATCH 0/2] dts: ARM: add Tolino Shine 3 eBook reader
Message-ID: <20191204114510.GI3365@dragon>
References: <20191108111834.18610-1-andreas@kemnade.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108111834.18610-1-andreas@kemnade.info>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_034523_552931_58BEB1D6 
X-CRM114-Status: UNSURE (   9.33  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, andrew.smirnov@gmail.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, j.neuschaefer@gmx.net,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 manivannan.sadhasivam@linaro.org, letux-kernel@openphoenux.org,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 12:18:32PM +0100, Andreas Kemnade wrote:
> This adds a device tree for the Tolino Shine 3 eBook reader.
> Name on mainboard is: 37NB-E60K00+4A4 and serials start with: E60K02
> These boards are also found in the Kobo Clara HD eBook reader
> but equipped with a i.MX6SLL processor.
> 
> It depends on the previously-accepted patch
> ARM: dts: add Netronix E60K02 board common file
> 
> Andreas Kemnade (2):
>   dt-bindings: arm: fsl: add compatible string for Tolino Shine 3
>   ARM: dts: add devicetree entry for Tolino Shine 3

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
