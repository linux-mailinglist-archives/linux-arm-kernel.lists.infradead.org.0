Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE610D63A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 15:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66O7RPlzlIxn9xe5uudApJAOCGNcXcuiLV0ii2QERow=; b=gCVvPDqA6jFd8k
	+Zk9QmTR/cfTIyYBQttotHjq+0Dzo+Y2k3+MB5ACgM2YC3AcTI/M0+ANy7GvwlfX4MIK2T+x/Ykpi
	u1zCmoLkH7CsaXJFDrGKEoTAZzRl+9udJuBV+kVd5BzlbquWaml9QMfAzBaYkIBmEqwHv/iQGOxwI
	GTgy6RvK8jpxpatoAEjT8xa+M2Gl8yUZ4+Voix/g84lGRNOI5d7LiOTD7nkx02XPUwrlKrnl9QzmE
	feqth5etIUwjDvB45Z4XtFxbrKBV4xPt+aelNAeOj2fvnXeg1Q5J4j449QZNbGJoQJ8eJDwQ2rsL0
	hkxOLxQxXopwI9vuD6Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK0GF-0002r9-A4; Mon, 14 Oct 2019 13:19:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK0G6-0002qc-OP
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 13:19:35 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 951792089C;
 Mon, 14 Oct 2019 13:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571059174;
 bh=MU22sQWtNGFLaZ7VVqgGHyuBGYvlxHzP0ot2WRE8360=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x1IPsy689yDs6DOJ+UDQFYiFEPtUfEEg2ylZHz+HN23IhQD8lS5HaltQMyR8fv3k9
 SFLdKbJ6UcFj0XnYJ7Yb7XMhNYLboGNr+mleC2gMYP2WTyxpqrVXMSFYKGihBc/Fbd
 ZCd61AiUskpO1DDYa6I4420bsg6mkBgsWGKvKESk=
Date: Mon, 14 Oct 2019 21:18:52 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Yinbo Zhu <yinbo.zhu@nxp.com>
Subject: Re: [PATCH v3] arm64: dts: enable otg mode for dwc3 usb ip on
 layerscape
Message-ID: <20191014131847.GX12262@dragon>
References: <20191008025642.19519-1-yinbo.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008025642.19519-1-yinbo.zhu@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_061934_813508_6D658444 
X-CRM114-Status: UNSURE (   9.48  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, xiaobo.xie@nxp.com, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, jiafei.pan@nxp.com,
 Ran Wang <ran.wang_1@nxp.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 10:56:42AM +0800, Yinbo Zhu wrote:
> layerscape otg function should be supported HNP SRP and ADP protocol
> accroing to rm doc, but dwc3 code not realize it and use id pin to
> detect who is host or device(0 is host 1 is device) this patch is to
> enable OTG mode on ls1028ardb ls1088ardb and ls1046ardb in dts
> 
> Signed-off-by: Yinbo Zhu <yinbo.zhu@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
