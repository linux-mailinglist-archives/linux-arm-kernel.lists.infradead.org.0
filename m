Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D962C16F511
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 02:32:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VcqspLtXSBhK++7Oe8EdSq4zTZG57klIxluXCgnAqAo=; b=lf79cpL5P9eZo5
	QwdWjvX1K1Jn5E0/uu3jinaFlmlWLFpW46zfgi8frwnalq0GXCq8Zm64kQl5jDhCD2QG3vdupJVj6
	1cNBmfYBcg2GZp+OQDL56SMysdyYRtpB0wjKP0QCQeeUcaLmZ+TMAjVqq8gBcEvlZ/smaBRHi5KN/
	Yl3i6p9btWO5jtkCicAQ33yjqXc9bJk3jzLdM9OD+BOkZyoCW+aGViYQPyZaZ1/LCDUy6YdhWqtQZ
	Xv4PbBJbFvJAG79QvSRTZqG/Fj8lUEObZsuwzR1gcW/AoUoKrgqR+4DCT9RRpYps8cvcY1cIGQoVF
	0YFdkol245JrreX3++Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6lYd-0005yR-Bl; Wed, 26 Feb 2020 01:32:15 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6lYB-0005lj-NZ; Wed, 26 Feb 2020 01:31:49 +0000
Received: by mail-ot1-x342.google.com with SMTP id w6so1493047otk.0;
 Tue, 25 Feb 2020 17:31:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=m69OUPpDCFCPc/oa2eyFJo4I++z0wlZi/kprUKpLj3Y=;
 b=nA2f+OLzY/0xumh5TuXz4ftOJdyLWFEddIBk66xJxkReDm94lliWkpwvPZ4a2z3aL+
 7F+sqVUc1AzH4De2HzKgueukRv45rp0BhL1+N00JyaUl0pf8w2HajjUgeCkoJF7IJOlA
 ggEwGRbikFgBXKyJuSgVOcXhbcpJCTQKeyo/nw/xbjt6rWvnKRe6cB5I1Zh31qnj988D
 ZkrhLAL1NuHixK58f6i/pdi/eHNF5m+KjXIhJbAzoqxI3ZfMK2b0tUyDtQ86XgSM/Yq1
 8gK34CHyXzjHzraPQJFoD50QgHtNUe9dEYNAgyQra9e7EQzFbKF/kURdvfMeW7/ka4B6
 +tGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m69OUPpDCFCPc/oa2eyFJo4I++z0wlZi/kprUKpLj3Y=;
 b=Np2/0CSAjUn6qZ6aih/3NLkJo7yTXkpoz6qrUEQsSsiHX33QlzgHEOj2tvf8oPftAy
 6Kih9+n8Jr0JShrV4Gfu/+kutg3oRiPNiDVqo9e7CxSkSPA+pkK5gNAC2H75+vASndiB
 6WNKFrtoaRDR4hv3Kq0T8hGDD//UO6Vgf4+U6IkguZwGZ+PIMANxaWzuIXWWmMANmrlI
 jx+XFviKUV4pbz43LtAh9dQpTpMazSqLpjGBXAfkPT75I5sds3tPqlR8d6/dbLD1fCGm
 x9p89lEV2QQyWSPXlZiHO3U3fwqkFiHSvpa61KrWVJNEvTEMXeP5UR88gNsbkcvcJeME
 vTjQ==
X-Gm-Message-State: APjAAAVL/4PfjELXC6mCyro07Dtt6CWVOfM/WeQlkF8sdoyLp+MrUO6T
 G4F6zYyzpyRt3FRM5PBypEHQdmXsihcvfV3x5xI=
X-Google-Smtp-Source: APXvYqx4k8rPNcqHzRcAhaiCXWJ4jVniE5gHoAh/s13hkt4+EPZPVv3r7htQo04hdVYPzVU1U3PK6wlRKTZrD779bTc=
X-Received: by 2002:a9d:6a4f:: with SMTP id h15mr1129292otn.86.1582680704677; 
 Tue, 25 Feb 2020 17:31:44 -0800 (PST)
MIME-Version: 1.0
References: <20200215065826.739102-1-gch981213@gmail.com>
 <20200218125557.GD4232@sirena.org.uk>
 <CAJsYDVL03KJv7eewGekBPCfpbOuTX0tJ6qZaydvJnBDzZ5vEwg@mail.gmail.com>
 <20200225173137.GA31830@bogus>
In-Reply-To: <20200225173137.GA31830@bogus>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Wed, 26 Feb 2020 09:31:33 +0800
Message-ID: <CAJsYDVKqcd-ytLLf5zKqs8DfjPAa5ELCX53OiPDAi-tDnLd=Eg@mail.gmail.com>
Subject: Re: [PATCH 0/2] rewrite mtk-quadspi spi-nor driver with spi-mem
To: Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_173147_793921_10BD9D1E 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 URIBL_RHS_DOB          Contains an URI of a new domain (Day Old Bread)
 [URIs: bootlin.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Richard Weinberger <richard@nod.at>, open list <linux-kernel@vger.kernel.org>,
 linux-spi@vger.kernel.org, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

On Wed, Feb 26, 2020 at 1:31 AM Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Feb 20, 2020 at 07:58:06AM +0800, Chuanhong Guo wrote:
> > Hi!
> >
> > On Tue, Feb 18, 2020 at 8:55 PM Mark Brown <broonie@kernel.org> wrote:
> > > This is an ABI break so you shouldn't be doing this, if the existing
> > > binding works it should continue to work.
> >
> > The missing spi-max-frequency is the only part preventing old
> > device tree to work with this driver.
> > If the goal is to make existing dt binding work, I could patch dt using
> > of_add_property in v2. I saw similar device tree patching for legacy
> > bindings in pinctrl-single driver.

I just noticed that of_add_property isn't a exported symbol, which means that
device tree patching isn't possible unless driver is builtin.

>
> You should should really only need 'spi-max-frequency' if the max freq
> is less than the minimum of the host and device max freq.

But current spi framework forces that a "spi-max-frequency" property
is present. [0]
Should we patch spi framework then?

[0] https://elixir.bootlin.com/linux/latest/source/drivers/spi/spi.c#L1951
-- 
Regards,
Chuanhong Guo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
