Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC64422E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 12:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KEX11G91umqH/EfFmCmJTJN3ZG9fhJjKkBGCQ+K52PA=; b=jBZfpxsN4OjIN7
	QNAiiaZIzbRkfBJZ9Ut8XKitsUZQUOCVUu46DToG0TsDW9Li4aE+dZwtxgO8I2CuO5j/gq7mrXlqU
	qZtxAia4/pGzHVsJYPzAiJcMHxizgGE5KlZAMVvwMq2T72PvkHVjp+meXQi/Kxy+9UleZ/Kd9uwu6
	bJaAvsNPRpyxK0zgJfeEyWka3my0nuM8k/CO7JkEuTzcznm1u8oEPzpCMYC8BusIMY6fGscn3RQ+a
	LvfIFWCtKBD+NP1cHEoja5m5LcVHO5ROMaPUL1+3qmYN8yAxcJfo3r/M3QffAgKhpKpDOfbszYDcg
	Avkjx9sYiM2sKkSI14pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb0lk-0007pp-QK; Wed, 12 Jun 2019 10:46:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb0la-0007pK-G6
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 10:46:07 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CCB362082C;
 Wed, 12 Jun 2019 10:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560336366;
 bh=IsJrTQH115vRdp8/kWOCGywofNW8Qe6Yfu6oD/Z6iqg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RTF4AM3QNNf0Itscw45TFmiMySxDLCsf90cXyVTHyB9jSE4zqWJCTJb/eOUp6Zm5H
 pYGNQjmoNq42e1t/bSV7GJ4uifQDPBH3GntFKV1fKwwp905sH8P2PYo2xYtvdQ3SFx
 +/qit9/NM+WPh1PLDpHhvFLpxpQPmRP/KOhYfEd4=
Date: Wed, 12 Jun 2019 18:45:29 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Igor Opaniuk <igor.opaniuk@gmail.com>
Subject: Re: [PATCH 1/1] ARM: dts: imx6ull-colibri: enable UHS-I for USDHC1
Message-ID: <20190612104526.GF11086@dragon>
References: <20190606090612.16685-1-igor.opaniuk@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606090612.16685-1-igor.opaniuk@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_034606_567870_C4AF4C9F 
X-CRM114-Status: UNSURE (   8.47  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 marcel.ziswiler@toradex.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, stefan@agner.ch, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, marcel@ziswiler.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 12:06:12PM +0300, Igor Opaniuk wrote:
> From: Igor Opaniuk <igor.opaniuk@toradex.com>
> 
> Allows to use the SD interface at a higher speed mode if the card
> supports it. For this the signaling voltage is switched from 3.3V to
> 1.8V under the usdhc1's drivers control.
> 
> Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
