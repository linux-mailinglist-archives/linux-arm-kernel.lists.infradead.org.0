Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AE017B86E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 09:39:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFjtpm6dRq3/QZeltZNxhdpCPxATSp6r7PD2uexngg8=; b=Dir846E3C6XmMi
	Z/mhUSgUreJ6piQz8kSgcADOftc9Dsk9qTSGLM0NXEfJPYaWtDT1rbFby/5yMDUH3axY7KOgWZjEI
	vo3DGeqEq/Z0iN6BZnL0p6EWLF2/AV5xEcgN1F878T+werzo5waWrXZy8MWAqUA1SqhVFjndNn7hN
	YXe4vl1qSGh3MEUtouAEE+Fxbz2PqAp7sqsZnqVTaXhcYWmWIXF06fVLa+IhSmv3N5n6l5Gq4YGIV
	Frkl37rjdOguAH9YUbOANxqlGyZISLKBOuIekZDjWP2eVk/aBw1bAOAS/JsEZwTK4FfmLg1XzVN9f
	zdLY0P5CDbR5pFtbFcmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA8W5-0005my-TS; Fri, 06 Mar 2020 08:39:33 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA8Vh-0005ac-Cv; Fri, 06 Mar 2020 08:39:10 +0000
Received: by mail-oi1-x242.google.com with SMTP id a22so1741836oid.13;
 Fri, 06 Mar 2020 00:39:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T0YCzrMdqSOCLtIegMTpdezODLLacO22ik9gMI/OohA=;
 b=TTLiPTzKpN1qWN3EEFTC/u8fB+61JOECJD8HcEHhufaX9NawgXNP+CtoO70w1n7/rT
 gbuiAvBLa7ov+c7HyMDa/2ttOgLylNuZpso5Nq1Evc3IB3CEveDPOKMmpnLMpLzUg/Tz
 F0hvdMD5bfrhjOSGDqDyYvtD06RWhIju2DEzsCbkC/SbhJf6bYn2HY369DIzAVC7TSyA
 FBWXloXfGAfNCdgRp8h805Ik77umoY8tRXYzNbl5RMyAywhRL7u2JUs6i0FKOfttOWKp
 RQMR/yFbrg2cxmXtRtipBXAR8HWBO7yaIqDiYg8MD7UTpGWv72Mixj81Ymqt6+uHkfqu
 HO1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T0YCzrMdqSOCLtIegMTpdezODLLacO22ik9gMI/OohA=;
 b=nDI4avjiIZqpcED+Bv4F/zsVk2EQRgRqCW9G3ezNyzhAx23VE944ipcbFqUf6dg+KZ
 /N6rXcKRfB8AvISp68ElLiwm9PuXCZyrH/q2MRWvXP3YqPWgClrk5835meBX9nYc0ogJ
 SGFP+vv/ovSvXRXWiyBi+/4DFTPbtqYW/ht+CwalfF0sxR3/hXS8tLbIkvIRlbcbbHRc
 Nqz6ByFb6luLFh1NENUZ5SWVf1Vg53/r8GBI1KR0zm9NANP7DNqCFb2RxTLHenTjPNxm
 FFoAhuI/qahKdhrSuNbcq5WwfDUORh/nlZl0uGhHqn0gzad2b1T+zDCZDS9DgZW/viZv
 Fasw==
X-Gm-Message-State: ANhLgQ0BW59OV9VS19aFqqcEqHDYJno0A2Sf+S7zo0kGN8mxnis+BxMS
 3PE+lc/ZkwTFJzZRgnUIIg91iwjxSUXOYZ/jgU4=
X-Google-Smtp-Source: ADFU+vuScZHY2OPIYB1fCsKFbxTT74N+YFxRuCirOj8v8ukqPreNKXLIN5Ul0y9nHN0b8tlqiERNHVdq1j4ynySyfE0=
X-Received: by 2002:aca:1101:: with SMTP id 1mr1851279oir.30.1583483948255;
 Fri, 06 Mar 2020 00:39:08 -0800 (PST)
MIME-Version: 1.0
References: <20200228043636.559915-1-gch981213@gmail.com>
 <20200228043636.559915-4-gch981213@gmail.com>
 <20200303224706.GA22867@bogus>
In-Reply-To: <20200303224706.GA22867@bogus>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Fri, 6 Mar 2020 16:38:57 +0800
Message-ID: <CAJsYDVK62jqkLimdZWbLE2wgEAuVi5HdY231nR_wPj4TiMtX9w@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] dt-bindings: convert mtk-quadspi binding doc for
 spi-mtk-nor
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_003909_458381_DF076755 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, open list <linux-kernel@vger.kernel.org>,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 4, 2020 at 6:47 AM Rob Herring <robh@kernel.org> wrote:
> > 3. replace binding example with a mt7629 one because this is the
> >    only one I know the interrupt assignment.
>
> That doesn't really matter. It would be less churn without that change
> and examples are just examples.
> [...]
> > -
> > -     flash@0 {
> > -             compatible = "jedec,spi-nor";
> > -             reg = <0>;
> > -     };
>
> Better to leave this in the example IMO.
>
> Rob

I'll revert example changes and add a dummy interrupt binding instead in v3.

-- 
Regards,
Chuanhong Guo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
