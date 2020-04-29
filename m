Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4711BE62F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 20:23:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C23EHZrxVs4LTitS4/osVxztgnK1Ek0sVN6noJ0oUrM=; b=uLc1K/PuabIyA1
	eq57XXoPuuVBjX+zYW2HE65xkuZ5YrrdP43pGl9xxciF94hG1KCfJOG2sNWyV4K7LA+dzTOxwMcno
	pHYN6TzOXsa49/eEFYO1lu3tf3natILLuSe41smNBfP7FUOfHgN1GL2z7N9cZJC+Yj8zEZlJOJcSZ
	q4l30eWzRH/VusWm860wO3IoAma+9a6pBcN3bXlAsNvvALDSn0Q9Oxm7PCsTEcJtfAp0OQkkRSwMu
	bvV2qKGCZxea4PO8YzlJj97Cm2OKipau2yxn0Car2ENqUmOlwdNC4O5rgSyVUEZeSk3ysyrcmXSeh
	b5/3k3Nq6eeYor6WqLyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTrMH-0004AH-8r; Wed, 29 Apr 2020 18:22:57 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTrM7-00049g-4b
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 18:22:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wNY9mup6oH88cXbGimhzfMPTaEyNUw8lXOqbbvRQJbM=; b=IFKrANcWnc3Ls/58l2WnITqg8X
 Sdvk9tdozSqlZPxOOIjRbmPR05iBYaWTSrYQOVrPwrifBwNLfcOTCG3b2Xcx8L5t0aGDViLTyyM6m
 h6WhRXQ2QbACWbKPQecBMoK/+i5I1HElXroxibtsnjhqhyN1VVTXYANCLHk+EweEHey8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jTrLx-000J23-Fh; Wed, 29 Apr 2020 20:22:37 +0200
Date: Wed, 29 Apr 2020 20:22:37 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Baruch Siach <baruch@tkos.co.il>
Subject: Re: [PATCH 1/2] ARM: dts: marvell: drop i2c timeout-ms property
Message-ID: <20200429182237.GN30459@lunn.ch>
References: <21ba4c9abd5e411ba936ead8f043c5a7e490d530.1588134636.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <21ba4c9abd5e411ba936ead8f043c5a7e490d530.1588134636.git.baruch@tkos.co.il>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_112247_184788_3929F5F9 
X-CRM114-Status: UNSURE (   6.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 07:30:35AM +0300, Baruch Siach wrote:
> The timeout-ms property for i2c master nodes is undocumented, and as
> never been supported. Drop it.
> 
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
