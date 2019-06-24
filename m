Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 643534FF94
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 05:01:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=phriN9wBOkA4F+as+gbqzBrYj6h2jfgoQ/JKFw2eenw=; b=jNUs9LZeeReAl/
	tSZk14wjQu8QLCwMCSB3rZyRn407JDjH5tPmj7e+17fT98L5fRs6vvFzw9CAERE9ykqdO2+LninA5
	dPG7gxGDmwVvQ+yAhcdEELw5O5C+/QAX+Q7TUmliltjwCKConmgmCiZQ0180++C5WjZ1jwRyPg58w
	++OkZ17u38JtHu+dEhU/JuncDXGTK2PKR/4IUfJmZYbw6s6i1rnKiPkYewYlgLXycVinQOYx0KvA3
	3xzeftT6+mQe4D6CcfwPJF8nXe9kwpn7ZDHPz4/fUJdJUz2tx9dzN24J6PK+uwJc9ydbCk4R4tAP7
	0ReVgOZ0020cyNteoSgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfFEu-00067o-Kt; Mon, 24 Jun 2019 03:01:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfFEj-000676-40
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 03:01:42 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5B4432073F;
 Mon, 24 Jun 2019 03:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561345300;
 bh=P9BHhImn+3omcwGUMLWcmyETGN+Vt6d0VnfIxhxT2OE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lCmci5+xEhz3YBgoCtB2Rgcp2ms+1vfBcgP5VdRLIH9/8EwWWAetmhTUCjWzqAusZ
 92SRzQw7l+lmvHIdpcyt9FHlO9kAsiL2lRN6VXwY/YWtarBuBDsq/S7V6KEw4EfCef
 0ArPVl6ucWEXJl3sl/dHaFI5nTamdAqDA+m1MFZ8=
Date: Mon, 24 Jun 2019 11:01:27 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peter Chen <peter.chen@nxp.com>
Subject: Re: [PATCH v5 6/8] ARM: dts: imx7ulp: add imx7ulp USBOTG1 support
Message-ID: <20190624030111.GP3800@dragon>
References: <20190624020258.21690-1-peter.chen@nxp.com>
 <20190624020258.21690-7-peter.chen@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624020258.21690-7-peter.chen@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_200141_187371_1C5DBD4B 
X-CRM114-Status: UNSURE (   6.77  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: aisheng.dong@nxp.com, balbi@kernel.org, sergei.shtylyov@cogentembedded.com,
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 chunfeng.yun@mediatek.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, fabio.estevam@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 10:02:56AM +0800, Peter Chen wrote:
> Add imx7ulp USBOTG1 support.
> 
> Signed-off-by: Peter Chen <peter.chen@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
