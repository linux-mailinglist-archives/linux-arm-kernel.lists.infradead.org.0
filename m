Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC15E4578
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 10:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K0jjbfapMRtKBNg/xSB8atE19TNfQz1hU2kkxO6yijs=; b=NQSliTmA5JvE8U
	O4mL9ATL34Qdilaiwrzk7DZsvG1Fndi3KFJLbaJcXci5HW4dbpa2hgVNNdHFAZ57RUQq0e2NhD7Uk
	f36vFFUtnvodSqB+tu/ZDEi0zJjZvIKe5PoDYMdjLAFQIti7gf/fWCLDwHhVCYj0st+4z0J4ajEI5
	5iflD89SpF/qU0vKylpmUnIDzILgTRXu7n/LKGytAP5KjfpOtQCbGJJ3l+ZXPh87mWCXWAfDfV88V
	6gz0X7pwDCR+iGmYG+g1+DYZDZlNpMcd5/N9GZaOUKGrEuzUj1gwNF70nAvJGqDWY3GzjFSIA5q8g
	V44zpMGQbS4+LRnMjgng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNupV-00026F-2Q; Fri, 25 Oct 2019 08:20:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNup8-00025A-Hg
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 08:19:55 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 62B1B21872;
 Fri, 25 Oct 2019 08:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571991592;
 bh=mxSD1yFRMTz9TnhEbFhz9Kun4feNsEval2ddjomqsO8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lFAqe/2s6ePycLmtuct1pUpPxQ2c0S5G2gRoUZ0dIra5kvDDE7q8tMhhMG9jzgQTa
 5Mn0Pd3bAlkrx8Nxje85jEpjalyndVooeCuRFBdEF+mGpDkm9f2p39FOh80g6YKZDl
 TDGaJsgTRpDu5Wfoor3Idl4Szuoo0+JfN8+19ugg=
Date: Fri, 25 Oct 2019 16:19:38 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Yuantian Tang <andy.tang@nxp.com>
Subject: Re: [PATCH v2] arm64: dts: lx2160a: add tmu device node
Message-ID: <20191025081936.GF3208@dragon>
References: <20191010083022.6700-1-andy.tang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010083022.6700-1-andy.tang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_011954_612539_69137333 
X-CRM114-Status: UNSURE (   7.92  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 04:30:22PM +0800, Yuantian Tang wrote:
> Add the TMU (Thermal Monitoring Unit) device node to enable
> TMU feature.
> 
> Signed-off-by: Yuantian Tang <andy.tang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
