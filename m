Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2B71E4A74
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:39:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SIXDEntidqYKwBbU9H+QMZPYUvF8cUAgXgEn9b5/X8Y=; b=BALiHSEQlUk8Iz
	F5bG2v8kCJAmZhrVaK39JyRlYAE/8kQmfbpjYhXXxry3J6iBC3b00+BOBk1Eb7MIclwVacjaCf4wA
	CEKH517quhhMHdbyvyoZx0+LTzMkk7zbvDmAKFaIpa4fzYMGX9kJFP5tv9LLPXuxHzwZCE9vOdkSd
	JGEGap6JPzC+vWP39MHz5Js94xsCaJsM8ze6uLywRNjs0VsAhO3mfImWSKvEvGQWydxLobrnZpK8g
	kQxNaN0MuAP04lmO14eHqfemD4LUuWtkmGUK0HxOTBpmP8AhCevbnMBvo9LenJasZGguCjqyxdyw/
	L1aCZ6Z6n4v6Vea1/h1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdz5s-0001Nl-SH; Wed, 27 May 2020 16:39:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyh9-0002iM-8l
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 16:14:24 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jdyh5-0005L5-T0; Wed, 27 May 2020 18:14:15 +0200
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jdyh5-0004hJ-JC; Wed, 27 May 2020 18:14:15 +0200
Message-ID: <95bb2ed6eeadd6b7c60a9f5985abd21dcd3f7617.camel@pengutronix.de>
Subject: Re: [PATCH V3] dt-bindings: reset: Convert i.MX reset to json-schema
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Anson Huang <Anson.Huang@nxp.com>, robh+dt@kernel.org,
 shawnguo@kernel.org,  s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com,  devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org
Date: Wed, 27 May 2020 18:14:15 +0200
In-Reply-To: <1589859747-12926-1-git-send-email-Anson.Huang@nxp.com>
References: <1589859747-12926-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_091419_323133_E75A0602 
X-CRM114-Status: UNSURE (   6.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

On Tue, 2020-05-19 at 11:42 +0800, Anson Huang wrote:
> Convert the i.MX reset binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Thank you, applied to reset/next.

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
