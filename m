Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F14183DC0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 01:06:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V4GNJPdDLHpbqLCxBmRyN7N2BGzr6ZfTuNiiPVimz30=; b=o9DCOhDYggu51P
	60NfsRYOkUdfSdnoe/dEyuLinr3yD+xB8oyEcRRXceO1sAyPaQBX8vViXH1ibYz95WOq1rwXFU1Q5
	u1+j5/JufewbT3Eyv/tl7ItvJAYhAQOWHjQ85cwEnfsI3zOx8/X4q2CyHqlC4yFVTCo2Hbtt1c4oB
	rABPOlglaBykzQbpzftIP4SNjzUunaz4yDbbfNI6OHpAhgGGeHgkFoU4vIfOOiiNM4J38mqB05Urf
	R2WPZfDUsRvktF0hgxZZD8r7nPymCGDErPlIAbmDHpDzjgROb1B0PXYkFRueNuTi4UplP9SA+HqHD
	XO6lXcgY9dAA6yVTWrRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCXq6-0003Th-SQ; Fri, 13 Mar 2020 00:06:10 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCXpz-0003Rx-RP
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 00:06:05 +0000
Received: by mail-pf1-x441.google.com with SMTP id l184so4086858pfl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 17:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=MT56InialoA5Gvuu17QFzhKM9mlaqKUsiERx8J8mK8A=;
 b=JiEN0kcC+FSY9JxDVE0c/Nf+raSXxIfGzQiQhnnpAW2AxKWxl8VwuQzkSN6DGlyY/D
 eDRiciH0xugCpu0Hh94n501CXjCftR1SK/fbXY07Qli4f+xGd0C7FqiyWqvh4IrwhRRq
 BU1O23uhLzOqB6dxjuJhz6ZTZ5UjPI4f54crU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=MT56InialoA5Gvuu17QFzhKM9mlaqKUsiERx8J8mK8A=;
 b=B3A5Bc5T5CroXEJ3P8NOWj8GrivE/uSVguYuTAptYlWj9d1Sjru33p0Jc6WeYmDEiU
 YNQJz9rjElGdi5ZBtNemlX8wWe2N9YVNtU/7cgYxDxbI6Nd6QJN8zGHGDEQHHeU715CH
 TthWEBgRXaiDozNsoU4Sdpl+LRbC4tdhv8Yp5gsKcQN+Pi0HFTJu2EuOOwzrrPZRAsZR
 3uy89HHROdk+KeYQlJo8/aatXj/DlCOcGa1eksJvSmE72jFQze/feGWt9qa+SLvW+hot
 +ygPQjzuonUXFmkMCewXJMyEAgqbWpNa/CRphB3bj6vebRO11RB84+AjP0CJFfiMb8Az
 218Q==
X-Gm-Message-State: ANhLgQ3+p+hRmdFNUGvfZciuHO/gU2Vz9jCrZ2LhGnqDAsjjutDtCahN
 e+jwWK585cZx0BjBlO+RYmh6YQ==
X-Google-Smtp-Source: ADFU+vufqVAMrmsyN2FQR+i0rIhNKJocLKys2LdKmIIuznP6bLJC6/QtdecJYAQsRGo5+9W0tYLH9Q==
X-Received: by 2002:aa7:8217:: with SMTP id k23mr10886894pfi.257.1584057963010; 
 Thu, 12 Mar 2020 17:06:03 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id g18sm56595595pfi.80.2020.03.12.17.06.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 17:06:02 -0700 (PDT)
Date: Thu, 12 Mar 2020 17:06:01 -0700
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH v4 1/6] x86/elf: Add table to document READ_IMPLIES_EXEC
Message-ID: <202003121705.6ABA79D8F0@keescook>
References: <20200225051307.6401-1-keescook@chromium.org>
 <20200225051307.6401-2-keescook@chromium.org>
 <20200311194446.GL3470@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311194446.GL3470@zn.tnic>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_170603_911985_A8A42224 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jann Horn <jannh@google.com>, Catalin Marinas <catalin.marinas@arm.com>,
 x86@kernel.org, Hector Marco-Gisbert <hecmargi@upv.es>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>, Jason Gunthorpe <jgg@mellanox.com>,
 kernel-hardening@lists.openwall.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 08:44:46PM +0100, Borislav Petkov wrote:
> Ozenn Mon, Feb 24, 2020 at 09:13:02PM -0800, Kees Cook wrote:
> > Add a table to document the current behavior of READ_IMPLIES_EXEC in
> > preparation for changing the behavior.
> > =

> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > Reviewed-by: Jason Gunthorpe <jgg@mellanox.com>
> > ---
> >  arch/x86/include/asm/elf.h | 19 +++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> > =

> > diff --git a/arch/x86/include/asm/elf.h b/arch/x86/include/asm/elf.h
> > index 69c0f892e310..733f69c2b053 100644
> > --- a/arch/x86/include/asm/elf.h
> > +++ b/arch/x86/include/asm/elf.h
> > @@ -281,6 +281,25 @@ extern u32 elf_hwcap2;
> >  /*
> >   * An executable for which elf_read_implies_exec() returns TRUE will
> >   * have the READ_IMPLIES_EXEC personality flag set automatically.
> > + *
> > + * The decision process for determining the results are:
> > + *
> > + * =A0 =A0 =A0 =A0 =A0 =A0 =A0CPU: | lacks NX* =A0| has NX, ia32 =A0 =
=A0 | has NX, x86_64 |
> > + * ELF: =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0|
> > + * -------------------------------|------------------|----------------|
> > + * missing GNU_STACK | exec-all =A0 | exec-all =A0 =A0 =A0 =A0 | exec-=
all =A0 =A0 =A0 |
> > + * GNU_STACK =3D=3D RWX =A0| exec-all =A0 | exec-all =A0 =A0 =A0 =A0 |=
 exec-all =A0 =A0 =A0 |
> > + * GNU_STACK =3D=3D RW =A0 | exec-none =A0| exec-none =A0 =A0 =A0 =A0|=
 exec-none =A0 =A0 =A0|
> =

> In all those tables, you wanna do:
> =

> s/GNU_STACK/PT_GNU_STACK/g
> =

> so that it is clear what this define is.

Fair enough. :) I think I was trying to save 3 characters from earlier
tables that were wider. I'll send a v5.

Thanks!

-Kees

-- =

Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
