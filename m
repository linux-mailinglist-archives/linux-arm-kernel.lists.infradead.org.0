Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9AA84A243
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:33:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ihWR7Rsb9nrUtlT9LDM9tkSWRSOrZBltF2vbgTPQXV4=; b=TtG9HKgN+Cwv1L
	IrGiAx0x7SfRBJh6gXBMgo8QN/jwkWt6bo4i9fPMDcOR0CTVkoebeyVED9T8jZ5gG3MTi2MyPbgXq
	eo4iN8t3l63qPAtiRzVKjfEoFdSvvZgjNVnsjctbkdoLVUggprjdQJ7Z8FS7AU2gq29+v/g6o/5OV
	J2lZRf05tEqtZwBvqdty9CxMq4jbIrThrpyeiGoNP/FM1mbrK6+JlmAdxh/4bvggsKO93YuVErDwS
	nF09o6l93WQJhv+0OWGVPzzCoehnAjZgtI0w2GGnZ7wWrhWy2vXmdVZYqtLwy1+op1LpYrWMceRLd
	UtB46Q8G/m2DsPTNhk7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEF5-0006fA-9J; Tue, 18 Jun 2019 13:33:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdEAt-0001xG-FS
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:29:25 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B4E3A2085A;
 Tue, 18 Jun 2019 13:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560864563;
 bh=EUY20L1oreGPJG/z6mb+pYwDrxgzqNc1eCeVk7HRMTc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=J232LUing57SfpflQ5JzHWMkhyF0JJ5GG6Dq2yla51GFv4Xrmhktx6wss7eZrtmI9
 JUkjQaq3RfuCML0WWHquv+VuVQakteNCBtSyFSGp1MJ6h4v1ZDkU3vo85rjprEu1oC
 DH0/58w2J0cPxFHKZmsde1Ft/YQ3PG6aVpr7AD/M=
Date: Tue, 18 Jun 2019 21:28:33 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: arm: Move Emtrion i.MX6 board bindings to
 schema
Message-ID: <20190618132830.GH1959@dragon>
References: <20190617204423.2880-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617204423.2880-1-robh@kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_062923_770153_4B307E11 
X-CRM114-Status: UNSURE (   7.81  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Jan Tuerk <jan.tuerk@emtrion.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 02:44:23PM -0600, Rob Herring wrote:
> The Emtrion board bindings landed when the i.MX board/SoC bindings were
> being converted to DT schema. Add them to the schema and remove the
> separate file.
> 
> Cc: Jan Tuerk <jan.tuerk@emtrion.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Signed-off-by: Rob Herring <robh@kernel.org>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
