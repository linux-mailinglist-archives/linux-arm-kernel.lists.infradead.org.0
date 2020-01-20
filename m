Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13901143134
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 18:59:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lcqsLy7N6WK6JF8R3UzQ+CFPabKBUAFrrf0oD+mO0Ec=; b=jfPsETrMLmJPrC
	9QsnkhqmQ85iHK7qjnJ1QF28DQ58BfxQQ2/ZbpUNmFn57hLNiwuYFhM5TOG1S6hfjYT47le5cfDoo
	8OOh6pgmNnqKNvFcKZwMdbZCObHgupfOSoCJMtGnI/JfpuX9B229Ntv1O96z47Ost/eh+2hXZ4mq7
	5UDIpXMFIpVpTDTyZUkOI9Uu7tYpbdA39lsYf3Y1iGqJkzEORjIcUqUSp7usQzfcHOploC1JsqJsn
	hSq+ON5S9XyK6rXy5jtzul07kmT8LLA2RwsuCEXLTZiXLENF2X9ALcFnsayPEaayI97P60ohyOSIU
	r9uBuELm2toCMmiWjgsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itbKf-0003GN-G8; Mon, 20 Jan 2020 17:59:25 +0000
Received: from mail.skyhub.de ([2a01:4f8:190:11c2::b:1457])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itbKV-0003Fs-7a
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 17:59:18 +0000
Received: from zn.tnic (p200300EC2F03FF0075FD4DB0C8DF3C59.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f03:ff00:75fd:4db0:c8df:3c59])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 2D4FA1EC08E5;
 Mon, 20 Jan 2020 18:59:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1579543147;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=E8yvJahz8u60P3zYVn0P6etm4lyGGmfJf6bH0Xyy7nU=;
 b=XMd8vjuGkhMwuiJurJoolyqiOtsuPzlfQU9iSQRoOmrWlSkUGJb7hosQbL9t8FQ7PxTbpQ
 nn4Vc78yUd31Ad58e/FLUN/VcuvyrOQ2n3W2x0sz9j4qUl0ivg4dxbMn/3PvPE2AyqacLa
 OudmraXK5SPyti2iMRgwYV4piS2dsb8=
Date: Mon, 20 Jan 2020 18:59:01 +0100
From: Borislav Petkov <bp@alien8.de>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 00/10] Impveovements for random.h/archrandom.h
Message-ID: <20200120175901.GB576@zn.tnic>
References: <20200110145422.49141-1-broonie@kernel.org>
 <20200110155153.GG19453@zn.tnic> <20200110170559.GA304349@mit.edu>
 <20200120172627.GH6852@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120172627.GH6852@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_095915_431594_6E3E4A63 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 "Theodore Y. Ts'o" <tytso@mit.edu>, herbert@gondor.apana.org.au,
 x86@kernel.org, Richard Henderson <richard.henderson@linaro.org>,
 linux-crypto@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 05:26:27PM +0000, Mark Brown wrote:
> I think the important thing here is that *someone* takes the patches.
> We've now got Ted and Borislav both saying they're OK applying the
> patches, an additional proposal that Andrew takes the patches, nobody
> saying anything negative about applying the patches and yet the patches
> are not applied.  The random tree sounds like a sensible enough tree to
> take this so if Ted picks them up perhaps that's most sensible?

Yes, Ted, pls pick them up so that we're done with this.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
