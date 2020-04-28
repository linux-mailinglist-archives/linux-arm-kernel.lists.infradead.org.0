Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 218A31BBBEF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 13:07:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AI14ctd+ChgSB0hjECwwhHR/hAPVrDU1a1IBt9aUx4U=; b=fIRb/mlDIHtB7F
	yEPy/3sAr1jepFQDh9Xie/5eB/dP3c1pjbCIIksU0hH0dEpOvOBmg3wR/tuqfQhN8xjRLpiUOua7S
	khBxLLMPhnHrRjTkeGfAGHrwy6lLqYPyt9B3xjRcTVxNt3jbtNezP2tWItnsifcfBkmXhP7L+aSWR
	UIlOHR+uO5kTxBBVZsaHD3jaSyppSAd/GCwiYp4/kMTKemLDcvN+CIlpSMKO60P0s3Xlve7N+Sm84
	eFq0DoQN8RZD1Nx84/b6PSCn+F+bgwo22yjwoC7WJAdEDLgy4HW7+N7nmmm5D6smEHZYXr8Ti2kC6
	q58a6LUorLds83r/SvXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTO5I-0003EI-D9; Tue, 28 Apr 2020 11:07:28 +0000
Received: from mail.skyhub.de ([2a01:4f8:190:11c2::b:1457])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTO59-0003Ci-4p
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 11:07:21 +0000
Received: from zn.tnic (p200300EC2F0EA50005F31991FCF74C40.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0e:a500:5f3:1991:fcf7:4c40])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 6EB821EC0CE4;
 Tue, 28 Apr 2020 13:07:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1588072028;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=6yM3ywV4SHYRhMID8a0485MgrxeuX8DEuZQLHvXZu6Q=;
 b=JMxXKhjn18H3V9nLLHLvhBv7M38fREPnFGpmQ/rKPlrxu3FxzTLqpP8b50grNQYfWT85Cw
 XgwLzTnKZ3tM6dRdrUvBwrJmkxNPMoIiz82Ihj/jG3OWo/eOhQ9B89fILz4RVTFYORo0RB
 3y/So7HpASg3dOx1fp6J5wslbr2xbgg=
Date: Tue, 28 Apr 2020 13:06:59 +0200
From: Borislav Petkov <bp@alien8.de>
To: robh+dt@kernel.org
Subject: Re: [PATCH v6 1/2] dt-bindings: edac: al-mc-edac: Amazon's Annapurna
 Labs Memory Controller EDAC
Message-ID: <20200428110659.GA11272@zn.tnic>
References: <20200224134132.23924-1-talel@amazon.com>
 <20200224134132.23924-2-talel@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224134132.23924-2-talel@amazon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_040719_338039_0F7440F9 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, benh@kernel.crashing.org,
 dwmw@amazon.co.uk, gregkh@linuxfoundation.org, eitan@amazon.com,
 hhhawa@amazon.com, jonnyc@amazon.com, hanochu@amazon.com, davem@davemloft.net,
 james.morse@arm.com, linux-arm-kernel@lists.infradead.org,
 catalin.marinas@arm.com, ronenk@amazon.com, mchehab@kernel.org,
 will@kernel.org, Talel Shenhar <talel@amazon.com>,
 linux-kernel@vger.kernel.org, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 03:41:31PM +0200, Talel Shenhar wrote:
> Document Amazon's Annapurna Labs Memory Controller EDAC SoC binding.
> 
> Signed-off-by: Talel Shenhar <talel@amazon.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/edac/amazon,al-mc-edac.yaml      | 52 +++++++++++++++++++
>  1 file changed, 52 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/edac/amazon,al-mc-edac.yaml
> 
> diff --git a/Documentation/devicetree/bindings/edac/amazon,al-mc-edac.yaml b/Documentation/devicetree/bindings/edac/amazon,al-mc-edac.yaml
> new file mode 100644
> index 000000000000..20505f37c9f8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/edac/amazon,al-mc-edac.yaml
> @@ -0,0 +1,52 @@
> +# SPDX-License-Identifier: GPL-2.0-only

WARNING: DT binding documents should be licensed (GPL-2.0-only OR BSD-2-Clause)
#36: FILE: Documentation/devicetree/bindings/edac/amazon,al-mc-edac.yaml:1:
+# SPDX-License-Identifier: GPL-2.0-only

Hi Rob, should I listen to checkpatch or ignore it?

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
